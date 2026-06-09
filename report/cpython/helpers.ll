inline.NumInlined: 10
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._object = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [134 x i8] c"\22\\%c\22 is an invalid escape sequence. Such sequences will not work in the future. Did you mean \22\\\\%c\22? A raw string is also an option.\00", align 1
@PyExc_SyntaxWarning = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [90 x i8] c"\22\\%c\22 is an invalid escape sequence. Did you mean \22\\\\%c\22? A raw string is also an option.\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%U\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"utf-8\00", align 1
@PyExc_SyntaxError = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"encoding problem: %s\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"encoding problem: %s with BOM\00", align 1
@.str.6 = private unnamed_addr constant [130 x i8] c"Non-UTF-8 code starting with '\\x%.2x'%s%V on line %i, but no encoding declared; see https://peps.python.org/pep-0263/ for details\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c" in file \00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"(O(OiiNii))\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@_Py_ctype_table = external local_unnamed_addr constant [256 x i32], align 16
@_Py_ctype_tolower = external local_unnamed_addr constant [256 x i8], align 16
@.str.15 = private unnamed_addr constant [11 x i8] c"iso-8859-1\00", align 1

; Function Attrs: nounwind uwtable
define hidden noundef i32 @_PyTokenizer_syntaxerror(ptr nofree noundef captures(none) %0, ptr noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.va_start.p0(ptr nonnull %2)
  call fastcc void @_syntaxerror_range(ptr noundef %0, ptr noundef %1, i32 noundef -1, i32 noundef -1, ptr noundef %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i32 67
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_syntaxerror_range(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %i.c = icmp eq i32 %i.b, 17
  br i1 %i.c, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyUnicode_FromFormatV(ptr noundef %1, ptr noundef nonnull %4) #7 ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %Py_XDECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 2776       ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = tail call ptr @PyUnicode_DecodeUTF8(ptr noundef %i.f, i64 noundef %i.k, ptr noundef nonnull @.str.9) #7 ; 6 uses
  %.not42 = icmp eq ptr %i.l, null
  br i1 %.not42, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i32 %2, -1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.l, i64 16
  %.val = load i64, ptr %i.n, align 8, !tbaa !19
  %i.o = trunc i64 %.val to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.033 = phi i32 [ %i.o, %bb.e ], [ %2, %bb.d ]  ; 2 uses
  %i.p = icmp eq i32 %3, -1
  %spec.select = select i1 %i.p, i32 %.033, i32 %3
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.r = tail call i64 @strcspn(ptr noundef %i.q, ptr noundef nonnull @.str.10) #8 ; 2 uses
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  %.not43 = icmp eq i64 %i.r, %i.v
  br i1 %.not43, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load i32, ptr %i.l, align 8, !tbaa !25   ; 2 uses
  %.not.i48 = icmp sgt i32 %i.w, -1
  br i1 %.not.i48, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.l, align 8, !tbaa !25
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.aa = tail call ptr @PyUnicode_DecodeUTF8(ptr noundef %i.z, i64 noundef %i.r, ptr noundef nonnull @.str.9) #7 ; 2 uses
  %.not44 = icmp eq ptr %i.aa, null
  br i1 %.not44, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.f, %bb.j
  %.03454 = phi ptr [ %i.aa, %bb.j ], [ %i.l, %bb.f ]
  %i.ab = getelementptr i8, ptr %0, i64 2336
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !26 ; 2 uses
  %.not45 = icmp eq ptr %i.ac, null
  %spec.select47 = select i1 %.not45, ptr @_Py_NoneStruct, ptr %i.ac
  %i.ad = getelementptr i8, ptr %0, i64 512
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !27 ; 2 uses
  %i.af = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.d, ptr noundef nonnull %spec.select47, i32 noundef %i.ae, i32 noundef %.033, ptr noundef nonnull %.03454, i32 noundef %i.ae, i32 noundef %spec.select) #7 ; 5 uses
  %.not46 = icmp eq ptr %i.af, null
  br i1 %.not46, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.ag = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !28
  tail call void @PyErr_SetObject(ptr noundef %i.ag, ptr noundef nonnull %i.af) #7
  %i.ah = load i32, ptr %i.af, align 8, !tbaa !25 ; 2 uses
  %.not.i = icmp sgt i32 %i.ah, -1
  br i1 %.not.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.af, align 8, !tbaa !25
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.af) #7
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %.thread, %bb.j, %bb.c
  %i.ak = load i32, ptr %i.d, align 8, !tbaa !25  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ak, -1
  br i1 %.not.i.i, label %bb.o, label %Py_XDECREF.exit

bb.o:                                             ; preds = %bb.n
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %i.d, align 8, !tbaa !25
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.p, label %Py_XDECREF.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #7
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.b, %bb.n, %bb.o, %bb.p
  store i32 17, ptr %i.a, align 8, !tbaa !11
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %Py_XDECREF.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden noundef i32 @_PyTokenizer_syntaxerror_known_range(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ...) local_unnamed_addr #0 {
bb.a:
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.va_start.p0(ptr nonnull %4)
  call fastcc void @_syntaxerror_range(ptr noundef %0, ptr noundef %3, i32 noundef %1, i32 noundef %2, ptr noundef %4)
  call void @llvm.va_end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret i32 67
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i32 @_PyTokenizer_indenterror(ptr nofree noundef captures(none) initializes((8, 16), (64, 68)) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  store i32 18, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = getelementptr i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !18
  ret i32 67
}

; Function Attrs: nounwind uwtable
define hidden noalias noundef ptr @_PyTokenizer_error_ret(ptr nofree noundef captures(none) initializes((8, 24), (48, 68), (2756, 2760)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2756
  store i32 1, ptr %i.a, align 4, !tbaa !30
  %i.b = getelementptr i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 2808
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32
  %.not11 = icmp eq ptr %i.e, null
  br i1 %.not11, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %.not12 = icmp eq ptr %i.f, null
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @PyMem_Free(ptr noundef nonnull %i.f) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 48
  %i.h = getelementptr i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store i32 22, ptr %i.h, align 8, !tbaa !11
  ret ptr null
}

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 68) i32 @_PyTokenizer_warn_invalid_escape_sequence(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2856
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %sext = shl i32 %1, 24
  %i.c = ashr exact i32 %sext, 24                 ; 4 uses
  %i.d = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str, i32 noundef %i.c, i32 noundef %i.c) #7 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %Py_DECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @PyExc_SyntaxWarning, align 8, !tbaa !28
  %i.g = getelementptr i8, ptr %0, i64 2336
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = getelementptr i8, ptr %0, i64 512
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27
  %i.k = getelementptr i8, ptr %0, i64 2344
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35
  %i.m = tail call i32 @PyErr_WarnExplicitObject(ptr noundef %i.f, ptr noundef nonnull %i.d, ptr noundef %i.h, i32 noundef %i.j, ptr noundef %i.l, ptr noundef null) #7
  %i.n = icmp slt i32 %i.m, 0
  %i.o = load i32, ptr %i.d, align 8, !tbaa !25   ; 3 uses
  %.not.i15 = icmp sgt i32 %i.o, -1               ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i15, label %bb.e, label %Py_DECREF.exit16

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.d, align 8, !tbaa !25
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %Py_DECREF.exit16

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #7
  br label %Py_DECREF.exit16

Py_DECREF.exit16:                                 ; preds = %bb.d, %bb.e, %bb.f
  %i.r = load ptr, ptr @PyExc_SyntaxWarning, align 8, !tbaa !28
  %i.s = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.r) #7
  %.not14 = icmp eq i32 %i.s, 0
  br i1 %.not14, label %Py_DECREF.exit, label %bb.g

bb.g:                                             ; preds = %Py_DECREF.exit16
  tail call void @PyErr_Clear() #7
  %i.t = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef %i.c, i32 noundef %i.c) ; 0 uses
  br label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.c
  br i1 %.not.i15, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  %i.u = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.u, ptr %i.d, align 8, !tbaa !25
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #7
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.b, %Py_DECREF.exit16, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ -1, %Py_DECREF.exit16 ], [ 67, %bb.g ], [ -1, %bb.b ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ]
  ret i32 %.1
}

declare ptr @PyUnicode_FromFormat(ptr noundef, ...) local_unnamed_addr #4

declare i32 @PyErr_WarnExplicitObject(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #4

declare void @PyErr_Clear() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyTokenizer_parser_warn(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 2856
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.c = call ptr @PyUnicode_FromFormatV(ptr noundef %2, ptr noundef nonnull %3) #7 ; 9 uses
  call void @llvm.va_end.p0(ptr nonnull %3)
  %.not15 = icmp eq ptr %i.c, null
  br i1 %.not15, label %Py_XDECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 2336
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.f = getelementptr i8, ptr %0, i64 512
  %i.g = load i32, ptr %i.f, align 8, !tbaa !27
  %i.h = getelementptr i8, ptr %0, i64 2344
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.j = call i32 @PyErr_WarnExplicitObject(ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef %i.e, i32 noundef %i.g, ptr noundef %i.i, ptr noundef null) #7
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = call i32 @PyErr_ExceptionMatches(ptr noundef %1) #7
  %.not16 = icmp eq i32 %i.l, 0
  br i1 %.not16, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @PyErr_Clear() #7
  %i.m = call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.c) ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp sgt i32 %i.n, -1
  br i1 %.not.i, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.c, align 8, !tbaa !25
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %i.c) #7
  br label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.d, %bb.e
  %i.q = load i32, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.q, -1
  br i1 %.not.i.i, label %bb.j, label %Py_XDECREF.exit

bb.j:                                             ; preds = %bb.i
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.c, align 8, !tbaa !25
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.k, label %Py_XDECREF.exit

bb.k:                                             ; preds = %bb.j
  call void @_Py_Dealloc(ptr noundef nonnull %i.c) #7
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.b, %bb.i, %bb.j, %bb.k
  %i.t = getelementptr i8, ptr %0, i64 64
  store i32 17, ptr %i.t, align 8, !tbaa !11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.h, %bb.g, %bb.f, %Py_XDECREF.exit
  %.0 = phi i32 [ -1, %Py_XDECREF.exit ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %Py_DECREF.exit
  %.1 = phi i32 [ %.0, %Py_DECREF.exit ], [ 0, %bb.a ]
  ret i32 %.1
}

declare ptr @PyUnicode_FromFormatV(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden ptr @_PyTokenizer_new_string(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = tail call ptr @PyMem_Malloc(i64 noundef %i.a) #7 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 64
  store i32 15, ptr %i.c, align 8, !tbaa !11
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr align 1 %0, i64 %1, i1 false)
  %i.d = getelementptr i8, ptr %i.b, i64 %1
  store i8 0, ptr %i.d, align 1, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret ptr %i.b
}

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden ptr @_PyTokenizer_translate_into_utf8(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #8
  %i.b = tail call ptr @PyUnicode_Decode(ptr noundef nonnull %0, i64 noundef %i.a, ptr noundef %1, ptr noundef null) #7 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyUnicode_AsUTF8String(ptr noundef nonnull %i.b) #7 ; 3 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp sgt i32 %i.e, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.b, align 8, !tbaa !25
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #7
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %i.d, %bb.d ]
  ret ptr %.0
}

declare ptr @PyUnicode_Decode(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare ptr @PyUnicode_AsUTF8String(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden ptr @_PyTokenizer_translate_newlines(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #8
  %i.b = add i64 %i.a, 2                          ; 2 uses
  %i.c = tail call ptr @PyMem_Malloc(i64 noundef %i.b) #7 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = load i8, ptr %0, align 1, !tbaa !25      ; 3 uses
  %.not63 = icmp eq i8 %i.e, 0
  br i1 %.not63, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %.lr.ph.split, label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph, %.lr.ph.split.us.split
  %i.g = phi i8 [ %i.j, %.lr.ph.split.us.split ], [ %i.e, %.lr.ph ] ; 2 uses
  %.04566.us = phi ptr [ %i.i, %.lr.ph.split.us.split ], [ %i.c, %.lr.ph ] ; 2 uses
  %.04865.us = phi ptr [ %i.h, %.lr.ph.split.us.split ], [ %0, %.lr.ph ]
  store i8 %i.g, ptr %.04566.us, align 1, !tbaa !25
  %i.h = getelementptr i8, ptr %.04865.us, i64 1  ; 2 uses
  %i.i = getelementptr i8, ptr %.04566.us, i64 1  ; 2 uses
  %i.j = load i8, ptr %i.h, align 1, !tbaa !25    ; 2 uses
  %.not.us = icmp eq i8 %i.j, 0
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us.split, !llvm.loop !36

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %3, i64 64
  store i32 15, ptr %i.k, align 8, !tbaa !11
  br label %bb.i

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.d
  %i.l = phi i8 [ %i.s, %bb.d ], [ %i.e, %.lr.ph ] ; 2 uses
  %.04566 = phi ptr [ %i.r, %bb.d ], [ %i.c, %.lr.ph ] ; 3 uses
  %.04865 = phi ptr [ %i.q, %bb.d ], [ %0, %.lr.ph ] ; 2 uses
  %.05064 = phi i1 [ %i.p, %bb.d ], [ false, %.lr.ph ]
  %i.m = icmp eq i8 %i.l, 10
  %or.cond60 = and i1 %.05064, %i.m
  br i1 %or.cond60, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.split
  %i.n = getelementptr i8, ptr %.04865, i64 1     ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !25    ; 2 uses
  %.not59 = icmp eq i8 %i.o, 0
  br i1 %.not59, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.split
  %.149 = phi ptr [ %i.n, %bb.c ], [ %.04865, %.lr.ph.split ]
  %.1 = phi i8 [ %i.o, %bb.c ], [ %i.l, %.lr.ph.split ] ; 2 uses
  %i.p = icmp eq i8 %.1, 13                       ; 2 uses
  %spec.select = select i1 %i.p, i8 10, i8 %.1    ; 2 uses
  store i8 %spec.select, ptr %.04566, align 1, !tbaa !25
  %i.q = getelementptr i8, ptr %.149, i64 1       ; 2 uses
  %i.r = getelementptr i8, ptr %.04566, i64 1     ; 2 uses
  %i.s = load i8, ptr %i.q, align 1, !tbaa !25    ; 2 uses
  %.not = icmp eq i8 %i.s, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !36

._crit_edge:                                      ; preds = %.lr.ph.split.us.split, %bb.d, %bb.c, %.preheader
  %.045.lcssa = phi ptr [ %i.c, %.preheader ], [ %.04566, %bb.c ], [ %i.r, %bb.d ], [ %i.i, %.lr.ph.split.us.split ] ; 5 uses
  %.3 = phi i8 [ 0, %.preheader ], [ 0, %bb.c ], [ %spec.select, %bb.d ], [ %i.g, %.lr.ph.split.us.split ]
  %.not62 = icmp eq i32 %1, 0
  br i1 %.not62, label %bb.f, label %switch.early.test

switch.early.test:                                ; preds = %._crit_edge
  switch i8 %.3, label %bb.e [
    i8 10, label %bb.f
    i8 0, label %bb.f
  ]

bb.e:                                             ; preds = %switch.early.test
  store i8 10, ptr %.045.lcssa, align 1, !tbaa !25
  %i.t = getelementptr i8, ptr %.045.lcssa, i64 1
  br label %bb.f

bb.f:                                             ; preds = %switch.early.test, %switch.early.test, %._crit_edge, %bb.e
  %.146 = phi ptr [ %i.t, %bb.e ], [ %.045.lcssa, %switch.early.test ], [ %.045.lcssa, %._crit_edge ], [ %.045.lcssa, %switch.early.test ] ; 2 uses
  store i8 0, ptr %.146, align 1, !tbaa !25
  %i.u = ptrtoint ptr %.146 to i64
  %i.v = ptrtoint ptr %i.c to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = add i64 %i.w, 1                          ; 3 uses
  %i.y = icmp ult i64 %i.x, %i.b
  %i.z = icmp ne i64 %i.x, 0
  %or.cond10 = and i1 %i.y, %i.z
  br i1 %or.cond10, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aa = tail call ptr @PyMem_Realloc(ptr noundef nonnull %i.c, i64 noundef %i.x) #7 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @PyMem_Free(ptr noundef nonnull %i.c) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.c, %bb.f ], [ null, %bb.h ], [ %i.aa, %bb.g ]
  ret ptr %.0
}

declare ptr @PyMem_Realloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @_PyTokenizer_check_bom(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 %0(ptr noundef %3) #7      ; 2 uses
  %i.b = getelementptr i8, ptr %3, i64 2752
  store i32 1, ptr %i.b, align 8, !tbaa !38
  switch i32 %i.a, label %bb.f [
    i32 -1, label %bb.l
    i32 239, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %0(ptr noundef nonnull %3) #7 ; 2 uses
  %.not = icmp eq i32 %i.c, 187
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %1(i32 noundef %i.c, ptr noundef nonnull %3) #7
  tail call void %1(i32 noundef 239, ptr noundef nonnull %3) #7
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 %0(ptr noundef nonnull %3) #7 ; 2 uses
  %.not38 = icmp eq i32 %i.d, 191
  br i1 %.not38, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %1(i32 noundef %i.d, ptr noundef nonnull %3) #7
  tail call void %1(i32 noundef 187, ptr noundef nonnull %3) #7
  tail call void %1(i32 noundef 239, ptr noundef nonnull %3) #7
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  tail call void %1(i32 noundef %i.a, ptr noundef nonnull %3) #7
  br label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.e = getelementptr i8, ptr %3, i64 2760       ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39   ; 2 uses
  %.not39 = icmp eq ptr %i.f, null
  br i1 %.not39, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @PyMem_Free(ptr noundef nonnull %i.f) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.g = tail call ptr @PyMem_Malloc(i64 noundef 6) #7 ; 4 uses
  %.not.i = icmp ne ptr %i.g, null                ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.h = getelementptr i8, ptr %3, i64 64
  store i32 15, ptr %i.h, align 8, !tbaa !11
  br label %_PyTokenizer_new_string.exit

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.g, ptr noundef nonnull align 1 dereferenceable(5) @.str.3, i64 5, i1 false)
  %i.i = getelementptr i8, ptr %i.g, i64 5
  store i8 0, ptr %i.i, align 1, !tbaa !25
  br label %_PyTokenizer_new_string.exit

_PyTokenizer_new_string.exit:                     ; preds = %bb.j, %bb.k
  store ptr %i.g, ptr %i.e, align 8, !tbaa !39
  %. = zext i1 %.not.i to i32
  br label %bb.l

bb.l:                                             ; preds = %_PyTokenizer_new_string.exit, %bb.a, %bb.f, %bb.e, %bb.c
  %.0 = phi i32 [ 1, %bb.f ], [ 1, %bb.c ], [ 1, %bb.e ], [ 1, %bb.a ], [ %., %_PyTokenizer_new_string.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @_PyTokenizer_check_coding_spec(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [13 x i8], align 1                ; 30 uses
  %i.b = getelementptr i8, ptr %2, i64 2768
  %i.c = load i32, ptr %i.b, align 8, !tbaa !40
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %2, i64 2752
  store i32 2, ptr %i.d, align 8, !tbaa !38
  br label %get_coding_spec.exit

bb.c:                                             ; preds = %bb.a
  %.013.lcssa.i.sroa.gep79.i = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  %.013.lcssa.i.sroa.gep80.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %.013.lcssa.i.sroa.gep81.i = getelementptr inbounds nuw i8, ptr %i.a, i64 11 ; 2 uses
  %.013.lcssa.i.sroa.gep82.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %.013.lcssa.i.sroa.gep83.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.013.lcssa.i.sroa.gep84.i = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  %.013.lcssa.i.sroa.gep85.i = getelementptr inbounds nuw i8, ptr %i.a, i64 10 ; 2 uses
  %.013.lcssa.i.sroa.gep86.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %.013.lcssa.i.sroa.gep87.i = getelementptr inbounds nuw i8, ptr %i.a, i64 7 ; 2 uses
  %.013.lcssa.i.sroa.gep88.i = getelementptr inbounds nuw i8, ptr %i.a, i64 5 ; 2 uses
  %.013.lcssa.i.sroa.gep89.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9 ; 2 uses
  %.013.lcssa.i.sroa.gep90.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.e = add i64 %1, -6                           ; 4 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.057107.i = phi i64 [ %i.i, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 %.057107.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !25
  switch i8 %i.h, label %.loopexit [
    i8 35, label %._crit_edge.i
    i8 32, label %bb.d
    i8 9, label %bb.d
    i8 12, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.i = add nuw nsw i64 %.057107.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %i.e
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !41

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.057.lcssa.i = phi i64 [ 0, %bb.c ], [ %.057107.i, %.lr.ph.i ] ; 2 uses
  %i.j = icmp slt i64 %.057.lcssa.i, %i.e
  br i1 %i.j, label %.lr.ph114.i, label %.loopexit

.lr.ph114.i:                                      ; preds = %._crit_edge.i, %.thread99.i
  %.158112.i = phi i64 [ %i.fn, %.thread99.i ], [ %.057.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 %.158112.i ; 3 uses
  %i.l = load i32, ptr %i.k, align 1
  %i.m = xor i32 %i.l, 1768189795
  %i.n = getelementptr i8, ptr %i.k, i64 4
  %i.o = load i16, ptr %i.n, align 1
  %i.p = zext i16 %i.o to i32
  %i.q = xor i32 %i.p, 26478
  %i.r = or i32 %i.m, %i.q
  %i.s = icmp ne i32 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.e, label %.thread99.i

bb.e:                                             ; preds = %.lr.ph114.i
  %i.v = getelementptr i8, ptr %i.k, i64 6        ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !25
  switch i8 %i.w, label %.thread99.i [
    i8 58, label %.critedge.i.preheader
    i8 61, label %.critedge.i.preheader
  ]

.critedge.i.preheader:                            ; preds = %bb.e, %bb.e
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.backedge, %.critedge.i.preheader
  %.052.i = phi ptr [ %i.v, %.critedge.i.preheader ], [ %i.x, %.critedge.i.backedge ]
  %i.x = getelementptr i8, ptr %.052.i, i64 1     ; 6 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !25    ; 2 uses
  switch i8 %i.y, label %.preheader.i [
    i8 32, label %.critedge.i.backedge
    i8 9, label %.critedge.i.backedge
  ]

.critedge.i.backedge:                             ; preds = %.critedge.i, %.critedge.i
  br label %.critedge.i

.preheader.i:                                     ; preds = %.critedge.i, %.critedge2.i
  %i.z = phi i8 [ %.pr.i, %.critedge2.i ], [ %i.y, %.critedge.i ] ; 2 uses
  %.153.i = phi ptr [ %i.ae, %.critedge2.i ], [ %i.x, %.critedge.i ] ; 3 uses
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !7
  %.fr101.i = freeze i32 %i.ac
  %i.ad = and i32 %.fr101.i, 7
  %.not71.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not71.not.i, label %switch.early.test.i, label %.critedge2.i

switch.early.test.i:                              ; preds = %.preheader.i
  switch i8 %i.z, label %bb.f [
    i8 95, label %.critedge2.i
    i8 46, label %.critedge2.i
    i8 45, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %.preheader.i
  %i.ae = getelementptr i8, ptr %.153.i, i64 1    ; 2 uses
  %.pr.i = load i8, ptr %i.ae, align 1, !tbaa !25
  br label %.preheader.i, !llvm.loop !42

bb.f:                                             ; preds = %switch.early.test.i
  %i.af = icmp ult ptr %i.x, %.153.i
  br i1 %i.af, label %bb.g, label %.thread99.i

bb.g:                                             ; preds = %bb.f
  %i.ag = ptrtoint ptr %.153.i to i64
  %i.ah = ptrtoint ptr %i.x to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = add i64 %i.ai, 1
  %i.ak = tail call ptr @PyMem_Malloc(i64 noundef %i.aj) #7 ; 19 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_PyTokenizer_new_string.exit.thread.i, label %bb.h

_PyTokenizer_new_string.exit.thread.i:            ; preds = %bb.g
  %i.al = getelementptr i8, ptr %2, i64 64
  store i32 15, ptr %i.al, align 8, !tbaa !11
  br label %get_coding_spec.exit

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %i.x, i64 %i.ai, i1 false)
  %i.am = getelementptr i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.am, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.an = load i8, ptr %i.ak, align 1, !tbaa !25  ; 2 uses
  switch i8 %i.an, label %bb.i [
    i8 0, label %bb.af
    i8 95, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %storemerge.i.i = phi i8 [ %i.aq, %bb.i ], [ 45, %bb.h ]
  store i8 %storemerge.i.i, ptr %i.a, align 1, !tbaa !25
  %i.ar = getelementptr i8, ptr %i.ak, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !25  ; 2 uses
  switch i8 %i.as, label %bb.k [
    i8 0, label %bb.af
    i8 95, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink.i.i = phi i8 [ %i.av, %bb.k ], [ 45, %bb.j ]
  store i8 %.sink.i.i, ptr %.013.lcssa.i.sroa.gep80.i, align 1, !tbaa !25
  %i.aw = getelementptr i8, ptr %i.ak, i64 2
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !25  ; 2 uses
  switch i8 %i.ax, label %bb.m [
    i8 0, label %bb.af
    i8 95, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sink26.i.i = phi i8 [ %i.ba, %bb.m ], [ 45, %bb.l ]
  store i8 %.sink26.i.i, ptr %.013.lcssa.i.sroa.gep82.i, align 1, !tbaa !25
  %i.bb = getelementptr i8, ptr %i.ak, i64 3
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !25  ; 2 uses
  switch i8 %i.bc, label %bb.o [
    i8 0, label %bb.af
    i8 95, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink28.i.i = phi i8 [ %i.bf, %bb.o ], [ 45, %bb.n ]
  store i8 %.sink28.i.i, ptr %.013.lcssa.i.sroa.gep84.i, align 1, !tbaa !25
  %i.bg = getelementptr i8, ptr %i.ak, i64 4
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !25  ; 2 uses
  switch i8 %i.bh, label %bb.q [
    i8 0, label %bb.af
    i8 95, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !25
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink30.i.i = phi i8 [ %i.bk, %bb.q ], [ 45, %bb.p ]
  store i8 %.sink30.i.i, ptr %.013.lcssa.i.sroa.gep86.i, align 1, !tbaa !25
  %i.bl = getelementptr i8, ptr %i.ak, i64 5
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !25  ; 2 uses
  switch i8 %i.bm, label %bb.s [
    i8 0, label %bb.af
    i8 95, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !25
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sink32.i.i = phi i8 [ %i.bp, %bb.s ], [ 45, %bb.r ]
  store i8 %.sink32.i.i, ptr %.013.lcssa.i.sroa.gep88.i, align 1, !tbaa !25
  %i.bq = getelementptr i8, ptr %i.ak, i64 6
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !25  ; 2 uses
  switch i8 %i.br, label %bb.u [
    i8 0, label %bb.af
    i8 95, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sink34.i.i = phi i8 [ %i.bu, %bb.u ], [ 45, %bb.t ]
  store i8 %.sink34.i.i, ptr %.013.lcssa.i.sroa.gep79.i, align 1, !tbaa !25
  %i.bv = getelementptr i8, ptr %i.ak, i64 7
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !25  ; 2 uses
  switch i8 %i.bw, label %bb.w [
    i8 0, label %bb.af
    i8 95, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !25
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink36.i.i = phi i8 [ %i.bz, %bb.w ], [ 45, %bb.v ]
  store i8 %.sink36.i.i, ptr %.013.lcssa.i.sroa.gep87.i, align 1, !tbaa !25
  %i.ca = getelementptr i8, ptr %i.ak, i64 8
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !25  ; 2 uses
  switch i8 %i.cb, label %bb.y [
    i8 0, label %bb.af
    i8 95, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !25
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sink38.i.i = phi i8 [ %i.ce, %bb.y ], [ 45, %bb.x ]
  store i8 %.sink38.i.i, ptr %.013.lcssa.i.sroa.gep83.i, align 1, !tbaa !25
  %i.cf = getelementptr i8, ptr %i.ak, i64 9
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !25  ; 2 uses
  switch i8 %i.cg, label %bb.aa [
    i8 0, label %bb.af
    i8 95, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.ch = zext i8 %i.cg to i64
  %i.ci = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !25
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sink40.i.i = phi i8 [ %i.cj, %bb.aa ], [ 45, %bb.z ]
  store i8 %.sink40.i.i, ptr %.013.lcssa.i.sroa.gep89.i, align 1, !tbaa !25
  %i.ck = getelementptr i8, ptr %i.ak, i64 10
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !25  ; 2 uses
  switch i8 %i.cl, label %bb.ac [
    i8 0, label %bb.af
    i8 95, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !25
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sink42.i.i = phi i8 [ %i.co, %bb.ac ], [ 45, %bb.ab ]
  store i8 %.sink42.i.i, ptr %.013.lcssa.i.sroa.gep85.i, align 1, !tbaa !25
  %i.cp = getelementptr i8, ptr %i.ak, i64 11
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !25  ; 2 uses
  switch i8 %i.cq, label %bb.ae [
    i8 0, label %bb.af
    i8 95, label %.sink.split.i.i
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.cr = zext i8 %i.cq to i64
  %i.cs = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !25
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ae, %bb.ad
  %.sink44.i.i = phi i8 [ %i.ct, %bb.ae ], [ 45, %bb.ad ]
  store i8 %.sink44.i.i, ptr %.013.lcssa.i.sroa.gep81.i, align 1, !tbaa !25
  br label %bb.af

bb.af:                                            ; preds = %.sink.split.i.i, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h
  %.013.lcssa.i.sroa.phi.i = phi ptr [ %i.a, %bb.h ], [ %.013.lcssa.i.sroa.gep79.i, %bb.t ], [ %.013.lcssa.i.sroa.gep80.i, %bb.j ], [ %.013.lcssa.i.sroa.gep81.i, %bb.ad ], [ %.013.lcssa.i.sroa.gep82.i, %bb.l ], [ %.013.lcssa.i.sroa.gep83.i, %bb.x ], [ %.013.lcssa.i.sroa.gep84.i, %bb.n ], [ %.013.lcssa.i.sroa.gep85.i, %bb.ab ], [ %.013.lcssa.i.sroa.gep86.i, %bb.p ], [ %.013.lcssa.i.sroa.gep87.i, %bb.v ], [ %.013.lcssa.i.sroa.gep88.i, %bb.r ], [ %.013.lcssa.i.sroa.gep89.i, %bb.z ], [ %.013.lcssa.i.sroa.gep90.i, %.sink.split.i.i ]
  store i8 0, ptr %.013.lcssa.i.sroa.phi.i, align 1, !tbaa !25
  %i.cu = load i32, ptr %i.a, align 1
  %i.cv = xor i32 %i.cu, 761689205
  %i.cw = getelementptr i8, ptr %i.a, i64 4
  %i.cx = load i16, ptr %i.cw, align 1
  %i.cy = zext i16 %i.cx to i32
  %i.cz = xor i32 %i.cy, 56
  %i.da = or i32 %i.cv, %i.cz
  %i.db = icmp ne i32 %i.da, 0
  %i.dc = zext i1 %i.db to i32
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %get_normal_name.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.de = load i32, ptr %i.a, align 1
  %i.df = xor i32 %i.de, 761689205
  %i.dg = getelementptr i8, ptr %i.a, i64 4
  %i.dh = load i16, ptr %i.dg, align 1
  %i.di = zext i16 %i.dh to i32
  %i.dj = xor i32 %i.di, 11576
  %i.dk = or i32 %i.df, %i.dj
  %i.dl = icmp ne i32 %i.dk, 0
  %i.dm = zext i1 %i.dl to i32
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %get_normal_name.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.do = load i64, ptr %i.a, align 1
  %i.dp = icmp ne i64 %i.do, 13842226097709420
  %i.dq = zext i1 %i.dp to i32
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %get_normal_name.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ds = load i64, ptr %i.a, align 1
  %i.dt = xor i64 %i.ds, 4122262847859159913
  %i.du = getelementptr i8, ptr %i.a, i64 3
  %i.dv = load i64, ptr %i.du, align 1
  %i.dw = xor i64 %i.dv, 13841997588084781
  %i.dx = or i64 %i.dt, %i.dw
  %i.dy = icmp ne i64 %i.dx, 0
  %i.dz = zext i1 %i.dy to i32
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %get_normal_name.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eb = load i64, ptr %i.a, align 1
  %i.ec = xor i64 %i.eb, 7598805588527510377
  %i.ed = getelementptr i8, ptr %i.a, i64 8
  %i.ee = load i32, ptr %i.ed, align 1
  %i.ef = zext i32 %i.ee to i64
  %i.eg = xor i64 %i.ef, 3222894
  %i.eh = or i64 %i.ec, %i.eg
  %i.ei = icmp ne i64 %i.eh, 0
  %i.ej = zext i1 %i.ei to i32
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %get_normal_name.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.el = load i64, ptr %i.a, align 1
  %i.em = icmp ne i64 %i.el, 3256433957804466540
  %i.en = zext i1 %i.em to i32
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %get_normal_name.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ep = load i64, ptr %i.a, align 1
  %i.eq = xor i64 %i.ep, 4122262847859159913
  %i.er = getelementptr i8, ptr %i.a, i64 3
  %i.es = load i64, ptr %i.er, align 1
  %i.et = xor i64 %i.es, 3256433729294841901
  %i.eu = or i64 %i.eq, %i.et
  %i.ev = icmp ne i64 %i.eu, 0
  %i.ew = zext i1 %i.ev to i32
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %get_normal_name.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ey = load i64, ptr %i.a, align 1
  %i.ez = xor i64 %i.ey, 7598805588527510377
  %i.fa = getelementptr i8, ptr %i.a, i64 8
  %i.fb = load i32, ptr %i.fa, align 1
  %i.fc = zext i32 %i.fb to i64
  %i.fd = xor i64 %i.fc, 758197614
  %i.fe = or i64 %i.ez, %i.fd
  %i.ff = icmp ne i64 %i.fe, 0
  %i.fg = zext i1 %i.ff to i32
  %i.fh = icmp eq i32 %i.fg, 0
  %spec.select.i.i = select i1 %i.fh, ptr @.str.15, ptr %i.ak
  br label %get_normal_name.exit.i

get_normal_name.exit.i:                           ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.012.i.i = phi ptr [ @.str.15, %bb.ah ], [ @.str.3, %bb.af ], [ @.str.3, %bb.ag ], [ %spec.select.i.i, %bb.am ], [ @.str.15, %bb.al ], [ @.str.15, %bb.ak ], [ @.str.15, %bb.aj ], [ @.str.15, %bb.ai ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %.not73.i = icmp eq ptr %i.ak, %.012.i.i
  br i1 %.not73.i, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %get_normal_name.exit.i
  tail call void @PyMem_Free(ptr noundef nonnull %i.ak) #7
  %i.fi = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.012.i.i) #8 ; 3 uses
  %i.fj = add i64 %i.fi, 1
  %i.fk = tail call ptr @PyMem_Malloc(i64 noundef %i.fj) #7 ; 4 uses
  %.not.i77.i = icmp eq ptr %i.fk, null
  br i1 %.not.i77.i, label %_PyTokenizer_new_string.exit78.thread.i, label %_PyTokenizer_new_string.exit78.i

_PyTokenizer_new_string.exit78.thread.i:          ; preds = %bb.an
  %i.fl = getelementptr i8, ptr %2, i64 64
  store i32 15, ptr %i.fl, align 8, !tbaa !11
  br label %get_coding_spec.exit

_PyTokenizer_new_string.exit78.i:                 ; preds = %bb.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fk, ptr nonnull readonly align 1 %.012.i.i, i64 %i.fi, i1 false)
  %i.fm = getelementptr i8, ptr %i.fk, i64 %i.fi
  store i8 0, ptr %i.fm, align 1, !tbaa !25
  br label %bb.aq

.thread99.i:                                      ; preds = %bb.f, %bb.e, %.lr.ph114.i
  %i.fn = add nuw nsw i64 %.158112.i, 1           ; 2 uses
  %exitcond117.not.i = icmp eq i64 %i.fn, %i.e
  br i1 %exitcond117.not.i, label %.loopexit, label %.lr.ph114.i, !llvm.loop !43

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i, %.thread99.i, %._crit_edge.i
  %i.fo = icmp sgt i64 %1, 0
  br i1 %i.fo, label %.lr.ph, label %get_coding_spec.exit

.lr.ph:                                           ; preds = %.loopexit, %bb.ap
  %.064 = phi i64 [ %i.fs, %bb.ap ], [ 0, %.loopexit ] ; 2 uses
  %i.fp = getelementptr i8, ptr %0, i64 %.064
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !25
  switch i8 %i.fq, label %bb.ao [
    i8 35, label %get_coding_spec.exit
    i8 10, label %get_coding_spec.exit
    i8 13, label %get_coding_spec.exit
    i8 32, label %bb.ap
    i8 9, label %bb.ap
    i8 12, label %bb.ap
  ]

bb.ao:                                            ; preds = %.lr.ph
  %i.fr = getelementptr i8, ptr %2, i64 2752
  store i32 2, ptr %i.fr, align 8, !tbaa !38
  br label %get_coding_spec.exit

bb.ap:                                            ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.fs = add nuw nsw i64 %.064, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.fs, %1
  br i1 %exitcond.not, label %get_coding_spec.exit, label %.lr.ph, !llvm.loop !44

bb.aq:                                            ; preds = %get_normal_name.exit.i, %_PyTokenizer_new_string.exit78.i
  %.053.ph.ph = phi ptr [ %i.fk, %_PyTokenizer_new_string.exit78.i ], [ %i.ak, %get_normal_name.exit.i ] ; 9 uses
  %i.ft = getelementptr i8, ptr %2, i64 2752
  store i32 2, ptr %i.ft, align 8, !tbaa !38
  %i.fu = getelementptr i8, ptr %2, i64 2760      ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !39 ; 2 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.fx = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.053.ph.ph, ptr noundef nonnull dereferenceable(6) @.str.3) #8
  %.not44 = icmp eq i32 %i.fx, 0
  br i1 %.not44, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fy = tail call i32 %3(ptr noundef nonnull %2, ptr noundef nonnull %.053.ph.ph) #7
  %.not45 = icmp eq i32 %i.fy, 0
  br i1 %.not45, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.fz = tail call ptr @_PyTokenizer_error_ret(ptr noundef nonnull %2) ; 0 uses
  %i.ga = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !28
  %i.gb = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ga, ptr noundef nonnull @.str.4, ptr noundef nonnull %.053.ph.ph) #7 ; 0 uses
  tail call void @PyMem_Free(ptr noundef nonnull %.053.ph.ph) #7
  br label %get_coding_spec.exit

bb.au:                                            ; preds = %bb.as, %bb.ar
  store ptr %.053.ph.ph, ptr %i.fu, align 8, !tbaa !39
  br label %get_coding_spec.exit

bb.av:                                            ; preds = %bb.aq
  %i.gc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fv, ptr noundef nonnull dereferenceable(1) %.053.ph.ph) #8
  %.not43 = icmp eq i32 %i.gc, 0
  br i1 %.not43, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gd = getelementptr i8, ptr %2, i64 2776
  store ptr %0, ptr %i.gd, align 8, !tbaa !17
  %i.ge = getelementptr i8, ptr %2, i64 8
  store ptr %0, ptr %i.ge, align 8, !tbaa !18
  %i.gf = trunc i64 %1 to i32
  %i.gg = tail call i32 (ptr, i32, i32, ptr, ...) @_PyTokenizer_syntaxerror_known_range(ptr noundef nonnull %2, i32 noundef 0, i32 noundef %i.gf, ptr noundef nonnull @.str.5, ptr noundef nonnull %.053.ph.ph) ; 0 uses
  tail call void @PyMem_Free(ptr noundef nonnull %.053.ph.ph) #7
  %i.gh = getelementptr i8, ptr %2, i64 2756
  store i32 1, ptr %i.gh, align 4, !tbaa !30
  %i.gi = getelementptr i8, ptr %2, i64 72
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !31
  %.not.i = icmp eq ptr %i.gj, null
  br i1 %.not.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.gk = getelementptr i8, ptr %2, i64 2808
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !32
  %.not11.i = icmp eq ptr %i.gl, null
  br i1 %.not11.i, label %_PyTokenizer_error_ret.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.gm = load ptr, ptr %2, align 8, !tbaa !33    ; 2 uses
  %.not12.i = icmp eq ptr %i.gm, null
  br i1 %.not12.i, label %_PyTokenizer_error_ret.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @PyMem_Free(ptr noundef nonnull %i.gm) #7
  br label %_PyTokenizer_error_ret.exit

_PyTokenizer_error_ret.exit:                      ; preds = %bb.ax, %bb.ay, %bb.az
  %i.gn = getelementptr i8, ptr %2, i64 48
  %i.go = getelementptr i8, ptr %2, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gn, i8 0, i64 16, i1 false)
  store i32 22, ptr %i.go, align 8, !tbaa !11
  br label %get_coding_spec.exit

bb.ba:                                            ; preds = %bb.av
  tail call void @PyMem_Free(ptr noundef nonnull %.053.ph.ph) #7
  br label %get_coding_spec.exit

get_coding_spec.exit:                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %bb.ap, %.loopexit, %_PyTokenizer_new_string.exit78.thread.i, %_PyTokenizer_new_string.exit.thread.i, %bb.au, %bb.ba, %bb.ao, %_PyTokenizer_error_ret.exit, %bb.at, %bb.b
  %.035 = phi i32 [ 1, %bb.b ], [ 1, %bb.ao ], [ 0, %bb.at ], [ 0, %_PyTokenizer_error_ret.exit ], [ 1, %bb.au ], [ 1, %bb.ba ], [ 0, %_PyTokenizer_new_string.exit.thread.i ], [ 0, %_PyTokenizer_new_string.exit78.thread.i ], [ 1, %.loopexit ], [ 1, %bb.ap ], [ 1, %.lr.ph ], [ 1, %.lr.ph ], [ 1, %.lr.ph ]
  ret i32 %.035
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @_PyTokenizer_ensure_utf8(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !25      ; 2 uses
  %.not53 = icmp eq i8 %i.a, 0
  br i1 %.not53, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %valid_utf8.exit
  %i.b = phi i8 [ %i.ad, %valid_utf8.exit ], [ %i.a, %bb.a ] ; 9 uses
  %.057 = phi ptr [ %.1, %valid_utf8.exit ], [ %0, %bb.a ] ; 2 uses
  %.02556 = phi i32 [ %.126, %valid_utf8.exit ], [ 0, %bb.a ] ; 2 uses
  %.02855 = phi ptr [ %i.ac, %valid_utf8.exit ], [ %0, %bb.a ] ; 10 uses
  %.03054 = phi i32 [ %.131, %valid_utf8.exit ], [ %2, %bb.a ] ; 3 uses
  %i.c = icmp sgt i8 %i.b, -1
  br i1 %i.c, label %valid_utf8.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp samesign ult i8 %i.b, -32           ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = icmp samesign ult i8 %i.b, -62
  br i1 %i.e, label %.loopexit, label %.thread.i

bb.d:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i8 %i.b, -16
  br i1 %i.f, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  switch i8 %i.b, label %.thread.i [
    i8 -32, label %bb.f
    i8 -19, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr i8, ptr %.02855, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !25
  %i.i = icmp ult i8 %i.h, -96
  br i1 %i.i, label %.loopexit, label %.thread.i

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %.02855, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !25
  %i.l = icmp ugt i8 %i.k, -97
  br i1 %i.l, label %.loopexit, label %.thread.i

bb.h:                                             ; preds = %bb.d
  %i.m = icmp samesign ult i8 %i.b, -11
  br i1 %i.m, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr i8, ptr %.02855, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !25
  %i.p = icmp ult i8 %i.o, -112
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.q = icmp eq i8 %i.b, -16
  br i1 %i.q, label %.loopexit, label %.thread.i

bb.k:                                             ; preds = %bb.i
  %i.r = icmp eq i8 %i.b, -12
  br i1 %i.r, label %.loopexit, label %.thread.i

bb.l:                                             ; preds = %.thread.i
  br i1 %i.d, label %valid_utf8.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = getelementptr i8, ptr %.02855, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !25
  %or.cond.i.1 = icmp sgt i8 %i.t, -65
  br i1 %or.cond.i.1, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %exitcond.not.i.1, label %valid_utf8.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = getelementptr i8, ptr %.02855, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !25
  %or.cond.i.2 = icmp sgt i8 %i.v, -65
  br i1 %or.cond.i.2, label %.loopexit, label %valid_utf8.exit

.thread.i:                                        ; preds = %bb.c, %bb.e, %bb.f, %bb.g, %bb.j, %bb.k
  %exitcond.not.i.1 = phi i1 [ true, %bb.g ], [ false, %bb.c ], [ true, %bb.e ], [ false, %bb.k ], [ false, %bb.j ], [ true, %bb.f ]
  %.024.i = phi i64 [ 3, %bb.g ], [ 2, %bb.c ], [ 3, %bb.e ], [ 4, %bb.k ], [ 4, %bb.j ], [ 3, %bb.f ] ; 3 uses
  %i.w = getelementptr i8, ptr %.02855, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !25
  %or.cond.i = icmp sgt i8 %i.x, -65
  br i1 %or.cond.i, label %.loopexit, label %bb.l

valid_utf8.exit:                                  ; preds = %bb.l, %bb.n, %bb.o, %.lr.ph
  %.1.i = phi i64 [ 1, %.lr.ph ], [ %.024.i, %bb.o ], [ %.024.i, %bb.n ], [ %.024.i, %bb.l ]
  %i.y = add i32 %.02556, 1
  %i.z = icmp eq i8 %i.b, 10                      ; 3 uses
  %i.aa = getelementptr i8, ptr %.02855, i64 1
  %i.ab = zext i1 %i.z to i32
  %.131 = add i32 %.03054, %i.ab
  %.126 = select i1 %i.z, i32 0, i32 %i.y
  %.1 = select i1 %i.z, ptr %i.aa, ptr %.057
  %i.ac = getelementptr i8, ptr %.02855, i64 %.1.i ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !25  ; 2 uses
  %.not = icmp eq i8 %i.ad, 0
  br i1 %.not, label %.thread, label %.lr.ph, !llvm.loop !45

.loopexit:                                        ; preds = %bb.g, %bb.f, %bb.c, %bb.k, %bb.h, %bb.j, %.thread.i, %bb.m, %bb.o
  %i.ae = getelementptr i8, ptr %1, i64 512
  store i32 %.03054, ptr %i.ae, align 8, !tbaa !27
  %i.af = getelementptr i8, ptr %1, i64 2776
  store ptr %.057, ptr %i.af, align 8, !tbaa !17
  %i.ag = getelementptr i8, ptr %1, i64 8
  store ptr %.02855, ptr %i.ag, align 8, !tbaa !18
  %i.ah = add i32 %.02556, 1                      ; 2 uses
  %i.ai = load i8, ptr %.02855, align 1, !tbaa !25
  %i.aj = zext i8 %i.ai to i32
  %i.ak = getelementptr i8, ptr %1, i64 2336
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !26 ; 2 uses
  %.not35 = icmp eq ptr %i.al, null
  %i.am = select i1 %.not35, ptr @.str.8, ptr @.str.7
  %i.an = tail call i32 (ptr, i32, i32, ptr, ...) @_PyTokenizer_syntaxerror_known_range(ptr noundef %1, i32 noundef %i.ah, i32 noundef %i.ah, ptr noundef nonnull @.str.6, i32 noundef %i.aj, ptr noundef nonnull %i.am, ptr noundef %i.al, ptr noundef nonnull @.str.8, i32 noundef %.03054) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %valid_utf8.exit, %bb.a, %.loopexit
  %.027 = phi i32 [ 0, %.loopexit ], [ 1, %bb.a ], [ 1, %valid_utf8.exit ]
  ret i32 %.027
}

declare ptr @PyUnicode_DecodeUTF8(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare ptr @Py_BuildValue(ptr noundef, ...) local_unnamed_addr #4

declare void @PyErr_SetObject(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !8, i64 64}
!12 = !{!"tok_state", !13, i64 0, !13, i64 8, !13, i64 16, !8, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !8, i64 64, !15, i64 72, !8, i64 80, !8, i64 84, !9, i64 88, !8, i64 488, !8, i64 492, !13, i64 496, !13, i64 504, !8, i64 512, !8, i64 516, !8, i64 520, !8, i64 524, !8, i64 528, !9, i64 532, !9, i64 732, !9, i64 1532, !16, i64 2336, !16, i64 2344, !9, i64 2352, !8, i64 2752, !8, i64 2756, !13, i64 2760, !8, i64 2768, !13, i64 2776, !13, i64 2784, !16, i64 2792, !16, i64 2800, !16, i64 2808, !13, i64 2816, !13, i64 2824, !13, i64 2832, !8, i64 2840, !8, i64 2844, !14, i64 2848, !8, i64 2856, !9, i64 2864, !8, i64 18464, !8, i64 18468, !8, i64 18472, !8, i64 18476}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!16 = !{!"p1 _ZTS7_object", !14, i64 0}
!17 = !{!12, !13, i64 2776}
!18 = !{!12, !13, i64 8}
!19 = !{!20, !23, i64 16}
!20 = !{!"", !21, i64 0, !23, i64 16, !23, i64 24, !24, i64 32}
!21 = !{!"_object", !9, i64 0, !22, i64 8}
!22 = !{!"p1 _ZTS11_typeobject", !14, i64 0}
!23 = !{!"long", !9, i64 0}
!24 = !{!"_PyUnicodeObject_state", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0}
!25 = !{!9, !9, i64 0}
!26 = !{!12, !16, i64 2336}
!27 = !{!12, !8, i64 512}
!28 = !{!16, !16, i64 0}
!29 = !{!12, !13, i64 16}
!30 = !{!12, !8, i64 2756}
!31 = !{!12, !15, i64 72}
!32 = !{!12, !16, i64 2808}
!33 = !{!12, !13, i64 0}
!34 = !{!12, !8, i64 2856}
!35 = !{!12, !16, i64 2344}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!12, !8, i64 2752}
!39 = !{!12, !13, i64 2760}
!40 = !{!12, !8, i64 2768}
!41 = distinct !{!41, !37}
!42 = distinct !{!42, !37}
!43 = distinct !{!43, !37}
!44 = distinct !{!44, !37}
!45 = distinct !{!45, !37}
end_hunk_0
