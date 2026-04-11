inline.NumInlined: 2805
inline.NumDeleted: 972
begin_hunk_0_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader11read_meshesEv:bb.a
.lr.ph2311:                                       ; preds = %.lr.ph2311.preheader, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE9push_backEOS3_.exit542
  %indvars.iv3391 = phi i64 [ 0, %.lr.ph2311.preheader ], [ %indvars.iv.next3392, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE9push_backEOS3_.exit542 ] ; 3 uses
  %.sroa.0729.52309 = phi ptr [ %.sroa.0729.9, %.lr.ph2311.preheader ], [ %.sroa.0729.6, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE9push_backEOS3_.exit542 ] ; 14 uses
  %.sroa.19.52308 = phi ptr [ %.sroa.19.9, %.lr.ph2311.preheader ], [ %.sroa.19.6.a, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE9push_backEOS3_.exit542 ] ; 15 uses
  %.sroa.36.52307 = phi ptr [ %.sroa.36.9, %.lr.ph2311.preheader ], [ %.sroa.36.6, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE9push_backEOS3_.exit542 ] ; 3 uses
  %i.ary = and i64 %indvars.iv3391, 1
  %.not336 = icmp eq i64 %i.ary, 0
end_hunk_0
begin_hunk_1_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader11read_meshesEv:bb.a
  store i16 %i.asf, ptr %.sroa.6693.0..sroa_idx, align 2
  %.sroa.7696.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.19.52308, i64 4
  store i16 %i.asc, ptr %.sroa.7696.0..sroa_idx, align 2
  %32 = getelementptr inbounds nuw i8, ptr %.sroa.19.52308, i64 6
  br label %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE9push_backEOS3_.exit542

bb.fq:                                            ; preds = %bb.fo
end_hunk_1
begin_hunk_2_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader11read_meshesEv:bb.a
  br label %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i537

_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i537: ; preds = %bb.fs, %.noexc541
  %33 = getelementptr inbounds nuw i8, ptr %i.asr, i64 6
  %.not.i17.i.i.i538 = icmp eq ptr %.sroa.0729.52309, null
  br i1 %.not.i17.i.i.i538, label %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i539, label %bb.ft

end_hunk_2
begin_hunk_3_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader11read_meshesEv:bb.a
  store i16 %i.asw, ptr %.sroa.6.0..sroa_idx, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.19.52308, i64 4
  store i16 %i.asc, ptr %.sroa.7.0..sroa_idx, align 2
  %34 = getelementptr inbounds nuw i8, ptr %.sroa.19.52308, i64 6
  br label %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE9push_backEOS3_.exit542

bb.fw:                                            ; preds = %bb.fu
end_hunk_3
begin_hunk_4_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader11read_meshesEv:bb.a
  br label %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i547

_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i547: ; preds = %bb.fy, %.noexc551
  %35 = getelementptr inbounds nuw i8, ptr %i.ati, i64 6
  %.not.i17.i.i.i548 = icmp eq ptr %.sroa.0729.52309, null
  br i1 %.not.i17.i.i.i548, label %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i549, label %bb.fz

end_hunk_4
begin_hunk_5_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader11read_meshesEv:bb.a

_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE9push_backEOS3_.exit542: ; preds = %bb.fv, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i549, %bb.fp, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i539
  %.sroa.36.6 = phi ptr [ %.sroa.36.52307, %bb.fp ], [ %i.ast, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i539 ], [ %i.atk, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i549 ], [ %.sroa.36.52307, %bb.fv ] ; 2 uses
  %.sroa.19.6.a = phi ptr [ %32, %bb.fp ], [ %33, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i539 ], [ %35, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i549 ], [ %34, %bb.fv ] ; 2 uses
  %.sroa.0729.6 = phi ptr [ %.sroa.0729.52309, %bb.fp ], [ %i.asq, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i539 ], [ %i.ath, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i549 ], [ %.sroa.0729.52309, %bb.fv ] ; 2 uses
  %indvars.iv.next3392 = add nuw nsw i64 %indvars.iv3391, 1 ; 2 uses
  %exitcond3394.not = icmp eq i64 %indvars.iv.next3392, %wide.trip.count
  br i1 %exitcond3394.not, label %.loopexit804, label %.lr.ph2311, !llvm.loop !211

.loopexit804:                                     ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE9push_backEOS3_.exit542, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE9push_backEOS3_.exit, %.preheader806, %.preheader
  %.sroa.36.7 = phi ptr [ %.sroa.36.10, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.36.9, %.preheader ], [ %.sroa.36.9, %.preheader806 ], [ %.sroa.36.6, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE9push_backEOS3_.exit542 ] ; 2 uses
  %.sroa.19.7 = phi ptr [ %.sroa.19.10, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.19.9, %.preheader ], [ %.sroa.19.9, %.preheader806 ], [ %.sroa.19.6.a, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE9push_backEOS3_.exit542 ] ; 2 uses
  %.sroa.0729.7 = phi ptr [ %.sroa.0729.10, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.0729.9, %.preheader ], [ %.sroa.0729.9, %.preheader806 ], [ %.sroa.0729.6, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE9push_backEOS3_.exit542 ] ; 2 uses
  %i.atl = add nuw nsw i32 %i.aqo, %.32327        ; 2 uses
  %i.atm = load i16, ptr %i.aqf, align 2          ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15read_animationsEv:bb.a
bb.ae:                                            ; preds = %.lr.ph159, %_ZN13aiQuaterniontIfE9NormalizeEv.exit
  %indvars.iv187 = phi i64 [ 0, %.lr.ph159 ], [ %indvars.iv.next188, %_ZN13aiQuaterniontIfE9NormalizeEv.exit ] ; 16 uses
  %i.km = load ptr, ptr %i.jl, align 8
  %i.kn = getelementptr inbounds nuw [24 x i8], ptr %i.km, i64 %indvars.iv187 ; 4 uses
  %i.ko = load ptr, ptr %i.gw, align 8
  %1 = getelementptr inbounds nuw i8, ptr %i.kn, i64 8 ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.kn, i64 12 ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.kn, i64 16 ; 3 uses
  %i.kp = load i16, ptr %i.jq, align 1            ; 2 uses
  %.not113 = icmp eq i16 %i.kp, 0
  br i1 %.not113, label %_ZN10aiVector3tIfEixEj.exit118, label %_ZN10aiVector3tIfEixEj.exit
end_hunk_6
begin_hunk_7_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15read_animationsEv:bb.a
  %i.lx = fadd float %i.lw, %.sroa.0136.0
  %i.ly = load i16, ptr %.2163, align 1           ; 2 uses
  %.not114 = icmp eq i16 %i.ly, 0
  br i1 %.not114, label %_ZN10aiVector3tIfEixEj.exit134, label %_ZN10aiVector3tIfEixEj.exit120

_ZN10aiVector3tIfEixEj.exit120:                   ; preds = %_ZN10aiVector3tIfEixEj.exit118
  %i.lz = zext i16 %i.ly to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %.2163, i64 %i.lz ; 3 uses
  %i.mb = load float, ptr %i.jp, align 1
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 1
  %i.md = load i8, ptr %i.mc, align 1             ; 2 uses
  %i.me = zext i8 %i.md to i64
end_hunk_7
begin_hunk_8_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15read_animationsEv:bb.a
  %.pn.in.in.i128 = select i1 %i.ms, ptr %i.mx, ptr %i.mu
  %.pn.in.i129 = load i16, ptr %.pn.in.in.i128, align 1
  %.pn.i130 = sitofp i16 %.pn.in.i129 to float
  %storemerge.i131 = fmul float %i.mb, %.pn.i130
  store float %storemerge.i131, ptr %1, align 4
  br label %_ZN10aiVector3tIfEixEj.exit134

_ZN10aiVector3tIfEixEj.exit134:                   ; preds = %_ZN10aiVector3tIfEixEj.exit118, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132
  %i.my = load float, ptr %i.jo, align 1
  %4 = load float, ptr %1, align 4
  %i.mz = fadd float %i.my, %4
  store float %i.mz, ptr %1, align 4
  %i.na = load i16, ptr %i.jt, align 1            ; 2 uses
  %.not113.1 = icmp eq i16 %i.na, 0
  br i1 %.not113.1, label %_ZN10aiVector3tIfEixEj.exit118.1, label %_ZN10aiVector3tIfEixEj.exit.1
end_hunk_8
begin_hunk_9_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15read_animationsEv:bb.a
  %i.ob = fadd float %i.oa, %.sroa.6137.0
  %i.oc = load i16, ptr %i.jw, align 1            ; 2 uses
  %.not114.1 = icmp eq i16 %i.oc, 0
  br i1 %.not114.1, label %_ZN10aiVector3tIfEixEj.exit134.1, label %_ZN10aiVector3tIfEixEj.exit120.1

_ZN10aiVector3tIfEixEj.exit120.1:                 ; preds = %_ZN10aiVector3tIfEixEj.exit118.1
  %i.od = zext i16 %i.oc to i64
  %i.oe = getelementptr inbounds nuw i8, ptr %.2163, i64 %i.od ; 3 uses
  %i.of = load float, ptr %i.jx, align 1
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 1
  %i.oh = load i8, ptr %i.og, align 1             ; 2 uses
  %i.oi = zext i8 %i.oh to i64
end_hunk_9
begin_hunk_10_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15read_animationsEv:bb.a
  %.pn.in.in.i128.1 = select i1 %i.ow, ptr %i.pb, ptr %i.oy
  %.pn.in.i129.1 = load i16, ptr %.pn.in.in.i128.1, align 1
  %.pn.i130.1 = sitofp i16 %.pn.in.i129.1 to float
  %storemerge.i131.1 = fmul float %i.of, %.pn.i130.1
  store float %storemerge.i131.1, ptr %2, align 4
  br label %_ZN10aiVector3tIfEixEj.exit134.1

_ZN10aiVector3tIfEixEj.exit134.1:                 ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.1, %_ZN10aiVector3tIfEixEj.exit118.1
  %i.pc = load float, ptr %i.jy, align 1
  %5 = load float, ptr %2, align 4
  %i.pd = fadd float %i.pc, %5
  store float %i.pd, ptr %2, align 4
  %i.pe = load i16, ptr %i.jz, align 1            ; 2 uses
  %.not113.2 = icmp eq i16 %i.pe, 0
  br i1 %.not113.2, label %_ZN10aiVector3tIfEixEj.exit118.2, label %_ZN10aiVector3tIfEixEj.exit.2
end_hunk_10
begin_hunk_11_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15read_animationsEv:bb.a
  %i.qf = fadd float %i.qe, %.sroa.10.0
  %i.qg = load i16, ptr %i.kc, align 1            ; 2 uses
  %.not114.2 = icmp eq i16 %i.qg, 0
  br i1 %.not114.2, label %_ZN10aiVector3tIfEixEj.exit134.2, label %_ZN10aiVector3tIfEixEj.exit120.2

_ZN10aiVector3tIfEixEj.exit120.2:                 ; preds = %_ZN10aiVector3tIfEixEj.exit118.2
  %i.qh = zext i16 %i.qg to i64
  %i.qi = getelementptr inbounds nuw i8, ptr %.2163, i64 %i.qh ; 3 uses
  %i.qj = load float, ptr %i.kd, align 1
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 1
  %i.ql = load i8, ptr %i.qk, align 1             ; 2 uses
  %i.qm = zext i8 %i.ql to i64
  %.not18.i121.2 = icmp samesign ult i64 %indvars.iv187, %i.qm
  %i.qn = trunc nuw nsw i64 %indvars.iv187 to i32 ; 2 uses
  br i1 %.not18.i121.2, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.2, label %.lr.ph.i122.preheader.2

.lr.ph.i122.preheader.2:                          ; preds = %_ZN10aiVector3tIfEixEj.exit120.2
end_hunk_11
begin_hunk_12_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15read_animationsEv:bb.a
  %.pn.in.in.i128.2 = select i1 %i.ra, ptr %i.rf, ptr %i.rc
  %.pn.in.i129.2 = load i16, ptr %.pn.in.in.i128.2, align 1
  %.pn.i130.2 = sitofp i16 %.pn.in.i129.2 to float
  %storemerge.i131.2 = fmul float %i.qj, %.pn.i130.2
  store float %storemerge.i131.2, ptr %3, align 4
  br label %_ZN10aiVector3tIfEixEj.exit134.2

_ZN10aiVector3tIfEixEj.exit134.2:                 ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.2, %_ZN10aiVector3tIfEixEj.exit118.2
  %i.rg = load float, ptr %i.ke, align 1
  %6 = load float, ptr %3, align 4
  %i.rh = fadd float %i.rg, %6
  store float %i.rh, ptr %3, align 4
  %i.ri = getelementptr inbounds nuw [32 x i8], ptr %i.ko, i64 %indvars.iv187 ; 2 uses
  %7 = trunc nuw nsw i64 %indvars.iv187 to i32
  %i.rj = uitofp nneg i32 %7 to double            ; 2 uses
  store double %i.rj, ptr %i.ri, align 8
  store double %i.rj, ptr %i.kn, align 8
  %i.rk = fmul float %i.ob, 5.000000e-01          ; 2 uses
end_hunk_12
