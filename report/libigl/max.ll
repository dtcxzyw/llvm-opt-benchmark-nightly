Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/max?download=true
inline.NumInlined: 296
inline.NumDeleted: 205
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase.8" }
%"class.Eigen::PlainObjectBase.8" = type { %"class.Eigen::DenseStorage.15" }
%"class.Eigen::DenseStorage.15" = type { ptr, i64 }

$_ZN3igl3maxIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_9DenseBaseIT_EEiRNS1_15PlainObjectBaseIT0_EERNSB_IT1_EE = comdat any

$_ZN3igl3maxIbN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_EEvRKNS1_12SparseMatrixIT_Li0EiEEiRNS1_15PlainObjectBaseIT0_EERNS9_IT1_EE = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl3maxIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_9DenseBaseIT_EEiRNS1_15PlainObjectBaseIT0_EERNSB_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %1, 1                        ; 2 uses
  %.in.v = select i1 %i.a, i64 16, i64 8
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.b = load i64, ptr %.in, align 8, !tbaa !37   ; 12 uses
  %i.c = trunc i64 %i.b to i32
  %sext = shl i64 %i.b, 32                        ; 3 uses
  %i.d = ashr exact i64 %sext, 32                 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !40
  %.not.i.i = icmp eq i64 %i.d, %i.f
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !41
  tail call void @free(ptr noundef %i.g) #9
  %i.h = icmp sgt i64 %i.d, 0
  br i1 %i.h, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, label %.sink.split.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.b
  %i.i = lshr exact i64 %sext, 29
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #10 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %.sink.split.i.i

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !12
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #11
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.b
  %.sink.i.i = phi ptr [ %i.j, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.b ]
  store ptr %.sink.i.i, ptr %2, align 8, !tbaa !41
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %bb.a, %.sink.split.i.i
  store i64 %i.d, ptr %i.e, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !15
  %.not.i.i20 = icmp eq i64 %i.d, %i.n
  br i1 %.not.i.i20, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.o = load ptr, ptr %3, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.o) #9
  %i.p = icmp sgt i64 %i.d, 0
  br i1 %i.p, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, label %.sink.split.i.i21

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.d
  %i.q = lshr exact i64 %sext, 30
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #10 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.e, label %.sink.split.i.i21

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
  %i.t = tail call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.t, align 8, !tbaa !12
  tail call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #11
  unreachable

.sink.split.i.i21:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.d
  %.sink.i.i22 = phi ptr [ %i.r, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.d ]
  store ptr %.sink.i.i22, ptr %3, align 8, !tbaa !16
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, %.sink.split.i.i21
  store i64 %i.d, ptr %i.m, align 8, !tbaa !15
  %i.u = icmp sgt i32 %i.c, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !41     ; 18 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !16     ; 16 uses
  br i1 %i.a, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.y = load ptr, ptr %0, align 8, !tbaa !43, !noalias !44 ; 6 uses
  %i.z = load i64, ptr %i.v, align 8, !tbaa !45, !noalias !44 ; 9 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.us.preheader, label %.lr.ph.split.us.split

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.us.preheader: ; preds = %.lr.ph.split.us
  %wide.trip.count82 = and i64 %i.b, 2147483647   ; 3 uses
  %min.iters.check125 = icmp samesign ult i64 %wide.trip.count82, 4
  br i1 %min.iters.check125, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.us.preheader137, label %vector.ph126

vector.ph126:                                     ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.us.preheader
  %n.vec127 = and i64 %i.b, 2147483644            ; 3 uses
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph126
  %index129 = phi i64 [ 0, %vector.ph126 ], [ %index.next130, %vector.body128 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index129 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <2 x double> zeroinitializer, ptr %i.ab, align 8, !tbaa !47
  store <2 x double> zeroinitializer, ptr %i.ac, align 8, !tbaa !47
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index129 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store <2 x i32> splat (i32 -1), ptr %i.ad, align 4, !tbaa !17
  store <2 x i32> splat (i32 -1), ptr %i.ae, align 4, !tbaa !17
  %index.next130 = add nuw i64 %index129, 4       ; 2 uses
  %i.af = icmp eq i64 %index.next130, %n.vec127
  br i1 %i.af, label %middle.block131, label %vector.body128, !llvm.loop !23

middle.block131:                                  ; preds = %vector.body128
  %cmp.n132 = icmp eq i64 %wide.trip.count82, %n.vec127
  br i1 %cmp.n132, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.us.preheader137

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.us.preheader137: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.us.preheader, %middle.block131
  %indvars.iv79.ph = phi i64 [ 0, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.us.preheader ], [ %n.vec127, %middle.block131 ]
  br label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.us

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.us: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.us.preheader137, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.us
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.us ], [ %indvars.iv79.ph, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.us.preheader137 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv79
  store double 0.000000e+00, ptr %i.ag, align 8, !tbaa !47
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv79
  store i32 -1, ptr %i.ah, align 4, !tbaa !17
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count82
  br i1 %exitcond83.not, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.us, !llvm.loop !24

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.ai = icmp sgt i64 %i.z, 1
  %wide.trip.count77 = and i64 %i.b, 2147483647   ; 5 uses
  br i1 %i.ai, label %.lr.ph.i.i.i.i.preheader.us.us.preheader, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.preheader

.lr.ph.i.i.i.i.preheader.us.us.preheader:         ; preds = %.lr.ph.split.us.split
  %i.aj = add nsw i64 %i.z, -1                    ; 3 uses
  %xtraiter154 = and i64 %i.aj, 1
  %i.ak = icmp eq i64 %i.z, 2
  %unroll_iter159 = and i64 %i.aj, -2
  %lcmp.mod155.not = icmp eq i64 %xtraiter154, 0
  %lcmp.mod158 = trunc i64 %i.aj to i1
  br label %.lr.ph.i.i.i.i.preheader.us.us

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.preheader: ; preds = %.lr.ph.split.us.split
  %min.iters.check113 = icmp samesign ult i64 %wide.trip.count77, 8
  %ident.check.not = icmp ne i64 %i.z, 1
  %or.cond.not136 = or i1 %min.iters.check113, %ident.check.not
  %4 = ptrtoaddr ptr %i.w to i64
  %5 = ptrtoaddr ptr %i.y to i64
  %i.al = sub i64 %5, %4
  %diff.check111 = icmp ugt i64 %i.al, -32
  %or.cond134 = select i1 %or.cond.not136, i1 true, i1 %diff.check111
  br i1 %or.cond134, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.preheader139, label %vector.ph114

vector.ph114:                                     ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.preheader
  %n.vec115 = and i64 %i.b, 2147483644            ; 3 uses
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph114
  %index117 = phi i64 [ 0, %vector.ph114 ], [ %index.next120, %vector.body116 ] ; 4 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.y, i64 %index117 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load118 = load <2 x double>, ptr %i.am, align 8, !tbaa !47
  %wide.load119 = load <2 x double>, ptr %i.an, align 8, !tbaa !47
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index117 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <2 x double> %wide.load118, ptr %i.ao, align 8, !tbaa !47
  store <2 x double> %wide.load119, ptr %i.ap, align 8, !tbaa !47
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index117 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store <2 x i32> zeroinitializer, ptr %i.aq, align 4, !tbaa !17
  store <2 x i32> zeroinitializer, ptr %i.ar, align 4, !tbaa !17
  %index.next120 = add nuw i64 %index117, 4       ; 2 uses
  %i.as = icmp eq i64 %index.next120, %n.vec115
  br i1 %i.as, label %middle.block121, label %vector.body116, !llvm.loop !25

middle.block121:                                  ; preds = %vector.body116
  %cmp.n122 = icmp eq i64 %wide.trip.count77, %n.vec115
  br i1 %cmp.n122, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.preheader139

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.preheader139: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.preheader, %middle.block121
  %indvars.iv69.ph = phi i64 [ 0, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.preheader ], [ %n.vec115, %middle.block121 ] ; 6 uses
  %.neg = or disjoint i64 %indvars.iv69.ph, 1
  %xtraiter151 = and i64 %i.b, 1
  %lcmp.mod152.not = icmp eq i64 %xtraiter151, 0
  br i1 %lcmp.mod152.not, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.prol.loopexit, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.prol

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.prol: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.preheader139
  %i.at = mul nsw i64 %i.z, %indvars.iv69.ph
  %i.au = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !47
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv69.ph
  store double %i.av, ptr %i.aw, align 8, !tbaa !47
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv69.ph
  store i32 0, ptr %i.ax, align 4, !tbaa !17
  %indvars.iv.next70.prol = or disjoint i64 %indvars.iv69.ph, 1
  br label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.prol.loopexit

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.prol.loopexit: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.prol, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.preheader139
  %indvars.iv69.unr = phi i64 [ %indvars.iv69.ph, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.preheader139 ], [ %indvars.iv.next70.prol, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.prol ]
  %i.ay = icmp eq i64 %wide.trip.count77, %.neg
  br i1 %i.ay, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us

.lr.ph.i.i.i.i.preheader.us.us:                   ; preds = %.lr.ph.i.i.i.i.preheader.us.us.preheader, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit.us.us
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit.us.us ], [ 0, %.lr.ph.i.i.i.i.preheader.us.us.preheader ] ; 4 uses
  %i.az = mul nuw nsw i64 %i.z, %indvars.iv74
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.az ; 4 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !47 ; 4 uses
  br i1 %i.ak, label %.lr.ph.i.i.i.i.us.us.epil.preheader, label %.lr.ph.i.i.i.i.us.us

.lr.ph.i.i.i.i.us.us:                             ; preds = %.lr.ph.i.i.i.i.preheader.us.us, %.lr.ph.i.i.i.i.us.us
  %.sroa.0.0.i.i.us.us = phi i64 [ %.sroa.0.1.i.i.us.us.1, %.lr.ph.i.i.i.i.us.us ], [ 0, %.lr.ph.i.i.i.i.preheader.us.us ]
  %.sroa.8.0.i.i.us.us = phi double [ %.sroa.8.1.i.i.us.us.1, %.lr.ph.i.i.i.i.us.us ], [ %i.bb, %.lr.ph.i.i.i.i.preheader.us.us ]
  %.02125.i.i.i.i.us.us = phi i64 [ %i.bm, %.lr.ph.i.i.i.i.us.us ], [ 1, %.lr.ph.i.i.i.i.preheader.us.us ] ; 4 uses
  %i.bc = phi double [ %i.bl, %.lr.ph.i.i.i.i.us.us ], [ %i.bb, %.lr.ph.i.i.i.i.preheader.us.us ] ; 2 uses
  %niter160 = phi i64 [ %niter160.next.1, %.lr.ph.i.i.i.i.us.us ], [ 0, %.lr.ph.i.i.i.i.preheader.us.us ]
  %i.bd = getelementptr [8 x i8], ptr %i.ba, i64 %.02125.i.i.i.i.us.us
  %i.be = load double, ptr %i.bd, align 8, !tbaa !47 ; 3 uses
  %i.bf = fcmp ogt double %i.be, %i.bc            ; 3 uses
  %.sroa.0.1.i.i.us.us = select i1 %i.bf, i64 %.02125.i.i.i.i.us.us, i64 %.sroa.0.0.i.i.us.us
  %.sroa.8.1.i.i.us.us = select i1 %i.bf, double %i.be, double %.sroa.8.0.i.i.us.us
  %i.bg = select i1 %i.bf, double %i.be, double %i.bc ; 2 uses
  %i.bh = add nuw nsw i64 %.02125.i.i.i.i.us.us, 1 ; 2 uses
  %i.bi = getelementptr [8 x i8], ptr %i.ba, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !47 ; 3 uses
  %i.bk = fcmp ogt double %i.bj, %i.bg            ; 3 uses
  %.sroa.0.1.i.i.us.us.1 = select i1 %i.bk, i64 %i.bh, i64 %.sroa.0.1.i.i.us.us ; 3 uses
  %.sroa.8.1.i.i.us.us.1 = select i1 %i.bk, double %i.bj, double %.sroa.8.1.i.i.us.us ; 3 uses
  %i.bl = select i1 %i.bk, double %i.bj, double %i.bg ; 2 uses
  %i.bm = add nuw nsw i64 %.02125.i.i.i.i.us.us, 2 ; 2 uses
  %niter160.next.1 = add nuw i64 %niter160, 2     ; 2 uses
  %niter160.ncmp.1 = icmp eq i64 %niter160.next.1, %unroll_iter159
  br i1 %niter160.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit.us.us.unr-lcssa, label %.lr.ph.i.i.i.i.us.us, !llvm.loop !26

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit.us.us.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.us.us
  br i1 %lcmp.mod155.not, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit.us.us, label %.lr.ph.i.i.i.i.us.us.epil.preheader

.lr.ph.i.i.i.i.us.us.epil.preheader:              ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit.us.us.unr-lcssa, %.lr.ph.i.i.i.i.preheader.us.us
  %.sroa.0.0.i.i.us.us.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.us.us ], [ %.sroa.0.1.i.i.us.us.1, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit.us.us.unr-lcssa ]
  %.sroa.8.0.i.i.us.us.epil.init = phi double [ %i.bb, %.lr.ph.i.i.i.i.preheader.us.us ], [ %.sroa.8.1.i.i.us.us.1, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit.us.us.unr-lcssa ]
  %.02125.i.i.i.i.us.us.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.us.us ], [ %i.bm, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit.us.us.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.bb, %.lr.ph.i.i.i.i.preheader.us.us ], [ %i.bl, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod158)
  %i.bn = getelementptr [8 x i8], ptr %i.ba, i64 %.02125.i.i.i.i.us.us.epil.init
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !47 ; 2 uses
  %i.bp = fcmp ogt double %i.bo, %.epil.init      ; 2 uses
  %.sroa.0.1.i.i.us.us.epil = select i1 %i.bp, i64 %.02125.i.i.i.i.us.us.epil.init, i64 %.sroa.0.0.i.i.us.us.epil.init
  %.sroa.8.1.i.i.us.us.epil = select i1 %i.bp, double %i.bo, double %.sroa.8.0.i.i.us.us.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit.us.us

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit.us.us: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit.us.us.unr-lcssa, %.lr.ph.i.i.i.i.us.us.epil.preheader
  %.sroa.0.1.i.i.us.us.lcssa = phi i64 [ %.sroa.0.1.i.i.us.us.1, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit.us.us.unr-lcssa ], [ %.sroa.0.1.i.i.us.us.epil, %.lr.ph.i.i.i.i.us.us.epil.preheader ]
  %.sroa.8.1.i.i.us.us.lcssa = phi double [ %.sroa.8.1.i.i.us.us.1, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit.us.us.unr-lcssa ], [ %.sroa.8.1.i.i.us.us.epil, %.lr.ph.i.i.i.i.us.us.epil.preheader ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv74
  store double %.sroa.8.1.i.i.us.us.lcssa, ptr %i.bq, align 8, !tbaa !47
  %i.br = trunc i64 %.sroa.0.1.i.i.us.us.lcssa to i32
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv74
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !17
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %._crit_edge, label %.lr.ph.i.i.i.i.preheader.us.us, !llvm.loop !27

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.prol.loopexit, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us
  %indvars.iv69 = phi i64 [ %indvars.iv.next70.1, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us ], [ %indvars.iv69.unr, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.prol.loopexit ] ; 5 uses
  %i.bt = mul nsw i64 %i.z, %indvars.iv69
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.bt
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !47
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv69
  store double %i.bv, ptr %i.bw, align 8, !tbaa !47
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv69
  store i32 0, ptr %i.bx, align 4, !tbaa !17
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 3 uses
  %i.by = mul nsw i64 %i.z, %indvars.iv.next70
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.by
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !47
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next70
  store double %i.ca, ptr %i.cb, align 8, !tbaa !47
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next70
  store i32 0, ptr %i.cc, align 4, !tbaa !17
  %indvars.iv.next70.1 = add nuw nsw i64 %indvars.iv69, 2 ; 2 uses
  %exitcond73.not.1 = icmp eq i64 %indvars.iv.next70.1, %wide.trip.count77
  br i1 %exitcond73.not.1, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us, !llvm.loop !28

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ce = load ptr, ptr %0, align 8, !tbaa !43, !noalias !48 ; 8 uses
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !49, !noalias !48 ; 4 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us42.preheader, label %.lr.ph.split.split

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us42.preheader: ; preds = %.lr.ph.split
  %wide.trip.count67 = and i64 %i.b, 2147483647   ; 3 uses
  %min.iters.check101 = icmp samesign ult i64 %wide.trip.count67, 4
  br i1 %min.iters.check101, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us42.preheader141, label %vector.ph102

vector.ph102:                                     ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us42.preheader
  %n.vec103 = and i64 %i.b, 2147483644            ; 3 uses
  br label %vector.body104

vector.body104:                                   ; preds = %vector.body104, %vector.ph102
  %index105 = phi i64 [ 0, %vector.ph102 ], [ %index.next106, %vector.body104 ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index105 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <2 x double> zeroinitializer, ptr %i.ch, align 8, !tbaa !47
  store <2 x double> zeroinitializer, ptr %i.ci, align 8, !tbaa !47
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index105 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store <2 x i32> splat (i32 -1), ptr %i.cj, align 4, !tbaa !17
  store <2 x i32> splat (i32 -1), ptr %i.ck, align 4, !tbaa !17
  %index.next106 = add nuw i64 %index105, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next106, %n.vec103
  br i1 %i.cl, label %middle.block107, label %vector.body104, !llvm.loop !31

middle.block107:                                  ; preds = %vector.body104
  %cmp.n108 = icmp eq i64 %wide.trip.count67, %n.vec103
  br i1 %cmp.n108, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us42.preheader141

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us42.preheader141: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us42.preheader, %middle.block107
  %indvars.iv64.ph = phi i64 [ 0, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us42.preheader ], [ %n.vec103, %middle.block107 ]
  br label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us42

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us42: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us42.preheader141, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us42
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us42 ], [ %indvars.iv64.ph, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us42.preheader141 ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv64
  store double 0.000000e+00, ptr %i.cm, align 8, !tbaa !47
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv64
  store i32 -1, ptr %i.cn, align 4, !tbaa !17
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  br i1 %exitcond68.not, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us42, !llvm.loop !32

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.co = icmp sgt i64 %i.cf, 1
  %i.cp = load i64, ptr %i.v, align 8, !tbaa !45  ; 3 uses
  %wide.trip.count62 = and i64 %i.b, 2147483647   ; 5 uses
  br i1 %i.co, label %.preheader.i.i.i.i.preheader.us.preheader, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.preheader

.preheader.i.i.i.i.preheader.us.preheader:        ; preds = %.lr.ph.split.split
  %i.cq = add nsw i64 %i.cf, -1                   ; 3 uses
  %xtraiter146 = and i64 %i.cq, 1
  %i.cr = icmp eq i64 %i.cf, 2
  %unroll_iter = and i64 %i.cq, -2
  %lcmp.mod147.not = icmp eq i64 %xtraiter146, 0
  %lcmp.mod150 = trunc i64 %i.cq to i1
  br label %.preheader.i.i.i.i.preheader.us

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.preheader: ; preds = %.lr.ph.split.split
  %min.iters.check = icmp samesign ult i64 %wide.trip.count62, 6
  %6 = ptrtoaddr ptr %i.w to i64
  %7 = ptrtoaddr ptr %i.ce to i64
  %i.cs = sub i64 %7, %6
  %diff.check = icmp ugt i64 %i.cs, -32
  %or.cond135 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond135, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.preheader144, label %vector.ph

vector.ph:                                        ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.preheader
  %n.vec = and i64 %i.b, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load = load <2 x double>, ptr %i.ct, align 8, !tbaa !47
  %wide.load99 = load <2 x double>, ptr %i.cu, align 8, !tbaa !47
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store <2 x double> %wide.load, ptr %i.cv, align 8, !tbaa !47
  store <2 x double> %wide.load99, ptr %i.cw, align 8, !tbaa !47
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store <2 x i32> zeroinitializer, ptr %i.cx, align 4, !tbaa !17
  store <2 x i32> zeroinitializer, ptr %i.cy, align 4, !tbaa !17
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count62, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.preheader144

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.preheader144: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.prol.loopexit, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.prol

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.prol: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.preheader144, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.prol ], [ %indvars.iv.ph, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.preheader144 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.prol ], [ 0, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.preheader144 ]
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.prol
  %i.db = load double, ptr %i.da, align 8, !tbaa !47
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.prol
  store double %i.db, ptr %i.dc, align 8, !tbaa !47
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.prol
  store i32 0, ptr %i.dd, align 4, !tbaa !17
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.prol.loopexit, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.prol, !llvm.loop !34

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.prol.loopexit: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.prol, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.preheader144
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.preheader144 ], [ %indvars.iv.next.prol, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.prol ]
  %i.de = sub nsw i64 %indvars.iv.ph, %wide.trip.count62
  %i.df = icmp ugt i64 %i.de, -4
  br i1 %i.df, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit

.preheader.i.i.i.i.preheader.us:                  ; preds = %.preheader.i.i.i.i.preheader.us.preheader, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit39.us
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit39.us ], [ 0, %.preheader.i.i.i.i.preheader.us.preheader ] ; 4 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv59 ; 4 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !47 ; 4 uses
  br i1 %i.cr, label %.preheader.i.i.i.i.us.epil.preheader, label %.preheader.i.i.i.i.us

.preheader.i.i.i.i.us:                            ; preds = %.preheader.i.i.i.i.preheader.us, %.preheader.i.i.i.i.us
  %.sroa.8.0.i.i28.us = phi double [ %.sroa.8.1.i.i29.us.1, %.preheader.i.i.i.i.us ], [ %i.dh, %.preheader.i.i.i.i.preheader.us ]
  %.sroa.6.0.i.i.us = phi i64 [ %.sroa.6.1.i.i.us.1, %.preheader.i.i.i.i.us ], [ 0, %.preheader.i.i.i.i.preheader.us ]
  %.promoted30.i.i.i.i.us = phi double [ %.promoted29.i.i.i.i.us.1, %.preheader.i.i.i.i.us ], [ %i.dh, %.preheader.i.i.i.i.preheader.us ] ; 2 uses
  %.02027.i.i.i.i.us = phi i64 [ %i.dr, %.preheader.i.i.i.i.us ], [ 1, %.preheader.i.i.i.i.preheader.us ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.i.i.i.us ], [ 0, %.preheader.i.i.i.i.preheader.us ]
  %i.di = mul nsw i64 %.02027.i.i.i.i.us, %i.cp
  %i.dj = getelementptr [8 x i8], ptr %i.dg, i64 %i.di
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !47 ; 3 uses
  %i.dl = fcmp ogt double %i.dk, %.promoted30.i.i.i.i.us ; 3 uses
  %.sroa.8.1.i.i29.us = select i1 %i.dl, double %i.dk, double %.sroa.8.0.i.i28.us
  %.sroa.6.1.i.i.us = select i1 %i.dl, i64 %.02027.i.i.i.i.us, i64 %.sroa.6.0.i.i.us
  %.promoted29.i.i.i.i.us = select i1 %i.dl, double %i.dk, double %.promoted30.i.i.i.i.us ; 2 uses
  %i.dm = add nuw nsw i64 %.02027.i.i.i.i.us, 1   ; 2 uses
  %i.dn = mul nsw i64 %i.dm, %i.cp
  %i.do = getelementptr [8 x i8], ptr %i.dg, i64 %i.dn
  %i.dp = load double, ptr %i.do, align 8, !tbaa !47 ; 3 uses
  %i.dq = fcmp ogt double %i.dp, %.promoted29.i.i.i.i.us ; 3 uses
  %.sroa.8.1.i.i29.us.1 = select i1 %i.dq, double %i.dp, double %.sroa.8.1.i.i29.us ; 3 uses
  %.sroa.6.1.i.i.us.1 = select i1 %i.dq, i64 %i.dm, i64 %.sroa.6.1.i.i.us ; 3 uses
  %.promoted29.i.i.i.i.us.1 = select i1 %i.dq, double %i.dp, double %.promoted29.i.i.i.i.us ; 2 uses
  %i.dr = add nuw nsw i64 %.02027.i.i.i.i.us, 2   ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit39.us.unr-lcssa, label %.preheader.i.i.i.i.us, !llvm.loop !35

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit39.us.unr-lcssa: ; preds = %.preheader.i.i.i.i.us
  br i1 %lcmp.mod147.not, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit39.us, label %.preheader.i.i.i.i.us.epil.preheader

.preheader.i.i.i.i.us.epil.preheader:             ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit39.us.unr-lcssa, %.preheader.i.i.i.i.preheader.us
  %.sroa.8.0.i.i28.us.epil.init = phi double [ %i.dh, %.preheader.i.i.i.i.preheader.us ], [ %.sroa.8.1.i.i29.us.1, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit39.us.unr-lcssa ]
  %.sroa.6.0.i.i.us.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.preheader.us ], [ %.sroa.6.1.i.i.us.1, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit39.us.unr-lcssa ]
  %.promoted30.i.i.i.i.us.epil.init = phi double [ %i.dh, %.preheader.i.i.i.i.preheader.us ], [ %.promoted29.i.i.i.i.us.1, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit39.us.unr-lcssa ]
  %.02027.i.i.i.i.us.epil.init = phi i64 [ 1, %.preheader.i.i.i.i.preheader.us ], [ %i.dr, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit39.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod150)
  %i.ds = mul nsw i64 %.02027.i.i.i.i.us.epil.init, %i.cp
  %i.dt = getelementptr [8 x i8], ptr %i.dg, i64 %i.ds
  %i.du = load double, ptr %i.dt, align 8, !tbaa !47 ; 2 uses
  %i.dv = fcmp ogt double %i.du, %.promoted30.i.i.i.i.us.epil.init ; 2 uses
  %.sroa.8.1.i.i29.us.epil = select i1 %i.dv, double %i.du, double %.sroa.8.0.i.i28.us.epil.init
  %.sroa.6.1.i.i.us.epil = select i1 %i.dv, i64 %.02027.i.i.i.i.us.epil.init, i64 %.sroa.6.0.i.i.us.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit39.us

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit39.us: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit39.us.unr-lcssa, %.preheader.i.i.i.i.us.epil.preheader
  %.sroa.8.1.i.i29.us.lcssa = phi double [ %.sroa.8.1.i.i29.us.1, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit39.us.unr-lcssa ], [ %.sroa.8.1.i.i29.us.epil, %.preheader.i.i.i.i.us.epil.preheader ]
  %.sroa.6.1.i.i.us.lcssa = phi i64 [ %.sroa.6.1.i.i.us.1, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit39.us.unr-lcssa ], [ %.sroa.6.1.i.i.us.epil, %.preheader.i.i.i.i.us.epil.preheader ]
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv59
  store double %.sroa.8.1.i.i29.us.lcssa, ptr %i.dw, align 8, !tbaa !47
  %i.dx = trunc i64 %.sroa.6.1.i.i.us.lcssa to i32
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv59
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !17
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next60, %wide.trip.count62
  br i1 %exitcond63.not, label %._crit_edge, label %.preheader.i.i.i.i.preheader.us, !llvm.loop !27

._crit_edge:                                      ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.prol.loopexit, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit39.us, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us42, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.prol.loopexit, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.loopexit.us.us, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.us.us, %middle.block, %middle.block107, %middle.block121, %middle.block131, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  ret void

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.prol.loopexit, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit ], [ %indvars.iv.unr, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit.prol.loopexit ] ; 7 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !47
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  store double %i.ea, ptr %i.eb, align 8, !tbaa !47
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  store i32 0, ptr %i.ec, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !47
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next
  store double %i.ee, ptr %i.ef, align 8, !tbaa !47
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next
  store i32 0, ptr %i.eg, align 4, !tbaa !17
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next.1
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !47
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.1
  store double %i.ei, ptr %i.ej, align 8, !tbaa !47
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next.1
  store i32 0, ptr %i.ek, align 4, !tbaa !17
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next.2
  %i.em = load double, ptr %i.el, align 8, !tbaa !47
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.2
  store double %i.em, ptr %i.en, align 8, !tbaa !47
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next.2
  store i32 0, ptr %i.eo, align 4, !tbaa !17
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count62
  br i1 %exitcond.not.3, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffIlEEdPT_S9_.exit, !llvm.loop !36
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl3maxIbN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_EEvRKNS1_12SparseMatrixIT_Li0EiEEiRNS1_15PlainObjectBaseIT0_EERNS9_IT1_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Matrix", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.e = icmp eq i32 %1, 1                        ; 2 uses
  %i.f = select i1 %i.e, i64 %i.b, i64 %i.d
  %sext = shl i64 %i.f, 32                        ; 4 uses
  %i.g = ashr exact i64 %sext, 32                 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15
  %.not.i.i = icmp eq i64 %i.g, %i.i
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %2, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.j) #9
  %i.k = icmp sgt i64 %i.g, 0
  br i1 %i.k, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, label %.sink.split.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.b
  %i.l = lshr exact i64 %sext, 30
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #10 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %.sink.split.i.i

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !12
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #11
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.b
  %.sink.i.i = phi ptr [ %i.m, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.b ]
  store ptr %.sink.i.i, ptr %2, align 8, !tbaa !16
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

end_hunk_0
