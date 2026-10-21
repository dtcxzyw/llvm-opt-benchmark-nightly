Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ViewerCore?download=true
inline.NumInlined: 3000
inline.NumDeleted: 1769
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN3igl6opengl10ViewerCore31get_scale_and_shift_to_fit_meshERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS3_IiLin1ELin1ELi0ELin1ELin1EEERfRNS3_IfLi3ELi1ELi0ELi3ELi1EEE:bb.a
  unreachable

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.t, ptr %5, align 8, !tbaa !48
  store i64 %i.b, ptr %i.j, align 8, !tbaa !22
  store i64 %i.i, ptr %i.k, align 8, !tbaa !23
  %i.w = and i64 %i.n, 2305843009213693950        ; 3 uses
  %.not = icmp eq i64 %i.n, 1
  br i1 %.not, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.thread18, %.thread, %bb.g
  %i.x = phi i64 [ 0, %.thread ], [ %i.q, %.thread18 ], [ %i.w, %bb.g ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.y = phi ptr [ null, %.thread ], [ null, %.thread18 ], [ %i.t, %bb.g ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.z = phi i64 [ 0, %.thread ], [ %i.n, %.thread18 ], [ 1, %bb.g ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aa = icmp slt i64 %i.x, %i.z
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.ab = sub i64 %i.z, %i.x                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ab, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader21, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, -4                      ; 3 uses
  %i.ac = add i64 %i.x, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = add i64 %i.x, %index                    ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ad ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <2 x double>, ptr %i.af, align 8, !tbaa !51
  %wide.load20 = load <2 x double>, ptr %i.ag, align 8, !tbaa !51
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <2 x double> %wide.load, ptr %i.ae, align 8, !tbaa !51
  store <2 x double> %wide.load20, ptr %i.ah, align 8, !tbaa !51
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader21

.lr.ph.i.i.i.i.i.i.i.i.i.preheader21:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader21, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader21 ] ; 3 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.y, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.g, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.al = load double, ptr %i.ak, align 8, !tbaa !51
  store double %i.al, ptr %i.aj, align 8, !tbaa !51
  %i.am = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.am, %i.z
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !127

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.g ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.011.i.i.i.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.011.i.i.i.i.i.i.i.i
  %i.ap = load <2 x double>, ptr %i.ao, align 16, !tbaa !54
  store <2 x double> %i.ap, ptr %i.an, align 16, !tbaa !54
  %i.aq = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ar = icmp samesign ult i64 %i.aq, %i.w
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !128

bb.h:                                             ; preds = %.invoke, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, %bb.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %5, align 8, !tbaa !48
  call void @free(ptr noundef %i.at) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %i.as

bb.i:                                             ; preds = %bb.b
  invoke void @_ZN3igl10barycenterIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit unwind label %bb.h

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i, %bb.i
  invoke void @_ZN3igl6opengl10ViewerCore31get_scale_and_shift_to_fit_meshERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERfRNS3_IfLi3ELi1ELi0ELi3ELi1EEE(ptr nonnull align 16 poison, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(12) %4)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit
  %i.au = load ptr, ptr %5, align 8, !tbaa !48
  call void @free(ptr noundef %i.au) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN3igl10barycenterIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl10ViewerCore31get_scale_and_shift_to_fit_meshERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERfRNS3_IfLi3ELi1ELi0ELi3ELi1EEE(ptr nofree nonnull readnone align 16 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(12) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::internal::redux_evaluator.369", align 8 ; 5 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.312", align 8 ; 7 uses
  %6 = alloca %"class.Eigen::Matrix.55", align 8  ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !alias.scope !136
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !136
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store double 5.000000e-01, ptr %i.e, align 8, !tbaa !138, !noalias !136
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %1, ptr %i.f, align 8, !tbaa !25, !noalias !136
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %1, ptr %i.g, align 8, !tbaa !25, !noalias !136
  %i.h = load i64, ptr %i.d, align 8, !tbaa !23, !noalias !136 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not8.i.i.i.i.i.i.i.i, label %.loopexit60.thread, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %bb.b
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 1, i64 noundef %i.h)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !56, !alias.scope !136 ; 2 uses
  %.pre.i.i = load ptr, ptr %6, align 8, !tbaa !57, !alias.scope !136
  %i.j = icmp sgt i64 %.pr.i.i.i.i.i.i.i, 0
  br i1 %i.j, label %.lr.ph.i.preheader.i.i.i.i.i.i.i, label %.loopexit60.thread

.lr.ph.i.preheader.i.i.i.i.i.i.i:                 ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc3.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.p, %.noexc3.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.l = load double, ptr %i.e, align 8, !tbaa !138, !noalias !136
  %i.m = invoke noundef double @_ZNK5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_16PartialReduxExprIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEKNS5_IS8_NS0_15member_maxCoeffIddEELi0EEEEENS0_10IndexBasedESI_ddE5coeffEl(ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 noundef %.05.i.i.i.i.i.i.i.i)
          to label %.noexc3.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc3.i.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %.05.i.i.i.i.i.i.i.i
  %i.o = fmul double %i.l, %i.m
  store double %i.o, ptr %i.n, align 8, !tbaa !51
  %i.p = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.p, %.pr.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit60, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !132

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp78, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp78 = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %6, align 8, !tbaa !57, !alias.scope !136
  call void @free(ptr noundef %i.q) #19
  br label %common.resume

.loopexit60.thread:                               ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !136
  store <2 x float> zeroinitializer, ptr %3, align 4, !tbaa !58
  %.07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i70 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float 0.000000e+00, ptr %.07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i70, align 4, !tbaa !58
  br label %.loopexit56

.loopexit60:                                      ; preds = %.noexc3.i.i
  %.pre = load i64, ptr %i.i, align 8, !tbaa !56  ; 5 uses
  %.pre64 = load ptr, ptr %6, align 8, !tbaa !57  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !136
  store <2 x float> zeroinitializer, ptr %3, align 4, !tbaa !58
  %.07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float 0.000000e+00, ptr %.07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i, align 4, !tbaa !58
  %i.r = icmp sgt i64 %.pre, 0
  br i1 %i.r, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit56

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %.loopexit60
  %min.iters.check = icmp ult i64 %.pre, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader76, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %.pre, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.pre64, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <2 x double>, ptr %i.t, align 8, !tbaa !51
  %wide.load75 = load <2 x double>, ptr %i.u, align 8, !tbaa !51
  %i.v = fptrunc <2 x double> %wide.load to <2 x float>
  %i.w = fptrunc <2 x double> %wide.load75 to <2 x float>
  %7 = shufflevector <2 x float> %i.v, <2 x float> %i.w, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %8 = fneg <4 x float> %7
  store <4 x float> %8, ptr %i.s, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !133

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre, %n.vec
  br i1 %cmp.n, label %.loopexit56, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader76

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader76:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader76, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader76 ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.pre64, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.aa = load double, ptr %i.z, align 8, !tbaa !51
  %i.ab = fptrunc double %i.aa to float
  %i.ac = fneg float %i.ab
  store float %i.ac, ptr %i.y, align 4, !tbaa !58
  %i.ad = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ad, %.pre
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit56, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !134

.loopexit56:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %.loopexit60.thread, %.loopexit60
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %1, ptr %i.ae, align 8, !tbaa !25
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %1, ptr %i.af, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ah = invoke noundef double @_ZNK5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_16PartialReduxExprIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEKNS5_IS8_NS0_15member_minCoeffIddEELi0EEEEENS0_10IndexBasedESI_ddE5coeffEll(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, i64 noundef 0, i64 noundef 0)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit56
  %i.ai = call noundef double @llvm.fabs.f64(double %i.ah) ; 2 uses
  %i.aj = load i64, ptr %i.d, align 8, !tbaa !23
  %i.ak = icmp sgt i64 %i.aj, 1
  br i1 %i.ak, label %.lr.ph.i.i.i.i, label %.loopexit55

.lr.ph.i.i.i.i:                                   ; preds = %.noexc, %.noexc12
  %.01724.i.i.i.i = phi i64 [ %i.ap, %.noexc12 ], [ 1, %.noexc ] ; 2 uses
  %.02223.i.i.i.i = phi double [ %i.ao, %.noexc12 ], [ %i.ai, %.noexc ] ; 2 uses
  %i.al = invoke noundef double @_ZNK5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_16PartialReduxExprIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEKNS5_IS8_NS0_15member_minCoeffIddEELi0EEEEENS0_10IndexBasedESI_ddE5coeffEll(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, i64 noundef 0, i64 noundef %.01724.i.i.i.i)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %.lr.ph.i.i.i.i
  %i.am = call noundef double @llvm.fabs.f64(double %i.al) ; 2 uses
  %i.an = fcmp olt double %.02223.i.i.i.i, %i.am
  %i.ao = select i1 %i.an, double %i.am, double %.02223.i.i.i.i ; 2 uses
  %i.ap = add nuw nsw i64 %.01724.i.i.i.i, 1      ; 2 uses
  %i.aq = load i64, ptr %i.d, align 8, !tbaa !23
  %i.ar = icmp slt i64 %i.ap, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i.i.i, label %.loopexit55, !llvm.loop !135

.loopexit55:                                      ; preds = %.noexc12, %.noexc
  %.022.lcssa.i.i.i.i = phi double [ %i.ai, %.noexc ], [ %i.ao, %.noexc12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.as = fdiv double 2.000000e+00, %.022.lcssa.i.i.i.i
  %i.at = fptrunc double %i.as to float
  store float %i.at, ptr %2, align 4, !tbaa !58
  %i.au = load ptr, ptr %6, align 8, !tbaa !57
  call void @free(ptr noundef %i.au) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.loopexit55
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i, %.loopexit56
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %6, align 8, !tbaa !57
  call void @free(ptr noundef %i.av) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl10ViewerCore19align_camera_centerERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE(ptr nofree noundef nonnull writeonly align 16 captures(none) dereferenceable(544) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::internal::redux_evaluator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 108
  tail call void @_ZN3igl6opengl10ViewerCore31get_scale_and_shift_to_fit_meshERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERfRNS3_IfLi3ELi1ELi0ELi3ELi1EEE(ptr nonnull align 16 poison, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %i.e)
  %i.f = load i64, ptr %i.a, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %i.i = mul nsw i64 %i.h, %i.f
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_16PartialReduxExprIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_15member_maxCoeffIddEELi0EEEKNS5_IS8_NS2_15member_minCoeffIddEELi0EEEEEE4normEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %1, ptr %i.l, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %1, ptr %i.m, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = call noundef double @_ZNK5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_16PartialReduxExprIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEKNS5_IS8_NS0_15member_minCoeffIddEELi0EEEEENS0_10IndexBasedESI_ddE5coeffEll(ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 noundef 0, i64 noundef 0) ; 2 uses
  %i.p = fmul double %i.o, %i.o                   ; 2 uses
  %i.q = load i64, ptr %i.g, align 8, !tbaa !23
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %.lr.ph.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS2_20scalar_difference_opIddEEKNS_16PartialReduxExprIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_15member_maxCoeffIddEELi0EEEKNS8_ISB_NS2_15member_minCoeffIddEELi0EEEEEEEE5reduxINS2_13scalar_sum_opIddEEEEdRKT_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.01724.i.i.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i ], [ 1, %bb.d ] ; 2 uses
  %.02223.i.i.i.i.i = phi double [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ]
  %i.s = call noundef double @_ZNK5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_16PartialReduxExprIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEKNS5_IS8_NS0_15member_minCoeffIddEELi0EEEEENS0_10IndexBasedESI_ddE5coeffEll(ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 noundef 0, i64 noundef %.01724.i.i.i.i.i) ; 2 uses
  %i.t = fmul double %i.s, %i.s
  %i.u = fadd double %.02223.i.i.i.i.i, %i.t      ; 2 uses
  %i.v = add nuw nsw i64 %.01724.i.i.i.i.i, 1     ; 2 uses
  %i.w = load i64, ptr %i.g, align 8, !tbaa !23
  %i.x = icmp slt i64 %i.v, %i.w
  br i1 %i.x, label %.lr.ph.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS2_20scalar_difference_opIddEEKNS_16PartialReduxExprIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_15member_maxCoeffIddEELi0EEEKNS8_ISB_NS2_15member_minCoeffIddEELi0EEEEEEEE5reduxINS2_13scalar_sum_opIddEEEEdRKT_.exit.i.i.i, !llvm.loop !0

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS2_20scalar_difference_opIddEEKNS_16PartialReduxExprIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_15member_maxCoeffIddEELi0EEEKNS8_ISB_NS2_15member_minCoeffIddEELi0EEEEEEEE5reduxINS2_13scalar_sum_opIddEEEEdRKT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.022.lcssa.i.i.i.i.i = phi double [ %i.p, %bb.d ], [ %i.u, %.lr.ph.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.y = call double @llvm.sqrt.f64(double %.022.lcssa.i.i.i.i.i)
  %i.z = fptrunc double %i.y to float
  br label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_16PartialReduxExprIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_15member_maxCoeffIddEELi0EEEKNS5_IS8_NS2_15member_minCoeffIddEELi0EEEEEE4normEv.exit

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_16PartialReduxExprIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_15member_maxCoeffIddEELi0EEEKNS5_IS8_NS2_15member_minCoeffIddEELi0EEEEEE4normEv.exit: ; preds = %bb.c, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS2_20scalar_difference_opIddEEKNS_16PartialReduxExprIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_15member_maxCoeffIddEELi0EEEKNS8_ISB_NS2_15member_minCoeffIddEELi0EEEEEEEE5reduxINS2_13scalar_sum_opIddEEEEdRKT_.exit.i.i.i
  %.0.i.i.i = phi float [ %i.z, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS2_20scalar_difference_opIddEEKNS_16PartialReduxExprIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_15member_maxCoeffIddEELi0EEEKNS8_ISB_NS2_15member_minCoeffIddEELi0EEEEEEEE5reduxINS2_13scalar_sum_opIddEEEEdRKT_.exit.i.i.i ], [ 0.000000e+00, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192
  store float %.0.i.i.i, ptr %i.aa, align 16, !tbaa !45
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_16PartialReduxExprIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_15member_maxCoeffIddEELi0EEEKNS5_IS8_NS2_15member_minCoeffIddEELi0EEEEEE4normEv.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl10ViewerCore18clear_framebuffersEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(544) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @glad_glScissor, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = load float, ptr %i.b, align 16, !tbaa !58
  %i.d = fptosi float %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !58
  %i.g = fptosi <2 x float> %i.f to <2 x i32>     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.i = load float, ptr %i.h, align 4, !tbaa !58
  %i.j = fptosi float %i.i to i32
  %i.k = extractelement <2 x i32> %i.g, i64 0
  %i.l = extractelement <2 x i32> %i.g, i64 1
  tail call void %i.a(i32 noundef %i.d, i32 noundef %i.k, i32 noundef %i.l, i32 noundef %i.j)
  %i.m = load ptr, ptr @glad_glEnable, align 8, !tbaa !59
  tail call void %i.m(i32 noundef 3089)
  %i.n = load ptr, ptr @glad_glClearColor, align 8, !tbaa !59
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load float, ptr %i.o, align 16, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = load float, ptr %i.q, align 4, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load float, ptr %i.s, align 8, !tbaa !58
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.v = load float, ptr %i.u, align 4, !tbaa !58
  tail call void %i.n(float noundef %i.p, float noundef %i.r, float noundef %i.t, float noundef %i.v)
  %i.w = load ptr, ptr @glad_glClear, align 8, !tbaa !59
  tail call void %i.w(i32 noundef 16640)
  %i.x = load ptr, ptr @glad_glDisable, align 8, !tbaa !59
  tail call void %i.x(i32 noundef 3089)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl10ViewerCore4drawERNS0_10ViewerDataEb(ptr noundef nonnull align 16 dereferenceable(544) %0, ptr noundef nonnull align 8 dereferenceable(1488) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.12", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.b = load i8, ptr %i.a, align 4, !tbaa !60, !range !61, !noundef !62
  %i.c = trunc nuw i8 %i.b to i1
  %glad_glEnable.val = load ptr, ptr @glad_glEnable, align 8
  %glad_glDisable.val = load ptr, ptr @glad_glDisable, align 8
  %i.d = select i1 %i.c, ptr %glad_glEnable.val, ptr %glad_glDisable.val
  tail call void %i.d(i32 noundef 2929)
  %i.e = load ptr, ptr @glad_glEnable, align 8, !tbaa !59
  tail call void %i.e(i32 noundef 3042)
  %i.f = load ptr, ptr @glad_glBlendFunc, align 8, !tbaa !59
  tail call void %i.f(i32 noundef 770, i32 noundef 771)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !93
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 582
end_hunk_0
