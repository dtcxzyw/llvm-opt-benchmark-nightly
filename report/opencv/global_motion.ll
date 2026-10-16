Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/global_motion?download=true
inline.NumInlined: 998
inline.NumDeleted: 361
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN2cv9videostab28KeypointBasedMotionEstimatorD2Ev:bb.a
  %i.dd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i19 = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i19, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.de = add nsw i32 %i.cv, -1
  store i32 %i.de, ptr %i.cs, align 8, !tbaa !59
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20

bb.ad:                                            ; preds = %bb.ab
  %i.df = atomicrmw volatile add ptr %i.cs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i21 = phi i32 [ %i.cv, %bb.ac ], [ %i.df, %bb.ad ]
  %i.dg = icmp eq i32 %.0.i.i.i.i21, 1
  br i1 %i.dg, label %bb.ae, label %_ZNSt12__shared_ptrIN2cv9videostab19MotionEstimatorBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !100

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #24
  br label %_ZNSt12__shared_ptrIN2cv9videostab19MotionEstimatorBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv9videostab19MotionEstimatorBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN2cv9Feature2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20, %bb.ae
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv9videostab28KeypointBasedMotionEstimatorD0Ev(ptr noundef nonnull align 8 dereferenceable(432) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN2cv9videostab28KeypointBasedMotionEstimatorD2Ev(ptr noundef nonnull align 8 dead_on_return(432) dereferenceable(432) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 432) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv9videostab28KeypointBasedMotionEstimator14setMotionModelENS0_11MotionModelE(ptr noundef nonnull align 8 dereferenceable(432) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(12) %i.b, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv9videostab28KeypointBasedMotionEstimator11motionModelEv(ptr noundef nonnull align 8 dereferenceable(432) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(12) %i.b)
  ret i32 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv9videostab28KeypointBasedMotionEstimator12setFrameMaskERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !330
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23, !noalias !330
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.e, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.e:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.g
}

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cv9videostabL15normalizePointsEiPNS_6Point_IfEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %4 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge66

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.b = icmp ult i32 %1, 8
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.lr.ph

.lr.ph65.preheader.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph65.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph65.preheader.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %.lr.ph65.preheader.unr-lcssa ]
  %.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.aq, %.lr.ph65.preheader.unr-lcssa ]
  %lcmp.mod98 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod98)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %i.c = phi <2 x float> [ %.epil.init, %.lr.ph.epil.preheader ], [ %i.f, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.e = load <2 x float>, ptr %i.d, align 4, !tbaa !49
  %i.f = fadd <2 x float> %i.c, %i.e              ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph65.preheader, label %.lr.ph.epil, !llvm.loop !331

.lr.ph65.preheader:                               ; preds = %.lr.ph.epil, %.lr.ph65.preheader.unr-lcssa
  %.lcssa96 = phi <2 x float> [ %i.aq, %.lr.ph65.preheader.unr-lcssa ], [ %i.f, %.lr.ph.epil ]
  %i.g = uitofp nneg i32 %1 to float              ; 2 uses
  %i.h = insertelement <2 x float> poison, float %i.g, i64 0
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.j = fdiv <2 x float> %.lcssa96, %i.i         ; 7 uses
  %xtraiter99 = and i64 %wide.trip.count, 1
  %i.k = icmp eq i32 %1, 1
  br i1 %i.k, label %.lr.ph65.epil.preheader, label %.lr.ph65.preheader.new

.lr.ph65.preheader.new:                           ; preds = %.lr.ph65.preheader
  %unroll_iter104 = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph65

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 9 uses
  %i.l = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.aq, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.n = load <2 x float>, ptr %i.m, align 4, !tbaa !49
  %i.o = fadd <2 x float> %i.l, %i.n
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 4, !tbaa !49
  %i.s = fadd <2 x float> %i.o, %i.r
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load <2 x float>, ptr %i.u, align 4, !tbaa !49
  %i.w = fadd <2 x float> %i.s, %i.v
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load <2 x float>, ptr %i.y, align 4, !tbaa !49
  %i.aa = fadd <2 x float> %i.w, %i.z
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load <2 x float>, ptr %i.ac, align 4, !tbaa !49
  %i.ae = fadd <2 x float> %i.aa, %i.ad
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load <2 x float>, ptr %i.ag, align 4, !tbaa !49
  %i.ai = fadd <2 x float> %i.ae, %i.ah
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = load <2 x float>, ptr %i.ak, align 4, !tbaa !49
  %i.am = fadd <2 x float> %i.ai, %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load <2 x float>, ptr %i.ao, align 4, !tbaa !49
  %i.aq = fadd <2 x float> %i.am, %i.ap           ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph65.preheader.unr-lcssa, label %.lr.ph, !llvm.loop !332

._crit_edge66:                                    ; preds = %bb.a
  %i.ar = sitofp i32 %1 to float                  ; 2 uses
  %5 = insertelement <2 x float> poison, float %i.ar, i64 0
  %6 = fdiv <2 x float> <float 0.000000e+00, float poison>, %5 ; 2 uses
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.as = insertelement <2 x float> %7, float %i.ar, i64 0
  %i.at = fdiv <2 x float> <float 0.000000e+00, float f0x3FB504F3>, %i.as
  %8 = extractelement <2 x float> %6, i64 0
  br label %._crit_edge71

.lr.ph70.preheader.unr-lcssa:                     ; preds = %.lr.ph65
  %lcmp.mod101.not = icmp eq i64 %xtraiter99, 0
  br i1 %lcmp.mod101.not, label %.lr.ph70.preheader, label %.lr.ph65.epil.preheader

.lr.ph65.epil.preheader:                          ; preds = %.lr.ph70.preheader.unr-lcssa, %.lr.ph65.preheader
  %indvars.iv75.epil.init = phi i64 [ 0, %.lr.ph65.preheader ], [ %indvars.iv.next76.1, %.lr.ph70.preheader.unr-lcssa ]
  %.04962.epil.init = phi float [ 0.000000e+00, %.lr.ph65.preheader ], [ %i.bz, %.lr.ph70.preheader.unr-lcssa ]
  %lcmp.mod103 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod103)
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv75.epil.init ; 2 uses
  %i.av = load <2 x float>, ptr %i.au, align 4, !tbaa !49
  %i.aw = fsub <2 x float> %i.av, %i.j            ; 3 uses
  store <2 x float> %i.aw, ptr %i.au, align 4, !tbaa !49
  %i.ax = fmul <2 x float> %i.aw, %i.aw
  %i.ay = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ax)
  %i.az = tail call noundef float @sqrtf(float noundef %i.ay) #24
  %i.ba = fadd float %.04962.epil.init, %i.az
  br label %.lr.ph70.preheader

.lr.ph70.preheader:                               ; preds = %.lr.ph70.preheader.unr-lcssa, %.lr.ph65.epil.preheader
  %.lcssa95 = phi float [ %i.bz, %.lr.ph70.preheader.unr-lcssa ], [ %i.ba, %.lr.ph65.epil.preheader ]
  %i.bb = fdiv float %.lcssa95, %i.g
  %i.bc = fdiv float f0x3FB504F3, %i.bb           ; 4 uses
  %wide.trip.count83 = zext nneg i32 %1 to i64
  %min.iters.check = icmp eq i32 %1, 1
  br i1 %min.iters.check, label %.lr.ph70.preheader93, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph70.preheader
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bd = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %wide.vec = load <4 x float>, ptr %i.be, align 4, !tbaa !49
  %interleaved.vec = fmul <4 x float> %i.bd, %wide.vec
  store <4 x float> %interleaved.vec, ptr %i.be, align 4, !tbaa !49
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !333

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %i.bg = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bh = insertelement <2 x float> %i.bg, float %i.bc, i64 1
  %i.bi = extractelement <2 x float> %i.j, i64 0
  br i1 %cmp.n, label %._crit_edge71, label %.lr.ph70.preheader93

.lr.ph70.preheader93:                             ; preds = %.lr.ph70.preheader, %middle.block
  %indvars.iv80.ph = phi i64 [ 0, %.lr.ph70.preheader ], [ %n.vec, %middle.block ]
  %i.bj = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph70

.lr.ph65:                                         ; preds = %.lr.ph65, %.lr.ph65.preheader.new
  %indvars.iv75 = phi i64 [ 0, %.lr.ph65.preheader.new ], [ %indvars.iv.next76.1, %.lr.ph65 ] ; 3 uses
  %.04962 = phi float [ 0.000000e+00, %.lr.ph65.preheader.new ], [ %i.bz, %.lr.ph65 ]
  %niter105 = phi i64 [ 0, %.lr.ph65.preheader.new ], [ %niter105.next.1, %.lr.ph65 ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv75 ; 2 uses
  %i.bm = load <2 x float>, ptr %i.bl, align 4, !tbaa !49
  %i.bn = fsub <2 x float> %i.bm, %i.j            ; 3 uses
  store <2 x float> %i.bn, ptr %i.bl, align 4, !tbaa !49
  %i.bo = fmul <2 x float> %i.bn, %i.bn
  %i.bp = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bo)
  %i.bq = tail call noundef float @sqrtf(float noundef %i.bp) #24
  %i.br = fadd float %.04962, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv75
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bu = load <2 x float>, ptr %i.bt, align 4, !tbaa !49
  %i.bv = fsub <2 x float> %i.bu, %i.j            ; 3 uses
  store <2 x float> %i.bv, ptr %i.bt, align 4, !tbaa !49
  %i.bw = fmul <2 x float> %i.bv, %i.bv
  %i.bx = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bw)
  %i.by = tail call noundef float @sqrtf(float noundef %i.bx) #24
  %i.bz = fadd float %i.br, %i.by                 ; 3 uses
  %indvars.iv.next76.1 = add nuw nsw i64 %indvars.iv75, 2 ; 2 uses
  %niter105.next.1 = add i64 %niter105, 2         ; 2 uses
  %niter105.ncmp.1 = icmp eq i64 %niter105.next.1, %unroll_iter104
  br i1 %niter105.ncmp.1, label %.lr.ph70.preheader.unr-lcssa, label %.lr.ph65, !llvm.loop !334

._crit_edge71.loopexit:                           ; preds = %.lr.ph70
  %i.ca = extractelement <2 x float> %i.j, i64 0
  %i.cb = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cc = insertelement <2 x float> %i.cb, float %i.bc, i64 1
  br label %._crit_edge71

._crit_edge71:                                    ; preds = %._crit_edge71.loopexit, %middle.block, %._crit_edge66
  %i.cd = phi float [ %8, %._crit_edge66 ], [ %i.bi, %middle.block ], [ %i.ca, %._crit_edge71.loopexit ]
  %i.ce = phi <2 x float> [ %i.at, %._crit_edge66 ], [ %i.bh, %middle.block ], [ %i.cc, %._crit_edge71.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN2cv3Mat3eyeEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %4, i32 noundef 3, i32 noundef 3, i32 noundef 5)
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #24
  %i.cf = load i32, ptr %0, align 8, !tbaa !54
  %i.cg = and i32 %i.cf, -4096
  %i.ch = or disjoint i32 %i.cg, 5
  store i32 %i.ch, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %3) #24
  %i.ci = load ptr, ptr %4, align 8, !tbaa !44, !noalias !338 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !46
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  invoke void %i.cl(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull align 8 dereferenceable(688) %4, ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge71
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_ZNK2cv7MatExprcvNS_3MatEEv.exit.i:               ; preds = %._crit_edge71
  %i.cn = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IfEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.d unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.co, %bb.c ], [ %i.cm, %bb.b ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #24
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn.i

.lr.ph70:                                         ; preds = %.lr.ph70.preheader93, %.lr.ph70
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %.lr.ph70 ], [ %indvars.iv80.ph, %.lr.ph70.preheader93 ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv80 ; 2 uses
  %i.cq = load <2 x float>, ptr %i.cp, align 4, !tbaa !49
  %i.cr = fmul <2 x float> %i.bk, %i.cq
  store <2 x float> %i.cr, ptr %i.cp, align 4, !tbaa !49
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %._crit_edge71.loopexit, label %.lr.ph70, !llvm.loop !337

bb.d:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cs) #24
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ct) #24
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cu) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !47
  %i.cx = icmp slt i32 %i.cw, 2                   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !30 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8
  %.sink.idx.i = select i1 %i.cx, i64 0, i64 %i.db
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.sink.idx.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.sink.i, i64 4
  %i.dd = extractelement <2 x float> %i.ce, i64 1 ; 4 uses
  store float %i.dd, ptr %i.dc, align 4, !tbaa !49
  store float %i.dd, ptr %i.cz, align 4, !tbaa !49
  %i.de = fneg float %i.cd
  %i.df = fmul float %i.dd, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store float %i.df, ptr %i.dg, align 4, !tbaa !49
  %i.dh = extractelement <2 x float> %i.ce, i64 0
  %i.di = fneg float %i.dh
  %i.dj = fmul float %i.dd, %i.di
  %i.dk = load i64, ptr %i.da, align 8
  %.sink.idx.i56 = select i1 %i.cx, i64 0, i64 %i.dk
  %.sink.i57 = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.sink.idx.i56
  %i.dl = getelementptr inbounds nuw i8, ptr %.sink.i57, i64 8
  store float %i.dj, ptr %i.dl, align 4, !tbaa !49
  ret void
}

declare noundef zeroext i1 @_ZN2cv5solveERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare noundef double @_ZN2cv4normERKNS_11_InputArrayES2_iS2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv11_InputArrayC1ERKNS_7MatExprE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(688)) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #12

declare void @_ZN2cvmlERKNS_7MatExprERKNS_3MatE(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(688), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IfEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load i32, ptr %0, align 8, !tbaa !54
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 5
  store i32 %i.d, ptr %0, align 8, !tbaa !54
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.f = and i32 %i.e, 4095
  %i.g = icmp eq i32 %i.f, 5
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %i.e, 31
  %i.j = icmp eq i32 %i.i, 5
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !47
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 1, i32 noundef %i.l, ptr noundef null)
  %i.m = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.n

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.p, align 8
  store i32 -2113863675, ptr %3, align 8, !tbaa !57
  store ptr %0, ptr %i.o, align 8, !tbaa !23
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 5, double noundef 1.000000e+00, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.d, %bb.b
  ret ptr %0
}

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #2

declare void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv3SVDD2Ev(ptr noundef nonnull align 8 dead_on_return(624) dereferenceable(624) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #24
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #24
  ret void
}

declare noundef nonnull align 8 dereferenceable(624) ptr @_ZN2cv3SVDclERKNS_11_InputArrayEi(ptr noundef nonnull align 8 dereferenceable(624), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #2

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
end_hunk_0
