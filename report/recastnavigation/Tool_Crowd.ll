Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/Tool_Crowd?download=true
inline.NumInlined: 240
inline.NumDeleted: 127
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN14CrowdToolState10updateTickEf:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38
  tail call void @_ZN28dtObstacleAvoidanceDebugData16normalizeSamplesEv(ptr noundef nonnull align 8 dereferenceable(64) %i.p) #16
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #18
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ag = add nuw nsw i64 %.sroa.speculated.i.i.i.i, %i.aa ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #15 ; 4 uses
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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.z) #17
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
  %i.av = tail call noundef i32 @_Z15getPerfTimeUsecl(i64 noundef %i.au) #16
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #18
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i23: ; preds = %bb.m
  %.sroa.speculated.i.i.i.i24 = tail call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bk = add nuw nsw i64 %.sroa.speculated.i.i.i.i24, %i.be ; 2 uses
  %i.bl = shl nuw nsw i64 %i.bk, 2
  %i.bm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #15 ; 4 uses
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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bd) #17
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
  %i.by = tail call noundef ptr @_ZN7dtCrowd8getAgentEi(ptr noundef nonnull align 8 dereferenceable(5072) %i.f, i32 noundef %i.bx) #16 ; 4 uses
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
  %i.cr = tail call noundef i32 @_ZNK7dtCrowd13getAgentCountEv(ptr noundef nonnull align 8 dereferenceable(5072) %i.f) #16
  %i.cs = sext i32 %i.cr to i64
  %i.ct = icmp slt i64 %indvars.iv.next, %i.cs
  br i1 %i.ct, label %bb.r, label %._crit_edge, !llvm.loop !212

_ZN12ValueHistory9addSampleEf.exit28:             ; preds = %bb.q, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i27, %bb.l, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN14CrowdToolState8addAgentEPKf(ptr noundef nonnull align 8 dereferenceable(98989) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %struct.dtCrowdAgentParams, align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
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
  %i.l = insertelement <2 x float> poison, float %i.g, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = fmul <2 x float> %i.m, <float 1.200000e+01, float 3.000000e+01>
  %3 = shufflevector <2 x float> <float 8.000000e+00, float 3.500000e+00>, <2 x float> %i.n, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %3, ptr %i.k, align 8, !tbaa !71
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 98971
  %i.q = load i8, ptr %i.p, align 1, !tbaa !95, !range !56, !noundef !57 ; 3 uses
  store i8 %i.q, ptr %i.o, align 4, !tbaa !96
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 98972
  %i.s = load i8, ptr %i.r, align 4, !tbaa !97, !range !56, !noundef !57
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = or disjoint i8 %i.q, 8                   ; 2 uses
  store i8 %i.u, ptr %i.o, align 4, !tbaa !96
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = phi i8 [ %i.u, %bb.c ], [ %i.q, %bb.b ]  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 98973
  %i.x = load i8, ptr %i.w, align 1, !tbaa !98, !range !56, !noundef !57
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = or i8 %i.v, 16                           ; 2 uses
  store i8 %i.z, ptr %i.o, align 4, !tbaa !96
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = phi i8 [ %i.z, %bb.e ], [ %i.v, %bb.d ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 98974
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !99, !range !56, !noundef !57
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = or i8 %i.aa, 2                          ; 2 uses
  store i8 %i.ae, ptr %i.o, align 4, !tbaa !96
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = phi i8 [ %i.ae, %bb.g ], [ %i.aa, %bb.f ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 98980
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !100, !range !56, !noundef !57
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = or i8 %i.af, 4
  store i8 %i.aj, ptr %i.o, align 4, !tbaa !96
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 98976
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !101
  %i.am = trunc i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 29
  store i8 %i.am, ptr %i.an, align 1, !tbaa !102
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 98984
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !103
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24
  store float %i.ap, ptr %i.aq, align 8, !tbaa !104
  %i.ar = call noundef i32 @_ZN7dtCrowd8addAgentEPKfPK18dtCrowdAgentParams(ptr noundef nonnull align 8 dereferenceable(5072) %i.d, ptr noundef %1, ptr noundef nonnull %2) #16 ; 3 uses
  %.not15 = icmp eq i32 %i.ar, -1
  br i1 %.not15, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.at = load i32, ptr %i.as, align 4, !tbaa !70 ; 2 uses
  %.not16 = icmp eq i32 %i.at, 0
  br i1 %.not16, label %vector.memcheck, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = call noundef zeroext i1 @_ZN7dtCrowd17requestMoveTargetEijPKf(ptr noundef nonnull align 8 dereferenceable(5072) %i.d, i32 noundef %i.ar, i32 noundef %i.at, ptr noundef nonnull %i.au) #16 ; 0 uses
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.l, %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ax = sext i32 %i.ar to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [772 x i8], ptr %i.aw, i64 %i.ax ; 20 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bb = mul nsw i64 %i.ax, 772
  %i.bc = getelementptr i8, ptr %0, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 848
  %i.be = getelementptr i8, ptr %1, i64 12
  %bound0 = icmp ult ptr %i.ay, %i.be
  %bound1 = icmp ult ptr %1, %i.bd
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %i.bf = load float, ptr %i.ba, align 4, !tbaa !71, !alias.scope !222
  %broadcast.splatinsert24 = insertelement <4 x float> poison, float %i.bf, i64 0 ; 16 uses
  %i.bg = load float, ptr %i.az, align 4, !tbaa !71, !alias.scope !222
  %broadcast.splatinsert22 = insertelement <4 x float> poison, float %i.bg, i64 0 ; 16 uses
  %i.bh = load float, ptr %1, align 4, !tbaa !71, !alias.scope !222
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bh, i64 0 ; 16 uses
  %i.bi = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.bj = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.bi, <8 x float> %i.bj, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.ay, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.bl = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.bm = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.1 = shufflevector <8 x float> %i.bl, <8 x float> %i.bm, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.1, ptr %i.bk, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  %i.bo = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.bp = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.2 = shufflevector <8 x float> %i.bo, <8 x float> %i.bp, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.2, ptr %i.bn, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 144
  %i.br = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.bs = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.3 = shufflevector <8 x float> %i.br, <8 x float> %i.bs, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.3, ptr %i.bq, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ay, i64 192
  %i.bu = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.bv = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.4 = shufflevector <8 x float> %i.bu, <8 x float> %i.bv, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.4, ptr %i.bt, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ay, i64 240
  %i.bx = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.by = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.5 = shufflevector <8 x float> %i.bx, <8 x float> %i.by, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.5, ptr %i.bw, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ay, i64 288
  %i.ca = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.cb = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.6 = shufflevector <8 x float> %i.ca, <8 x float> %i.cb, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.6, ptr %i.bz, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ay, i64 336
  %i.cd = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.ce = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.7 = shufflevector <8 x float> %i.cd, <8 x float> %i.ce, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.7, ptr %i.cc, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ay, i64 384
  %i.cg = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.ch = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.8 = shufflevector <8 x float> %i.cg, <8 x float> %i.ch, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.8, ptr %i.cf, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ay, i64 432
  %i.cj = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.ck = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.9 = shufflevector <8 x float> %i.cj, <8 x float> %i.ck, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.9, ptr %i.ci, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ay, i64 480
  %i.cm = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.cn = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.10 = shufflevector <8 x float> %i.cm, <8 x float> %i.cn, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.10, ptr %i.cl, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.co = getelementptr inbounds nuw i8, ptr %i.ay, i64 528
  %i.cp = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.cq = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.11 = shufflevector <8 x float> %i.cp, <8 x float> %i.cq, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.11, ptr %i.co, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ay, i64 576
  %i.cs = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.ct = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.12 = shufflevector <8 x float> %i.cs, <8 x float> %i.ct, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.12, ptr %i.cr, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ay, i64 624
  %i.cv = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.cw = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.13 = shufflevector <8 x float> %i.cv, <8 x float> %i.cw, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.13, ptr %i.cu, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ay, i64 672
  %i.cy = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.cz = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.14 = shufflevector <8 x float> %i.cy, <8 x float> %i.cz, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.14, ptr %i.cx, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  %i.da = getelementptr inbounds nuw i8, ptr %i.ay, i64 720
  %i.db = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert22, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.dc = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.15 = shufflevector <8 x float> %i.db, <8 x float> %i.dc, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec.15, ptr %i.da, align 4, !tbaa !71, !alias.scope !223, !noalias !222
  br label %middle.block

middle.block:                                     ; preds = %scalar.ph, %vector.body
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ay, i64 768
  store i32 0, ptr %i.dd, align 4, !tbaa !85
  br label %bb.m

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %vector.memcheck ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.de = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx ; 3 uses
  %i.df = load float, ptr %1, align 4, !tbaa !71
  store float %i.df, ptr %i.de, align 4, !tbaa !71
  %i.dg = load float, ptr %i.az, align 4, !tbaa !71
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store float %i.dg, ptr %i.dh, align 4, !tbaa !71
  %i.di = load float, ptr %i.ba, align 4, !tbaa !71
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store float %i.di, ptr %i.dj, align 4, !tbaa !71
  %i.dk = mul nuw i64 %indvars.iv, 12
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.dk ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  %i.dn = load float, ptr %1, align 4, !tbaa !71
  store float %i.dn, ptr %i.dm, align 4, !tbaa !71
end_hunk_0
