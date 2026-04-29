inline.NumInlined: 5513
inline.NumDeleted: 2439
begin_hunk_0_@_ZN6google8protobuf8compiler10objectivec13FileGeneratorC2ENS0_7EditionEPKNS0_14FileDescriptorERKNS2_17GenerationOptionsERNS3_11CommonStateE:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader315, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cg, 4611686018427387900     ; 4 uses
  %i.ck = shl i64 %n.vec, 3
  %i.cl = getelementptr i8, ptr %i.cb, i64 %i.ck  ; 2 uses
  %9 = shl i64 %n.vec, 3
  %i.cm = getelementptr i8, ptr %i.bq, i64 %9
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.cb, i64 %offset.idx ; 2 uses
  %offset.idx248 = shl i64 %index, 3
  %next.gep249 = getelementptr i8, ptr %i.bq, i64 %offset.idx248 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !228)
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.cn = getelementptr i8, ptr %next.gep249, i64 16
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler10objectivec13FileGeneratorC2ENS0_7EditionEPKNS0_14FileDescriptorERKNS2_17GenerationOptionsERNS3_11CommonStateE:bb.a
  br i1 %found.conflict259, label %.lr.ph.i.i.i.i93.preheader309, label %vector.ph262

vector.ph262:                                     ; preds = %vector.memcheck252
  %n.vec264 = and i64 %i.et, 4611686018427387900  ; 4 uses
  %i.ex = shl i64 %n.vec264, 3
  %i.ey = getelementptr i8, ptr %i.eo, i64 %i.ex  ; 2 uses
  %10 = shl i64 %n.vec264, 3
  %i.ez = getelementptr i8, ptr %i.ed, i64 %10
  br label %vector.body265

vector.body265:                                   ; preds = %vector.body265, %vector.ph262
  %index266 = phi i64 [ 0, %vector.ph262 ], [ %index.next273, %vector.body265 ] ; 3 uses
  %offset.idx267 = shl i64 %index266, 3
  %next.gep268 = getelementptr i8, ptr %i.eo, i64 %offset.idx267 ; 2 uses
  %offset.idx269 = shl i64 %index266, 3
  %next.gep270 = getelementptr i8, ptr %i.ed, i64 %offset.idx269 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.fa = getelementptr i8, ptr %next.gep270, i64 16
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8compiler10objectivec13FileGeneratorC2ENS0_7EditionEPKNS0_14FileDescriptorERKNS2_17GenerationOptionsERNS3_11CommonStateE:bb.a
  br i1 %found.conflict285, label %.lr.ph.i.i.i.i110.preheader304, label %vector.ph288

vector.ph288:                                     ; preds = %vector.memcheck278
  %n.vec290 = and i64 %i.gu, 4611686018427387900  ; 4 uses
  %i.gy = shl i64 %n.vec290, 3
  %i.gz = getelementptr i8, ptr %i.gp, i64 %i.gy  ; 2 uses
  %11 = shl i64 %n.vec290, 3
  %i.ha = getelementptr i8, ptr %i.ge, i64 %11
  br label %vector.body291

vector.body291:                                   ; preds = %vector.body291, %vector.ph288
  %index292 = phi i64 [ 0, %vector.ph288 ], [ %index.next299, %vector.body291 ] ; 3 uses
  %offset.idx293 = shl i64 %index292, 3
  %next.gep294 = getelementptr i8, ptr %i.gp, i64 %offset.idx293 ; 2 uses
  %offset.idx295 = shl i64 %index292, 3
  %next.gep296 = getelementptr i8, ptr %i.ge, i64 %offset.idx295 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.hb = getelementptr i8, ptr %next.gep296, i64 16
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_115MakeDescriptorsEPKNS0_10DescriptorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorISt10unique_ptrINS2_13EnumGeneratorESt14default_deleteISH_EESaISK_EEPSF_ISG_INS2_18ExtensionGeneratorESI_ISO_EESaISQ_EEPSF_ISG_INS2_16MessageGeneratorESI_ISU_EESaISW_EERKNS2_17GenerationOptionsE:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader144, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ak, 4611686018427387900     ; 4 uses
  %i.ao = shl i64 %n.vec, 3
  %i.ap = getelementptr i8, ptr %i.af, i64 %i.ao  ; 2 uses
  %8 = shl i64 %n.vec, 3
  %i.aq = getelementptr i8, ptr %i.u, i64 %8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.af, i64 %offset.idx ; 2 uses
  %offset.idx110 = shl i64 %index, 3
  %next.gep111 = getelementptr i8, ptr %i.u, i64 %offset.idx110 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.ar = getelementptr i8, ptr %next.gep111, i64 16
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_115MakeDescriptorsEPKNS0_10DescriptorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorISt10unique_ptrINS2_13EnumGeneratorESt14default_deleteISH_EESaISK_EEPSF_ISG_INS2_18ExtensionGeneratorESI_ISO_EESaISQ_EEPSF_ISG_INS2_16MessageGeneratorESI_ISU_EESaISW_EERKNS2_17GenerationOptionsE:bb.a
  br i1 %found.conflict121, label %.lr.ph.i.i.i.i37.preheader140, label %vector.ph124

vector.ph124:                                     ; preds = %vector.memcheck114
  %n.vec126 = and i64 %i.cf, 4611686018427387900  ; 4 uses
  %i.cj = shl i64 %n.vec126, 3
  %i.ck = getelementptr i8, ptr %i.ca, i64 %i.cj  ; 2 uses
  %9 = shl i64 %n.vec126, 3
  %i.cl = getelementptr i8, ptr %i.bp, i64 %9
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph124
  %index128 = phi i64 [ 0, %vector.ph124 ], [ %index.next135, %vector.body127 ] ; 3 uses
  %offset.idx129 = shl i64 %index128, 3
  %next.gep130 = getelementptr i8, ptr %i.ca, i64 %offset.idx129 ; 2 uses
  %offset.idx131 = shl i64 %index128, 3
  %next.gep132 = getelementptr i8, ptr %i.bp, i64 %offset.idx131 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.cm = getelementptr i8, ptr %next.gep132, i64 16
end_hunk_4
