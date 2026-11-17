Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ismember?download=true
inline.NumInlined: 598
inline.NumDeleted: 340
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.Eigen::Matrix.12" = type { %"class.Eigen::PlainObjectBase.13" }
%"class.Eigen::PlainObjectBase.13" = type { %"class.Eigen::DenseStorage.20" }
%"class.Eigen::DenseStorage.20" = type { ptr, i64 }
%"class.Eigen::Matrix.26" = type { %"class.Eigen::PlainObjectBase.27" }
%"class.Eigen::PlainObjectBase.27" = type { %"class.Eigen::DenseStorage.34" }
%"class.Eigen::DenseStorage.34" = type { ptr, i64 }

$_ZN3igl8ismemberIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IbLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EERNSE_IT2_EE = comdat any

$_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8ismemberIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IbLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EERNSE_IT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Matrix.12", align 8  ; 11 uses
  %5 = alloca %"class.Eigen::Matrix.12", align 8  ; 12 uses
  %6 = alloca %"class.Eigen::Matrix.12", align 8  ; 8 uses
  %7 = alloca %"class.Eigen::Matrix.12", align 8  ; 8 uses
  %8 = alloca %"class.Eigen::Matrix.26", align 8  ; 7 uses
  %9 = alloca %"class.Eigen::Matrix.26", align 8  ; 8 uses
  %10 = alloca %"class.Eigen::Matrix.26", align 8 ; 8 uses
  %11 = alloca %"class.Eigen::Matrix.26", align 8 ; 7 uses
  %12 = alloca %"class.Eigen::Matrix.12", align 8 ; 9 uses
  %13 = alloca %"class.Eigen::Matrix.12", align 8 ; 9 uses
  %14 = alloca %"class.Eigen::Matrix.26", align 8 ; 8 uses
  %15 = alloca %"class.Eigen::Matrix.26", align 8 ; 8 uses
  %16 = alloca %"class.Eigen::Matrix.12", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14   ; 4 uses
  %i.e = icmp eq i64 %i.b, 0
  %i.f = icmp eq i64 %i.d, 0
  %or.cond.i.i = or i1 %i.e, %i.f
  br i1 %or.cond.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 9223372036854775807, %i.d
  %i.h = icmp sgt i64 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.j = mul nsw i64 %i.d, %i.b                   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !33
  %i.o = mul nsw i64 %i.n, %i.l
  %.not.i.i.i = icmp eq i64 %i.j, %i.o
  br i1 %.not.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS1_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS_9EigenBaseIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i
  %i.p = load ptr, ptr %2, align 8, !tbaa !34
  tail call void @free(ptr noundef %i.p) #13
  %i.q = icmp sgt i64 %i.j, 0
  br i1 %i.q, label %bb.e, label %.sink.split.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.j) #15 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %.sink.split.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.t = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.t, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

.sink.split.i.i.i:                                ; preds = %bb.e, %bb.d
  %.sink.i.i.i = phi ptr [ %i.r, %bb.e ], [ null, %bb.d ]
  store ptr %.sink.i.i.i, ptr %2, align 8, !tbaa !34
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS1_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS_9EigenBaseIT_EE.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS1_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i, %.sink.split.i.i.i
  store i64 %i.b, ptr %i.k, align 8, !tbaa !32
  store i64 %i.d, ptr %i.m, align 8, !tbaa !33
  %i.u = icmp slt i64 %i.j, 1
  br i1 %i.u, label %_ZN5Eigen9DenseBaseINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKb.exit, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS1_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.v = load ptr, ptr %2, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.v, i8 0, i64 %i.j, i1 false), !tbaa !36
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKb.exit

_ZN5Eigen9DenseBaseINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKb.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS1_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS_9EigenBaseIT_EE.exit, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %i.w = load i64, ptr %i.a, align 8, !tbaa !13   ; 4 uses
  %i.x = load i64, ptr %i.c, align 8, !tbaa !14   ; 4 uses
  %i.y = icmp eq i64 %i.w, 0
  %i.z = icmp eq i64 %i.x, 0
  %or.cond.i.i96 = or i1 %i.y, %i.z
  br i1 %or.cond.i.i96, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKb.exit
  %i.aa = sdiv i64 9223372036854775807, %i.x
  %i.ab = icmp sgt i64 %i.w, %i.aa
  br i1 %i.ab, label %bb.h, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ac, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIbLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKb.exit, %bb.g
  %i.ad = mul nsw i64 %i.x, %i.w
  tail call void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.ad, i64 noundef %i.w, i64 noundef %i.x)
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !14
  %i.ai = mul nsw i64 %i.ah, %i.af                ; 2 uses
  %i.aj = icmp slt i64 %i.ai, 1
  br i1 %i.aj, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit.loopexit

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit.loopexit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit
  %i.ak = load ptr, ptr %3, align 8, !tbaa !17
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ai, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ak, i8 -1, i64 %.idx.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !37
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit.loopexit, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit
  %i.al = load i64, ptr %i.a, align 8, !tbaa !13  ; 4 uses
  %i.am = load i64, ptr %i.c, align 8, !tbaa !14  ; 4 uses
  %i.an = mul i64 %i.am, %i.al                    ; 10 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.ag, label %bb.i

bb.i:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !14
  %i.at = mul nsw i64 %i.as, %i.aq
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.ag, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.av = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.aw = or i64 %i.am, %i.al
  %or.cond.i.i.i.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %or.cond.i.i.i.i.i.i.i, label %thread-pre-split.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not8.i.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.al, 0
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i, %.not8.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = sdiv i64 9223372036854775807, %i.am
  %i.ay = icmp sgt i64 %i.al, %i.ax
  br i1 %i.ay, label %.noexc.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %bb.l
  %i.az = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.az, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.az, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.l
  %i.ba = icmp sgt i64 %i.an, 0
  br i1 %i.ba, label %bb.m, label %_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit.thread

_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit.thread: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i
  %.nonneg199 = sub i64 0, %i.an
  %i.bb = and i64 %.nonneg199, -4
  %i.bc = sub i64 0, %i.bb
  br label %._crit_edge.i.i.i.i.i.i.i

bb.m:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i
  %i.bd = icmp samesign ugt i64 %i.an, 4611686018427387903
  br i1 %i.bd, label %.noexc, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

.noexc:                                           ; preds = %bb.m
  %i.be = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.be, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.be, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.m
  %i.bf = shl nuw i64 %i.an, 2
  %i.bg = tail call noalias ptr @malloc(i64 noundef %i.bf) #15 ; 4 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %.noexc144, label %_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit

.noexc144:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.bi = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bi, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.bi, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.bj = and i64 %i.an, 4611686018427387900      ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.an, 3
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit
  %17 = tail call i64 @llvm.usub.sat.i64(i64 %i.bj, i64 4)
  %i.bl = shl nuw i64 %17, 2
  %18 = add nuw i64 %i.bl, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.bg, ptr noundef nonnull align 16 dereferenceable(1) %i.av, i64 %18, i1 false), !tbaa !38
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit.thread, %_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit
  %i.bm = phi i64 [ %i.bc, %_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit.thread ], [ %i.bj, %_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit ], [ %i.bj, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.sink.i196 = phi ptr [ null, %_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit.thread ], [ %i.bg, %_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit ], [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.bn = icmp slt i64 %i.bm, %i.an
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %thread-pre-split.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.bo = shl i64 %i.bm, 2                        ; 2 uses
  %scevgep = getelementptr i8, ptr %.sink.i196, i64 %i.bo
  %scevgep225 = getelementptr i8, ptr %i.av, i64 %i.bo
  %i.bp = sub i64 %i.an, %i.bm
  %i.bq = shl i64 %i.bp, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep, ptr align 4 %scevgep225, i64 %i.bq, i1 false), !tbaa !37
  br label %thread-pre-split.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i:                     ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.sroa.0181.0 = phi ptr [ null, %bb.j ], [ %.sink.i196, %._crit_edge.i.i.i.i.i.i.i ], [ %.sink.i196, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 10 uses
  %.sroa.0181.0285 = ptrtoaddr ptr %.sroa.0181.0 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.an, i64 noundef 1)
          to label %bb.n unwind label %.body

bb.n:                                             ; preds = %thread-pre-split.i.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pr.i.i.i.i.i.i = load i64, ptr %i.br, align 8, !tbaa !19 ; 7 uses
  %.pre.i98 = load ptr, ptr %4, align 8, !tbaa !20 ; 8 uses
  %.pre.i98284 = ptrtoaddr ptr %.pre.i98 to i64
  %i.bs = sdiv i64 %.pr.i.i.i.i.i.i, 4
  %i.bt = shl nsw i64 %i.bs, 2                    ; 6 uses
  %i.bu = icmp sgt i64 %.pr.i.i.i.i.i.i, 3
  br i1 %i.bu, label %.lr.ph.i.i.i.i.i.i.i103, label %._crit_edge.i.i.i.i.i.i.i99

._crit_edge.i.i.i.i.i.i.i99:                      ; preds = %.lr.ph.i.i.i.i.i.i.i103, %bb.n
  %i.bv = icmp slt i64 %i.bt, %.pr.i.i.i.i.i.i
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i.i.i.i100.preheader, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEEEERKT_.exit

.lr.ph.i.i.i.i.i.i.i.i100.preheader:              ; preds = %._crit_edge.i.i.i.i.i.i.i99
  %i.bw = sub i64 %.pr.i.i.i.i.i.i, %i.bt         ; 3 uses
  %min.iters.check = icmp ult i64 %i.bw, 8
  %i.bx = sub i64 %.sroa.0181.0285, %.pre.i98284
  %diff.check = icmp ugt i64 %i.bx, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i100.preheader302, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i100.preheader
  %n.vec = and i64 %i.bw, -8                      ; 3 uses
  %i.by = add i64 %i.bt, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bz = add i64 %i.bt, %index                   ; 2 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %.pre.i98, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %.sroa.0181.0, i64 %i.bz ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %wide.load = load <4 x i32>, ptr %i.cb, align 4, !tbaa !37
  %wide.load286 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !37
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <4 x i32> %wide.load, ptr %i.ca, align 4, !tbaa !37
  store <4 x i32> %wide.load286, ptr %i.cd, align 4, !tbaa !37
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEEEERKT_.exit, label %.lr.ph.i.i.i.i.i.i.i.i100.preheader302

.lr.ph.i.i.i.i.i.i.i.i100.preheader302:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i100.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i101.ph = phi i64 [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i100.preheader ], [ %i.by, %middle.block ] ; 4 uses
  %i.cf = sub i64 %.pr.i.i.i.i.i.i, %.05.i.i.i.i.i.i.i.i101.ph
  %xtraiter = and i64 %i.cf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i100.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i100.prol

.lr.ph.i.i.i.i.i.i.i.i100.prol:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i100.preheader302, %.lr.ph.i.i.i.i.i.i.i.i100.prol
  %.05.i.i.i.i.i.i.i.i101.prol = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.i100.prol ], [ %.05.i.i.i.i.i.i.i.i101.ph, %.lr.ph.i.i.i.i.i.i.i.i100.preheader302 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i100.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i100.preheader302 ]
  %i.cg = getelementptr inbounds [4 x i8], ptr %.pre.i98, i64 %.05.i.i.i.i.i.i.i.i101.prol
  %i.ch = getelementptr inbounds [4 x i8], ptr %.sroa.0181.0, i64 %.05.i.i.i.i.i.i.i.i101.prol
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !37
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !37
  %i.cj = add nsw i64 %.05.i.i.i.i.i.i.i.i101.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i100.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i100.prol, !llvm.loop !22

.lr.ph.i.i.i.i.i.i.i.i100.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i100.prol, %.lr.ph.i.i.i.i.i.i.i.i100.preheader302
  %.05.i.i.i.i.i.i.i.i101.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i101.ph, %.lr.ph.i.i.i.i.i.i.i.i100.preheader302 ], [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.i100.prol ]
  %i.ck = sub i64 %.05.i.i.i.i.i.i.i.i101.ph, %.pr.i.i.i.i.i.i
  %i.cl = icmp ugt i64 %i.ck, -4
  br i1 %i.cl, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEEEERKT_.exit, label %.lr.ph.i.i.i.i.i.i.i.i100

.lr.ph.i.i.i.i.i.i.i.i100:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i100.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i100
  %.05.i.i.i.i.i.i.i.i101 = phi i64 [ %i.db, %.lr.ph.i.i.i.i.i.i.i.i100 ], [ %.05.i.i.i.i.i.i.i.i101.unr, %.lr.ph.i.i.i.i.i.i.i.i100.prol.loopexit ] ; 6 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %.pre.i98, i64 %.05.i.i.i.i.i.i.i.i101
  %i.cn = getelementptr inbounds [4 x i8], ptr %.sroa.0181.0, i64 %.05.i.i.i.i.i.i.i.i101
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !37
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !37
  %i.cp = add nsw i64 %.05.i.i.i.i.i.i.i.i101, 1  ; 2 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %.pre.i98, i64 %i.cp
  %i.cr = getelementptr inbounds [4 x i8], ptr %.sroa.0181.0, i64 %i.cp
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !37
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !37
  %i.ct = add nsw i64 %.05.i.i.i.i.i.i.i.i101, 2  ; 2 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %.pre.i98, i64 %i.ct
  %i.cv = getelementptr inbounds [4 x i8], ptr %.sroa.0181.0, i64 %i.ct
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !37
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !37
  %i.cx = add nsw i64 %.05.i.i.i.i.i.i.i.i101, 3  ; 2 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %.pre.i98, i64 %i.cx
  %i.cz = getelementptr inbounds [4 x i8], ptr %.sroa.0181.0, i64 %i.cx
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !37
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !37
  %i.db = add nsw i64 %.05.i.i.i.i.i.i.i.i101, 4  ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i102.3 = icmp eq i64 %i.db, %.pr.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i102.3, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEEEERKT_.exit, label %.lr.ph.i.i.i.i.i.i.i.i100, !llvm.loop !23

.lr.ph.i.i.i.i.i.i.i103:                          ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i103
  %.011.i.i.i.i.i.i.i104 = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i.i.i103 ], [ 0, %bb.n ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i98, i64 %.011.i.i.i.i.i.i.i104
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0181.0, i64 %.011.i.i.i.i.i.i.i104
  %i.de = load <2 x i64>, ptr %i.dd, align 1, !tbaa !38
  store <2 x i64> %i.de, ptr %i.dc, align 16, !tbaa !38
  %i.df = add nuw nsw i64 %.011.i.i.i.i.i.i.i104, 4 ; 2 uses
  %i.dg = icmp slt i64 %i.df, %i.bt
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i.i.i103, label %._crit_edge.i.i.i.i.i.i.i99, !llvm.loop !24

.body:                                            ; preds = %thread-pre-split.i.i.i.i.i.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = load ptr, ptr %4, align 8, !tbaa !20
  call void @free(ptr noundef %i.di) #13
  br label %common.resume

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEEEERKT_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i100.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i100, %middle.block, %._crit_edge.i.i.i.i.i.i.i99
  call void @free(ptr noundef %.sroa.0181.0) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.dj = load ptr, ptr %1, align 8, !tbaa !17    ; 2 uses
  %i.dk = load i64, ptr %i.ap, align 8, !tbaa !13 ; 3 uses
  %i.dl = load i64, ptr %i.ar, align 8, !tbaa !14 ; 3 uses
  %.not.i.i.i.i.i.i.i105 = icmp eq i64 %i.dk, 0   ; 2 uses
  %.not8.i.i.i.i.i.i.i106 = icmp eq i64 %i.dl, 0  ; 2 uses
  %or.cond.i.i.i.i.i.i.i107 = select i1 %.not.i.i.i.i.i.i.i105, i1 %.not8.i.i.i.i.i.i.i106, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i107, label %.loopexit202.thread, label %bb.o

.loopexit202.thread:                              ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEEEERKT_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br label %.loopexit

bb.o:                                             ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEEEERKT_.exit
  %or.cond.i.i.i.i.i.i.i.i.i108 = or i1 %.not.i.i.i.i.i.i.i105, %.not8.i.i.i.i.i.i.i106
  br i1 %or.cond.i.i.i.i.i.i.i.i.i108, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i109, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dm = sdiv i64 9223372036854775807, %i.dl
  %i.dn = icmp sgt i64 %i.dk, %i.dm
  br i1 %i.dn, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i109

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i109: ; preds = %bb.p, %bb.o
  %i.do = mul i64 %i.dl, %i.dk                    ; 10 uses
  %i.dp = icmp sgt i64 %i.do, 0
  br i1 %i.dp, label %bb.q, label %_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit151.thread

bb.q:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i109
  %i.dq = icmp samesign ugt i64 %i.do, 4611686018427387903
  br i1 %i.dq, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i148

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i148: ; preds = %bb.q
  %i.dr = shl nuw i64 %i.do, 2
  %i.ds = call noalias ptr @malloc(i64 noundef %i.dr) #15 ; 4 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %.invoke, label %_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit151

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i148, %bb.q, %bb.p
  %i.du = call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.du, align 8, !tbaa !16
  invoke void @__cxa_throw(ptr nonnull %i.du, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
          to label %.cont unwind label %bb.r

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit151.thread: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i109
  %.nonneg = sub i64 0, %i.do
  %i.dv = and i64 %.nonneg, -4
  %i.dw = sub i64 0, %i.dv
  br label %._crit_edge.i.i.i.i.i.i.i113

_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit151: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i148
  %i.dx = and i64 %i.do, 4611686018427387900      ; 3 uses
  %i.dy = icmp samesign ugt i64 %i.do, 3
  br i1 %i.dy, label %.lr.ph.i.i.i.i.i.i.i117.preheader, label %._crit_edge.i.i.i.i.i.i.i113

.lr.ph.i.i.i.i.i.i.i117.preheader:                ; preds = %_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit151
  %19 = call i64 @llvm.usub.sat.i64(i64 %i.dx, i64 4)
  %i.dz = shl nuw i64 %19, 2
  %20 = add nuw i64 %i.dz, 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ds, ptr noundef nonnull align 16 dereferenceable(1) %i.dj, i64 %20, i1 false), !tbaa !38
  br label %._crit_edge.i.i.i.i.i.i.i113

._crit_edge.i.i.i.i.i.i.i113:                     ; preds = %.lr.ph.i.i.i.i.i.i.i117.preheader, %_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit151.thread, %_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit151
  %i.ea = phi i64 [ %i.dw, %_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit151.thread ], [ %i.dx, %_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit151 ], [ %i.dx, %.lr.ph.i.i.i.i.i.i.i117.preheader ] ; 3 uses
  %.sroa.0170.1198 = phi ptr [ null, %_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit151.thread ], [ %i.ds, %_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit151 ], [ %i.ds, %.lr.ph.i.i.i.i.i.i.i117.preheader ] ; 9 uses
  %i.eb = icmp slt i64 %i.ea, %i.do
  br i1 %i.eb, label %.lr.ph.i.i.i.i.i.i.i.i114.preheader, label %.loopexit202

.lr.ph.i.i.i.i.i.i.i.i114.preheader:              ; preds = %._crit_edge.i.i.i.i.i.i.i113
  %i.ec = shl i64 %i.ea, 2                        ; 2 uses
  %scevgep229.a = getelementptr i8, ptr %.sroa.0170.1198, i64 %i.ec
  %scevgep230 = getelementptr i8, ptr %i.dj, i64 %i.ec
  %i.ed = sub i64 %i.do, %i.ea
  %i.ee = shl i64 %i.ed, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep229.a, ptr align 4 %scevgep230, i64 %i.ee, i1 false), !tbaa !37
  br label %.loopexit202

bb.r:                                             ; preds = %.invoke
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.body121

.loopexit202:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i114.preheader, %._crit_edge.i.i.i.i.i.i.i113
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.not.i.i.i.i.i.i.i124 = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.i.i.i.i.i124, label %.loopexit, label %thread-pre-split.i.i.i.i.i.i125

thread-pre-split.i.i.i.i.i.i125:                  ; preds = %.loopexit202
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %i.do, i64 noundef 1)
          to label %bb.s unwind label %.body134

bb.s:                                             ; preds = %thread-pre-split.i.i.i.i.i.i125
  %.pr.i.i.i.i.i.i126 = load i64, ptr %i.eg, align 8, !tbaa !19 ; 5 uses
  %.pre.i127 = load ptr, ptr %5, align 8, !tbaa !20 ; 3 uses
  %i.eh = sdiv i64 %.pr.i.i.i.i.i.i126, 4
  %i.ei = shl nsw i64 %i.eh, 2                    ; 6 uses
  %i.ej = icmp sgt i64 %.pr.i.i.i.i.i.i126, 3
  br i1 %i.ej, label %.lr.ph.i.i.i.i.i.i.i132, label %._crit_edge.i.i.i.i.i.i.i128

._crit_edge.i.i.i.i.i.i.i128:                     ; preds = %.lr.ph.i.i.i.i.i.i.i132, %bb.s
  %i.ek = icmp slt i64 %i.ei, %.pr.i.i.i.i.i.i126
  br i1 %i.ek, label %.lr.ph.i.i.i.i.i.i.i.i129.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i129.preheader:              ; preds = %._crit_edge.i.i.i.i.i.i.i128
  %i.el = sub i64 %.pr.i.i.i.i.i.i126, %i.ei      ; 3 uses
  %min.iters.check288 = icmp ult i64 %i.el, 8
  br i1 %min.iters.check288, label %.lr.ph.i.i.i.i.i.i.i.i129.preheader301, label %vector.ph289

vector.ph289:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i129.preheader
  %n.vec290 = and i64 %i.el, -8                   ; 3 uses
  %i.em = add i64 %i.ei, %n.vec290
  br label %vector.body291

vector.body291:                                   ; preds = %vector.body291, %vector.ph289
  %index292 = phi i64 [ 0, %vector.ph289 ], [ %index.next295, %vector.body291 ] ; 2 uses
  %i.en = add i64 %i.ei, %index292                ; 2 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr %.pre.i127, i64 %i.en ; 2 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %.sroa.0170.1198, i64 %i.en ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %wide.load293.a = load <4 x i32>, ptr %i.ep, align 4, !tbaa !37
  %wide.load294 = load <4 x i32>, ptr %i.eq, align 4, !tbaa !37
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store <4 x i32> %wide.load293.a, ptr %i.eo, align 4, !tbaa !37
  store <4 x i32> %wide.load294, ptr %i.er, align 4, !tbaa !37
  %index.next295 = add nuw i64 %index292, 8       ; 2 uses
  %i.es = icmp eq i64 %index.next295, %n.vec290
  br i1 %i.es, label %middle.block296, label %vector.body291, !llvm.loop !25

middle.block296:                                  ; preds = %vector.body291
  %cmp.n297 = icmp eq i64 %i.el, %n.vec290
  br i1 %cmp.n297, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i129.preheader301

.lr.ph.i.i.i.i.i.i.i.i129.preheader301:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i129.preheader, %middle.block296
  %.05.i.i.i.i.i.i.i.i130.ph = phi i64 [ %i.ei, %.lr.ph.i.i.i.i.i.i.i.i129.preheader ], [ %i.em, %middle.block296 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i129

.lr.ph.i.i.i.i.i.i.i.i129:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i129.preheader301, %.lr.ph.i.i.i.i.i.i.i.i129
  %.05.i.i.i.i.i.i.i.i130 = phi i64 [ %i.ew, %.lr.ph.i.i.i.i.i.i.i.i129 ], [ %.05.i.i.i.i.i.i.i.i130.ph, %.lr.ph.i.i.i.i.i.i.i.i129.preheader301 ] ; 3 uses
  %i.et = getelementptr inbounds [4 x i8], ptr %.pre.i127, i64 %.05.i.i.i.i.i.i.i.i130
  %i.eu = getelementptr inbounds [4 x i8], ptr %.sroa.0170.1198, i64 %.05.i.i.i.i.i.i.i.i130
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !37
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !37
  %i.ew = add nsw i64 %.05.i.i.i.i.i.i.i.i130, 1  ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i131 = icmp eq i64 %i.ew, %.pr.i.i.i.i.i.i126
  br i1 %exitcond.not.i.i.i.i.i.i.i.i131, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i129, !llvm.loop !26

.lr.ph.i.i.i.i.i.i.i132:                          ; preds = %bb.s, %.lr.ph.i.i.i.i.i.i.i132
  %.011.i.i.i.i.i.i.i133 = phi i64 [ %i.fa, %.lr.ph.i.i.i.i.i.i.i132 ], [ 0, %bb.s ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.pre.i127, i64 %.011.i.i.i.i.i.i.i133
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0170.1198, i64 %.011.i.i.i.i.i.i.i133
  %i.ez = load <2 x i64>, ptr %i.ey, align 1, !tbaa !38
  store <2 x i64> %i.ez, ptr %i.ex, align 16, !tbaa !38
  %i.fa = add nuw nsw i64 %.011.i.i.i.i.i.i.i133, 4 ; 2 uses
  %i.fb = icmp slt i64 %i.fa, %i.ei
  br i1 %i.fb, label %.lr.ph.i.i.i.i.i.i.i132, label %._crit_edge.i.i.i.i.i.i.i128, !llvm.loop !24

.body134:                                         ; preds = %thread-pre-split.i.i.i.i.i.i125
  %i.fc = landingpad { ptr, i32 }
          cleanup
  %i.fd = load ptr, ptr %5, align 8, !tbaa !20
  call void @free(ptr noundef %i.fd) #13
  call void @free(ptr noundef %.sroa.0170.1198) #13
  br label %.body121

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i129, %middle.block296, %.loopexit202.thread, %._crit_edge.i.i.i.i.i.i.i128, %.loopexit202
  %.sroa.0170.0276 = phi ptr [ null, %.loopexit202.thread ], [ %.sroa.0170.1198, %.loopexit202 ], [ %.sroa.0170.1198, %._crit_edge.i.i.i.i.i.i.i128 ], [ %.sroa.0170.1198, %middle.block296 ], [ %.sroa.0170.1198, %.lr.ph.i.i.i.i.i.i.i.i129 ]
  call void @free(ptr noundef %.sroa.0170.0276) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl6uniqueIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS2_IlLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.t unwind label %bb.aa

bb.t:                                             ; preds = %.loopexit
  invoke void @_ZN3igl6uniqueIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS2_IlLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.u unwind label %bb.aa

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl4sortIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS2_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_9DenseBaseIT_EEibRNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %6, i32 noundef 1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.v unwind label %bb.ab

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN3igl4sortIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS2_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_9DenseBaseIT_EEibRNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, i32 noundef 1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.fe = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !19 ; 6 uses
  %i.fg = icmp sgt i64 %i.ff, 0
  br i1 %i.fg, label %bb.x, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  %calloc = call ptr @calloc(i64 1, i64 %i.ff)    ; 2 uses
  %i.fh = icmp eq ptr %calloc, null
  br i1 %i.fh, label %bb.y, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.fi = call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fi, align 8, !tbaa !16
  invoke void @__cxa_throw(ptr nonnull %i.fi, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
          to label %.noexc.i.i unwind label %bb.ab

.noexc.i.i:                                       ; preds = %bb.y
  unreachable

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.x, %bb.w
  %.sroa.0164.0 = phi ptr [ null, %bb.w ], [ %calloc, %bb.x ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.ff, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i unwind label %.body142

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !19
  %.not.i.i.i.i.i.i.i139 = icmp eq i64 %i.fk, %i.ff
  br i1 %.not.i.i.i.i.i.i.i139, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.ff, i64 noundef 1)
          to label %.noexc.i.i140 unwind label %.body142

.noexc.i.i140:                                    ; preds = %bb.z
  %.pr.i.i.i.i.i.i141 = load i64, ptr %i.fj, align 8, !tbaa !19
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i140, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  %i.fl = phi i64 [ %i.ff, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i ], [ %.pr.i.i.i.i.i.i141, %.noexc.i.i140 ] ; 2 uses
  %i.fm = icmp slt i64 %i.fl, 1
  br i1 %i.fm, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit.loopexit

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit.loopexit: ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i
  %i.fn = load ptr, ptr %16, align 8, !tbaa !20
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.fl, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fn, i8 -1, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !37
  br label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit

.body142:                                         ; preds = %bb.z, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %i.fo = landingpad { ptr, i32 }
          cleanup
  %i.fp = load ptr, ptr %16, align 8, !tbaa !20
  call void @free(ptr noundef %i.fp) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @free(ptr noundef %.sroa.0164.0) #13
  br label %.body137

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit.loopexit, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i
  %i.fq = load i64, ptr %i.fe, align 8, !tbaa !19 ; 2 uses
  %i.fr = icmp sgt i64 %i.fq, 0
  %.pre240.pre241 = load ptr, ptr %16, align 8    ; 2 uses
  br i1 %i.fr, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit
  %i.fs = load ptr, ptr %12, align 8
  %i.ft = load ptr, ptr %13, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fv = load ptr, ptr %14, align 8
  %i.fw = load ptr, ptr %15, align 8
  %i.fx = load ptr, ptr %10, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge95
  %indvars.iv234 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next235, %.critedge95 ] ; 3 uses
  %.042214 = phi i1 [ false, %.preheader.lr.ph ], [ %.1205, %.critedge95 ]
  %.043213 = phi i32 [ 0, %.preheader.lr.ph ], [ %.144207, %.critedge95 ] ; 2 uses
  br i1 %.042214, label %.critedge95, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv234
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !37 ; 2 uses
  %i.ga = load i64, ptr %i.fu, align 8
  %i.gb = sext i32 %.043213 to i64
  br label %bb.ac

bb.aa:                                            ; preds = %bb.t, %.loopexit
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ab:                                            ; preds = %bb.y, %bb.v, %bb.u
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %.body137

bb.ac:                                            ; preds = %.lr.ph, %bb.ad
  %indvars.iv = phi i64 [ %i.gb, %.lr.ph ], [ %indvars.iv.next, %bb.ad ] ; 4 uses
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %indvars.iv
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !37 ; 2 uses
  %i.gg = icmp sgt i32 %i.fz, %i.gf
  br i1 %i.gg, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %.not = icmp sgt i64 %i.ga, %indvars.iv.next
  br i1 %.not, label %bb.ac, label %.critedge95.loopexit, !llvm.loop !27

.critedge:                                        ; preds = %bb.ac
  %i.gh = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.gi = icmp eq i32 %i.fz, %i.gf
  br i1 %i.gi, label %bb.ae, label %.critedge95

bb.ae:                                            ; preds = %.critedge
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv234
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !43 ; 2 uses
  %i.gl = getelementptr inbounds i8, ptr %.sroa.0164.0, i64 %i.gk
  store i8 1, ptr %i.gl, align 1, !tbaa !36
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %indvars.iv
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !43
  %i.go = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.gn
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !43
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = getelementptr inbounds [4 x i8], ptr %.pre240.pre241, i64 %i.gk
  store i32 %i.gq, ptr %i.gr, align 4, !tbaa !37
  br label %.critedge95

.critedge95.loopexit:                             ; preds = %bb.ad
  %i.gs = trunc nsw i64 %indvars.iv.next to i32
  br label %.critedge95

.critedge95:                                      ; preds = %.critedge95.loopexit, %.preheader, %.critedge, %bb.ae
  %.144207 = phi i32 [ %i.gh, %bb.ae ], [ %i.gh, %.critedge ], [ %.043213, %.preheader ], [ %i.gs, %.critedge95.loopexit ]
  %.1205 = phi i1 [ false, %bb.ae ], [ false, %.critedge ], [ true, %.preheader ], [ true, %.critedge95.loopexit ]
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next235, %i.fq
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.preheader, !llvm.loop !28

._crit_edge.loopexit:                             ; preds = %.critedge95
  %.pre240.pre = load ptr, ptr %16, align 8, !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit
  %.pre = phi ptr [ %.pre240.pre, %._crit_edge.loopexit ], [ %.pre240.pre241, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit ] ; 4 uses
  %i.gt = load ptr, ptr %2, align 8, !tbaa !34    ; 3 uses
  %i.gu = load ptr, ptr %3, align 8, !tbaa !17    ; 3 uses
  %i.gv = load i64, ptr %i.a, align 8, !tbaa !13
  %i.gw = load i64, ptr %i.c, align 8, !tbaa !14
  %i.gx = mul nsw i64 %i.gw, %i.gv                ; 5 uses
  %i.gy = icmp sgt i64 %i.gx, 0
  br i1 %i.gy, label %.lr.ph218, label %._crit_edge219

.lr.ph218:                                        ; preds = %._crit_edge
  %i.gz = load ptr, ptr %9, align 8, !tbaa !46    ; 3 uses
  %xtraiter303 = and i64 %i.gx, 1
  %i.ha = icmp eq i64 %i.gx, 1
  br i1 %i.ha, label %.epil.preheader, label %.lr.ph218.new

.lr.ph218.new:                                    ; preds = %.lr.ph218
  %unroll_iter = and i64 %i.gx, 9223372036854775806
  br label %bb.af

._crit_edge219.loopexit.unr-lcssa:                ; preds = %bb.af
  %lcmp.mod304.not = icmp eq i64 %xtraiter303, 0
  br i1 %lcmp.mod304.not, label %._crit_edge219, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge219.loopexit.unr-lcssa, %.lr.ph218
  %indvars.iv236.epil.init = phi i64 [ 0, %.lr.ph218 ], [ %indvars.iv.next237.1, %._crit_edge219.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod305 = trunc i64 %i.gx to i1
  call void @llvm.assume(i1 %lcmp.mod305)
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv236.epil.init
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !43 ; 2 uses
  %i.hd = getelementptr inbounds i8, ptr %.sroa.0164.0, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !36, !range !47, !noundef !48
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv236.epil.init
  store i8 %i.he, ptr %i.hf, align 1, !tbaa !36
  %i.hg = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.hc
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !37
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv236.epil.init
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !37
  br label %._crit_edge219

._crit_edge219:                                   ; preds = %.epil.preheader, %._crit_edge219.loopexit.unr-lcssa, %._crit_edge
  call void @free(ptr noundef %.pre) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @free(ptr noundef %.sroa.0164.0) #13
  %i.hj = load ptr, ptr %15, align 8, !tbaa !46
  call void @free(ptr noundef %i.hj) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  %i.hk = load ptr, ptr %14, align 8, !tbaa !46
  call void @free(ptr noundef %i.hk) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  %i.hl = load ptr, ptr %13, align 8, !tbaa !20
  call void @free(ptr noundef %i.hl) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  %i.hm = load ptr, ptr %12, align 8, !tbaa !20
  call void @free(ptr noundef %i.hm) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  %i.hn = load ptr, ptr %11, align 8, !tbaa !46
  call void @free(ptr noundef %i.hn) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %i.ho = load ptr, ptr %10, align 8, !tbaa !46
  call void @free(ptr noundef %i.ho) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  %i.hp = load ptr, ptr %9, align 8, !tbaa !46
  call void @free(ptr noundef %i.hp) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %i.hq = load ptr, ptr %8, align 8, !tbaa !46
  call void @free(ptr noundef %i.hq) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.hr = load ptr, ptr %7, align 8, !tbaa !20
  call void @free(ptr noundef %i.hr) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.hs = load ptr, ptr %6, align 8, !tbaa !20
  call void @free(ptr noundef %i.hs) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.ht = load ptr, ptr %5, align 8, !tbaa !20
  call void @free(ptr noundef %i.ht) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.hu = load ptr, ptr %4, align 8, !tbaa !20
  call void @free(ptr noundef %i.hu) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.ag

bb.af:                                            ; preds = %bb.af, %.lr.ph218.new
  %indvars.iv236 = phi i64 [ 0, %.lr.ph218.new ], [ %indvars.iv.next237.1, %bb.af ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph218.new ], [ %niter.next.1, %bb.af ]
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv236
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !43 ; 2 uses
  %i.hx = getelementptr inbounds i8, ptr %.sroa.0164.0, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !36, !range !47, !noundef !48
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv236
  store i8 %i.hy, ptr %i.hz, align 1, !tbaa !36
  %i.ia = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.hw
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !37
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv236
  store i32 %i.ib, ptr %i.ic, align 4, !tbaa !37
  %indvars.iv.next237 = or disjoint i64 %indvars.iv236, 1 ; 3 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv.next237
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !43 ; 2 uses
  %i.if = getelementptr inbounds i8, ptr %.sroa.0164.0, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !36, !range !47, !noundef !48
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.next237
  store i8 %i.ig, ptr %i.ih, align 1, !tbaa !36
  %i.ii = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.ie
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !37
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.next237
  store i32 %i.ij, ptr %i.ik, align 4, !tbaa !37
  %indvars.iv.next237.1 = add nuw nsw i64 %indvars.iv236, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge219.loopexit.unr-lcssa, label %bb.af, !llvm.loop !29

bb.ag:                                            ; preds = %bb.i, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit, %._crit_edge219
  ret void

.body137:                                         ; preds = %.body142, %bb.ab
  %.pn77.pn.pn.pn = phi { ptr, i32 } [ %i.gd, %bb.ab ], [ %i.fo, %.body142 ]
  %i.il = load ptr, ptr %15, align 8, !tbaa !46
  call void @free(ptr noundef %i.il) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  %i.im = load ptr, ptr %14, align 8, !tbaa !46
  call void @free(ptr noundef %i.im) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  %i.in = load ptr, ptr %13, align 8, !tbaa !20
  call void @free(ptr noundef %i.in) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  %i.io = load ptr, ptr %12, align 8, !tbaa !20
  call void @free(ptr noundef %i.io) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %bb.ah

bb.ah:                                            ; preds = %.body137, %bb.aa
  %.pn77.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn.pn, %.body137 ], [ %i.gc, %bb.aa ]
  %i.ip = load ptr, ptr %11, align 8, !tbaa !46
  call void @free(ptr noundef %i.ip) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %i.iq = load ptr, ptr %10, align 8, !tbaa !46
  call void @free(ptr noundef %i.iq) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  %i.ir = load ptr, ptr %9, align 8, !tbaa !46
  call void @free(ptr noundef %i.ir) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %i.is = load ptr, ptr %8, align 8, !tbaa !46
  call void @free(ptr noundef %i.is) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.it = load ptr, ptr %7, align 8, !tbaa !20
  call void @free(ptr noundef %i.it) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.iu = load ptr, ptr %6, align 8, !tbaa !20
  call void @free(ptr noundef %i.iu) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.iv = load ptr, ptr %5, align 8, !tbaa !20
  call void @free(ptr noundef %i.iv) #13
  br label %.body121

.body121:                                         ; preds = %.body134, %bb.r, %bb.ah
  %.pn77.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ah ], [ %i.fc, %.body134 ], [ %i.ef, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.iw = load ptr, ptr %4, align 8, !tbaa !20
  br label %common.resume

common.resume:                                    ; preds = %.body121, %.body
  %.sink = phi ptr [ %i.iw, %.body121 ], [ %.sroa.0181.0, %.body ]
  %.pn77.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body121 ], [ %i.dh, %.body ]
  call void @free(ptr noundef %.sink) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %.pn77.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN3igl6uniqueIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS2_IlLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN3igl4sortIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS2_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_9DenseBaseIT_EEibRNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.f) #13
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #15 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !13
  store i64 %3, ptr %i.c, align 8, !tbaa !14
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.i) #13
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 4611686018427387903
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #15 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !20
  br label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 int", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEE", !10, i64 0, !11, i64 8, !11, i64 16}
!13 = !{!12, !11, i64 8}
!14 = !{!12, !11, i64 16}
!15 = !{!"vtable pointer", !4, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!12, !10, i64 0}
!18 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EEE", !10, i64 0, !11, i64 8}
!19 = !{!18, !11, i64 8}
!20 = !{!18, !10, i64 0}
!21 = distinct !{!21, !39, !40, !41}
!22 = distinct !{!22, !42}
!23 = distinct !{!23, !39, !40}
!24 = distinct !{!24, !39}
!25 = distinct !{!25, !39, !40, !41}
!26 = distinct !{!26, !39, !41, !40}
!27 = distinct !{!27, !39}
!28 = distinct !{!28, !39}
!29 = distinct !{!29, !39}
!30 = !{!"p1 bool", !9, i64 0}
!31 = !{!"_ZTSN5Eigen12DenseStorageIbLin1ELin1ELin1ELi0EEE", !30, i64 0, !11, i64 8, !11, i64 16}
!32 = !{!31, !11, i64 8}
!33 = !{!31, !11, i64 16}
!34 = !{!31, !30, i64 0}
!35 = !{!"bool", !5, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!6, !6, i64 0}
!38 = !{!5, !5, i64 0}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = !{!11, !11, i64 0}
!44 = !{!"p1 long", !9, i64 0}
!45 = !{!"_ZTSN5Eigen12DenseStorageIlLin1ELin1ELi1ELi0EEE", !44, i64 0, !11, i64 8}
!46 = !{!45, !44, i64 0}
!47 = !{i8 0, i8 2}
!48 = !{}
end_hunk_0
