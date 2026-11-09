Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/FileDir?download=true
inline.NumInlined: 242
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.NWindows::NSynchronization::CCriticalSection" = type { %struct.CCriticalSection }
%struct.CCriticalSection = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%class.CStringBase = type { ptr, i32, i32 }
%class.CStringBase.0 = type { ptr, i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.utimbuf = type { i64, i64 }
%struct.LARGE_INTEGER = type { i64 }
%"class.NWindows::NFile::NFind::CFileInfoW" = type { %"class.NWindows::NFile::NFind::CFileInfoBase", %class.CStringBase.0 }
%"class.NWindows::NFile::NFind::CFileInfoBase" = type { i64, %struct._FILETIME, %struct._FILETIME, %struct._FILETIME, i32, i8 }
%struct._FILETIME = type { i32, i32 }
%"class.NWindows::NFile::NFind::CEnumeratorW" = type { %"class.NWindows::NFile::NFind::CFindFile", %class.CStringBase.0 }
%"class.NWindows::NFile::NFind::CFindFile" = type { ptr, %class.CStringBase, %class.CStringBase }
%"class.NWindows::NFile::NDirectory::CTempFile" = type { i8, %class.CStringBase.0 }

$_ZN8NWindows5NFile5NFind12CEnumeratorWC2ERK11CStringBaseIwE = comdat any

$_ZN8NWindows5NFile5NFind12CEnumeratorWD2Ev = comdat any

$_ZN8NWindows16NSynchronization16CCriticalSectionD2Ev = comdat any

$_ZN11CStringBaseIwEpLEPKw = comdat any

$_ZN11CStringBaseIwEpLEw = comdat any

$_ZN11CStringBaseIwEpLERKS0_ = comdat any

$_ZN8NWindows5NFile10NDirectory9CTempFileD2Ev = comdat any

$_ZN8NWindows5NFile5NFind9CFindFileC2Ev = comdat any

$_ZN8NWindows5NFile5NFind9CFindFileD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNK11CStringBaseIwE3MidEii = comdat any

@_ZL9gbl_umask.0 = internal unnamed_addr global i32 0, align 4
@_ZL9gbl_umask.1 = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [3 x i32] [i32 99, i32 58, i32 0], align 4, !guid !10
@.str.1 = private unnamed_addr constant [2 x i32] [i32 47, i32 0], align 4, !guid !11
@global_use_lstat = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"P7ZIP_HOME_DIR\00", align 1, !guid !12
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !guid !13
@_ZN8NWindows5NFile10NDirectoryL22g_CountCriticalSectionE = internal global %"class.NWindows::NSynchronization::CCriticalSection" zeroinitializer, align 8, !guid !14
@__dso_handle = external hidden global i8
@_ZZN8NWindows5NFile10NDirectory9CTempFile6CreateEPKwS4_R11CStringBaseIwEE10memo_count = internal unnamed_addr global i32 0, align 4, !guid !15
@.str.9 = private unnamed_addr constant [5 x i32] [i32 46, i32 116, i32 109, i32 112, i32 0], align 4, !guid !16
@.str.10 = private unnamed_addr constant [3 x i8] c"rb\00", align 1, !guid !17
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_FileDir.cpp, ptr null }], !guid !18
@str = private unnamed_addr constant [47 x i8] c"NOT EXPECTED : MySearchPath : fileName == NULL\00", align 1
@str.1 = private unnamed_addr constant [48 x i8] c"NOT EXPECTED : MySearchPath : extension != NULL\00", align 1
@str.2 = private unnamed_addr constant [43 x i8] c"NOT EXPECTED : MySearchPath : path != NULL\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z17nameWindowToUnix2PKw(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.CStringBase) align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !52 {
bb.a:
  %2 = alloca %class.CStringBase, align 8         ; 7 uses
  %3 = alloca %class.CStringBase.0, align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %wcslen.i.i = tail call i64 @wcslen(ptr %1)
  %i.b = trunc i64 %wcslen.i.i to i32             ; 3 uses
  %i.c = add nsw i32 %i.b, 1                      ; 3 uses
  %i.d = icmp ne i32 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.f = zext nneg i32 %i.c to i64
  %i.g = icmp slt i32 %i.b, -1
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #23 ; 3 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !22
  store i32 0, ptr %i.j, align 4, !tbaa !24
  store i32 %i.c, ptr %i.e, align 4, !tbaa !25
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.a, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.m, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.j, %bb.a ] ; 2 uses
  %.0.i.i = phi ptr [ %i.k, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %1, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.l = load i32, ptr %.0.i.i, align 4, !tbaa !24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.l, ptr %.04.i.i, align 4, !tbaa !24
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, !llvm.loop !0

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  store i32 %i.b, ptr %i.a, align 8, !tbaa !27
  invoke void @_Z24UnicodeStringToMultiByteRK11CStringBaseIwEj(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.n = load ptr, ptr %3, align 8, !tbaa !22     ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.n) #24
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.p = load ptr, ptr %2, align 8, !tbaa !30     ; 4 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !31
  %i.r = icmp eq i8 %i.q, 99
  br i1 %i.r, label %bb.d, label %_ZL16nameWindowToUnixPKc.exit

bb.d:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !31
  %i.u = icmp eq i8 %i.t, 58
  %spec.select.idx.i = select i1 %i.u, i64 2, i64 0
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %spec.select.idx.i
  br label %_ZL16nameWindowToUnixPKc.exit

_ZL16nameWindowToUnixPKc.exit:                    ; preds = %_ZN11CStringBaseIwED2Ev.exit, %bb.d
  %.0.i = phi ptr [ %i.p, %_ZN11CStringBaseIwED2Ev.exit ], [ %spec.select.i, %bb.d ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %strlen.i.i = call i64 @strlen(ptr nonnull dereferenceable(1) %.0.i)
  %i.w = trunc i64 %strlen.i.i to i32             ; 2 uses
  %i.x = add nsw i32 %i.w, 1                      ; 3 uses
  %i.y = icmp ne i32 %i.x, 0
  call void @llvm.assume(i1 %i.y)
  %i.z = sext i32 %i.x to i64
  %i.aa = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.z) #23
          to label %.noexc unwind label %bb.i     ; 3 uses

.noexc:                                           ; preds = %_ZL16nameWindowToUnixPKc.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.aa, ptr %0, align 8, !tbaa !30
  store i8 0, ptr %i.aa, align 1, !tbaa !31
  store i32 %i.x, ptr %i.ab, align 4, !tbaa !32
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i

_ZN11CStringBaseIcE11SetCapacityEi.exit.i:        ; preds = %.noexc, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
  %.04.i.i5 = phi ptr [ %i.ae, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.aa, %.noexc ] ; 2 uses
  %.0.i.i6 = phi ptr [ %i.ac, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %.0.i, %.noexc ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i6, i64 1
  %i.ad = load i8, ptr %.0.i.i6, align 1, !tbaa !31 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.04.i.i5, i64 1
  store i8 %i.ad, ptr %.04.i.i5, align 1, !tbaa !31
  %.not.i.i7 = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i7, label %bb.e, label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i, !llvm.loop !1

bb.e:                                             ; preds = %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
  store i32 %i.w, ptr %i.v, align 8, !tbaa !33
  %i.af = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.af) #24
  br label %_ZN11CStringBaseIcED2Ev.exit

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.g:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN11CStringBaseIwED2Ev.exit18, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ai) #24
  br label %_ZN11CStringBaseIwED2Ev.exit18

_ZN11CStringBaseIwED2Ev.exit18:                   ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZN11CStringBaseIcED2Ev.exit19

bb.i:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN11CStringBaseIcED2Ev.exit19, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.al) #24
  br label %_ZN11CStringBaseIcED2Ev.exit19

_ZN11CStringBaseIcED2Ev.exit19:                   ; preds = %bb.j, %bb.i, %_ZN11CStringBaseIwED2Ev.exit18
  %.pn = phi { ptr, i32 } [ %i.ah, %_ZN11CStringBaseIwED2Ev.exit18 ], [ %i.ak, %bb.i ], [ %i.ak, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_Z24UnicodeStringToMultiByteRK11CStringBaseIwEj(ptr dead_on_unwind writable sret(%class.CStringBase) align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z15GetFullPathNamePKwjPwPS1_(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !56 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 9 uses
  %4 = alloca %class.CStringBase.0, align 8       ; 6 uses
  %5 = alloca %class.CStringBase, align 8         ; 10 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @wcslen(ptr noundef nonnull %0) #25
  %i.d = trunc i64 %i.c to i32                    ; 4 uses
  %i.e = load i32, ptr %0, align 4, !tbaa !24     ; 2 uses
  %i.f = icmp eq i32 %i.e, 47
  br i1 %i.f, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = add i32 %i.d, 2                          ; 2 uses
  %.not76 = icmp ult i32 %i.g, %1
  br i1 %.not76, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @wcscpy(ptr noundef %2, ptr noundef nonnull @.str) #22 ; 0 uses
  %i.i = tail call ptr @wcscat(ptr noundef %2, ptr noundef nonnull %0) #22 ; 0 uses
  store ptr %2, ptr %3, align 8, !tbaa !34
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.061 = phi ptr [ %2, %bb.d ], [ %i.l, %bb.g ]  ; 3 uses
  %i.j = load i32, ptr %.061, align 4, !tbaa !24
  switch i32 %i.j, label %bb.g [
    i32 0, label %.loopexit
    i32 47, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.061, i64 4
  store ptr %i.k, ptr %3, align 8, !tbaa !34
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.061, i64 4
  br label %bb.e, !llvm.loop !53

bb.h:                                             ; preds = %bb.b
  %isascii = icmp ult i32 %i.e, 128
  br i1 %isascii, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !24
  %i.o = icmp eq i32 %i.n, 58
  br i1 %i.o, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %.not74 = icmp ugt i32 %1, %i.d
  br i1 %.not74, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.p = tail call ptr @wcscpy(ptr noundef %2, ptr noundef nonnull %0) #22 ; 0 uses
  store ptr %2, ptr %3, align 8, !tbaa !34
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k
  %.060 = phi ptr [ %2, %bb.k ], [ %i.s, %bb.n ]  ; 3 uses
  %i.q = load i32, ptr %.060, align 4, !tbaa !24
  switch i32 %i.q, label %bb.n [
    i32 0, label %.loopexit
    i32 47, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.r = getelementptr inbounds nuw i8, ptr %.060, i64 4
  store ptr %i.r, ptr %3, align 8, !tbaa !34
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.s = getelementptr inbounds nuw i8, ptr %.060, i64 4
  br label %bb.l, !llvm.loop !54

bb.o:                                             ; preds = %bb.i, %bb.h
  %i.t = icmp ult i32 %1, 2
  br i1 %i.t, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 99, ptr %i.a, align 16, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 58, ptr %i.u, align 1, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.w = call ptr @getcwd(ptr noundef nonnull %i.v, i64 noundef 1021) #22
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.x = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #25 ; 2 uses
  %i.y = trunc i64 %i.x to i32                    ; 2 uses
  %.not71 = icmp eq i32 %i.y, 0
  br i1 %.not71, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.z = add i32 %i.d, 1
  %i.aa = add i32 %i.z, %i.y                      ; 2 uses
  %.not72 = icmp ult i32 %i.aa, %1
  br i1 %.not72, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %strlen.i.i = call i64 @strlen(ptr nonnull dereferenceable(1) %i.a)
  %i.ac = trunc i64 %strlen.i.i to i32            ; 2 uses
  %i.ad = add nsw i32 %i.ac, 1                    ; 3 uses
  %i.ae = icmp ne i32 %i.ad, 0
  call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ag = sext i32 %i.ad to i64
  %i.ah = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ag) #23 ; 3 uses
  store ptr %i.ah, ptr %5, align 8, !tbaa !30
  store i8 0, ptr %i.ah, align 1, !tbaa !31
  store i32 %i.ad, ptr %i.af, align 4, !tbaa !32
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i

_ZN11CStringBaseIcE11SetCapacityEi.exit.i:        ; preds = %bb.s, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.ak, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.ah, %bb.s ] ; 2 uses
  %.0.i.i = phi ptr [ %i.ai, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.a, %bb.s ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.aj = load i8, ptr %.0.i.i, align 1, !tbaa !31 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 1
  store i8 %i.aj, ptr %.04.i.i, align 1, !tbaa !31
  %.not.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIcEC2EPKc.exit, label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i, !llvm.loop !1

_ZN11CStringBaseIcEC2EPKc.exit:                   ; preds = %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
  store i32 %i.ac, ptr %i.ab, align 8, !tbaa !33
  invoke void @_Z24MultiByteToUnicodeStringRK11CStringBaseIcEj(ptr dead_on_unwind nonnull writable sret(%class.CStringBase.0) align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 0)
          to label %_Z16GetUnicodeStringRK11CStringBaseIcE.exit unwind label %bb.w

_Z16GetUnicodeStringRK11CStringBaseIcE.exit:      ; preds = %_ZN11CStringBaseIcEC2EPKc.exit
  %i.al = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_Z16GetUnicodeStringRK11CStringBaseIcE.exit
  call void @_ZdaPv(ptr noundef nonnull %i.al) #24
  br label %_ZN11CStringBaseIcED2Ev.exit

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %_Z16GetUnicodeStringRK11CStringBaseIcE.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.an = load ptr, ptr %4, align 8, !tbaa !22
  %i.ao = call ptr @wcscpy(ptr noundef %2, ptr noundef %i.an) #22 ; 0 uses
  %i.ap = call ptr @wcscat(ptr noundef %2, ptr noundef nonnull @.str.1) #22 ; 0 uses
  %i.aq = call ptr @wcscat(ptr noundef %2, ptr noundef nonnull %0) #22 ; 0 uses
  %i.ar = and i64 %i.x, 4294967295
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store ptr %i.at, ptr %3, align 8, !tbaa !34
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %_ZN11CStringBaseIcED2Ev.exit
  %.0 = phi ptr [ %2, %_ZN11CStringBaseIcED2Ev.exit ], [ %i.az, %bb.y ] ; 3 uses
  %i.au = load i32, ptr %.0, align 4, !tbaa !24
  switch i32 %i.au, label %bb.y [
    i32 0, label %bb.z
    i32 47, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.av = getelementptr inbounds nuw i8, ptr %.0, i64 4
  store ptr %i.av, ptr %3, align 8, !tbaa !34
  br label %bb.y

bb.w:                                             ; preds = %_ZN11CStringBaseIcEC2EPKc.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_ZN11CStringBaseIcED2Ev.exit78, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.ax) #24
  br label %_ZN11CStringBaseIcED2Ev.exit78

_ZN11CStringBaseIcED2Ev.exit78:                   ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  resume { ptr, i32 } %i.aw

bb.y:                                             ; preds = %bb.u, %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %.0, i64 4
  br label %bb.u, !llvm.loop !55

bb.z:                                             ; preds = %bb.u
  %i.ba = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZdaPv(ptr noundef nonnull %i.ba) #24
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.thread

.thread:                                          ; preds = %bb.p, %_ZN11CStringBaseIwED2Ev.exit, %bb.q, %bb.r
  %.2 = phi i32 [ 0, %bb.r ], [ %i.aa, %_ZN11CStringBaseIwED2Ev.exit ], [ 0, %bb.q ], [ 0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.e, %.thread, %bb.c, %bb.j, %bb.o, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ %.2, %.thread ], [ 0, %bb.o ], [ %i.g, %bb.e ], [ 0, %bb.c ], [ 0, %bb.j ], [ %i.d, %bb.l ]
  ret i32 %.4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @wcscpy(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @wcscat(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory21MySetCurrentDirectoryEPKw(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !57 {
bb.a:
  %1 = alloca %class.CStringBase, align 8         ; 6 uses
  %2 = alloca %class.CStringBase.0, align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %wcslen.i.i = tail call i64 @wcslen(ptr %0)
  %i.b = trunc i64 %wcslen.i.i to i32             ; 3 uses
  %i.c = add nsw i32 %i.b, 1                      ; 3 uses
  %i.d = icmp ne i32 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = zext nneg i32 %i.c to i64
  %i.g = icmp slt i32 %i.b, -1
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #23 ; 3 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !22
  store i32 0, ptr %i.j, align 4, !tbaa !24
  store i32 %i.c, ptr %i.e, align 4, !tbaa !25
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.a, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.m, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.j, %bb.a ] ; 2 uses
  %.0.i.i = phi ptr [ %i.k, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %0, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.l = load i32, ptr %.0.i.i, align 4, !tbaa !24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.l, ptr %.04.i.i, align 4, !tbaa !24
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, !llvm.loop !0

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  store i32 %i.b, ptr %i.a, align 8, !tbaa !27
  invoke void @_Z24UnicodeStringToMultiByteRK11CStringBaseIwEj(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.n = load ptr, ptr %2, align 8, !tbaa !22     ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.n) #24
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.p = load ptr, ptr %1, align 8, !tbaa !30
  %i.q = call i32 @chdir(ptr noundef %i.p) #22
  %i.r = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.r) #24
  br label %_ZN11CStringBaseIcED2Ev.exit

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %_ZN11CStringBaseIwED2Ev.exit, %bb.d
  %i.t = icmp eq i32 %i.q, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret i1 %i.t

bb.e:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %2, align 8, !tbaa !22     ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN11CStringBaseIwED2Ev.exit2, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.v) #24
  br label %_ZN11CStringBaseIwED2Ev.exit2

_ZN11CStringBaseIwED2Ev.exit2:                    ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %i.u
}

; Function Attrs: nounwind
declare i32 @chdir(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory11GetOnlyNameEPKwR11CStringBaseIwE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !62 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %class.CStringBase.0, align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = call noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory17MyGetFullPathNameEPKwR11CStringBaseIwERi(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.c = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !27, !noalias !63
  %i.f = sub nsw i32 %i.e, %i.c
  call void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase.0) align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.c, i32 noundef %i.f)
  store i32 0, ptr %i.d, align 8, !tbaa !27
  %i.g = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  store i32 0, ptr %i.g, align 4, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !27   ; 2 uses
  %i.j = add nsw i32 %i.i, 1                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !25
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = zext nneg i32 %i.j to i64
  %i.o = icmp slt i32 %i.i, -1
  %i.p = shl nuw nsw i64 %i.n, 2
  %i.q = select i1 %i.o, i64 -1, i64 %i.p
  %i.r = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #23
          to label %.noexc unwind label %bb.h     ; 5 uses

.noexc:                                           ; preds = %bb.c
  %i.s = load i32, ptr %i.k, align 4, !tbaa !25
  %i.t = icmp sgt i32 %i.s, 0
  %.pre7.i = load i32, ptr %i.d, align 8, !tbaa !27 ; 5 uses
  br i1 %i.t, label %.preheader.i.i, label %bb.d

.preheader.i.i:                                   ; preds = %.noexc
  %i.u = icmp sgt i32 %.pre7.i, 0
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !22 ; 4 uses
  br i1 %i.u, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %.pre7.i to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.pre7.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <4 x i32>, ptr %i.v, align 4, !tbaa !24
  %wide.load9 = load <4 x i32>, ptr %i.w, align 4, !tbaa !24
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <4 x i32> %wide.load, ptr %i.x, align 4, !tbaa !24
  store <4 x i32> %wide.load9, ptr %i.y, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.aa = icmp eq ptr %.pre.i.i, null
  br i1 %i.aa, label %bb.d, label %._crit_edge.thread.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !24
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i.i
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !24
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.thread.i.i, label %scalar.ph, !llvm.loop !61

._crit_edge.thread.i.i:                           ; preds = %scalar.ph, %middle.block, %._crit_edge.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #24
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %.noexc
  %i.ae = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %.pre7.i, %._crit_edge.i.i ], [ %.pre7.i, %.noexc ]
  store ptr %i.r, ptr %1, align 8, !tbaa !22
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.af
  store i32 0, ptr %i.ag, align 4, !tbaa !24
  store i32 %i.j, ptr %i.k, align 4, !tbaa !25
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.d, %bb.b
  %i.ah = phi ptr [ %i.g, %bb.b ], [ %i.r, %bb.d ]
  %i.ai = load ptr, ptr %2, align 8, !tbaa !22    ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.ah, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.al, %bb.e ] ; 2 uses
  %.0.i.i = phi ptr [ %i.ai, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.aj, %bb.e ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.ak = load i32, ptr %.0.i.i, align 4, !tbaa !24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.ak, ptr %.04.i.i, align 4, !tbaa !24
  %.not.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e, !llvm.loop !0

bb.f:                                             ; preds = %bb.e
  %i.am = load i32, ptr %i.h, align 8, !tbaa !27
  store i32 %i.am, ptr %i.d, align 8, !tbaa !27
  %i.an = icmp eq ptr %i.ai, null
  br i1 %i.an, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.ai) #24
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN11CStringBaseIwED2Ev.exit6, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.ap) #24
  br label %_ZN11CStringBaseIwED2Ev.exit6

_ZN11CStringBaseIwED2Ev.exit6:                    ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  resume { ptr, i32 } %i.ao

bb.j:                                             ; preds = %bb.a, %_ZN11CStringBaseIwED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory17MyGetFullPathNameEPKwR11CStringBaseIwERi(ptr noundef %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 !guid !67 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr null, ptr %i.a, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !25
  %.not.i = icmp sgt i32 %i.c, 4096
  br i1 %.not.i, label %._ZN11CStringBaseIwE11SetCapacityEi.exit_crit_edge.i, label %bb.b

._ZN11CStringBaseIwE11SetCapacityEi.exit_crit_edge.i: ; preds = %bb.a
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !22
  br label %_ZN11CStringBaseIwE9GetBufferEi.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(16388) ptr @_Znam(i64 noundef 16388) #23 ; 10 uses
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = load i32, ptr %i.b, align 4, !tbaa !25
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.preheader.i.i, label %bb.c

.preheader.i.i:                                   ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !27   ; 3 uses
  %i.j = icmp sgt i32 %i.i, 0
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !22 ; 9 uses
  br i1 %i.j, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.pre.i.i14 = ptrtoaddr ptr %.pre.i.i to i64
  %wide.trip.count.i.i = zext nneg i32 %i.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.i, 8
  %i.k = sub i64 %.pre.i.i14, %i.e
  %diff.check = icmp ugt i64 %i.k, -32
  %or.cond16 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond16, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <4 x i32>, ptr %i.l, align 4, !tbaa !24
  %wide.load15 = load <4 x i32>, ptr %i.m, align 4, !tbaa !24
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x i32> %wide.load, ptr %i.n, align 4, !tbaa !24
  store <4 x i32> %wide.load15, ptr %i.o, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.r = load i32, ptr %i.q, align 4, !tbaa !24
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i.i.prol
  store i32 %i.r, ptr %i.s, align 4, !tbaa !24
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !65

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.t = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %._crit_edge.thread.i.i, label %scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.v = icmp eq ptr %.pre.i.i, null
  br i1 %i.v, label %bb.c, label %._crit_edge.thread.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.x = load i32, ptr %i.w, align 4, !tbaa !24
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i.i
  store i32 %i.x, ptr %i.y, align 4, !tbaa !24
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !24
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.i.i
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !24
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !24
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.i.i.1
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !24
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !24
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.i.i.2
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !24
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %scalar.ph, !llvm.loop !66

._crit_edge.thread.i.i:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #24
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.b
  store ptr %i.d, ptr %1, align 8, !tbaa !22
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !27
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ak
  store i32 0, ptr %i.al, align 4, !tbaa !24
  store i32 4097, ptr %i.b, align 4, !tbaa !25
  br label %_ZN11CStringBaseIwE9GetBufferEi.exit

_ZN11CStringBaseIwE9GetBufferEi.exit:             ; preds = %._ZN11CStringBaseIwE11SetCapacityEi.exit_crit_edge.i, %bb.c
  %i.am = phi ptr [ %.pre.i, %._ZN11CStringBaseIwE11SetCapacityEi.exit_crit_edge.i ], [ %i.d, %bb.c ] ; 2 uses
  %i.an = call noundef i32 @_Z15GetFullPathNamePKwjPwPS1_(ptr noundef %0, i32 noundef 4097, ptr noundef %i.am, ptr noundef nonnull %i.a)
  %i.ao = load ptr, ptr %1, align 8, !tbaa !22    ; 2 uses
  %wcslen.i.i = tail call i64 @wcslen(ptr %i.ao)  ; 2 uses
  %i.ap = trunc i64 %wcslen.i.i to i32
  %sext.i = shl i64 %wcslen.i.i, 32
  %i.aq = ashr exact i64 %sext.i, 30
  %i.ar = getelementptr inbounds i8, ptr %i.ao, i64 %i.aq
  store i32 0, ptr %i.ar, align 4, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ap, ptr %i.as, align 8, !tbaa !27
  %i.at = add i32 %i.an, -1
  %or.cond = icmp ult i32 %i.at, 4095             ; 2 uses
  br i1 %or.cond, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN11CStringBaseIwE9GetBufferEi.exit
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !34  ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aw = tail call i64 @wcslen(ptr noundef %0) #25
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.am to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = lshr exact i64 %i.az, 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %storemerge.in = phi i64 [ %i.ba, %bb.f ], [ %i.aw, %bb.e ]
  %storemerge = trunc i64 %storemerge.in to i32
  store i32 %storemerge, ptr %2, align 4, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %_ZN11CStringBaseIwE9GetBufferEi.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i1 %or.cond
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory16GetOnlyDirPrefixEPKwR11CStringBaseIwE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !70 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %class.CStringBase.0, align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = call noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory17MyGetFullPathNameEPKwR11CStringBaseIwERi(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.c = load i32, ptr %i.a, align 4, !tbaa !9
  call void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase.0) align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0, i32 noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i32 0, ptr %i.d, align 8, !tbaa !27
  %i.e = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !27   ; 2 uses
  %i.h = add nsw i32 %i.g, 1                      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !25
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = zext nneg i32 %i.h to i64
  %i.m = icmp slt i32 %i.g, -1
  %i.n = shl nuw nsw i64 %i.l, 2
  %i.o = select i1 %i.m, i64 -1, i64 %i.n
  %i.p = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.o) #23
          to label %.noexc unwind label %bb.h     ; 5 uses

.noexc:                                           ; preds = %bb.c
  %i.q = load i32, ptr %i.i, align 4, !tbaa !25
  %i.r = icmp sgt i32 %i.q, 0
  %.pre7.i = load i32, ptr %i.d, align 8, !tbaa !27 ; 5 uses
  br i1 %i.r, label %.preheader.i.i, label %bb.d

.preheader.i.i:                                   ; preds = %.noexc
  %i.s = icmp sgt i32 %.pre7.i, 0
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !22 ; 4 uses
  br i1 %i.s, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %.pre7.i to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.pre7.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <4 x i32>, ptr %i.t, align 4, !tbaa !24
  %wide.load9 = load <4 x i32>, ptr %i.u, align 4, !tbaa !24
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <4 x i32> %wide.load, ptr %i.v, align 4, !tbaa !24
  store <4 x i32> %wide.load9, ptr %i.w, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.y = icmp eq ptr %.pre.i.i, null
  br i1 %i.y, label %bb.d, label %._crit_edge.thread.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !24
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i.i
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !24
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.thread.i.i, label %scalar.ph, !llvm.loop !69

._crit_edge.thread.i.i:                           ; preds = %scalar.ph, %middle.block, %._crit_edge.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #24
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %.noexc
  %i.ac = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %.pre7.i, %._crit_edge.i.i ], [ %.pre7.i, %.noexc ]
  store ptr %i.p, ptr %1, align 8, !tbaa !22
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ad
  store i32 0, ptr %i.ae, align 4, !tbaa !24
  store i32 %i.h, ptr %i.i, align 4, !tbaa !25
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.d, %bb.b
  %i.af = phi ptr [ %i.e, %bb.b ], [ %i.p, %bb.d ]
  %i.ag = load ptr, ptr %2, align 8, !tbaa !22    ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.af, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.aj, %bb.e ] ; 2 uses
  %.0.i.i = phi ptr [ %i.ag, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.ah, %bb.e ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.ai = load i32, ptr %.0.i.i, align 4, !tbaa !24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.ai, ptr %.04.i.i, align 4, !tbaa !24
  %.not.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e, !llvm.loop !0

bb.f:                                             ; preds = %bb.e
  %i.ak = load i32, ptr %i.f, align 8, !tbaa !27
  store i32 %i.ak, ptr %i.d, align 8, !tbaa !27
  %i.al = icmp eq ptr %i.ag, null
  br i1 %i.al, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.ag) #24
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZN11CStringBaseIwED2Ev.exit6, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.an) #24
  br label %_ZN11CStringBaseIwED2Ev.exit6

_ZN11CStringBaseIwED2Ev.exit6:                    ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  resume { ptr, i32 } %i.am

bb.j:                                             ; preds = %bb.a, %_ZN11CStringBaseIwED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory21MyGetCurrentDirectoryER11CStringBaseIwE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !73 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 8 uses
  %1 = alloca %class.CStringBase.0, align 8       ; 7 uses
  %2 = alloca %class.CStringBase, align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 99, ptr %i.a, align 16, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 58, ptr %i.b, align 1, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.d = call ptr @getcwd(ptr noundef nonnull %i.c, i64 noundef 1021) #22
  %.not = icmp ne ptr %i.d, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %strlen.i.i = call i64 @strlen(ptr nonnull dereferenceable(1) %i.a)
  %i.f = trunc i64 %strlen.i.i to i32             ; 2 uses
  %i.g = add nsw i32 %i.f, 1                      ; 3 uses
  %i.h = icmp ne i32 %i.g, 0
  call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.j = sext i32 %i.g to i64
end_hunk_0
begin_hunk_1_@_ZN8NWindows5NFile10NDirectory10MyMoveFileEPKwS3_:bb.a

.noexc22:                                         ; preds = %.preheader.i.i
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.i, label %.critedge2.i.i

bb.i:                                             ; preds = %.noexc22
  %i.p = load i32, ptr %i.e, align 4, !tbaa !9
  %i.q = icmp eq i32 %i.p, 4
  br i1 %i.q, label %.preheader.i.i, label %_ZL7copy_fdii.exit.i, !llvm.loop !75

.critedge2.i.i:                                   ; preds = %.noexc22
  %.not15.i.i = icmp eq i64 %i.n, 0
  br i1 %.not15.i.i, label %.sink.split.i, label %.backedge

_ZL7copy_fdii.exit.i:                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.r = and i64 %i.n, 4294967295
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.j, label %bb.k

.sink.split.i:                                    ; preds = %.critedge2.i.i, %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %_ZL7copy_fdii.exit.i
  %i.t = invoke i32 @close(i32 noundef %i.i)
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc23:                                         ; preds = %bb.j
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.l, label %.critedge.i

bb.k:                                             ; preds = %_ZL7copy_fdii.exit.i, %_ZL7copy_fdii.exit.thread42.i
  %i.v = invoke i32 @close(i32 noundef %i.i)
          to label %.critedge.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.critedge.i:                                      ; preds = %bb.k, %.noexc23, %.noexc20
  %i.w = invoke i32 @close(i32 noundef %i.h)
          to label %.critedge19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.l:                                             ; preds = %.noexc23
  %i.x = invoke i32 @close(i32 noundef %i.h)
          to label %_ZL8CopyFilePKcS0_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL8CopyFilePKcS0_.exit:                          ; preds = %bb.l
  %.fr.i = freeze i32 %i.x
  %i.y = icmp eq i32 %.fr.i, 0
  br i1 %i.y, label %bb.o, label %.critedge19

bb.m:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %2, align 8, !tbaa !30
  br label %_ZN11CStringBaseIcED2Ev.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i.i, %bb.g, %bb.l, %.critedge.i, %bb.k, %bb.j, %bb.e, %bb.d
  %lpad.loopexit.split-lp61 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = icmp eq ptr %i.c, null
  br i1 %i.aa, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #24
  br label %_ZN11CStringBaseIcED2Ev.exit

bb.o:                                             ; preds = %_ZL8CopyFilePKcS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ab = call i32 @stat64(ptr noundef %i.b, ptr noundef nonnull %4) #22
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.p, label %.critedge.thread

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !41
  %i.af = load i32, ptr @_ZL9gbl_umask.1, align 4, !tbaa !43
  %i.ag = and i32 %i.af, %i.ae
  %i.ah = tail call i32 @chmod(ptr noundef %i.c, i32 noundef %i.ag) #22
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.critedge, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.q

.critedge:                                        ; preds = %bb.p
  %i.aj = tail call i32 @unlink(ptr noundef %i.b) #22
  %.not31 = icmp eq i32 %i.aj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.not31, label %.critedge19, label %bb.q

bb.q:                                             ; preds = %.critedge.thread, %.critedge, %bb.c
  br label %.critedge19

.critedge19:                                      ; preds = %.critedge.i, %.noexc, %_ZL8CopyFilePKcS0_.exit, %bb.b, %.critedge, %bb.q
  %.2 = phi i1 [ false, %bb.q ], [ true, %.critedge ], [ true, %bb.b ], [ false, %_ZL8CopyFilePKcS0_.exit ], [ false, %.noexc ], [ false, %.critedge.i ]
  %i.ak = icmp eq ptr %i.c, null
  br i1 %i.ak, label %_ZN11CStringBaseIcED2Ev.exit27, label %bb.r

bb.r:                                             ; preds = %.critedge19
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #24
  br label %_ZN11CStringBaseIcED2Ev.exit27

_ZN11CStringBaseIcED2Ev.exit27:                   ; preds = %.critedge19, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.al = icmp eq ptr %i.b, null
  br i1 %i.al, label %_ZN11CStringBaseIcED2Ev.exit28, label %bb.s

bb.s:                                             ; preds = %_ZN11CStringBaseIcED2Ev.exit27
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #24
  br label %_ZN11CStringBaseIcED2Ev.exit28

_ZN11CStringBaseIcED2Ev.exit28:                   ; preds = %_ZN11CStringBaseIcED2Ev.exit27, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i1 %.2

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %bb.n, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.m
  %i.am = phi ptr [ %.pre, %bb.m ], [ %i.b, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.b, %bb.n ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.z, %bb.m ], [ %lpad.loopexit.split-lp61, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp61, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZN11CStringBaseIcED2Ev.exit29, label %bb.t

bb.t:                                             ; preds = %_ZN11CStringBaseIcED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.am) #24
  br label %_ZN11CStringBaseIcED2Ev.exit29

_ZN11CStringBaseIcED2Ev.exit29:                   ; preds = %_ZN11CStringBaseIcED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: nofree nounwind
declare noundef i32 @rename(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @chmod(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory17MyRemoveDirectoryEPKw(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !77 {
bb.a:
  %1 = alloca %class.CStringBase, align 8         ; 4 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 4, !tbaa !24
  %.not4.i = icmp eq i32 %i.a, 0
  br i1 %.not4.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call ptr @__errno_location() #26
  store i32 2, ptr %i.b, align 4, !tbaa !9
  br label %_ZL15RemoveDirectoryPKw.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @_Z17nameWindowToUnix2PKw(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %1, ptr noundef nonnull readonly %0)
  %i.c = load ptr, ptr %1, align 8, !tbaa !30     ; 3 uses
  %i.d = tail call i32 @rmdir(ptr noundef %i.c) #22
  %.not5.i = icmp eq i32 %i.d, 0
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %_ZN11CStringBaseIcED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #24
  br label %_ZN11CStringBaseIcED2Ev.exit.i

_ZN11CStringBaseIcED2Ev.exit.i:                   ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %_ZL15RemoveDirectoryPKw.exit

_ZL15RemoveDirectoryPKw.exit:                     ; preds = %bb.c, %_ZN11CStringBaseIcED2Ev.exit.i
  %.1.i = phi i1 [ %.not5.i, %_ZN11CStringBaseIcED2Ev.exit.i ], [ false, %bb.c ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory10SetDirTimeEPKwPK9_FILETIMES6_S6_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !78 {
bb.a:
  %4 = alloca %class.CStringBase, align 8         ; 7 uses
  %5 = alloca %class.CStringBase.0, align 8       ; 10 uses
  %6 = alloca %struct.utimbuf, align 8            ; 7 uses
  %7 = alloca %struct.stat, align 8               ; 6 uses
  %8 = alloca %struct.LARGE_INTEGER, align 8      ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %9 = alloca %struct.LARGE_INTEGER, align 8      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %wcslen.i.i = tail call i64 @wcslen(ptr %0)
  %i.d = trunc i64 %wcslen.i.i to i32             ; 3 uses
  %i.e = add nsw i32 %i.d, 1                      ; 3 uses
  %i.f = icmp ne i32 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.h = zext nneg i32 %i.e to i64
  %i.i = icmp slt i32 %i.d, -1
  %i.j = shl nuw nsw i64 %i.h, 2
  %i.k = select i1 %i.i, i64 -1, i64 %i.j
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #23 ; 3 uses
  store ptr %i.l, ptr %5, align 8, !tbaa !22
  store i32 0, ptr %i.l, align 4, !tbaa !24
  store i32 %i.e, ptr %i.g, align 4, !tbaa !25
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.a, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.o, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.l, %bb.a ] ; 2 uses
  %.0.i.i = phi ptr [ %i.m, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %0, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.n = load i32, ptr %.0.i.i, align 4, !tbaa !24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.n, ptr %.04.i.i, align 4, !tbaa !24
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, !llvm.loop !0

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  store i32 %i.d, ptr %i.c, align 8, !tbaa !27
  invoke void @_Z24UnicodeStringToMultiByteRK11CStringBaseIwEj(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 0)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.p = load ptr, ptr %5, align 8, !tbaa !22     ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.p) #24
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.r = load ptr, ptr %4, align 8, !tbaa !30     ; 4 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !31
  %i.t = icmp eq i8 %i.s, 99
  br i1 %i.t, label %bb.d, label %_ZL16nameWindowToUnixPKc.exit

bb.d:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !31
  %i.w = icmp eq i8 %i.v, 58
  %spec.select.idx.i = select i1 %i.w, i64 2, i64 0
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.r, i64 %spec.select.idx.i
  br label %_ZL16nameWindowToUnixPKc.exit

_ZL16nameWindowToUnixPKc.exit:                    ; preds = %_ZN11CStringBaseIwED2Ev.exit, %bb.d
  %.0.i = phi ptr [ %i.r, %_ZN11CStringBaseIwED2Ev.exit ], [ %spec.select.i, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.x = call i32 @stat64(ptr noundef nonnull %.0.i, ptr noundef nonnull %7) #22
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !79
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !80
  br label %bb.i

bb.f:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN11CStringBaseIwED2Ev.exit20, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.ae) #24
  br label %_ZN11CStringBaseIwED2Ev.exit20

_ZN11CStringBaseIwED2Ev.exit20:                   ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN11CStringBaseIcED2Ev.exit21

bb.h:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit
  %i.ag = call i64 @time(ptr noundef null) #22    ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.sink22 = phi i64 [ %i.aa, %bb.e ], [ %i.ag, %bb.h ]
  %.sink = phi i64 [ %i.ac, %bb.e ], [ %i.ag, %bb.h ]
  store i64 %.sink22, ptr %6, align 8, !tbaa !82
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %.sink, ptr %i.ah, align 8, !tbaa !83
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !84
  %i.ak = zext i32 %i.aj to i64
  %i.al = shl nuw i64 %i.ak, 32
  %i.am = load i32, ptr %2, align 4, !tbaa !85
  %i.an = zext i32 %i.am to i64
  %i.ao = or disjoint i64 %i.al, %i.an
  store i64 %i.ao, ptr %8, align 8, !tbaa !87
  %i.ap = invoke noundef zeroext i8 @_Z25RtlTimeToSecondsSince1970PK13LARGE_INTEGERPj(ptr noundef nonnull %8, ptr noundef nonnull %i.a)
          to label %bb.k unwind label %bb.l       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !9
  %i.ar = zext i32 %i.aq to i64
  store i64 %i.ar, ptr %6, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.s

bb.m:                                             ; preds = %bb.k, %bb.i
  %.not17 = icmp eq ptr %3, null
  br i1 %.not17, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !84
  %i.av = zext i32 %i.au to i64
  %i.aw = shl nuw i64 %i.av, 32
  %i.ax = load i32, ptr %3, align 4, !tbaa !85
  %i.ay = zext i32 %i.ax to i64
  %i.az = or disjoint i64 %i.aw, %i.ay
  store i64 %i.az, ptr %9, align 8, !tbaa !87
  %i.ba = invoke noundef zeroext i8 @_Z25RtlTimeToSecondsSince1970PK13LARGE_INTEGERPj(ptr noundef nonnull %9, ptr noundef nonnull %i.b)
          to label %bb.o unwind label %bb.p       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bb = load i32, ptr %i.b, align 4, !tbaa !9
  %i.bc = zext i32 %i.bb to i64
  store i64 %i.bc, ptr %i.ah, align 8, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.s

bb.q:                                             ; preds = %bb.o, %bb.m
  %i.be = call i32 @utime(ptr noundef nonnull %.0.i, ptr noundef nonnull %6) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bf = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.bf) #24
  br label %_ZN11CStringBaseIcED2Ev.exit

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret i1 true

bb.s:                                             ; preds = %bb.p, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.p ], [ %i.as, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bh = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZN11CStringBaseIcED2Ev.exit21, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.bh) #24
  br label %_ZN11CStringBaseIcED2Ev.exit21

_ZN11CStringBaseIcED2Ev.exit21:                   ; preds = %bb.t, %bb.s, %_ZN11CStringBaseIwED2Ev.exit20
  %.pn.pn = phi { ptr, i32 } [ %i.ad, %_ZN11CStringBaseIwED2Ev.exit20 ], [ %.pn, %bb.s ], [ %.pn, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #4

declare noundef zeroext i8 @_Z25RtlTimeToSecondsSince1970PK13LARGE_INTEGERPj(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @utime(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory19MySetFileAttributesEPKwj(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !88 {
bb.a:
  %i.a = alloca [1025 x i8], align 16             ; 5 uses
  %2 = alloca %class.CStringBase, align 8         ; 4 uses
  %3 = alloca %struct.stat, align 8               ; 6 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #26
  store i32 2, ptr %i.b, align 4, !tbaa !9
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_Z17nameWindowToUnix2PKw(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %2, ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.c = load i32, ptr @global_use_lstat, align 4, !tbaa !9
  %.not10 = icmp eq i32 %i.c, 0
  %i.d = load ptr, ptr %2, align 8, !tbaa !30     ; 8 uses
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @lstat64(ptr noundef %i.d, ptr noundef nonnull %3) #22
  %.not12 = icmp eq i32 %i.e, 0
  br i1 %.not12, label %bb.f, label %_ZN8NWindows5NFile10NDirectoryL18convert_to_symlinkEPKc.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.f = call i32 @stat64(ptr noundef %i.d, ptr noundef nonnull %3) #22
  %.not11 = icmp eq i32 %i.f, 0
  br i1 %.not11, label %bb.f, label %_ZN8NWindows5NFile10NDirectoryL18convert_to_symlinkEPKc.exit.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = and i32 %1, 32768
  %.not13 = icmp eq i32 %i.g, 0
  br i1 %.not13, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = lshr i32 %1, 16                          ; 3 uses
  %i.i = trunc nuw i32 %i.h to i16
  %trunc = and i16 %i.i, -4096
  switch i16 %trunc, label %bb.o [
    i16 -24576, label %bb.h
    i16 -32768, label %.sink.split
    i16 16384, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.j = tail call noalias ptr @fopen64(ptr noundef %i.d, ptr noundef nonnull @.str.10) ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN8NWindows5NFile10NDirectoryL18convert_to_symlinkEPKc.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.k = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1024, ptr noundef nonnull %i.j)
  %i.l = call i32 @fclose(ptr noundef nonnull %i.j) ; 0 uses
  %.not14.i = icmp eq ptr %i.k, null
  br i1 %.not14.i, label %_ZN8NWindows5NFile10NDirectoryL18convert_to_symlinkEPKc.exit.thread19, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = call i32 @unlink(ptr noundef %i.d) #22
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZN8NWindows5NFile10NDirectoryL18convert_to_symlinkEPKc.exit, label %_ZN8NWindows5NFile10NDirectoryL18convert_to_symlinkEPKc.exit.thread19

_ZN8NWindows5NFile10NDirectoryL18convert_to_symlinkEPKc.exit.thread19: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZN8NWindows5NFile10NDirectoryL18convert_to_symlinkEPKc.exit.thread

_ZN8NWindows5NFile10NDirectoryL18convert_to_symlinkEPKc.exit: ; preds = %bb.j
  %i.o = call i32 @symlink(ptr noundef nonnull %i.a, ptr noundef %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.not15 = icmp eq i32 %i.o, 0
  br i1 %.not15, label %bb.o, label %_ZN8NWindows5NFile10NDirectoryL18convert_to_symlinkEPKc.exit.thread

bb.k:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = or i32 %i.h, 448                         ; 2 uses
  store i32 %i.q, ptr %i.p, align 8, !tbaa !41
  br label %.sink.split

bb.l:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !41   ; 4 uses
  %i.t = trunc i32 %i.s to i16
  %trunc22 = and i16 %i.t, -4096
  switch i16 %trunc22, label %bb.m [
    i16 -24576, label %bb.o
    i16 16384, label %.sink.split
  ]

bb.m:                                             ; preds = %bb.l
  %i.u = and i32 %1, 1
  %.not14 = icmp eq i32 %i.u, 0
  br i1 %.not14, label %.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = and i32 %i.s, -147                       ; 2 uses
  store i32 %i.v, ptr %i.r, align 8, !tbaa !41
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.n, %bb.l, %bb.g, %bb.k
  %.sink27 = phi i32 [ %i.s, %bb.l ], [ %i.h, %bb.g ], [ %i.q, %bb.k ], [ %i.v, %bb.n ], [ %i.s, %bb.m ]
  %i.w = load i32, ptr @_ZL9gbl_umask.1, align 4, !tbaa !43
  %i.x = and i32 %i.w, %.sink27
  %i.y = tail call i32 @chmod(ptr noundef %i.d, i32 noundef %i.x) #22 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.l, %bb.g, %_ZN8NWindows5NFile10NDirectoryL18convert_to_symlinkEPKc.exit
  br label %_ZN8NWindows5NFile10NDirectoryL18convert_to_symlinkEPKc.exit.thread

_ZN8NWindows5NFile10NDirectoryL18convert_to_symlinkEPKc.exit.thread: ; preds = %_ZN8NWindows5NFile10NDirectoryL18convert_to_symlinkEPKc.exit.thread19, %_ZN8NWindows5NFile10NDirectoryL18convert_to_symlinkEPKc.exit, %bb.o, %bb.h, %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.h ], [ false, %bb.d ], [ false, %bb.e ], [ false, %_ZN8NWindows5NFile10NDirectoryL18convert_to_symlinkEPKc.exit.thread19 ], [ false, %_ZN8NWindows5NFile10NDirectoryL18convert_to_symlinkEPKc.exit ], [ true, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.z = icmp eq ptr %i.d, null
  br i1 %i.z, label %_ZN11CStringBaseIcED2Ev.exit16, label %bb.p

bb.p:                                             ; preds = %_ZN8NWindows5NFile10NDirectoryL18convert_to_symlinkEPKc.exit.thread
  call void @_ZdaPv(ptr noundef nonnull %i.d) #24
  br label %_ZN11CStringBaseIcED2Ev.exit16

_ZN11CStringBaseIcED2Ev.exit16:                   ; preds = %_ZN8NWindows5NFile10NDirectoryL18convert_to_symlinkEPKc.exit.thread, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.q

bb.q:                                             ; preds = %_ZN11CStringBaseIcED2Ev.exit16, %bb.b
  %.1 = phi i1 [ %.0, %_ZN11CStringBaseIcED2Ev.exit16 ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: nofree nounwind
declare noundef i32 @lstat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory17MyCreateDirectoryEPKw(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !89 {
bb.a:
  %1 = alloca %class.CStringBase, align 8         ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 4, !tbaa !24
  %.not6 = icmp eq i32 %i.a, 0
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call ptr @__errno_location() #26
  store i32 2, ptr %i.b, align 4, !tbaa !9
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @_Z17nameWindowToUnix2PKw(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %1, ptr noundef nonnull %0)
  %i.c = load ptr, ptr %1, align 8, !tbaa !30     ; 3 uses
  %i.d = tail call i32 @mkdir(ptr noundef %i.c, i32 noundef 448) #22
  %i.e = icmp eq i32 %i.d, 0
  %i.f = icmp eq ptr %i.c, null
  br i1 %i.f, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #24
  br label %_ZN11CStringBaseIcED2Ev.exit

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.f

bb.f:                                             ; preds = %_ZN11CStringBaseIcED2Ev.exit, %bb.c
  %.04 = phi i1 [ %i.e, %_ZN11CStringBaseIcED2Ev.exit ], [ false, %bb.c ]
  ret i1 %.04
}

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory22CreateComplexDirectoryEPKw(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !99 {
bb.a:
  %1 = alloca %class.CStringBase, align 8         ; 4 uses
  %2 = alloca %class.CStringBase, align 8         ; 4 uses
  %3 = alloca %class.CStringBase.0, align 8       ; 21 uses
  %4 = alloca %class.CStringBase.0, align 8       ; 7 uses
  %5 = alloca %class.CStringBase.0, align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %wcslen.i.i = tail call i64 @wcslen(ptr %0)     ; 3 uses
  %i.c = trunc i64 %wcslen.i.i to i32             ; 8 uses
  %i.d = add nsw i32 %i.c, 1                      ; 3 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64
  %i.g = icmp slt i32 %i.c, -1
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #23 ; 3 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !22
  store i32 0, ptr %i.j, align 4, !tbaa !24
  store i32 %i.d, ptr %i.b, align 4, !tbaa !25
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %bb.b ] ; 9 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.k, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.n, %bb.c ] ; 2 uses
  %.0.i.i = phi ptr [ %0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.m = load i32, ptr %.0.i.i, align 4, !tbaa !24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.m, ptr %.04.i.i, align 4, !tbaa !24
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit, label %bb.c, !llvm.loop !0

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %bb.c
  store i32 %i.c, ptr %i.a, align 8, !tbaa !27
  %i.o = icmp eq i32 %i.c, 0
  br i1 %i.o, label %.thread, label %bb.d

bb.d:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %sext = shl i64 %wcslen.i.i, 32
  %i.p = ashr exact i64 %sext, 30
  %i.q = getelementptr inbounds i8, ptr %i.k, i64 %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.pn.i = phi ptr [ %i.q, %bb.d ], [ %.0.i, %bb.f ]
  %.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -4 ; 4 uses
  %i.r = load i32, ptr %.0.i, align 4, !tbaa !24
  %i.s = icmp eq i32 %i.r, 47
  br i1 %i.s, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = icmp eq ptr %.0.i, %i.k
  br i1 %i.t, label %_ZN11CStringBaseIwE6DeleteEii.exit, label %bb.e, !llvm.loop !90

_ZNK11CStringBaseIwE11ReverseFindEw.exit:         ; preds = %bb.e
  %i.u = ptrtoint ptr %.0.i to i64
  %i.v = ptrtoint ptr %i.k to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = lshr exact i64 %i.w, 2                   ; 4 uses
  %i.y = trunc i64 %i.x to i32                    ; 4 uses
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = add nsw i32 %i.c, -1
  %i.ab = icmp eq i32 %i.aa, %i.y
  %or.cond117 = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %or.cond117, label %bb.g, label %_ZN11CStringBaseIwE6DeleteEii.exit

bb.g:                                             ; preds = %_ZNK11CStringBaseIwE11ReverseFindEw.exit
  %i.ac = icmp eq i32 %i.c, 3
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !24
  %i.af = icmp eq i32 %i.ae, 58
  br i1 %i.af, label %_ZN11CStringBaseIwED2Ev.exit98.thread, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ag = add nuw nsw i64 %i.x, 1
  %i.ah = and i64 %i.x, 2147483647
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ah
  %i.aj = and i64 %i.ag, 4294967295
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.aj
  %i.al = sub i64 %wcslen.i.i, %i.x
  %sext127 = shl i64 %i.al, 32
  %i.am = ashr exact i64 %sext127, 30
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ai, ptr nonnull align 4 %i.ak, i64 %i.am, i1 false)
  store i32 %i.y, ptr %i.a, align 8, !tbaa !27
  br label %_ZN11CStringBaseIwE6DeleteEii.exit

_ZN11CStringBaseIwE6DeleteEii.exit:               ; preds = %bb.f, %bb.i, %_ZNK11CStringBaseIwE11ReverseFindEw.exit
  %i.an = phi i32 [ %i.c, %_ZNK11CStringBaseIwE11ReverseFindEw.exit ], [ %i.y, %bb.i ], [ %i.c, %bb.f ]
  %.fr = freeze i32 %i.an                         ; 2 uses
  %i.ao = add nsw i32 %.fr, 1                     ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i35, label %bb.j

bb.j:                                             ; preds = %_ZN11CStringBaseIwE6DeleteEii.exit
  %i.aq = zext nneg i32 %i.ao to i64
  %i.ar = icmp slt i32 %.fr, -1
  %i.as = shl nuw nsw i64 %i.aq, 2
  %spec.select = select i1 %i.ar, i64 -1, i64 %i.as
  br label %.thread

.thread:                                          ; preds = %bb.j, %_ZN11CStringBaseIwEC2EPKw.exit
  %i.at = phi i64 [ 4, %_ZN11CStringBaseIwEC2EPKw.exit ], [ %spec.select, %bb.j ]
  %i.au = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.at) #23
          to label %.noexc unwind label %bb.q     ; 2 uses

.noexc:                                           ; preds = %.thread
  store i32 0, ptr %i.au, align 4, !tbaa !24
  %.pre = load ptr, ptr %3, align 8, !tbaa !22
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i35

_ZN11CStringBaseIwE11SetCapacityEi.exit.i35:      ; preds = %.noexc, %_ZN11CStringBaseIwE6DeleteEii.exit
  %.pre139 = phi ptr [ %i.k, %_ZN11CStringBaseIwE6DeleteEii.exit ], [ %.pre, %.noexc ] ; 2 uses
  %.sroa.0.0 = phi ptr [ null, %_ZN11CStringBaseIwE6DeleteEii.exit ], [ %i.au, %.noexc ] ; 6 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i35
  %.04.i.i36 = phi ptr [ %.sroa.0.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i35 ], [ %i.ax, %bb.k ] ; 2 uses
  %.0.i.i37 = phi ptr [ %.pre139, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i35 ], [ %i.av, %bb.k ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i37, i64 4
  %i.aw = load i32, ptr %.0.i.i37, align 4, !tbaa !24 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.04.i.i36, i64 4
  store i32 %i.aw, ptr %.04.i.i36, align 4, !tbaa !24
  %.not.i.i38 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i38, label %bb.l, label %bb.k, !llvm.loop !0

bb.l:                                             ; preds = %bb.k
  %i.ay = load i32, ptr %i.a, align 8, !tbaa !27  ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit, %bb.l
  %i.ba = phi ptr [ %.pre139, %bb.l ], [ %i.dx, %_ZN11CStringBaseIwED2Ev.exit ] ; 3 uses
  %.020 = phi i32 [ %i.ay, %bb.l ], [ %i.bv, %_ZN11CStringBaseIwED2Ev.exit ]
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %.thread164, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !24
  %.not6.i = icmp eq i32 %i.bb, 0
  br i1 %.not6.i, label %.thread164, label %bb.o

.thread164:                                       ; preds = %bb.n, %bb.m
  %i.bc = tail call ptr @__errno_location() #26
  store i32 2, ptr %i.bc, align 4, !tbaa !9
  br label %bb.s

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_Z17nameWindowToUnix2PKw(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %2, ptr noundef nonnull readonly %i.ba)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc49:                                         ; preds = %bb.o
  %i.bd = load ptr, ptr %2, align 8, !tbaa !30    ; 3 uses
  %i.be = call i32 @mkdir(ptr noundef %i.bd, i32 noundef 448) #22
  %i.bf = icmp eq i32 %i.be, 0
  %i.bg = icmp eq ptr %i.bd, null
  br i1 %i.bg, label %_ZN8NWindows5NFile10NDirectory17MyCreateDirectoryEPKw.exit, label %bb.p

bb.p:                                             ; preds = %.noexc49
  call void @_ZdaPv(ptr noundef nonnull %i.bd) #24
  br label %_ZN8NWindows5NFile10NDirectory17MyCreateDirectoryEPKw.exit

_ZN8NWindows5NFile10NDirectory17MyCreateDirectoryEPKw.exit: ; preds = %.noexc49, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %i.bf, label %bb.ag, label %bb.r

bb.q:                                             ; preds = %.thread
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit99

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.o, %bb.ah
  %lpad.loopexit.split-lp201 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.r:                                             ; preds = %_ZN8NWindows5NFile10NDirectory17MyCreateDirectoryEPKw.exit
  %.pre141 = tail call ptr @__errno_location() #26
  %.pr163 = load i32, ptr %.pre141, align 4, !tbaa !9
  %i.bi = icmp eq i32 %.pr163, 17
  br i1 %i.bi, label %bb.ag, label %bb.s

bb.s:                                             ; preds = %.thread164, %bb.r
  %i.bj = load i32, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit53.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = load ptr, ptr %3, align 8, !tbaa !22    ; 4 uses
  %i.bm = sext i32 %i.bj to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bm
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %.pn.i50 = phi ptr [ %i.bn, %bb.t ], [ %.0.i51, %bb.v ]
  %.0.i51 = getelementptr inbounds i8, ptr %.pn.i50, i64 -4 ; 4 uses
  %i.bo = load i32, ptr %.0.i51, align 4, !tbaa !24
  %i.bp = icmp eq i32 %i.bo, 47
  br i1 %i.bp, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit53, label %bb.v
end_hunk_1
begin_hunk_2_@_ZN8NWindows5NFile5NFind12CEnumeratorWC2ERK11CStringBaseIwE:bb.a
middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.u = icmp eq ptr %.pre.i.i, null
  br i1 %i.u, label %bb.c, label %._crit_edge.thread.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !24
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i
  store i32 %i.w, ptr %i.x, align 4, !tbaa !24
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.thread.i.i, label %scalar.ph, !llvm.loop !122

._crit_edge.thread.i.i:                           ; preds = %scalar.ph, %middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #24
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %.noexc
  %i.y = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %.pre4.i, %._crit_edge.i.i ], [ %.pre4.i, %.noexc ]
  store ptr %i.l, ptr %i.a, align 8, !tbaa !22
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.z
  store i32 0, ptr %i.aa, align 4, !tbaa !24
  store i32 %i.f, ptr %i.c, align 4, !tbaa !25
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.c, %bb.a
  %i.ab = phi ptr [ null, %bb.a ], [ %i.l, %bb.c ]
  %i.ac = load ptr, ptr %1, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.ab, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.af, %bb.d ] ; 2 uses
  %.0.i.i = phi ptr [ %i.ac, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.ad, %bb.d ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.ae = load i32, ptr %.0.i.i, align 4, !tbaa !24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.ae, ptr %.04.i.i, align 4, !tbaa !24
  %.not.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d, !llvm.loop !0

bb.e:                                             ; preds = %bb.d
  %i.ag = load i32, ptr %i.d, align 8, !tbaa !27
  store i32 %i.ag, ptr %i.b, align 8, !tbaa !27
  ret void

bb.f:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8NWindows5NFile5NFind9CFindFileD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #22
  resume { ptr, i32 } %i.ah
}

declare noundef zeroext i1 @_ZN8NWindows5NFile5NFind12CEnumeratorW4NextERNS1_10CFileInfoWE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8NWindows5NFile5NFind12CEnumeratorWD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !guid !124 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #24
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.a, %bb.b
  %i.d = invoke noundef zeroext i1 @_ZN8NWindows5NFile5NFind9CFindFile5CloseEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN11CStringBaseIcED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #24
  br label %_ZN11CStringBaseIcED2Ev.exit.i

_ZN11CStringBaseIcED2Ev.exit.i:                   ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN8NWindows5NFile5NFind9CFindFileD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11CStringBaseIcED2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #24
  br label %_ZN8NWindows5NFile5NFind9CFindFileD2Ev.exit

bb.f:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #27
  unreachable

_ZN8NWindows5NFile5NFind9CFindFileD2Ev.exit:      ; preds = %_ZN11CStringBaseIcED2Ev.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory17MyGetFullPathNameEPKwR11CStringBaseIwE(ptr noundef %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 !guid !125 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = call noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory17MyGetFullPathNameEPKwR11CStringBaseIwERi(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory12MySearchPathEPKwS3_S3_R11CStringBaseIwE(ptr nofree noundef readnone captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readnone captures(address_is_null) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !134 {
bb.a:
  %4 = alloca %class.CStringBase, align 8         ; 12 uses
  %5 = alloca %class.CStringBase, align 8         ; 8 uses
  %6 = alloca %class.CStringBase.0, align 8       ; 11 uses
  %7 = alloca %class.CStringBase.0, align 8       ; 7 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %puts31 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  tail call void @exit(i32 noundef 1) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not22 = icmp eq ptr %2, null
  br i1 %.not22, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %puts30 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  tail call void @exit(i32 noundef 1) #28
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef 1) #28
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.b = tail call ptr @getenv(ptr noundef nonnull @.str.5) #22 ; 3 uses
  %.not23 = icmp eq ptr %i.b, null
  br i1 %.not23, label %bb.al, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %strlen.i.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.b) ; 7 uses
  %i.e = trunc i64 %strlen.i.i to i32             ; 7 uses
  %i.f = add nsw i32 %i.e, 1                      ; 5 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = sext i32 %i.f to i64
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #23 ; 3 uses
  store ptr %i.i, ptr %4, align 8, !tbaa !30
  store i8 0, ptr %i.i, align 1, !tbaa !31
  store i32 %i.f, ptr %i.d, align 4, !tbaa !32
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i

_ZN11CStringBaseIcE11SetCapacityEi.exit.i:        ; preds = %bb.i, %bb.h
  %.pre.i.i.i = phi ptr [ null, %bb.h ], [ %i.i, %bb.i ] ; 9 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %.pre.i.i.i, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.l, %bb.j ] ; 2 uses
  %.0.i.i = phi ptr [ %i.b, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.j, %bb.j ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.k = load i8, ptr %.0.i.i, align 1, !tbaa !31 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 1
  store i8 %i.k, ptr %.04.i.i, align 1, !tbaa !31
  %.not.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIcEC2EPKc.exit, label %bb.j, !llvm.loop !1

_ZN11CStringBaseIcEC2EPKc.exit:                   ; preds = %bb.j
  store i32 %i.e, ptr %i.c, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %wcslen.i.i = tail call i64 @wcslen(ptr nonnull %1)
  %i.o = trunc i64 %wcslen.i.i to i32             ; 3 uses
  %i.p = add nsw i32 %i.o, 1                      ; 3 uses
  %i.q = icmp ne i32 %i.p, 0
  tail call void @llvm.assume(i1 %i.q)
  %i.r = zext nneg i32 %i.p to i64
  %i.s = icmp slt i32 %i.o, -1
  %i.t = shl nuw nsw i64 %i.r, 2
  %i.u = select i1 %i.s, i64 -1, i64 %i.t
  %i.v = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.u) #23
          to label %.noexc unwind label %bb.ab    ; 10 uses

.noexc:                                           ; preds = %_ZN11CStringBaseIcEC2EPKc.exit
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = load i32, ptr %i.n, align 4, !tbaa !25
  %i.y = icmp sgt i32 %i.x, 0
  %.pre4.i32 = load i32, ptr %i.m, align 8, !tbaa !27 ; 4 uses
  br i1 %i.y, label %.preheader.i.i36, label %bb.k

.preheader.i.i36:                                 ; preds = %.noexc
  %i.z = icmp sgt i32 %.pre4.i32, 0
  %.pre.i.i37 = load ptr, ptr %6, align 8, !tbaa !22 ; 9 uses
  br i1 %i.z, label %.lr.ph.i.i41, label %._crit_edge.i.i38

.lr.ph.i.i41:                                     ; preds = %.preheader.i.i36
  %.pre.i.i3795 = ptrtoaddr ptr %.pre.i.i37 to i64
  %wide.trip.count.i.i42 = zext nneg i32 %.pre4.i32 to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre4.i32, 8
  %i.aa = sub i64 %.pre.i.i3795, %i.w
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i41
  %n.vec = and i64 %wide.trip.count.i.i42, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i37, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load = load <4 x i32>, ptr %i.ab, align 4, !tbaa !24
  %wide.load96 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !24
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <4 x i32> %wide.load, ptr %i.ad, align 4, !tbaa !24
  store <4 x i32> %wide.load96, ptr %i.ae, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i42
  br i1 %cmp.n, label %._crit_edge.thread.i.i39, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i41, %middle.block
  %indvars.iv.i.i43.ph = phi i64 [ 0, %.lr.ph.i.i41 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i42, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i43.prol = phi i64 [ %indvars.iv.next.i.i44.prol, %scalar.ph.prol ], [ %indvars.iv.i.i43.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i37, i64 %indvars.iv.i.i43.prol
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !24
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i.i43.prol
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !24
  %indvars.iv.next.i.i44.prol = add nuw nsw i64 %indvars.iv.i.i43.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !127

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i43.unr = phi i64 [ %indvars.iv.i.i43.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i44.prol, %scalar.ph.prol ]
  %i.aj = sub nsw i64 %indvars.iv.i.i43.ph, %wide.trip.count.i.i42
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %._crit_edge.thread.i.i39, label %scalar.ph

._crit_edge.i.i38:                                ; preds = %.preheader.i.i36
  %i.al = icmp eq ptr %.pre.i.i37, null
  br i1 %i.al, label %bb.k, label %._crit_edge.thread.i.i39

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i43 = phi i64 [ %indvars.iv.next.i.i44.3, %scalar.ph ], [ %indvars.iv.i.i43.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i37, i64 %indvars.iv.i.i43
  %i.an = load i32, ptr %i.am, align 4, !tbaa !24
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i.i43
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !24
  %indvars.iv.next.i.i44 = add nuw nsw i64 %indvars.iv.i.i43, 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i37, i64 %indvars.iv.next.i.i44
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !24
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next.i.i44
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !24
  %indvars.iv.next.i.i44.1 = add nuw nsw i64 %indvars.iv.i.i43, 2 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i37, i64 %indvars.iv.next.i.i44.1
  %i.at = load i32, ptr %i.as, align 4, !tbaa !24
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next.i.i44.1
  store i32 %i.at, ptr %i.au, align 4, !tbaa !24
  %indvars.iv.next.i.i44.2 = add nuw nsw i64 %indvars.iv.i.i43, 3 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i37, i64 %indvars.iv.next.i.i44.2
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !24
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next.i.i44.2
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !24
  %indvars.iv.next.i.i44.3 = add nuw nsw i64 %indvars.iv.i.i43, 4 ; 2 uses
  %exitcond.not.i.i45.3 = icmp eq i64 %indvars.iv.next.i.i44.3, %wide.trip.count.i.i42
  br i1 %exitcond.not.i.i45.3, label %._crit_edge.thread.i.i39, label %scalar.ph, !llvm.loop !128

._crit_edge.thread.i.i39:                         ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge.i.i38
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i37) #24
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.thread.i.i39, %._crit_edge.i.i38, %.noexc
  store ptr %i.v, ptr %6, align 8, !tbaa !22
  %i.ay = sext i32 %.pre4.i32 to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ay
  store i32 0, ptr %i.az, align 4, !tbaa !24
  store i32 %i.p, ptr %i.n, align 4, !tbaa !25
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.k, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i33 = phi ptr [ %i.bc, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.v, %bb.k ] ; 2 uses
  %.0.i.i34 = phi ptr [ %i.ba, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %1, %bb.k ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i34, i64 4
  %i.bb = load i32, ptr %.0.i.i34, align 4, !tbaa !24 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.04.i.i33, i64 4
  store i32 %i.bb, ptr %.04.i.i33, align 4, !tbaa !24
  %.not.i.i35 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i35, label %bb.l, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, !llvm.loop !0

bb.l:                                             ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  store i32 %i.o, ptr %i.m, align 8, !tbaa !27
  invoke void @_Z24UnicodeStringToMultiByteRK11CStringBaseIwEj(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef 0)
          to label %bb.m unwind label %bb.ac

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !33 ; 2 uses
  %.not.i.i46 = icmp sgt i32 %i.be, 0
  br i1 %.not.i.i46, label %bb.n, label %_ZN11CStringBaseIcE10GrowLengthEi.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bf = icmp sgt i32 %i.e, 63
  %i.bg = lshr i32 %i.f, 1
  %i.bh = icmp sgt i32 %i.e, 7
  %..i.i = select i1 %i.bh, i32 16, i32 4
  %.0.i.i48 = select i1 %i.bf, i32 %i.bg, i32 %..i.i
  %.1.i.i = call i32 @llvm.smax.i32(i32 %.0.i.i48, i32 %i.be)
  %i.bi = add i32 %i.e, 2
  %i.bj = add i32 %i.bi, %.1.i.i                  ; 3 uses
  %i.bk = icmp eq i32 %i.bj, %i.f
  br i1 %i.bk, label %_ZN11CStringBaseIcE10GrowLengthEi.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = sext i32 %i.bj to i64
  %i.bm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bl) #23
          to label %.noexc50 unwind label %bb.ad  ; 6 uses

.noexc50:                                         ; preds = %bb.o
  %i.bn = icmp sgt i32 %i.e, -1
  br i1 %i.bn, label %.preheader.i.i.i, label %bb.p

.preheader.i.i.i:                                 ; preds = %.noexc50
  %.not93 = icmp eq i32 %i.e, 0
  br i1 %.not93, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i.i.i
  %wide.trip.count.i.i.i = and i64 %strlen.i.i, 2147483647 ; 5 uses
  %min.iters.check98 = icmp samesign ult i64 %wide.trip.count.i.i.i, 4
  br i1 %min.iters.check98, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check99 = icmp samesign ult i64 %wide.trip.count.i.i.i, 32
  br i1 %min.iters.check99, label %vec.epilog.ph, label %vector.ph100

vector.ph100:                                     ; preds = %vector.main.loop.iter.check
  %i.bo = and i64 %strlen.i.i, 28
  %n.vec101 = and i64 %strlen.i.i, 2147483616     ; 4 uses
  br label %vector.body102

vector.body102:                                   ; preds = %vector.ph100, %vector.body102
  %index103 = phi i64 [ 0, %vector.ph100 ], [ %index.next106, %vector.body102 ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %index103 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load104 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !31
  %wide.load105 = load <16 x i8>, ptr %i.bq, align 1, !tbaa !31
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %index103 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store <16 x i8> %wide.load104, ptr %i.br, align 1, !tbaa !31
  store <16 x i8> %wide.load105, ptr %i.bs, align 1, !tbaa !31
  %index.next106 = add nuw i64 %index103, 32      ; 2 uses
  %i.bt = icmp eq i64 %index.next106, %n.vec101
  br i1 %i.bt, label %middle.block107, label %vector.body102, !llvm.loop !129

middle.block107:                                  ; preds = %vector.body102
  %cmp.n108 = icmp eq i64 %wide.trip.count.i.i.i, %n.vec101
  br i1 %cmp.n108, label %._crit_edge.thread.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block107
  %min.epilog.iters.check = icmp eq i64 %i.bo, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !47
end_hunk_2
begin_hunk_3_@_ZN8NWindows5NFile10NDirectory12MySearchPathEPKwS3_S3_R11CStringBaseIwE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn27.pn

.critedge:                                        ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.es = icmp eq ptr %i.cr, null
  br i1 %i.es, label %.sink.split, label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %.critedge, %_ZN11CStringBaseIwED2Ev.exit66
  %.sink = phi ptr [ %i.ed, %_ZN11CStringBaseIwED2Ev.exit66 ], [ %i.cr, %.critedge ]
  call void @_ZdaPv(ptr noundef nonnull %.sink) #24
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %.critedge, %_ZN11CStringBaseIwED2Ev.exit66
  %.118.ph = phi i1 [ false, %.critedge ], [ true, %_ZN11CStringBaseIwED2Ev.exit66 ], [ %.not26, %.sink.split.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.al

bb.al:                                            ; preds = %.sink.split, %bb.g
  %.118 = phi i1 [ false, %bb.g ], [ %.118.ph, %.sink.split ]
  ret i1 %.118
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

declare void @_Z24MultiByteToUnicodeStringRK11CStringBaseIcEj(ptr dead_on_unwind writable sret(%class.CStringBase.0) align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory13MyGetTempPathER11CStringBaseIwE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((8, 12)) %0) local_unnamed_addr #0 !guid !137 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.a, align 8, !tbaa !27
  %i.b = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !25
  %i.e = icmp eq i32 %i.d, 8
  br i1 %i.e, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znam(i64 noundef 32) #23 ; 5 uses
  %i.g = load i32, ptr %i.c, align 4, !tbaa !25
  %i.h = icmp sgt i32 %i.g, 0
  %.pre4.i = load i32, ptr %i.a, align 8, !tbaa !27 ; 5 uses
  br i1 %i.h, label %.preheader.i.i, label %bb.c

.preheader.i.i:                                   ; preds = %bb.b
  %i.i = icmp sgt i32 %.pre4.i, 0
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !22 ; 4 uses
  br i1 %i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %.pre4.i to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.pre4.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <4 x i32>, ptr %i.j, align 4, !tbaa !24
  %wide.load1 = load <4 x i32>, ptr %i.k, align 4, !tbaa !24
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <4 x i32> %wide.load, ptr %i.l, align 4, !tbaa !24
  store <4 x i32> %wide.load1, ptr %i.m, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !135

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.o = icmp eq ptr %.pre.i.i, null
  br i1 %i.o, label %bb.c, label %._crit_edge.thread.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !24
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i.i
  store i32 %i.q, ptr %i.r, align 4, !tbaa !24
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.thread.i.i, label %scalar.ph, !llvm.loop !136

._crit_edge.thread.i.i:                           ; preds = %scalar.ph, %middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #24
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.b
  %i.s = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %.pre4.i, %._crit_edge.i.i ], [ %.pre4.i, %bb.b ]
  store ptr %i.f, ptr %0, align 8, !tbaa !22
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.t
  store i32 0, ptr %i.u, align 4, !tbaa !24
  store i32 8, ptr %i.c, align 4, !tbaa !25
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.c, %bb.a
  %i.v = phi ptr [ %i.b, %bb.a ], [ %i.f, %bb.c ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <4 x i32> <i32 99, i32 58, i32 47, i32 116>, ptr %i.v, align 4, !tbaa !24
  store <4 x i32> <i32 109, i32 112, i32 47, i32 0>, ptr %i.w, align 4, !tbaa !24
  store i32 7, ptr %i.a, align 8, !tbaa !27
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8NWindows16NSynchronization16CCriticalSectionD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 !guid !138 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %0) #22 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NWindows5NFile10NDirectory9CTempFile6CreateEPKwS4_R11CStringBaseIwE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) initializes((8, 12)) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !148 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 5 uses
  %i.b = alloca [32 x i32], align 16              ; 5 uses
  %4 = alloca %class.CStringBase, align 8         ; 4 uses
  %5 = alloca %class.CStringBase.0, align 8       ; 10 uses
  %6 = alloca %class.CStringBase.0, align 8       ; 10 uses
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @_ZN8NWindows5NFile10NDirectoryL22g_CountCriticalSectionE) #22 ; 0 uses
  %i.d = load i32, ptr @_ZZN8NWindows5NFile10NDirectory9CTempFile6CreateEPKwS4_R11CStringBaseIwEE10memo_count, align 4, !tbaa !9 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN8NWindows5NFile10NDirectory9CTempFile6CreateEPKwS4_R11CStringBaseIwEE10memo_count, align 4, !tbaa !9
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @_ZN8NWindows5NFile10NDirectoryL22g_CountCriticalSectionE) #22 ; 0 uses
  %i.g = load i8, ptr %0, align 8, !tbaa !49, !range !50, !noundef !51
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %_ZN8NWindows5NFile10NDirectory9CTempFile6RemoveEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22   ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.j, align 4, !tbaa !24
  %.not6.i.i = icmp eq i32 %i.k, 0
  br i1 %.not6.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = tail call ptr @__errno_location() #26
  store i32 2, ptr %i.l, align 4, !tbaa !9
  br label %_ZN8NWindows5NFile10NDirectory16DeleteFileAlwaysEPKw.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_Z17nameWindowToUnix2PKw(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %4, ptr noundef nonnull readonly %i.j)
  %i.m = load ptr, ptr %4, align 8, !tbaa !30     ; 3 uses
  %i.n = tail call i32 @remove(ptr noundef %i.m) #22
  %i.o = icmp ne i32 %i.n, 0
  %i.p = icmp eq ptr %i.m, null
  br i1 %i.p, label %_ZN11CStringBaseIcED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #24
  br label %_ZN11CStringBaseIcED2Ev.exit.i.i

_ZN11CStringBaseIcED2Ev.exit.i.i:                 ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.q = zext i1 %i.o to i8
  br label %_ZN8NWindows5NFile10NDirectory16DeleteFileAlwaysEPKw.exit.i

_ZN8NWindows5NFile10NDirectory16DeleteFileAlwaysEPKw.exit.i: ; preds = %_ZN11CStringBaseIcED2Ev.exit.i.i, %bb.d
  %.04.i.i = phi i8 [ %i.q, %_ZN11CStringBaseIcED2Ev.exit.i.i ], [ 1, %bb.d ]
  store i8 %.04.i.i, ptr %0, align 8, !tbaa !49
  br label %_ZN8NWindows5NFile10NDirectory9CTempFile6RemoveEv.exit

_ZN8NWindows5NFile10NDirectory9CTempFile6RemoveEv.exit: ; preds = %bb.a, %_ZN8NWindows5NFile10NDirectory16DeleteFileAlwaysEPKw.exit.i
  %i.r = tail call i32 @getpid() #22              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i32 0, ptr %i.s, align 8, !tbaa !27
  %i.t = load ptr, ptr %3, align 8, !tbaa !22     ; 2 uses
  store i32 0, ptr %i.t, align 4, !tbaa !24
  %wcslen.i.i = tail call i64 @wcslen(ptr %1)
  %i.u = trunc i64 %wcslen.i.i to i32             ; 3 uses
  %i.v = add nsw i32 %i.u, 1                      ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !25
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader, label %bb.g

bb.g:                                             ; preds = %_ZN8NWindows5NFile10NDirectory9CTempFile6RemoveEv.exit
  %i.z = zext nneg i32 %i.v to i64
  %i.aa = icmp slt i32 %i.u, -1
  %i.ab = shl nuw nsw i64 %i.z, 2
  %i.ac = select i1 %i.aa, i64 -1, i64 %i.ab
  %i.ad = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #23 ; 10 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64
  %i.af = load i32, ptr %i.w, align 4, !tbaa !25
  %i.ag = icmp sgt i32 %i.af, 0
  %.pre4.i = load i32, ptr %i.s, align 8, !tbaa !27 ; 5 uses
  br i1 %i.ag, label %.preheader.i.i, label %bb.h

.preheader.i.i:                                   ; preds = %bb.g
  %i.ah = icmp sgt i32 %.pre4.i, 0
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !22 ; 9 uses
  br i1 %i.ah, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.pre.i.i55 = ptrtoaddr ptr %.pre.i.i to i64
  %wide.trip.count.i.i = zext nneg i32 %.pre4.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre4.i, 8
  %i.ai = sub i64 %.pre.i.i55, %i.ae
  %diff.check = icmp ugt i64 %i.ai, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <4 x i32>, ptr %i.aj, align 4, !tbaa !24
  %wide.load56 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !24
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <4 x i32> %wide.load, ptr %i.al, align 4, !tbaa !24
  store <4 x i32> %wide.load56, ptr %i.am, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !24
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.i.prol
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !24
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !140

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.ar = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.as = icmp ugt i64 %i.ar, -4
  br i1 %i.as, label %._crit_edge.thread.i.i, label %scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.at = icmp eq ptr %.pre.i.i, null
  br i1 %i.at, label %bb.h, label %._crit_edge.thread.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !24
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.i
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !24
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !24
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !24
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !24
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.1
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !24
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !24
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.2
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !24
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %scalar.ph, !llvm.loop !141

._crit_edge.thread.i.i:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #24
  %.pre.i = load i32, ptr %i.s, align 8, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.g
  %i.bg = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %.pre4.i, %._crit_edge.i.i ], [ %.pre4.i, %bb.g ]
  store ptr %i.ad, ptr %3, align 8, !tbaa !22
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.bh
  store i32 0, ptr %i.bi, align 4, !tbaa !24
  store i32 %i.v, ptr %i.w, align 4, !tbaa !25
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader: ; preds = %bb.h, %_ZN8NWindows5NFile10NDirectory9CTempFile6RemoveEv.exit
  %.04.i.i17.ph = phi ptr [ %i.ad, %bb.h ], [ %i.t, %_ZN8NWindows5NFile10NDirectory9CTempFile6RemoveEv.exit ]
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i17 = phi ptr [ %i.bl, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %.04.i.i17.ph, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader ] ; 2 uses
  %.0.i.i = phi ptr [ %i.bj, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %1, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.bk = load i32, ptr %.0.i.i, align 4, !tbaa !24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.04.i.i17, i64 4
  store i32 %i.bk, ptr %.04.i.i17, align 4, !tbaa !24
  %.not.i.i18 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i18, label %_ZN11CStringBaseIwEaSEPKw.exit, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, !llvm.loop !0

_ZN11CStringBaseIwEaSEPKw.exit:                   ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  store i32 %i.u, ptr %i.s, align 8, !tbaa !27
  %i.bm = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLEPKw(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2) ; 0 uses
  %i.bn = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLEw(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef signext 35) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22, !noalias !149
  call void @_Z21ConvertUInt32ToStringjPw(i32 noundef %i.r, ptr noundef nonnull %i.b), !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !alias.scope !149
  %wcslen.i.i.i = call i64 @wcslen(ptr nonnull %i.b), !noalias !149
  %i.bo = trunc i64 %wcslen.i.i.i to i32          ; 3 uses
  %i.bp = add nsw i32 %i.bo, 1                    ; 3 uses
  %i.bq = icmp ne i32 %i.bp, 0
  call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bs = zext nneg i32 %i.bp to i64
  %i.bt = icmp slt i32 %i.bo, -1
  %i.bu = shl nuw nsw i64 %i.bs, 2
  %i.bv = select i1 %i.bt, i64 -1, i64 %i.bu
  %i.bw = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bv) #23, !noalias !149 ; 3 uses
  store ptr %i.bw, ptr %5, align 8, !tbaa !22, !alias.scope !149
  store i32 0, ptr %i.bw, align 4, !tbaa !24, !noalias !149
  store i32 %i.bp, ptr %i.br, align 4, !tbaa !25, !alias.scope !149
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i:      ; preds = %_ZN11CStringBaseIwEaSEPKw.exit, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %.04.i.i.i = phi ptr [ %i.bz, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.bw, %_ZN11CStringBaseIwEaSEPKw.exit ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.bx, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.b, %_ZN11CStringBaseIwEaSEPKw.exit ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.by = load i32, ptr %.0.i.i.i, align 4, !tbaa !24, !noalias !149 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  store i32 %i.by, ptr %.04.i.i.i, align 4, !tbaa !24, !noalias !149
  %.not.i.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.i.i.i, label %_ZN8NWindows5NFile10NDirectoryL25CSysConvertUInt32ToStringEj.exit, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i, !llvm.loop !0

_ZN8NWindows5NFile10NDirectoryL25CSysConvertUInt32ToStringEj.exit: ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.bo, ptr %i.ca, align 8, !tbaa !27, !alias.scope !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22, !noalias !149
  %i.cb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.i unwind label %bb.q       ; 0 uses

bb.i:                                             ; preds = %_ZN8NWindows5NFile10NDirectoryL25CSysConvertUInt32ToStringEj.exit
  %i.cc = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.cc) #24
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ce = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLEw(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef signext 64) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !150
  call void @_Z21ConvertUInt32ToStringjPw(i32 noundef %i.d, ptr noundef nonnull %i.a), !noalias !150
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !alias.scope !150
  %wcslen.i.i.i19 = call i64 @wcslen(ptr nonnull %i.a), !noalias !150
  %i.cf = trunc i64 %wcslen.i.i.i19 to i32        ; 3 uses
  %i.cg = add nsw i32 %i.cf, 1                    ; 3 uses
  %i.ch = icmp ne i32 %i.cg, 0
  call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.cj = zext nneg i32 %i.cg to i64
  %i.ck = icmp slt i32 %i.cf, -1
  %i.cl = shl nuw nsw i64 %i.cj, 2
  %i.cm = select i1 %i.ck, i64 -1, i64 %i.cl
  %i.cn = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cm) #23, !noalias !150 ; 3 uses
  store ptr %i.cn, ptr %6, align 8, !tbaa !22, !alias.scope !150
  store i32 0, ptr %i.cn, align 4, !tbaa !24, !noalias !150
  store i32 %i.cg, ptr %i.ci, align 4, !tbaa !25, !alias.scope !150
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i21

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i21:    ; preds = %_ZN11CStringBaseIwED2Ev.exit, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i21
  %.04.i.i.i22 = phi ptr [ %i.cq, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i21 ], [ %i.cn, %_ZN11CStringBaseIwED2Ev.exit ] ; 2 uses
  %.0.i.i.i23 = phi ptr [ %i.co, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i21 ], [ %i.a, %_ZN11CStringBaseIwED2Ev.exit ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i.i.i23, i64 4
  %i.cp = load i32, ptr %.0.i.i.i23, align 4, !tbaa !24, !noalias !150 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.04.i.i.i22, i64 4
  store i32 %i.cp, ptr %.04.i.i.i22, align 4, !tbaa !24, !noalias !150
  %.not.i.i.i24 = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i.i24, label %_ZN8NWindows5NFile10NDirectoryL25CSysConvertUInt32ToStringEj.exit25, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i21, !llvm.loop !0

_ZN8NWindows5NFile10NDirectoryL25CSysConvertUInt32ToStringEj.exit25: ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i21
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.cf, ptr %i.cr, align 8, !tbaa !27, !alias.scope !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !150
  %i.cs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.k unwind label %bb.s       ; 0 uses

bb.k:                                             ; preds = %_ZN8NWindows5NFile10NDirectoryL25CSysConvertUInt32ToStringEj.exit25
  %i.ct = load ptr, ptr %6, align 8, !tbaa !22    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_ZN11CStringBaseIwED2Ev.exit26, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.ct) #24
  br label %_ZN11CStringBaseIwED2Ev.exit26

_ZN11CStringBaseIwED2Ev.exit26:                   ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.cv = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLEPKw(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.9) ; 0 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.cx = icmp eq ptr %3, %i.cw
  br i1 %i.cx, label %_ZN11CStringBaseIwEaSERKS0_.exit, label %bb.m

bb.m:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit26
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i32 0, ptr %i.cy, align 8, !tbaa !27
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !22 ; 2 uses
  store i32 0, ptr %i.cz, align 4, !tbaa !24
  %i.da = load i32, ptr %i.s, align 8, !tbaa !27  ; 2 uses
  %i.db = add nsw i32 %i.da, 1                    ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !25
  %i.de = icmp eq i32 %i.db, %i.dd
  br i1 %i.de, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i27, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.df = zext nneg i32 %i.db to i64
  %i.dg = icmp slt i32 %i.da, -1
  %i.dh = shl nuw nsw i64 %i.df, 2
  %i.di = select i1 %i.dg, i64 -1, i64 %i.dh
  %i.dj = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.di) #23 ; 5 uses
  %i.dk = load i32, ptr %i.dc, align 4, !tbaa !25
  %i.dl = icmp sgt i32 %i.dk, 0
  %.pre7.i = load i32, ptr %i.cy, align 8, !tbaa !27 ; 5 uses
  br i1 %i.dl, label %.preheader.i.i31, label %bb.o

.preheader.i.i31:                                 ; preds = %bb.n
  %i.dm = icmp sgt i32 %.pre7.i, 0
  %.pre.i.i32 = load ptr, ptr %i.cw, align 8, !tbaa !22 ; 4 uses
  br i1 %i.dm, label %.lr.ph.i.i36, label %._crit_edge.i.i33

.lr.ph.i.i36:                                     ; preds = %.preheader.i.i31
  %wide.trip.count.i.i37 = zext nneg i32 %.pre7.i to i64 ; 3 uses
  %min.iters.check58 = icmp ult i32 %.pre7.i, 8
  br i1 %min.iters.check58, label %scalar.ph57.preheader, label %vector.ph59

vector.ph59:                                      ; preds = %.lr.ph.i.i36
  %n.vec60 = and i64 %wide.trip.count.i.i37, 2147483640 ; 3 uses
  br label %vector.body61

vector.body61:                                    ; preds = %vector.body61, %vector.ph59
  %index62 = phi i64 [ 0, %vector.ph59 ], [ %index.next65, %vector.body61 ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i32, i64 %index62 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %wide.load63 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !24
  %wide.load64 = load <4 x i32>, ptr %i.do, align 4, !tbaa !24
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %index62 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store <4 x i32> %wide.load63, ptr %i.dp, align 4, !tbaa !24
  store <4 x i32> %wide.load64, ptr %i.dq, align 4, !tbaa !24
  %index.next65 = add nuw i64 %index62, 8         ; 2 uses
  %i.dr = icmp eq i64 %index.next65, %n.vec60
  br i1 %i.dr, label %middle.block66, label %vector.body61, !llvm.loop !146

middle.block66:                                   ; preds = %vector.body61
  %cmp.n67 = icmp eq i64 %n.vec60, %wide.trip.count.i.i37
  br i1 %cmp.n67, label %._crit_edge.thread.i.i34, label %scalar.ph57.preheader

scalar.ph57.preheader:                            ; preds = %.lr.ph.i.i36, %middle.block66
  %indvars.iv.i.i38.ph = phi i64 [ 0, %.lr.ph.i.i36 ], [ %n.vec60, %middle.block66 ]
  br label %scalar.ph57

._crit_edge.i.i33:                                ; preds = %.preheader.i.i31
  %i.ds = icmp eq ptr %.pre.i.i32, null
  br i1 %i.ds, label %bb.o, label %._crit_edge.thread.i.i34

scalar.ph57:                                      ; preds = %scalar.ph57.preheader, %scalar.ph57
  %indvars.iv.i.i38 = phi i64 [ %indvars.iv.next.i.i39, %scalar.ph57 ], [ %indvars.iv.i.i38.ph, %scalar.ph57.preheader ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i32, i64 %indvars.iv.i.i38
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !24
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.i.i38
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !24
  %indvars.iv.next.i.i39 = add nuw nsw i64 %indvars.iv.i.i38, 1 ; 2 uses
  %exitcond.not.i.i40 = icmp eq i64 %indvars.iv.next.i.i39, %wide.trip.count.i.i37
  br i1 %exitcond.not.i.i40, label %._crit_edge.thread.i.i34, label %scalar.ph57, !llvm.loop !147

._crit_edge.thread.i.i34:                         ; preds = %scalar.ph57, %middle.block66, %._crit_edge.i.i33
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i32) #24
  %.pre.i35 = load i32, ptr %i.cy, align 8, !tbaa !27
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.thread.i.i34, %._crit_edge.i.i33, %bb.n
  %i.dw = phi i32 [ %.pre.i35, %._crit_edge.thread.i.i34 ], [ %.pre7.i, %._crit_edge.i.i33 ], [ %.pre7.i, %bb.n ]
  store ptr %i.dj, ptr %i.cw, align 8, !tbaa !22
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.dx
  store i32 0, ptr %i.dy, align 4, !tbaa !24
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !25
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i27

_ZN11CStringBaseIwE11SetCapacityEi.exit.i27:      ; preds = %bb.o, %bb.m
  %i.dz = phi ptr [ %i.cz, %bb.m ], [ %i.dj, %bb.o ]
  %i.ea = load ptr, ptr %3, align 8, !tbaa !22
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i27
  %.04.i.i28 = phi ptr [ %i.dz, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i27 ], [ %i.ed, %bb.p ] ; 2 uses
  %.0.i.i29 = phi ptr [ %i.ea, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i27 ], [ %i.eb, %bb.p ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.i.i29, i64 4
  %i.ec = load i32, ptr %.0.i.i29, align 4, !tbaa !24 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.04.i.i28, i64 4
  store i32 %i.ec, ptr %.04.i.i28, align 4, !tbaa !24
  %.not.i.i30 = icmp eq i32 %i.ec, 0
  br i1 %.not.i.i30, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i, label %bb.p, !llvm.loop !0

_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i:            ; preds = %bb.p
  %i.ee = load i32, ptr %i.s, align 8, !tbaa !27
  store i32 %i.ee, ptr %i.cy, align 8, !tbaa !27
  br label %_ZN11CStringBaseIwEaSERKS0_.exit

_ZN11CStringBaseIwEaSERKS0_.exit:                 ; preds = %_ZN11CStringBaseIwED2Ev.exit26, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
  store i8 1, ptr %0, align 8, !tbaa !49
  ret i32 %i.r

bb.q:                                             ; preds = %_ZN8NWindows5NFile10NDirectoryL25CSysConvertUInt32ToStringEj.exit
  %i.ef = landingpad { ptr, i32 }
          cleanup
  %i.eg = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %_ZN11CStringBaseIwED2Ev.exit41, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.eg) #24
  br label %_ZN11CStringBaseIwED2Ev.exit41

_ZN11CStringBaseIwED2Ev.exit41:                   ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.u

bb.s:                                             ; preds = %_ZN8NWindows5NFile10NDirectoryL25CSysConvertUInt32ToStringEj.exit25
  %i.ei = landingpad { ptr, i32 }
          cleanup
  %i.ej = load ptr, ptr %6, align 8, !tbaa !22    ; 2 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %_ZN11CStringBaseIwED2Ev.exit42, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.ej) #24
  br label %_ZN11CStringBaseIwED2Ev.exit42

_ZN11CStringBaseIwED2Ev.exit42:                   ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.u

bb.u:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit42, %_ZN11CStringBaseIwED2Ev.exit41
  %.pn = phi { ptr, i32 } [ %i.ei, %_ZN11CStringBaseIwED2Ev.exit42 ], [ %i.ef, %_ZN11CStringBaseIwED2Ev.exit41 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory9CTempFile6RemoveEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !151 {
bb.a:
  %1 = alloca %class.CStringBase, align 8         ; 4 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !49, !range !50, !noundef !51
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.d, align 4, !tbaa !24
  %.not6.i = icmp eq i32 %i.e, 0
  br i1 %.not6.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = tail call ptr @__errno_location() #26
  store i32 2, ptr %i.f, align 4, !tbaa !9
  br label %_ZN8NWindows5NFile10NDirectory16DeleteFileAlwaysEPKw.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @_Z17nameWindowToUnix2PKw(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %1, ptr noundef nonnull readonly %i.d)
  %i.g = load ptr, ptr %1, align 8, !tbaa !30     ; 3 uses
  %i.h = tail call i32 @remove(ptr noundef %i.g) #22
  %i.i = icmp eq i32 %i.h, 0
  %i.j = icmp eq ptr %i.g, null
  br i1 %i.j, label %_ZN11CStringBaseIcED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #24
  br label %_ZN11CStringBaseIcED2Ev.exit.i

_ZN11CStringBaseIcED2Ev.exit.i:                   ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %_ZN8NWindows5NFile10NDirectory16DeleteFileAlwaysEPKw.exit

_ZN8NWindows5NFile10NDirectory16DeleteFileAlwaysEPKw.exit: ; preds = %bb.d, %_ZN11CStringBaseIcED2Ev.exit.i
  %.04.i = phi i1 [ %i.i, %_ZN11CStringBaseIcED2Ev.exit.i ], [ false, %bb.d ] ; 2 uses
  %i.k = xor i1 %.04.i, true
  %i.l = zext i1 %i.k to i8
  store i8 %i.l, ptr %0, align 8, !tbaa !49
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN8NWindows5NFile10NDirectory16DeleteFileAlwaysEPKw.exit
  %.0 = phi i1 [ %.04.i, %_ZN8NWindows5NFile10NDirectory16DeleteFileAlwaysEPKw.exit ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLEPKw(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !guid !154 {
bb.a:
  %wcslen.i = tail call i64 @wcslen(ptr %1)
  %i.a = trunc i64 %wcslen.i to i32               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !25   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !27   ; 3 uses
  %i.f = xor i32 %i.e, -1
  %i.g = add i32 %i.c, %i.f                       ; 3 uses
  %.not.i = icmp slt i32 %i.g, %i.a
  br i1 %.not.i, label %bb.b, label %_ZN11CStringBaseIwE10GrowLengthEi.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp sgt i32 %i.c, 64
  %i.i = lshr i32 %i.c, 1
  %i.j = icmp sgt i32 %i.c, 8
  %..i = select i1 %i.j, i32 16, i32 4
  %.0.i = select i1 %i.h, i32 %i.i, i32 %..i      ; 2 uses
  %i.k = add nsw i32 %.0.i, %i.g
  %i.l = icmp slt i32 %i.k, %i.a
  %i.m = sub nsw i32 %i.a, %i.g
  %.1.i = select i1 %i.l, i32 %i.m, i32 %.0.i
  %i.n = add nsw i32 %.1.i, %i.c                  ; 2 uses
  %i.o = add nsw i32 %i.n, 1                      ; 3 uses
  %i.p = icmp eq i32 %i.o, %i.c
  br i1 %i.p, label %_ZN11CStringBaseIwE10GrowLengthEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = zext nneg i32 %i.o to i64
  %i.r = icmp slt i32 %i.n, -1
  %i.s = shl nuw nsw i64 %i.q, 2
  %i.t = select i1 %i.r, i64 -1, i64 %i.s
  %i.u = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.t) #23 ; 4 uses
  %i.v = load i32, ptr %i.b, align 4, !tbaa !25
  %i.w = icmp sgt i32 %i.v, 0
  %.pre12.i = load i32, ptr %i.d, align 8, !tbaa !27 ; 5 uses
  br i1 %i.w, label %.preheader.i.i, label %bb.d

.preheader.i.i:                                   ; preds = %bb.c
  %i.x = icmp sgt i32 %.pre12.i, 0
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !22 ; 4 uses
  br i1 %i.x, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %.pre12.i to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.pre12.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load = load <4 x i32>, ptr %i.y, align 4, !tbaa !24
  %wide.load8 = load <4 x i32>, ptr %i.z, align 4, !tbaa !24
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <4 x i32> %wide.load, ptr %i.aa, align 4, !tbaa !24
  store <4 x i32> %wide.load8, ptr %i.ab, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.ad = icmp eq ptr %.pre.i.i, null
  br i1 %i.ad, label %bb.d, label %._crit_edge.thread.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !24
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i.i
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !24
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.thread.i.i, label %scalar.ph, !llvm.loop !153

._crit_edge.thread.i.i:                           ; preds = %scalar.ph, %middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #24
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.c
  %i.ah = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %.pre12.i, %._crit_edge.i.i ], [ %.pre12.i, %bb.c ] ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !22
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ai
  store i32 0, ptr %i.aj, align 4, !tbaa !24
  store i32 %i.o, ptr %i.b, align 4, !tbaa !25
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit

_ZN11CStringBaseIwE10GrowLengthEi.exit:           ; preds = %bb.a, %bb.b, %bb.d
  %i.ak = phi i32 [ %i.e, %bb.a ], [ %i.e, %bb.b ], [ %i.ah, %bb.d ] ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !22
  %i.am = sext i32 %i.ak to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.am
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIwE10GrowLengthEi.exit
  %.04.i = phi ptr [ %i.an, %_ZN11CStringBaseIwE10GrowLengthEi.exit ], [ %i.aq, %bb.e ] ; 2 uses
  %.0.i4 = phi ptr [ %1, %_ZN11CStringBaseIwE10GrowLengthEi.exit ], [ %i.ao, %bb.e ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i4, i64 4
  %i.ap = load i32, ptr %.0.i4, align 4, !tbaa !24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.04.i, i64 4
  store i32 %i.ap, ptr %.04.i, align 4, !tbaa !24
  %.not.i5 = icmp eq i32 %i.ap, 0
  br i1 %.not.i5, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit, label %bb.e, !llvm.loop !0

_Z12MyStringCopyIwEPT_S1_PKS0_.exit:              ; preds = %bb.e
  %i.ar = add nsw i32 %i.ak, %i.a
  store i32 %i.ar, ptr %i.d, align 8, !tbaa !27
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLEw(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef signext %1) local_unnamed_addr #0 comdat align 2 !guid !157 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !27   ; 3 uses
  %i.e = xor i32 %i.d, -1
  %i.f = add i32 %i.b, %i.e                       ; 3 uses
  %.not.i = icmp slt i32 %i.f, 1
  br i1 %.not.i, label %bb.b, label %_ZN11CStringBaseIwE10GrowLengthEi.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp sgt i32 %i.b, 64
  %i.h = lshr i32 %i.b, 1
  %i.i = icmp sgt i32 %i.b, 8
  %..i = select i1 %i.i, i32 16, i32 4
  %.0.i = select i1 %i.g, i32 %i.h, i32 %..i      ; 2 uses
  %i.j = add nsw i32 %.0.i, %i.f
  %i.k = icmp slt i32 %i.j, 1
  %i.l = sub nsw i32 1, %i.f
  %.1.i = select i1 %i.k, i32 %i.l, i32 %.0.i
  %i.m = add nsw i32 %.1.i, %i.b                  ; 2 uses
  %i.n = add nsw i32 %i.m, 1                      ; 3 uses
  %i.o = icmp eq i32 %i.n, %i.b
  br i1 %i.o, label %_ZN11CStringBaseIwE10GrowLengthEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = zext nneg i32 %i.n to i64
  %i.q = icmp slt i32 %i.m, -1
  %i.r = shl nuw nsw i64 %i.p, 2
  %i.s = select i1 %i.q, i64 -1, i64 %i.r
  %i.t = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #23 ; 4 uses
  %i.u = load i32, ptr %i.a, align 4, !tbaa !25
  %i.v = icmp sgt i32 %i.u, 0
  %.pre12.i = load i32, ptr %i.c, align 8, !tbaa !27 ; 5 uses
  br i1 %i.v, label %.preheader.i.i, label %bb.d

.preheader.i.i:                                   ; preds = %bb.c
  %i.w = icmp sgt i32 %.pre12.i, 0
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !22 ; 4 uses
  br i1 %i.w, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %.pre12.i to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.pre12.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <4 x i32>, ptr %i.x, align 4, !tbaa !24
  %wide.load2 = load <4 x i32>, ptr %i.y, align 4, !tbaa !24
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <4 x i32> %wide.load, ptr %i.z, align 4, !tbaa !24
  store <4 x i32> %wide.load2, ptr %i.aa, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !155

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.ac = icmp eq ptr %.pre.i.i, null
  br i1 %i.ac, label %bb.d, label %._crit_edge.thread.i.i
end_hunk_3
