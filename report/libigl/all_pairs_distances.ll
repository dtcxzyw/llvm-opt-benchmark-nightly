Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/all_pairs_distances?download=true
inline.NumInlined: 171
inline.NumDeleted: 127
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN3igl19all_pairs_distancesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRKT_S6_bRS4_ = comdat any

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl19all_pairs_distancesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRKT_S6_bRS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 4 uses
  %i.e = icmp eq i64 %i.b, 0
  %i.f = icmp eq i64 %i.d, 0
  %or.cond.i.i = or i1 %i.e, %i.f
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 9223372036854775807, %i.d
  %i.h = icmp sgt i64 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #8
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %bb.a, %bb.b
  %i.j = mul nsw i64 %i.d, %i.b
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.j, i64 noundef %i.b, i64 noundef %i.d)
  %i.k = load i64, ptr %i.a, align 8, !tbaa !13   ; 14 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.preheader.lr.ph, label %._crit_edge45.split

.preheader.lr.ph:                                 ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.m = load i64, ptr %i.c, align 8, !tbaa !13   ; 33 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.preheader.lr.ph.split, label %._crit_edge45.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %0, align 8, !tbaa !16, !noalias !37 ; 6 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !16, !noalias !38 ; 11 uses
  %i.s = load i64, ptr %i.p, align 8, !tbaa !17, !noalias !38 ; 6 uses
  %i.t = icmp eq i64 %i.s, 0
  %i.u = load ptr, ptr %3, align 8, !tbaa !16     ; 10 uses
  %i.v = load i64, ptr %i.o, align 8, !tbaa !13   ; 21 uses
  br i1 %i.t, label %.preheader.lr.ph.split.split.us, label %.preheader.lr.ph.split.split

.preheader.lr.ph.split.split.us:                  ; preds = %.preheader.lr.ph.split
  br i1 %2, label %.preheader.us.us.preheader, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split.split.us
  %min.iters.check137 = icmp ugt i64 %i.m, 3
  %ident.check135.not = icmp eq i64 %i.v, 1
  %or.cond158 = select i1 %min.iters.check137, i1 %ident.check135.not, i1 false
  %n.vec139 = and i64 %i.m, 9223372036854775804   ; 3 uses
  %cmp.n144 = icmp eq i64 %i.m, %n.vec139
  %xtraiter181 = and i64 %i.m, 3                  ; 2 uses
  %lcmp.mod182.not = icmp eq i64 %xtraiter181, 0
  br label %.preheader.us

.preheader.us.us.preheader:                       ; preds = %.preheader.lr.ph.split.split.us
  %min.iters.check149 = icmp ugt i64 %i.m, 3
  %ident.check147.not = icmp eq i64 %i.v, 1
  %or.cond = select i1 %min.iters.check149, i1 %ident.check147.not, i1 false
  %n.vec151 = and i64 %i.m, 9223372036854775804   ; 3 uses
  %cmp.n156 = icmp eq i64 %i.m, %n.vec151
  %xtraiter183 = and i64 %i.m, 3                  ; 2 uses
  %lcmp.mod184.not = icmp eq i64 %xtraiter183, 0
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %._crit_edge.split.us.split.us.us.us
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %._crit_edge.split.us.split.us.us.us ], [ 0, %.preheader.us.us.preheader ] ; 2 uses
  %i.w = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv103 ; 6 uses
  br i1 %or.cond, label %vector.body152, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us.us.us.preheader

vector.body152:                                   ; preds = %.preheader.us.us, %vector.body152
  %index153 = phi i64 [ %index.next154, %vector.body152 ], [ 0, %.preheader.us.us ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.w, i64 %index153 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 16
  store <2 x double> zeroinitializer, ptr %i.x, align 8, !tbaa !40
  store <2 x double> zeroinitializer, ptr %i.y, align 8, !tbaa !40
  %index.next154 = add nuw i64 %index153, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next154, %n.vec151
  br i1 %i.z, label %middle.block155, label %vector.body152, !llvm.loop !22

middle.block155:                                  ; preds = %vector.body152
  br i1 %cmp.n156, label %._crit_edge.split.us.split.us.us.us, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us.us.us.preheader

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us.us.us.preheader: ; preds = %.preheader.us.us, %middle.block155
  %indvars.iv99.ph = phi i64 [ 0, %.preheader.us.us ], [ %n.vec151, %middle.block155 ] ; 3 uses
  br i1 %lcmp.mod184.not, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us.us.us.prol.loopexit, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us.us.us.prol

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us.us.us.prol: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us.us.us.preheader, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us.us.us.prol
  %indvars.iv99.prol = phi i64 [ %indvars.iv.next100.prol, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us.us.us.prol ], [ %indvars.iv99.ph, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us.us.us.preheader ] ; 2 uses
  %prol.iter185 = phi i64 [ %prol.iter185.next, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us.us.us.prol ], [ 0, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us.us.us.preheader ]
  %i.aa = mul nsw i64 %i.v, %indvars.iv99.prol
  %i.ab = getelementptr [8 x i8], ptr %i.w, i64 %i.aa
  store double 0.000000e+00, ptr %i.ab, align 8, !tbaa !40
  %indvars.iv.next100.prol = add nuw nsw i64 %indvars.iv99.prol, 1 ; 2 uses
  %prol.iter185.next = add i64 %prol.iter185, 1   ; 2 uses
  %prol.iter185.cmp.not = icmp eq i64 %prol.iter185.next, %xtraiter183
  br i1 %prol.iter185.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us.us.us.prol.loopexit, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us.us.us.prol, !llvm.loop !23

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us.us.us.prol.loopexit: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us.us.us.prol, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us.us.us.preheader
  %indvars.iv99.unr = phi i64 [ %indvars.iv99.ph, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us.us.us.preheader ], [ %indvars.iv.next100.prol, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us.us.us.prol ]
  %i.ac = sub nsw i64 %indvars.iv99.ph, %i.m
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %._crit_edge.split.us.split.us.us.us, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us.us.us

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us.us.us: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us.us.us.prol.loopexit, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us.us.us
  %indvars.iv99 = phi i64 [ %indvars.iv.next100.3, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us.us.us ], [ %indvars.iv99.unr, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us.us.us.prol.loopexit ] ; 5 uses
  %i.ae = mul nsw i64 %i.v, %indvars.iv99
  %i.af = getelementptr [8 x i8], ptr %i.w, i64 %i.ae
  store double 0.000000e+00, ptr %i.af, align 8, !tbaa !40
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1
  %i.ag = mul nsw i64 %i.v, %indvars.iv.next100
  %i.ah = getelementptr [8 x i8], ptr %i.w, i64 %i.ag
  store double 0.000000e+00, ptr %i.ah, align 8, !tbaa !40
  %indvars.iv.next100.1 = add nuw nsw i64 %indvars.iv99, 2
  %i.ai = mul nsw i64 %i.v, %indvars.iv.next100.1
  %i.aj = getelementptr [8 x i8], ptr %i.w, i64 %i.ai
  store double 0.000000e+00, ptr %i.aj, align 8, !tbaa !40
  %indvars.iv.next100.2 = add nuw nsw i64 %indvars.iv99, 3
  %i.ak = mul nsw i64 %i.v, %indvars.iv.next100.2
  %i.al = getelementptr [8 x i8], ptr %i.w, i64 %i.ak
  store double 0.000000e+00, ptr %i.al, align 8, !tbaa !40
  %indvars.iv.next100.3 = add nuw nsw i64 %indvars.iv99, 4 ; 2 uses
  %exitcond102.not.3 = icmp eq i64 %indvars.iv.next100.3, %i.m
  br i1 %exitcond102.not.3, label %._crit_edge.split.us.split.us.us.us, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us.us.us, !llvm.loop !24

._crit_edge.split.us.split.us.us.us:              ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us.us.us.prol.loopexit, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us.us.us, %middle.block155
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond106.not = icmp eq i64 %indvars.iv.next104, %i.k
  br i1 %exitcond106.not, label %._crit_edge45.split, label %.preheader.us.us, !llvm.loop !25

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.split.us.split.us49
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %._crit_edge.split.us.split.us49 ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %i.am = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv95 ; 6 uses
  br i1 %or.cond158, label %vector.body140, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us47.preheader

vector.body140:                                   ; preds = %.preheader.us, %vector.body140
  %index141 = phi i64 [ %index.next142, %vector.body140 ], [ 0, %.preheader.us ] ; 2 uses
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %index141 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  store <2 x double> zeroinitializer, ptr %i.an, align 8, !tbaa !40
  store <2 x double> zeroinitializer, ptr %i.ao, align 8, !tbaa !40
  %index.next142 = add nuw i64 %index141, 4       ; 2 uses
  %i.ap = icmp eq i64 %index.next142, %n.vec139
  br i1 %i.ap, label %middle.block143, label %vector.body140, !llvm.loop !26

middle.block143:                                  ; preds = %vector.body140
  br i1 %cmp.n144, label %._crit_edge.split.us.split.us49, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us47.preheader

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us47.preheader: ; preds = %.preheader.us, %middle.block143
  %indvars.iv91.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec139, %middle.block143 ] ; 3 uses
  br i1 %lcmp.mod182.not, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us47.prol.loopexit, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us47.prol

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us47.prol: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us47.preheader, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us47.prol
  %indvars.iv91.prol = phi i64 [ %indvars.iv.next92.prol, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us47.prol ], [ %indvars.iv91.ph, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us47.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us47.prol ], [ 0, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us47.preheader ]
  %i.aq = mul nsw i64 %i.v, %indvars.iv91.prol
  %i.ar = getelementptr [8 x i8], ptr %i.am, i64 %i.aq
  store double 0.000000e+00, ptr %i.ar, align 8, !tbaa !40
  %indvars.iv.next92.prol = add nuw nsw i64 %indvars.iv91.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter181
  br i1 %prol.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us47.prol.loopexit, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us47.prol, !llvm.loop !27

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us47.prol.loopexit: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us47.prol, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us47.preheader
  %indvars.iv91.unr = phi i64 [ %indvars.iv91.ph, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us47.preheader ], [ %indvars.iv.next92.prol, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us47.prol ]
  %i.as = sub nsw i64 %indvars.iv91.ph, %i.m
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %._crit_edge.split.us.split.us49, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us47

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us47: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us47.prol.loopexit, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us47
  %indvars.iv91 = phi i64 [ %indvars.iv.next92.3, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us47 ], [ %indvars.iv91.unr, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us47.prol.loopexit ] ; 5 uses
  %i.au = mul nsw i64 %i.v, %indvars.iv91
  %i.av = getelementptr [8 x i8], ptr %i.am, i64 %i.au
  store double 0.000000e+00, ptr %i.av, align 8, !tbaa !40
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %i.aw = mul nsw i64 %i.v, %indvars.iv.next92
  %i.ax = getelementptr [8 x i8], ptr %i.am, i64 %i.aw
  store double 0.000000e+00, ptr %i.ax, align 8, !tbaa !40
  %indvars.iv.next92.1 = add nuw nsw i64 %indvars.iv91, 2
  %i.ay = mul nsw i64 %i.v, %indvars.iv.next92.1
  %i.az = getelementptr [8 x i8], ptr %i.am, i64 %i.ay
  store double 0.000000e+00, ptr %i.az, align 8, !tbaa !40
  %indvars.iv.next92.2 = add nuw nsw i64 %indvars.iv91, 3
  %i.ba = mul nsw i64 %i.v, %indvars.iv.next92.2
  %i.bb = getelementptr [8 x i8], ptr %i.am, i64 %i.ba
  store double 0.000000e+00, ptr %i.bb, align 8, !tbaa !40
  %indvars.iv.next92.3 = add nuw nsw i64 %indvars.iv91, 4 ; 2 uses
  %exitcond94.not.3 = icmp eq i64 %indvars.iv.next92.3, %i.m
  br i1 %exitcond94.not.3, label %._crit_edge.split.us.split.us49, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us47, !llvm.loop !28

._crit_edge.split.us.split.us49:                  ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us47.prol.loopexit, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us.us47, %middle.block143
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next96, %i.k
  br i1 %exitcond98.not, label %._crit_edge45.split, label %.preheader.us, !llvm.loop !25

.preheader.lr.ph.split.split:                     ; preds = %.preheader.lr.ph.split
  %i.bc = icmp sgt i64 %i.s, 1
  br i1 %i.bc, label %.preheader.lr.ph.split.split.split.us, label %.preheader.lr.ph.split.split.split

.preheader.lr.ph.split.split.split.us:            ; preds = %.preheader.lr.ph.split.split
  br i1 %2, label %.preheader.us52.us.preheader, label %.preheader.us52.preheader

.preheader.us52.preheader:                        ; preds = %.preheader.lr.ph.split.split.split.us
  %i.bd = add nsw i64 %i.s, -1                    ; 3 uses
  %xtraiter169.a = and i64 %i.bd, 1
  %i.be = icmp eq i64 %i.s, 2
  %unroll_iter173 = and i64 %i.bd, -2
  %lcmp.mod170.not.a = icmp eq i64 %xtraiter169.a, 0
  %lcmp.mod172 = trunc i64 %i.bd to i1
  br label %.preheader.us52

.preheader.us52.us.preheader:                     ; preds = %.preheader.lr.ph.split.split.split.us
  %i.bf = add nsw i64 %i.s, -1                    ; 3 uses
  %xtraiter175 = and i64 %i.bf, 1
  %i.bg = icmp eq i64 %i.s, 2
  %unroll_iter179 = and i64 %i.bf, -2
  %lcmp.mod176.not = icmp eq i64 %xtraiter175, 0
  %lcmp.mod178 = trunc i64 %i.bf to i1
  br label %.preheader.us52.us

.preheader.us52.us:                               ; preds = %.preheader.us52.us.preheader, %._crit_edge.split.split.us.us.split.us.us
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %._crit_edge.split.split.us.us.split.us.us ], [ 0, %.preheader.us52.us.preheader ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv87 ; 4 uses
  %i.bi = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv87
  br label %.lr.ph.i.i.i.i.preheader.us.us.us.us

.lr.ph.i.i.i.i.preheader.us.us.us.us:             ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.loopexit.us.us.us.us, %.preheader.us52.us
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.loopexit.us.us.us.us ], [ 0, %.preheader.us52.us ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv83 ; 4 uses
  %i.bk = load double, ptr %i.bh, align 8, !tbaa !40
  %i.bl = load double, ptr %i.bj, align 8, !tbaa !40
  %i.bm = fsub double %i.bk, %i.bl                ; 2 uses
  %i.bn = fmul double %i.bm, %i.bm                ; 2 uses
  br i1 %i.bg, label %.lr.ph.i.i.i.i.us.us.us.us.epil.preheader, label %.lr.ph.i.i.i.i.us.us.us.us

.lr.ph.i.i.i.i.us.us.us.us:                       ; preds = %.lr.ph.i.i.i.i.preheader.us.us.us.us, %.lr.ph.i.i.i.i.us.us.us.us
  %.01724.i.i.i.i.us.us.us.us = phi i64 [ %i.ch, %.lr.ph.i.i.i.i.us.us.us.us ], [ 1, %.lr.ph.i.i.i.i.preheader.us.us.us.us ] ; 4 uses
  %.02223.i.i.i.i.us.us.us.us = phi double [ %i.cg, %.lr.ph.i.i.i.i.us.us.us.us ], [ %i.bn, %.lr.ph.i.i.i.i.preheader.us.us.us.us ]
  %niter180 = phi i64 [ %niter180.next.1, %.lr.ph.i.i.i.i.us.us.us.us ], [ 0, %.lr.ph.i.i.i.i.preheader.us.us.us.us ]
  %i.bo = mul nuw nsw i64 %.01724.i.i.i.i.us.us.us.us, %i.k
  %i.bp = getelementptr [8 x i8], ptr %i.bh, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !40
  %i.br = mul nuw nsw i64 %.01724.i.i.i.i.us.us.us.us, %i.m
  %i.bs = getelementptr [8 x i8], ptr %i.bj, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !40
  %i.bu = fsub double %i.bq, %i.bt                ; 2 uses
  %i.bv = fmul double %i.bu, %i.bu
  %i.bw = fadd double %.02223.i.i.i.i.us.us.us.us, %i.bv
  %i.bx = add nuw nsw i64 %.01724.i.i.i.i.us.us.us.us, 1 ; 2 uses
  %i.by = mul nuw nsw i64 %i.bx, %i.k
  %i.bz = getelementptr [8 x i8], ptr %i.bh, i64 %i.by
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !40
  %i.cb = mul nuw nsw i64 %i.bx, %i.m
  %i.cc = getelementptr [8 x i8], ptr %i.bj, i64 %i.cb
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !40
  %i.ce = fsub double %i.ca, %i.cd                ; 2 uses
  %i.cf = fmul double %i.ce, %i.ce
  %i.cg = fadd double %i.bw, %i.cf                ; 3 uses
  %i.ch = add nuw nsw i64 %.01724.i.i.i.i.us.us.us.us, 2 ; 2 uses
  %niter180.next.1 = add nuw i64 %niter180, 2     ; 2 uses
  %niter180.ncmp.1 = icmp eq i64 %niter180.next.1, %unroll_iter179
  br i1 %niter180.ncmp.1, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.loopexit.us.us.us.us.unr-lcssa, label %.lr.ph.i.i.i.i.us.us.us.us, !llvm.loop !29

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.loopexit.us.us.us.us.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.us.us.us.us
  br i1 %lcmp.mod176.not, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.loopexit.us.us.us.us, label %.lr.ph.i.i.i.i.us.us.us.us.epil.preheader

.lr.ph.i.i.i.i.us.us.us.us.epil.preheader:        ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.loopexit.us.us.us.us.unr-lcssa, %.lr.ph.i.i.i.i.preheader.us.us.us.us
  %.01724.i.i.i.i.us.us.us.us.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.us.us.us.us ], [ %i.ch, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.loopexit.us.us.us.us.unr-lcssa ] ; 2 uses
  %.02223.i.i.i.i.us.us.us.us.epil.init = phi double [ %i.bn, %.lr.ph.i.i.i.i.preheader.us.us.us.us ], [ %i.cg, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.loopexit.us.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod178)
  %i.ci = mul nuw nsw i64 %.01724.i.i.i.i.us.us.us.us.epil.init, %i.k
  %i.cj = getelementptr [8 x i8], ptr %i.bh, i64 %i.ci
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !40
  %i.cl = mul nuw nsw i64 %.01724.i.i.i.i.us.us.us.us.epil.init, %i.m
  %i.cm = getelementptr [8 x i8], ptr %i.bj, i64 %i.cl
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !40
  %i.co = fsub double %i.ck, %i.cn                ; 2 uses
  %i.cp = fmul double %i.co, %i.co
  %i.cq = fadd double %.02223.i.i.i.i.us.us.us.us.epil.init, %i.cp
  br label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.loopexit.us.us.us.us

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.loopexit.us.us.us.us: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.loopexit.us.us.us.us.unr-lcssa, %.lr.ph.i.i.i.i.us.us.us.us.epil.preheader
  %.lcssa = phi double [ %i.cg, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.loopexit.us.us.us.us.unr-lcssa ], [ %i.cq, %.lr.ph.i.i.i.i.us.us.us.us.epil.preheader ]
  %i.cr = mul nsw i64 %i.v, %indvars.iv83
  %i.cs = getelementptr [8 x i8], ptr %i.bi, i64 %i.cr
  store double %.lcssa, ptr %i.cs, align 8, !tbaa !40
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond86.not = icmp eq i64 %indvars.iv.next84, %i.m
  br i1 %exitcond86.not, label %._crit_edge.split.split.us.us.split.us.us, label %.lr.ph.i.i.i.i.preheader.us.us.us.us, !llvm.loop !30

._crit_edge.split.split.us.us.split.us.us:        ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.loopexit.us.us.us.us
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next88, %i.k
  br i1 %exitcond90.not, label %._crit_edge45.split, label %.preheader.us52.us, !llvm.loop !25

.preheader.us52:                                  ; preds = %.preheader.us52.preheader, %._crit_edge.split.split.us.us.split
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %._crit_edge.split.split.us.us.split ], [ 0, %.preheader.us52.preheader ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv79 ; 4 uses
  %i.cu = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv79
  br label %.lr.ph.i.i.i.i.preheader.us.us

.lr.ph.i.i.i.i.preheader.us.us:                   ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.loopexit.us.us, %.preheader.us52
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.loopexit.us.us ], [ 0, %.preheader.us52 ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv75 ; 4 uses
  %i.cw = load double, ptr %i.ct, align 8, !tbaa !40
  %i.cx = load double, ptr %i.cv, align 8, !tbaa !40
  %i.cy = fsub double %i.cw, %i.cx                ; 2 uses
  %i.cz = fmul double %i.cy, %i.cy                ; 2 uses
  br i1 %i.be, label %.lr.ph.i.i.i.i.us.us.epil.preheader, label %.lr.ph.i.i.i.i.us.us

.lr.ph.i.i.i.i.us.us:                             ; preds = %.lr.ph.i.i.i.i.preheader.us.us, %.lr.ph.i.i.i.i.us.us
  %.01724.i.i.i.i.us.us = phi i64 [ %i.dt, %.lr.ph.i.i.i.i.us.us ], [ 1, %.lr.ph.i.i.i.i.preheader.us.us ] ; 4 uses
  %.02223.i.i.i.i.us.us = phi double [ %i.ds, %.lr.ph.i.i.i.i.us.us ], [ %i.cz, %.lr.ph.i.i.i.i.preheader.us.us ]
  %niter174 = phi i64 [ %niter174.next.1, %.lr.ph.i.i.i.i.us.us ], [ 0, %.lr.ph.i.i.i.i.preheader.us.us ]
  %i.da = mul nuw nsw i64 %.01724.i.i.i.i.us.us, %i.k
  %i.db = getelementptr [8 x i8], ptr %i.ct, i64 %i.da
  %i.dc = load double, ptr %i.db, align 8, !tbaa !40
  %i.dd = mul nuw nsw i64 %.01724.i.i.i.i.us.us, %i.m
  %i.de = getelementptr [8 x i8], ptr %i.cv, i64 %i.dd
  %i.df = load double, ptr %i.de, align 8, !tbaa !40
  %i.dg = fsub double %i.dc, %i.df                ; 2 uses
  %i.dh = fmul double %i.dg, %i.dg
  %i.di = fadd double %.02223.i.i.i.i.us.us, %i.dh
  %i.dj = add nuw nsw i64 %.01724.i.i.i.i.us.us, 1 ; 2 uses
  %i.dk = mul nuw nsw i64 %i.dj, %i.k
  %i.dl = getelementptr [8 x i8], ptr %i.ct, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !40
  %i.dn = mul nuw nsw i64 %i.dj, %i.m
  %i.do = getelementptr [8 x i8], ptr %i.cv, i64 %i.dn
  %i.dp = load double, ptr %i.do, align 8, !tbaa !40
  %i.dq = fsub double %i.dm, %i.dp                ; 2 uses
  %i.dr = fmul double %i.dq, %i.dq
  %i.ds = fadd double %i.di, %i.dr                ; 3 uses
  %i.dt = add nuw nsw i64 %.01724.i.i.i.i.us.us, 2 ; 2 uses
  %niter174.next.1 = add nuw i64 %niter174, 2     ; 2 uses
  %niter174.ncmp.1 = icmp eq i64 %niter174.next.1, %unroll_iter173
  br i1 %niter174.ncmp.1, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.loopexit.us.us.unr-lcssa, label %.lr.ph.i.i.i.i.us.us, !llvm.loop !29

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.loopexit.us.us.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.us.us
  br i1 %lcmp.mod170.not.a, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.loopexit.us.us, label %.lr.ph.i.i.i.i.us.us.epil.preheader

.lr.ph.i.i.i.i.us.us.epil.preheader:              ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.loopexit.us.us.unr-lcssa, %.lr.ph.i.i.i.i.preheader.us.us
  %.01724.i.i.i.i.us.us.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.us.us ], [ %i.dt, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.loopexit.us.us.unr-lcssa ] ; 2 uses
  %.02223.i.i.i.i.us.us.epil.init = phi double [ %i.cz, %.lr.ph.i.i.i.i.preheader.us.us ], [ %i.ds, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.loopexit.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod172)
  %i.du = mul nuw nsw i64 %.01724.i.i.i.i.us.us.epil.init, %i.k
  %i.dv = getelementptr [8 x i8], ptr %i.ct, i64 %i.du
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !40
  %i.dx = mul nuw nsw i64 %.01724.i.i.i.i.us.us.epil.init, %i.m
  %i.dy = getelementptr [8 x i8], ptr %i.cv, i64 %i.dx
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !40
  %i.ea = fsub double %i.dw, %i.dz                ; 2 uses
  %i.eb = fmul double %i.ea, %i.ea
  %i.ec = fadd double %.02223.i.i.i.i.us.us.epil.init, %i.eb
  br label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.loopexit.us.us

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.loopexit.us.us: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.loopexit.us.us.unr-lcssa, %.lr.ph.i.i.i.i.us.us.epil.preheader
  %.lcssa163 = phi double [ %i.ds, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.loopexit.us.us.unr-lcssa ], [ %i.ec, %.lr.ph.i.i.i.i.us.us.epil.preheader ]
  %i.ed = mul nsw i64 %i.v, %indvars.iv75
  %i.ee = getelementptr [8 x i8], ptr %i.cu, i64 %i.ed
  %i.ef = tail call double @sqrt(double noundef %.lcssa163) #7
  store double %i.ef, ptr %i.ee, align 8, !tbaa !40
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next76, %i.m
  br i1 %exitcond78.not, label %._crit_edge.split.split.us.us.split, label %.lr.ph.i.i.i.i.preheader.us.us, !llvm.loop !30

._crit_edge.split.split.us.us.split:              ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.loopexit.us.us
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next80, %i.k
  br i1 %exitcond82.not, label %._crit_edge45.split, label %.preheader.us52, !llvm.loop !25

.preheader.lr.ph.split.split.split:               ; preds = %.preheader.lr.ph.split.split
  br i1 %2, label %.preheader.us54.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split.split.split
  %xtraiter = and i64 %i.m, 1
  %i.eg = icmp eq i64 %i.m, 1
  %unroll_iter = and i64 %i.m, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod166 = trunc i64 %i.m to i1
  br label %.preheader

.preheader.us54.preheader:                        ; preds = %.preheader.lr.ph.split.split.split
  %i.eh = shl i64 %i.m, 3                         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.eh
  %4 = add nuw i64 %i.m, %i.k
  %i.ei = shl i64 %4, 3
  %scevgep128 = getelementptr i8, ptr %i.u, i64 %i.ei
  %i.ej = getelementptr i8, ptr %scevgep128, i64 -8
  %i.ek = getelementptr i8, ptr %i.q, i64 8
  %scevgep129 = getelementptr i8, ptr %i.u, i64 %i.eh
  %min.iters.check = icmp ugt i64 %i.m, 5
  %ident.check.not = icmp eq i64 %i.v, 1
  %or.cond159 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %i.u, %i.ek
  %bound1 = icmp ult ptr %i.q, %scevgep129
  %found.conflict = and i1 %bound0, %bound1
  %bound0130 = icmp ult ptr %i.u, %scevgep
  %bound1131 = icmp ult ptr %i.r, %i.ej
  %found.conflict132 = and i1 %bound0130, %bound1131
  %conflict.rdx = or i1 %found.conflict, %found.conflict132
  %n.vec = and i64 %i.m, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.m, %n.vec
  %xtraiter167 = and i64 %i.m, 1
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br label %.preheader.us54

.preheader.us54:                                  ; preds = %.preheader.us54.preheader, %._crit_edge.split.split.split.us.us
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %._crit_edge.split.split.split.us.us ], [ 0, %.preheader.us54.preheader ] ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv71 ; 4 uses
  %i.em = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv71 ; 4 uses
  %or.cond159.not = xor i1 %or.cond159, true
  %brmerge = select i1 %or.cond159.not, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us42.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us54
  %i.en = load double, ptr %i.el, align 8, !tbaa !40, !alias.scope !45
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.en, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load = load <2 x double>, ptr %i.eo, align 8, !tbaa !40, !alias.scope !46
  %wide.load133 = load <2 x double>, ptr %i.ep, align 8, !tbaa !40, !alias.scope !46
  %i.eq = fsub <2 x double> %broadcast.splat, %wide.load ; 2 uses
  %i.er = fsub <2 x double> %broadcast.splat, %wide.load133 ; 2 uses
  %i.es = fmul <2 x double> %i.eq, %i.eq
  %i.et = fmul <2 x double> %i.er, %i.er
  %i.eu = getelementptr [8 x i8], ptr %i.em, i64 %index ; 2 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 16
  store <2 x double> %i.es, ptr %i.eu, align 8, !tbaa !40, !alias.scope !47, !noalias !48
  store <2 x double> %i.et, ptr %i.ev, align 8, !tbaa !40, !alias.scope !47, !noalias !48
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ew = icmp eq i64 %index.next, %n.vec
  br i1 %i.ew, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split.split.split.us.us, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us42.us.preheader

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us42.us.preheader: ; preds = %.preheader.us54, %middle.block
  %indvars.iv67.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us54 ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv67.ph, 1
  br i1 %lcmp.mod168.not, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us42.us.prol.loopexit, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us42.us.prol

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us42.us.prol: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us42.us.preheader
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv67.ph
  %i.ey = load double, ptr %i.el, align 8, !tbaa !40
  %i.ez = load double, ptr %i.ex, align 8, !tbaa !40
  %i.fa = fsub double %i.ey, %i.ez                ; 2 uses
  %i.fb = fmul double %i.fa, %i.fa
  %i.fc = mul nsw i64 %i.v, %indvars.iv67.ph
  %i.fd = getelementptr [8 x i8], ptr %i.em, i64 %i.fc
  store double %i.fb, ptr %i.fd, align 8, !tbaa !40
  %indvars.iv.next68.prol = or disjoint i64 %indvars.iv67.ph, 1
  br label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us42.us.prol.loopexit

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us42.us.prol.loopexit: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us42.us.prol, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us42.us.preheader
  %indvars.iv67.unr = phi i64 [ %indvars.iv67.ph, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us42.us.preheader ], [ %indvars.iv.next68.prol, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us42.us.prol ]
  %i.fe = icmp eq i64 %i.m, %.neg
  br i1 %i.fe, label %._crit_edge.split.split.split.us.us, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us42.us

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us42.us: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us42.us.prol.loopexit, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us42.us
  %indvars.iv67 = phi i64 [ %indvars.iv.next68.1, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us42.us ], [ %indvars.iv67.unr, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us42.us.prol.loopexit ] ; 4 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv67
  %i.fg = load double, ptr %i.el, align 8, !tbaa !40
  %i.fh = load double, ptr %i.ff, align 8, !tbaa !40
  %i.fi = fsub double %i.fg, %i.fh                ; 2 uses
  %i.fj = fmul double %i.fi, %i.fi
  %i.fk = mul nsw i64 %i.v, %indvars.iv67
  %i.fl = getelementptr [8 x i8], ptr %i.em, i64 %i.fk
  store double %i.fj, ptr %i.fl, align 8, !tbaa !40
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next68
  %i.fn = load double, ptr %i.el, align 8, !tbaa !40
  %i.fo = load double, ptr %i.fm, align 8, !tbaa !40
  %i.fp = fsub double %i.fn, %i.fo                ; 2 uses
  %i.fq = fmul double %i.fp, %i.fp
  %i.fr = mul nsw i64 %i.v, %indvars.iv.next68
  %i.fs = getelementptr [8 x i8], ptr %i.em, i64 %i.fr
  store double %i.fq, ptr %i.fs, align 8, !tbaa !40
  %indvars.iv.next68.1 = add nuw nsw i64 %indvars.iv67, 2 ; 2 uses
  %exitcond70.not.1 = icmp eq i64 %indvars.iv.next68.1, %i.m
  br i1 %exitcond70.not.1, label %._crit_edge.split.split.split.us.us, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us42.us, !llvm.loop !36

._crit_edge.split.split.split.us.us:              ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us42.us.prol.loopexit, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.us42.us, %middle.block
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next72, %i.k
  br i1 %exitcond74.not, label %._crit_edge45.split, label %.preheader.us54, !llvm.loop !25

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge.split.split.split
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %._crit_edge.split.split.split ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv63 ; 3 uses
  %i.fu = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv63 ; 3 uses
  br i1 %i.eg, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.epil.preheader, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit

._crit_edge45.split:                              ; preds = %._crit_edge.split.split.split, %._crit_edge.split.split.split.us.us, %._crit_edge.split.split.us.us.split, %._crit_edge.split.split.us.us.split.us.us, %._crit_edge.split.us.split.us49, %._crit_edge.split.us.split.us.us.us, %.preheader.lr.ph, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  ret void

._crit_edge.split.split.split.unr-lcssa:          ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit
  br i1 %lcmp.mod.not, label %._crit_edge.split.split.split, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.epil.preheader

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.epil.preheader: ; preds = %._crit_edge.split.split.split.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.split.split.split.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod166)
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.epil.init
  %i.fw = load double, ptr %i.ft, align 8, !tbaa !40
  %i.fx = load double, ptr %i.fv, align 8, !tbaa !40
  %i.fy = fsub double %i.fw, %i.fx                ; 2 uses
  %i.fz = fmul double %i.fy, %i.fy
  %i.ga = mul nsw i64 %i.v, %indvars.iv.epil.init
  %i.gb = getelementptr [8 x i8], ptr %i.fu, i64 %i.ga
  %i.gc = tail call double @sqrt(double noundef %i.fz) #7
  store double %i.gc, ptr %i.gb, align 8, !tbaa !40
  br label %._crit_edge.split.split.split

._crit_edge.split.split.split:                    ; preds = %._crit_edge.split.split.split.unr-lcssa, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit.epil.preheader
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next64, %i.k
  br i1 %exitcond66.not, label %._crit_edge45.split, label %.preheader, !llvm.loop !25

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit: ; preds = %.preheader, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit ], [ 0, %.preheader ]
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.ge = load double, ptr %i.ft, align 8, !tbaa !40
  %i.gf = load double, ptr %i.gd, align 8, !tbaa !40
  %i.gg = fsub double %i.ge, %i.gf                ; 2 uses
  %i.gh = fmul double %i.gg, %i.gg
  %i.gi = mul nsw i64 %i.v, %indvars.iv
  %i.gj = getelementptr [8 x i8], ptr %i.fu, i64 %i.gi
  %i.gk = tail call double @sqrt(double noundef %i.gh) #7
  store double %i.gk, ptr %i.gj, align 8, !tbaa !40
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next
  %i.gm = load double, ptr %i.ft, align 8, !tbaa !40
  %i.gn = load double, ptr %i.gl, align 8, !tbaa !40
  %i.go = fsub double %i.gm, %i.gn                ; 2 uses
  %i.gp = fmul double %i.go, %i.go
  %i.gq = mul nsw i64 %i.v, %indvars.iv.next
  %i.gr = getelementptr [8 x i8], ptr %i.fu, i64 %i.gq
  %i.gs = tail call double @sqrt(double noundef %i.gp) #7
  store double %i.gs, ptr %i.gr, align 8, !tbaa !40
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.split.split.split.unr-lcssa, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit, !llvm.loop !30
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.f) #7
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #8
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #9 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #8
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
end_hunk_0
