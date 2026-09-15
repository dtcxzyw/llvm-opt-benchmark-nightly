Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/fundam?download=true
inline.NumInlined: 902
inline.NumDeleted: 269
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZNK2cv27HomographyEstimatorCallback9runKernelERKNS_11_InputArrayES3_RKNS_12_OutputArrayE:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv27HomographyEstimatorCallback12computeErrorERKNS_11_InputArrayES3_S3_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !343
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19, !noalias !343
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.e = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.f = icmp eq i32 %i.e, 65536
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19, !noalias !344
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %i.h)
          to label %_ZNK2cv11_InputArray6getMatEi.exit54 unwind label %bb.l

bb.e:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit54 unwind label %bb.l

_ZNK2cv11_InputArray6getMatEi.exit54:             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.i = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc55 unwind label %bb.m

.noexc55:                                         ; preds = %_ZNK2cv11_InputArray6getMatEi.exit54
  %i.j = icmp eq i32 %i.i, 65536
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc55
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19, !noalias !345
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %i.l)
          to label %_ZNK2cv11_InputArray6getMatEi.exit58 unwind label %bb.m

bb.g:                                             ; preds = %.noexc55
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit58 unwind label %bb.m

_ZNK2cv11_InputArray6getMatEi.exit58:             ; preds = %bb.f, %bb.g
  %i.m = invoke noundef i32 @_ZNK2cv3Mat11checkVectorEiib(ptr noundef nonnull align 8 dereferenceable(208) %5, i32 noundef 2, i32 noundef -1, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.n       ; 4 uses

bb.h:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit58
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !59   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !59   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load <4 x double>, ptr %i.s, align 8, !tbaa !66 ; 3 uses
  %i.v = shufflevector <4 x double> %i.u, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.w = fptrunc <2 x double> %i.v to <2 x float> ; 3 uses
  %i.x = load <2 x double>, ptr %i.t, align 8, !tbaa !66
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.z = shufflevector <4 x double> %i.u, <4 x double> %i.y, <2 x i32> <i32 1, i32 4>
  %i.aa = fptrunc <2 x double> %i.z to <2 x float> ; 3 uses
  %i.ab = shufflevector <4 x double> %i.u, <4 x double> %i.y, <2 x i32> <i32 2, i32 5>
  %i.ac = fptrunc <2 x double> %i.ab to <2 x float> ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !66
  %i.af = fptrunc double %i.ae to float           ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !66
  %i.ai = fptrunc double %i.ah to float           ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !66
  %i.al = fptrunc double %i.ak to float           ; 2 uses
  invoke void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.m, i32 noundef 1, i32 noundef 5, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.am = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.noexc59 unwind label %bb.p

.noexc59:                                         ; preds = %bb.i
  %i.an = icmp eq i32 %i.am, 65536
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc59
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !19, !noalias !346
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %i.ap)
          to label %_ZNK2cv11_InputArray6getMatEi.exit62 unwind label %bb.p

bb.k:                                             ; preds = %.noexc59
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit62 unwind label %bb.p

_ZNK2cv11_InputArray6getMatEi.exit62:             ; preds = %bb.j, %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !59 ; 5 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.as = icmp sgt i32 %i.m, 0
  br i1 %i.as, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK2cv11_InputArray6getMatEi.exit62
  %wide.trip.count = zext nneg i32 %i.m to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.m, 4
  br i1 %min.iters.check, label %.lr.ph.preheader90, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.at = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep = getelementptr i8, ptr %i.ar, i64 %i.at ; 2 uses
  %i.au = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.o, i64 %i.au
  %scevgep66 = getelementptr i8, ptr %i.q, i64 %i.au
  %bound0 = icmp ult ptr %i.ar, %scevgep65
  %bound1 = icmp ult ptr %i.o, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound067 = icmp ult ptr %i.ar, %scevgep66
  %bound168 = icmp ult ptr %i.q, %scevgep
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx = or i1 %found.conflict, %found.conflict69
  br i1 %conflict.rdx, label %.lr.ph.preheader90, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ai, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert70 = insertelement <4 x float> poison, float %i.af, i64 0
  %broadcast.splat71 = shufflevector <4 x float> %broadcast.splatinsert70, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert72 = insertelement <4 x float> poison, float %i.al, i64 0
  %broadcast.splat73 = shufflevector <4 x float> %broadcast.splatinsert72, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat75 = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat77 = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat79 = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat81 = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat83 = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat85 = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index
  %wide.vec = load <8 x float>, ptr %i.av, align 4, !tbaa !68, !alias.scope !347 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec86 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.aw = fmul <4 x float> %strided.vec86, %broadcast.splat
  %i.ax = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat71, <4 x float> %strided.vec, <4 x float> %i.aw)
  %i.ay = fadd <4 x float> %i.ax, %broadcast.splat73
  %i.az = fdiv <4 x float> splat (float 1.000000e+00), %i.ay ; 2 uses
  %i.ba = fmul <4 x float> %strided.vec86, %broadcast.splat75
  %i.bb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat77, <4 x float> %strided.vec, <4 x float> %i.ba)
  %i.bc = fadd <4 x float> %i.bb, %broadcast.splat79
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index
  %wide.vec87 = load <8 x float>, ptr %i.bd, align 4, !tbaa !68, !alias.scope !348 ; 2 uses
  %i.be = fneg <8 x float> %wide.vec87
  %i.bf = shufflevector <8 x float> %i.be, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.az, <4 x float> %i.bf) ; 2 uses
  %i.bh = fmul <4 x float> %strided.vec86, %broadcast.splat81
  %i.bi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat83, <4 x float> %strided.vec, <4 x float> %i.bh)
  %i.bj = fadd <4 x float> %i.bi, %broadcast.splat85
  %i.bk = fneg <8 x float> %wide.vec87
  %i.bl = shufflevector <8 x float> %i.bk, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bj, <4 x float> %i.az, <4 x float> %i.bl) ; 2 uses
  %i.bn = fmul <4 x float> %i.bm, %i.bm
  %i.bo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> %i.bg, <4 x float> %i.bn)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %index
  store <4 x float> %i.bo, ptr %i.bp, align 4, !tbaa !68, !alias.scope !349, !noalias !350
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !341

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader90

.lr.ph.preheader90:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader90, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader90 ] ; 4 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %10 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %11 = load float, ptr %9, align 4, !tbaa !92    ; 2 uses
  %12 = load float, ptr %i.br, align 4, !tbaa !93 ; 2 uses
  %13 = fmul float %11, %i.ai
  %i.bs = call float @llvm.fmuladd.f32(float %i.af, float %12, float %13)
  %i.bt = fadd float %i.bs, %i.al
  %i.bu = fdiv float 1.000000e+00, %i.bt          ; 2 uses
  %14 = insertelement <2 x float> poison, float %11, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x float> %15, %i.aa
  %16 = insertelement <2 x float> poison, float %12, i64 0
  %i.bw = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.bw, <2 x float> %i.bv)
  %i.by = fadd <2 x float> %i.bx, %i.ac           ; 2 uses
  %i.bz = extractelement <2 x float> %i.by, i64 0
  %i.ca = load <2 x float>, ptr %10, align 4, !tbaa !68
  %i.cb = fneg <2 x float> %i.ca                  ; 2 uses
  %i.cc = extractelement <2 x float> %i.cb, i64 0
  %i.cd = call float @llvm.fmuladd.f32(float %i.bz, float %i.bu, float %i.cc) ; 2 uses
  %i.ce = extractelement <2 x float> %i.by, i64 1
  %i.cf = extractelement <2 x float> %i.cb, i64 1
  %i.cg = call float @llvm.fmuladd.f32(float %i.ce, float %i.bu, float %i.cf) ; 2 uses
  %i.ch = fmul float %i.cg, %i.cg
  %i.ci = call float @llvm.fmuladd.f32(float %i.cd, float %i.cd, float %i.ch)
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv
  store float %i.ci, ptr %i.cj, align 4, !tbaa !68
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !342

bb.l:                                             ; preds = %bb.e, %bb.d, %_ZNK2cv11_InputArray6getMatEi.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.m:                                             ; preds = %bb.g, %bb.f, %_ZNK2cv11_InputArray6getMatEi.exit54
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.n:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit58
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.o:                                             ; preds = %bb.h
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.q

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %_ZNK2cv11_InputArray6getMatEi.exit62
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.cm, %bb.n ], [ %i.co, %bb.p ], [ %i.cn, %bb.o ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.q ], [ %i.cl, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.r ], [ %i.ck, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv27HomographyEstimatorCallback11checkSubsetERKNS_11_InputArrayES3_i(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !355
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19, !noalias !355
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.e = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.f = icmp eq i32 %i.e, 65536
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19, !noalias !356
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %i.h)
          to label %_ZNK2cv11_InputArray6getMatEi.exit53 unwind label %bb.l

bb.e:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit53 unwind label %bb.l

_ZNK2cv11_InputArray6getMatEi.exit53:             ; preds = %bb.d, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.val49 = load ptr, ptr %i.i, align 8, !tbaa !59 ; 6 uses
  %i.j = icmp sgt i32 %3, 1
  br i1 %i.j, label %.lr.ph6.i, label %.thread79

.lr.ph6.i:                                        ; preds = %_ZNK2cv11_InputArray6getMatEi.exit53
  %i.k = add nsw i32 %3, -1
  %i.l = zext nneg i32 %i.k to i64                ; 4 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.val49, i64 %i.l
  %i.n = load <2 x float>, ptr %i.m, align 4, !tbaa !68 ; 3 uses
  %i.o = extractelement <2 x float> %i.n, i64 0
  %i.p = extractelement <2 x float> %i.n, i64 1
  br label %bb.f

bb.f:                                             ; preds = %.critedge.i, %.lr.ph6.i
  %indvars.iv9.i = phi i64 [ 0, %.lr.ph6.i ], [ %indvars.iv.next10.i, %.critedge.i ] ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.val49, i64 %indvars.iv9.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !92
  %i.t = fsub float %i.s, %i.p
  %i.u = fpext float %i.t to double               ; 2 uses
  %.not3.not.i = icmp eq i64 %indvars.iv9.i, 0
  br i1 %.not3.not.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.v = load float, ptr %i.q, align 4, !tbaa !93
  %i.w = fsub float %i.v, %i.o
  %i.x = fpext float %i.w to double               ; 2 uses
  %i.y = fneg double %i.x
  %i.z = call double @llvm.fabs.f64(double %i.x)
  %i.aa = call double @llvm.fabs.f64(double %i.u)
  %i.ab = fadd double %i.aa, %i.z
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv9.i
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.h, !llvm.loop !6

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.val49, i64 %indvars.iv.i
  %i.ad = load <2 x float>, ptr %i.ac, align 4, !tbaa !68
  %i.ae = fsub <2 x float> %i.ad, %i.n
  %i.af = fpext <2 x float> %i.ae to <2 x double> ; 3 uses
  %i.ag = extractelement <2 x double> %i.af, i64 1
  %i.ah = fmul double %i.ag, %i.y
  %i.ai = extractelement <2 x double> %i.af, i64 0
  %i.aj = call double @llvm.fmuladd.f64(double %i.ai, double %i.u, double %i.ah)
  %i.ak = call double @llvm.fabs.f64(double %i.aj)
  %i.al = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.af) ; 2 uses
  %i.am = extractelement <2 x double> %i.al, i64 0
  %i.an = fadd double %i.ab, %i.am
  %i.ao = extractelement <2 x double> %i.al, i64 1
  %i.ap = fadd double %i.an, %i.ao
  %i.aq = fmul double %i.ap, f0x3E80000000000000
  %i.ar = fcmp ugt double %i.ak, %i.aq
  br i1 %i.ar, label %bb.g, label %_ZN2cvL19haveCollinearPointsERKNS_3MatEi.exit

.critedge.i:                                      ; preds = %bb.g, %bb.f
  %indvars.iv.next10.i = add nuw nsw i64 %indvars.iv9.i, 1 ; 2 uses
  %exitcond13.not.i = icmp eq i64 %indvars.iv.next10.i, %i.l
  br i1 %exitcond13.not.i, label %.lr.ph6.i54, label %bb.f, !llvm.loop !7

.lr.ph6.i54:                                      ; preds = %.critedge.i
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.val = load ptr, ptr %i.as, align 8, !tbaa !59 ; 6 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.l
  %i.au = load <2 x float>, ptr %i.at, align 4, !tbaa !68 ; 3 uses
  %i.av = extractelement <2 x float> %i.au, i64 0
  %i.aw = extractelement <2 x float> %i.au, i64 1
  br label %bb.i

bb.i:                                             ; preds = %.critedge.i62, %.lr.ph6.i54
  %indvars.iv9.i56 = phi i64 [ 0, %.lr.ph6.i54 ], [ %indvars.iv.next10.i63, %.critedge.i62 ] ; 4 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv9.i56 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !92
  %i.ba = fsub float %i.az, %i.aw
  %i.bb = fpext float %i.ba to double             ; 2 uses
  %.not3.not.i57 = icmp eq i64 %indvars.iv9.i56, 0
  br i1 %.not3.not.i57, label %.critedge.i62, label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %bb.i
  %i.bc = load float, ptr %i.ax, align 4, !tbaa !93
  %i.bd = fsub float %i.bc, %i.av
  %i.be = fpext float %i.bd to double             ; 2 uses
  %i.bf = fneg double %i.be
  %i.bg = call double @llvm.fabs.f64(double %i.be)
  %i.bh = call double @llvm.fabs.f64(double %i.bb)
  %i.bi = fadd double %i.bh, %i.bg
  br label %bb.k
end_hunk_0
