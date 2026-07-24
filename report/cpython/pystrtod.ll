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
  br i1 %i.bl, label %case_insensitive_match.exit36, label %case_insensitive_match.exit36.thread

case_insensitive_match.exit36:                    ; preds = %.lr.ph.i31.2
  %i.bm = getelementptr i8, ptr %.016, i64 3
  %. = select i1 %.not21.not, double -qnan, double +qnan
  br label %case_insensitive_match.exit36.thread

case_insensitive_match.exit36.thread:             ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i31.1, %.lr.ph.i31.2, %case_insensitive_match.exit36, %.loopexit
  %.017 = phi double [ %i.az, %.loopexit ], [ %., %case_insensitive_match.exit36 ], [ -1.000000e+00, %.lr.ph.i ], [ -1.000000e+00, %.lr.ph.i31.2 ], [ -1.000000e+00, %.lr.ph.i31.1 ], [ -1.000000e+00, %.lr.ph.i.2 ], [ -1.000000e+00, %.lr.ph.i.1 ]
  %.2 = phi ptr [ %i.ay, %.loopexit ], [ %i.bm, %case_insensitive_match.exit36 ], [ %0, %.lr.ph.i ], [ %0, %.lr.ph.i31.2 ], [ %0, %.lr.ph.i31.1 ], [ %0, %.lr.ph.i.2 ], [ %0, %.lr.ph.i.1 ]
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
  %.040 = phi ptr [ %0, %bb.e ], [ %i.o, %bb.i ]  ; 4 uses
  %.039 = phi i8 [ 0, %bb.e ], [ %i.n, %bb.i ]    ; 3 uses
  %.038 = phi ptr [ %i.e, %bb.e ], [ %.1, %bb.i ] ; 5 uses
  %i.i = load i8, ptr %.040, align 1, !tbaa !11   ; 2 uses
  switch i8 %i.i, label %bb.h [
    i8 0, label %bb.j
    i8 95, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.j = add i8 %.039, -48
  %or.cond = icmp ult i8 %i.j, 10
  br i1 %or.cond, label %bb.i, label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr i8, ptr %.038, i64 1
  store i8 %i.i, ptr %.038, align 1, !tbaa !11
  %i.l = icmp ne i8 %.039, 95
  %.pre = load i8, ptr %.040, align 1, !tbaa !11  ; 2 uses
  %i.m = add i8 %.pre, -48
  %or.cond45 = icmp ult i8 %i.m, 10
  %or.cond57 = select i1 %i.l, i1 true, i1 %or.cond45
  br i1 %or.cond57, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.n = phi i8 [ 95, %bb.g ], [ %.pre, %bb.h ]
  %.1 = phi ptr [ %.038, %bb.g ], [ %i.k, %bb.h ]
  %i.o = getelementptr i8, ptr %.040, i64 1
  br label %bb.f, !llvm.loop !17

bb.j:                                             ; preds = %bb.f
  %i.p = icmp ne i8 %.039, 95
  %.not44 = icmp eq ptr %.040, %i.h
  %or.cond46 = and i1 %.not44, %i.p
  br i1 %or.cond46, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %.038, align 1, !tbaa !11
  %i.q = ptrtoint ptr %.038 to i64
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
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.g, %bb.d ], [ null, %.loopexit ], [ %i.t, %bb.k ]
  ret ptr %.0
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
  br label %bb.ba

bb.i:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.6, i32 noundef 1275) #10
  br label %bb.ba

bb.j:                                             ; preds = %bb.a, %bb.d, %bb.g, %bb.f, %bb.c
  %.020 = phi i32 [ %i.d, %bb.c ], [ 0, %bb.g ], [ %spec.store.select, %bb.f ], [ %2, %bb.d ], [ %2, %bb.a ] ; 7 uses
  %.319 = phi i8 [ 101, %bb.c ], [ 114, %bb.g ], [ 103, %bb.f ], [ 102, %bb.d ], [ %1, %bb.a ]
  %.3 = phi ptr [ %.014, %bb.c ], [ @lc_float_strings, %bb.g ], [ %.2, %bb.f ], [ @uc_float_strings, %bb.d ], [ @lc_float_strings, %bb.a ] ; 3 uses
  %.0 = phi i32 [ 2, %bb.c ], [ 0, %bb.g ], [ 2, %bb.f ], [ 3, %bb.d ], [ 3, %bb.a ] ; 2 uses
  %i.e = and i32 %3, 1                            ; 2 uses
  %i.f = and i32 %3, 2                            ; 2 uses
  %i.g = and i32 %3, 4                            ; 3 uses
  %i.h = and i32 %3, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.i = tail call zeroext i16 @_Py_get_387controlword() #10 ; 3 uses
  %i.j = and i16 %i.i, -3841
  %i.k = or disjoint i16 %i.j, 512                ; 2 uses
  %.not.i = icmp eq i16 %i.k, %i.i
  br i1 %.not.i, label %.thread.i, label %bb.k

.thread.i:                                        ; preds = %bb.j
  %i.l = call ptr @_Py_dg_dtoa(double noundef %0, i32 noundef range(i32 0, 4) %.0, i32 noundef %.020, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #10
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_set_387controlword(i16 noundef zeroext %i.k) #10
  %i.m = call ptr @_Py_dg_dtoa(double noundef %0, i32 noundef range(i32 0, 4) %.0, i32 noundef %.020, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #10
  call void @_Py_set_387controlword(i16 noundef zeroext %i.i) #10
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread.i
  %i.n = phi ptr [ %i.l, %.thread.i ], [ %i.m, %bb.k ] ; 10 uses
  %i.o = load i32, ptr %i.b, align 4, !tbaa !7
  %.fr262.i = freeze i32 %i.o                     ; 5 uses
  %i.p = sext i32 %.fr262.i to i64                ; 5 uses
  %i.q = icmp eq ptr %i.n, null
  br i1 %i.q, label %bb.ay, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.n to i64
  %i.u = sub i64 %i.s, %i.t                       ; 15 uses
  %i.v = icmp ne i32 %i.h, 0
  %i.w = load i32, ptr %i.c, align 4
  %i.x = icmp eq i32 %i.w, 1
  %or.cond.i = select i1 %i.v, i1 %i.x, i1 false
  br i1 %or.cond.i, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  switch i64 %i.u, label %thread-pre-split.i [
    i64 0, label %bb.p
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.y = load i8, ptr %i.n, align 1, !tbaa !11    ; 2 uses
  %i.z = icmp eq i8 %i.y, 48
  br i1 %i.z, label %bb.p, label %.thread200.i

bb.p:                                             ; preds = %bb.o, %bb.n
  store i32 0, ptr %i.c, align 4, !tbaa !7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.not182.i = icmp eq i64 %i.u, 0
  br i1 %.not182.i, label %bb.ad, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.q, %bb.n
  %.pr.i = load i8, ptr %i.n, align 1, !tbaa !11
  br label %.thread200.i

.thread200.i:                                     ; preds = %thread-pre-split.i, %bb.o
  %i.aa = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.y, %bb.o ] ; 2 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !7
  %i.ae = and i32 %i.ad, 4
  %.not183.i = icmp eq i32 %i.ae, 0
  br i1 %.not183.i, label %bb.r, label %bb.ad

bb.r:                                             ; preds = %.thread200.i
  switch i8 %i.aa, label %bb.t [
    i8 110, label %bb.s
    i8 78, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  store i32 0, ptr %i.c, align 4, !tbaa !7
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.af = call ptr @PyMem_Malloc(i64 noundef 5) #10 ; 8 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ah = call ptr @PyErr_NoMemory() #10          ; 0 uses
  br label %bb.az

bb.v:                                             ; preds = %bb.t
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !7
  %i.aj = icmp eq i32 %i.ai, 1
  br i1 %i.aj, label %.sink.split.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not184.i = icmp eq i32 %i.e, 0
  br i1 %.not184.i, label %bb.x, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.w, %bb.v
  %.sink.i = phi i8 [ 45, %bb.v ], [ 43, %bb.w ]
  %i.ak = getelementptr i8, ptr %i.af, i64 1
  store i8 %.sink.i, ptr %i.af, align 1, !tbaa !11
  br label %bb.x

bb.x:                                             ; preds = %.sink.split.i, %bb.w
  %.0159.i = phi ptr [ %i.af, %bb.w ], [ %i.ak, %.sink.split.i ] ; 4 uses
  %i.al = load i8, ptr %i.n, align 1, !tbaa !11
  switch i8 %i.al, label %bb.aa [
    i8 105, label %bb.y
    i8 73, label %bb.y
    i8 110, label %bb.ab
    i8 78, label %bb.ab
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  %i.am = load ptr, ptr %.3, align 8, !tbaa !12
  %i.an = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %.0159.i, ptr noundef nonnull dereferenceable(1) %i.am, i64 noundef 3) #10 ; 0 uses
  %i.ao = getelementptr i8, ptr %.0159.i, i64 3   ; 2 uses
  %.not186.i = icmp eq ptr %4, null
  br i1 %.not186.i, label %bb.ax, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 1, ptr %4, align 4, !tbaa !7
  br label %bb.ax

bb.aa:                                            ; preds = %bb.x
  unreachable

bb.ab:                                            ; preds = %bb.x, %bb.x
  %i.ap = getelementptr i8, ptr %.3, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !12
  %i.ar = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %.0159.i, ptr noundef nonnull dereferenceable(1) %i.aq, i64 noundef 3) #10 ; 0 uses
  %i.as = getelementptr i8, ptr %.0159.i, i64 3   ; 2 uses
  %.not185.i = icmp eq ptr %4, null
  br i1 %.not185.i, label %bb.ax, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i32 2, ptr %4, align 4, !tbaa !7
  br label %bb.ax

bb.ad:                                            ; preds = %.thread200.i, %bb.q
  %.not187.i = icmp eq ptr %4, null
  br i1 %.not187.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %4, align 4, !tbaa !7
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  switch i8 %.319, label %.unreachabledefault [
    i8 101, label %.thread241.i
    i8 102, label %.thread233.i
    i8 103, label %bb.ag
    i8 114, label %bb.aj
  ]

.thread241.i:                                     ; preds = %bb.af
  %i.at = sext i32 %.020 to i64
  br label %.thread40

.thread233.i:                                     ; preds = %bb.af
  %i.au = sext i32 %.020 to i64
  %i.av = add nsw i64 %i.p, %i.au
  br label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.aw = icmp slt i32 %.fr262.i, -3
  br i1 %i.aw, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ax = shl nuw i32 %i.f, 30
  %sext = ashr exact i32 %i.ax, 31
  %i.ay = add i32 %.020, %sext
  %i.az = icmp sgt i32 %.fr262.i, %i.ay
  br i1 %i.az, label %bb.ai, label %.thread252.i

.thread252.i:                                     ; preds = %bb.ah
  %.not189253.i = icmp eq i32 %i.g, 0
  %i.ba = sext i32 %.020 to i64
  %spec.select254.i = select i1 %.not189253.i, i64 %i.u, i64 %i.ba
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.not189.i = icmp eq i32 %i.g, 0
  %i.bb = sext i32 %.020 to i64
  %spec.select.i = select i1 %.not189.i, i64 %i.u, i64 %i.bb
  br label %.thread40

.unreachabledefault:                              ; preds = %bb.af
  unreachable

bb.aj:                                            ; preds = %bb.af
  %i.bc = add i32 %.fr262.i, 3
  %or.cond3.i = icmp ult i32 %i.bc, 20            ; 2 uses
  %spec.select255.i = select i1 %or.cond3.i, i64 %i.p, i64 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.thread252.i, %.thread233.i
  %.0160239.i = phi i64 [ %i.u, %bb.aj ], [ %i.av, %.thread233.i ], [ %spec.select254.i, %.thread252.i ] ; 2 uses
  %.1165237.i = phi i1 [ %or.cond3.i, %bb.aj ], [ true, %.thread233.i ], [ true, %.thread252.i ] ; 3 uses
  %i.bd = phi i64 [ %spec.select255.i, %bb.aj ], [ %i.p, %.thread233.i ], [ %i.p, %.thread252.i ] ; 5 uses
  %i.be = icmp slt i64 %i.bd, 1                   ; 2 uses
  %i.bf = call i64 @llvm.smin.i64(i64 %i.bd, i64 1) ; 3 uses
  %i.bg = add nsw i64 %i.bf, -1                   ; 2 uses
  %i.bh = icmp ne i32 %i.f, 0
  %or.cond5.i = and i1 %i.bh, %.1165237.i
  br i1 %or.cond5.i, label %.thread, label %bb.al

.thread:                                          ; preds = %bb.ak
  %i.bi = add nsw i64 %i.p, 1
  %i.bj = call i64 @llvm.smax.i64(i64 %.0160239.i, i64 %i.bi)
  br label %bb.am

.thread40:                                        ; preds = %.thread241.i, %bb.ai
  %.0160239249.i.ph = phi i64 [ %spec.select.i, %bb.ai ], [ %i.at, %.thread241.i ]
  %i.bk = call i64 @llvm.smax.i64(i64 %.0160239249.i.ph, i64 1)
  br label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.bl = call i64 @llvm.smax.i64(i64 %.0160239.i, i64 %i.bd)
  %spec.select43 = select i1 %.1165237.i, i64 3, i64 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.thread, %.thread40
  %.1161.i38 = phi i64 [ %i.bk, %.thread40 ], [ %i.bl, %bb.al ], [ %i.bj, %.thread ] ; 2 uses
  %.1165237250.i36 = phi i1 [ false, %.thread40 ], [ %.1165237.i, %bb.al ], [ true, %.thread ]
  %i.bm = phi i64 [ 1, %.thread40 ], [ %i.bd, %bb.al ], [ %i.bd, %.thread ] ; 10 uses
  %i.bn = phi i1 [ false, %.thread40 ], [ %i.be, %bb.al ], [ %i.be, %.thread ]
  %i.bo = phi i64 [ 1, %.thread40 ], [ %i.bf, %bb.al ], [ %i.bf, %.thread ] ; 2 uses
  %i.bp = phi i64 [ 0, %.thread40 ], [ %i.bg, %bb.al ], [ %i.bg, %.thread ]
  %i.bq = phi i64 [ 8, %.thread40 ], [ %spec.select43, %bb.al ], [ 3, %.thread ]
  %i.br = add i32 %.fr262.i, -1
  %reass.sub = sub nsw i64 %i.bq, %i.bo
  %i.bs = add nuw nsw i64 %reass.sub, 1
  %i.bt = add i64 %i.bs, %.1161.i38
  %i.bu = call ptr @PyMem_Malloc(i64 noundef %i.bt) #10 ; 6 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.bw = call ptr @PyErr_NoMemory() #10          ; 0 uses
  br label %bb.az

bb.ao:                                            ; preds = %bb.am
  %i.bx = load i32, ptr %i.c, align 4, !tbaa !7
  %i.by = icmp eq i32 %i.bx, 1
  br i1 %i.by, label %.sink.split256.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.not191.i = icmp eq i32 %i.e, 0
  br i1 %.not191.i, label %bb.aq, label %.sink.split256.i

.sink.split256.i:                                 ; preds = %bb.ap, %bb.ao
  %.sink257.i = phi i8 [ 45, %bb.ao ], [ 43, %bb.ap ]
  %i.bz = getelementptr i8, ptr %i.bu, i64 1
  store i8 %.sink257.i, ptr %i.bu, align 1, !tbaa !11
  br label %bb.aq

bb.aq:                                            ; preds = %.sink.split256.i, %bb.ap
  %.1.i = phi ptr [ %i.bu, %bb.ap ], [ %i.bz, %.sink.split256.i ] ; 4 uses
  br i1 %i.bn, label %.thread202.i, label %bb.ar

.thread202.i:                                     ; preds = %bb.aq
  %i.ca = sub nsw i64 %i.bm, %i.bp                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.1.i, i8 48, i64 %i.ca, i1 false)
  %i.cb = getelementptr i8, ptr %.1.i, i64 %i.ca  ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 1      ; 2 uses
  store i8 46, ptr %i.cb, align 1, !tbaa !11
  %i.cd = sub nsw i64 0, %i.bm                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.cc, i8 48, i64 %i.cd, i1 false)
  %i.ce = getelementptr i8, ptr %i.cc, i64 %i.cd  ; 2 uses
  %.not192204.i = icmp sgt i64 %i.bm, %i.u
  %i.cf = call ptr @strncpy(ptr noundef %i.ce, ptr noundef nonnull %i.n, i64 noundef %i.u) #10 ; 0 uses
  %i.cg = getelementptr i8, ptr %i.ce, i64 %i.u   ; 2 uses
  br i1 %.not192204.i, label %bb.au, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.ch = sub nuw nsw i64 1, %i.bo                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.1.i, i8 48, i64 %i.ch, i1 false)
  %i.ci = getelementptr i8, ptr %.1.i, i64 %i.ch  ; 4 uses
  %.not192.i = icmp sgt i64 %i.bm, %i.u
  br i1 %.not192.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cj = call ptr @strncpy(ptr noundef %i.ci, ptr noundef nonnull %i.n, i64 noundef %i.bm) #10 ; 0 uses
  %i.ck = getelementptr i8, ptr %i.ci, i64 %i.bm  ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 1      ; 2 uses
  store i8 46, ptr %i.ck, align 1, !tbaa !11
  %i.cm = getelementptr i8, ptr %i.n, i64 %i.bm
  %i.cn = sub nsw i64 %i.u, %i.bm                 ; 2 uses
  %i.co = call ptr @strncpy(ptr noundef %i.cl, ptr noundef %i.cm, i64 noundef %i.cn) #10 ; 0 uses
  %i.cp = getelementptr i8, ptr %i.cl, i64 %i.cn
  br label %bb.av

bb.at:                                            ; preds = %bb.ar
  %i.cq = call ptr @strncpy(ptr noundef %i.ci, ptr noundef nonnull %i.n, i64 noundef %i.u) #10 ; 0 uses
  %i.cr = getelementptr i8, ptr %i.ci, i64 %i.u
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.thread202.i
  %.3209.i = phi ptr [ %i.cg, %.thread202.i ], [ %i.cr, %bb.at ] ; 2 uses
  %i.cs = sub i64 %i.bm, %i.u                     ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.3209.i, i8 48, i64 %i.cs, i1 false)
  %i.ct = getelementptr i8, ptr %.3209.i, i64 %i.cs ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 1
  store i8 46, ptr %i.ct, align 1, !tbaa !11
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.as, %.thread202.i
  %.sink261.i = phi i64 [ %i.bm, %bb.au ], [ %i.u, %bb.as ], [ %i.u, %.thread202.i ]
  %.3210.sink259.i = phi ptr [ %i.cu, %bb.au ], [ %i.cp, %bb.as ], [ %i.cg, %.thread202.i ] ; 2 uses
  %i.cv = sub i64 %.1161.i38, %.sink261.i         ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.3210.sink259.i, i8 48, i64 %i.cv, i1 false)
  %i.cw = getelementptr i8, ptr %.3210.sink259.i, i64 %i.cv ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 -1     ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !11
  %i.cz = icmp ne i8 %i.cy, 46
  %i.da = icmp ne i32 %i.g, 0
  %or.cond7.i = or i1 %i.da, %i.cz
  %spec.select199.i = select i1 %or.cond7.i, ptr %i.cw, ptr %i.cx ; 3 uses
  br i1 %.1165237250.i36, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.db = getelementptr i8, ptr %.3, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !12
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !11
  %i.de = getelementptr i8, ptr %spec.select199.i, i64 1 ; 2 uses
  store i8 %i.dd, ptr %spec.select199.i, align 1, !tbaa !11
  %i.df = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.de, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.br) #10
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr i8, ptr %i.de, i64 %i.dg
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.ac, %bb.ab, %bb.z, %bb.y
  %.6.ph.i = phi ptr [ %i.as, %bb.ab ], [ %i.as, %bb.ac ], [ %i.ao, %bb.y ], [ %i.ao, %bb.z ], [ %spec.select199.i, %bb.av ], [ %i.dh, %bb.aw ]
  %.0.ph.i = phi ptr [ %i.af, %bb.ab ], [ %i.af, %bb.ac ], [ %i.af, %bb.y ], [ %i.af, %bb.z ], [ %i.bu, %bb.av ], [ %i.bu, %bb.aw ]
  store i8 0, ptr %.6.ph.i, align 1, !tbaa !11
  br label %bb.az

bb.ay:                                            ; preds = %bb.l
  %i.di = call ptr @PyErr_NoMemory() #10          ; 0 uses
  br label %format_float_short.exit

bb.az:                                            ; preds = %bb.ax, %bb.an, %bb.u
  %.0217.ph.i = phi ptr [ null, %bb.u ], [ null, %bb.an ], [ %.0.ph.i, %bb.ax ]
  call void @_Py_dg_freedtoa(ptr noundef nonnull %i.n) #10
  br label %format_float_short.exit

format_float_short.exit:                          ; preds = %bb.ay, %bb.az
  %.0217222.i = phi ptr [ %.0217.ph.i, %bb.az ], [ null, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.ba

bb.ba:                                            ; preds = %format_float_short.exit, %bb.i, %bb.h
  %.015 = phi ptr [ null, %bb.i ], [ %.0217222.i, %format_float_short.exit ], [ null, %bb.h ]
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
