Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/rotcalipers?download=true
inline.NumInlined: 72
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2cv11minAreaRectERKNS_11_InputArrayE:bb.a
  %i.gz = fcmp ogt float %i.gl, 0.000000e+00
  %or.cond = select i1 %i.gy, i1 %i.gz, i1 false
  br i1 %or.cond, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  store <2 x float> %i.gw, ptr %i.gs, align 4, !tbaa !33
  br label %bb.al

bb.aa:                                            ; preds = %bb.j
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ab:                                            ; preds = %bb.m
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ac:                                            ; preds = %bb.y
  %i.hc = extractelement <2 x double> %i.gq, i64 0
  %i.hd = extractelement <2 x double> %i.gr, i64 0
  %i.he = call double @atan2(double noundef %i.hc, double noundef %i.hd) #12
  %i.hf = fneg double %i.he
  br label %bb.al

bb.ad:                                            ; preds = %bb.k
  switch i32 %i.l, label %bb.al [
    i32 2, label %bb.ae
    i32 1, label %bb.ak
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.hg = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.hj = load <2 x float>, ptr %i.n, align 4, !tbaa !33 ; 3 uses
  %i.hk = load <2 x float>, ptr %i.hg, align 4, !tbaa !33 ; 3 uses
  %i.hl = fadd <2 x float> %i.hj, %i.hk
  %foldExtExtBinop67 = fsub <2 x float> %i.hj, %i.hk
  %i.hm = extractelement <2 x float> %foldExtExtBinop67, i64 0 ; 2 uses
  %i.hn = fpext float %i.hm to double             ; 4 uses
  %foldExtExtBinop69 = fsub <2 x float> %i.hj, %i.hk
  %i.ho = extractelement <2 x float> %foldExtExtBinop69, i64 1 ; 3 uses
  %i.hp = fpext float %i.ho to double             ; 4 uses
  %i.hq = fmul double %i.hp, %i.hp
  %i.hr = call double @llvm.fmuladd.f64(double %i.hn, double %i.hn, double %i.hq)
  %sqrt57 = call double @llvm.sqrt.f64(double %i.hr)
  %i.hs = fptrunc double %sqrt57 to float         ; 3 uses
  %i.ht = insertelement <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, float %i.hs, i64 3
  %i.hu = shufflevector <2 x float> %i.hl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hv = shufflevector <4 x float> %i.hu, <4 x float> %i.ht, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hw = fmul <4 x float> %i.hv, <float 5.000000e-01, float 5.000000e-01, float 0.000000e+00, float 1.000000e+00>
  store <4 x float> %i.hw, ptr %0, align 4, !tbaa !33
  %i.hx = fcmp oeq float %i.hm, 0.000000e+00
  br i1 %i.hx, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store float %i.hs, ptr %i.hh, align 4, !tbaa !33
  store float 0.000000e+00, ptr %i.hi, align 4, !tbaa !33
  br label %bb.al

bb.ag:                                            ; preds = %bb.ae
  %i.hy = fcmp olt float %i.ho, 0.000000e+00
  br i1 %i.hy, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.hz = call double @atan2(double noundef %i.hp, double noundef %i.hn) #12
  store float %i.hs, ptr %i.hh, align 4, !tbaa !33
  store float 0.000000e+00, ptr %i.hi, align 4, !tbaa !33
  br label %bb.al

bb.ai:                                            ; preds = %bb.ag
  %i.ia = fcmp ogt float %i.ho, 0.000000e+00
  br i1 %i.ia, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.ib = call double @atan2(double noundef %i.hn, double noundef %i.hp) #12
  %i.ic = fneg double %i.ib
  br label %bb.al

bb.ak:                                            ; preds = %bb.ad
  %i.id = load i64, ptr %i.n, align 4, !tbaa !33
  store i64 %i.id, ptr %0, align 4, !tbaa !33
  br label %bb.al

bb.al:                                            ; preds = %bb.ad, %bb.af, %bb.ai, %bb.aj, %bb.ah, %bb.ak, %bb.z, %bb.ac
  %.1 = phi double [ f0xBFF921FB54442D18, %bb.z ], [ %i.hf, %bb.ac ], [ f0xBFF921FB54442D18, %bb.ad ], [ f0xBFF921FB54442D18, %bb.ak ], [ f0xBFF921FB54442D18, %bb.af ], [ %i.hz, %bb.ah ], [ %i.ic, %bb.aj ], [ f0xBFF921FB54442D18, %bb.ai ]
  %i.ie = fmul double %.1, 1.800000e+02
  %i.if = fdiv double %i.ie, f0x400921FB54442D18
  %i.ig = fptrunc double %i.if to float
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.ig, ptr %i.ih, align 4, !tbaa !41
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.ii = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !22
  %.not.i = icmp eq i32 %i.ij, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ik = landingpad { ptr, i32 }
          catch ptr null
  %i.il = extractvalue { ptr, i32 } %i.ik, 0
  call void @__clang_call_terminate(ptr %i.il) #15
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void

bb.ao:                                            ; preds = %bb.f, %bb.i, %bb.ab, %bb.aa
  %.pn50.pn.pn = phi { ptr, i32 } [ %i.ha, %bb.aa ], [ %i.i, %bb.f ], [ %.pn48, %bb.i ], [ %i.hb, %bb.ab ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  resume { ptr, i32 } %.pn50.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare void @_ZN2cv10convexHullERKNS_11_InputArrayERKNS_12_OutputArrayEbb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #3

declare noundef i32 @_ZNK2cv3Mat11checkVectorEiib(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #15
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv9boxPointsENS_11RotatedRectERKNS_12_OutputArrayE(ptr noundef byval(%"class.cv::RotatedRect") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv9boxPointsENS_11RotatedRectERKNS_12_OutputArrayEE25__cv_trace_location_fn432)
  invoke void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 4, i32 noundef 2, i32 noundef 5, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11, !noalias !47
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.i

bb.d:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.i

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.c, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  invoke void @_ZNK2cv11RotatedRect6pointsEPNS_6Point_IfEE(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef %i.f)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !22
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %2)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #15
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void

bb.h:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.i:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.m, %bb.j ], [ %i.l, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.k ], [ %i.k, %bb.h ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @_ZNK2cv11RotatedRect6pointsEPNS_6Point_IfEE(ptr noundef nonnull align 4 dereferenceable(20), ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #12 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!10 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !8, i64 8, !9, i64 16}
!11 = !{!10, !8, i64 8}
!12 = !{!"p1 omnipotent char", !8, i64 0}
!13 = !{!"p1 _ZTSN2cv12MatAllocatorE", !8, i64 0}
!14 = !{!"p1 _ZTSN2cv8UMatDataE", !8, i64 0}
!15 = !{!"_ZTSN2cv10DataLayoutE", !4, i64 0}
!16 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !15, i64 4, !5, i64 8, !4, i64 12}
!17 = !{!"_ZTSN2cv7MatStepE", !4, i64 0}
!18 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !13, i64 56, !14, i64 64, !16, i64 72, !17, i64 128}
!19 = !{!18, !12, i64 24}
!20 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !8, i64 0}
!21 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !20, i64 0, !5, i64 8}
!22 = !{!21, !5, i64 8}
!23 = distinct !{!23, !34}
!24 = distinct !{!24, !34}
!25 = !{!10, !5, i64 0}
!26 = !{!18, !5, i64 0}
!27 = !{!"p1 float", !8, i64 0}
!28 = !{!"long", !4, i64 0}
!29 = !{!"_ZTSN2cv10AutoBufferIfLm264EEE", !27, i64 0, !28, i64 8, !4, i64 16}
!30 = !{!29, !27, i64 0}
!31 = !{!29, !28, i64 8}
!32 = !{!"float", !4, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!5, !5, i64 0}
!36 = !{!"_ZTSN2cv6Point_IfEE", !32, i64 0, !32, i64 4}
!37 = !{!36, !32, i64 4}
!38 = !{!36, !32, i64 0}
!39 = !{!"_ZTSN2cv5Size_IfEE", !32, i64 0, !32, i64 4}
!40 = !{!"_ZTSN2cv11RotatedRectE", !36, i64 0, !39, i64 8, !32, i64 16}
!41 = !{!40, !32, i64 16}
!45 = distinct !{!45, i1 false, !"_ZNK2cv11_InputArray6getMatEi"}
!46 = distinct !{!46, !45, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!47 = !{!46}
end_hunk_0
