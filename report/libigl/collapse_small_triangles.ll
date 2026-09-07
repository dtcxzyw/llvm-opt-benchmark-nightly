Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/collapse_small_triangles?download=true
inline.NumInlined: 399
inline.NumDeleted: 244
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase" }
%"class.Eigen::PlainObjectBase" = type { %"class.Eigen::DenseStorage" }
%"class.Eigen::DenseStorage" = type { ptr, i64, i64 }
%"class.Eigen::Matrix.9" = type { %"class.Eigen::PlainObjectBase.10" }
%"class.Eigen::PlainObjectBase.10" = type { %"class.Eigen::DenseStorage.17" }
%"class.Eigen::DenseStorage.17" = type { ptr, i64 }
%"class.Eigen::Matrix.18" = type { %"class.Eigen::PlainObjectBase.19" }
%"class.Eigen::PlainObjectBase.19" = type { %"class.Eigen::DenseStorage.26" }
%"class.Eigen::DenseStorage.26" = type { ptr, i64 }
%"class.Eigen::Matrix.27" = type { %"class.Eigen::PlainObjectBase.28" }
%"class.Eigen::PlainObjectBase.28" = type { %"class.Eigen::DenseStorage.29" }
%"class.Eigen::DenseStorage.29" = type { ptr, i64, i64 }
%"struct.Eigen::internal::evaluator.68" = type { %"struct.Eigen::internal::block_evaluator.69" }
%"struct.Eigen::internal::block_evaluator.69" = type { %"struct.Eigen::internal::mapbase_evaluator.70" }
%"struct.Eigen::internal::mapbase_evaluator.70" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::internal::variable_if_dynamic" = type { i64 }
%"class.Eigen::internal::generic_dense_assignment_kernel.73" = type { ptr, ptr, ptr, ptr }
%"struct.Eigen::internal::assign_op" = type { i8 }
%"class.Eigen::Block.57" = type { %"class.Eigen::BlockImpl.58" }
%"class.Eigen::BlockImpl.58" = type { %"class.Eigen::internal::BlockImpl_dense.59" }
%"class.Eigen::internal::BlockImpl_dense.59" = type { %"class.Eigen::MapBase.60", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.60" = type { %"class.Eigen::MapBase.61" }
%"class.Eigen::MapBase.61" = type { ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic" }

$_ZN3igl24collapse_small_trianglesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EEdRNS1_15PlainObjectBaseIT1_EE = comdat any

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC2ERKS1_ = comdat any

$_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEC2ERKS1_ = comdat any

$_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll = comdat any

$_ZN5Eigen8internal29conservative_resize_like_implINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_Lb0EE3runERNS_9DenseBaseIS3_EEll = comdat any

$_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE18conservativeResizeElll = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEES8_NS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSB_ = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl24collapse_small_trianglesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EEdRNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, double noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Matrix", align 8     ; 7 uses
  %5 = alloca %"class.Eigen::Matrix", align 8     ; 10 uses
  %6 = alloca %"class.Eigen::Matrix.9", align 8   ; 8 uses
  %7 = alloca %"class.Eigen::Matrix.18", align 8  ; 8 uses
  %8 = alloca %"class.Eigen::Matrix.27", align 8  ; 12 uses
  %9 = alloca %"class.Eigen::Matrix.27", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.a = invoke noundef double @_ZN3igl21bounding_box_diagonalERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %4, align 8, !tbaa !13
  call void @free(ptr noundef %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl12edge_lengthsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.c = fmul double %2, 2.000000e+00
  %i.d = fmul double %i.c, %i.a
  %i.e = fmul double %i.a, %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14
  %i.h = add nsw i64 %i.g, -1
  invoke void @_ZN3igl5colonIiilEEN5Eigen6MatrixIT_Lin1ELi1ELi0ELin1ELi1EEET0_T1_(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.18") align 8 %7, i32 noundef 0, i64 noundef %i.h)
          to label %.preheader157 unwind label %bb.h

.preheader157:                                    ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17   ; 4 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader157
  %i.l = load ptr, ptr %6, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = load ptr, ptr %7, align 8                ; 2 uses
  br label %bb.i

._crit_edge.loopexit:                             ; preds = %bb.l
  %i.o = icmp eq i32 %.199, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader157
  %.098.lcssa = phi i1 [ true, %.preheader157 ], [ %i.o, %._crit_edge.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IS1_EERKNS_9EigenBaseIT_EE.exit.preheader unwind label %bb.s

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IS1_EERKNS_9EigenBaseIT_EE.exit.preheader: ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !17   ; 11 uses
  %i.r = icmp sgt i64 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !18   ; 8 uses
  br i1 %i.r, label %.preheader154.lr.ph, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IS1_EERKNS_9EigenBaseIT_EE.exit._crit_edge.split

.preheader154.lr.ph:                              ; preds = %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IS1_EERKNS_9EigenBaseIT_EE.exit.preheader
  %i.u = icmp sgt i64 %i.t, 0
  %i.v = load ptr, ptr %8, align 8
  %i.w = load ptr, ptr %7, align 8                ; 5 uses
  br i1 %i.u, label %.preheader154.preheader, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IS1_EERKNS_9EigenBaseIT_EE.exit._crit_edge.split

.preheader154.preheader:                          ; preds = %.preheader154.lr.ph
  %xtraiter = and i64 %i.t, 3                     ; 3 uses
  %i.x = icmp ult i64 %i.t, 4
  %unroll_iter = and i64 %i.t, 9223372036854775804
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod300 = icmp ne i64 %xtraiter, 0
  br label %.preheader154

bb.e:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %4, align 8, !tbaa !13
  call void @free(ptr noundef %i.z) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.ah

bb.f:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.g:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.h:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.i:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 4 uses
  %.098165 = phi i32 [ 0, %.lr.ph ], [ %.199, %bb.l ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !58
  %i.af = fcmp olt double %i.ae, %i.e
  br i1 %i.af, label %.preheader155, label %bb.l

.preheader155:                                    ; preds = %bb.i
  %i.ag = load ptr, ptr %5, align 8
  %i.ah = load i64, ptr %i.m, align 8             ; 3 uses
  %i.ai = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv ; 4 uses
  %.pre = load double, ptr %i.ai, align 8, !tbaa !58 ; 4 uses
  %i.aj = getelementptr [8 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !58 ; 4 uses
  %i.al = fcmp olt double %i.ak, %.pre            ; 3 uses
  %.196.1 = select i1 %i.al, double %i.ak, double %.pre
  %.194.1 = zext i1 %i.al to i32
  %.idx = shl i64 %i.ah, 4
  %i.am = getelementptr i8, ptr %i.ai, i64 %.idx
  %i.an = load double, ptr %i.am, align 8, !tbaa !58
  %i.ao = fcmp olt double %i.an, %.196.1          ; 2 uses
  %.194.2 = select i1 %i.ao, i32 2, i32 %.194.1   ; 3 uses
  %i.ap = fcmp ogt double %i.ak, %.pre            ; 2 uses
  %.191.1 = select i1 %i.ap, double %i.ak, double %.pre
  %.189.1 = zext i1 %i.ap to i32
  %.idx261 = shl i64 %i.ah, 4
  %i.aq = getelementptr i8, ptr %i.ai, i64 %.idx261
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !58
  %i.as = fcmp ogt double %i.ar, %.191.1
  %.189.2 = select i1 %i.as, i32 2, i32 %.189.1   ; 4 uses
  %i.at = icmp eq i32 %.194.2, %.189.2
  %10 = select i1 %i.al, i32 2, i32 1
  %i.au = select i1 %i.ao, i32 0, i32 %10         ; 3 uses
  br i1 %i.at, label %.thread, label %bb.j

bb.j:                                             ; preds = %.preheader155
  %i.av = icmp eq i32 %i.au, %.189.2
  br i1 %i.av, label %.thread, label %bb.k

.thread:                                          ; preds = %.preheader155, %bb.j
  %i.aw = phi i32 [ %.189.2, %bb.j ], [ %i.au, %.preheader155 ]
  %.urem = add nsw i32 %.194.2, -1
  %.cmp = icmp eq i32 %.194.2, 0
  %i.ax = select i1 %.cmp, i32 2, i32 %.urem
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread
  %i.ay = phi i32 [ %i.aw, %.thread ], [ %.189.2, %bb.j ]
  %i.az = phi i32 [ %i.ax, %.thread ], [ %i.au, %bb.j ]
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = load ptr, ptr %1, align 8, !tbaa !19
  %i.bc = mul nuw nsw i64 %i.j, %i.ba
  %i.bd = getelementptr [4 x i8], ptr %i.bb, i64 %indvars.iv ; 2 uses
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !20
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !20
  %i.bj = zext nneg i32 %i.ay to i64
  %i.bk = mul nuw nsw i64 %i.j, %i.bj
  %i.bl = getelementptr [4 x i8], ptr %i.bd, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !20
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.bn
  store i32 %i.bi, ptr %i.bo, align 4, !tbaa !20
  %i.bp = add nsw i32 %.098165, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %.199 = phi i32 [ %i.bp, %bb.k ], [ %.098165, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.i, !llvm.loop !40

.preheader154:                                    ; preds = %.preheader154.preheader, %._crit_edge169
  %indvars.iv208 = phi i64 [ %indvars.iv.next209, %._crit_edge169 ], [ 0, %.preheader154.preheader ] ; 2 uses
  %i.bq = getelementptr [4 x i8], ptr %i.v, i64 %indvars.iv208 ; 5 uses
  br i1 %i.x, label %.epil.preheader, label %.preheader154.new

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IS1_EERKNS_9EigenBaseIT_EE.exit._crit_edge.split: ; preds = %._crit_edge169, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IS1_EERKNS_9EigenBaseIT_EE.exit.preheader, %.preheader154.lr.ph
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bs = icmp eq i64 %i.q, 0
  %i.bt = icmp eq i64 %i.t, 0
  %or.cond.i.i = or i1 %i.bs, %i.bt
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IS1_EERKNS_9EigenBaseIT_EE.exit._crit_edge.split
  %i.bu = sdiv i64 9223372036854775807, %i.t
  %i.bv = icmp sgt i64 %i.q, %i.bu
  br i1 %i.bv, label %bb.n, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bw = call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bw, align 8, !tbaa !23
  invoke void @__cxa_throw(ptr nonnull %i.bw, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.n
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.m, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IS1_EERKNS_9EigenBaseIT_EE.exit._crit_edge.split
  %i.bx = mul nsw i64 %i.t, %i.q
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bx, i64 noundef %i.q, i64 noundef %i.t)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit.preheader unwind label %bb.u

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit.preheader: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.by = load i64, ptr %i.p, align 8, !tbaa !17  ; 19 uses
  %i.bz = icmp sgt i64 %i.by, 0
  br i1 %i.bz, label %.preheader.lr.ph, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit._crit_edge

.preheader.lr.ph:                                 ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit.preheader
  %i.ca = load i64, ptr %i.br, align 8, !tbaa !18 ; 5 uses
  %i.cb = icmp sgt i64 %i.ca, 0
  %i.cc = load ptr, ptr %8, align 8               ; 3 uses
  %i.cd = ptrtoaddr ptr %i.cc to i64              ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br i1 %i.cb, label %.preheader.us.preheader, label %.preheader.lr.ph.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %ident.check280 = icmp ne i64 %i.by, 1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us
  %indvars.iv232 = phi i64 [ %indvars.iv.next233, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us ], [ 0, %.preheader.us.preheader ] ; 4 uses
  %.083184.us = phi i32 [ %.184.us, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us ], [ 0, %.preheader.us.preheader ] ; 4 uses
  %i.cg = mul i64 %indvars.iv232, -4
  %i.ch = sub i64 %i.cg, %i.cd
  %i.ci = load ptr, ptr %8, align 8
  %i.cj = getelementptr [4 x i8], ptr %i.ci, i64 %indvars.iv232 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %._crit_edge175.us.thread, %.preheader.us
  %indvars.iv229.ph = phi i64 [ %indvars.iv.next230, %._crit_edge175.us.thread ], [ 0, %.preheader.us ]
  %indvars.iv223.ph = phi i64 [ %indvars.iv.next224264, %._crit_edge175.us.thread ], [ 1, %.preheader.us ]
  %.081179.us.ph = phi i1 [ true, %._crit_edge175.us.thread ], [ false, %.preheader.us ]
  br label %bb.o

bb.o:                                             ; preds = %.outer, %._crit_edge175.us
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %._crit_edge175.us ], [ %indvars.iv229.ph, %.outer ] ; 2 uses
  %indvars.iv223 = phi i64 [ %indvars.iv.next224, %._crit_edge175.us ], [ %indvars.iv223.ph, %.outer ] ; 3 uses
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 5 uses
  %i.ck = icmp samesign ugt i64 %i.ca, %indvars.iv.next230
  br i1 %i.ck, label %.lr.ph174.us, label %._crit_edge175.us

bb.p:                                             ; preds = %bb.q
  %indvars.iv.next226 = add nuw i64 %indvars.iv225, 1 ; 2 uses
  %exitcond228.not = icmp eq i64 %indvars.iv.next226, %i.ca
  br i1 %exitcond228.not, label %._crit_edge175.us, label %bb.q, !llvm.loop !41

bb.q:                                             ; preds = %.lr.ph174.us, %bb.p
  %indvars.iv225 = phi i64 [ %indvars.iv223, %.lr.ph174.us ], [ %indvars.iv.next226, %bb.p ] ; 2 uses
  %i.cl = mul nuw nsw i64 %indvars.iv225, %i.by
  %i.cm = getelementptr [4 x i8], ptr %i.cj, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !20
  %i.co = icmp eq i32 %i.eq, %i.cn
  br i1 %i.co, label %._crit_edge175.us.thread, label %bb.p

._crit_edge175.us:                                ; preds = %bb.p, %bb.o
  %indvars.iv.next224 = add nuw i64 %indvars.iv223, 1
  %exitcond231.not = icmp eq i64 %indvars.iv.next230, %i.ca
  br i1 %exitcond231.not, label %._crit_edge182.us, label %bb.o, !llvm.loop !42

._crit_edge175.us.thread:                         ; preds = %bb.q
  %indvars.iv.next224264 = add nuw i64 %indvars.iv223, 1
  %exitcond231.not265 = icmp eq i64 %indvars.iv.next230, %i.ca
  br i1 %exitcond231.not265, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us, label %.outer, !llvm.loop !42

bb.r:                                             ; preds = %._crit_edge182.us
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv232 ; 6 uses
  %i.cq = add nsw i32 %.083184.us, 1              ; 4 uses
  %i.cr = sext i32 %.083184.us to i64             ; 2 uses
  %i.cs = load ptr, ptr %3, align 8, !tbaa !19, !noalias !59 ; 2 uses
  %i.ct = ptrtoaddr ptr %i.cs to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.cr ; 6 uses
  %i.cv = load i64, ptr %i.ce, align 8, !tbaa !18, !noalias !59 ; 7 uses
  %i.cw = load i64, ptr %i.cf, align 8, !tbaa !17 ; 6 uses
  %i.cx = icmp sgt i64 %i.cv, 0
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader:        ; preds = %bb.r
  %min.iters.check284 = icmp ult i64 %i.cv, 16
  %ident.check279 = icmp ne i64 %i.cw, 1
  %i.cy = or i1 %ident.check279, %ident.check280
  %or.cond310 = select i1 %min.iters.check284, i1 true, i1 %i.cy
  br i1 %or.cond310, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader295, label %vector.memcheck281

vector.memcheck281:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader
  %i.cz = add i64 %i.ch, %i.ct
  %i.da = shl nsw i64 %i.cr, 2
  %i.db = add i64 %i.cz, %i.da
  %i.dc = add i64 %i.db, -1
  %diff.check282 = icmp ult i64 %i.dc, 31
  br i1 %diff.check282, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader295, label %vector.ph285

vector.ph285:                                     ; preds = %vector.memcheck281
  %n.vec286 = and i64 %i.cv, 9223372036854775800  ; 3 uses
  br label %vector.body287

vector.body287:                                   ; preds = %vector.body287, %vector.ph285
  %index288 = phi i64 [ 0, %vector.ph285 ], [ %index.next291, %vector.body287 ] ; 3 uses
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %index288 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %index288 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %wide.load289 = load <4 x i32>, ptr %i.de, align 4, !tbaa !20
  %wide.load290 = load <4 x i32>, ptr %i.df, align 4, !tbaa !20
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <4 x i32> %wide.load289, ptr %i.dd, align 4, !tbaa !20
  store <4 x i32> %wide.load290, ptr %i.dg, align 4, !tbaa !20
  %index.next291 = add nuw i64 %index288, 8       ; 2 uses
  %i.dh = icmp eq i64 %index.next291, %n.vec286
  br i1 %i.dh, label %middle.block292, label %vector.body287, !llvm.loop !45

middle.block292:                                  ; preds = %vector.body287
  %cmp.n293 = icmp eq i64 %i.cv, %n.vec286
  br i1 %cmp.n293, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader295

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader295:     ; preds = %vector.memcheck281, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader, %middle.block292
  %.05.i.i.i.i.i.i.i.i.i.i.i.us.ph = phi i64 [ 0, %vector.memcheck281 ], [ %n.vec286, %middle.block292 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader ] ; 3 uses
  %xtraiter303 = and i64 %i.cv, 3                 ; 2 uses
  %lcmp.mod304.not = icmp eq i64 %xtraiter303, 0
  br i1 %lcmp.mod304.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader295, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.us.prol = phi i64 [ %i.dn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader295 ] ; 3 uses
  %prol.iter305 = phi i64 [ %prol.iter305.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader295 ]
  %i.di = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us.prol, %i.cw
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.di
  %i.dk = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us.prol, %i.by
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !20
  store i32 %i.dm, ptr %i.dj, align 4, !tbaa !20
  %i.dn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us.prol, 1 ; 2 uses
end_hunk_0
