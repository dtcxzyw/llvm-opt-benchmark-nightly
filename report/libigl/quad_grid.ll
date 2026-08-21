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
  %.sroa.0.0 = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i ], [ %i.m, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ] ; 8 uses
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
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %exitcond.peel.not = icmp eq i32 %0, 1
  %wide.trip.count126 = zext nneg i32 %0 to i64
  %exitcond127.peel.not = icmp eq i32 %0, 1
  %i.ad = add nsw i64 %wide.trip.count, -2        ; 3 uses
  %i.ae = shl nuw nsw i64 %i.a, 2
  %i.af = add nsw i64 %wide.trip.count126, -1     ; 3 uses
  %mul.result = shl nsw i64 %i.ad, 3              ; 4 uses
  %mul.overflow = icmp ugt i64 %i.ad, 2305843009213693951
  %xtraiter = and i64 %i.af, 1
  %i.ag = icmp eq i64 %i.ad, 0
  %unroll_iter = and i64 %i.af, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod172 = trunc i64 %i.af to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv131 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next132, %._crit_edge ] ; 5 uses
  %.052117 = phi i32 [ 0, %.preheader.preheader ], [ %.us-phi114, %._crit_edge ] ; 5 uses
  %.053116 = phi i32 [ 0, %.preheader.preheader ], [ %.us-phi113, %._crit_edge ] ; 6 uses
  %.056115 = phi i32 [ 0, %.preheader.preheader ], [ %.us-phi, %._crit_edge ] ; 5 uses
  %i.ah = mul i64 %i.ae, %indvars.iv131
  %scevgep157 = getelementptr i8, ptr %.sroa.0.0, i64 %i.ah
  %i.ai = mul nuw nsw i64 %indvars.iv131, %i.a    ; 5 uses
  %.not105 = icmp eq i64 %indvars.iv131, 0
  %i.aj = add nsw i64 %indvars.iv131, -1
  %i.ak = mul nuw nsw i64 %i.aj, %i.a             ; 5 uses
  br i1 %.not105, label %.thread.us.peel, label %.thread.peel

.thread.us.peel:                                  ; preds = %.preheader
  %invariant.gep = getelementptr [4 x i8], ptr %.sroa.0.0, i64 %i.ai ; 5 uses
  store i32 %.056115, ptr %invariant.gep, align 4, !tbaa !9
  %i.al = add nsw i32 %.056115, 1                 ; 3 uses
  br i1 %exitcond127.peel.not, label %._crit_edge, label %.peel.next129

.peel.next129:                                    ; preds = %.thread.us.peel
  %i.am = load ptr, ptr %3, align 8, !tbaa !12    ; 3 uses
  %i.an = load i64, ptr %i.ab, align 8, !tbaa !17 ; 3 uses
  %load_initial159 = load i32, ptr %invariant.gep, align 4 ; 2 uses
  br i1 %i.ag, label %.thread.us.epil.preheader, label %.thread.us

.thread.us:                                       ; preds = %.peel.next129, %.thread.us
  %store_forwarded160 = phi i32 [ %i.ap, %.thread.us ], [ %load_initial159, %.peel.next129 ]
  %indvars.iv123 = phi i64 [ %indvars.iv.next124.1, %.thread.us ], [ 1, %.peel.next129 ] ; 3 uses
  %.1109.us = phi i32 [ %i.az, %.thread.us ], [ %.052117, %.peel.next129 ] ; 3 uses
  %i.ao = phi i32 [ %i.au, %.thread.us ], [ %i.al, %.peel.next129 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.thread.us ], [ 0, %.peel.next129 ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv123
  store i32 %i.ao, ptr %gep, align 4, !tbaa !9
  %i.ap = add nsw i32 %i.ao, 1                    ; 4 uses
  %i.aq = sext i32 %.1109.us to i64
  %i.ar = getelementptr [4 x i8], ptr %i.am, i64 %i.aq ; 2 uses
  store i32 %i.ao, ptr %i.ar, align 4, !tbaa !9
  %i.as = getelementptr [4 x i8], ptr %i.ar, i64 %i.an
  store i32 %store_forwarded160, ptr %i.as, align 4, !tbaa !9
  %i.at = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv123
  %gep.1 = getelementptr i8, ptr %i.at, i64 4
  store i32 %i.ap, ptr %gep.1, align 4, !tbaa !9
  %i.au = add nsw i32 %i.ao, 2                    ; 3 uses
  %i.av = sext i32 %.1109.us to i64
  %i.aw = getelementptr [4 x i8], ptr %i.am, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 4      ; 2 uses
  store i32 %i.ap, ptr %i.ax, align 4, !tbaa !9
  %i.ay = getelementptr [4 x i8], ptr %i.ax, i64 %i.an
  store i32 %i.ao, ptr %i.ay, align 4, !tbaa !9
  %i.az = add nsw i32 %.1109.us, 2                ; 3 uses
  %indvars.iv.next124.1 = add nuw nsw i64 %indvars.iv123, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.thread.us, !llvm.loop !18

.thread.peel:                                     ; preds = %.preheader
  %i.ba = load ptr, ptr %3, align 8, !tbaa !12    ; 8 uses
  %i.bb = load i64, ptr %i.ab, align 8, !tbaa !17 ; 6 uses
  %i.bc = getelementptr [4 x i8], ptr %.sroa.0.0, i64 %i.ai
  store i32 %.056115, ptr %i.bc, align 4, !tbaa !9
  %i.bd = add nsw i32 %.056115, 1                 ; 3 uses
  %i.be = sext i32 %.052117 to i64
  %i.bf = getelementptr [4 x i8], ptr %i.ba, i64 %i.be ; 2 uses
  store i32 %.056115, ptr %i.bf, align 4, !tbaa !9
  %i.bg = getelementptr [4 x i8], ptr %.sroa.0.0, i64 %i.ak
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !9
  %i.bi = getelementptr [4 x i8], ptr %i.bf, i64 %i.bb
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !9
  %i.bj = add i32 %.052117, 1                     ; 4 uses
  br i1 %exitcond.peel.not, label %._crit_edge, label %.thread.lver.check

.thread.lver.check:                               ; preds = %.thread.peel
  %i.bk = load ptr, ptr %2, align 8, !tbaa !12    ; 2 uses
  %i.bl = load i64, ptr %i.ac, align 8, !tbaa !17 ; 4 uses
  %.idx = shl i64 %i.bl, 3                        ; 2 uses
  %.idx106 = mul i64 %i.bl, 12                    ; 2 uses
  %i.bm = sext i32 %i.bj to i64                   ; 2 uses
  %i.bn = shl nsw i64 %i.bm, 2                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ba, i64 %i.bn ; 2 uses
  %i.bo = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.bp = icmp ult ptr %i.bo, %scevgep
  %i.bq = add i64 %i.bb, %i.bm
  %i.br = shl i64 %i.bq, 2                        ; 2 uses
  %scevgep149 = getelementptr i8, ptr %i.ba, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %scevgep149, i64 %mul.result
  %i.bt = icmp ult ptr %i.bs, %scevgep149
  %scevgep150 = getelementptr i8, ptr %i.ba, i64 4 ; 2 uses
  %scevgep151 = getelementptr i8, ptr %scevgep150, i64 %i.bn ; 2 uses
  %i.bu = getelementptr i8, ptr %scevgep151, i64 %mul.result
  %i.bv = icmp ult ptr %i.bu, %scevgep151
  %i.bw = or i1 %i.bv, %mul.overflow
  %scevgep152 = getelementptr i8, ptr %scevgep150, i64 %i.br ; 2 uses
  %i.bx = getelementptr i8, ptr %scevgep152, i64 %mul.result
  %i.by = icmp ult ptr %i.bx, %scevgep152
  %i.bz = or i1 %i.bt, %i.bp
  %i.ca = or i1 %i.bz, %i.bw
  %i.cb = or i1 %i.by, %i.ca
  br i1 %i.cb, label %.thread.lver.orig, label %.thread.ph

.thread.lver.orig:                                ; preds = %.thread.lver.check, %.thread.lver.orig
  %indvars.iv.lver.orig = phi i64 [ %indvars.iv.next.lver.orig, %.thread.lver.orig ], [ 1, %.thread.lver.check ] ; 2 uses
  %.1109.lver.orig = phi i32 [ %i.cs, %.thread.lver.orig ], [ %i.bj, %.thread.lver.check ] ; 3 uses
  %.154108.lver.orig = phi i32 [ %i.da, %.thread.lver.orig ], [ %.053116, %.thread.lver.check ] ; 2 uses
  %i.cc = phi i32 [ %i.cf, %.thread.lver.orig ], [ %i.bd, %.thread.lver.check ] ; 5 uses
  %i.cd = getelementptr [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv.lver.orig ; 3 uses
  %i.ce = getelementptr [4 x i8], ptr %i.cd, i64 %i.ai
  store i32 %i.cc, ptr %i.ce, align 4, !tbaa !9
  %i.cf = add nsw i32 %i.cc, 1                    ; 2 uses
  %i.cg = sext i32 %.1109.lver.orig to i64
  %i.ch = getelementptr [4 x i8], ptr %i.ba, i64 %i.cg ; 2 uses
  store i32 %i.cc, ptr %i.ch, align 4, !tbaa !9
  %i.ci = getelementptr [4 x i8], ptr %i.cd, i64 %i.ak
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !9  ; 2 uses
  %i.ck = getelementptr [4 x i8], ptr %i.ch, i64 %i.bb
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !9
  %i.cl = sext i32 %.1109.lver.orig to i64
  %i.cm = getelementptr [4 x i8], ptr %i.ba, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 4      ; 2 uses
  store i32 %i.cc, ptr %i.cn, align 4, !tbaa !9
  %i.co = getelementptr i8, ptr %i.cd, i64 -4     ; 2 uses
  %i.cp = getelementptr [4 x i8], ptr %i.co, i64 %i.ai
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !9  ; 2 uses
  %i.cr = getelementptr [4 x i8], ptr %i.cn, i64 %i.bb
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !9
  %i.cs = add nsw i32 %.1109.lver.orig, 2         ; 2 uses
  %i.ct = sext i32 %.154108.lver.orig to i64
  %i.cu = getelementptr [4 x i8], ptr %i.bk, i64 %i.ct ; 4 uses
  store i32 %i.cc, ptr %i.cu, align 4, !tbaa !9
  %i.cv = getelementptr [4 x i8], ptr %i.cu, i64 %i.bl
  store i32 %i.cq, ptr %i.cv, align 4, !tbaa !9
  %i.cw = getelementptr [4 x i8], ptr %i.co, i64 %i.ak
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !9
  %i.cy = getelementptr i8, ptr %i.cu, i64 %.idx
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !9
  %i.cz = getelementptr i8, ptr %i.cu, i64 %.idx106
  store i32 %i.cj, ptr %i.cz, align 4, !tbaa !9
  %i.da = add nsw i32 %.154108.lver.orig, 1       ; 2 uses
  %indvars.iv.next.lver.orig = add nuw nsw i64 %indvars.iv.lver.orig, 1 ; 2 uses
  %exitcond.not.lver.orig = icmp eq i64 %indvars.iv.next.lver.orig, %wide.trip.count
  br i1 %exitcond.not.lver.orig, label %._crit_edge, label %.thread.lver.orig, !llvm.loop !21

.thread.ph:                                       ; preds = %.thread.lver.check
  %load_initial = load i32, ptr %scevgep157, align 4
  br label %.thread

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit62._crit_edge.split: ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit62.preheader
  tail call void @free(ptr noundef %.sroa.0.0) #8
  ret void

common.resume:                                    ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef %.sroa.0.0) #8
  resume { ptr, i32 } %i.db

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.thread.us
  br i1 %lcmp.mod.not, label %._crit_edge, label %.thread.us.epil.preheader

.thread.us.epil.preheader:                        ; preds = %._crit_edge.loopexit.unr-lcssa, %.peel.next129
  %store_forwarded160.epil.init = phi i32 [ %load_initial159, %.peel.next129 ], [ %i.ap, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv123.epil.init = phi i64 [ 1, %.peel.next129 ], [ %indvars.iv.next124.1, %._crit_edge.loopexit.unr-lcssa ]
  %.1109.us.epil.init = phi i32 [ %.052117, %.peel.next129 ], [ %i.az, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi i32 [ %i.al, %.peel.next129 ], [ %i.au, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod172)
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv123.epil.init
  store i32 %.epil.init, ptr %gep.epil, align 4, !tbaa !9
  %i.dc = add nsw i32 %.epil.init, 1
  %i.dd = sext i32 %.1109.us.epil.init to i64
  %i.de = getelementptr [4 x i8], ptr %i.am, i64 %i.dd ; 2 uses
  store i32 %.epil.init, ptr %i.de, align 4, !tbaa !9
  %i.df = getelementptr [4 x i8], ptr %i.de, i64 %i.an
  store i32 %store_forwarded160.epil.init, ptr %i.df, align 4, !tbaa !9
  %i.dg = add nsw i32 %.1109.us.epil.init, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.thread, %.thread.lver.orig, %.thread.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.thread.peel, %.thread.us.peel
  %.us-phi = phi i32 [ %i.dc, %.thread.us.epil.preheader ], [ %i.al, %.thread.us.peel ], [ %i.bd, %.thread.peel ], [ %i.cf, %.thread.lver.orig ], [ %i.au, %._crit_edge.loopexit.unr-lcssa ], [ %i.dk, %.thread ]
  %.us-phi113 = phi i32 [ %.053116, %.thread.us.epil.preheader ], [ %.053116, %.thread.us.peel ], [ %.053116, %.thread.peel ], [ %i.da, %.thread.lver.orig ], [ %.053116, %._crit_edge.loopexit.unr-lcssa ], [ %i.ed, %.thread ]
  %.us-phi114 = phi i32 [ %i.dg, %.thread.us.epil.preheader ], [ %.052117, %.thread.us.peel ], [ %i.bj, %.thread.peel ], [ %i.cs, %.thread.lver.orig ], [ %i.az, %._crit_edge.loopexit.unr-lcssa ], [ %i.dv, %.thread ]
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count134
  br i1 %exitcond135.not, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit62._crit_edge.split, label %.preheader, !llvm.loop !22

.thread:                                          ; preds = %.thread.ph, %.thread
  %store_forwarded = phi i32 [ %load_initial, %.thread.ph ], [ %i.dh, %.thread ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.thread.ph ], [ %indvars.iv.next, %.thread ] ; 2 uses
  %.1109 = phi i32 [ %i.bj, %.thread.ph ], [ %i.dv, %.thread ] ; 3 uses
  %.154108 = phi i32 [ %.053116, %.thread.ph ], [ %i.ed, %.thread ] ; 2 uses
  %i.dh = phi i32 [ %i.bd, %.thread.ph ], [ %i.dk, %.thread ] ; 6 uses
  %i.di = getelementptr [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv ; 3 uses
  %i.dj = getelementptr [4 x i8], ptr %i.di, i64 %i.ai
  store i32 %i.dh, ptr %i.dj, align 4, !tbaa !9
  %i.dk = add nsw i32 %i.dh, 1                    ; 2 uses
  %i.dl = sext i32 %.1109 to i64
  %i.dm = getelementptr [4 x i8], ptr %i.ba, i64 %i.dl ; 2 uses
  store i32 %i.dh, ptr %i.dm, align 4, !tbaa !9
  %i.dn = getelementptr [4 x i8], ptr %i.di, i64 %i.ak
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !9  ; 2 uses
  %i.dp = getelementptr [4 x i8], ptr %i.dm, i64 %i.bb
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !9
  %i.dq = sext i32 %.1109 to i64
  %i.dr = getelementptr [4 x i8], ptr %i.ba, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 4      ; 2 uses
  store i32 %i.dh, ptr %i.ds, align 4, !tbaa !9
  %i.dt = getelementptr i8, ptr %i.di, i64 -4
  %i.du = getelementptr [4 x i8], ptr %i.ds, i64 %i.bb
  store i32 %store_forwarded, ptr %i.du, align 4, !tbaa !9
  %i.dv = add nsw i32 %.1109, 2                   ; 2 uses
  %i.dw = sext i32 %.154108 to i64
  %i.dx = getelementptr [4 x i8], ptr %i.bk, i64 %i.dw ; 4 uses
  store i32 %i.dh, ptr %i.dx, align 4, !tbaa !9
  %i.dy = getelementptr [4 x i8], ptr %i.dx, i64 %i.bl
  store i32 %store_forwarded, ptr %i.dy, align 4, !tbaa !9
  %i.dz = getelementptr [4 x i8], ptr %i.dt, i64 %i.ak
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !9
  %i.eb = getelementptr i8, ptr %i.dx, i64 %.idx
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !9
  %i.ec = getelementptr i8, ptr %i.dx, i64 %.idx106
  store i32 %i.do, ptr %i.ec, align 4, !tbaa !9
  %i.ed = add nsw i32 %.154108, 1                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.thread, !llvm.loop !21
end_hunk_0
