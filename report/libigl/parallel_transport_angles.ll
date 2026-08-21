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

$_ZN3igl25parallel_transport_anglesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EESA_RKS4_SG_RNS1_15PlainObjectBaseIT1_EE = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl25parallel_transport_anglesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EESA_RKS4_SG_RNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Eigen::Matrix.3", align 8   ; 11 uses
  %.sroa.4 = alloca [3 x double], align 8         ; 5 uses
  %.sroa.7 = alloca [3 x double], align 8         ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %sext = shl i64 %i.b, 32                        ; 3 uses
  %i.c = ashr exact i64 %sext, 32                 ; 5 uses
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.c, i64 noundef 1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %i.f = icmp slt i64 %i.e, 1
  br i1 %i.f, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i: ; preds = %.noexc
  %i.g = load ptr, ptr %6, align 8, !tbaa !16
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.e, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.g, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !17
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit: ; preds = %.noexc, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i
  %i.h = and i64 %i.b, 4294967295
  %.not607 = icmp eq i64 %i.h, 0                  ; 2 uses
  br i1 %.not607, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit
  %i.i = load ptr, ptr %3, align 8, !tbaa !18     ; 3 uses
  %i.j = load ptr, ptr %6, align 8                ; 3 uses
  %wide.trip.count = and i64 %i.b, 4294967295
  %xtraiter = and i64 %i.b, 1
  %i.k = icmp eq i64 %wide.trip.count, 1
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.b, 4294967294
  br label %bb.g

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod652 = trunc i64 %i.b to i1
  call void @llvm.assume(i1 %lcmp.mod652)
  %i.l = getelementptr [4 x i8], ptr %i.i, i64 %indvars.iv.epil.init ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !17
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.epil.preheader
  %i.o = load i64, ptr %i.a, align 8, !tbaa !9
  %i.p = getelementptr [4 x i8], ptr %i.l, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !17
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b, %.epil.preheader
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.epil.init
  store i32 1, ptr %i.s, align 4, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.b, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEll.exit
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !19
  %.not.i.i.i = icmp eq i64 %i.c, %i.u
  br i1 %.not.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.v = load ptr, ptr %5, align 8, !tbaa !22
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aa, align 8, !tbaa !23
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
          to label %.noexc164 unwind label %bb.f

.noexc164:                                        ; preds = %bb.e
  unreachable

.sink.split.i.i.i:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i, %bb.d
  %.sink.i.i.i = phi ptr [ %i.y, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i ], [ null, %bb.d ]
  store ptr %.sink.i.i.i, ptr %5, align 8, !tbaa !22
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit.i: ; preds = %.sink.split.i.i.i, %._crit_edge
  store i64 %i.c, ptr %i.t, align 8, !tbaa !19
  %i.ab = icmp slt i64 %i.c, 1
  br i1 %i.ab, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit.i
  %i.ac = load ptr, ptr %5, align 8, !tbaa !22
  %.idx.i.i.i.i.i.i.i.i.i.i.i162 = lshr exact i64 %sext, 29
  call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i162, i1 false), !tbaa !25
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit.i, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i
  %.pre639 = load ptr, ptr %6, align 8, !tbaa !16 ; 2 uses
  br i1 %.not607, label %._crit_edge606, label %.lr.ph605

.lr.ph605:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count617 = and i64 %i.b, 4294967295
  %.pre = load ptr, ptr %6, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 16
  br label %bb.n

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %6, align 8, !tbaa !16
  call void @free(ptr noundef %i.al) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  resume { ptr, i32 } %i.ak

bb.g:                                             ; preds = %bb.m, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.m ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.m ]
  %i.am = getelementptr [4 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !17
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !9
  %i.aq = getelementptr [4 x i8], ptr %i.am, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !17
  %i.as = icmp eq i32 %i.ar, -1
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  store i32 1, ptr %i.at, align 4, !tbaa !17
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.au = getelementptr [4 x i8], ptr %i.i, i64 %indvars.iv.next ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !17
  %i.aw = icmp eq i32 %i.av, -1
  br i1 %i.aw, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !9
  %i.ay = getelementptr [4 x i8], ptr %i.au, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !17
  %i.ba = icmp eq i32 %i.az, -1
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next
  store i32 1, ptr %i.bb, align 4, !tbaa !17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.g, !llvm.loop !27

._crit_edge606:                                   ; preds = %bb.o, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit
  %i.bc = phi ptr [ %.pre639, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit ], [ %i.nd, %bb.o ]
  call void @free(ptr noundef %i.bc) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret void

bb.n:                                             ; preds = %.lr.ph605, %bb.o
  %i.bd = phi ptr [ %.pre639, %.lr.ph605 ], [ %i.nd, %bb.o ] ; 2 uses
  %indvars.iv614 = phi i64 [ 0, %.lr.ph605 ], [ %indvars.iv.next615, %bb.o ] ; 10 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv614
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !17
  %.not = icmp eq i32 %i.bf, 0
  br i1 %.not, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEE9normalizeEv.exit236, label %bb.o

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEE9normalizeEv.exit236: ; preds = %bb.n
  %i.bg = load ptr, ptr %3, align 8, !tbaa !18
  %i.bh = getelementptr [4 x i8], ptr %i.bg, i64 %indvars.iv614 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !17
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !9
  %i.bk = getelementptr [4 x i8], ptr %i.bh, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !17
  %i.bm = sext i32 %i.bi to i64                   ; 3 uses
  %i.bn = load ptr, ptr %2, align 8, !tbaa !29, !noalias !31
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bm ; 3 uses
  %i.bp = load i64, ptr %i.ad, align 8, !tbaa !34 ; 2 uses
  %i.bq = load double, ptr %i.bo, align 8, !tbaa !25 ; 7 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bp
  %i.bs = load double, ptr %i.br, align 8, !tbaa !25 ; 7 uses
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.bp, 4
  %i.bt = getelementptr inbounds i8, ptr %i.bo, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !25 ; 7 uses
  %i.bv = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.bw = load i64, ptr %i.ae, align 8, !tbaa !9  ; 3 uses
  %i.bx = getelementptr [4 x i8], ptr %i.bv, i64 %i.bm ; 3 uses
  %i.by = sext i32 %i.bl to i64                   ; 2 uses
  %i.bz = getelementptr [4 x i8], ptr %i.bv, i64 %i.by ; 3 uses
  %i.ca = load i32, ptr %i.bx, align 4, !tbaa !17
  %i.cb = zext i32 %i.ca to i64
  %i.cc = icmp ne i64 %indvars.iv614, %i.cb
  %spec.select = sext i1 %i.cc to i32
  %i.cd = load i32, ptr %i.bz, align 4, !tbaa !17
  %i.ce = zext i32 %i.cd to i64
  %.not644 = icmp eq i64 %indvars.iv614, %i.ce
  %i.cf = getelementptr [4 x i8], ptr %i.bx, i64 %i.bw
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !17
  %i.ch = zext i32 %i.cg to i64
  %i.ci = icmp eq i64 %indvars.iv614, %i.ch
  %spec.select.1 = select i1 %i.ci, i32 1, i32 %spec.select
  %i.cj = getelementptr [4 x i8], ptr %i.bz, i64 %i.bw
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !17
  %i.cl = zext i32 %i.ck to i64
  %i.cm = icmp eq i64 %indvars.iv614, %i.cl
  %i.cn = shl nsw i64 %i.bw, 1                    ; 2 uses
  %i.co = getelementptr [4 x i8], ptr %i.bx, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !17
  %i.cq = zext i32 %i.cp to i64
  %i.cr = icmp eq i64 %indvars.iv614, %i.cq
  %spec.select.2 = select i1 %i.cr, i32 2, i32 %spec.select.1
  %spec.select.2.fr = freeze i32 %spec.select.2   ; 3 uses
  %i.cs = getelementptr [4 x i8], ptr %i.bz, i64 %i.cn
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !17
  %i.cu = zext i32 %i.ct to i64
  %i.cv = icmp eq i64 %indvars.iv614, %i.cu
  %i.cw = add i32 %spec.select.2.fr, 1            ; 2 uses
  %.urem = add i32 %spec.select.2.fr, -2
  %.cmp = icmp ult i32 %i.cw, 3
  %i.cx = select i1 %.cmp, i32 %i.cw, i32 %.urem
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.da = load i64, ptr %i.af, align 8, !tbaa !9  ; 5 uses
  %i.db = mul nsw i64 %i.da, %i.cy
  %i.dc = getelementptr [4 x i8], ptr %i.cz, i64 %i.bm ; 4 uses
  %i.dd = getelementptr [4 x i8], ptr %i.dc, i64 %i.db
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !17
  %i.df = sext i32 %i.de to i64
  %i.dg = load ptr, ptr %0, align 8, !tbaa !29, !noalias !35 ; 7 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.df ; 3 uses
  %i.di = sext i32 %spec.select.2.fr to i64
  %i.dj = mul nsw i64 %i.da, %i.di
  %i.dk = getelementptr [4 x i8], ptr %i.dc, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !17
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.dm ; 3 uses
  %i.do = load i64, ptr %i.ag, align 8, !tbaa !34 ; 8 uses
  %i.dp = load double, ptr %i.dh, align 8, !tbaa !25
  %i.dq = load double, ptr %i.dn, align 8, !tbaa !25 ; 6 uses
  %i.dr = fsub double %i.dp, %i.dq
  %.sroa.0556.0.vec.insert = insertelement <2 x double> poison, double %i.dr, i64 0
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.do
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !25
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.do
  %i.dv = load double, ptr %i.du, align 8, !tbaa !25 ; 6 uses
  %i.dw = fsub double %i.dt, %i.dv
  %.sroa.0556.8.vec.insert = insertelement <2 x double> %.sroa.0556.0.vec.insert, double %i.dw, i64 1 ; 4 uses
  %.idx.i.i.i.i.i.i.i.i.i.i165 = shl nsw i64 %i.do, 4 ; 7 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dh, i64 %.idx.i.i.i.i.i.i.i.i.i.i165
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !25
  %i.dz = getelementptr inbounds i8, ptr %i.dn, i64 %.idx.i.i.i.i.i.i.i.i.i.i165
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !25 ; 6 uses
  %i.eb = fsub double %i.dy, %i.ea                ; 4 uses
  %i.ec = fmul <2 x double> %.sroa.0556.8.vec.insert, %.sroa.0556.8.vec.insert ; 2 uses
  %shift = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ec, %shift
  %i.ed = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ee = fmul double %i.eb, %i.eb
  %i.ef = fadd double %i.ee, %i.ed                ; 2 uses
  %i.eg = fcmp ogt double %i.ef, 0.000000e+00     ; 2 uses
  %.scalar.i = call double @llvm.sqrt.f64(double %i.ef) ; 2 uses
  %i.eh = insertelement <2 x double> poison, double %.scalar.i, i64 0
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ej = fdiv <2 x double> %.sroa.0556.8.vec.insert, %i.ei
  %i.ek = fdiv double %i.eb, %.scalar.i
  %.sroa.0556.0 = select i1 %i.eg, <2 x double> %i.ej, <2 x double> %.sroa.0556.8.vec.insert ; 5 uses
  %.sroa.11564.0 = select i1 %i.eg, double %i.ek, double %i.eb ; 3 uses
  %.sroa.0556.8.vec.extract = extractelement <2 x double> %.sroa.0556.0, i64 1
  %.sroa.0556.0.vec.extract = extractelement <2 x double> %.sroa.0556.0, i64 0
  %.sroa.7632.24.vec.insert = shufflevector <2 x double> %.sroa.0556.0, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.el = insertelement <2 x double> %.sroa.7632.24.vec.insert, double %.sroa.11564.0, i64 1
  %i.em = fneg <2 x double> %i.el
  %i.en = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.eo = insertelement <2 x double> %i.en, double %i.bq, i64 1
  %i.ep = fmul <2 x double> %i.eo, %i.em
  %i.eq = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.er = insertelement <2 x double> %i.eq, double %i.bu, i64 1
  %i.es = insertelement <2 x double> %.sroa.7632.24.vec.insert, double %.sroa.11564.0, i64 0
  %i.et = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.er, <2 x double> %i.es, <2 x double> %i.ep)
  %i.eu = fneg double %.sroa.0556.0.vec.extract
  %i.ev = fmul double %i.bs, %i.eu
  %i.ew = call double @llvm.fmuladd.f64(double %i.bq, double %.sroa.0556.8.vec.extract, double %i.ev)
  %i.ex = fneg <2 x double> %i.et                 ; 2 uses
  %i.ey = fneg double %i.ew
  %.sroa.12635.48.vec.insert = insertelement <2 x double> poison, double %.sroa.11564.0, i64 0
  %.sroa.0629.8.vec.insert = shufflevector <2 x double> %.sroa.0556.0, <2 x double> %i.ex, <2 x i32> <i32 0, i32 2> ; 5 uses
  %.sroa.7632.32.vec.insert = shufflevector <2 x double> %.sroa.0556.0, <2 x double> %i.ex, <2 x i32> <i32 1, i32 3> ; 5 uses
  %.sroa.12635.56.vec.insert = insertelement <2 x double> %.sroa.12635.48.vec.insert, double %i.ey, i64 1 ; 5 uses
  %i.ez = load i32, ptr %i.dc, align 4, !tbaa !17
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.fa ; 3 uses
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !25
  %i.fd = fsub double %i.fc, %i.dq                ; 2 uses
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.do
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !25
  %i.fg = fsub double %i.ff, %i.dv                ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %i.fb, i64 %.idx.i.i.i.i.i.i.i.i.i.i165
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !25
  %i.fj = fsub double %i.fi, %i.ea                ; 2 uses
  %i.fk = getelementptr [4 x i8], ptr %i.dc, i64 %i.da
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !17
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.fm ; 3 uses
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !25
  %i.fp = fsub double %i.fo, %i.dq                ; 2 uses
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.do
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !25
  %i.fs = fsub double %i.fr, %i.dv                ; 2 uses
  %i.ft = getelementptr inbounds i8, ptr %i.fn, i64 %.idx.i.i.i.i.i.i.i.i.i.i165
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !25
  %i.fv = fsub double %i.fu, %i.ea                ; 2 uses
  %i.fw = insertelement <2 x double> poison, double %i.fd, i64 0
  %i.fx = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fy = fmul <2 x double> %i.fx, %.sroa.0629.8.vec.insert
  %i.fz = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.ga = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gb = fmul <2 x double> %i.ga, %.sroa.7632.32.vec.insert
  %i.gc = fadd <2 x double> %i.fy, %i.gb
  %i.gd = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.ge = shufflevector <2 x double> %i.gd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gf = fmul <2 x double> %i.ge, %.sroa.12635.56.vec.insert
  %i.gg = fadd <2 x double> %i.gc, %i.gf
  %i.gh = fmul double %i.fd, %i.bq
  %i.gi = fmul double %i.fg, %i.bs
  %i.gj = fmul double %i.fj, %i.bu
  %i.gk = fadd double %i.gi, %i.gj
  %i.gl = fadd double %i.gh, %i.gk
  %i.gm = insertelement <2 x double> poison, double %i.fp, i64 0
  %i.gn = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.go = fmul <2 x double> %i.gn, %.sroa.0629.8.vec.insert
  %i.gp = insertelement <2 x double> poison, double %i.fs, i64 0
  %i.gq = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gr = fmul <2 x double> %.sroa.7632.32.vec.insert, %i.gq
  %i.gs = fadd <2 x double> %i.go, %i.gr
  %i.gt = insertelement <2 x double> poison, double %i.fv, i64 0
  %i.gu = shufflevector <2 x double> %i.gt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gv = fmul <2 x double> %.sroa.12635.56.vec.insert, %i.gu
  %i.gw = fadd <2 x double> %i.gs, %i.gv
  %i.gx = fmul double %i.fp, %i.bq
  %i.gy = fmul double %i.bs, %i.fs
  %i.gz = fmul double %i.bu, %i.fv
  %i.ha = fadd double %i.gy, %i.gz
  %i.hb = fadd double %i.gx, %i.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.hc = getelementptr [4 x i8], ptr %i.cz, i64 %i.by ; 3 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !17
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.he ; 3 uses
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !25
  %i.hh = fsub double %i.hg, %i.dq                ; 2 uses
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.hf, i64 %i.do
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !25
  %i.hk = fsub double %i.hj, %i.dv                ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %i.hf, i64 %.idx.i.i.i.i.i.i.i.i.i.i165
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !25
  %i.hn = fsub double %i.hm, %i.ea                ; 2 uses
  %i.ho = getelementptr [4 x i8], ptr %i.hc, i64 %i.da
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !17
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.hq ; 3 uses
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !25
  %i.ht = fsub double %i.hs, %i.dq                ; 2 uses
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.hr, i64 %i.do
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !25
  %i.hw = fsub double %i.hv, %i.dv                ; 2 uses
  %i.hx = getelementptr inbounds i8, ptr %i.hr, i64 %.idx.i.i.i.i.i.i.i.i.i.i165
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !25
  %i.hz = fsub double %i.hy, %i.ea                ; 2 uses
  %.idx = shl i64 %i.da, 3
  %i.ia = getelementptr i8, ptr %i.hc, i64 %.idx
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !17
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.ic ; 3 uses
  %i.ie = load double, ptr %i.id, align 8, !tbaa !25
  %i.if = fsub double %i.ie, %i.dq                ; 2 uses
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.id, i64 %i.do
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !25
  %i.ii = fsub double %i.ih, %i.dv                ; 2 uses
  %i.ij = getelementptr inbounds i8, ptr %i.id, i64 %.idx.i.i.i.i.i.i.i.i.i.i165
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !25
  %i.il = fsub double %i.ik, %i.ea                ; 2 uses
  %i.im = insertelement <2 x double> poison, double %i.hh, i64 0
  %i.in = shufflevector <2 x double> %i.im, <2 x double> poison, <2 x i32> zeroinitializer
  %i.io = fmul <2 x double> %.sroa.0629.8.vec.insert, %i.in
  %i.ip = insertelement <2 x double> poison, double %i.hk, i64 0
  %i.iq = shufflevector <2 x double> %i.ip, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ir = fmul <2 x double> %.sroa.7632.32.vec.insert, %i.iq
  %i.is = fadd <2 x double> %i.io, %i.ir
  %i.it = insertelement <2 x double> poison, double %i.hn, i64 0
  %i.iu = shufflevector <2 x double> %i.it, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iv = fmul <2 x double> %.sroa.12635.56.vec.insert, %i.iu
  %i.iw = fadd <2 x double> %i.is, %i.iv          ; 4 uses
  %i.ix = fmul double %i.bq, %i.hh
  %i.iy = fmul double %i.bs, %i.hk
  %i.iz = fmul double %i.bu, %i.hn
  %i.ja = fadd double %i.iy, %i.iz
  %i.jb = fadd double %i.ix, %i.ja                ; 3 uses
  %i.jc = insertelement <2 x double> poison, double %i.ht, i64 0
  %i.jd = shufflevector <2 x double> %i.jc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.je = fmul <2 x double> %.sroa.0629.8.vec.insert, %i.jd
  %i.jf = insertelement <2 x double> poison, double %i.hw, i64 0
  %i.jg = shufflevector <2 x double> %i.jf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jh = fmul <2 x double> %.sroa.7632.32.vec.insert, %i.jg
  %i.ji = fadd <2 x double> %i.je, %i.jh
  %i.jj = insertelement <2 x double> poison, double %i.hz, i64 0
  %i.jk = shufflevector <2 x double> %i.jj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jl = fmul <2 x double> %.sroa.12635.56.vec.insert, %i.jk
  %i.jm = fadd <2 x double> %i.ji, %i.jl          ; 5 uses
  %i.jn = fmul double %i.bq, %i.ht
  %i.jo = fmul double %i.bs, %i.hw
  %i.jp = fmul double %i.bu, %i.hz
  %i.jq = fadd double %i.jo, %i.jp
  %i.jr = fadd double %i.jn, %i.jq                ; 3 uses
  %i.js = insertelement <2 x double> poison, double %i.if, i64 1
  %i.jt = fmul <2 x double> %.sroa.0629.8.vec.insert, %i.js
  %i.ju = insertelement <2 x double> poison, double %i.ii, i64 1
  %i.jv = fmul <2 x double> %.sroa.7632.32.vec.insert, %i.ju
  %i.jw = fadd <2 x double> %i.jt, %i.jv
  %i.jx = insertelement <2 x double> poison, double %i.il, i64 1
  %i.jy = fmul <2 x double> %.sroa.12635.56.vec.insert, %i.jx
  %i.jz = fadd <2 x double> %i.jw, %i.jy
  %i.ka = fmul double %i.bq, %i.if
  %i.kb = fmul double %i.bs, %i.ii
  %i.kc = fmul double %i.bu, %i.il
  %i.kd = fadd double %i.kb, %i.kc
  %i.ke = fadd double %i.ka, %i.kd
  %i.kf = extractelement <2 x double> %i.iw, i64 0
  %i.kg = extractelement <2 x double> %i.iw, i64 1 ; 2 uses
  store double %i.kg, ptr %.sroa.4, align 8, !tbaa !25
  %i.kh = extractelement <2 x double> %i.jm, i64 1
  %i.ki = shufflevector <2 x double> %i.jm, <2 x double> %i.jz, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.ki, ptr %i.ah, align 8, !tbaa !25
  store double %i.jb, ptr %.sroa.7, align 8, !tbaa !25
  store double %i.jr, ptr %i.ai, align 8, !tbaa !25
  store double %i.ke, ptr %i.aj, align 8, !tbaa !25
  %i.kj = select i1 %.not644, i64 2, i64 1
  %i.kk = select i1 %i.cm, i64 0, i64 %i.kj
  %i.kl = select i1 %i.cv, i64 1, i64 %i.kk       ; 2 uses
  %.sroa.7.48..sroa_stride = shl nuw nsw i64 %i.kl, 3
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 %.sroa.7.48..sroa_stride
  %i.kn = load double, ptr %i.km, align 8, !tbaa !25
  %.sroa.4.24..sroa_stride = shl nuw nsw i64 %i.kl, 3
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 %.sroa.4.24..sroa_stride
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !25
  %i.kq = call double @atan2(double noundef %i.kn, double noundef %i.kp) #11
  %i.kr = fneg double %i.kq                       ; 3 uses
  %i.ks = call double @cos(double noundef %i.kr) #11
  %.sroa.7.32.vec.insert = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.ks, i64 1 ; 2 uses
  %i.kt = call double @sin(double noundef %i.kr) #11 ; 3 uses
  %i.ku = fneg double %i.kt
  %.sroa.12.56.vec.insert = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.ku, i64 1 ; 2 uses
  %i.kv = call double @cos(double noundef %i.kr) #11 ; 2 uses
  %i.kw = shufflevector <2 x double> %i.iw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kx = fmul <2 x double> %i.kw, <double 1.000000e+00, double 0.000000e+00>
  %i.ky = shufflevector <2 x double> %i.iw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.kz = fmul <2 x double> %i.ky, %.sroa.7.32.vec.insert
  %i.la = fadd <2 x double> %i.kx, %i.kz
  %i.lb = insertelement <2 x double> poison, double %i.jb, i64 0
  %i.lc = shufflevector <2 x double> %i.lb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ld = fmul <2 x double> %i.lc, %.sroa.12.56.vec.insert
  %i.le = fadd <2 x double> %i.la, %i.ld
  %i.lf = fmul double %i.kf, 0.000000e+00
  %i.lg = fmul double %i.kg, %i.kt
  %i.lh = fmul double %i.jb, %i.kv
  %i.li = fadd double %i.lg, %i.lh
  %i.lj = fadd double %i.lf, %i.li
  %i.lk = extractelement <2 x double> %i.jm, i64 0
  %i.ll = shufflevector <2 x double> %i.jm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lm = fmul <2 x double> %i.ll, <double 1.000000e+00, double 0.000000e+00>
  %i.ln = shufflevector <2 x double> %i.jm, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.lo = fmul <2 x double> %i.ln, %.sroa.7.32.vec.insert
  %i.lp = fadd <2 x double> %i.lo, %i.lm
  %i.lq = insertelement <2 x double> poison, double %i.jr, i64 0
  %i.lr = shufflevector <2 x double> %i.lq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ls = fmul <2 x double> %i.lr, %.sroa.12.56.vec.insert
  %i.lt = fadd <2 x double> %i.ls, %i.lp
  %i.lu = fmul double %i.lk, 0.000000e+00
  %i.lv = fmul double %i.kh, %i.kt
  %i.lw = fmul double %i.jr, %i.kv
  %i.lx = fadd double %i.lv, %i.lw
  %i.ly = fadd double %i.lx, %i.lu
  %i.lz = fsub <2 x double> %i.gw, %i.gg          ; 4 uses
  %i.ma = fsub double %i.hb, %i.gl                ; 2 uses
  %i.mb = fsub <2 x double> %i.lt, %i.le          ; 4 uses
  %i.mc = fsub double %i.ly, %i.lj                ; 2 uses
  %i.md = fmul <2 x double> %i.lz, %i.lz          ; 2 uses
  %shift646 = shufflevector <2 x double> %i.md, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop647 = fadd <2 x double> %i.md, %shift646
  %i.me = extractelement <2 x double> %foldExtExtBinop647, i64 0
  %i.mf = fmul double %i.ma, %i.ma
  %i.mg = fadd double %i.mf, %i.me                ; 2 uses
  %i.mh = fcmp ogt double %i.mg, 0.000000e+00
  %.scalar.i235 = call double @llvm.sqrt.f64(double %i.mg)
  %i.mi = insertelement <2 x double> poison, double %.scalar.i235, i64 0
  %i.mj = shufflevector <2 x double> %i.mi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mk = fdiv <2 x double> %i.lz, %i.mj
  %.sroa.0312.0 = select i1 %i.mh, <2 x double> %i.mk, <2 x double> %i.lz ; 2 uses
  %i.ml = fmul <2 x double> %i.mb, %i.mb          ; 2 uses
  %shift649 = shufflevector <2 x double> %i.ml, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop650 = fadd <2 x double> %i.ml, %shift649
  %i.mm = extractelement <2 x double> %foldExtExtBinop650, i64 0
  %i.mn = fmul double %i.mc, %i.mc
  %i.mo = fadd double %i.mn, %i.mm                ; 2 uses
  %i.mp = fcmp ogt double %i.mo, 0.000000e+00
  %.scalar.i237 = call double @llvm.sqrt.f64(double %i.mo)
  %i.mq = insertelement <2 x double> poison, double %.scalar.i237, i64 0
  %i.mr = shufflevector <2 x double> %i.mq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ms = fdiv <2 x double> %i.mb, %i.mr
  %.sroa.0282.0 = select i1 %i.mp, <2 x double> %i.ms, <2 x double> %i.mb ; 2 uses
  %.sroa.0282.8.vec.extract = extractelement <2 x double> %.sroa.0282.0, i64 1
  %.sroa.0282.0.vec.extract = extractelement <2 x double> %.sroa.0282.0, i64 0
  %i.mt = call double @atan2(double noundef %.sroa.0282.8.vec.extract, double noundef %.sroa.0282.0.vec.extract) #11
  %.sroa.0312.8.vec.extract = extractelement <2 x double> %.sroa.0312.0, i64 1
  %.sroa.0312.0.vec.extract = extractelement <2 x double> %.sroa.0312.0, i64 0
  %i.mu = call double @atan2(double noundef %.sroa.0312.8.vec.extract, double noundef %.sroa.0312.0.vec.extract) #11
  %i.mv = fsub double %i.mt, %i.mu                ; 5 uses
  %i.mw = call double @llvm.fabs.f64(double %i.mv)
  %i.mx = fcmp oeq double %i.mw, +inf
  br i1 %i.mx, label %cdce.call598, label %cdce.end599, !prof !38

cdce.call598:                                     ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEE9normalizeEv.exit236
  %i.my = call double @cos(double noundef %i.mv) #11 ; 0 uses
  %i.mz = call double @sin(double noundef %i.mv) #11 ; 0 uses
  %i.na = call double @cos(double noundef %i.mv) #11 ; 0 uses
  br label %cdce.end599

cdce.end599:                                      ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEE9normalizeEv.exit236, %cdce.call598
  %i.nb = load ptr, ptr %5, align 8, !tbaa !22
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %indvars.iv614
  store double %i.mv, ptr %i.nc, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %cdce.end599
  %i.nd = phi ptr [ %i.bd, %bb.n ], [ %.pre, %cdce.end599 ] ; 2 uses
  %indvars.iv.next615 = add nuw nsw i64 %indvars.iv614, 1 ; 2 uses
  %exitcond618.not = icmp eq i64 %indvars.iv.next615, %wide.trip.count617
  br i1 %exitcond618.not, label %._crit_edge606, label %bb.n, !llvm.loop !39
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.i) #11
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 4611686018427387903
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #11 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #12 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #11 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !16
  br label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !14
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
!9 = !{!10, !13, i64 8}
!10 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEE", !11, i64 0, !13, i64 8, !13, i64 16}
!11 = !{!"p1 int", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!15, !13, i64 8}
!15 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EEE", !11, i64 0, !13, i64 8}
!16 = !{!15, !11, i64 0}
!17 = !{!6, !6, i64 0}
!18 = !{!10, !11, i64 0}
!19 = !{!20, !13, i64 8}
!20 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EEE", !21, i64 0, !13, i64 8}
!21 = !{!"p1 double", !12, i64 0}
!22 = !{!20, !21, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !8, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"double", !7, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!30, !21, i64 0}
!30 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !21, i64 0, !13, i64 8, !13, i64 16}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!33 = distinct !{!33, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!34 = !{!30, !13, i64 8}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!37 = distinct !{!37, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!38 = !{!"branch_weights", i32 1, i32 1048575}
!39 = distinct !{!39, !28}
end_hunk_0
