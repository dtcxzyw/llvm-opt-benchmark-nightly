Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/read_pixels?download=true
inline.NumInlined: 117
inline.NumDeleted: 75
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN3igl6opengl11read_pixelsIhEEvjjRN5Eigen6MatrixIT_Lin1ELin1ELi0ELin1ELin1EEES6_S6_S6_S6_ = comdat any

$_ZN3igl6opengl11read_pixelsIdEEvjjRN5Eigen6MatrixIT_Lin1ELin1ELi0ELin1ELin1EEES6_S6_S6_S6_ = comdat any

$_ZN3igl6opengl11read_pixelsIfEEvjjRN5Eigen6MatrixIT_Lin1ELin1ELi0ELin1ELin1EEES6_S6_S6_S6_ = comdat any

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll = comdat any

$_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll = comdat any

@glad_glReadPixels = external local_unnamed_addr global ptr, align 8
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl6opengl11read_pixelsIhEEvjjRN5Eigen6MatrixIT_Lin1ELin1ELi0ELin1ELin1EEES6_S6_S6_S6_(i32 noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i32 %0 to i64                       ; 12 uses
  %i.b = zext i32 %1 to i64                       ; 12 uses
  %i.c = icmp eq i32 %0, 0                        ; 2 uses
  %i.d = icmp eq i32 %1, 0                        ; 2 uses
  %or.cond.i.i = or i1 %i.c, %i.d                 ; 5 uses
  br i1 %or.cond.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv i64 9223372036854775807, %i.b
  %i.f = icmp samesign ult i64 %i.e, %i.a
  br i1 %i.f, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.g, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.b, %bb.a
  %i.h = mul nuw nsw i64 %i.b, %i.a               ; 15 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  %i.m = mul nsw i64 %i.l, %i.j
  %.not.i.i = icmp eq i64 %i.h, %i.m
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.n = load ptr, ptr %2, align 8, !tbaa !33
  tail call void @free(ptr noundef %i.n) #6
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.sink.split.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.h) #8 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %.sink.split.i.i

bb.f:                                             ; preds = %bb.e
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

.sink.split.i.i:                                  ; preds = %bb.e, %bb.d
  %.sink.i.i = phi ptr [ %i.o, %bb.e ], [ null, %bb.d ]
  store ptr %.sink.i.i, ptr %2, align 8, !tbaa !33
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %.sink.split.i.i
  store i64 %i.a, ptr %i.i, align 8, !tbaa !31
  store i64 %i.b, ptr %i.k, align 8, !tbaa !32
  br i1 %or.cond.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i63, label %bb.g

bb.g:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.r = udiv i64 9223372036854775807, %i.b
  %i.s = icmp samesign ult i64 %i.r, %i.a
  br i1 %i.s, label %bb.h, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i63

bb.h:                                             ; preds = %bb.g
  %i.t = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.t, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i63: ; preds = %bb.g, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !32
  %i.y = mul nsw i64 %i.x, %i.v
  %.not.i.i64 = icmp eq i64 %i.h, %i.y
  br i1 %.not.i.i64, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit67, label %bb.i

bb.i:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i63
  %i.z = load ptr, ptr %3, align 8, !tbaa !33
  tail call void @free(ptr noundef %i.z) #6
  %.not86 = icmp eq i64 %i.h, 0
  br i1 %.not86, label %.sink.split.i.i65, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.h) #8 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.k, label %.sink.split.i.i65

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ac, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

.sink.split.i.i65:                                ; preds = %bb.j, %bb.i
  %.sink.i.i66 = phi ptr [ %i.aa, %bb.j ], [ null, %bb.i ]
  store ptr %.sink.i.i66, ptr %3, align 8, !tbaa !33
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit67

_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit67: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i63, %.sink.split.i.i65
  store i64 %i.a, ptr %i.u, align 8, !tbaa !31
  store i64 %i.b, ptr %i.w, align 8, !tbaa !32
  br i1 %or.cond.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i69, label %bb.l

bb.l:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit67
  %i.ad = udiv i64 9223372036854775807, %i.b
  %i.ae = icmp samesign ult i64 %i.ad, %i.a
  br i1 %i.ae, label %bb.m, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i69

bb.m:                                             ; preds = %bb.l
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i69: ; preds = %bb.l, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit67
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !32
  %i.ak = mul nsw i64 %i.aj, %i.ah
  %.not.i.i70 = icmp eq i64 %i.h, %i.ak
  br i1 %.not.i.i70, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit73, label %bb.n

bb.n:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i69
  %i.al = load ptr, ptr %4, align 8, !tbaa !33
  tail call void @free(ptr noundef %i.al) #6
  %.not87 = icmp eq i64 %i.h, 0
  br i1 %.not87, label %.sink.split.i.i71, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.h) #8 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.p, label %.sink.split.i.i71

bb.p:                                             ; preds = %bb.o
  %i.ao = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ao, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.ao, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

.sink.split.i.i71:                                ; preds = %bb.o, %bb.n
  %.sink.i.i72 = phi ptr [ %i.am, %bb.o ], [ null, %bb.n ]
  store ptr %.sink.i.i72, ptr %4, align 8, !tbaa !33
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit73

_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit73: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i69, %.sink.split.i.i71
  store i64 %i.a, ptr %i.ag, align 8, !tbaa !31
  store i64 %i.b, ptr %i.ai, align 8, !tbaa !32
  br i1 %or.cond.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i75, label %bb.q

bb.q:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit73
  %i.ap = udiv i64 9223372036854775807, %i.b
  %i.aq = icmp samesign ult i64 %i.ap, %i.a
  br i1 %i.aq, label %bb.r, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i75

bb.r:                                             ; preds = %bb.q
  %i.ar = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ar, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i75: ; preds = %bb.q, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit73
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !31
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !32
  %i.aw = mul nsw i64 %i.av, %i.at
  %.not.i.i76 = icmp eq i64 %i.h, %i.aw
  br i1 %.not.i.i76, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit79, label %bb.s

bb.s:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i75
  %i.ax = load ptr, ptr %5, align 8, !tbaa !33
  tail call void @free(ptr noundef %i.ax) #6
  %.not88 = icmp eq i64 %i.h, 0
  br i1 %.not88, label %.sink.split.i.i77, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = tail call noalias ptr @malloc(i64 noundef %i.h) #8 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.u, label %.sink.split.i.i77

bb.u:                                             ; preds = %bb.t
  %i.ba = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ba, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.ba, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

.sink.split.i.i77:                                ; preds = %bb.t, %bb.s
  %.sink.i.i78 = phi ptr [ %i.ay, %bb.t ], [ null, %bb.s ]
  store ptr %.sink.i.i78, ptr %5, align 8, !tbaa !33
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit79

_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit79: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i75, %.sink.split.i.i77
  store i64 %i.a, ptr %i.as, align 8, !tbaa !31
  store i64 %i.b, ptr %i.au, align 8, !tbaa !32
  br i1 %or.cond.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i81, label %bb.v

bb.v:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit79
  %i.bb = udiv i64 9223372036854775807, %i.b
  %i.bc = icmp samesign ult i64 %i.bb, %i.a
  br i1 %i.bc, label %bb.w, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i81

bb.w:                                             ; preds = %bb.v
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bd, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i81: ; preds = %bb.v, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit79
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !31
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !32
  %i.bi = mul nsw i64 %i.bh, %i.bf
  %.not.i.i82 = icmp eq i64 %i.h, %i.bi
  br i1 %.not.i.i82, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit85, label %bb.x

bb.x:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i81
  %i.bj = load ptr, ptr %6, align 8, !tbaa !33
  tail call void @free(ptr noundef %i.bj) #6
  %.not89 = icmp eq i64 %i.h, 0
  br i1 %.not89, label %.sink.split.i.i83, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = tail call noalias ptr @malloc(i64 noundef %i.h) #8 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.z, label %.sink.split.i.i83

bb.z:                                             ; preds = %bb.y
  %i.bm = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bm, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.bm, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

.sink.split.i.i83:                                ; preds = %bb.y, %bb.x
  %.sink.i.i84 = phi ptr [ %i.bk, %bb.y ], [ null, %bb.x ]
  store ptr %.sink.i.i84, ptr %6, align 8, !tbaa !33
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit85

_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit85: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i81, %.sink.split.i.i83
  store i64 %i.a, ptr %i.be, align 8, !tbaa !31
  store i64 %i.b, ptr %i.bg, align 8, !tbaa !32
  %i.bn = mul i32 %1, %0                          ; 2 uses
  %i.bo = shl i32 %i.bn, 2
  %i.bp = zext i32 %i.bo to i64
  %i.bq = tail call noalias ptr @calloc(i64 noundef %i.bp, i64 noundef 1) #9 ; 3 uses
  %i.br = zext i32 %i.bn to i64
  %i.bs = tail call noalias ptr @calloc(i64 noundef %i.br, i64 noundef 1) #9 ; 3 uses
  %i.bt = load ptr, ptr @glad_glReadPixels, align 8, !tbaa !13
  tail call void %i.bt(i32 noundef 0, i32 noundef 0, i32 noundef %0, i32 noundef %1, i32 noundef 6408, i32 noundef 5121, ptr noundef %i.bq)
  %i.bu = load ptr, ptr @glad_glReadPixels, align 8, !tbaa !13
  tail call void %i.bu(i32 noundef 0, i32 noundef 0, i32 noundef %0, i32 noundef %1, i32 noundef 6402, i32 noundef 5121, ptr noundef %i.bs)
  %or.cond.demorgan = or i1 %i.d, %i.c
  br i1 %or.cond.demorgan, label %._crit_edge94.split, label %.preheader

.preheader:                                       ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit85, %._crit_edge
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %._crit_edge ], [ 0, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit85 ] ; 6 uses
  %.06192 = phi i64 [ %indvars.iv.next96, %._crit_edge ], [ 0, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit85 ]
  br label %bb.aa

._crit_edge94.split:                              ; preds = %._crit_edge, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit85
  tail call void @free(ptr noundef %i.bq) #6
  tail call void @free(ptr noundef %i.bs) #6
  ret void

._crit_edge:                                      ; preds = %bb.aa
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %i.b
  br i1 %exitcond104.not, label %._crit_edge94.split, label %.preheader, !llvm.loop !27

bb.aa:                                            ; preds = %.preheader, %bb.aa
  %indvars.iv95 = phi i64 [ %.06192, %.preheader ], [ %indvars.iv.next96, %bb.aa ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.aa ] ; 6 uses
  %i.bv = shl nsw i64 %indvars.iv95, 2
  %i.bw = getelementptr inbounds i8, ptr %i.bq, i64 %i.bv ; 4 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !34
  %i.by = load ptr, ptr %2, align 8, !tbaa !33
  %i.bz = load i64, ptr %i.i, align 8, !tbaa !31
  %i.ca = mul nsw i64 %i.bz, %indvars.iv100
  %i.cb = getelementptr i8, ptr %i.by, i64 %indvars.iv
  %i.cc = getelementptr i8, ptr %i.cb, i64 %i.ca
  store i8 %i.bx, ptr %i.cc, align 1, !tbaa !34
  %i.cd = getelementptr i8, ptr %i.bw, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !34
  %i.cf = load ptr, ptr %3, align 8, !tbaa !33
  %i.cg = load i64, ptr %i.u, align 8, !tbaa !31
  %i.ch = mul nsw i64 %i.cg, %indvars.iv100
  %i.ci = getelementptr i8, ptr %i.cf, i64 %indvars.iv
  %i.cj = getelementptr i8, ptr %i.ci, i64 %i.ch
  store i8 %i.ce, ptr %i.cj, align 1, !tbaa !34
  %i.ck = getelementptr i8, ptr %i.bw, i64 2
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !34
  %i.cm = load ptr, ptr %4, align 8, !tbaa !33
  %i.cn = load i64, ptr %i.ag, align 8, !tbaa !31
  %i.co = mul nsw i64 %i.cn, %indvars.iv100
  %i.cp = getelementptr i8, ptr %i.cm, i64 %indvars.iv
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.co
  store i8 %i.cl, ptr %i.cq, align 1, !tbaa !34
  %i.cr = getelementptr i8, ptr %i.bw, i64 3
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !34
  %i.ct = load ptr, ptr %5, align 8, !tbaa !33
  %i.cu = load i64, ptr %i.as, align 8, !tbaa !31
  %i.cv = mul nsw i64 %i.cu, %indvars.iv100
  %i.cw = getelementptr i8, ptr %i.ct, i64 %indvars.iv
  %i.cx = getelementptr i8, ptr %i.cw, i64 %i.cv
  store i8 %i.cs, ptr %i.cx, align 1, !tbaa !34
  %i.cy = getelementptr inbounds i8, ptr %i.bs, i64 %indvars.iv95
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !34
  %i.da = load ptr, ptr %6, align 8, !tbaa !33
  %i.db = load i64, ptr %i.be, align 8, !tbaa !31
  %i.dc = mul nsw i64 %i.db, %indvars.iv100
  %i.dd = getelementptr i8, ptr %i.da, i64 %indvars.iv
  %i.de = getelementptr i8, ptr %i.dd, i64 %i.dc
  store i8 %i.cz, ptr %i.de, align 1, !tbaa !34
  %indvars.iv.next96 = add nsw i64 %indvars.iv95, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %bb.aa, !llvm.loop !28
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl6opengl11read_pixelsIdEEvjjRN5Eigen6MatrixIT_Lin1ELin1ELi0ELin1ELin1EEES6_S6_S6_S6_(i32 noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i32 %0 to i64                       ; 15 uses
  %i.b = zext i32 %1 to i64                       ; 9 uses
  %i.c = icmp eq i32 %0, 0                        ; 2 uses
  %i.d = icmp eq i32 %1, 0                        ; 2 uses
  %or.cond.i.i = or i1 %i.c, %i.d
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit69, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv i64 9223372036854775807, %i.b
  %i.f = icmp samesign ult i64 %i.e, %i.a
  br i1 %i.f, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit69

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.g, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit69: ; preds = %bb.b, %bb.a
  %i.h = mul nuw nsw i64 %i.b, %i.a               ; 5 uses
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.h, i64 noundef %i.a, i64 noundef %i.b)
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.h, i64 noundef %i.a, i64 noundef %i.b)
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.h, i64 noundef %i.a, i64 noundef %i.b)
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.h, i64 noundef %i.a, i64 noundef %i.b)
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.h, i64 noundef %i.a, i64 noundef %i.b)
  %i.i = mul i32 %1, %0                           ; 2 uses
  %i.j = shl i32 %i.i, 2
  %i.k = zext i32 %i.j to i64
  %i.l = tail call noalias ptr @calloc(i64 noundef %i.k, i64 noundef 4) #9 ; 5 uses
  %i.m = zext i32 %i.i to i64
  %i.n = tail call noalias ptr @calloc(i64 noundef %i.m, i64 noundef 4) #9 ; 4 uses
  %i.o = load ptr, ptr @glad_glReadPixels, align 8, !tbaa !13
  tail call void %i.o(i32 noundef 0, i32 noundef 0, i32 noundef %0, i32 noundef %1, i32 noundef 6408, i32 noundef 5126, ptr noundef %i.l)
  %i.p = load ptr, ptr @glad_glReadPixels, align 8, !tbaa !13
  tail call void %i.p(i32 noundef 0, i32 noundef 0, i32 noundef %0, i32 noundef %1, i32 noundef 6402, i32 noundef 5126, ptr noundef %i.n)
  %brmerge = or i1 %i.d, %i.c
  br i1 %brmerge, label %._crit_edge82.split, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit69
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load ptr, ptr %2, align 8, !tbaa !17     ; 3 uses
  %i.w = load i64, ptr %i.u, align 8, !tbaa !18   ; 3 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !17     ; 5 uses
  %i.y = load i64, ptr %i.t, align 8, !tbaa !18   ; 3 uses
  %i.z = load ptr, ptr %4, align 8, !tbaa !17     ; 6 uses
  %i.aa = load i64, ptr %i.s, align 8, !tbaa !18  ; 4 uses
  %i.ab = load ptr, ptr %5, align 8, !tbaa !17    ; 6 uses
  %i.ac = load i64, ptr %i.r, align 8, !tbaa !18  ; 4 uses
  %i.ad = load ptr, ptr %6, align 8, !tbaa !17    ; 6 uses
  %i.ae = load i64, ptr %i.q, align 8, !tbaa !18  ; 4 uses
  %i.af = add nsw i64 %i.b, -1                    ; 5 uses
  %i.ag = mul i64 %i.w, %i.af
  %i.ah = add i64 %i.ag, %i.a
  %i.ai = shl i64 %i.ah, 3
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.ai
  %i.aj = mul i64 %i.y, %i.af
  %i.ak = add i64 %i.aj, %i.a
  %i.al = shl i64 %i.ak, 3
  %scevgep97 = getelementptr i8, ptr %i.x, i64 %i.al ; 3 uses
  %i.am = mul i64 %i.aa, %i.af
  %i.an = add i64 %i.am, %i.a
  %i.ao = shl i64 %i.an, 3
  %scevgep98 = getelementptr i8, ptr %i.z, i64 %i.ao ; 4 uses
  %i.ap = mul i64 %i.ac, %i.af
  %i.aq = add i64 %i.ap, %i.a
  %i.ar = shl i64 %i.aq, 3
  %scevgep99 = getelementptr i8, ptr %i.ab, i64 %i.ar ; 4 uses
  %i.as = mul i64 %i.ae, %i.af
  %i.at = add i64 %i.as, %i.a
  %i.au = shl i64 %i.at, 3
  %scevgep100 = getelementptr i8, ptr %i.ad, i64 %i.au ; 4 uses
  %i.av = insertelement <4 x ptr> poison, ptr %i.v, i64 0
  %i.aw = shufflevector <4 x ptr> %i.av, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ax = insertelement <4 x ptr> poison, ptr %scevgep97, i64 0
  %i.ay = insertelement <4 x ptr> %i.ax, ptr %scevgep98, i64 1
  %i.az = insertelement <4 x ptr> %i.ay, ptr %scevgep99, i64 2
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep100, i64 3
  %i.bb = insertelement <4 x ptr> poison, ptr %i.x, i64 0
  %i.bc = insertelement <4 x ptr> %i.bb, ptr %i.z, i64 1
  %i.bd = insertelement <4 x ptr> %i.bc, ptr %i.ab, i64 2
  %i.be = insertelement <4 x ptr> %i.bd, ptr %i.ad, i64 3
  %i.bf = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.bg = shufflevector <4 x ptr> %i.bf, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bh = insertelement <2 x ptr> poison, ptr %i.ab, i64 0
  %i.bi = insertelement <2 x ptr> %i.bh, ptr %i.z, i64 1
  %i.bj = insertelement <2 x ptr> poison, ptr %scevgep97, i64 0 ; 2 uses
  %i.bk = insertelement <2 x ptr> %i.bj, ptr %scevgep99, i64 1
  %i.bl = insertelement <2 x ptr> poison, ptr %i.x, i64 0 ; 2 uses
  %i.bm = insertelement <2 x ptr> %i.bl, ptr %i.ab, i64 1
  %i.bn = insertelement <2 x ptr> poison, ptr %scevgep99, i64 0
  %i.bo = insertelement <2 x ptr> %i.bn, ptr %scevgep98, i64 1
  %i.bp = insertelement <2 x ptr> poison, ptr %i.ad, i64 0
  %i.bq = insertelement <2 x ptr> %i.bp, ptr %i.z, i64 1
  %i.br = insertelement <2 x ptr> %i.bj, ptr %scevgep100, i64 1
  %i.bs = insertelement <2 x ptr> %i.bl, ptr %i.ad, i64 1
  %i.bt = insertelement <2 x ptr> poison, ptr %scevgep100, i64 0
  %i.bu = insertelement <2 x ptr> %i.bt, ptr %scevgep98, i64 1
  %min.iters.check = icmp ult i32 %0, 22
  %i.bv = icmp ult <4 x ptr> %i.aw, %i.ba
  %i.bw = icmp ult <4 x ptr> %i.be, %i.bg
  %i.bx = and <4 x i1> %i.bv, %i.bw
  %bound0119 = icmp ult ptr %i.x, %scevgep98
  %bound1120 = icmp ult ptr %i.z, %scevgep97
  %found.conflict121 = and i1 %bound0119, %bound1120
  %i.by = icmp ult <2 x ptr> %i.bm, %i.bo
  %i.bz = icmp ult <2 x ptr> %i.bi, %i.bk
  %i.ca = icmp ult <2 x ptr> %i.bs, %i.bu
  %i.cb = icmp ult <2 x ptr> %i.bq, %i.br
  %i.cc = or i64 %i.ae, %i.y
  %i.cd = or i64 %i.ae, %i.aa
  %bound0149 = icmp ult ptr %i.ab, %scevgep100
  %bound1150 = icmp ult ptr %i.ad, %scevgep99
  %found.conflict151 = and i1 %bound0149, %bound1150
  %i.ce = bitcast <4 x i1> %i.bx to i4
  %i.cf = icmp ne i4 %i.ce, 0
  %i.cg = or i64 %i.ac, %i.cc
  %i.ch = or i64 %i.ac, %i.cd
  %i.ci = and <2 x i1> %i.bz, %i.by
  %i.cj = and <2 x i1> %i.cb, %i.ca
  %i.ck = or <2 x i1> %i.ci, %i.cj
  %i.cl = or i64 %i.aa, %i.cg
end_hunk_0
