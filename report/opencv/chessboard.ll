Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/chessboard?download=true
inline.NumInlined: 4866
inline.NumDeleted: 1356
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZN2cv7details7EllipseC2ERKNS_6Point_IfEERKNS_5Size_IfEEf
define hidden void @_ZN2cv7details7EllipseC2ERKNS_6Point_IfEERKNS_5Size_IfEEf(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(28) initializes((0, 28)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, float noundef %3) unnamed_addr #13 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 4, !tbaa !40
  store i64 %i.a, ptr %0, align 4, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %2, align 4, !tbaa !40
  store i64 %i.c, ptr %i.b, align 4, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %3, ptr %i.d, align 4, !tbaa !153
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = fneg float %3                            ; 2 uses
  %i.g = tail call noundef float @cosf(float noundef %i.f) #33
  store float %i.g, ptr %i.e, align 4, !tbaa !154
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = tail call noundef float @sinf(float noundef %i.f) #33
  store float %i.i, ptr %i.h, align 4, !tbaa !155
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 4 dereferenceable(8) ptr @_ZNK2cv7details7Ellipse7getAxesEv(ptr nofree noundef nonnull readnone align 4 captures(ret: address, provenance) dereferenceable(28) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden <2 x float> @_ZNK2cv7details7Ellipse9getCenterEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %.sroa.0.0.copyload = load <2 x float>, ptr %0, align 4, !tbaa !40
  ret <2 x float> %.sroa.0.0.copyload
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK2cv7details7Ellipse4drawERKNS_17_InputOutputArrayERKNS_7Scalar_IdEE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = load <4 x float>, ptr %0, align 4
  %i.b = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load <4 x float>, ptr %i.c, align 4
  %i.e = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.d)
  %.sroa.2.0.insert.ext.i = zext i32 %i.e to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.b to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load <4 x float>, ptr %i.f, align 4
  %i.h = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load <4 x float>, ptr %i.i, align 4      ; 2 uses
  %i.k = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.j)
  %.sroa.2.0.insert.ext.i4 = zext i32 %i.k to i64
  %.sroa.2.0.insert.shift.i5 = shl nuw i64 %.sroa.2.0.insert.ext.i4, 32
  %.sroa.0.0.insert.ext.i6 = zext i32 %i.h to i64
  %.sroa.0.0.insert.insert.i7 = or disjoint i64 %.sroa.2.0.insert.shift.i5, %.sroa.0.0.insert.ext.i6
  %i.l = extractelement <4 x float> %i.j, i64 1
  %i.m = fpext float %i.l to double
  %i.n = fdiv double %i.m, f0xC00921FB54442D18
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double 1.800000e+02, double 3.600000e+02)
  tail call void @_ZN2cv7ellipseERKNS_17_InputOutputArrayENS_6Point_IiEENS_5Size_IiEEdddRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %.sroa.0.0.insert.insert.i, i64 %.sroa.0.0.insert.insert.i7, double noundef %i.o, double noundef 0.000000e+00, double noundef 3.600000e+02, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 1, i32 noundef 8, i32 noundef 0)
  ret void
}

declare void @_ZN2cv7ellipseERKNS_17_InputOutputArrayENS_6Point_IiEENS_5Size_IiEEdddRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24), i64, i64, double noundef, double noundef, double noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK2cv7details7Ellipse8containsERKNS_6Point_IfEE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load <2 x float>, ptr %1, align 4, !tbaa !40
  %i.e = load <2 x float>, ptr %0, align 4, !tbaa !40
  %i.f = fsub <2 x float> %i.d, %i.e              ; 2 uses
  %i.g = load <2 x float>, ptr %i.a, align 4, !tbaa !40 ; 2 uses
  %i.h = load float, ptr %i.b, align 4, !tbaa !155
  %i.i = fneg float %i.h
  %i.j = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.k = fmul <2 x float> %i.j, %i.g
  %i.l = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.m = insertelement <2 x float> %i.l, float %i.i, i64 0
  %i.n = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> %i.n, <2 x float> %i.k) ; 2 uses
  %i.p = fmul <2 x float> %i.o, %i.o
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.r = load <2 x float>, ptr %i.c, align 4, !tbaa !40 ; 2 uses
  %i.s = fmul <2 x float> %i.r, %i.r
  %i.t = fdiv <2 x float> %i.q, %i.s
  %i.u = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.t)
  %i.v = fcmp ole float %i.u, 1.000000e+00
  ret i1 %i.v
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv7details10Chessboard15getObjectPointsERKNS_5Size_IiEEf(ptr dead_on_unwind noalias nonnull writable sret(%"class.cv::Mat") align 8 %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, float noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !137
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !138
  %i.d = mul nsw i32 %i.c, %i.a
  tail call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %i.d, i32 noundef 1, i32 noundef 69)
  %i.e = load i32, ptr %i.b, align 4, !tbaa !138  ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.preheader.lr.ph, label %._crit_edge22.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.g = load i32, ptr %1, align 4, !tbaa !137    ; 4 uses
  %i.h = icmp sgt i32 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  br i1 %i.h, label %.preheader.preheader, label %._crit_edge22.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.m = zext nneg i32 %i.g to i64                ; 3 uses
  %wide.trip.count27 = zext nneg i32 %i.e to i64
  %xtraiter = and i64 %i.m, 1
  %i.n = icmp eq i32 %i.g, 1
  %unroll_iter = and i64 %i.m, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod30 = trunc i32 %i.g to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv24 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next25, %._crit_edge ] ; 3 uses
  %i.o = mul nuw nsw i64 %indvars.iv24, %i.m      ; 3 uses
  %i.p = trunc nuw nsw i64 %indvars.iv24 to i32
  %i.q = uitofp nneg i32 %i.p to float
  %i.r = fmul float %2, %i.q                      ; 3 uses
  br i1 %i.n, label %.epil.preheader, label %.preheader.new

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %i.s = add nuw nsw i64 %i.o, %indvars.iv.epil.init
  %i.t = mul i64 %i.l, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.t ; 3 uses
  %i.v = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.w = uitofp nneg i32 %i.v to float
  %i.x = fmul float %2, %i.w
  store float %i.x, ptr %i.u, align 4, !tbaa !157
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store float %i.r, ptr %i.y, align 4, !tbaa !158
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store float 0.000000e+00, ptr %i.z, align 4, !tbaa !159
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %exitcond28.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count27
  br i1 %exitcond28.not, label %._crit_edge22.split, label %.preheader, !llvm.loop !4

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.aa = add nuw nsw i64 %i.o, %indvars.iv
  %i.ab = mul i64 %i.l, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ab ; 3 uses
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32
  %i.ae = uitofp nneg i32 %i.ad to float
  %i.af = fmul float %2, %i.ae
  store float %i.af, ptr %i.ac, align 4, !tbaa !157
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store float %i.r, ptr %i.ag, align 4, !tbaa !158
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store float 0.000000e+00, ptr %i.ah, align 4, !tbaa !159
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ai = add nuw nsw i64 %i.o, %indvars.iv.next
  %i.aj = mul i64 %i.l, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aj ; 3 uses
  %i.al = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.am = uitofp nneg i32 %i.al to float
  %i.an = fmul float %2, %i.am
  store float %i.an, ptr %i.ak, align 4, !tbaa !157
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store float %i.r, ptr %i.ao, align 4, !tbaa !158
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store float 0.000000e+00, ptr %i.ap, align 4, !tbaa !159
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !5

._crit_edge22.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

declare void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2cv7details10Chessboard5Board4Cell8isInsideERKNS_6Point_IfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !163    ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !164 ; 5 uses
  %i.c = fcmp uno float %i.b, 0.000000e+00
  br i1 %i.c, label %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !165 ; 5 uses
  %i.f = fcmp uno float %i.e, 0.000000e+00
  br i1 %i.f, label %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !166  ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !164 ; 4 uses
  %i.j = fcmp uno float %i.i, 0.000000e+00
  br i1 %i.j, label %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !165 ; 4 uses
  %i.m = fcmp uno float %i.l, 0.000000e+00
  br i1 %i.m, label %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !167  ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !164 ; 4 uses
  %i.q = fcmp uno float %i.p, 0.000000e+00
  br i1 %i.q, label %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !165 ; 4 uses
  %i.t = fcmp uno float %i.s, 0.000000e+00
  br i1 %i.t, label %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !168  ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !164 ; 3 uses
  %i.x = fcmp uno float %i.w, 0.000000e+00
  br i1 %i.x, label %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit.thread, label %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit

_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit: ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !165 ; 3 uses
  %i.aa = fcmp uno float %i.z, 0.000000e+00
  br i1 %i.aa, label %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit
  %2 = fsub float %i.z, %i.e
  %3 = fsub float %i.w, %i.b
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = insertelement <2 x float> poison, float %i.e, i64 0
  %i.ac = insertelement <2 x float> %i.ab, float %i.l, i64 1
  %5 = insertelement <2 x float> poison, float %i.l, i64 0
  %i.ad = insertelement <2 x float> %5, float %i.z, i64 1 ; 2 uses
  %6 = fsub <2 x float> %i.ac, %i.ad
  %i.ae = insertelement <2 x float> poison, float %i.b, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.i, i64 1
  %7 = insertelement <2 x float> poison, float %i.i, i64 0
  %8 = insertelement <2 x float> %7, float %i.w, i64 1 ; 2 uses
  %9 = fsub <2 x float> %i.af, %8
  %i.ag = load float, ptr %1, align 4, !tbaa !164 ; 3 uses
  %10 = fsub float %i.ag, %i.b                    ; 2 uses
  %11 = load float, ptr %4, align 4, !tbaa !165   ; 3 uses
  %i.ah = fsub float %11, %i.e
  %i.ai = fneg float %i.ah                        ; 2 uses
  %i.aj = fmul float %3, %i.ai
  %i.ak = tail call float @llvm.fmuladd.f32(float %10, float %2, float %i.aj) ; 2 uses
  %i.al = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fsub <2 x float> %i.am, %8
  %i.ao = insertelement <2 x float> poison, float %11, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fsub <2 x float> %i.ap, %i.ad
  %i.ar = fneg <2 x float> %i.aq
  %i.as = fmul <2 x float> %9, %i.ar
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %6, <2 x float> %i.as) ; 2 uses
  %12 = fcmp ogt float %i.ak, 0.000000e+00
  %i.au = extractelement <2 x float> %i.at, i64 0 ; 2 uses
  %i.av = fcmp ogt float %i.au, 0.000000e+00      ; 2 uses
  %or.cond = select i1 %12, i1 %i.av, i1 false
  %i.aw = extractelement <2 x float> %i.at, i64 1 ; 2 uses
  %i.ax = fcmp ogt float %i.aw, 0.000000e+00
  %or.cond3 = select i1 %or.cond, i1 %i.ax, i1 false
  br i1 %or.cond3, label %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = fcmp olt float %i.ak, 0.000000e+00
  %13 = fcmp olt float %i.au, 0.000000e+00        ; 2 uses
  %or.cond5 = select i1 %i.ay, i1 %13, i1 false
  %14 = fcmp olt float %i.aw, 0.000000e+00
  %or.cond7 = select i1 %or.cond5, i1 %14, i1 false
  br i1 %or.cond7, label %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ba = insertelement <2 x float> %i.az, float %i.l, i64 1
  %i.bb = insertelement <2 x float> poison, float %i.e, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.s, i64 1
  %i.bd = fsub <2 x float> %i.ba, %i.bc
  %i.be = insertelement <2 x float> poison, float %i.p, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %i.i, i64 1
  %i.bg = insertelement <2 x float> poison, float %i.b, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.p, i64 1
  %i.bi = fsub <2 x float> %i.bf, %i.bh
  %i.bj = fsub float %i.ag, %i.p
  %i.bk = fsub float %11, %i.s
  %i.bl = fneg float %i.bk
  %15 = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.bm = insertelement <2 x float> %15, float %i.bl, i64 1
  %i.bn = fmul <2 x float> %i.bi, %i.bm
  %16 = insertelement <2 x float> poison, float %10, i64 0
  %i.bo = insertelement <2 x float> %16, float %i.bj, i64 1
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.bd, <2 x float> %i.bn) ; 2 uses
  %i.bq = extractelement <2 x float> %i.bp, i64 0 ; 2 uses
  %i.br = fcmp ogt float %i.bq, 0.000000e+00
  %or.cond9 = select i1 %i.br, i1 %i.av, i1 false
  %17 = extractelement <2 x float> %i.bp, i64 1   ; 2 uses
  %18 = fcmp ogt float %17, 0.000000e+00
  %or.cond11 = select i1 %or.cond9, i1 %18, i1 false
  %i.bs = fcmp olt float %i.bq, 0.000000e+00
  %or.cond13 = select i1 %i.bs, i1 %13, i1 false
  %19 = fcmp olt float %17, 0.000000e+00
  %20 = select i1 %or.cond13, i1 %19, i1 false
  %21 = select i1 %or.cond11, i1 true, i1 %20
  br label %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit.thread

_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit.thread: ; preds = %bb.f, %bb.d, %bb.b, %bb.e, %bb.c, %bb.a, %bb.g, %bb.j, %bb.i, %bb.h, %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit
  %.1 = phi i1 [ false, %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit ], [ %21, %bb.j ], [ true, %bb.i ], [ true, %bb.h ], [ false, %bb.g ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.f ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2cv7details10Chessboard5Board4Cell5emptyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !163    ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !164
  %i.c = fcmp uno float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !165
  %i.f = fcmp uno float %i.e, 0.000000e+00
  br i1 %i.f, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !166  ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !164
  %i.j = fcmp uno float %i.i, 0.000000e+00
  br i1 %i.j, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !165
  %i.m = fcmp uno float %i.l, 0.000000e+00
  br i1 %i.m, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !167  ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !164
  %i.q = fcmp uno float %i.p, 0.000000e+00
  br i1 %i.q, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !165
  %i.t = fcmp uno float %i.s, 0.000000e+00
  br i1 %i.t, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !168  ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !164
  %i.x = fcmp uno float %i.w, 0.000000e+00
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !165
  %i.aa = fcmp uno float %i.z, 0.000000e+00
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.f, %bb.c, %bb.d, %bb.a, %bb.b
  %.0 = phi i1 [ true, %bb.g ], [ true, %bb.a ], [ true, %bb.c ], [ true, %bb.e ], [ true, %bb.b ], [ true, %bb.d ], [ true, %bb.f ], [ %i.aa, %bb.h ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK2cv7details10Chessboard5Board4Cell6getRowEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %0) local_unnamed_addr #16 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.04 = phi i32 [ 0, %bb.a ], [ %i.c, %bb.b ]    ; 2 uses
  %.0 = phi ptr [ %0, %bb.a ], [ %i.b, %bb.b ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = add nuw nsw i32 %.04, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !6

bb.c:                                             ; preds = %bb.b
  ret i32 %.04
}

; Function Attrs: mustprogress uwtable
define hidden <2 x float> @_ZNK2cv7details10Chessboard5Board4Cell9getCenterEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !163    ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !164 ; 2 uses
  %i.c = fcmp uno float %i.b, 0.000000e+00
  br i1 %i.c, label %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !165 ; 2 uses
  %i.f = fcmp uno float %i.e, 0.000000e+00
  br i1 %i.f, label %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !166  ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !164 ; 2 uses
  %i.j = fcmp uno float %i.i, 0.000000e+00
  br i1 %i.j, label %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.h, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !165 ; 2 uses
  %i.m = fcmp uno float %i.l, 0.000000e+00
  br i1 %i.m, label %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !167  ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !164 ; 2 uses
  %i.q = fcmp uno float %i.p, 0.000000e+00
  br i1 %i.q, label %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %i.o, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !165 ; 2 uses
  %i.t = fcmp uno float %i.s, 0.000000e+00
  br i1 %i.t, label %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !168  ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !164 ; 2 uses
  %i.x = fcmp uno float %i.w, 0.000000e+00
  br i1 %i.x, label %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit.thread, label %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit

_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit: ; preds = %bb.g
  %i.y = getelementptr i8, ptr %i.v, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !165 ; 2 uses
  %i.aa = fcmp uno float %i.z, 0.000000e+00
  br i1 %i.aa, label %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit.thread, label %bb.j

_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit.thread: ; preds = %bb.f, %bb.d, %bb.b, %bb.e, %bb.c, %bb.a, %bb.g, %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %2)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__func__._ZNK2cv7details10Chessboard5Board4Cell9getCenterEv, ptr noundef nonnull @.str.1, i32 noundef 899) #32
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit.thread
  unreachable

bb.i:                                             ; preds = %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit.thread
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %1, align 8, !tbaa !71    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !72
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  resume { ptr, i32 } %i.ab

bb.j:                                             ; preds = %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit
  %i.ah = fadd float %i.b, %i.i
  %i.ai = fadd float %i.e, %i.l
  %i.aj = fadd float %i.ah, %i.w
  %i.ak = fadd float %i.ai, %i.z
  %i.al = fadd float %i.aj, %i.p
  %i.am = fadd float %i.ak, %i.s
  %i.an = fmul float %i.al, 2.500000e-01
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.an, i64 0
  %i.ao = fmul float %i.am, 2.500000e-01
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.ao, i64 1
  ret <2 x float> %.sroa.0.4.vec.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK2cv7details10Chessboard5Board4Cell6getColEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %0) local_unnamed_addr #16 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.04 = phi i32 [ 0, %bb.a ], [ %i.c, %bb.b ]    ; 2 uses
  %.0 = phi ptr [ %0, %bb.a ], [ %i.b, %bb.b ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = add nuw nsw i32 %.04, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !7

bb.c:                                             ; preds = %bb.b
  ret i32 %.04
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2cv7details10Chessboard5Board4CellC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(66) initializes((0, 66)) %0) unnamed_addr #12 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(66) %0, i8 0, i64 66, i1 false)
  ret void
end_hunk_0
