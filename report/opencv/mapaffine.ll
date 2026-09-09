Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/mapaffine?download=true
inline.NumInlined: 173
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK2cv3reg9MapAffine11inverseWarpERKNS_11_InputArrayERKNS_12_OutputArrayE:bb.a
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.us52.us, i64 %indvars.iv73
  %i.ff = trunc nuw nsw i64 %indvars.iv73 to i32
  %i.fg = uitofp nneg i32 %i.ff to double
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv73
  %i.fi = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.fj = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fj, <2 x double> %i.ew, <2 x double> %i.fb)
  %i.fl = fadd <2 x double> %i.bs, %i.fk
  %i.fm = fptrunc <2 x double> %i.fl to <2 x float> ; 2 uses
  %i.fn = extractelement <2 x float> %i.fm, i64 0
  store float %i.fn, ptr %i.fe, align 4, !tbaa !60
  %i.fo = extractelement <2 x float> %i.fm, i64 1
  store float %i.fo, ptr %i.fh, align 4, !tbaa !60
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond77.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count76
  br i1 %exitcond77.not, label %._crit_edge.split.split.us.us, label %bb.t, !llvm.loop !55

._crit_edge.split.split.us.us:                    ; preds = %bb.t
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %._crit_edge57.split, label %.preheader.us60, !llvm.loop !54

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge.split.split
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %._crit_edge.split.split ], [ 0, %.preheader.preheader ] ; 4 uses
  %i.fp = trunc nuw nsw i64 %indvars.iv68 to i32
  %i.fq = uitofp nneg i32 %i.fp to double
  %i.fr = insertelement <2 x double> poison, double %i.fq, i64 0
  %i.fs = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ft = fmul <2 x double> %i.es, %i.fs
  br label %bb.v

._crit_edge57.split:                              ; preds = %._crit_edge.split.split, %._crit_edge.split.split.us.us, %._crit_edge.split.us.us.split, %._crit_edge.split.us.us.split.us.us, %.preheader.lr.ph, %.preheader49
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.l, %bb.d, %._crit_edge57.split, %bb.r, %bb.j
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge.split.split:                          ; preds = %bb.v
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %exitcond72.not = icmp eq i64 %indvars.iv.next69, %wide.trip.count81
  br i1 %exitcond72.not, label %._crit_edge57.split, label %.preheader, !llvm.loop !54

bb.v:                                             ; preds = %.preheader, %bb.v
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.v ] ; 4 uses
  %i.fv = load i64, ptr %i.ba, align 8
  %i.fw = mul i64 %i.fv, %indvars.iv68
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.fw
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %indvars.iv
  %i.fy = trunc nuw nsw i64 %indvars.iv to i32
  %i.fz = uitofp nneg i32 %i.fy to double
  %i.ga = insertelement <2 x double> poison, double %i.fz, i64 0
  %i.gb = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> %i.et, <2 x double> %i.ft)
  %i.gd = fadd <2 x double> %i.bs, %i.gc
  %i.ge = fptrunc <2 x double> %i.gd to <2 x float> ; 2 uses
  %i.gf = extractelement <2 x float> %i.ge, i64 0
  store float %i.gf, ptr %i.fx, align 4, !tbaa !60
  %i.gg = load i64, ptr %i.bh, align 8
  %i.gh = mul i64 %i.gg, %indvars.iv68
  %.sink.i43 = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.gh
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.sink.i43, i64 %indvars.iv
  %i.gj = extractelement <2 x float> %i.ge, i64 1
  store float %i.gj, ptr %i.gi, align 4, !tbaa !60
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count76
  br i1 %exitcond.not, label %._crit_edge.split.split, label %bb.v, !llvm.loop !55

bb.w:                                             ; preds = %._crit_edge57.split
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.gk = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %i.gk, align 8, !tbaa !64
  %i.gl = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 0, ptr %i.gl, align 4, !tbaa !65
  store i32 16842752, ptr %10, align 8, !tbaa !30
  %i.gm = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %7, ptr %i.gm, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.gn = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.gn, align 8, !tbaa !64
  %i.go = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.go, align 4, !tbaa !65
  store i32 16842752, ptr %11, align 8, !tbaa !30
  %i.gp = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %9, ptr %i.gp, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.gq = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 0, ptr %i.gq, align 8, !tbaa !64
  %i.gr = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 0, ptr %i.gr, align 4, !tbaa !65
  store i32 16842752, ptr %12, align 8, !tbaa !30
  %i.gs = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %8, ptr %i.gs, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv5remapERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_iiRKNS_7Scalar_IdEENS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef 2, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 0)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  ret void

bb.y:                                             ; preds = %bb.w
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i30, %bb.u, %bb.y
  %.pn27 = phi { ptr, i32 } [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i30 ], [ %i.gt, %bb.y ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.fu, %bb.u ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  resume { ptr, i32 } %.pn27
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #1

declare void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208), i64, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

declare void @_ZN2cv5remapERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_iiRKNS_7Scalar_IdEENS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv3reg9MapAffine10inverseMapEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.cv::Ptr") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Matx", align 8          ; 8 uses
  %3 = alloca %"class.cv::Vec", align 16          ; 5 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.b = load double, ptr %i.a, align 8, !tbaa !11, !noalias !73 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load double, ptr %i.c, align 8, !tbaa !11, !noalias !73 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !11, !noalias !73 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load double, ptr %i.g, align 8, !tbaa !11, !noalias !73
  %i.i = fneg double %i.h                         ; 2 uses
  %i.j = fmul double %i.f, %i.i
  %i.k = tail call noundef double @llvm.fmuladd.f64(double %i.b, double %i.d, double %i.j) ; 2 uses
  %i.l = fcmp une double %i.k, 0.000000e+00
  br i1 %i.l, label %bb.b, label %_ZNK2cv8internal14Matx_FastInvOpIdLi2ELi2EEclERKNS_4MatxIdLi2ELi2EEERS4_i.exit.i

bb.b:                                             ; preds = %bb.a
  %i.m = fdiv double 1.000000e+00, %i.k
  %i.n = fneg double %i.f
  %i.o = insertelement <2 x double> poison, double %i.m, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.q = insertelement <2 x double> poison, double %i.n, i64 0
  %i.r = insertelement <2 x double> %i.q, double %i.b, i64 1
  %i.s = fmul <2 x double> %i.p, %i.r             ; 3 uses
  %i.t = insertelement <2 x double> poison, double %i.d, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.i, i64 1
  %i.v = fmul <2 x double> %i.u, %i.p             ; 3 uses
  %i.w = extractelement <2 x double> %i.v, i64 0
  store double %i.w, ptr %2, align 8, !alias.scope !73
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = shufflevector <2 x double> %i.s, <2 x double> %i.v, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.x, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !73
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = extractelement <2 x double> %i.s, i64 1
  store double %i.y, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !29, !alias.scope !73
  br label %bb.c

_ZNK2cv8internal14Matx_FastInvOpIdLi2ELi2EEclERKNS_4MatxIdLi2ELi2EEERS4_i.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false), !alias.scope !74
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK2cv8internal14Matx_FastInvOpIdLi2ELi2EEclERKNS_4MatxIdLi2ELi2EEERS4_i.exit.i
  %i.z = phi <2 x double> [ %i.s, %bb.b ], [ zeroinitializer, %_ZNK2cv8internal14Matx_FastInvOpIdLi2ELi2EEclERKNS_4MatxIdLi2ELi2EEERS4_i.exit.i ]
  %i.aa = phi <2 x double> [ %i.v, %bb.b ], [ zeroinitializer, %_ZNK2cv8internal14Matx_FastInvOpIdLi2ELi2EEclERKNS_4MatxIdLi2ELi2EEERS4_i.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ab = fneg <2 x double> %i.aa
  %i.ac = fneg <2 x double> %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %6 = load <2 x double>, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.ae = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ae, <2 x double> zeroinitializer)
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %7, <2 x double> %i.af)
  store <2 x double> %i.ag, ptr %3, align 16, !tbaa !11, !alias.scope !75
  %i.ah = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #22 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 -1056833530, ptr %4, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.aj, align 8, !tbaa !15
  store i64 8589934594, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 -1056833530, ptr %5, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.al, align 8, !tbaa !15
  store i64 8589934593, ptr %i.ak, align 8
  invoke void @_ZN2cv3reg9MapAffineC1ERKNS_11_InputArrayES4_(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.d unwind label %.thread22

bb.d:                                             ; preds = %bb.c
  store ptr %i.ah, ptr %0, align 8, !tbaa !36
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.am, align 8, !tbaa !76
  %i.an = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.i unwind label %bb.e       ; 5 uses

bb.e:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  %i.aq = call ptr @__cxa_begin_catch(ptr %i.ap) #19 ; 0 uses
  %i.ar = load ptr, ptr %i.ah, align 8, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(56) %i.ah) #19, !inline_history !72
  invoke void @__cxa_rethrow() #20
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #23
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 1, ptr %i.ax, align 8, !tbaa !77
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 1, ptr %i.ay, align 4, !tbaa !78
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN2cv3reg9MapAffineELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.an, align 8, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.ah, ptr %i.az, align 8, !tbaa !40
  store ptr %i.an, ptr %i.am, align 8, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

.thread22:                                        ; preds = %bb.c
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 56) #21
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread22
  %.pn.pn20 = phi { ptr, i32 } [ %i.ba, %.thread22 ], [ %i.au, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %.pn.pn20
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN2cv3reg9MapAffine7composeENS_3PtrINS0_3MapEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef readonly align 8 captures(none) %1) unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !36     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load <4 x double>, ptr %i.b, align 8, !tbaa !11, !noalias !81 ; 4 uses
  %i.j = load double, ptr %i.f, align 8, !tbaa !11, !noalias !81
  %i.k = load double, ptr %i.d, align 8, !tbaa !11, !noalias !81
  %i.l = load <2 x double>, ptr %i.g, align 8, !tbaa !11 ; 2 uses
  %i.m = shufflevector <4 x double> %i.i, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %i.n = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.n, <2 x double> zeroinitializer)
  %i.p = shufflevector <4 x double> %i.i, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %2 = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.q = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %2, <2 x double> %i.o)
  %i.r = load <2 x double>, ptr %i.h, align 8, !tbaa !11
  %i.s = fadd <2 x double> %i.q, %i.r
  %i.t = load <2 x double>, ptr %i.c, align 8, !tbaa !11, !noalias !81 ; 2 uses
  %i.u = load <2 x double>, ptr %i.e, align 8, !tbaa !11, !noalias !81 ; 2 uses
  %i.v = shufflevector <4 x double> %i.i, <4 x double> poison, <2 x i32> zeroinitializer
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %i.t, <2 x double> zeroinitializer)
  %i.x = insertelement <2 x double> poison, double %i.k, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.u, <2 x double> %i.w)
  store <2 x double> %i.z, ptr %i.c, align 8
  %i.aa = shufflevector <4 x double> %i.i, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %i.t, <2 x double> zeroinitializer)
  %i.ac = insertelement <2 x double> poison, double %i.j, i64 0
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %i.u, <2 x double> %i.ab)
  store <2 x double> %i.ae, ptr %i.e, align 8
  store <2 x double> %i.s, ptr %i.g, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN2cv3reg9MapAffine5scaleEd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, double noundef %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !11
  %i.c = insertelement <2 x double> poison, double %1, i64 0
  %i.d = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> zeroinitializer
  %i.e = fmul <2 x double> %i.d, %i.b
  store <2 x double> %i.e, ptr %i.a, align 8, !tbaa !11
  ret void
}

declare void @_ZNK2cv3reg3Map4warpERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #7

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #7

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !82
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.d, ptr %i.a, align 8, !tbaa !83
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !28
  %i.g = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.g, ptr %i.b, align 8, !tbaa !29
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !29
  store i8 %i.i, ptr %i.h, align 1, !tbaa !29
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !84
  %i.l = load ptr, ptr %0, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #15

declare void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #7

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #7

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3reg9MapAffineELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3reg9MapAffineELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3reg9MapAffineELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN2cv3reg9MapAffineELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
end_hunk_0
