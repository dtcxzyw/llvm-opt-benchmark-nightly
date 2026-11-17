Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dtfilter_cpu?download=true
inline.NumInlined: 1511
inline.NumDeleted: 353
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZNK2cv8ximgproc11DTFilterCPU26ComputeDTandIDTHor_ParBodyINS_3VecIhLi1EEEEclERKNS_5RangeE:bb.a
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %._crit_edge.us, label %bb.b, !llvm.loop !363

._crit_edge.us:                                   ; preds = %bb.b
  %i.bm = load float, ptr %i.w, align 8, !tbaa !206
  %i.bn = fadd float %i.bj, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %wide.trip.count44
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store float %i.bn, ptr %i.bp, align 4, !tbaa !53
  %i.bq = load float, ptr %i.w, align 8, !tbaa !206 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %wide.trip.count44
  store float %i.bq, ptr %i.br, align 4, !tbaa !53
  %indvars.iv.next47 = add nsw i64 %indvars.iv46, 1 ; 2 uses
  %exitcond50.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count49
  br i1 %exitcond50.not, label %._crit_edge37, label %.lr.ph.us, !llvm.loop !364

._crit_edge37:                                    ; preds = %.lr.ph36.split.prol.loopexit, %.lr.ph36.split, %._crit_edge.us, %bb.a
  ret void

.lr.ph36.split:                                   ; preds = %.lr.ph36.split.prol.loopexit, %.lr.ph36.split
  %i.bs = phi float [ %i.ck, %.lr.ph36.split ], [ %.unr, %.lr.ph36.split.prol.loopexit ]
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph36.split ], [ %indvars.iv.unr, %.lr.ph36.split.prol.loopexit ] ; 4 uses
  %i.bt = mul i64 %i.p, %indvars.iv
  %i.bu = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bt ; 2 uses
  %i.bv = mul i64 %i.v, %indvars.iv
  %i.bw = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bu, i64 -4
  store float %i.bs, ptr %i.bx, align 4, !tbaa !53
  store float 0.000000e+00, ptr %i.bw, align 4, !tbaa !53
  %i.by = load float, ptr %i.w, align 8, !tbaa !206
  %i.bz = fadd float %i.by, 0.000000e+00
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store float %i.bz, ptr %i.ca, align 4, !tbaa !53
  %i.cb = load float, ptr %i.w, align 8, !tbaa !206 ; 2 uses
  store float %i.cb, ptr %i.bu, align 4, !tbaa !53
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cc = mul i64 %i.p, %indvars.iv.next
  %i.cd = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cc ; 2 uses
  %i.ce = mul i64 %i.v, %indvars.iv.next
  %i.cf = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cd, i64 -4
  store float %i.cb, ptr %i.cg, align 4, !tbaa !53
  store float 0.000000e+00, ptr %i.cf, align 4, !tbaa !53
  %i.ch = load float, ptr %i.w, align 8, !tbaa !206
  %i.ci = fadd float %i.ch, 0.000000e+00
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store float %i.ci, ptr %i.cj, align 4, !tbaa !53
  %i.ck = load float, ptr %i.w, align 8, !tbaa !206 ; 2 uses
  store float %i.ck, ptr %i.cd, align 4, !tbaa !53
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count49
  br i1 %exitcond.not.1, label %._crit_edge37, label %.lr.ph36.split, !llvm.loop !364
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8ximgproc11DTFilterCPU22ComputeA0DTHor_ParBodyINS_3VecIhLi1EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %2 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv8ximgproc11DTFilterCPU22ComputeA0DTHor_ParBodyINS_3VecIhLi1EEEEE, i64 16), ptr %0, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81, !nonnull !70, !align !71
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 872 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !78
  store i32 16842752, ptr %1, align 8, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.c, ptr %i.f, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.h, align 8
  store i32 33619968, ptr %2, align 8, !tbaa !79
  store ptr %i.c, ptr %i.g, align 8, !tbaa !42
  invoke void @_ZN2cv3expERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN2cv8ximgproc11DTFilterCPU22ComputeA0DTHor_ParBodyINS_3VecIhLi1EEEED2Ev.exit unwind label %bb.b, !inline_history !82

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #22, !inline_history !82
  unreachable

_ZN2cv8ximgproc11DTFilterCPU22ComputeA0DTHor_ParBodyINS_3VecIhLi1EEEED2Ev.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(28) %0) #20, !inline_history !82
  call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv8ximgproc11DTFilterCPU22ComputeA0DTHor_ParBodyINS_3VecIhLi1EEEEclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !158    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !159  ; 2 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph19, label %._crit_edge20.split

.lr.ph19:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73, !nonnull !70, !align !71 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !209  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.j = load i64, ptr %i.i, align 8, !tbaa !54   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !81, !nonnull !70, !align !71 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 896
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !209  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1000
  %i.p = load i64, ptr %i.o, align 8, !tbaa !54   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !51   ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  %i.t = getelementptr i8, ptr %i.l, i64 20       ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge20.split

.lr.ph.preheader:                                 ; preds = %.lr.ph19
  %i.w = add nsw i32 %i.r, -1
  %i.x = sext i32 %i.a to i64                     ; 3 uses
  %wide.trip.count25 = sext i32 %i.c to i64       ; 2 uses
  %wide.trip.count = zext i32 %i.w to i64         ; 5 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.y = add nsw i64 %wide.trip.count25, -1       ; 2 uses
  %i.z = mul i64 %i.j, %i.y
  %i.aa = getelementptr i8, ptr %i.h, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 %wide.trip.count
  %scevgep41 = getelementptr i8, ptr %i.ab, i64 1
  %i.ac = mul i64 %i.j, %i.x
  %scevgep42 = getelementptr i8, ptr %i.h, i64 %i.ac
  %scevgep43 = getelementptr i8, ptr %i.l, i64 28
  %i.ad = mul i64 %i.p, %i.y
  %i.ae = shl nuw nsw i64 %wide.trip.count, 2
  %i.af = getelementptr i8, ptr %i.n, i64 %i.ad
  %scevgep44 = getelementptr i8, ptr %i.af, i64 %i.ae ; 3 uses
  %i.ag = mul i64 %i.p, %i.x
  %scevgep45 = getelementptr i8, ptr %i.n, i64 %i.ag ; 3 uses
  %min.iters.check = icmp ult i32 %i.r, 5
  %bound0 = icmp ult ptr %scevgep45, %scevgep43
  %bound1 = icmp ult ptr %i.t, %scevgep44
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.p, 0
  %i.ah = or i1 %found.conflict, %stride.check
  %bound046 = icmp ult ptr %scevgep45, %scevgep41
  %bound147 = icmp ult ptr %scevgep42, %scevgep44
  %found.conflict48 = and i1 %bound046, %bound147
  %stride.check49 = icmp slt i64 %i.j, 0
  %i.ai = or i1 %found.conflict48, %stride.check49
  %conflict.rdx = or i1 %i.ah, %i.ai
  %bound050 = icmp ult ptr %scevgep45, %scevgep
  %bound151 = icmp ult ptr %i.v, %scevgep44
  %found.conflict52 = and i1 %bound050, %bound151
  %conflict.rdx53 = or i1 %conflict.rdx, %found.conflict52
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

._crit_edge20.split:                              ; preds = %._crit_edge, %.lr.ph19, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv22 = phi i64 [ %i.x, %.lr.ph.preheader ], [ %indvars.iv.next23, %._crit_edge ] ; 3 uses
  %i.aj = mul i64 %i.j, %indvars.iv22
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aj ; 3 uses
  %i.al = mul i64 %i.p, %indvars.iv22
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.al ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx53
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.an = load float, ptr %i.t, align 4, !tbaa !156, !alias.scope !373
  %i.ao = load float, ptr %i.u, align 8, !tbaa !211, !alias.scope !373
  %i.ap = fdiv float %i.an, %i.ao
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ap, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aq = load float, ptr %i.v, align 8, !tbaa !207, !alias.scope !374
  %broadcast.splatinsert55 = insertelement <4 x float> poison, float %i.aq, i64 0
  %broadcast.splat56 = shufflevector <4 x float> %broadcast.splatinsert55, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %wide.load = load <4 x i8>, ptr %i.ar, align 1, !tbaa !48, !alias.scope !375
  %i.au = uitofp <4 x i8> %wide.load to <4 x float>
  %wide.load54 = load <4 x i8>, ptr %i.at, align 1, !tbaa !48, !alias.scope !375
  %i.av = uitofp <4 x i8> %wide.load54 to <4 x float>
  %i.aw = fsub nnan <4 x float> %i.au, %i.av
  %i.ax = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.aw)
  %i.ay = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.ax, <4 x float> splat (float 1.000000e+00))
  %i.az = fmul <4 x float> %broadcast.splat56, %i.ay
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %index
  store <4 x float> %i.az, ptr %i.ba, align 4, !tbaa !53, !alias.scope !376, !noalias !377
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !370

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, 1 ; 2 uses
  %exitcond26.not = icmp eq i64 %indvars.iv.next23, %wide.trip.count25
  br i1 %exitcond26.not, label %._crit_edge20.split, label %.lr.ph, !llvm.loop !371

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bd = load float, ptr %i.t, align 4, !tbaa !156
  %i.be = load float, ptr %i.u, align 8, !tbaa !211
  %i.bf = fdiv float %i.bd, %i.be
  %i.bg = load <2 x i8>, ptr %i.bc, align 1, !tbaa !48
  %i.bh = uitofp <2 x i8> %i.bg to <2 x float>    ; 2 uses
  %shift = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub nnan <2 x float> %i.bh, %shift
  %i.bi = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bj = tail call noundef float @llvm.fabs.f32(float %i.bi)
  %i.bk = tail call noundef float @llvm.fmuladd.f32(float %i.bf, float %i.bj, float 1.000000e+00)
  %i.bl = load float, ptr %i.v, align 8, !tbaa !207
  %i.bm = fmul float %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv
  store float %i.bm, ptr %i.bn, align 4, !tbaa !53
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !372
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @logf(float noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8ximgproc11DTFilterCPU23ComputeA0DTVert_ParBodyINS_3VecIhLi1EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %2 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv8ximgproc11DTFilterCPU23ComputeA0DTVert_ParBodyINS_3VecIhLi1EEEEE, i64 16), ptr %0, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76, !nonnull !70, !align !71
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1080 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !78
  store i32 16842752, ptr %1, align 8, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.c, ptr %i.f, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.h, align 8
  store i32 33619968, ptr %2, align 8, !tbaa !79
  store ptr %i.c, ptr %i.g, align 8, !tbaa !42
  invoke void @_ZN2cv3expERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN2cv8ximgproc11DTFilterCPU23ComputeA0DTVert_ParBodyINS_3VecIhLi1EEEED2Ev.exit unwind label %bb.b, !inline_history !80

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #22, !inline_history !80
  unreachable

_ZN2cv8ximgproc11DTFilterCPU23ComputeA0DTVert_ParBodyINS_3VecIhLi1EEEED2Ev.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(28) %0) #20, !inline_history !80
  call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv8ximgproc11DTFilterCPU23ComputeA0DTVert_ParBodyINS_3VecIhLi1EEEEclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !158    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !159  ; 2 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph19, label %._crit_edge.split

.lr.ph19:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76, !nonnull !70, !align !71 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !209  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1208
  %i.j = load i64, ptr %i.i, align 8, !tbaa !54   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !75, !nonnull !70, !align !71 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !209  ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.p = load i64, ptr %i.o, align 8, !tbaa !54   ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !51   ; 3 uses
  %i.s = icmp sgt i32 %i.r, 0
  %i.t = getelementptr i8, ptr %i.f, i64 20       ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %.lr.ph19
  %i.w = sext i32 %i.a to i64                     ; 4 uses
  %wide.trip.count24 = sext i32 %i.c to i64       ; 3 uses
  %wide.trip.count = zext nneg i32 %i.r to i64    ; 6 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = add nsw i64 %wide.trip.count24, -1       ; 2 uses
  %i.y = mul i64 %i.p, %i.x
  %i.z = getelementptr i8, ptr %i.n, i64 %i.y
  %scevgep47 = getelementptr i8, ptr %i.z, i64 %wide.trip.count
  %i.aa = mul i64 %i.p, %i.w
  %scevgep48 = getelementptr i8, ptr %i.n, i64 %i.aa
  %i.ab = mul i64 %i.p, %wide.trip.count24
  %i.ac = getelementptr i8, ptr %i.n, i64 %i.ab
  %scevgep49 = getelementptr i8, ptr %i.ac, i64 %wide.trip.count
  %i.ad = add nsw i64 %i.w, 1
  %i.ae = mul i64 %i.p, %i.ad
  %scevgep50 = getelementptr i8, ptr %i.n, i64 %i.ae
  %scevgep51 = getelementptr i8, ptr %i.f, i64 28
  %i.af = mul i64 %i.j, %i.x
  %i.ag = shl nuw nsw i64 %wide.trip.count, 2
  %i.ah = getelementptr i8, ptr %i.h, i64 %i.af
  %scevgep52 = getelementptr i8, ptr %i.ah, i64 %i.ag ; 4 uses
  %i.ai = mul i64 %i.j, %i.w
  %scevgep53 = getelementptr i8, ptr %i.h, i64 %i.ai ; 4 uses
  %min.iters.check = icmp ult i32 %i.r, 4
  %bound0 = icmp ult ptr %scevgep53, %scevgep51
  %bound1 = icmp ult ptr %i.t, %scevgep52
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.j, 0
  %i.aj = or i1 %found.conflict, %stride.check
  %bound054 = icmp ult ptr %scevgep53, %scevgep49
  %bound155 = icmp ult ptr %scevgep50, %scevgep52
  %found.conflict56 = and i1 %bound054, %bound155
  %stride.check57 = icmp slt i64 %i.p, 0
  %i.ak = or i1 %found.conflict56, %stride.check57
  %conflict.rdx = or i1 %i.aj, %i.ak
  %bound058 = icmp ult ptr %scevgep53, %scevgep47
  %bound159 = icmp ult ptr %scevgep48, %scevgep52
  %found.conflict60 = and i1 %bound058, %bound159
  %conflict.rdx61 = or i1 %conflict.rdx, %found.conflict60
  %bound062 = icmp ult ptr %scevgep53, %scevgep
  %bound163 = icmp ult ptr %i.v, %scevgep52
  %found.conflict64 = and i1 %bound062, %bound163
  %conflict.rdx65 = or i1 %conflict.rdx61, %found.conflict64
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

..loopexit_crit_edge:                             ; preds = %scalar.ph, %middle.block
  %exitcond25.not = icmp eq i64 %indvars.iv.next22, %wide.trip.count24
  br i1 %exitcond25.not, label %._crit_edge.split, label %.lr.ph, !llvm.loop !378

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.lr.ph19, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %indvars.iv21 = phi i64 [ %i.w, %.lr.ph.preheader ], [ %indvars.iv.next22, %..loopexit_crit_edge ] ; 3 uses
  %i.al = mul i64 %i.j, %indvars.iv21
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.al ; 2 uses
  %i.an = mul i64 %i.p, %indvars.iv21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.an ; 2 uses
  %indvars.iv.next22 = add nsw i64 %indvars.iv21, 1 ; 3 uses
  %i.ap = mul i64 %i.p, %indvars.iv.next22
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ap ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx65
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.ar = load float, ptr %i.t, align 4, !tbaa !156, !alias.scope !387
  %i.as = load float, ptr %i.u, align 8, !tbaa !211, !alias.scope !387
  %i.at = fdiv float %i.ar, %i.as
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.at, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.au = load float, ptr %i.v, align 8, !tbaa !208, !alias.scope !388
  %broadcast.splatinsert67 = insertelement <4 x float> poison, float %i.au, i64 0
  %broadcast.splat68 = shufflevector <4 x float> %broadcast.splatinsert67, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %index
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index
  %wide.load = load <4 x i8>, ptr %i.av, align 1, !tbaa !48, !alias.scope !389
  %i.ax = uitofp <4 x i8> %wide.load to <4 x float>
  %wide.load66 = load <4 x i8>, ptr %i.aw, align 1, !tbaa !48, !alias.scope !390
  %i.ay = uitofp <4 x i8> %wide.load66 to <4 x float>
  %i.az = fsub nnan <4 x float> %i.ax, %i.ay
  %i.ba = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.az)
  %i.bb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.ba, <4 x float> splat (float 1.000000e+00))
  %i.bc = fmul <4 x float> %broadcast.splat68, %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %index
  store <4 x float> %i.bc, ptr %i.bd, align 4, !tbaa !53, !alias.scope !391, !noalias !392
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !385

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv
  %i.bh = load float, ptr %i.t, align 4, !tbaa !156
  %i.bi = load float, ptr %i.u, align 8, !tbaa !211
  %i.bj = fdiv float %i.bh, %i.bi
  %i.bk = load i8, ptr %i.bf, align 1, !tbaa !48
  %i.bl = uitofp i8 %i.bk to float
  %i.bm = load i8, ptr %i.bg, align 1, !tbaa !48
  %i.bn = uitofp i8 %i.bm to float
  %i.bo = fsub nnan float %i.bl, %i.bn
  %i.bp = tail call noundef float @llvm.fabs.f32(float %i.bo)
  %i.bq = tail call noundef float @llvm.fmuladd.f32(float %i.bj, float %i.bp, float 1.000000e+00)
  %i.br = load float, ptr %i.v, align 8, !tbaa !208
  %i.bs = fmul float %i.br, %i.bq
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv
  store float %i.bs, ptr %i.bt, align 4, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %scalar.ph, !llvm.loop !386
}

declare void @_ZN2cv3expERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv8ximgproc11DTFilterCPU26ComputeDTandIDTHor_ParBodyINS_3VecIfLi1EEEEC2ERS1_RNS_3MatES8_S8_(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(1708) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::Range", align 8         ; 4 uses
  %6 = alloca %"class.cv::Range", align 8         ; 4 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::Range", align 8         ; 4 uses
  %9 = alloca %"class.cv::Range", align 8         ; 4 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv8ximgproc11DTFilterCPU26ComputeDTandIDTHor_ParBodyINS_3VecIfLi1EEEEE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %2, ptr %i.b, align 8, !tbaa !59
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %3, ptr %i.c, align 8, !tbaa !59
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %4, ptr %i.d, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !51   ; 2 uses
  %i.i = add nsw i32 %i.h, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20, !noalias !401
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef %i.f, i32 noundef %i.i, i32 noundef 5)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.a
  %i.j = add nsw i32 %i.h, 1
  %.sroa.2.0.insert.ext.i = zext i32 %i.j to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !401
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !401
  store i64 9223372034707292160, ptr %8, align 8, !noalias !402
  store i64 %.sroa.0.0.insert.insert.i, ptr %9, align 8, !noalias !402
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %9)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20, !noalias !401
  br label %.body

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !401
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !401
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20, !noalias !401
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !214, !nonnull !70, !align !71
  %i.m = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.l, ptr noundef nonnull align 8 dereferenceable(208) %11)
          to label %bb.d unwind label %bb.j       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !84, !nonnull !70, !align !71 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !50
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !51
  %i.s = add nsw i32 %i.r, 1                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20, !noalias !403
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef %i.p, i32 noundef %i.s, i32 noundef 5)
          to label %.noexc17 unwind label %bb.k

.noexc17:                                         ; preds = %bb.d
  %.sroa.2.0.insert.ext.i14 = zext i32 %i.s to i64
  %.sroa.2.0.insert.shift.i15 = shl nuw i64 %.sroa.2.0.insert.ext.i14, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !403
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !403
  store i64 9223372034707292160, ptr %5, align 8, !noalias !404
  store i64 %.sroa.2.0.insert.shift.i15, ptr %6, align 8, !noalias !404
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %6)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.noexc17
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20, !noalias !403
  br label %.body18

bb.f:                                             ; preds = %.noexc17
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !403
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !403
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20, !noalias !403
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !215, !nonnull !70, !align !71
  %i.v = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.u, ptr noundef nonnull align 8 dereferenceable(208) %12)
          to label %bb.g unwind label %bb.l       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !405, !nonnull !70, !align !71 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  %i.y = load float, ptr %i.x, align 4, !tbaa !156
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 1704
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !52  ; 2 uses
  %i.ab = add nsw i32 %i.aa, -1
  %ldexp.i.i = call double @ldexp(double 1.000000e+00, i32 %i.ab)
  %i.ac = sitofp i32 %i.aa to double
  %mul.i.i = fmul nnan double %i.ac, 2.000000e+00
  %exp2.i.i21 = invoke double @exp2(double %mul.i.i)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ad = fpext float %i.y to double
  %i.ae = fmul double %ldexp.i.i, %i.ad
  %i.af = fadd double %exp2.i.i21, -1.000000e+00
  %i.ag = call double @sqrt(double noundef %i.af) #20
  %i.ah = fdiv double %i.ae, %i.ag
  %i.ai = fmul double %i.ah, 3.000000e+00
  %i.aj = fptrunc double %i.ai to float
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.aj, ptr %i.ak, align 8, !tbaa !216
  ret void

bb.i:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #20
  br label %.body

.body:                                            ; preds = %bb.i, %bb.b, %bb.j
  %.pn = phi { ptr, i32 } [ %i.am, %bb.j ], [ %i.al, %bb.i ], [ %i.k, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.n

bb.k:                                             ; preds = %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body18

bb.l:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #20
  br label %.body18

.body18:                                          ; preds = %bb.k, %bb.e, %bb.l
  %.pn10 = phi { ptr, i32 } [ %i.ao, %bb.l ], [ %i.an, %bb.k ], [ %i.t, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.body18, %.body
  %.pn12 = phi { ptr, i32 } [ %i.ap, %bb.m ], [ %.pn10, %.body18 ], [ %.pn, %.body ]
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #20
  resume { ptr, i32 } %.pn12
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv8ximgproc11DTFilterCPU22ComputeA0DTHor_ParBodyINS_3VecIfLi1EEEEC2ERS1_RNS_3MatE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1708) %1, ptr noundef nonnull align 8 dereferenceable(208) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv8ximgproc11DTFilterCPU22ComputeA0DTHor_ParBodyINS_3VecIfLi1EEEEE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !59
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 872
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !51
  %i.h = add nsw i32 %i.g, -1
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.c, i32 noundef %i.e, i32 noundef %i.h, i32 noundef 5)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !91, !nonnull !70, !align !71 ; 2 uses
end_hunk_0
