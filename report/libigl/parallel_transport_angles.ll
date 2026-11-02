Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/parallel_transport_angles?download=true
inline.NumInlined: 1415
inline.NumDeleted: 842
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.Eigen::Matrix.3" = type { %"class.Eigen::PlainObjectBase.4" }
%"class.Eigen::PlainObjectBase.4" = type { %"class.Eigen::DenseStorage.11" }
%"class.Eigen::DenseStorage.11" = type { ptr, i64 }
%"class.Eigen::Matrix.45" = type { %"class.Eigen::PlainObjectBase.46" }
%"class.Eigen::PlainObjectBase.46" = type { %"class.Eigen::DenseStorage.53" }
%"class.Eigen::DenseStorage.53" = type { %"struct.Eigen::internal::plain_array.54" }
%"struct.Eigen::internal::plain_array.54" = type { [9 x double] }

$_ZN3igl25parallel_transport_anglesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EESA_RKS4_SG_RNS1_15PlainObjectBaseIT1_EE = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl25parallel_transport_anglesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EESA_RKS4_SG_RNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Eigen::Matrix.3", align 8   ; 11 uses
  %7 = alloca %"class.Eigen::Matrix.45", align 8  ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %sext = shl i64 %i.b, 32                        ; 3 uses
  %i.c = ashr exact i64 %sext, 32                 ; 5 uses
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.c, i64 noundef 1)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %i.f = icmp slt i64 %i.e, 1
  br i1 %i.f, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i: ; preds = %.noexc
  %i.g = load ptr, ptr %6, align 8, !tbaa !14
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.e, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.g, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !25
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit: ; preds = %.noexc, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i
  %i.h = and i64 %i.b, 4294967295
  %.not607 = icmp eq i64 %i.h, 0                  ; 2 uses
  br i1 %.not607, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit
  %i.i = load ptr, ptr %3, align 8, !tbaa !26     ; 3 uses
  %i.j = load ptr, ptr %6, align 8                ; 3 uses
  %wide.trip.count = and i64 %i.b, 4294967295
  %xtraiter = and i64 %i.b, 1
  %i.k = icmp eq i64 %wide.trip.count, 1
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.b, 4294967294
  br label %bb.f

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod652 = trunc i64 %i.b to i1
  call void @llvm.assume(i1 %lcmp.mod652)
  %i.l = getelementptr [4 x i8], ptr %i.i, i64 %indvars.iv.epil.init ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !25
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.epil.preheader
  %i.o = load i64, ptr %i.a, align 8, !tbaa !24
  %i.p = getelementptr [4 x i8], ptr %i.l, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !25
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b, %.epil.preheader
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.epil.init
  store i32 1, ptr %i.s, align 4, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.b, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !29
  %.not.i.i.i = icmp eq i64 %i.c, %i.u
  br i1 %.not.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.v = load ptr, ptr %5, align 8, !tbaa !30
  call void @free(ptr noundef %i.v) #11
  %i.w = icmp sgt i64 %i.c, 0
  br i1 %i.w, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i, label %.sink.split.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i: ; preds = %bb.d
  %i.x = lshr exact i64 %sext, 29
  %i.y = call noalias ptr @malloc(i64 noundef %i.x) #12 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.e, label %.sink.split.i.i.i

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i
  %i.aa = call ptr @__cxa_allocate_exception(i64 8) #11 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aa, align 8, !tbaa !16
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
          to label %.noexc164 unwind label %bb.n

.noexc164:                                        ; preds = %bb.e
  unreachable

.sink.split.i.i.i:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i, %bb.d
  %.sink.i.i.i = phi ptr [ %i.y, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i ], [ null, %bb.d ]
  store ptr %.sink.i.i.i, ptr %5, align 8, !tbaa !30
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit.i: ; preds = %.sink.split.i.i.i, %._crit_edge
  store i64 %i.c, ptr %i.t, align 8, !tbaa !29
  %i.ab = icmp slt i64 %i.c, 1
  br i1 %i.ab, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit.i
  %i.ac = load ptr, ptr %5, align 8, !tbaa !30
  %.idx.i.i.i.i.i.i.i.i.i.i.i162 = lshr exact i64 %sext, 29
  call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i162, i1 false), !tbaa !32
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit.i, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i
  %.pre639 = load ptr, ptr %6, align 8, !tbaa !14 ; 2 uses
  br i1 %.not607, label %._crit_edge606, label %.lr.ph605

.lr.ph605:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 64
  %wide.trip.count617 = and i64 %i.b, 4294967295
  %.pre = load ptr, ptr %6, align 8
  br label %bb.m

bb.f:                                             ; preds = %bb.l, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.l ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.l ]
  %i.an = getelementptr [4 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !25
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !24
  %i.ar = getelementptr [4 x i8], ptr %i.an, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !25
  %i.at = icmp eq i32 %i.as, -1
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  store i32 1, ptr %i.au, align 4, !tbaa !25
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.av = getelementptr [4 x i8], ptr %i.i, i64 %indvars.iv.next ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !25
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !24
  %i.az = getelementptr [4 x i8], ptr %i.av, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !25
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next
  store i32 1, ptr %i.bc, align 4, !tbaa !25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.f, !llvm.loop !17

._crit_edge606:                                   ; preds = %bb.o, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit
  %i.bd = phi ptr [ %.pre639, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit ], [ %i.nk, %bb.o ]
  call void @free(ptr noundef %i.bd) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret void

bb.m:                                             ; preds = %.lr.ph605, %bb.o
  %i.be = phi ptr [ %.pre639, %.lr.ph605 ], [ %i.nk, %bb.o ] ; 2 uses
  %indvars.iv614 = phi i64 [ 0, %.lr.ph605 ], [ %indvars.iv.next615, %bb.o ] ; 10 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv614
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !25
  %.not = icmp eq i32 %i.bg, 0
  br i1 %.not, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEE9normalizeEv.exit236, label %bb.o

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEE9normalizeEv.exit236: ; preds = %bb.m
  %i.bh = load ptr, ptr %3, align 8, !tbaa !26
  %i.bi = getelementptr [4 x i8], ptr %i.bh, i64 %indvars.iv614 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !25
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !24
  %i.bl = getelementptr [4 x i8], ptr %i.bi, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !25
  %i.bn = sext i32 %i.bj to i64                   ; 3 uses
  %i.bo = load ptr, ptr %2, align 8, !tbaa !35, !noalias !36
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bn ; 3 uses
  %i.bq = load i64, ptr %i.ad, align 8, !tbaa !37 ; 2 uses
  %i.br = load double, ptr %i.bp, align 8, !tbaa !32 ; 7 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bq
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !32 ; 7 uses
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.bq, 4
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !32 ; 7 uses
  %i.bw = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.bx = load i64, ptr %i.ae, align 8, !tbaa !24 ; 3 uses
  %i.by = getelementptr [4 x i8], ptr %i.bw, i64 %i.bn ; 3 uses
  %i.bz = sext i32 %i.bm to i64                   ; 2 uses
  %i.ca = getelementptr [4 x i8], ptr %i.bw, i64 %i.bz ; 3 uses
  %i.cb = load i32, ptr %i.by, align 4, !tbaa !25
  %i.cc = zext i32 %i.cb to i64
  %i.cd = icmp ne i64 %indvars.iv614, %i.cc
  %spec.select = sext i1 %i.cd to i32
  %i.ce = load i32, ptr %i.ca, align 4, !tbaa !25
  %i.cf = zext i32 %i.ce to i64
  %.not644 = icmp eq i64 %indvars.iv614, %i.cf
  %i.cg = getelementptr [4 x i8], ptr %i.by, i64 %i.bx
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !25
  %i.ci = zext i32 %i.ch to i64
  %i.cj = icmp eq i64 %indvars.iv614, %i.ci
  %spec.select.1 = select i1 %i.cj, i32 1, i32 %spec.select
  %i.ck = getelementptr [4 x i8], ptr %i.ca, i64 %i.bx
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !25
  %i.cm = zext i32 %i.cl to i64
  %i.cn = icmp eq i64 %indvars.iv614, %i.cm
  %i.co = shl nsw i64 %i.bx, 1                    ; 2 uses
  %i.cp = getelementptr [4 x i8], ptr %i.by, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !25
  %i.cr = zext i32 %i.cq to i64
  %i.cs = icmp eq i64 %indvars.iv614, %i.cr
  %spec.select.2 = select i1 %i.cs, i32 2, i32 %spec.select.1
  %spec.select.2.fr = freeze i32 %spec.select.2   ; 3 uses
  %i.ct = getelementptr [4 x i8], ptr %i.ca, i64 %i.co
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !25
  %i.cv = zext i32 %i.cu to i64
  %i.cw = icmp eq i64 %indvars.iv614, %i.cv
  %i.cx = add i32 %spec.select.2.fr, 1            ; 2 uses
  %.urem = add i32 %spec.select.2.fr, -2
  %.cmp = icmp ult i32 %i.cx, 3
  %i.cy = select i1 %.cmp, i32 %i.cx, i32 %.urem
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = load ptr, ptr %1, align 8, !tbaa !26    ; 2 uses
  %i.db = load i64, ptr %i.af, align 8, !tbaa !24 ; 5 uses
  %i.dc = mul nsw i64 %i.db, %i.cz
  %i.dd = getelementptr [4 x i8], ptr %i.da, i64 %i.bn ; 4 uses
  %i.de = getelementptr [4 x i8], ptr %i.dd, i64 %i.dc
  %i.df = load i32, ptr %i.de, align 4, !tbaa !25
  %i.dg = sext i32 %i.df to i64
  %i.dh = load ptr, ptr %0, align 8, !tbaa !35, !noalias !38 ; 7 uses
  %i.di = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.dg ; 3 uses
  %i.dj = sext i32 %spec.select.2.fr to i64
  %i.dk = mul nsw i64 %i.db, %i.dj
  %i.dl = getelementptr [4 x i8], ptr %i.dd, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !25
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.dn ; 3 uses
  %i.dp = load i64, ptr %i.ag, align 8, !tbaa !37 ; 8 uses
  %i.dq = load double, ptr %i.di, align 8, !tbaa !32
  %i.dr = load double, ptr %i.do, align 8, !tbaa !32 ; 6 uses
  %i.ds = fsub double %i.dq, %i.dr
  %.sroa.0556.0.vec.insert = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dp
  %i.du = load double, ptr %i.dt, align 8, !tbaa !32
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.dp
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !32 ; 6 uses
  %i.dx = fsub double %i.du, %i.dw
  %.sroa.0556.8.vec.insert = insertelement <2 x double> %.sroa.0556.0.vec.insert, double %i.dx, i64 1 ; 4 uses
  %.idx.i.i.i.i.i.i.i.i.i.i165 = shl nsw i64 %i.dp, 4 ; 7 uses
  %i.dy = getelementptr inbounds i8, ptr %i.di, i64 %.idx.i.i.i.i.i.i.i.i.i.i165
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !32
  %i.ea = getelementptr inbounds i8, ptr %i.do, i64 %.idx.i.i.i.i.i.i.i.i.i.i165
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !32 ; 6 uses
  %i.ec = fsub double %i.dz, %i.eb                ; 4 uses
  %i.ed = fmul <2 x double> %.sroa.0556.8.vec.insert, %.sroa.0556.8.vec.insert ; 2 uses
  %shift = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ed, %shift
  %i.ee = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ef = fmul double %i.ec, %i.ec
  %i.eg = fadd double %i.ef, %i.ee                ; 2 uses
  %i.eh = fcmp ogt double %i.eg, 0.000000e+00     ; 2 uses
  %.scalar.i = call double @llvm.sqrt.f64(double %i.eg) ; 2 uses
  %i.ei = insertelement <2 x double> poison, double %.scalar.i, i64 0
  %i.ej = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ek = fdiv <2 x double> %.sroa.0556.8.vec.insert, %i.ej
  %i.el = fdiv double %i.ec, %.scalar.i
  %.sroa.0556.0 = select i1 %i.eh, <2 x double> %i.ek, <2 x double> %.sroa.0556.8.vec.insert ; 5 uses
  %.sroa.11564.0 = select i1 %i.eh, double %i.el, double %i.ec ; 3 uses
  %.sroa.0556.8.vec.extract = extractelement <2 x double> %.sroa.0556.0, i64 1
  %.sroa.0556.0.vec.extract = extractelement <2 x double> %.sroa.0556.0, i64 0
  %.sroa.7632.24.vec.insert = shufflevector <2 x double> %.sroa.0556.0, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.em = insertelement <2 x double> %.sroa.7632.24.vec.insert, double %.sroa.11564.0, i64 1
  %i.en = fneg <2 x double> %i.em
  %i.eo = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.ep = insertelement <2 x double> %i.eo, double %i.br, i64 1
  %i.eq = fmul <2 x double> %i.ep, %i.en
  %i.er = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.es = insertelement <2 x double> %i.er, double %i.bv, i64 1
  %i.et = insertelement <2 x double> %.sroa.7632.24.vec.insert, double %.sroa.11564.0, i64 0
  %i.eu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> %i.et, <2 x double> %i.eq)
  %i.ev = fneg double %.sroa.0556.0.vec.extract
  %i.ew = fmul double %i.bt, %i.ev
  %i.ex = call double @llvm.fmuladd.f64(double %i.br, double %.sroa.0556.8.vec.extract, double %i.ew)
  %i.ey = fneg <2 x double> %i.eu                 ; 2 uses
  %i.ez = fneg double %i.ex
  %.sroa.12635.48.vec.insert = insertelement <2 x double> poison, double %.sroa.11564.0, i64 0
  %.sroa.0629.8.vec.insert = shufflevector <2 x double> %.sroa.0556.0, <2 x double> %i.ey, <2 x i32> <i32 0, i32 2> ; 5 uses
  %.sroa.7632.32.vec.insert = shufflevector <2 x double> %.sroa.0556.0, <2 x double> %i.ey, <2 x i32> <i32 1, i32 3> ; 5 uses
  %.sroa.12635.56.vec.insert = insertelement <2 x double> %.sroa.12635.48.vec.insert, double %i.ez, i64 1 ; 5 uses
  %i.fa = load i32, ptr %i.dd, align 4, !tbaa !25
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.fb ; 3 uses
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !32
  %i.fe = fsub double %i.fd, %i.dr                ; 2 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.dp
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !32
  %i.fh = fsub double %i.fg, %i.dw                ; 2 uses
  %i.fi = getelementptr inbounds i8, ptr %i.fc, i64 %.idx.i.i.i.i.i.i.i.i.i.i165
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !32
  %i.fk = fsub double %i.fj, %i.eb                ; 2 uses
  %i.fl = getelementptr [4 x i8], ptr %i.dd, i64 %i.db
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !25
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.fn ; 3 uses
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !32
  %i.fq = fsub double %i.fp, %i.dr                ; 2 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.dp
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !32
  %i.ft = fsub double %i.fs, %i.dw                ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %i.fo, i64 %.idx.i.i.i.i.i.i.i.i.i.i165
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !32
  %i.fw = fsub double %i.fv, %i.eb                ; 2 uses
  %i.fx = insertelement <2 x double> poison, double %i.fe, i64 0
  %i.fy = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fz = fmul <2 x double> %i.fy, %.sroa.0629.8.vec.insert
  %i.ga = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.gb = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gc = fmul <2 x double> %i.gb, %.sroa.7632.32.vec.insert
  %i.gd = fadd <2 x double> %i.fz, %i.gc
  %i.ge = insertelement <2 x double> poison, double %i.fk, i64 0
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gg = fmul <2 x double> %i.gf, %.sroa.12635.56.vec.insert
  %i.gh = fadd <2 x double> %i.gd, %i.gg
  %i.gi = fmul double %i.fe, %i.br
  %i.gj = fmul double %i.fh, %i.bt
  %i.gk = fmul double %i.fk, %i.bv
  %i.gl = fadd double %i.gj, %i.gk
  %i.gm = fadd double %i.gi, %i.gl
  %i.gn = insertelement <2 x double> poison, double %i.fq, i64 0
  %i.go = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gp = fmul <2 x double> %i.go, %.sroa.0629.8.vec.insert
  %i.gq = insertelement <2 x double> poison, double %i.ft, i64 0
  %i.gr = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gs = fmul <2 x double> %.sroa.7632.32.vec.insert, %i.gr
  %i.gt = fadd <2 x double> %i.gp, %i.gs
  %i.gu = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.gv = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gw = fmul <2 x double> %.sroa.12635.56.vec.insert, %i.gv
  %i.gx = fadd <2 x double> %i.gt, %i.gw
  %i.gy = fmul double %i.fq, %i.br
  %i.gz = fmul double %i.bt, %i.ft
  %i.ha = fmul double %i.bv, %i.fw
  %i.hb = fadd double %i.gz, %i.ha
  %i.hc = fadd double %i.gy, %i.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.hd = getelementptr [4 x i8], ptr %i.da, i64 %i.bz ; 3 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !25
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.hf ; 3 uses
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !32
  %i.hi = fsub double %i.hh, %i.dr                ; 2 uses
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.hg, i64 %i.dp
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !32
  %i.hl = fsub double %i.hk, %i.dw                ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %i.hg, i64 %.idx.i.i.i.i.i.i.i.i.i.i165
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !32
  %i.ho = fsub double %i.hn, %i.eb                ; 2 uses
  %i.hp = getelementptr [4 x i8], ptr %i.hd, i64 %i.db
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !25
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.hr ; 3 uses
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !32
  %i.hu = fsub double %i.ht, %i.dr                ; 2 uses
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %i.dp
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !32
  %i.hx = fsub double %i.hw, %i.dw                ; 2 uses
  %i.hy = getelementptr inbounds i8, ptr %i.hs, i64 %.idx.i.i.i.i.i.i.i.i.i.i165
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !32
  %i.ia = fsub double %i.hz, %i.eb                ; 2 uses
  %.idx = shl i64 %i.db, 3
  %i.ib = getelementptr i8, ptr %i.hd, i64 %.idx
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !25
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.id ; 3 uses
  %i.if = load double, ptr %i.ie, align 8, !tbaa !32
  %i.ig = fsub double %i.if, %i.dr                ; 2 uses
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %i.dp
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !32
  %i.ij = fsub double %i.ii, %i.dw                ; 2 uses
  %i.ik = getelementptr inbounds i8, ptr %i.ie, i64 %.idx.i.i.i.i.i.i.i.i.i.i165
  %i.il = load double, ptr %i.ik, align 8, !tbaa !32
  %i.im = fsub double %i.il, %i.eb                ; 2 uses
  %i.in = insertelement <2 x double> poison, double %i.hi, i64 0
  %i.io = shufflevector <2 x double> %i.in, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ip = fmul <2 x double> %.sroa.0629.8.vec.insert, %i.io
  %i.iq = insertelement <2 x double> poison, double %i.hl, i64 0
  %i.ir = shufflevector <2 x double> %i.iq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.is = fmul <2 x double> %.sroa.7632.32.vec.insert, %i.ir
  %i.it = fadd <2 x double> %i.ip, %i.is
  %i.iu = insertelement <2 x double> poison, double %i.ho, i64 0
  %i.iv = shufflevector <2 x double> %i.iu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iw = fmul <2 x double> %.sroa.12635.56.vec.insert, %i.iv
  %i.ix = fadd <2 x double> %i.it, %i.iw          ; 4 uses
  %i.iy = fmul double %i.br, %i.hi
  %i.iz = fmul double %i.bt, %i.hl
  %i.ja = fmul double %i.bv, %i.ho
  %i.jb = fadd double %i.iz, %i.ja
  %i.jc = fadd double %i.iy, %i.jb                ; 3 uses
  %i.jd = insertelement <2 x double> poison, double %i.hu, i64 0
  %i.je = shufflevector <2 x double> %i.jd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jf = fmul <2 x double> %.sroa.0629.8.vec.insert, %i.je
  %i.jg = insertelement <2 x double> poison, double %i.hx, i64 0
  %i.jh = shufflevector <2 x double> %i.jg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ji = fmul <2 x double> %.sroa.7632.32.vec.insert, %i.jh
  %i.jj = fadd <2 x double> %i.jf, %i.ji
  %i.jk = insertelement <2 x double> poison, double %i.ia, i64 0
  %i.jl = shufflevector <2 x double> %i.jk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jm = fmul <2 x double> %.sroa.12635.56.vec.insert, %i.jl
  %i.jn = fadd <2 x double> %i.jj, %i.jm          ; 6 uses
  %i.jo = fmul double %i.br, %i.hu
  %i.jp = fmul double %i.bt, %i.hx
  %i.jq = fmul double %i.bv, %i.ia
  %i.jr = fadd double %i.jp, %i.jq
  %i.js = fadd double %i.jo, %i.jr                ; 3 uses
  %i.jt = insertelement <2 x double> poison, double %i.ig, i64 0
  %i.ju = shufflevector <2 x double> %i.jt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jv = fmul <2 x double> %.sroa.0629.8.vec.insert, %i.ju
  %i.jw = insertelement <2 x double> poison, double %i.ij, i64 0
  %i.jx = shufflevector <2 x double> %i.jw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jy = fmul <2 x double> %.sroa.7632.32.vec.insert, %i.jx
  %i.jz = fadd <2 x double> %i.jv, %i.jy
  %i.ka = insertelement <2 x double> poison, double %i.im, i64 0
  %i.kb = shufflevector <2 x double> %i.ka, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kc = fmul <2 x double> %.sroa.12635.56.vec.insert, %i.kb
  %i.kd = fadd <2 x double> %i.jz, %i.kc          ; 2 uses
  %i.ke = fmul double %i.br, %i.ig
  %i.kf = fmul double %i.bt, %i.ij
  %i.kg = fmul double %i.bv, %i.im
  %i.kh = fadd double %i.kf, %i.kg
  %i.ki = fadd double %i.ke, %i.kh
  %i.kj = extractelement <2 x double> %i.ix, i64 0
  %i.kk = shufflevector <2 x double> %i.jn, <2 x double> %i.kd, <2 x i32> <i32 0, i32 2>
  store <2 x double> %i.kk, ptr %i.aj, align 8, !tbaa !32
  %i.kl = extractelement <2 x double> %i.ix, i64 1 ; 2 uses
  store double %i.kl, ptr %i.ah, align 8, !tbaa !32
  %i.km = extractelement <2 x double> %i.jn, i64 1
  %i.kn = shufflevector <2 x double> %i.jn, <2 x double> %i.kd, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.kn, ptr %i.ak, align 8, !tbaa !32
  store double %i.jc, ptr %i.ai, align 8, !tbaa !32
  store double %i.js, ptr %i.al, align 8, !tbaa !32
  store double %i.ki, ptr %i.am, align 8, !tbaa !32
  %i.ko = select i1 %.not644, i64 2, i64 1
  %i.kp = select i1 %i.cn, i64 0, i64 %i.ko
  %i.kq = select i1 %i.cw, i64 1, i64 %i.kp
  %i.kr = getelementptr [8 x i8], ptr %7, i64 %i.kq ; 2 uses
  %i.ks = getelementptr i8, ptr %i.kr, i64 48
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !32
  %i.ku = getelementptr i8, ptr %i.kr, i64 24
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !32
  %i.kw = call double @atan2(double noundef %i.kt, double noundef %i.kv) #11
  %i.kx = fneg double %i.kw                       ; 3 uses
  %8 = call double @cos(double noundef %i.kx) #11
  %.sroa.7.32.vec.insert = insertelement <2 x double> <double 0.000000e+00, double poison>, double %8, i64 1 ; 2 uses
  %9 = call double @sin(double noundef %i.kx) #11 ; 3 uses
  %i.ky = fneg double %9
  %.sroa.12.56.vec.insert = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.ky, i64 1 ; 2 uses
  %i.kz = call double @cos(double noundef %i.kx) #11 ; 2 uses
  %i.la = shufflevector <2 x double> %i.ix, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lb = fmul <2 x double> %i.la, <double 1.000000e+00, double 0.000000e+00>
  %i.lc = shufflevector <2 x double> %i.ix, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ld = fmul <2 x double> %i.lc, %.sroa.7.32.vec.insert
  %i.le = fadd <2 x double> %i.lb, %i.ld
  %i.lf = insertelement <2 x double> poison, double %i.jc, i64 0
  %i.lg = shufflevector <2 x double> %i.lf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lh = fmul <2 x double> %i.lg, %.sroa.12.56.vec.insert
  %i.li = fadd <2 x double> %i.le, %i.lh          ; 2 uses
  %i.lj = fmul double %i.kj, 0.000000e+00
  %i.lk = fmul double %i.kl, %9
  %i.ll = fmul double %i.jc, %i.kz
  %i.lm = fadd double %i.lk, %i.ll
  %i.ln = fadd double %i.lj, %i.lm
  %i.lo = extractelement <2 x double> %i.jn, i64 0
  %i.lp = shufflevector <2 x double> %i.jn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lq = fmul <2 x double> %i.lp, <double 1.000000e+00, double 0.000000e+00>
  %i.lr = shufflevector <2 x double> %i.jn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ls = fmul <2 x double> %i.lr, %.sroa.7.32.vec.insert
  %i.lt = fadd <2 x double> %i.ls, %i.lq
  %i.lu = insertelement <2 x double> poison, double %i.js, i64 0
  %i.lv = shufflevector <2 x double> %i.lu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lw = fmul <2 x double> %i.lv, %.sroa.12.56.vec.insert
  %i.lx = fadd <2 x double> %i.lw, %i.lt
  %i.ly = fmul double %i.lo, 0.000000e+00
  %i.lz = fmul double %i.km, %9
  %i.ma = fmul double %i.js, %i.kz
  %i.mb = fadd double %i.lz, %i.ma
  %i.mc = fadd double %i.mb, %i.ly
  %i.md = extractelement <2 x double> %i.li, i64 0
  store double %i.md, ptr %7, align 8, !tbaa !32
  %i.me = fsub <2 x double> %i.gx, %i.gh          ; 4 uses
  %i.mf = fsub double %i.hc, %i.gm                ; 2 uses
  %i.mg = fsub <2 x double> %i.lx, %i.li          ; 4 uses
  %i.mh = fsub double %i.mc, %i.ln                ; 2 uses
  %i.mi = fmul <2 x double> %i.me, %i.me          ; 2 uses
  %shift646 = shufflevector <2 x double> %i.mi, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop647 = fadd <2 x double> %i.mi, %shift646
  %i.mj = extractelement <2 x double> %foldExtExtBinop647, i64 0
  %i.mk = fmul double %i.mf, %i.mf
  %i.ml = fadd double %i.mk, %i.mj                ; 2 uses
  %i.mm = fcmp ogt double %i.ml, 0.000000e+00
  %.scalar.i235 = call double @llvm.sqrt.f64(double %i.ml)
  %i.mn = insertelement <2 x double> poison, double %.scalar.i235, i64 0
  %i.mo = shufflevector <2 x double> %i.mn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mp = fdiv <2 x double> %i.me, %i.mo
  %.sroa.0312.0 = select i1 %i.mm, <2 x double> %i.mp, <2 x double> %i.me ; 2 uses
  %i.mq = fmul <2 x double> %i.mg, %i.mg          ; 2 uses
  %shift649 = shufflevector <2 x double> %i.mq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop650 = fadd <2 x double> %i.mq, %shift649
  %i.mr = extractelement <2 x double> %foldExtExtBinop650, i64 0
  %i.ms = fmul double %i.mh, %i.mh
  %i.mt = fadd double %i.ms, %i.mr                ; 2 uses
  %i.mu = fcmp ogt double %i.mt, 0.000000e+00
  %.scalar.i237 = call double @llvm.sqrt.f64(double %i.mt)
  %i.mv = insertelement <2 x double> poison, double %.scalar.i237, i64 0
  %i.mw = shufflevector <2 x double> %i.mv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mx = fdiv <2 x double> %i.mg, %i.mw
  %.sroa.0282.0 = select i1 %i.mu, <2 x double> %i.mx, <2 x double> %i.mg ; 2 uses
  %.sroa.0282.8.vec.extract = extractelement <2 x double> %.sroa.0282.0, i64 1
  %.sroa.0282.0.vec.extract = extractelement <2 x double> %.sroa.0282.0, i64 0
  %i.my = call double @atan2(double noundef %.sroa.0282.8.vec.extract, double noundef %.sroa.0282.0.vec.extract) #11
  %.sroa.0312.8.vec.extract = extractelement <2 x double> %.sroa.0312.0, i64 1
  %.sroa.0312.0.vec.extract = extractelement <2 x double> %.sroa.0312.0, i64 0
  %i.mz = call double @atan2(double noundef %.sroa.0312.8.vec.extract, double noundef %.sroa.0312.0.vec.extract) #11
  %i.na = fsub double %i.my, %i.mz                ; 5 uses
  %i.nb = call double @llvm.fabs.f64(double %i.na)
  %i.nc = fcmp oeq double %i.nb, +inf
  br i1 %i.nc, label %cdce.call598, label %cdce.end599, !prof !39

bb.n:                                             ; preds = %bb.e, %bb.a
  %i.nd = landingpad { ptr, i32 }
          cleanup
  %i.ne = load ptr, ptr %6, align 8, !tbaa !14
  call void @free(ptr noundef %i.ne) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  resume { ptr, i32 } %i.nd

cdce.call598:                                     ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEE9normalizeEv.exit236
  %i.nf = call double @cos(double noundef %i.na) #11 ; 0 uses
  %i.ng = call double @sin(double noundef %i.na) #11 ; 0 uses
  %i.nh = call double @cos(double noundef %i.na) #11 ; 0 uses
  br label %cdce.end599

cdce.end599:                                      ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEE9normalizeEv.exit236, %cdce.call598
  %i.ni = load ptr, ptr %5, align 8, !tbaa !30
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %indvars.iv614
  store double %i.na, ptr %i.nj, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %cdce.end599
  %i.nk = phi ptr [ %i.be, %bb.m ], [ %.pre, %cdce.end599 ] ; 2 uses
  %indvars.iv.next615 = add nuw nsw i64 %indvars.iv614, 1 ; 2 uses
  %exitcond618.not = icmp eq i64 %indvars.iv.next615, %wide.trip.count617
  br i1 %exitcond618.not, label %._crit_edge606, label %bb.m, !llvm.loop !22
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
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
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #11 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.i) #11
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 4611686018427387903
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #11 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #12 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #11 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !14
  br label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !13
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { noreturn }

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
!12 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EEE", !10, i64 0, !11, i64 8}
!13 = !{!12, !11, i64 8}
!14 = !{!12, !10, i64 0}
!15 = !{!"vtable pointer", !4, i64 0}
!16 = !{!15, !15, i64 0}
!17 = distinct !{!17, !33}
!18 = distinct !{!18, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!19 = distinct !{!19, !18, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!20 = distinct !{!20, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!21 = distinct !{!21, !20, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!22 = distinct !{!22, !33}
!23 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEE", !10, i64 0, !11, i64 8, !11, i64 16}
!24 = !{!23, !11, i64 8}
!25 = !{!6, !6, i64 0}
!26 = !{!23, !10, i64 0}
!27 = !{!"p1 double", !9, i64 0}
!28 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EEE", !27, i64 0, !11, i64 8}
!29 = !{!28, !11, i64 8}
!30 = !{!28, !27, i64 0}
!31 = !{!"double", !5, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !27, i64 0, !11, i64 8, !11, i64 16}
!35 = !{!34, !27, i64 0}
!36 = !{!19}
!37 = !{!34, !11, i64 8}
!38 = !{!21}
!39 = !{!"branch_weights", i32 1, i32 1048575}
end_hunk_0
