Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/Tool_Crowd?download=true
inline.NumInlined: 240
inline.NumDeleted: 127
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN14CrowdToolState13renderOverlayEv:bb.a
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
  br i1 %i.fm, label %._crit_edge.i.i, label %bb.t

._crit_edge.i.i:                                  ; preds = %.loopexit83
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
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.fv = load i64, ptr %i.fq, align 8, !tbaa !87
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fw) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
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

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gc = load i64, ptr %i.fy, align 8, !tbaa !87
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
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
  %2 = add nuw nsw i64 %.sroa.speculated.i.i.i.i, %i.aa ; 2 uses
  %i.ag = shl nuw nsw i64 %2, 2
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #14 ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.z ; 2 uses
  store float %i.t, ptr %i.ai, align 4, !tbaa !71
  %i.aj = icmp sgt i64 %i.z, 0
  br i1 %i.aj, label %bb.h, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr align 4 %i.w, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.z) #16
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ah, ptr %i.q, align 8, !tbaa !30
  store ptr %i.ak, ptr %i.u, align 8, !tbaa !31
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %2
  store ptr %i.al, ptr %i.ac, align 8, !tbaa !32
  br label %_ZN12ValueHistory9addSampleEf.exit

bb.j:                                             ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 98952 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !214 ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ao
  store float %i.t, ptr %i.ap, align 4, !tbaa !71
  %i.aq = add nsw i32 %i.an, 1
  %i.ar = srem i32 %i.aq, 256
  store i32 %i.ar, ptr %i.am, align 8, !tbaa !214
  br label %_ZN12ValueHistory9addSampleEf.exit

_ZN12ValueHistory9addSampleEf.exit:               ; preds = %bb.e, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 98896 ; 2 uses
  %i.at = sub nsw i64 %i.k, %i.i
  %i.au = tail call noundef i32 @_Z15getPerfTimeUsecl(i64 noundef %i.at) #15
  %i.av = sitofp i32 %i.au to float
  %i.aw = fdiv float %i.av, 1.000000e+03          ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 98904 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !31 ; 4 uses
  %i.az = load ptr, ptr %i.as, align 8, !tbaa !30 ; 5 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 6 uses
  %i.bd = ashr exact i64 %i.bc, 2                 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 256
  br i1 %i.be, label %bb.k, label %bb.q

bb.k:                                             ; preds = %_ZN12ValueHistory9addSampleEf.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 98912 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !32
  %.not.i.i22 = icmp eq ptr %i.ay, %i.bg
  br i1 %.not.i.i22, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store float %i.aw, ptr %i.ay, align 4, !tbaa !71
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store ptr %i.bh, ptr %i.ax, align 8, !tbaa !31
  br label %_ZN12ValueHistory9addSampleEf.exit28

bb.m:                                             ; preds = %bb.k
  %i.bi = icmp eq i64 %i.bc, 9223372036854775804
  br i1 %i.bi, label %bb.n, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i23

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #17
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i23: ; preds = %bb.m
  %.sroa.speculated.i.i.i.i24 = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %3 = add nuw nsw i64 %.sroa.speculated.i.i.i.i24, %i.bd ; 2 uses
  %i.bj = shl nuw nsw i64 %3, 2
  %i.bk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #14 ; 4 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bc ; 2 uses
  store float %i.aw, ptr %i.bl, align 4, !tbaa !71
  %i.bm = icmp sgt i64 %i.bc, 0
  br i1 %i.bm, label %bb.o, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i25

bb.o:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i23
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bk, ptr align 4 %i.az, i64 %i.bc, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i25

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i25: ; preds = %bb.o, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i23
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %.not.i17.i.i.i26 = icmp eq ptr %i.az, null
  br i1 %.not.i17.i.i.i26, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i27, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i25
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bc) #16
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i27

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i27: ; preds = %bb.p, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i25
  store ptr %i.bk, ptr %i.as, align 8, !tbaa !30
  store ptr %i.bn, ptr %i.ax, align 8, !tbaa !31
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %3
  store ptr %i.bo, ptr %i.bf, align 8, !tbaa !32
  br label %_ZN12ValueHistory9addSampleEf.exit28

bb.q:                                             ; preds = %_ZN12ValueHistory9addSampleEf.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 98920 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !214 ; 2 uses
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.br
  store float %i.aw, ptr %i.bs, align 4, !tbaa !71
  %i.bt = add nsw i32 %i.bq, 1
  %i.bu = srem i32 %i.bt, 256
  store i32 %i.bu, ptr %i.bp, align 8, !tbaa !214
  br label %_ZN12ValueHistory9addSampleEf.exit28

bb.r:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 3 uses
  %i.bv = trunc nuw nsw i64 %indvars.iv to i32
  %i.bw = tail call noundef ptr @_ZN7dtCrowd8getAgentEi(ptr noundef nonnull align 8 dereferenceable(5072) %i.f, i32 noundef %i.bv) #15 ; 4 uses
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !67, !range !56, !noundef !57
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw [772 x i8], ptr %i.n, i64 %indvars.iv ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 768 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !85
  %i.cc = add nsw i32 %i.cb, 1
  %i.cd = srem i32 %i.cc, 64                      ; 2 uses
  store i32 %i.cd, ptr %i.ca, align 4, !tbaa !85
  %i.ce = mul nsw i32 %i.cd, 3
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cf ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 416
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !71
  store float %i.ci, ptr %i.cg, align 4, !tbaa !71
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 420
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !71
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store float %i.ck, ptr %i.cl, align 4, !tbaa !71
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 424
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !71
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store float %i.cn, ptr %i.co, align 4, !tbaa !71
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cp = tail call noundef i32 @_ZNK7dtCrowd13getAgentCountEv(ptr noundef nonnull align 8 dereferenceable(5072) %i.f) #15
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp slt i64 %indvars.iv.next, %i.cq
  br i1 %i.cr, label %bb.r, label %._crit_edge, !llvm.loop !212

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
  store i8 %i.r, ptr %i.p, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 98972
  %i.t = load i8, ptr %i.s, align 4, !tbaa !96, !range !56, !noundef !57
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = or disjoint i8 %i.r, 8                   ; 2 uses
  store i8 %i.v, ptr %i.p, align 4, !tbaa !97
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = phi i8 [ %i.v, %bb.c ], [ %i.r, %bb.b ]  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 98973
  %i.y = load i8, ptr %i.x, align 1, !tbaa !98, !range !56, !noundef !57
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = or i8 %i.w, 16                          ; 2 uses
  store i8 %i.aa, ptr %i.p, align 4, !tbaa !97
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = phi i8 [ %i.aa, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 98974
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !99, !range !56, !noundef !57
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = or i8 %i.ab, 2                          ; 2 uses
  store i8 %i.af, ptr %i.p, align 4, !tbaa !97
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ag = phi i8 [ %i.af, %bb.g ], [ %i.ab, %bb.f ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 98980
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !100, !range !56, !noundef !57
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = or i8 %i.ag, 4
  store i8 %i.ak, ptr %i.p, align 4, !tbaa !97
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
  %scevgep = getelementptr i8, ptr %i.bd, i64 848
  %scevgep21 = getelementptr i8, ptr %1, i64 12
  %bound0 = icmp ult ptr %i.az, %scevgep21
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %i.be = load float, ptr %i.bb, align 4, !tbaa !71, !alias.scope !222
  %broadcast.splatinsert24 = insertelement <4 x float> poison, float %i.be, i64 0 ; 16 uses
  %i.bf = load float, ptr %i.ba, align 4, !tbaa !71, !alias.scope !222
  %broadcast.splatinsert22 = insertelement <4 x float> poison, float %i.bf, i64 0 ; 16 uses
  %i.bg = load float, ptr %1, align 4, !tbaa !71, !alias.scope !222
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bg, i64 0 ; 16 uses
  %i.bh = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.bi = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.bh, <8 x float> %i.bi, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.az, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bk = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.bl = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.1 = shufflevector <8 x float> %i.bk, <8 x float> %i.bl, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.1, ptr %i.bj, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  %i.bn = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.bo = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.2 = shufflevector <8 x float> %i.bn, <8 x float> %i.bo, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.2, ptr %i.bm, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.bp = getelementptr inbounds nuw i8, ptr %i.az, i64 144
  %i.bq = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.br = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.3 = shufflevector <8 x float> %i.bq, <8 x float> %i.br, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
end_hunk_0
begin_hunk_1_@_ZN9CrowdTool7onClickEPKfS1_b:bb.a
  %i.al = xor i16 %i.ak, 16                       ; 2 uses
  store i16 %i.al, ptr %i.c, align 2, !tbaa !94
  %i.am = load i32, ptr %i.b, align 4, !tbaa !68
  %i.an = call noundef i32 @_ZN9dtNavMesh12setPolyFlagsEjt(ptr noundef nonnull align 8 dereferenceable(100) %i.aa, i32 noundef %i.am, i16 noundef zeroext %i.al) #15 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZN14CrowdToolState11removeAgentEi.exit

_ZN14CrowdToolState11removeAgentEi.exit:          ; preds = %bb.j, %bb.i, %bb.h, %bb.c, %bb.k, %bb.m, %bb.l, %bb.g, %bb.e, %bb.s, %bb.n, %bb.d, %bb.b, %bb.a
  ret void
}

declare void @_ZN13dtQueryFilterC1Ev(ptr noundef nonnull align 4 dereferenceable(260)) unnamed_addr #2

declare noundef i32 @_ZNK9dtNavMesh12getPolyFlagsEjPt(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN9dtNavMesh12setPolyFlagsEjt(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9CrowdTool10singleStepEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN14CrowdToolState10updateTickEf(ptr noundef nonnull align 8 dereferenceable(98989) %i.b, float noundef 5.000000e-02)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !111
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 98988
  store i8 0, ptr %i.d, align 4, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN9CrowdTool8onToggleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 98988 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !36, !range !56, !noundef !57
  %i.e = xor i8 %i.d, 1
  store i8 %i.e, ptr %i.c, align 4, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN9CrowdTool6updateEf(ptr nofree nonnull readnone align 8 captures(none) %0, float %1) unnamed_addr #5 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN9CrowdTool6renderEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9CrowdTool13drawOverlayUIEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0) unnamed_addr #7 align 2 {
bb.a:
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImVec2, align 8             ; 4 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !112
  switch i8 %i.b, label %bb.e [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN5ImGui21GetForegroundDrawListEv() #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store <2 x float> <float 2.800000e+02, float 4.000000e+01>, ptr %7, align 8, !tbaa !71
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %i.c, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef -1056964609, ptr noundef nonnull @.str.34, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN5ImGui21GetForegroundDrawListEv() #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store <2 x float> <float 2.800000e+02, float 4.000000e+01>, ptr %6, align 8, !tbaa !71
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %i.d, ptr noundef nonnull align 4 dereferenceable(8) %6, i32 noundef -1056964609, ptr noundef nonnull @.str.35, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.e = call noundef ptr @_ZN5ImGui21GetForegroundDrawListEv() #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store <2 x float> <float 2.800000e+02, float 6.000000e+01>, ptr %5, align 8, !tbaa !71
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %i.e, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef -1056964609, ptr noundef nonnull @.str.36, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN5ImGui21GetForegroundDrawListEv() #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store <2 x float> <float 2.800000e+02, float 4.000000e+01>, ptr %4, align 8, !tbaa !71
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %i.f, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef -1056964609, ptr noundef nonnull @.str.37, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d, %bb.b
  %i.g = call noundef ptr @_ZN5ImGui21GetForegroundDrawListEv() #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store <2 x float> <float 2.800000e+02, float 6.000000e+01>, ptr %3, align 8, !tbaa !71
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef nonnull align 4 dereferenceable(8) %3, i32 noundef -1056964609, ptr noundef nonnull @.str.38, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !111  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 98988
  %i.k = load i8, ptr %i.j, align 4, !tbaa !36, !range !56, !noundef !57
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = call noundef ptr @_ZN5ImGui21GetForegroundDrawListEv() #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store <2 x float> <float 2.800000e+02, float 8.000000e+01>, ptr %2, align 8, !tbaa !71
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %i.m, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef -15720193, ptr noundef nonnull @.str.39, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.n = call noundef ptr @_ZN5ImGui21GetForegroundDrawListEv() #15
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  store <2 x float> <float 2.800000e+02, float 8.000000e+01>, ptr %1, align 8, !tbaa !71
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef -2130706433, ptr noundef nonnull @.str.40, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10SampleToolD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9CrowdToolD0Ev(ptr noundef nonnull align 8 dereferenceable(25) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZN9CrowdTool4typeEv(ptr noundef nonnull align 8 dereferenceable(25) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i8 8
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

declare void @_ZNK8AppState13worldToScreenEfffPfS0_(ptr noundef nonnull align 8 dereferenceable(936), float noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef, ptr noundef, i1 noundef zeroext, float noundef) local_unnamed_addr #2

declare noundef ptr @_ZN5ImGui21GetForegroundDrawListEv() local_unnamed_addr #2

declare void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #6

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { builtin nounwind allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"vtable pointer", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"_ZTS15SampleToolState"}
!15 = !{!"any pointer", !8, i64 0}
!16 = !{!"p1 _ZTS6Sample", !15, i64 0}
!17 = !{!"p1 _ZTS28dtObstacleAvoidanceDebugData", !15, i64 0}
!18 = !{!"_ZTS21dtCrowdAgentDebugInfo", !9, i64 0, !8, i64 4, !8, i64 16, !17, i64 32}
!19 = !{!"p1 float", !15, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !20, i64 0}
!22 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !21, i64 0}
!23 = !{!"_ZTSSt6vectorIfSaIfEE", !22, i64 0}
!24 = !{!"_ZTS12ValueHistory", !23, i64 0, !9, i64 24}
!25 = !{!"bool", !8, i64 0}
!26 = !{!"float", !8, i64 0}
!27 = !{!"_ZTS15CrowdToolParams", !25, i64 0, !25, i64 1, !25, i64 2, !25, i64 3, !25, i64 4, !25, i64 5, !25, i64 6, !25, i64 7, !25, i64 8, !25, i64 9, !25, i64 10, !25, i64 11, !25, i64 12, !25, i64 13, !25, i64 14, !9, i64 16, !25, i64 20, !26, i64 24}
!28 = !{!"_ZTS14CrowdToolState", !14, i64 0, !16, i64 8, !8, i64 16, !9, i64 28, !18, i64 32, !17, i64 72, !8, i64 80, !24, i64 98896, !24, i64 98928, !27, i64 98960, !25, i64 98988}
!29 = !{!28, !17, i64 72}
!30 = !{!20, !19, i64 0}
!31 = !{!20, !19, i64 8}
!32 = !{!20, !19, i64 16}
!33 = !{!27, !9, i64 16}
!34 = !{!27, !25, i64 20}
!35 = !{!27, !26, i64 24}
!36 = !{!28, !25, i64 98988}
!37 = !{!28, !9, i64 32}
!38 = !{!28, !17, i64 64}
!39 = !{!28, !16, i64 8}
!40 = !{!"p1 _ZTS9InputGeom", !15, i64 0}
!41 = !{!"p1 _ZTS9dtNavMesh", !15, i64 0}
!42 = !{!"p1 _ZTS14dtNavMeshQuery", !15, i64 0}
!43 = !{!"p1 _ZTS7dtCrowd", !15, i64 0}
!44 = !{!"_ZTS11duDebugDraw"}
!45 = !{!"_ZTS11DebugDrawGL", !44, i64 0}
!46 = !{!"_ZTS15SampleDebugDraw", !45, i64 0}
!47 = !{!"_ZTS19SamplePartitionType", !8, i64 0}
!48 = !{!"p1 _ZTS10SampleTool", !15, i64 0}
!49 = !{!"p1 _ZTS12BuildContext", !15, i64 0}
!50 = !{!"_ZTS6Sample", !40, i64 8, !41, i64 16, !42, i64 24, !43, i64 32, !46, i64 40, !8, i64 48, !26, i64 52, !26, i64 56, !26, i64 60, !26, i64 64, !26, i64 68, !26, i64 72, !26, i64 76, !26, i64 80, !26, i64 84, !26, i64 88, !9, i64 92, !26, i64 96, !26, i64 100, !47, i64 104, !25, i64 105, !25, i64 106, !25, i64 107, !48, i64 112, !8, i64 120, !49, i64 192}
!51 = !{!50, !41, i64 16}
!52 = !{!50, !43, i64 32}
!53 = !{!50, !26, i64 64}
!54 = !{!"short", !8, i64 0}
!55 = !{!28, !25, i64 98968}
!56 = !{i8 0, i8 2}
!57 = !{}
!58 = !{!"_ZTS11dtPathQueue", !8, i64 0, !9, i64 576, !9, i64 580, !9, i64 584, !42, i64 592}
!59 = !{!58, !42, i64 592}
!60 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!61 = !{!28, !25, i64 98970}
!62 = !{!"p1 int", !15, i64 0}
!63 = !{!"_ZTS14dtPathCorridor", !8, i64 0, !8, i64 12, !62, i64 24, !9, i64 32, !9, i64 36}
!64 = !{!"_ZTS15dtLocalBoundary", !8, i64 0, !8, i64 12, !9, i64 236, !8, i64 240, !9, i64 304}
!65 = !{!"_ZTS18dtCrowdAgentParams", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20, !26, i64 24, !8, i64 28, !8, i64 29, !8, i64 30, !15, i64 32}
!66 = !{!"_ZTS12dtCrowdAgent", !25, i64 0, !8, i64 1, !25, i64 2, !63, i64 8, !64, i64 48, !26, i64 356, !8, i64 360, !9, i64 408, !26, i64 412, !8, i64 416, !8, i64 428, !8, i64 440, !8, i64 452, !8, i64 464, !65, i64 480, !8, i64 520, !8, i64 568, !8, i64 572, !9, i64 588, !8, i64 592, !9, i64 596, !8, i64 600, !9, i64 612, !25, i64 616, !26, i64 620}
!67 = !{!66, !25, i64 0}
!68 = !{!9, !9, i64 0}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!28, !9, i64 28}
!71 = !{!26, !26, i64 0}
!72 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!73 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!74 = !{!"p1 _ZTS12dtCrowdAgent", !15, i64 0}
!75 = !{!"any p2 pointer", !15, i64 0}
!76 = !{!"p2 _ZTS12dtCrowdAgent", !75, i64 0}
!77 = !{!"p1 _ZTS21dtCrowdAgentAnimation", !15, i64 0}
!78 = !{!"p1 _ZTS24dtObstacleAvoidanceQuery", !15, i64 0}
!79 = !{!"p1 _ZTS15dtProximityGrid", !15, i64 0}
!80 = !{!"_ZTS7dtCrowd", !9, i64 0, !74, i64 8, !76, i64 16, !77, i64 24, !58, i64 32, !8, i64 632, !78, i64 856, !79, i64 864, !62, i64 872, !9, i64 880, !8, i64 884, !8, i64 896, !26, i64 5056, !9, i64 5060, !42, i64 5064}
!81 = !{!"p1 short", !15, i64 0}
!82 = !{!"llvm.loop.unswitch.partial.disable"}
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!84 = !{!"_ZTSN14CrowdToolState10AgentTrailE", !8, i64 0, !9, i64 768}
!85 = !{!84, !9, i64 768}
!86 = !{!66, !26, i64 480}
!87 = !{!8, !8, i64 0}
!88 = !{!28, !25, i64 98965}
!89 = !{!66, !9, i64 408}
!90 = !{!"_ZTS16dtCrowdNeighbour", !9, i64 0, !26, i64 4}
!91 = !{!90, !9, i64 0}
!92 = !{!66, !26, i64 484}
!93 = !{!66, !26, i64 492}
!94 = !{!54, !54, i64 0}
!95 = !{!28, !25, i64 98971}
!96 = !{!28, !25, i64 98972}
!97 = !{!65, !8, i64 28}
!98 = !{!28, !25, i64 98973}
!99 = !{!28, !25, i64 98974}
!100 = !{!28, !25, i64 98980}
!101 = !{!28, !9, i64 98976}
!102 = !{!65, !8, i64 29}
!103 = !{!28, !26, i64 98984}
!104 = !{!65, !26, i64 24}
!105 = !{!50, !42, i64 24}
!106 = !{!"_ZTS10SampleTool"}
!107 = !{!"p1 _ZTS14CrowdToolState", !15, i64 0}
!108 = !{!"_ZTSN9CrowdTool8ToolModeE", !8, i64 0}
!109 = !{!"_ZTS9CrowdTool", !106, i64 0, !16, i64 8, !107, i64 16, !108, i64 24}
!110 = !{!109, !16, i64 8}
!111 = !{!109, !107, i64 16}
!112 = !{!109, !108, i64 24}
!113 = !{ptr @_ZN14CrowdToolStateD2Ev}
!114 = !{!"_ZTS13dtQueryFilter", !8, i64 0, !54, i64 256, !54, i64 258}
!115 = !{!114, !54, i64 258}
!116 = !{!"_ZTS25dtObstacleAvoidanceParams", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20, !8, i64 24, !8, i64 25, !8, i64 26, !8, i64 27}
!117 = !{!116, !26, i64 0}
!118 = !{!116, !8, i64 25}
!119 = !{!116, !8, i64 26}
!120 = !{!116, !8, i64 27}
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "duDebugDraw", file: !139, line: 34, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS11duDebugDraw")
!122 = distinct !{!122, !69}
!123 = distinct !{!123, !69}
!124 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "duDebugDrawPrimitives", file: !139, line: 25, baseType: !73, size: 32, elements: !155, identifier: "_ZTS21duDebugDrawPrimitives")
!125 = distinct !{!125, !69}
!126 = distinct !{!126, !69, !82}
!127 = distinct !{!127, !69}
!128 = distinct !{!128, !69}
!129 = distinct !{!129, !69}
!130 = distinct !{!130, !69, !168}
!131 = distinct !{!131, !69}
!132 = distinct !{!132, !69}
!133 = distinct !{!133, !69}
!134 = distinct !{!134, !69}
!135 = distinct !{!135, !69}
!136 = distinct !{!136, !69}
!137 = distinct !{!137, !69}
!138 = distinct !{!138, !69}
!139 = !DIFile(filename: "DebugUtils/Include/DebugDraw.h", directory: "/opt-bench/work/recastnavigation/recastnavigation", checksumkind: CSK_MD5, checksum: "09838c8e0741aa24e01b8f37d2baac38")
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!141 = !{null, !140, !60}
!142 = !DISubroutineType(types: !141)
!143 = !DISubprogram(name: "depthMask", linkageName: "_ZN11duDebugDraw9depthMaskEb", scope: !121, file: !139, line: 38, type: !142, scopeLine: 38, containingType: !121, virtualIndex: 2, flags: DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!144 = !{!28, !25, i64 98962}
!145 = !{!63, !62, i64 24}
!146 = !{!63, !9, i64 32}
!147 = !{!28, !25, i64 98967}
!148 = !{null, !140, !124, !72}
!149 = !DISubroutineType(types: !148)
!150 = !DISubprogram(name: "begin", linkageName: "_ZN11duDebugDraw5beginE21duDebugDrawPrimitivesf", scope: !121, file: !139, line: 45, type: !149, scopeLine: 45, containingType: !121, virtualIndex: 4, flags: DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!151 = !DIEnumerator(name: "DU_DRAW_POINTS", value: 0, isUnsigned: true)
!152 = !DIEnumerator(name: "DU_DRAW_LINES", value: 1, isUnsigned: true)
!153 = !DIEnumerator(name: "DU_DRAW_TRIS", value: 2, isUnsigned: true)
!154 = !DIEnumerator(name: "DU_DRAW_QUADS", value: 3, isUnsigned: true)
!155 = !{!151, !152, !153, !154}
!156 = !{!80, !79, i64 864}
!157 = !{!"p1 _ZTSN15dtProximityGrid4ItemE", !15, i64 0}
!158 = !{!"_ZTS15dtProximityGrid", !26, i64 0, !26, i64 4, !157, i64 8, !9, i64 16, !9, i64 20, !81, i64 24, !9, i64 32, !8, i64 36}
!159 = !{!158, !26, i64 0}
!160 = !{null, !140}
!161 = !DISubroutineType(types: !160)
!162 = !DISubprogram(name: "end", linkageName: "_ZN11duDebugDraw3endEv", scope: !121, file: !139, line: 70, type: !161, scopeLine: 70, containingType: !121, virtualIndex: 9, flags: DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!163 = !{null, !140, !83, !83, !83, !73}
!164 = !DISubroutineType(types: !163)
!165 = !DISubprogram(name: "vertex", linkageName: "_ZN11duDebugDraw6vertexEfffj", scope: !121, file: !139, line: 55, type: !164, scopeLine: 55, containingType: !121, virtualIndex: 6, flags: DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!166 = !{!28, !25, i64 98960}
!167 = !{!66, !9, i64 588}
!168 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_1
