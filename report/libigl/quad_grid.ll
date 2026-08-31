Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/quad_grid?download=true
inline.NumInlined: 77
inline.NumDeleted: 49
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase" }
%"class.Eigen::PlainObjectBase" = type { %"class.Eigen::DenseStorage" }
%"class.Eigen::DenseStorage" = type { %"struct.Eigen::internal::plain_array" }
%"struct.Eigen::internal::plain_array" = type { [2 x i32] }

$_ZN3igl9quad_gridIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_EEviiRNS1_15PlainObjectBaseIT_EERNS5_IT0_EERNS5_IT1_EE = comdat any

$_ZN3igl9quad_gridIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_EEviiRNS1_15PlainObjectBaseIT_EERNS4_IT0_EE = comdat any

$_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl9quad_gridIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_EEviiRNS1_15PlainObjectBaseIT_EERNS5_IT0_EERNS5_IT1_EE(i32 noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %"class.Eigen::Matrix", align 4     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store i32 %0, ptr %5, align 4, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %1, ptr %i.a, align 4, !tbaa !9
  call void @_ZN3igl4gridIN5Eigen6MatrixIiLi2ELi1ELi0ELi2ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @_ZN3igl9quad_gridIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_EEviiRNS1_15PlainObjectBaseIT_EERNS4_IT0_EE(i32 noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  ret void
}

declare void @_ZN3igl4gridIN5Eigen6MatrixIiLi2ELi1ELi0ELi2ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl9quad_gridIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_EEviiRNS1_15PlainObjectBaseIT_EERNS4_IT0_EE(i32 noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %0 to i64                       ; 5 uses
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = icmp eq i32 %0, 0
  %i.d = icmp eq i32 %1, 0
  %or.cond.i.i.i.i = or i1 %i.c, %i.d
  br i1 %or.cond.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sdiv i64 9223372036854775807, %i.b
  %i.f = icmp slt i64 %i.e, %i.a
  br i1 %i.f, label %.noexc.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 8) #8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.g, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #9
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.b, %bb.a
  %i.h = mul nsw i64 %i.b, %i.a                   ; 3 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit

bb.c:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.j = icmp samesign ugt i64 %i.h, 4611686018427387903
  br i1 %i.j, label %.noexc, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

.noexc:                                           ; preds = %bb.c
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #9
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.c
  %i.l = shl nuw i64 %i.h, 2
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #10 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.noexc63, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit

.noexc63:                                         ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #9
  unreachable

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %.sroa.0.0 = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i ], [ %i.m, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ] ; 7 uses
  %i.p = add nsw i32 %0, -1                       ; 2 uses
  %i.q = add nsw i32 %1, -1                       ; 2 uses
  %i.r = mul nsw i32 %i.q, %i.p
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = shl nsw i64 %i.s, 2
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.t, i64 noundef %i.s, i64 noundef 4)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %common.resume

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit
  %i.u = mul nsw i32 %i.p, %1
  %i.v = mul nsw i32 %i.q, %0
  %i.w = add nsw i32 %i.v, %i.u
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = shl nsw i64 %i.x, 1
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.y, i64 noundef %i.x, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit62.preheader unwind label %common.resume

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit62.preheader: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.z = icmp sgt i32 %1, 0
  br i1 %i.z, label %.preheader.lr.ph, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit62._crit_edge.split

.preheader.lr.ph:                                 ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit62.preheader
  %i.aa = icmp sgt i32 %0, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  br i1 %i.aa, label %.preheader.preheader, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit62._crit_edge.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count134 = zext nneg i32 %1 to i64
  %wide.trip.count = zext nneg i32 %0 to i64
  %exitcond.peel.not = icmp eq i32 %0, 1
  %wide.trip.count126 = zext nneg i32 %0 to i64
  %exitcond127.peel.not = icmp eq i32 %0, 1
  %i.ad = shl nuw nsw i64 %i.a, 2
  %i.ae = add nsw i64 %wide.trip.count126, -1     ; 3 uses
  %xtraiter = and i64 %i.ae, 1
  %i.af = icmp eq i32 %0, 2
  %unroll_iter = and i64 %i.ae, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod171 = trunc i64 %i.ae to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv131 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next132, %._crit_edge ] ; 5 uses
  %.052117 = phi i32 [ 0, %.preheader.preheader ], [ %.us-phi114, %._crit_edge ] ; 5 uses
  %.053116 = phi i32 [ 0, %.preheader.preheader ], [ %.us-phi113, %._crit_edge ] ; 5 uses
  %.056115 = phi i32 [ 0, %.preheader.preheader ], [ %.us-phi, %._crit_edge ] ; 5 uses
  %i.ag = mul i64 %i.ad, %indvars.iv131
  %scevgep157 = getelementptr i8, ptr %.sroa.0.0, i64 %i.ag
  %i.ah = mul nuw nsw i64 %indvars.iv131, %i.a    ; 3 uses
  %.not105 = icmp eq i64 %indvars.iv131, 0
  %i.ai = add nsw i64 %indvars.iv131, -1
  %i.aj = mul nuw nsw i64 %i.ai, %i.a             ; 3 uses
  br i1 %.not105, label %.thread.us.peel, label %.thread.peel

.thread.us.peel:                                  ; preds = %.preheader
  %invariant.gep = getelementptr [4 x i8], ptr %.sroa.0.0, i64 %i.ah ; 5 uses
  store i32 %.056115, ptr %invariant.gep, align 4, !tbaa !9
  %i.ak = add nsw i32 %.056115, 1                 ; 3 uses
  br i1 %exitcond127.peel.not, label %._crit_edge, label %.peel.next129

.peel.next129:                                    ; preds = %.thread.us.peel
  %i.al = load ptr, ptr %3, align 8, !tbaa !12    ; 3 uses
  %i.am = load i64, ptr %i.ab, align 8, !tbaa !17 ; 3 uses
  %load_initial158 = load i32, ptr %invariant.gep, align 4 ; 2 uses
  br i1 %i.af, label %.thread.us.epil.preheader, label %.thread.us

.thread.us:                                       ; preds = %.peel.next129, %.thread.us
  %store_forwarded159 = phi i32 [ %i.ao, %.thread.us ], [ %load_initial158, %.peel.next129 ]
  %indvars.iv123 = phi i64 [ %indvars.iv.next124.1, %.thread.us ], [ 1, %.peel.next129 ] ; 3 uses
  %.1109.us = phi i32 [ %i.ay, %.thread.us ], [ %.052117, %.peel.next129 ] ; 3 uses
  %i.an = phi i32 [ %i.at, %.thread.us ], [ %i.ak, %.peel.next129 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.thread.us ], [ 0, %.peel.next129 ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv123
  store i32 %i.an, ptr %gep, align 4, !tbaa !9
  %i.ao = add nsw i32 %i.an, 1                    ; 4 uses
  %i.ap = sext i32 %.1109.us to i64
  %i.aq = getelementptr [4 x i8], ptr %i.al, i64 %i.ap ; 2 uses
  store i32 %i.an, ptr %i.aq, align 4, !tbaa !9
  %i.ar = getelementptr [4 x i8], ptr %i.aq, i64 %i.am
  store i32 %store_forwarded159, ptr %i.ar, align 4, !tbaa !9
  %i.as = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv123
  %gep.1 = getelementptr i8, ptr %i.as, i64 4
  store i32 %i.ao, ptr %gep.1, align 4, !tbaa !9
  %i.at = add nsw i32 %i.an, 2                    ; 3 uses
  %i.au = sext i32 %.1109.us to i64
  %i.av = getelementptr [4 x i8], ptr %i.al, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 4      ; 2 uses
  store i32 %i.ao, ptr %i.aw, align 4, !tbaa !9
  %i.ax = getelementptr [4 x i8], ptr %i.aw, i64 %i.am
  store i32 %i.an, ptr %i.ax, align 4, !tbaa !9
  %i.ay = add nsw i32 %.1109.us, 2                ; 3 uses
  %indvars.iv.next124.1 = add nuw nsw i64 %indvars.iv123, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.thread.us, !llvm.loop !18

.thread.peel:                                     ; preds = %.preheader
  %i.az = load ptr, ptr %3, align 8, !tbaa !12    ; 3 uses
  %i.ba = load i64, ptr %i.ab, align 8, !tbaa !17 ; 3 uses
  %i.bb = getelementptr [4 x i8], ptr %.sroa.0.0, i64 %i.ah
  store i32 %.056115, ptr %i.bb, align 4, !tbaa !9
  %i.bc = add nsw i32 %.056115, 1                 ; 2 uses
  %i.bd = sext i32 %.052117 to i64
  %i.be = getelementptr [4 x i8], ptr %i.az, i64 %i.bd ; 2 uses
  store i32 %.056115, ptr %i.be, align 4, !tbaa !9
  %i.bf = getelementptr [4 x i8], ptr %.sroa.0.0, i64 %i.aj
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !9
  %i.bh = getelementptr [4 x i8], ptr %i.be, i64 %i.ba
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !9
  %i.bi = add nsw i32 %.052117, 1                 ; 2 uses
  br i1 %exitcond.peel.not, label %._crit_edge, label %.thread.lver.check

.thread.lver.check:                               ; preds = %.thread.peel
  %i.bj = load ptr, ptr %2, align 8, !tbaa !12
  %i.bk = load i64, ptr %i.ac, align 8, !tbaa !17 ; 3 uses
  %.idx = shl i64 %i.bk, 3
  %.idx106 = mul i64 %i.bk, 12
  %load_initial = load i32, ptr %scevgep157, align 4
  br label %.thread

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit62._crit_edge.split: ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit62.preheader
  tail call void @free(ptr noundef %.sroa.0.0) #8
  ret void

common.resume:                                    ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef %.sroa.0.0) #8
  resume { ptr, i32 } %i.bl

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.thread.us
  br i1 %lcmp.mod.not, label %._crit_edge, label %.thread.us.epil.preheader

.thread.us.epil.preheader:                        ; preds = %._crit_edge.loopexit.unr-lcssa, %.peel.next129
  %store_forwarded159.epil.init = phi i32 [ %load_initial158, %.peel.next129 ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv123.epil.init = phi i64 [ 1, %.peel.next129 ], [ %indvars.iv.next124.1, %._crit_edge.loopexit.unr-lcssa ]
  %.1109.us.epil.init = phi i32 [ %.052117, %.peel.next129 ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi i32 [ %i.ak, %.peel.next129 ], [ %i.at, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod171)
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv123.epil.init
  store i32 %.epil.init, ptr %gep.epil, align 4, !tbaa !9
  %i.bm = add nsw i32 %.epil.init, 1
  %i.bn = sext i32 %.1109.us.epil.init to i64
  %i.bo = getelementptr [4 x i8], ptr %i.al, i64 %i.bn ; 2 uses
  store i32 %.epil.init, ptr %i.bo, align 4, !tbaa !9
  %i.bp = getelementptr [4 x i8], ptr %i.bo, i64 %i.am
  store i32 %store_forwarded159.epil.init, ptr %i.bp, align 4, !tbaa !9
  %i.bq = add nsw i32 %.1109.us.epil.init, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.thread, %.thread.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.thread.peel, %.thread.us.peel
  %.us-phi = phi i32 [ %i.bm, %.thread.us.epil.preheader ], [ %i.ak, %.thread.us.peel ], [ %i.bc, %.thread.peel ], [ %i.at, %._crit_edge.loopexit.unr-lcssa ], [ %i.bu, %.thread ]
  %.us-phi113 = phi i32 [ %.053116, %.thread.us.epil.preheader ], [ %.053116, %.thread.us.peel ], [ %.053116, %.thread.peel ], [ %.053116, %._crit_edge.loopexit.unr-lcssa ], [ %i.cn, %.thread ]
  %.us-phi114 = phi i32 [ %i.bq, %.thread.us.epil.preheader ], [ %.052117, %.thread.us.peel ], [ %i.bi, %.thread.peel ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ], [ %i.cf, %.thread ]
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count134
  br i1 %exitcond135.not, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit62._crit_edge.split, label %.preheader, !llvm.loop !21

.thread:                                          ; preds = %.thread.lver.check, %.thread
  %store_forwarded = phi i32 [ %load_initial, %.thread.lver.check ], [ %i.br, %.thread ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.thread.lver.check ], [ %indvars.iv.next, %.thread ] ; 2 uses
  %.1109 = phi i32 [ %i.bi, %.thread.lver.check ], [ %i.cf, %.thread ] ; 3 uses
  %.154108 = phi i32 [ %.053116, %.thread.lver.check ], [ %i.cn, %.thread ] ; 2 uses
  %i.br = phi i32 [ %i.bc, %.thread.lver.check ], [ %i.bu, %.thread ] ; 6 uses
  %i.bs = getelementptr [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv ; 3 uses
  %i.bt = getelementptr [4 x i8], ptr %i.bs, i64 %i.ah
  store i32 %i.br, ptr %i.bt, align 4, !tbaa !9
  %i.bu = add nsw i32 %i.br, 1                    ; 2 uses
  %i.bv = sext i32 %.1109 to i64
  %i.bw = getelementptr [4 x i8], ptr %i.az, i64 %i.bv ; 2 uses
  store i32 %i.br, ptr %i.bw, align 4, !tbaa !9
  %i.bx = getelementptr [4 x i8], ptr %i.bs, i64 %i.aj
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !9  ; 2 uses
  %i.bz = getelementptr [4 x i8], ptr %i.bw, i64 %i.ba
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !9
  %i.ca = sext i32 %.1109 to i64
  %i.cb = getelementptr [4 x i8], ptr %i.az, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 4      ; 2 uses
  store i32 %i.br, ptr %i.cc, align 4, !tbaa !9
  %i.cd = getelementptr i8, ptr %i.bs, i64 -4
  %i.ce = getelementptr [4 x i8], ptr %i.cc, i64 %i.ba
  store i32 %store_forwarded, ptr %i.ce, align 4, !tbaa !9
  %i.cf = add nsw i32 %.1109, 2                   ; 2 uses
  %i.cg = sext i32 %.154108 to i64
  %i.ch = getelementptr [4 x i8], ptr %i.bj, i64 %i.cg ; 4 uses
  store i32 %i.br, ptr %i.ch, align 4, !tbaa !9
  %i.ci = getelementptr [4 x i8], ptr %i.ch, i64 %i.bk
  store i32 %store_forwarded, ptr %i.ci, align 4, !tbaa !9
  %i.cj = getelementptr [4 x i8], ptr %i.cd, i64 %i.aj
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !9
  %i.cl = getelementptr i8, ptr %i.ch, i64 %.idx
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !9
  %i.cm = getelementptr i8, ptr %i.ch, i64 %.idx106
  store i32 %i.by, ptr %i.cm, align 4, !tbaa !9
  %i.cn = add nsw i32 %.154108, 1                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.thread, !llvm.loop !22
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !23
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !12
  tail call void @free(ptr noundef %i.f) #8
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #9
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #10 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #9
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !17
  store i64 %3, ptr %i.c, align 8, !tbaa !23
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!6, !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"vtable pointer", !8, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEE", !14, i64 0, !16, i64 8, !16, i64 16}
!14 = !{!"p1 int", !15, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = !{!13, !16, i64 8}
!18 = distinct !{!18, !19, !20}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.peeled.count", i32 1}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !19, !20}
!23 = !{!13, !16, i64 16}
end_hunk_0
