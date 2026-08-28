Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/pystrtod?download=true
inline.NumInlined: 5
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@PyExc_ValueError = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"could not convert string to float: '%.200s'\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"value too large to convert to float: '%.200s'\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"could not convert string to %s: %R\00", align 1
@lc_float_strings = internal unnamed_addr constant [3 x ptr] [ptr @.str, ptr @.str.2, ptr @.str.7], align 16
@uc_float_strings = internal unnamed_addr constant [3 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"../Python/pystrtod.c\00", align 1
@_Py_ctype_tolower = external local_unnamed_addr constant [256 x i8], align 16
@.str.7 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"NAN\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@_Py_ctype_table = external local_unnamed_addr constant [256 x i32], align 16
@.str.11 = private unnamed_addr constant [7 x i8] c"%+.02d\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden double @_Py_parse_inf_or_nan(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #0 {
.lr.ph.i:
  %i.a = load i8, ptr %0, align 1, !tbaa !11      ; 2 uses
  %.not21.not = icmp eq i8 %i.a, 45               ; 3 uses
  %i.b = icmp eq i8 %i.a, 43
  %i.c = or i1 %.not21.not, %i.b
  %.016.idx = zext i1 %i.c to i64
  %.016 = getelementptr i8, ptr %0, i64 %.016.idx ; 12 uses
  %i.d = load i8, ptr %.016, align 1, !tbaa !11
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !11
  switch i8 %i.g, label %case_insensitive_match.exit36.thread [
    i8 105, label %.lr.ph.i.1
    i8 110, label %.lr.ph.i31.1
  ]

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.h = getelementptr i8, ptr %.016, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !11
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11
  %i.m = icmp eq i8 %i.l, 110
  br i1 %i.m, label %.lr.ph.i.2, label %case_insensitive_match.exit36.thread

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.n = getelementptr i8, ptr %.016, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !11
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !11
  %i.s = icmp eq i8 %i.r, 102
  br i1 %i.s, label %case_insensitive_match.exit, label %case_insensitive_match.exit36.thread

case_insensitive_match.exit:                      ; preds = %.lr.ph.i.2
  %i.t = getelementptr i8, ptr %.016, i64 3       ; 6 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !11
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !11
  %i.y = icmp eq i8 %i.x, 105
  br i1 %i.y, label %.lr.ph.i25.1, label %.loopexit

.lr.ph.i25.1:                                     ; preds = %case_insensitive_match.exit
  %i.z = getelementptr i8, ptr %.016, i64 4
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !11
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !11
  %i.ae = icmp eq i8 %i.ad, 110
  br i1 %i.ae, label %.lr.ph.i25.2, label %.loopexit

.lr.ph.i25.2:                                     ; preds = %.lr.ph.i25.1
  %i.af = getelementptr i8, ptr %.016, i64 5
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !11
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !11
  %i.ak = icmp eq i8 %i.aj, 105
  br i1 %i.ak, label %.lr.ph.i25.3, label %.loopexit

.lr.ph.i25.3:                                     ; preds = %.lr.ph.i25.2
  %i.al = getelementptr i8, ptr %.016, i64 6
  %i.am = load i8, ptr %i.al, align 1, !tbaa !11
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !11
  %i.aq = icmp eq i8 %i.ap, 116
  br i1 %i.aq, label %.lr.ph.i25.4, label %.loopexit

.lr.ph.i25.4:                                     ; preds = %.lr.ph.i25.3
  %i.ar = getelementptr i8, ptr %.016, i64 7
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !11
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !11
  %i.aw = icmp eq i8 %i.av, 121
  %i.ax = getelementptr i8, ptr %.016, i64 8
  %spec.select = select i1 %i.aw, ptr %i.ax, ptr %i.t
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i25.4, %case_insensitive_match.exit, %.lr.ph.i25.1, %.lr.ph.i25.2, %.lr.ph.i25.3
  %i.ay = phi ptr [ %i.t, %case_insensitive_match.exit ], [ %spec.select, %.lr.ph.i25.4 ], [ %i.t, %.lr.ph.i25.3 ], [ %i.t, %.lr.ph.i25.2 ], [ %i.t, %.lr.ph.i25.1 ]
  %i.az = select i1 %.not21.not, double -inf, double +inf
  br label %case_insensitive_match.exit36.thread

.lr.ph.i31.1:                                     ; preds = %.lr.ph.i
  %i.ba = getelementptr i8, ptr %.016, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !11
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !11
  %i.bf = icmp eq i8 %i.be, 97
  br i1 %i.bf, label %.lr.ph.i31.2, label %case_insensitive_match.exit36.thread

.lr.ph.i31.2:                                     ; preds = %.lr.ph.i31.1
  %i.bg = getelementptr i8, ptr %.016, i64 2
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !11
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !11
  %i.bl = icmp eq i8 %i.bk, 110
  br i1 %i.bl, label %case_insensitive_match.exit36.a, label %case_insensitive_match.exit36.thread

case_insensitive_match.exit36.a:                  ; preds = %.lr.ph.i31.2
  %i.bm = getelementptr i8, ptr %.016, i64 3
  %. = select i1 %.not21.not, double -qnan, double +qnan
  br label %case_insensitive_match.exit36.thread

case_insensitive_match.exit36.thread:             ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i31.1, %.lr.ph.i31.2, %case_insensitive_match.exit36.a, %.loopexit
  %.017 = phi double [ %i.az, %.loopexit ], [ %., %case_insensitive_match.exit36.a ], [ -1.000000e+00, %.lr.ph.i ], [ -1.000000e+00, %.lr.ph.i31.2 ], [ -1.000000e+00, %.lr.ph.i31.1 ], [ -1.000000e+00, %.lr.ph.i.2 ], [ -1.000000e+00, %.lr.ph.i.1 ]
  %.2 = phi ptr [ %i.ay, %.loopexit ], [ %i.bm, %case_insensitive_match.exit36.a ], [ %0, %.lr.ph.i ], [ %0, %.lr.ph.i31.2 ], [ %0, %.lr.ph.i31.1 ], [ %0, %.lr.ph.i.2 ], [ %0, %.lr.ph.i.1 ]
  store ptr %.2, ptr %1, align 8, !tbaa !12
  ret double %.017
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local double @PyOS_string_to_double(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = tail call ptr @__errno_location() #11    ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !7
  %i.c = tail call zeroext i16 @_Py_get_387controlword() #10 ; 3 uses
  %i.d = and i16 %i.c, -3841
  %i.e = or disjoint i16 %i.d, 512                ; 2 uses
  %.not.i = icmp eq i16 %i.e, %i.c
  br i1 %.not.i, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  %i.f = call double @_Py_dg_strtod(ptr noundef %0, ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Py_set_387controlword(i16 noundef zeroext %i.e) #10
  %i.g = call double @_Py_dg_strtod(ptr noundef %0, ptr noundef nonnull %i.a) #10
  call void @_Py_set_387controlword(i16 noundef zeroext %i.c) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread.i
  %i.h = phi double [ %i.f, %.thread.i ], [ %i.g, %bb.b ]
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.j = icmp eq ptr %i.i, %0
  br i1 %i.j, label %bb.d, label %_PyOS_ascii_strtod.exit

bb.d:                                             ; preds = %bb.c
  %i.k = call double @_Py_parse_inf_or_nan(ptr noundef %0, ptr noundef nonnull %i.a)
  br label %_PyOS_ascii_strtod.exit

_PyOS_ascii_strtod.exit:                          ; preds = %bb.c, %bb.d
  %.0.i = phi double [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  %i.l = load i32, ptr %i.b, align 4, !tbaa !7    ; 2 uses
  %i.m = icmp eq i32 %i.l, 12
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_PyOS_ascii_strtod.exit
  %i.n = call ptr @PyErr_NoMemory() #10           ; 0 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !12
  br label %bb.n

bb.f:                                             ; preds = %_PyOS_ascii_strtod.exit
  %.not = icmp eq ptr %1, null
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !12  ; 3 uses
  br i1 %.not, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = icmp eq ptr %.pre, %0
  br i1 %i.o, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = load i8, ptr %.pre, align 1, !tbaa !11
  %.not20 = icmp eq i8 %i.p, 0
  br i1 %.not20, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.g, %bb.h
  %i.q = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !15
  %i.r = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.q, ptr noundef nonnull @.str.3, ptr noundef %0) #10 ; 0 uses
  br label %bb.p

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.s = icmp eq ptr %.pre, %0
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !15
  %i.u = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.t, ptr noundef nonnull @.str.3, ptr noundef %0) #10 ; 0 uses
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.v = icmp eq i32 %i.l, 34
  br i1 %i.v, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.w = call double @llvm.fabs.f64(double %.0.i)
  %i.x = fcmp oge double %i.w, 1.000000e+00
  %i.y = icmp ne ptr %2, null
  %or.cond = and i1 %i.y, %i.x
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.z = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef nonnull %2, ptr noundef nonnull @.str.4, ptr noundef %0) #10 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m, %bb.j, %bb.e
  %.0 = phi double [ -1.000000e+00, %bb.e ], [ -1.000000e+00, %bb.j ], [ -1.000000e+00, %bb.m ], [ %.0.i, %bb.k ], [ %.0.i, %bb.l ] ; 2 uses
  %.not21 = icmp eq ptr %1, null
  br i1 %.not21, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !12
  store ptr %i.aa, ptr %1, align 8, !tbaa !12
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.o, %bb.n
  %.024 = phi double [ -1.000000e+00, %.thread ], [ %.0, %bb.o ], [ %.0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret double %.024
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare ptr @PyErr_NoMemory() local_unnamed_addr #5

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_string_to_number_with_underscores(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 95) #12
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr %5(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %4) #10
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %1, 1
  %i.e = tail call ptr @PyMem_Malloc(i64 noundef %i.d) #10 ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @PyErr_NoMemory() #10
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 %1
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %.039 = phi i8 [ 0, %bb.e ], [ %i.n, %bb.i ]    ; 3 uses
  %.038 = phi ptr [ %0, %bb.e ], [ %i.o, %bb.i ]  ; 4 uses
  %.0 = phi ptr [ %i.e, %bb.e ], [ %.1, %bb.i ]   ; 5 uses
  %i.i = load i8, ptr %.038, align 1, !tbaa !11   ; 2 uses
  switch i8 %i.i, label %bb.h [
    i8 0, label %bb.j
    i8 95, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.j = add i8 %.039, -48
  %or.cond = icmp ult i8 %i.j, 10
  br i1 %or.cond, label %bb.i, label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr i8, ptr %.0, i64 1
  store i8 %i.i, ptr %.0, align 1, !tbaa !11
  %i.l = icmp ne i8 %.039, 95
  %.pre = load i8, ptr %.038, align 1, !tbaa !11  ; 2 uses
  %i.m = add i8 %.pre, -48
  %or.cond45 = icmp ult i8 %i.m, 10
  %or.cond57 = select i1 %i.l, i1 true, i1 %or.cond45
  br i1 %or.cond57, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.n = phi i8 [ 95, %bb.g ], [ %.pre, %bb.h ]
  %.1 = phi ptr [ %.0, %bb.g ], [ %i.k, %bb.h ]
  %i.o = getelementptr i8, ptr %.038, i64 1
  br label %bb.f, !llvm.loop !17

bb.j:                                             ; preds = %bb.f
  %i.p = icmp ne i8 %.039, 95
  %.not44 = icmp eq ptr %.038, %i.h
  %or.cond46 = and i1 %i.p, %.not44
  br i1 %or.cond46, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %.0, align 1, !tbaa !11
  %i.q = ptrtoint ptr %.0 to i64
  %i.r = ptrtoint ptr %i.e to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = tail call ptr %5(ptr noundef nonnull %i.e, i64 noundef %i.s, ptr noundef %4) #10
  tail call void @PyMem_Free(ptr noundef nonnull %i.e) #10
  br label %bb.l

.loopexit:                                        ; preds = %bb.g, %bb.h, %bb.j
  tail call void @PyMem_Free(ptr noundef nonnull %i.e) #10
  %i.u = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !15
  %i.v = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.u, ptr noundef nonnull @.str.5, ptr noundef %2, ptr noundef %3) #10 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %bb.k, %bb.d, %bb.b
  %.040 = phi ptr [ %i.c, %bb.b ], [ %i.g, %bb.d ], [ null, %.loopexit ], [ %i.t, %bb.k ]
  ret ptr %.040
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #5

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @PyOS_double_to_string(double noundef %0, i8 noundef signext %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  switch i8 %1, label %bb.i [
    i8 69, label %bb.b
    i8 101, label %bb.c
    i8 70, label %bb.d
    i8 102, label %bb.j
    i8 71, label %bb.e
    i8 103, label %bb.f
    i8 114, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.014 = phi ptr [ @uc_float_strings, %bb.b ], [ @lc_float_strings, %bb.a ]
  %i.d = add i32 %2, 1
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.2 = phi ptr [ @uc_float_strings, %bb.e ], [ @lc_float_strings, %bb.a ]
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %2, i32 1)
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.6, i32 noundef 1269) #10
  br label %bb.ax

bb.i:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.6, i32 noundef 1275) #10
  br label %bb.ax

bb.j:                                             ; preds = %bb.a, %bb.d, %bb.g, %bb.f, %bb.c
  %.020 = phi i32 [ %i.d, %bb.c ], [ 0, %bb.g ], [ %spec.store.select, %bb.f ], [ %2, %bb.d ], [ %2, %bb.a ] ; 7 uses
  %.319 = phi i8 [ 101, %bb.c ], [ 114, %bb.g ], [ 103, %bb.f ], [ 102, %bb.d ], [ %1, %bb.a ]
  %.3 = phi ptr [ %.014, %bb.c ], [ @lc_float_strings, %bb.g ], [ %.2, %bb.f ], [ @uc_float_strings, %bb.d ], [ @lc_float_strings, %bb.a ] ; 3 uses
  %.0 = phi i32 [ 2, %bb.c ], [ 0, %bb.g ], [ 2, %bb.f ], [ 3, %bb.d ], [ 3, %bb.a ] ; 2 uses
  %5 = and i32 %3, 1                              ; 2 uses
  %i.e = and i32 %3, 2                            ; 2 uses
  %i.f = and i32 %3, 4                            ; 3 uses
  %i.g = and i32 %3, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.h = tail call zeroext i16 @_Py_get_387controlword() #10 ; 3 uses
  %i.i = and i16 %i.h, -3841
  %i.j = or disjoint i16 %i.i, 512                ; 2 uses
  %.not.i = icmp eq i16 %i.j, %i.h
  br i1 %.not.i, label %.thread.i, label %bb.k

.thread.i:                                        ; preds = %bb.j
  %i.k = call ptr @_Py_dg_dtoa(double noundef %0, i32 noundef range(i32 0, 4) %.0, i32 noundef %.020, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #10
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_set_387controlword(i16 noundef zeroext %i.j) #10
  %i.l = call ptr @_Py_dg_dtoa(double noundef %0, i32 noundef range(i32 0, 4) %.0, i32 noundef %.020, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #10
  call void @_Py_set_387controlword(i16 noundef zeroext %i.h) #10
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread.i
  %i.m = phi ptr [ %i.k, %.thread.i ], [ %i.l, %bb.k ] ; 10 uses
  %i.n = load i32, ptr %i.b, align 4, !tbaa !7
  %.fr263.i = freeze i32 %i.n                     ; 5 uses
  %i.o = sext i32 %.fr263.i to i64                ; 5 uses
  %i.p = icmp eq ptr %i.m, null
  br i1 %i.p, label %bb.av, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.m to i64
  %i.t = sub i64 %i.r, %i.s                       ; 15 uses
  %i.u = icmp ne i32 %i.g, 0
  %i.v = load i32, ptr %i.c, align 4
  %i.w = icmp eq i32 %i.v, 1
  %or.cond.i = select i1 %i.u, i1 %i.w, i1 false
  br i1 %or.cond.i, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  switch i64 %i.t, label %thread-pre-split.i [
    i64 0, label %bb.p
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.x = load i8, ptr %i.m, align 1, !tbaa !11    ; 2 uses
  %i.y = icmp eq i8 %i.x, 48
  br i1 %i.y, label %bb.p, label %.thread200.i

bb.p:                                             ; preds = %bb.o, %bb.n
  store i32 0, ptr %i.c, align 4, !tbaa !7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.not182.i = icmp eq i64 %i.t, 0
  br i1 %.not182.i, label %bb.ac, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.q, %bb.n
  %.pr.i = load i8, ptr %i.m, align 1, !tbaa !11
  br label %.thread200.i

.thread200.i:                                     ; preds = %thread-pre-split.i, %bb.o
  %i.z = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.x, %bb.o ] ; 2 uses
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !7
  %i.ad = and i32 %i.ac, 4
  %.not183.i = icmp eq i32 %i.ad, 0
  br i1 %.not183.i, label %bb.r, label %bb.ac

bb.r:                                             ; preds = %.thread200.i
  switch i8 %i.z, label %bb.t [
    i8 110, label %bb.s
    i8 78, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  store i32 0, ptr %i.c, align 4, !tbaa !7
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ae = call ptr @PyMem_Malloc(i64 noundef 5) #10 ; 8 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ag = call ptr @PyErr_NoMemory() #10          ; 0 uses
  br label %bb.aw

bb.v:                                             ; preds = %bb.t
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !7
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %.sink.split.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not184.i = icmp eq i32 %5, 0
  br i1 %.not184.i, label %bb.x, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.w, %bb.v
  %.sink.i = phi i8 [ 45, %bb.v ], [ 43, %bb.w ]
  %i.aj = getelementptr i8, ptr %i.ae, i64 1
  store i8 %.sink.i, ptr %i.ae, align 1, !tbaa !11
  br label %bb.x

bb.x:                                             ; preds = %.sink.split.i, %bb.w
  %.0163.i = phi ptr [ %i.ae, %bb.w ], [ %i.aj, %.sink.split.i ] ; 4 uses
  %i.ak = load i8, ptr %i.m, align 1, !tbaa !11
  switch i8 %i.ak, label %.unreachabledefault.i [
    i8 105, label %bb.y
    i8 73, label %bb.y
    i8 110, label %bb.aa
    i8 78, label %bb.aa
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  %i.al = load ptr, ptr %.3, align 8, !tbaa !12
  %i.am = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %.0163.i, ptr noundef nonnull dereferenceable(1) %i.al, i64 noundef 3) #10 ; 0 uses
  %i.an = getelementptr i8, ptr %.0163.i, i64 3   ; 2 uses
  %.not186.i = icmp eq ptr %4, null
  br i1 %.not186.i, label %bb.au, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 1, ptr %4, align 4, !tbaa !7
  br label %bb.au

.unreachabledefault.i:                            ; preds = %bb.x
  unreachable

bb.aa:                                            ; preds = %bb.x, %bb.x
  %i.ao = getelementptr i8, ptr %.3, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !12
  %i.aq = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %.0163.i, ptr noundef nonnull dereferenceable(1) %i.ap, i64 noundef 3) #10 ; 0 uses
  %i.ar = getelementptr i8, ptr %.0163.i, i64 3   ; 2 uses
  %.not185.i = icmp eq ptr %4, null
  br i1 %.not185.i, label %bb.au, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 2, ptr %4, align 4, !tbaa !7
  br label %bb.au

bb.ac:                                            ; preds = %.thread200.i, %bb.q
  %.not187.i = icmp eq ptr %4, null
  br i1 %.not187.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %4, align 4, !tbaa !7
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  switch i8 %.319, label %.unreachabledefault [
    i8 101, label %.thread242.i
    i8 102, label %.thread234.i
    i8 103, label %bb.af
    i8 114, label %bb.ah
  ]

.thread242.i:                                     ; preds = %bb.ae
  %i.as = sext i32 %.020 to i64
  br label %.thread40

.thread234.i:                                     ; preds = %bb.ae
  %i.at = sext i32 %.020 to i64
  %i.au = add nsw i64 %i.o, %i.at
  br label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.av = icmp slt i32 %.fr263.i, -3
  br i1 %i.av, label %.split246.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.aw = shl nuw i32 %i.e, 30
  %sext = ashr exact i32 %i.aw, 31
  %i.ax = add i32 %.020, %sext
  %i.ay = icmp sgt i32 %.fr263.i, %i.ax
  br i1 %i.ay, label %.split246.i, label %.split246.thread.i

.split246.thread.i:                               ; preds = %bb.ag
  %.not189254.i = icmp eq i32 %i.f, 0
  %i.az = sext i32 %.020 to i64
  %spec.select255.i = select i1 %.not189254.i, i64 %i.t, i64 %i.az
  br label %bb.ai

.split246.i:                                      ; preds = %bb.ag, %bb.af
  %.not189.i = icmp eq i32 %i.f, 0
  %i.ba = sext i32 %.020 to i64
  %spec.select.i = select i1 %.not189.i, i64 %i.t, i64 %i.ba
  br label %.thread40

.unreachabledefault:                              ; preds = %bb.ae
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.bb = add i32 %.fr263.i, 3
  %or.cond3.i = icmp ult i32 %i.bb, 20            ; 2 uses
  %spec.select256.i = select i1 %or.cond3.i, i64 %i.o, i64 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.split246.thread.i, %.thread234.i
  %.0240.i = phi i64 [ %i.t, %bb.ah ], [ %i.au, %.thread234.i ], [ %spec.select255.i, %.split246.thread.i ] ; 2 uses
  %.1161238.i = phi i1 [ %or.cond3.i, %bb.ah ], [ true, %.thread234.i ], [ true, %.split246.thread.i ] ; 3 uses
  %i.bc = phi i64 [ %spec.select256.i, %bb.ah ], [ %i.o, %.thread234.i ], [ %i.o, %.split246.thread.i ] ; 5 uses
  %i.bd = icmp slt i64 %i.bc, 1                   ; 2 uses
  %i.be = call i64 @llvm.smin.i64(i64 %i.bc, i64 1) ; 3 uses
  %i.bf = add nsw i64 %i.be, -1                   ; 2 uses
  %i.bg = icmp ne i32 %i.e, 0
  %or.cond5.i = and i1 %i.bg, %.1161238.i
  br i1 %or.cond5.i, label %.thread, label %bb.aj

.thread:                                          ; preds = %bb.ai
  %i.bh = add nsw i64 %i.o, 1
  %i.bi = call i64 @llvm.smax.i64(i64 %.0240.i, i64 %i.bh)
  br label %bb.ak

.thread40:                                        ; preds = %.thread242.i, %.split246.i
  %.0240251.i.ph = phi i64 [ %spec.select.i, %.split246.i ], [ %i.as, %.thread242.i ]
  %i.bj = call i64 @llvm.smax.i64(i64 %.0240251.i.ph, i64 1)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bk = call i64 @llvm.smax.i64(i64 %.0240.i, i64 %i.bc)
  %spec.select43 = select i1 %.1161238.i, i64 3, i64 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.thread, %.thread40
  %.1.i38 = phi i64 [ %i.bj, %.thread40 ], [ %i.bk, %bb.aj ], [ %i.bi, %.thread ] ; 2 uses
  %.1161238252.i36 = phi i1 [ false, %.thread40 ], [ %.1161238.i, %bb.aj ], [ true, %.thread ]
  %i.bl = phi i64 [ 1, %.thread40 ], [ %i.bc, %bb.aj ], [ %i.bc, %.thread ] ; 10 uses
  %i.bm = phi i1 [ false, %.thread40 ], [ %i.bd, %bb.aj ], [ %i.bd, %.thread ]
  %i.bn = phi i64 [ 1, %.thread40 ], [ %i.be, %bb.aj ], [ %i.be, %.thread ] ; 2 uses
  %i.bo = phi i64 [ 0, %.thread40 ], [ %i.bf, %bb.aj ], [ %i.bf, %.thread ]
  %i.bp = phi i64 [ 8, %.thread40 ], [ %spec.select43, %bb.aj ], [ 3, %.thread ]
  %i.bq = add i32 %.fr263.i, -1
  %reass.sub = sub nsw i64 %i.bp, %i.bn
  %i.br = add nuw nsw i64 %reass.sub, 1
  %i.bs = add i64 %i.br, %.1.i38
  %i.bt = call ptr @PyMem_Malloc(i64 noundef %i.bs) #10 ; 6 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.bv = call ptr @PyErr_NoMemory() #10          ; 0 uses
  br label %bb.aw

bb.am:                                            ; preds = %bb.ak
  %i.bw = load i32, ptr %i.c, align 4, !tbaa !7
  %i.bx = icmp eq i32 %i.bw, 1
  br i1 %i.bx, label %.sink.split257.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not191.i = icmp eq i32 %5, 0
  br i1 %.not191.i, label %bb.ao, label %.sink.split257.i

.sink.split257.i:                                 ; preds = %bb.an, %bb.am
  %.sink258.i = phi i8 [ 45, %bb.am ], [ 43, %bb.an ]
  %i.by = getelementptr i8, ptr %i.bt, i64 1
  store i8 %.sink258.i, ptr %i.bt, align 1, !tbaa !11
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split257.i, %bb.an
  %.1164.i = phi ptr [ %i.bt, %bb.an ], [ %i.by, %.sink.split257.i ] ; 4 uses
  br i1 %i.bm, label %.thread202.i, label %bb.ap

.thread202.i:                                     ; preds = %bb.ao
  %i.bz = sub nsw i64 %i.bl, %i.bo                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.1164.i, i8 48, i64 %i.bz, i1 false)
  %i.ca = getelementptr i8, ptr %.1164.i, i64 %i.bz ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 1      ; 2 uses
  store i8 46, ptr %i.ca, align 1, !tbaa !11
  %i.cc = sub nsw i64 0, %i.bl                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.cb, i8 48, i64 %i.cc, i1 false)
  %i.cd = getelementptr i8, ptr %i.cb, i64 %i.cc  ; 2 uses
  %.not192204.i = icmp sgt i64 %i.bl, %i.t
  %i.ce = call ptr @strncpy(ptr noundef %i.cd, ptr noundef nonnull %i.m, i64 noundef %i.t) #10 ; 0 uses
  %i.cf = getelementptr i8, ptr %i.cd, i64 %i.t   ; 2 uses
  br i1 %.not192204.i, label %bb.ar, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.cg = sub nuw nsw i64 1, %i.bn                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.1164.i, i8 48, i64 %i.cg, i1 false)
  %i.ch = getelementptr i8, ptr %.1164.i, i64 %i.cg ; 4 uses
  %.not192.i = icmp sgt i64 %i.bl, %i.t
  br i1 %.not192.i, label %bb.aq, label %.split.i

.split.i:                                         ; preds = %bb.ap
  %i.ci = call ptr @strncpy(ptr noundef %i.ch, ptr noundef nonnull %i.m, i64 noundef %i.bl) #10 ; 0 uses
  %i.cj = getelementptr i8, ptr %i.ch, i64 %i.bl  ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 1      ; 2 uses
  store i8 46, ptr %i.cj, align 1, !tbaa !11
  %i.cl = getelementptr i8, ptr %i.m, i64 %i.bl
  %i.cm = sub nuw nsw i64 %i.t, %i.bl             ; 2 uses
  %i.cn = call ptr @strncpy(ptr noundef %i.ck, ptr noundef %i.cl, i64 noundef %i.cm) #10 ; 0 uses
  %i.co = getelementptr i8, ptr %i.ck, i64 %i.cm
  br label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.cp = call ptr @strncpy(ptr noundef %i.ch, ptr noundef nonnull %i.m, i64 noundef %i.t) #10 ; 0 uses
  %i.cq = getelementptr i8, ptr %i.ch, i64 %i.t
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.thread202.i
  %.3209.i = phi ptr [ %i.cf, %.thread202.i ], [ %i.cq, %bb.aq ] ; 2 uses
  %i.cr = sub i64 %i.bl, %i.t                     ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.3209.i, i8 48, i64 %i.cr, i1 false)
  %i.cs = getelementptr i8, ptr %.3209.i, i64 %i.cr ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 1
  store i8 46, ptr %i.cs, align 1, !tbaa !11
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.split.i, %.thread202.i
  %.sink262.i = phi i64 [ %i.bl, %bb.ar ], [ %i.t, %.split.i ], [ %i.t, %.thread202.i ]
  %.3210.sink260.i = phi ptr [ %i.ct, %bb.ar ], [ %i.co, %.split.i ], [ %i.cf, %.thread202.i ] ; 2 uses
  %i.cu = sub i64 %.1.i38, %.sink262.i            ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.3210.sink260.i, i8 48, i64 %i.cu, i1 false)
  %i.cv = getelementptr i8, ptr %.3210.sink260.i, i64 %i.cu ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 -1     ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !11
  %i.cy = icmp ne i8 %i.cx, 46
  %i.cz = icmp ne i32 %i.f, 0
  %or.cond7.i = or i1 %i.cz, %i.cy
  %spec.select199.i = select i1 %or.cond7.i, ptr %i.cv, ptr %i.cw ; 3 uses
  br i1 %.1161238252.i36, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.da = getelementptr i8, ptr %.3, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !12
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !11
  %i.dd = getelementptr i8, ptr %spec.select199.i, i64 1 ; 2 uses
  store i8 %i.dc, ptr %spec.select199.i, align 1, !tbaa !11
  %i.de = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.dd, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.bq) #10
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr i8, ptr %i.dd, i64 %i.df
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ab, %bb.aa, %bb.z, %bb.y
  %.0165.ph.i = phi ptr [ %i.ae, %bb.aa ], [ %i.ae, %bb.ab ], [ %i.ae, %bb.y ], [ %i.ae, %bb.z ], [ %i.bt, %bb.as ], [ %i.bt, %bb.at ]
  %.6.ph.i = phi ptr [ %i.ar, %bb.aa ], [ %i.ar, %bb.ab ], [ %i.an, %bb.y ], [ %i.an, %bb.z ], [ %spec.select199.i, %bb.as ], [ %i.dg, %bb.at ]
  store i8 0, ptr %.6.ph.i, align 1, !tbaa !11
  br label %bb.aw

bb.av:                                            ; preds = %bb.l
  %i.dh = call ptr @PyErr_NoMemory() #10          ; 0 uses
  br label %format_float_short.exit

bb.aw:                                            ; preds = %bb.au, %bb.al, %bb.u
  %.0165216.ph.i = phi ptr [ null, %bb.u ], [ null, %bb.al ], [ %.0165.ph.i, %bb.au ]
  call void @_Py_dg_freedtoa(ptr noundef nonnull %i.m) #10
  br label %format_float_short.exit

format_float_short.exit:                          ; preds = %bb.av, %bb.aw
  %.0165216222.i = phi ptr [ %.0165216.ph.i, %bb.aw ], [ null, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.ax

bb.ax:                                            ; preds = %format_float_short.exit, %bb.i, %bb.h
  %.015 = phi ptr [ null, %bb.i ], [ %.0165216222.i, %format_float_short.exit ], [ null, %bb.h ]
  ret ptr %.015
}

declare void @_PyErr_BadInternalCall(ptr noundef, i32 noundef) local_unnamed_addr #5

declare zeroext i16 @_Py_get_387controlword() local_unnamed_addr #5

declare void @_Py_set_387controlword(i16 noundef zeroext) local_unnamed_addr #5

declare double @_Py_dg_strtod(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @_Py_dg_dtoa(double noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

declare void @_Py_dg_freedtoa(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { nounwind willreturn memory(read) }

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
!11 = !{!9, !9, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTS7_object", !14, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
end_hunk_0
