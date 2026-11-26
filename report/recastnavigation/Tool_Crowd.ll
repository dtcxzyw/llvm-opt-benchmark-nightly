Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/Tool_Crowd?download=true
inline.NumInlined: 240
inline.NumDeleted: 127
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN14CrowdToolState13renderOverlayEv:bb.a
bb.r:                                             ; preds = %bb.q
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !203
  %i.el = fpext float %i.ek to double
  %i.em = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 32, ptr noundef nonnull @.str.3, double noundef %i.el) #15 ; 0 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 416
  %i.eo = load float, ptr %i.en, align 8, !tbaa !71
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 420
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !71
  %i.er = load float, ptr %i.ed, align 8, !tbaa !86
  %i.es = fadd float %i.eq, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.eg, i64 424
  %i.eu = load float, ptr %i.et, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @_ZNK8AppState13worldToScreenEfffPfS0_(ptr noundef nonnull align 8 dereferenceable(936) @app, float noundef %i.eo, float noundef %i.es, float noundef %i.eu, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #15
  %i.ev = load float, ptr %i.b, align 4, !tbaa !71
  %i.ew = fadd float %i.ev, 1.500000e+01
  store float %i.ew, ptr %i.b, align 4, !tbaa !71
  %i.ex = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %i.i, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #15
  %.sroa.0.0.vec.extract.i74 = extractelement <2 x float> %i.ex, i64 0
  %i.ey = load float, ptr %i.a, align 4, !tbaa !71
  %i.ez = fneg float %.sroa.0.0.vec.extract.i74
  %i.fa = call float @llvm.fmuladd.f32(float %i.ez, float 5.000000e-01, float %i.ey)
  store float %i.fa, ptr %i.a, align 4, !tbaa !71
  %i.fb = call noundef ptr @_ZN5ImGui21GetForegroundDrawListEv() #15
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.fc = load float, ptr %i.a, align 4, !tbaa !71
  %i.fd = load float, ptr %i.b, align 4, !tbaa !71
  store float %i.fc, ptr %1, align 4, !tbaa !187
  store float %i.fd, ptr %i.dq, align 4, !tbaa !188
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %i.fb, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef -587202561, ptr noundef nonnull %i.i, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %i.fe = load i32, ptr %i.dz, align 8, !tbaa !89
  %i.ff = sext i32 %i.fe to i64
  %i.fg = icmp slt i64 %indvars.iv.next103, %i.ff
  br i1 %i.fg, label %bb.q, label %.loopexit, !llvm.loop !184

.loopexit:                                        ; preds = %bb.s, %.preheader, %bb.o, %bb.p, %bb.n
  %i.fh = add nuw nsw i32 %.05397, 1              ; 2 uses
  %i.fi = call noundef i32 @_ZNK7dtCrowd13getAgentCountEv(ptr noundef nonnull align 8 dereferenceable(5072) %i.dl) #15
  %i.fj = icmp slt i32 %i.fh, %i.fi
  br i1 %i.fj, label %bb.m, label %.loopexit83, !llvm.loop !185

.loopexit83:                                      ; preds = %.loopexit, %.preheader82, %bb.l, %.loopexit85
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 98969
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !204, !range !56, !noundef !57
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit, label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %.loopexit83
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  store ptr %i.fo, ptr %i.fn, align 8, !tbaa !207
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.fp, align 8, !tbaa !210
  store i8 0, ptr %i.fo, align 8, !tbaa !87
  call void @_ZN11GraphParams7setRectEiiiii(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 300, i32 noundef 10, i32 noundef 500, i32 noundef 200, i32 noundef 8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.fq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.fq, ptr %6, align 8, !tbaa !207
  store i16 29549, ptr %i.fq, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 2, ptr %i.fr, align 8, !tbaa !210
  %i.fs = getelementptr inbounds nuw i8, ptr %6, i64 18
  store i8 0, ptr %i.fs, align 2, !tbaa !87
  call void @_ZN11GraphParams13setValueRangeEffiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %5, float noundef 0.000000e+00, float noundef 2.000000e+00, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(32) %6) #15
  %i.ft = load ptr, ptr %6, align 8, !tbaa !211   ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.fq
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.fv = load i64, ptr %i.fq, align 8, !tbaa !87
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fw) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @_Z19drawGraphBackgroundPK11GraphParams(ptr noundef nonnull %5) #15
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 98896
  call void @_Z9drawGraphPK11GraphParamsPK12ValueHistoryiPKcj(ptr noundef nonnull %5, ptr noundef nonnull %i.fx, i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef -16744193) #15
  call void @_ZN11GraphParams7setRectEiiiii(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 300, i32 noundef 10, i32 noundef 500, i32 noundef 50, i32 noundef 8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.fy, ptr %7, align 8, !tbaa !207
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.fz, align 8, !tbaa !210
  store i8 0, ptr %i.fy, align 8, !tbaa !87
  call void @_ZN11GraphParams13setValueRangeEffiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %5, float noundef 0.000000e+00, float noundef 2.000000e+03, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %7) #15
  %i.ga = load ptr, ptr %7, align 8, !tbaa !211   ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.fy
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit77
  %i.gc = load i64, ptr %i.fy, align 8, !tbaa !87
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 98928
  call void @_Z9drawGraphPK11GraphParamsPK12ValueHistoryiPKcj(ptr noundef nonnull %5, ptr noundef nonnull %i.ge, i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef -2141167520) #15
  %i.gf = load ptr, ptr %i.fn, align 8, !tbaa !211 ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.fo
  br i1 %i.gg, label %_ZN11GraphParamsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %i.gh = load i64, ptr %i.fo, align 8, !tbaa !87
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #16
  br label %_ZN11GraphParamsD2Ev.exit

_ZN11GraphParamsD2Ev.exit:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.t

bb.t:                                             ; preds = %_ZN11GraphParamsD2Ev.exit, %.loopexit83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #15
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #8

declare void @_ZN11GraphParams7setRectEiiiii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN11GraphParams13setValueRangeEffiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64), float noundef, float noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_Z19drawGraphBackgroundPK11GraphParams(ptr noundef) local_unnamed_addr #2

declare void @_Z9drawGraphPK11GraphParamsPK12ValueHistoryiPKcj(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN14CrowdToolState6updateEf(ptr noundef nonnull align 8 dereferenceable(98989) %0, float noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 98988
  %i.b = load i8, ptr %i.a, align 4, !tbaa !36, !range !56, !noundef !57
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN14CrowdToolState10updateTickEf(ptr noundef nonnull align 8 dereferenceable(98989) %0, float noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN14CrowdToolState10updateTickEf(ptr noundef nonnull align 8 dereferenceable(98989) %0, float noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN12ValueHistory9addSampleEf.exit28, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 6 uses
  %i.g = icmp ne ptr %i.d, null
  %i.h = icmp ne ptr %i.f, null
  %or.cond = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.c, label %_ZN12ValueHistory9addSampleEf.exit28

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_Z11getPerfTimev() #15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN7dtCrowd6updateEfP21dtCrowdAgentDebugInfo(ptr noundef nonnull align 8 dereferenceable(5072) %i.f, float noundef %1, ptr noundef nonnull %i.j) #15
  %i.k = tail call noundef i64 @_Z11getPerfTimev() #15
  %i.l = tail call noundef i32 @_ZNK7dtCrowd13getAgentCountEv(ptr noundef nonnull align 8 dereferenceable(5072) %i.f) #15
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.r

._crit_edge:                                      ; preds = %bb.t, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38
  tail call void @_ZN28dtObstacleAvoidanceDebugData16normalizeSamplesEv(ptr noundef nonnull align 8 dereferenceable(64) %i.p) #15
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 98928 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 5060
  %i.s = load i32, ptr %i.r, align 4, !tbaa !213
  %i.t = sitofp i32 %i.s to float                 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 98936 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !31   ; 4 uses
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !30   ; 5 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 6 uses
  %i.aa = ashr exact i64 %i.z, 2                  ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 256
  br i1 %i.ab, label %bb.d, label %bb.j

bb.d:                                             ; preds = %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 98944 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !32
  %.not.i.i = icmp eq ptr %i.v, %i.ad
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store float %i.t, ptr %i.v, align 4, !tbaa !71
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store ptr %i.ae, ptr %i.u, align 8, !tbaa !31
  br label %_ZN12ValueHistory9addSampleEf.exit

bb.f:                                             ; preds = %bb.d
  %i.af = icmp eq i64 %i.z, 9223372036854775804
  br i1 %i.af, label %bb.g, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #17
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ag = add nuw nsw i64 %.sroa.speculated.i.i.i.i, %i.aa ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #14 ; 4 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.z ; 2 uses
  store float %i.t, ptr %i.aj, align 4, !tbaa !71
  %i.ak = icmp sgt i64 %i.z, 0
  br i1 %i.ak, label %bb.h, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.w, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.z) #16
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ai, ptr %i.q, align 8, !tbaa !30
  store ptr %i.al, ptr %i.u, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.am, ptr %i.ac, align 8, !tbaa !32
  br label %_ZN12ValueHistory9addSampleEf.exit

bb.j:                                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 98952 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !214 ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ap
  store float %i.t, ptr %i.aq, align 4, !tbaa !71
  %i.ar = add nsw i32 %i.ao, 1
  %i.as = srem i32 %i.ar, 256
  store i32 %i.as, ptr %i.an, align 8, !tbaa !214
  br label %_ZN12ValueHistory9addSampleEf.exit

_ZN12ValueHistory9addSampleEf.exit:               ; preds = %bb.e, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 98896 ; 2 uses
  %i.au = sub nsw i64 %i.k, %i.i
  %i.av = tail call noundef i32 @_Z15getPerfTimeUsecl(i64 noundef %i.au) #15
  %i.aw = sitofp i32 %i.av to float
  %i.ax = fdiv float %i.aw, 1.000000e+03          ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 98904 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !31 ; 4 uses
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !30 ; 5 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 6 uses
  %i.be = ashr exact i64 %i.bd, 2                 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 256
  br i1 %i.bf, label %bb.k, label %bb.q

bb.k:                                             ; preds = %_ZN12ValueHistory9addSampleEf.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 98912 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !32
  %.not.i.i22 = icmp eq ptr %i.az, %i.bh
  br i1 %.not.i.i22, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store float %i.ax, ptr %i.az, align 4, !tbaa !71
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store ptr %i.bi, ptr %i.ay, align 8, !tbaa !31
  br label %_ZN12ValueHistory9addSampleEf.exit28

bb.m:                                             ; preds = %bb.k
  %i.bj = icmp eq i64 %i.bd, 9223372036854775804
  br i1 %i.bj, label %bb.n, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i23

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #17
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i23: ; preds = %bb.m
  %.sroa.speculated.i.i.i.i24 = tail call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bk = add nuw nsw i64 %.sroa.speculated.i.i.i.i24, %i.be ; 2 uses
  %i.bl = shl nuw nsw i64 %i.bk, 2
  %i.bm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #14 ; 4 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.bd ; 2 uses
  store float %i.ax, ptr %i.bn, align 4, !tbaa !71
  %i.bo = icmp sgt i64 %i.bd, 0
  br i1 %i.bo, label %bb.o, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i25

bb.o:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i23
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bm, ptr align 4 %i.ba, i64 %i.bd, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i25

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i25: ; preds = %bb.o, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i23
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %.not.i17.i.i.i26 = icmp eq ptr %i.ba, null
  br i1 %.not.i17.i.i.i26, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i27, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i25
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bd) #16
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i27

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i27: ; preds = %bb.p, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i25
  store ptr %i.bm, ptr %i.at, align 8, !tbaa !30
  store ptr %i.bp, ptr %i.ay, align 8, !tbaa !31
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bk
  store ptr %i.bq, ptr %i.bg, align 8, !tbaa !32
  br label %_ZN12ValueHistory9addSampleEf.exit28

bb.q:                                             ; preds = %_ZN12ValueHistory9addSampleEf.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 98920 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !214 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bt
  store float %i.ax, ptr %i.bu, align 4, !tbaa !71
  %i.bv = add nsw i32 %i.bs, 1
  %i.bw = srem i32 %i.bv, 256
  store i32 %i.bw, ptr %i.br, align 8, !tbaa !214
  br label %_ZN12ValueHistory9addSampleEf.exit28

bb.r:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 3 uses
  %i.bx = trunc nuw nsw i64 %indvars.iv to i32
  %i.by = tail call noundef ptr @_ZN7dtCrowd8getAgentEi(ptr noundef nonnull align 8 dereferenceable(5072) %i.f, i32 noundef %i.bx) #15 ; 4 uses
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !67, !range !56, !noundef !57
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw [772 x i8], ptr %i.n, i64 %indvars.iv ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 768 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !85
  %i.ce = add nsw i32 %i.cd, 1
  %i.cf = srem i32 %i.ce, 64                      ; 2 uses
  store i32 %i.cf, ptr %i.cc, align 4, !tbaa !85
  %i.cg = mul nsw i32 %i.cf, 3
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.ch ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 416
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !71
  store float %i.ck, ptr %i.ci, align 4, !tbaa !71
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 420
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !71
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store float %i.cm, ptr %i.cn, align 4, !tbaa !71
  %i.co = getelementptr inbounds nuw i8, ptr %i.by, i64 424
  %i.cp = load float, ptr %i.co, align 8, !tbaa !71
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store float %i.cp, ptr %i.cq, align 4, !tbaa !71
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cr = tail call noundef i32 @_ZNK7dtCrowd13getAgentCountEv(ptr noundef nonnull align 8 dereferenceable(5072) %i.f) #15
  %i.cs = sext i32 %i.cr to i64
  %i.ct = icmp slt i64 %indvars.iv.next, %i.cs
  br i1 %i.ct, label %bb.r, label %._crit_edge, !llvm.loop !212

_ZN12ValueHistory9addSampleEf.exit28:             ; preds = %bb.q, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i27, %bb.l, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN14CrowdToolState8addAgentEPKf(ptr noundef nonnull align 8 dereferenceable(98989) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %struct.dtCrowdAgentParams, align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.g = load float, ptr %i.f, align 8, !tbaa !53 ; 2 uses
  store float %i.g, ptr %2, align 8, !tbaa !219
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.i = load float, ptr %i.h, align 4, !tbaa !220
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.i, ptr %i.j, align 4, !tbaa !221
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> <float 8.000000e+00, float 3.500000e+00>, ptr %i.k, align 8, !tbaa !71
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = insertelement <2 x float> poison, float %i.g, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x float> %i.n, <float 1.200000e+01, float 3.000000e+01>
  store <2 x float> %i.o, ptr %i.l, align 8, !tbaa !71
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 98971
  %i.r = load i8, ptr %i.q, align 1, !tbaa !95, !range !56, !noundef !57 ; 3 uses
  store i8 %i.r, ptr %i.p, align 4, !tbaa !96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 98972
  %i.t = load i8, ptr %i.s, align 4, !tbaa !97, !range !56, !noundef !57
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = or disjoint i8 %i.r, 8                   ; 2 uses
  store i8 %i.v, ptr %i.p, align 4, !tbaa !96
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = phi i8 [ %i.v, %bb.c ], [ %i.r, %bb.b ]  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 98973
  %i.y = load i8, ptr %i.x, align 1, !tbaa !98, !range !56, !noundef !57
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = or i8 %i.w, 16                          ; 2 uses
  store i8 %i.aa, ptr %i.p, align 4, !tbaa !96
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = phi i8 [ %i.aa, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 98974
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !99, !range !56, !noundef !57
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = or i8 %i.ab, 2                          ; 2 uses
  store i8 %i.af, ptr %i.p, align 4, !tbaa !96
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ag = phi i8 [ %i.af, %bb.g ], [ %i.ab, %bb.f ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 98980
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !100, !range !56, !noundef !57
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = or i8 %i.ag, 4
  store i8 %i.ak, ptr %i.p, align 4, !tbaa !96
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 98976
  %i.am = load i32, ptr %i.al, align 8, !tbaa !101
  %i.an = trunc i32 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 29
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !102
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 98984
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !103
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24
  store float %i.aq, ptr %i.ar, align 8, !tbaa !104
  %i.as = call noundef i32 @_ZN7dtCrowd8addAgentEPKfPK18dtCrowdAgentParams(ptr noundef nonnull align 8 dereferenceable(5072) %i.d, ptr noundef %1, ptr noundef nonnull %2) #15 ; 3 uses
  %.not15 = icmp eq i32 %i.as, -1
  br i1 %.not15, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.au = load i32, ptr %i.at, align 4, !tbaa !70 ; 2 uses
  %.not16 = icmp eq i32 %i.au, 0
  br i1 %.not16, label %vector.memcheck, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = call noundef zeroext i1 @_ZN7dtCrowd17requestMoveTargetEijPKf(ptr noundef nonnull align 8 dereferenceable(5072) %i.d, i32 noundef %i.as, i32 noundef %i.au, ptr noundef nonnull %i.av) #15 ; 0 uses
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.l, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ay = sext i32 %i.as to i64                   ; 2 uses
  %i.az = getelementptr inbounds [772 x i8], ptr %i.ax, i64 %i.ay ; 20 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bc = mul nsw i64 %i.ay, 772
  %i.bd = getelementptr i8, ptr %0, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 848
  %i.bf = getelementptr i8, ptr %1, i64 12
  %bound0 = icmp ult ptr %i.az, %i.bf
  %bound1 = icmp ult ptr %1, %i.be
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %i.bg = load float, ptr %i.bb, align 4, !tbaa !71, !alias.scope !222
  %broadcast.splatinsert24 = insertelement <4 x float> poison, float %i.bg, i64 0 ; 16 uses
  %i.bh = load float, ptr %i.ba, align 4, !tbaa !71, !alias.scope !222
  %broadcast.splatinsert22 = insertelement <4 x float> poison, float %i.bh, i64 0 ; 16 uses
  %i.bi = load float, ptr %1, align 4, !tbaa !71, !alias.scope !222
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bi, i64 0 ; 16 uses
  %i.bj = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.bk = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.bj, <8 x float> %i.bk, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.az, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bm = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.bn = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.1 = shufflevector <8 x float> %i.bm, <8 x float> %i.bn, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.1, ptr %i.bl, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  %i.bp = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.bq = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
end_hunk_0
