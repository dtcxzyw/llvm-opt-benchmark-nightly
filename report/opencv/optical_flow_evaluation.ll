Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/optical_flow_evaluation?download=true
inline.NumInlined: 672
inline.NumDeleted: 196
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZL13endpointErrorRKN2cv4Mat_INS_6Point_IfEEEES5_:bb.a
  %i.bk = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bd)
  %i.bl = fcmp uge <2 x float> %i.bk, splat (float 1.000000e+09)
  %i.bm = bitcast <2 x i1> %i.bl to i2
  %i.bn = icmp eq i2 %i.bm, 0
  br i1 %i.bn, label %bb.k, label %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bo = fsub <2 x float> %i.az, %i.bd           ; 2 uses
  %i.bp = extractelement <2 x float> %i.bo, i64 0
  %i.bq = fpext float %i.bp to double             ; 2 uses
  %i.br = extractelement <2 x float> %i.bo, i64 1
  %i.bs = fpext float %i.br to double             ; 2 uses
  %i.bt = fmul double %i.bs, %i.bs
  %i.bu = tail call noundef double @llvm.fmuladd.f64(double %i.bq, double %i.bq, double %i.bt)
  %i.bv = fptrunc double %i.bu to float
  %sqrt = tail call float @llvm.sqrt.f32(float %i.bv)
  br label %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread

_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread:     ; preds = %bb.i, %bb.h, %bb.j, %bb.k
  %.sink = phi float [ %sqrt, %bb.k ], [ +qnan, %bb.i ], [ +qnan, %bb.j ], [ +qnan, %bb.h ]
  %i.bw = load i64, ptr %i.ai, align 8
  %i.bx = mul i64 %i.bw, %indvars.iv55
  %.sink.idx.i36 = select i1 %i.au, i64 0, i64 %i.bx
  %.sink.i37 = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sink.idx.i36
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.sink.i37, i64 %indvars.iv
  store float %.sink, ptr %i.by, align 4, !tbaa !71
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !126

._crit_edge53.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %_ZNK2cv8MatShapeclEv.exit
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZL12angularErrorRKN2cv4Mat_INS_6Point_IfEEEES5_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %2) unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29   ; 6 uses
  %i.c = icmp slt i32 %i.b, 3
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.45, i32 noundef 109) #24
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %3, align 8, !tbaa !18     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !19
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %i.j = icmp sgt i32 %i.b, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.l = icmp eq i32 %i.b, 2
  %i.m = zext i1 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !30
  br label %_ZNK2cv8MatShapeclEv.exit

bb.g:                                             ; preds = %bb.e
  %i.p = icmp eq i32 %i.b, 0
  %i.q = zext i1 %i.p to i32
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.f, %bb.g
  %i.r = phi i32 [ %i.o, %bb.f ], [ %i.q, %bb.g ]
  %i.s = icmp eq i32 %i.b, 2
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp sgt i32 %i.b, -1
  %i.w = zext i1 %i.v to i32
  %i.x = select i1 %i.s, i32 %i.u, i32 %i.w
  %.sroa.2.0.insert.ext.i = zext i32 %i.x to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.r to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  tail call void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 %.sroa.0.0.insert.insert.i, i32 noundef 5)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !67   ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.preheader.lr.ph, label %._crit_edge64.split

.preheader.lr.ph:                                 ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !68 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  br i1 %i.ad, label %.preheader.lr.ph.split, label %._crit_edge64.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !63
  %i.ao = icmp slt i32 %i.an, 2
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !28
  %i.aq = load i32, ptr %i.ak, align 4, !tbaa !63
  %i.ar = icmp slt i32 %i.aq, 2
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !28
  %wide.trip.count69 = zext nneg i32 %i.z to i64
  %wide.trip.count = zext nneg i32 %i.ac to i64
  %i.at = load i32, ptr %i.ag, align 4, !tbaa !63
  %i.au = icmp slt i32 %i.at, 2
  %i.av = load ptr, ptr %i.ah, align 8, !tbaa !28
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv66 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next67, %._crit_edge ] ; 4 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_Z13isFlowCorrectN2cv7Point3_IfEE.exit.thread
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next67, %wide.trip.count69
  br i1 %exitcond70.not, label %._crit_edge64.split, label %.preheader, !llvm.loop !127

bb.h:                                             ; preds = %.preheader, %_Z13isFlowCorrectN2cv7Point3_IfEE.exit.thread
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_Z13isFlowCorrectN2cv7Point3_IfEE.exit.thread ] ; 4 uses
  %i.aw = load i64, ptr %i.ae, align 8
  %i.ax = mul i64 %i.aw, %indvars.iv66
  %.sink.idx.i = select i1 %i.ao, i64 0, i64 %i.ax
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sink.idx.i
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.sink.i, i64 %indvars.iv ; 2 uses
  %.sroa.08.0.copyload = load float, ptr %i.ay, align 4, !tbaa !71 ; 3 uses
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %.sroa.59.0.copyload = load float, ptr %.sroa.59.0..sroa_idx, align 4, !tbaa !71
  %.sroa.59.0.copyload.fr = freeze float %.sroa.59.0.copyload ; 3 uses
  %i.az = load i64, ptr %i.af, align 8
  %i.ba = mul i64 %i.az, %indvars.iv66
  %.sink.idx.i30 = select i1 %i.ar, i64 0, i64 %i.ba
  %.sink.i31 = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sink.idx.i30
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.sink.i31, i64 %indvars.iv ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bc = load <2 x float>, ptr %i.bb, align 4, !tbaa !71 ; 3 uses
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !71 ; 2 uses
  %or.cond = fcmp ord float %.sroa.08.0.copyload, %.sroa.59.0.copyload.fr
  br i1 %or.cond, label %bb.i, label %_Z13isFlowCorrectN2cv7Point3_IfEE.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bd = tail call float @llvm.fabs.f32(float %.sroa.08.0.copyload)
  %i.be = fcmp olt float %i.bd, 1.000000e+09
  %i.bf = tail call float @llvm.fabs.f32(float %.sroa.59.0.copyload.fr)
  %i.bg = fcmp olt float %i.bf, 1.000000e+09
  %or.cond11.i = and i1 %i.be, %i.bg
  %i.bh = extractelement <2 x float> %i.bc, i64 0 ; 2 uses
  %i.bi = fcmp ord float %i.bh, 0.000000e+00
  %or.cond60 = select i1 %or.cond11.i, i1 %i.bi, i1 false
  %i.bj = fcmp ord float %.sroa.5.0.copyload, 0.000000e+00
  %or.cond61 = select i1 %or.cond60, i1 %i.bj, i1 false
  br i1 %or.cond61, label %bb.j, label %_Z13isFlowCorrectN2cv7Point3_IfEE.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bk = tail call float @llvm.fabs.f32(float %i.bh)
  %i.bl = fcmp olt float %i.bk, 1.000000e+09
  %i.bm = tail call float @llvm.fabs.f32(float %.sroa.5.0.copyload)
  %i.bn = fcmp olt float %i.bm, 1.000000e+09
  %or.cond11.i35 = and i1 %i.bl, %i.bn
  br i1 %or.cond11.i35, label %bb.k, label %_Z13isFlowCorrectN2cv7Point3_IfEE.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bo = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bp = insertelement <2 x float> %i.bo, float %.sroa.08.0.copyload, i64 0
  %i.bq = fpext <2 x float> %i.bp to <2 x double> ; 4 uses
  %i.br = insertelement <2 x float> %i.bc, float %.sroa.59.0.copyload.fr, i64 0
  %i.bs = fpext <2 x float> %i.br to <2 x double> ; 4 uses
  %shift = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul nnan <2 x double> %shift, %i.bs
  %i.bt = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.bu = extractelement <2 x double> %i.bq, i64 0
  %i.bv = extractelement <2 x double> %i.bq, i64 1
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bv, double %i.bt)
  %i.bx = fadd double %i.bw, 1.000000e+00
  %i.by = fmul <2 x double> %i.bs, %i.bs
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.bq, <2 x double> %i.by)
  %i.ca = fadd <2 x double> %i.bz, splat (double 1.000000e+00)
  %i.cb = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ca) ; 2 uses
  %i.cc = extractelement <2 x double> %i.cb, i64 0
  %i.cd = fdiv double %i.bx, %i.cc
  %i.ce = extractelement <2 x double> %i.cb, i64 1
  %i.cf = fmul double %i.cd, %i.ce
  %i.cg = fptrunc double %i.cf to float
  %i.ch = tail call noundef float @acosf(float noundef %i.cg) #25
  br label %_Z13isFlowCorrectN2cv7Point3_IfEE.exit.thread

_Z13isFlowCorrectN2cv7Point3_IfEE.exit.thread:    ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %.sink = phi float [ %i.ch, %bb.k ], [ +qnan, %bb.j ], [ +qnan, %bb.i ], [ +qnan, %bb.h ]
  %i.ci = load i64, ptr %i.ai, align 8
  %i.cj = mul i64 %i.ci, %indvars.iv66
  %.sink.idx.i40 = select i1 %i.au, i64 0, i64 %i.cj
  %.sink.i41 = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sink.idx.i40
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.sink.i41, i64 %indvars.iv
  store float %.sink, ptr %i.ck, align 4, !tbaa !71
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !128

._crit_edge64.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %_ZNK2cv8MatShapeclEv.exit
  ret void
}

declare void @_ZN2cvmlERKNS_7MatExprEd(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(688), double noundef) local_unnamed_addr #5

declare void @_ZN2cv3Mat4onesENS_5Size_IiEEi(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i64, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #25
  ret void
}

declare void @_ZN2cv5splitERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN2cvplERKNS_3MatES2_(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #5

declare void @_ZN2cv5SobelERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiddi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef, double noundef, double noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN2cv3absERKNS_3MatE(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #5

declare void @_ZN2cv11addWeightedERKNS_11_InputArrayEdS2_ddRKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), double noundef, ptr noundef nonnull align 8 dereferenceable(24), double noundef, double noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #5

declare void @_ZN2cv4meanERKNS_11_InputArrayES2_(ptr dead_on_unwind writable sret(%"class.cv::Scalar_") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #5

declare void @_ZN2cvgtERKNS_3MatEd(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), double noundef) local_unnamed_addr #5

declare void @_ZN2cv6dilateERKNS_11_InputArrayERKNS_12_OutputArrayES2_NS_6Point_IiEEiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_ZN2cv3Mat4onesEiii(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN2cv11_InputArrayC1ERKNS_7MatExprE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(688)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !56     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i) #25
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 208 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !129

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit:  ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !131
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #26
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #5

declare void @_ZN2cv12GaussianBlurERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN2cvltERKNS_3MatEd(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), double noundef) local_unnamed_addr #5

declare void @_ZN2cv5splitERKNS_3MatEPS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef) local_unnamed_addr #5

declare void @_ZN2cvanERKNS_3MatES2_(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv7MatExprcvNS_3MatEEv(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(688) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #25
  %i.a = load ptr, ptr %1, align 8, !tbaa !53     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(688) %1, ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef -1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #25
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  ret void
}

declare void @_ZN2cveqERKNS_3MatES2_(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #5

declare void @_ZN2cv11bitwise_andERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN2cvmiERKNS_3MatES2_(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #5

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZL14calculateStatsN2cv3MatES0_b(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %17 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator", align 1   ; 3 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator", align 1   ; 3 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %25 = alloca %"class.cv::Scalar_", align 8      ; 6 uses
  %26 = alloca %"class.cv::Scalar_", align 8      ; 6 uses
  %27 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %28 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %29 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %30 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %31 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %32 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %i.a = alloca double, align 8                   ; 8 uses
  %33 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %34 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %35 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %i.b = alloca [1 x i32], align 4                ; 5 uses
  %i.c = alloca [1 x i32], align 4                ; 5 uses
  %i.d = alloca [2 x float], align 4              ; 6 uses
  %i.e = alloca [1 x ptr], align 8                ; 5 uses
  %36 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %37 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %38 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %39 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %i.f = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.f, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i32, ptr %i.g, align 8, !tbaa !29   ; 6 uses
  %i.i = icmp slt i32 %i.h, 3
  br i1 %i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
end_hunk_0
