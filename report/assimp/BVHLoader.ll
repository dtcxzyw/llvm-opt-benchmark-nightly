inline.NumInlined: 1147
inline.NumDeleted: 488
begin_hunk_0_@_ZN6Assimp9BVHLoader15CreateAnimationEP7aiScene:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
          to label %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEED2Ev.exit unwind label %bb.ak

._crit_edge308.loopexit:                          ; preds = %bb.aj
  %i.jb = extractelement <2 x float> %i.qg, i64 1
  %i.jc = extractelement <2 x float> %i.qg, i64 0
  %i.jd = extractelement <2 x float> %i.qh, i64 0
  %i.je = extractelement <2 x float> %i.qh, i64 1
  br label %._crit_edge308

._crit_edge308:                                   ; preds = %._crit_edge308.loopexit, %.preheader
  %.sroa.0173.0.lcssa.a = phi float [ 1.000000e+00, %.preheader ], [ %i.jb, %._crit_edge308.loopexit ] ; 6 uses
  %.sroa.44.0.lcssa.a = phi float [ 0.000000e+00, %.preheader ], [ %i.je, %._crit_edge308.loopexit ] ; 4 uses
  %.sroa.52.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.jc, %._crit_edge308.loopexit ] ; 4 uses
  %.sroa.74.0.lcssa = phi float [ 1.000000e+00, %.preheader ], [ %i.jd, %._crit_edge308.loopexit ] ; 6 uses
  %.sroa.85.0.lcssa = phi float [ 1.000000e+00, %.preheader ], [ %.sroa.0173.1, %._crit_edge308.loopexit ] ; 6 uses
  %i.jf = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.qf, %._crit_edge308.loopexit ] ; 7 uses
  %i.jg = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.qi, %._crit_edge308.loopexit ] ; 7 uses
  %i.jh = trunc nuw i64 %indvars.iv332 to i32
  %i.ji = uitofp i32 %i.jh to double
  store double %i.ji, ptr %.0107318, align 8
  %i.jj = fadd float %.sroa.74.0.lcssa, %.sroa.85.0.lcssa
  %i.jk = fadd float %.sroa.0173.0.lcssa.a, %i.jj ; 2 uses
  %i.jl = fcmp ogt float %i.jk, 0.000000e+00
  br i1 %i.jl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge308
  %i.jm = fadd float %i.jk, 1.000000e+00
  %i.jn = call noundef float @sqrtf(float noundef %i.jm) #25
  %i.jo = fsub float %.sroa.44.0.lcssa.a, %.sroa.52.0.lcssa
  %i.jp = fmul float %i.jn, 2.000000e+00
  %i.jq = insertelement <4 x float> poison, float %i.jp, i64 0 ; 2 uses
  %i.jr = insertelement <4 x float> %i.jq, float %i.jo, i64 1
  %i.js = shufflevector <2 x float> %i.jg, <2 x float> %i.jf, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.jt = shufflevector <2 x float> %i.jf, <2 x float> %i.jg, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.ju = fsub <4 x float> %i.js, %i.jt
  %i.jv = shufflevector <4 x float> %i.jr, <4 x float> %i.ju, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.jw = shufflevector <4 x float> <float 2.500000e-01, float poison, float poison, float poison>, <4 x float> %i.jq, <4 x i32> <i32 0, i32 4, i32 4, i32 4> ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp9BVHLoader15CreateAnimationEP7aiScene:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.aa:                                            ; preds = %._crit_edge308
  %i.ka = fcmp ogt float %.sroa.85.0.lcssa, %.sroa.74.0.lcssa
  %i.kb = fcmp ogt float %.sroa.85.0.lcssa, %.sroa.0173.0.lcssa.a
  %or.cond.i = and i1 %i.ka, %i.kb
  br i1 %or.cond.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.kc = fadd float %.sroa.85.0.lcssa, 1.000000e+00
  %i.kd = fsub float %i.kc, %.sroa.74.0.lcssa
  %i.ke = fsub float %i.kd, %.sroa.0173.0.lcssa.a
  %i.kf = call noundef float @sqrtf(float noundef %i.ke) #25
  %.scalar = fmul float %i.kf, 2.000000e+00
  %i.kg = insertelement <2 x float> <float poison, float 2.500000e-01>, float %.scalar, i64 0
  %i.kh = shufflevector <2 x float> %i.kg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 3 uses
  %i.ki = fadd <2 x float> %i.jf, %i.jg
  %i.kj = fsub float %.sroa.44.0.lcssa.a, %.sroa.52.0.lcssa
  %i.kk = insertelement <4 x float> poison, float %i.kj, i64 0
  %i.kl = shufflevector <4 x float> %i.kk, <4 x float> %i.kh, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.km = shufflevector <2 x float> %i.ki, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
end_hunk_1
begin_hunk_2_@_ZN6Assimp9BVHLoader15CreateAnimationEP7aiScene:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.ac:                                            ; preds = %bb.aa
  %i.kr = fcmp ogt float %.sroa.74.0.lcssa, %.sroa.0173.0.lcssa.a
  br i1 %i.kr, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ks = fadd float %.sroa.74.0.lcssa, 1.000000e+00
  %i.kt = fsub float %i.ks, %.sroa.85.0.lcssa
  %i.ku = fsub float %i.kt, %.sroa.0173.0.lcssa.a
  %i.kv = call noundef float @sqrtf(float noundef %i.ku) #25
  %i.kw = fmul float %i.kv, 2.000000e+00
  %i.kx = fadd float %.sroa.44.0.lcssa.a, %.sroa.52.0.lcssa
  %i.ky = fsub <2 x float> %i.jg, %i.jf
  %i.kz = fadd <2 x float> %i.jg, %i.jf
  %i.la = shufflevector <2 x float> %i.ky, <2 x float> %i.kz, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.lb = insertelement <4 x float> %i.la, float 2.500000e-01, i64 2
  %i.lc = insertelement <4 x float> %i.lb, float %i.kx, i64 3 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6Assimp9BVHLoader15CreateAnimationEP7aiScene:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.ae:                                            ; preds = %bb.ac
  %i.li = fadd float %.sroa.0173.0.lcssa.a, 1.000000e+00
  %i.lj = fsub float %i.li, %.sroa.85.0.lcssa
  %i.lk = fsub float %i.lj, %.sroa.74.0.lcssa
  %i.ll = call noundef float @sqrtf(float noundef %i.lk) #25
  %i.lm = fmul float %i.ll, 2.000000e+00
  %i.ln = fadd float %.sroa.44.0.lcssa.a, %.sroa.52.0.lcssa
  %i.lo = fsub <2 x float> %i.jf, %i.jg
  %i.lp = fadd <2 x float> %i.jf, %i.jg
  %i.lq = shufflevector <2 x float> %i.lo, <2 x float> %i.lp, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.lr = insertelement <4 x float> %i.lq, float 2.500000e-01, i64 3
  %i.ls = insertelement <4 x float> %i.lr, float %i.ln, i64 2 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6Assimp9BVHLoader15CreateAnimationEP7aiScene:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ly = phi i64 [ 0, %.lr.ph307 ], [ %i.qk, %bb.aj ] ; 4 uses
  %.0105306 = phi i32 [ 0, %.lr.ph307 ], [ %i.qj, %bb.aj ]
  %.sroa.0173.0297 = phi float [ 1.000000e+00, %.lr.ph307 ], [ %.sroa.0173.1, %bb.aj ] ; 8 uses
  %i.lz = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.lr.ph307 ], [ %i.qg, %bb.aj ] ; 10 uses
  %i.ma = phi <2 x float> [ zeroinitializer, %.lr.ph307 ], [ %i.qf, %bb.aj ] ; 10 uses
  %i.mb = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %.lr.ph307 ], [ %i.qh, %bb.aj ] ; 9 uses
  %i.mc = phi <2 x float> [ zeroinitializer, %.lr.ph307 ], [ %i.qi, %bb.aj ] ; 7 uses
  %i.md = extractelement <2 x float> %i.mc, i64 1 ; 5 uses
  %i.me = extractelement <2 x float> %i.mc, i64 0 ; 5 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.ly
end_hunk_4
begin_hunk_5_@_ZN6Assimp9BVHLoader15CreateAnimationEP7aiScene:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.aj:                                            ; preds = %bb.ag, %bb.ah, %bb.ai, %bb.af
  %.sroa.0173.1 = phi float [ %.sroa.0173.0297, %bb.af ], [ %i.ms, %bb.ag ], [ %i.of, %bb.ah ], [ %i.ph, %bb.ai ] ; 2 uses
  %i.qf = phi <2 x float> [ %i.ma, %bb.af ], [ %i.no, %bb.ag ], [ %i.ou, %bb.ah ], [ %i.qb, %bb.ai ] ; 2 uses
  %i.qg = phi <2 x float> [ %i.lz, %bb.af ], [ %i.nq, %bb.ag ], [ %i.ov, %bb.ah ], [ %i.qc, %bb.ai ] ; 3 uses
  %i.qh = phi <2 x float> [ %i.mb, %bb.af ], [ %i.na, %bb.ag ], [ %i.oc, %bb.ah ], [ %i.pv, %bb.ai ] ; 3 uses
  %i.qi = phi <2 x float> [ %i.mc, %bb.af ], [ %i.nj, %bb.ag ], [ %i.on, %bb.ah ], [ %i.qe, %bb.ai ] ; 2 uses
  %i.qj = add i32 %.0105306, 1                    ; 2 uses
  %i.qk = zext i32 %i.qj to i64                   ; 2 uses
  %i.ql = icmp ugt i64 %i.is, %i.qk
end_hunk_5
begin_hunk_6_@_ZN6Assimp9BVHLoader8ReadNodeEv:bb.a
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNSt6vectorIN6Assimp9BVHLoader4NodeESaIS2_EE12emplace_backIJRP6aiNodeEEERS2_DpOT_.exit
  %.sroa.24.0.a = phi ptr [ null, %_ZNSt6vectorIN6Assimp9BVHLoader4NodeESaIS2_EE12emplace_backIJRP6aiNodeEEERS2_DpOT_.exit ], [ %.sroa.24.1.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ] ; 14 uses
  %.sroa.13.0 = phi ptr [ null, %_ZNSt6vectorIN6Assimp9BVHLoader4NodeESaIS2_EE12emplace_backIJRP6aiNodeEEERS2_DpOT_.exit ], [ %.sroa.13.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ] ; 15 uses
  %.sroa.0.0 = phi ptr [ null, %_ZNSt6vectorIN6Assimp9BVHLoader4NodeESaIS2_EE12emplace_backIJRP6aiNodeEEERS2_DpOT_.exit ], [ %.sroa.0.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN6Assimp9BVHLoader12GetNextTokenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %bb.n unwind label %bb.q
end_hunk_6
begin_hunk_7_@_ZN6Assimp9BVHLoader8ReadNodeEv:bb.a
  %i.bb = load ptr, ptr %i.a, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 1096
  store ptr %i.bb, ptr %i.bc, align 8
  %.not.i34 = icmp eq ptr %.sroa.13.0, %.sroa.0.0
  br i1 %.not.i34, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
end_hunk_7
begin_hunk_8_@_ZN6Assimp9BVHLoader8ReadNodeEv:bb.a
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

bb.t:                                             ; preds = %bb.r
  %i.be = ptrtoint ptr %.sroa.13.0 to i64
  %i.bf = ptrtoint ptr %.sroa.24.0.a to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 6 uses
  %i.bh = icmp eq i64 %i.bg, 9223372036854775800
  br i1 %i.bh, label %bb.u, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
end_hunk_8
begin_hunk_9_@_ZN6Assimp9BVHLoader8ReadNodeEv:bb.a
  br i1 %i.bq, label %bb.v, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.v:                                             ; preds = %.noexc36
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bo, ptr align 8 %.sroa.24.0.a, i64 %i.bg, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.v, %.noexc36
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.24.0.a, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.24.0.a, i64 noundef %i.bg) #26
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.w, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
end_hunk_9
begin_hunk_10_@_ZN6Assimp9BVHLoader8ReadNodeEv:bb.a
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

.loopexit114:                                     ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33.thread, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.24.0.lcssa167 = phi ptr [ %.sroa.0.0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33.thread ], [ %.sroa.13.0, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit116 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am
end_hunk_10
begin_hunk_11_@_ZN6Assimp9BVHLoader8ReadNodeEv:bb.a
  %i.cv = load ptr, ptr %i.a, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 1096
  store ptr %i.cv, ptr %i.cw, align 8
  %.not.i43 = icmp eq ptr %.sroa.13.0, %.sroa.0.0
  br i1 %.not.i43, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
end_hunk_11
begin_hunk_12_@_ZN6Assimp9BVHLoader8ReadNodeEv:bb.a
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

bb.ah:                                            ; preds = %bb.af
  %i.cy = ptrtoint ptr %.sroa.13.0 to i64
  %i.cz = ptrtoint ptr %.sroa.24.0.a to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 6 uses
  %i.db = icmp eq i64 %i.da, 9223372036854775800
  br i1 %i.db, label %bb.ai, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i44
end_hunk_12
begin_hunk_13_@_ZN6Assimp9BVHLoader8ReadNodeEv:bb.a
  br i1 %i.dk, label %bb.aj, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i47

bb.aj:                                            ; preds = %.noexc51
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.di, ptr align 8 %.sroa.24.0.a, i64 %i.da, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i47

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i47: ; preds = %bb.aj, %.noexc51
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.not.i17.i.i48 = icmp eq ptr %.sroa.24.0.a, null
  br i1 %.not.i17.i.i48, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i49, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i47
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.24.0.a, i64 noundef %i.da) #26
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i49

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i49: ; preds = %bb.ak, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i47
end_hunk_13
begin_hunk_14_@_ZN6Assimp9BVHLoader8ReadNodeEv:bb.a
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

.loopexit:                                        ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread105, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i44
  %.sroa.24.0.lcssa165 = phi ptr [ %.sroa.0.0, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread105 ], [ %.sroa.13.0, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i44 ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.am
end_hunk_14
begin_hunk_15_@_ZN6Assimp9BVHLoader8ReadNodeEv:bb.a
  unreachable

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.ag, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i49, %bb.s, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %_ZN6Assimp9BVHLoader14ReadNodeOffsetEP6aiNode.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit54
  %.sroa.24.1.a = phi ptr [ %.sroa.24.0.a, %_ZN6Assimp9BVHLoader14ReadNodeOffsetEP6aiNode.exit ], [ %.sroa.24.0.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.thread ], [ %.sroa.24.0.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit54 ], [ %.sroa.24.0.a, %bb.s ], [ %i.bo, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.di, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i49 ], [ %.sroa.24.0.a, %bb.ag ] ; 8 uses
  %.sroa.13.1 = phi ptr [ %.sroa.13.0, %_ZN6Assimp9BVHLoader14ReadNodeOffsetEP6aiNode.exit ], [ %.sroa.13.0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.thread ], [ %.sroa.13.0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit54 ], [ %i.bd, %bb.s ], [ %i.br, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.dl, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i49 ], [ %i.cx, %bb.ag ] ; 3 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %_ZN6Assimp9BVHLoader14ReadNodeOffsetEP6aiNode.exit ], [ %.sroa.0.0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.thread ], [ %.sroa.0.0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit54 ], [ %.sroa.0.0, %bb.s ], [ %i.bs, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.dm, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i49 ], [ %.sroa.0.0, %bb.ag ] ; 3 uses
  %i.do = phi i1 [ true, %_ZN6Assimp9BVHLoader14ReadNodeOffsetEP6aiNode.exit ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.thread ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit54 ], [ true, %bb.s ], [ true, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ true, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i49 ], [ true, %bb.ag ]
  %i.dp = load ptr, ptr %4, align 8               ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.ac
end_hunk_15
begin_hunk_16_@_ZN6Assimp9BVHLoader8ReadNodeEv:bb.a
  br i1 %i.do, label %bb.m, label %bb.an

bb.am:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit114, %.loopexit.split-lp115, %.loopexit119, %.loopexit.split-lp120, %bb.ae
  %.sroa.24.0172 = phi ptr [ %.sroa.0.0, %bb.ae ], [ %.sroa.0.0, %.loopexit.split-lp120 ], [ %.sroa.13.0, %.loopexit.split-lp115 ], [ %.sroa.0.0, %.loopexit119 ], [ %.sroa.24.0.lcssa167, %.loopexit114 ], [ %.sroa.24.0.lcssa165, %.loopexit ], [ %.sroa.13.0, %.loopexit.split-lp ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.ae ], [ %lpad.loopexit.split-lp122, %.loopexit.split-lp120 ], [ %lpad.loopexit.split-lp117, %.loopexit.split-lp115 ], [ %lpad.loopexit121, %.loopexit119 ], [ %lpad.loopexit116, %.loopexit114 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.dt = load ptr, ptr %4, align 8               ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.ac
end_hunk_16
begin_hunk_17_@_ZN6Assimp9BVHLoader8ReadNodeEv:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58, %bb.q
  %.sroa.24.0171 = phi ptr [ %.sroa.0.0, %bb.q ], [ %.sroa.24.0172, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %.sroa.24.0172, %bb.am ]
  %.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.q ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %.pn, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.av

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.dx = ptrtoint ptr %.sroa.13.1 to i64
  %i.dy = ptrtoint ptr %.sroa.24.1.a to i64       ; 2 uses
  %i.dz = sub i64 %i.dx, %i.dy                    ; 5 uses
  %.not = icmp eq ptr %.sroa.13.1, %.sroa.24.1.a
  %.pre190 = load ptr, ptr %i.a, align 8          ; 3 uses
  br i1 %.not, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiNodeSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.ao

end_hunk_17
begin_hunk_18_@_ZN6Assimp9BVHLoader8ReadNodeEv:bb.a
  br i1 %i.eg, label %bb.aq, label %bb.ar, !prof !27

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ee, ptr align 8 %.sroa.24.1.a, i64 %i.dz, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiNodeSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.ar:                                            ; preds = %bb.ap
end_hunk_18
begin_hunk_19_@_ZN6Assimp9BVHLoader8ReadNodeEv:bb.a
  br i1 %i.eh, label %bb.as, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiNodeSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.as:                                            ; preds = %bb.ar
  %i.ei = load ptr, ptr %.sroa.24.1.a, align 8
  store ptr %i.ei, ptr %i.ee, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiNodeSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

end_hunk_19
begin_hunk_20_@_ZN6Assimp9BVHLoader8ReadNodeEv:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiNodeSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.not.i.i.i64 = icmp eq ptr %.sroa.24.1.a, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.eo = ptrtoint ptr %.sroa.0.1 to i64
  %i.ep = sub i64 %i.eo, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.24.1.a, i64 noundef %i.ep) #26
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit:           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %bb.au
end_hunk_20
begin_hunk_21_@_ZN6Assimp9BVHLoader8ReadNodeEv:bb.a
  ret ptr %.pre190

bb.av:                                            ; preds = %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  %.sroa.24.2.a = phi ptr [ %.sroa.24.1.a, %bb.at ], [ %.sroa.24.0.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.1, %bb.at ], [ %.sroa.24.0171, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ]
  %.pn16 = phi { ptr, i32 } [ %i.ej, %bb.at ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ] ; 2 uses
  %i.fa = load ptr, ptr %3, align 8               ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.x
end_hunk_21
begin_hunk_22_@_ZN6Assimp9BVHLoader8ReadNodeEv:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i72: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.not.i.i.i74 = icmp eq ptr %.sroa.24.2.a, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit75, label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i72
  %i.fe = ptrtoint ptr %.sroa.0.2 to i64
  %i.ff = ptrtoint ptr %.sroa.24.2.a to i64
  %i.fg = sub i64 %i.fe, %i.ff
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.24.2.a, i64 noundef %i.fg) #26
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit75

_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit75:         ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i72, %.thread, %bb.p, %bb.o
end_hunk_22
