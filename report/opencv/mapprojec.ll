Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/mapprojec?download=true
inline.NumInlined: 182
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK2cv3reg9MapProjec11inverseWarpERKNS_11_InputArrayERKNS_12_OutputArrayE:bb.a
  %i.fo = insertelement <2 x double> %i.fl, double %i.fn, i64 1
  %i.fp = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fq = fdiv <2 x double> %i.fo, %i.fp
  %i.fr = fptrunc <2 x double> %i.fq to <2 x float> ; 2 uses
  %i.fs = extractelement <2 x float> %i.fr, i64 0
  store float %i.fs, ptr %i.ff, align 4, !tbaa !58
  %i.ft = load i64, ptr %i.bi, align 8
  %i.fu = mul i64 %i.ft, %indvars.iv61
  %.sink.idx.i44 = select i1 %i.be, i64 0, i64 %i.fu
  %.sink.i45 = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.sink.idx.i44
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.sink.i45, i64 %indvars.iv
  %i.fw = extractelement <2 x float> %i.fr, i64 1
  store float %i.fw, ptr %i.fv, align 4, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split, label %bb.u, !llvm.loop !52

bb.v:                                             ; preds = %._crit_edge53.split
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.fx = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %i.fx, align 8, !tbaa !62
  %i.fy = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 0, ptr %i.fy, align 4, !tbaa !63
  store i32 16842752, ptr %10, align 8, !tbaa !28
  %i.fz = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %7, ptr %i.fz, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.ga = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.ga, align 8, !tbaa !62
  %i.gb = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.gb, align 4, !tbaa !63
  store i32 16842752, ptr %11, align 8, !tbaa !28
  %i.gc = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %9, ptr %i.gc, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.gd = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 0, ptr %i.gd, align 8, !tbaa !62
  %i.ge = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 0, ptr %i.ge, align 4, !tbaa !63
  store i32 16842752, ptr %12, align 8, !tbaa !28
  %i.gf = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %8, ptr %i.gf, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv5remapERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_iiRKNS_7Scalar_IdEENS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef 2, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 0)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
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

bb.x:                                             ; preds = %bb.v
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i34, %bb.t, %bb.x
  %.pn31 = phi { ptr, i32 } [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i34 ], [ %i.gg, %bb.x ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.fc, %bb.t ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  resume { ptr, i32 } %.pn31
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #1

declare void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208), i64, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

declare void @_ZN2cv5remapERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_iiRKNS_7Scalar_IdEENS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv3reg9MapProjec10inverseMapEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.cv::Ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Matx", align 8          ; 5 uses
  %3 = alloca %"struct.cv::internal::Matx_FastInvOp", align 1 ; 3 uses
  %4 = alloca %"class.cv::Matx", align 8          ; 6 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19, !noalias !69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %2, i8 0, i64 72, i1 false), !tbaa !11, !noalias !69
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !69
  %i.b = call noundef zeroext i1 @_ZNK2cv8internal14Matx_FastInvOpIdLi3ELi3EEclERKNS_4MatxIdLi3ELi3EEERS4_i(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef 0), !noalias !69
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !69
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false), !tbaa.struct !70
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 0, i64 72, i1 false), !alias.scope !71
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !69
  %i.c = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #22 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 -1056833530, ptr %5, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.e, align 8, !tbaa !15
  store i64 12884901891, ptr %i.d, align 8, !tbaa !29
  invoke void @_ZN2cv3reg9MapProjecC1ERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !72
  %i.g = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.j unwind label %bb.f       ; 5 uses

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = call ptr @__cxa_begin_catch(ptr %i.i) #19 ; 0 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(80) %i.c) #19, !inline_history !68
  invoke void @__cxa_rethrow() #20
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #23
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable

bb.j:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 1, ptr %i.q, align 8, !tbaa !73
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 1, ptr %i.r, align 4, !tbaa !74
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN2cv3reg9MapProjecELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.g, align 8, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.c, ptr %i.s, align 8, !tbaa !38
  store ptr %i.g, ptr %i.f, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

bb.k:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 80) #21
  br label %bb.l

.body:                                            ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.l

bb.l:                                             ; preds = %.body, %bb.k
  %.pn8 = phi { ptr, i32 } [ %i.t, %bb.k ], [ %i.n, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn8
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN2cv3reg9MapProjec7composeENS_3PtrINS0_3MapEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef readonly align 8 captures(none) %1) unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !34     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %2 = load double, ptr %i.g, align 8, !tbaa !11, !noalias !77 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load double, ptr %i.h, align 8, !tbaa !11, !noalias !77 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !11, !noalias !77 ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %8 = load <2 x double>, ptr %i.c, align 8, !tbaa !11, !noalias !77 ; 3 uses
  %9 = load <2 x double>, ptr %i.d, align 8, !tbaa !11, !noalias !77 ; 3 uses
  %i.m = load <2 x double>, ptr %i.e, align 8, !tbaa !11, !noalias !77 ; 3 uses
  %i.n = load <2 x double>, ptr %4, align 8, !tbaa !11, !noalias !77 ; 2 uses
  %10 = load double, ptr %5, align 8, !tbaa !11, !noalias !77
  %11 = load <4 x double>, ptr %i.b, align 8, !tbaa !11, !noalias !77 ; 6 uses
  %12 = load double, ptr %3, align 8, !tbaa !11, !noalias !77
  %13 = shufflevector <4 x double> %11, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %14 = shufflevector <4 x double> %11, <4 x double> poison, <2 x i32> zeroinitializer
  %15 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %14, <2 x double> %8, <2 x double> zeroinitializer)
  %16 = shufflevector <4 x double> %11, <4 x double> poison, <2 x i32> <i32 1, i32 1>
  %17 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %16, <2 x double> %9, <2 x double> %15)
  %18 = shufflevector <4 x double> %11, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.o = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> %i.m, <2 x double> %17)
  %19 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.p = insertelement <2 x double> %19, double %2, i64 0
  %i.q = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %13, <2 x double> %i.p, <2 x double> zeroinitializer)
  %20 = shufflevector <2 x double> %i.n, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %21 = shufflevector <4 x double> %11, <4 x double> %20, <2 x i32> <i32 1, i32 4>
  %22 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.r = insertelement <2 x double> %22, double %i.i, i64 0
  %23 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %21, <2 x double> %i.r, <2 x double> %i.q)
  %24 = shufflevector <4 x double> %11, <4 x double> %20, <2 x i32> <i32 2, i32 5>
  %25 = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.s = insertelement <2 x double> %25, double %i.k, i64 0
  %i.t = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %24, <2 x double> %i.s, <2 x double> %23)
  %i.u = insertelement <2 x double> poison, double %12, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %26 = insertelement <2 x double> %19, double %2, i64 1
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %26, <2 x double> zeroinitializer)
  %i.x = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %27 = insertelement <2 x double> %22, double %i.i, i64 1
  %28 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %27, <2 x double> %i.w)
  %29 = insertelement <2 x double> poison, double %10, i64 0
  %30 = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = insertelement <2 x double> %25, double %i.k, i64 1
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %30, <2 x double> %i.y, <2 x double> %28)
  %31 = load double, ptr %6, align 8, !tbaa !11, !noalias !77 ; 2 uses
  %32 = load double, ptr %7, align 8, !tbaa !11, !noalias !77 ; 2 uses
  %33 = load double, ptr %i.l, align 8, !tbaa !11, !noalias !77 ; 2 uses
  %34 = tail call double @llvm.fmuladd.f64(double %31, double %2, double 0.000000e+00)
  %35 = tail call double @llvm.fmuladd.f64(double %32, double %i.i, double %34)
  %36 = tail call double @llvm.fmuladd.f64(double %33, double %i.k, double %35)
  %37 = insertelement <2 x double> poison, double %31, i64 0
  %i.aa = shufflevector <2 x double> %37, <2 x double> poison, <2 x i32> zeroinitializer
  %38 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %8, <2 x double> zeroinitializer)
  %i.ab = insertelement <2 x double> poison, double %32, i64 0
  %39 = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %39, <2 x double> %9, <2 x double> %38)
  %40 = insertelement <2 x double> poison, double %33, i64 0
  %41 = shufflevector <2 x double> %40, <2 x double> poison, <2 x i32> zeroinitializer
  %42 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %41, <2 x double> %i.m, <2 x double> %i.ac)
  store <2 x double> %i.o, ptr %i.c, align 8
  store <2 x double> %i.t, ptr %i.g, align 8
  store <2 x double> %i.z, ptr %i.f, align 8
  store <2 x double> %42, ptr %i.e, align 8
  store double %36, ptr %i.j, align 8, !tbaa !27
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN2cv3reg9MapProjec5scaleEd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, double noundef %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !11
  %i.c = fmul double %1, %i.b
  store double %i.c, ptr %i.a, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !11
  %i.f = fmul double %1, %i.e
  store double %i.f, ptr %i.d, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !11
  %i.i = insertelement <2 x double> poison, double %1, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = fdiv <2 x double> %i.h, %i.j
  store <2 x double> %i.k, ptr %i.g, align 8, !tbaa !11
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
  store ptr %i.b, ptr %0, align 8, !tbaa !78
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.d, ptr %i.a, align 8, !tbaa !79
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !26
  %i.g = load i64, ptr %i.a, align 8, !tbaa !79
  store i64 %i.g, ptr %i.b, align 8, !tbaa !27
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !27
  store i8 %i.i, ptr %i.h, align 1, !tbaa !27
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !79   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !80
  %i.l = load ptr, ptr %0, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !27
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

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv8internal14Matx_FastInvOpIdLi3ELi3EEclERKNS_4MatxIdLi3ELi3EEERS4_i(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !11 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !11 ; 2 uses
  %i.e = fneg double %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.h = load <2 x double>, ptr %i.f, align 8, !tbaa !11 ; 4 uses
  %i.i = load <2 x double>, ptr %i.g, align 8, !tbaa !11 ; 4 uses
  %i.j = insertelement <2 x double> poison, double %i.e, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x double> %i.i, %i.k
  %i.m = insertelement <2 x double> poison, double %i.b, i64 0
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> %i.n, <2 x double> %i.l) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !11
  %i.r = load <2 x double>, ptr %1, align 8, !tbaa !11 ; 2 uses
  %i.s = shufflevector <2 x double> %i.o, <2 x double> %i.h, <2 x i32> <i32 0, i32 3>
  %i.t = fneg <2 x double> %i.s
  %i.u = shufflevector <2 x double> %i.r, <2 x double> %i.i, <2 x i32> <i32 1, i32 2>
  %i.v = fmul <2 x double> %i.u, %i.t
  %i.w = shufflevector <2 x double> %i.r, <2 x double> %i.h, <2 x i32> <i32 0, i32 2>
  %i.x = shufflevector <2 x double> %i.o, <2 x double> %i.i, <2 x i32> <i32 1, i32 3>
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.x, <2 x double> %i.v) ; 2 uses
  %i.z = extractelement <2 x double> %i.y, i64 0
  %i.aa = extractelement <2 x double> %i.y, i64 1
  %i.ab = tail call noundef double @llvm.fmuladd.f64(double %i.q, double %i.aa, double %i.z) ; 2 uses
  %i.ac = fcmp une double %i.ab, 0.000000e+00     ; 2 uses
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ag = fdiv double 1.000000e+00, %i.ab         ; 9 uses
  %i.ah = extractelement <2 x double> %i.i, i64 1
  %i.ai = fneg double %i.ah
  %i.aj = fmul double %i.d, %i.ai
  %i.ak = extractelement <2 x double> %i.h, i64 1
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.b, double %i.aj)
  %i.am = fmul double %i.al, %i.ag
  store double %i.am, ptr %2, align 8, !tbaa !11
  %i.an = load double, ptr %i.p, align 8, !tbaa !11
  %i.ao = load double, ptr %i.ae, align 8, !tbaa !11
  %i.ap = load double, ptr %i.ad, align 8, !tbaa !11
  %i.aq = load double, ptr %i.a, align 8, !tbaa !11
  %i.ar = fneg double %i.aq
  %i.as = fmul double %i.ap, %i.ar
  %i.at = tail call double @llvm.fmuladd.f64(double %i.an, double %i.ao, double %i.as)
  %i.au = fmul double %i.ag, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %i.au, ptr %i.av, align 8, !tbaa !11
  %i.aw = load double, ptr %i.ad, align 8, !tbaa !11
  %i.ax = load double, ptr %i.c, align 8, !tbaa !11
  %i.ay = load double, ptr %i.p, align 8, !tbaa !11
  %i.az = load double, ptr %i.af, align 8, !tbaa !11
  %i.ba = fneg double %i.az
  %i.bb = fmul double %i.ay, %i.ba
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.ax, double %i.bb)
  %i.bd = fmul double %i.ag, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.bd, ptr %i.be, align 8, !tbaa !11
  %i.bf = load double, ptr %i.c, align 8, !tbaa !11
  %i.bg = load double, ptr %i.g, align 8, !tbaa !11
  %i.bh = load double, ptr %i.f, align 8, !tbaa !11
  %i.bi = load double, ptr %i.a, align 8, !tbaa !11
  %i.bj = fneg double %i.bi
  %i.bk = fmul double %i.bh, %i.bj
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bg, double %i.bk)
  %i.bm = fmul double %i.ag, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %i.bm, ptr %i.bn, align 8, !tbaa !11
  %i.bo = load double, ptr %1, align 8, !tbaa !11
  %i.bp = load double, ptr %i.a, align 8, !tbaa !11
  %i.bq = load double, ptr %i.p, align 8, !tbaa !11
  %i.br = load double, ptr %i.g, align 8, !tbaa !11
  %i.bs = fneg double %i.br
  %i.bt = fmul double %i.bq, %i.bs
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.bp, double %i.bt)
  %i.bv = fmul double %i.ag, %i.bu
end_hunk_0
