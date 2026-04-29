inline.NumInlined: 30568
inline.NumDeleted: 15922
begin_hunk_0_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x321IfcRepresentationItemEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader121, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 4 uses
  %i.as = shl i64 %n.vec, 3
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %11 = shl i64 %n.vec, 3
  %i.au = getelementptr i8, ptr %i.aa, i64 %11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.al, i64 %offset.idx ; 2 uses
  %offset.idx95 = shl i64 %index, 3
  %next.gep96 = getelementptr i8, ptr %i.aa, i64 %offset.idx95 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2300)
  %i.av = getelementptr i8, ptr %next.gep96, i64 16
end_hunk_0
begin_hunk_1_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x321IfcRepresentationItemEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond119, label %.lr.ph.i.i.i.i.i.i.preheader120, label %vector.ph103

vector.ph103:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec105 = and i64 %i.cc, 4611686018427387900  ; 4 uses
  %i.ce = shl i64 %n.vec105, 3
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce  ; 2 uses
  %12 = shl i64 %n.vec105, 3
  %i.cg = getelementptr i8, ptr %i.bl, i64 %12
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph103
  %index107 = phi i64 [ 0, %vector.ph103 ], [ %index.next114, %vector.body106 ] ; 3 uses
  %offset.idx108 = shl i64 %index107, 3
  %next.gep109 = getelementptr i8, ptr %i.bw, i64 %offset.idx108 ; 2 uses
  %offset.idx110 = shl i64 %index107, 3
  %next.gep111 = getelementptr i8, ptr %i.bl, i64 %offset.idx110 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2306)
  call void @llvm.experimental.noalias.scope.decl(metadata !2309)
  %i.ch = getelementptr i8, ptr %next.gep111, i64 16
end_hunk_1
begin_hunk_2_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x317IfcRepresentationEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader121, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 4 uses
  %i.as = shl i64 %n.vec, 3
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %11 = shl i64 %n.vec, 3
  %i.au = getelementptr i8, ptr %i.aa, i64 %11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.al, i64 %offset.idx ; 2 uses
  %offset.idx95 = shl i64 %index, 3
  %next.gep96 = getelementptr i8, ptr %i.aa, i64 %offset.idx95 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2320)
  %i.av = getelementptr i8, ptr %next.gep96, i64 16
end_hunk_2
begin_hunk_3_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x317IfcRepresentationEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond119, label %.lr.ph.i.i.i.i.i.i.preheader120, label %vector.ph103

vector.ph103:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec105 = and i64 %i.cc, 4611686018427387900  ; 4 uses
  %i.ce = shl i64 %n.vec105, 3
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce  ; 2 uses
  %12 = shl i64 %n.vec105, 3
  %i.cg = getelementptr i8, ptr %i.bl, i64 %12
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph103
  %index107 = phi i64 [ 0, %vector.ph103 ], [ %index.next114, %vector.body106 ] ; 3 uses
  %offset.idx108 = shl i64 %index107, 3
  %next.gep109 = getelementptr i8, ptr %i.bw, i64 %offset.idx108 ; 2 uses
  %offset.idx110 = shl i64 %index107, 3
  %next.gep111 = getelementptr i8, ptr %i.bl, i64 %offset.idx110 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2324)
  call void @llvm.experimental.noalias.scope.decl(metadata !2327)
  %i.ch = getelementptr i8, ptr %next.gep111, i64 16
end_hunk_3
begin_hunk_4_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x324IfcCompositeCurveSegmentEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader121, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 4 uses
  %i.as = shl i64 %n.vec, 3
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %11 = shl i64 %n.vec, 3
  %i.au = getelementptr i8, ptr %i.aa, i64 %11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.al, i64 %offset.idx ; 2 uses
  %offset.idx95 = shl i64 %index, 3
  %next.gep96 = getelementptr i8, ptr %i.aa, i64 %offset.idx95 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2338)
  %i.av = getelementptr i8, ptr %next.gep96, i64 16
end_hunk_4
begin_hunk_5_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x324IfcCompositeCurveSegmentEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond119, label %.lr.ph.i.i.i.i.i.i.preheader120, label %vector.ph103

vector.ph103:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec105 = and i64 %i.cc, 4611686018427387900  ; 4 uses
  %i.ce = shl i64 %n.vec105, 3
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce  ; 2 uses
  %12 = shl i64 %n.vec105, 3
  %i.cg = getelementptr i8, ptr %i.bl, i64 %12
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph103
  %index107 = phi i64 [ 0, %vector.ph103 ], [ %index.next114, %vector.body106 ] ; 3 uses
  %offset.idx108 = shl i64 %index107, 3
  %next.gep109 = getelementptr i8, ptr %i.bw, i64 %offset.idx108 ; 2 uses
  %offset.idx110 = shl i64 %index107, 3
  %next.gep111 = getelementptr i8, ptr %i.bl, i64 %offset.idx110 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2342)
  call void @llvm.experimental.noalias.scope.decl(metadata !2345)
  %i.ch = getelementptr i8, ptr %next.gep111, i64 16
end_hunk_5
begin_hunk_6_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x310IfcProductEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader121, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 4 uses
  %i.as = shl i64 %n.vec, 3
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %11 = shl i64 %n.vec, 3
  %i.au = getelementptr i8, ptr %i.aa, i64 %11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.al, i64 %offset.idx ; 2 uses
  %offset.idx95 = shl i64 %index, 3
  %next.gep96 = getelementptr i8, ptr %i.aa, i64 %offset.idx95 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2356)
  %i.av = getelementptr i8, ptr %next.gep96, i64 16
end_hunk_6
begin_hunk_7_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x310IfcProductEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond119, label %.lr.ph.i.i.i.i.i.i.preheader120, label %vector.ph103

vector.ph103:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec105 = and i64 %i.cc, 4611686018427387900  ; 4 uses
  %i.ce = shl i64 %n.vec105, 3
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce  ; 2 uses
  %12 = shl i64 %n.vec105, 3
  %i.cg = getelementptr i8, ptr %i.bl, i64 %12
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph103
  %index107 = phi i64 [ 0, %vector.ph103 ], [ %index.next114, %vector.body106 ] ; 3 uses
  %offset.idx108 = shl i64 %index107, 3
  %next.gep109 = getelementptr i8, ptr %i.bw, i64 %offset.idx108 ; 2 uses
  %offset.idx110 = shl i64 %index107, 3
  %next.gep111 = getelementptr i8, ptr %i.bl, i64 %offset.idx110 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2360)
  call void @llvm.experimental.noalias.scope.decl(metadata !2363)
  %i.ch = getelementptr i8, ptr %next.gep111, i64 16
end_hunk_7
begin_hunk_8_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x324IfcRepresentationContextEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader121, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 4 uses
  %i.as = shl i64 %n.vec, 3
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %11 = shl i64 %n.vec, 3
  %i.au = getelementptr i8, ptr %i.aa, i64 %11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.al, i64 %offset.idx ; 2 uses
  %offset.idx95 = shl i64 %index, 3
  %next.gep96 = getelementptr i8, ptr %i.aa, i64 %offset.idx95 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2378)
  %i.av = getelementptr i8, ptr %next.gep96, i64 16
end_hunk_8
begin_hunk_9_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x324IfcRepresentationContextEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond119, label %.lr.ph.i.i.i.i.i.i.preheader120, label %vector.ph103

vector.ph103:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec105 = and i64 %i.cc, 4611686018427387900  ; 4 uses
  %i.ce = shl i64 %n.vec105, 3
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce  ; 2 uses
  %12 = shl i64 %n.vec105, 3
  %i.cg = getelementptr i8, ptr %i.bl, i64 %12
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph103
  %index107 = phi i64 [ 0, %vector.ph103 ], [ %index.next114, %vector.body106 ] ; 3 uses
  %offset.idx108 = shl i64 %index107, 3
  %next.gep109 = getelementptr i8, ptr %i.bw, i64 %offset.idx108 ; 2 uses
  %offset.idx110 = shl i64 %index107, 3
  %next.gep111 = getelementptr i8, ptr %i.bl, i64 %offset.idx110 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2382)
  call void @llvm.experimental.noalias.scope.decl(metadata !2385)
  %i.ch = getelementptr i8, ptr %next.gep111, i64 16
end_hunk_9
begin_hunk_10_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x39IfcObjectEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader121, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 4 uses
  %i.as = shl i64 %n.vec, 3
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %11 = shl i64 %n.vec, 3
  %i.au = getelementptr i8, ptr %i.aa, i64 %11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.al, i64 %offset.idx ; 2 uses
  %offset.idx95 = shl i64 %index, 3
  %next.gep96 = getelementptr i8, ptr %i.aa, i64 %offset.idx95 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2416)
  %i.av = getelementptr i8, ptr %next.gep96, i64 16
end_hunk_10
begin_hunk_11_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x39IfcObjectEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond119, label %.lr.ph.i.i.i.i.i.i.preheader120, label %vector.ph103

vector.ph103:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec105 = and i64 %i.cc, 4611686018427387900  ; 4 uses
  %i.ce = shl i64 %n.vec105, 3
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce  ; 2 uses
  %12 = shl i64 %n.vec105, 3
  %i.cg = getelementptr i8, ptr %i.bl, i64 %12
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph103
  %index107 = phi i64 [ 0, %vector.ph103 ], [ %index.next114, %vector.body106 ] ; 3 uses
  %offset.idx108 = shl i64 %index107, 3
  %next.gep109 = getelementptr i8, ptr %i.bw, i64 %offset.idx108 ; 2 uses
  %offset.idx110 = shl i64 %index107, 3
  %next.gep111 = getelementptr i8, ptr %i.bl, i64 %offset.idx110 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2420)
  call void @llvm.experimental.noalias.scope.decl(metadata !2423)
  %i.ch = getelementptr i8, ptr %next.gep111, i64 16
end_hunk_11
begin_hunk_12_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader121, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 4 uses
  %i.as = shl i64 %n.vec, 3
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %11 = shl i64 %n.vec, 3
  %i.au = getelementptr i8, ptr %i.aa, i64 %11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.al, i64 %offset.idx ; 2 uses
  %offset.idx95 = shl i64 %index, 3
  %next.gep96 = getelementptr i8, ptr %i.aa, i64 %offset.idx95 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2434)
  %i.av = getelementptr i8, ptr %next.gep96, i64 16
end_hunk_12
begin_hunk_13_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond119, label %.lr.ph.i.i.i.i.i.i.preheader120, label %vector.ph103

vector.ph103:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec105 = and i64 %i.cc, 4611686018427387900  ; 4 uses
  %i.ce = shl i64 %n.vec105, 3
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce  ; 2 uses
  %12 = shl i64 %n.vec105, 3
  %i.cg = getelementptr i8, ptr %i.bl, i64 %12
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph103
  %index107 = phi i64 [ 0, %vector.ph103 ], [ %index.next114, %vector.body106 ] ; 3 uses
  %offset.idx108 = shl i64 %index107, 3
  %next.gep109 = getelementptr i8, ptr %i.bw, i64 %offset.idx108 ; 2 uses
  %offset.idx110 = shl i64 %index107, 3
  %next.gep111 = getelementptr i8, ptr %i.bl, i64 %offset.idx110 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2438)
  call void @llvm.experimental.noalias.scope.decl(metadata !2441)
  %i.ch = getelementptr i8, ptr %next.gep111, i64 16
end_hunk_13
begin_hunk_14_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x317IfcCartesianPointEEELm2ELm0EEclERNS0_6ListOfIS6_Lm2ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader125, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 4 uses
  %i.as = shl i64 %n.vec, 3
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %11 = shl i64 %n.vec, 3
  %i.au = getelementptr i8, ptr %i.aa, i64 %11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.al, i64 %offset.idx ; 2 uses
  %offset.idx99 = shl i64 %index, 3
  %next.gep100 = getelementptr i8, ptr %i.aa, i64 %offset.idx99 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2452)
  %i.av = getelementptr i8, ptr %next.gep100, i64 16
end_hunk_14
begin_hunk_15_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x317IfcCartesianPointEEELm2ELm0EEclERNS0_6ListOfIS6_Lm2ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond123, label %.lr.ph.i.i.i.i.i.i.preheader124, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec109 = and i64 %i.cc, 4611686018427387900  ; 4 uses
  %i.ce = shl i64 %n.vec109, 3
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce  ; 2 uses
  %12 = shl i64 %n.vec109, 3
  %i.cg = getelementptr i8, ptr %i.bl, i64 %12
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next118, %vector.body110 ] ; 3 uses
  %offset.idx112 = shl i64 %index111, 3
  %next.gep113 = getelementptr i8, ptr %i.bw, i64 %offset.idx112 ; 2 uses
  %offset.idx114 = shl i64 %index111, 3
  %next.gep115 = getelementptr i8, ptr %i.bl, i64 %offset.idx114 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2456)
  call void @llvm.experimental.noalias.scope.decl(metadata !2459)
  %i.ch = getelementptr i8, ptr %next.gep115, i64 16
end_hunk_15
begin_hunk_16_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x37IfcFaceEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader121, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 4 uses
  %i.as = shl i64 %n.vec, 3
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %11 = shl i64 %n.vec, 3
  %i.au = getelementptr i8, ptr %i.aa, i64 %11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.al, i64 %offset.idx ; 2 uses
  %offset.idx95 = shl i64 %index, 3
  %next.gep96 = getelementptr i8, ptr %i.aa, i64 %offset.idx95 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2470)
  %i.av = getelementptr i8, ptr %next.gep96, i64 16
end_hunk_16
begin_hunk_17_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x37IfcFaceEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond119, label %.lr.ph.i.i.i.i.i.i.preheader120, label %vector.ph103

vector.ph103:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec105 = and i64 %i.cc, 4611686018427387900  ; 4 uses
  %i.ce = shl i64 %n.vec105, 3
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce  ; 2 uses
  %12 = shl i64 %n.vec105, 3
  %i.cg = getelementptr i8, ptr %i.bl, i64 %12
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph103
  %index107 = phi i64 [ 0, %vector.ph103 ], [ %index.next114, %vector.body106 ] ; 3 uses
  %offset.idx108 = shl i64 %index107, 3
  %next.gep109 = getelementptr i8, ptr %i.bw, i64 %offset.idx108 ; 2 uses
  %offset.idx110 = shl i64 %index107, 3
  %next.gep111 = getelementptr i8, ptr %i.bl, i64 %offset.idx110 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2474)
  call void @llvm.experimental.noalias.scope.decl(metadata !2477)
  %i.ch = getelementptr i8, ptr %next.gep111, i64 16
end_hunk_17
begin_hunk_18_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader121, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 4 uses
  %i.as = shl i64 %n.vec, 3
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %11 = shl i64 %n.vec, 3
  %i.au = getelementptr i8, ptr %i.aa, i64 %11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.al, i64 %offset.idx ; 2 uses
  %offset.idx95 = shl i64 %index, 3
  %next.gep96 = getelementptr i8, ptr %i.aa, i64 %offset.idx95 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2497)
  %i.av = getelementptr i8, ptr %next.gep96, i64 16
end_hunk_18
begin_hunk_19_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x330IfcPresentationStyleAssignmentEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond119, label %.lr.ph.i.i.i.i.i.i.preheader120, label %vector.ph103

vector.ph103:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec105 = and i64 %i.cc, 4611686018427387900  ; 4 uses
  %i.ce = shl i64 %n.vec105, 3
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce  ; 2 uses
  %12 = shl i64 %n.vec105, 3
  %i.cg = getelementptr i8, ptr %i.bl, i64 %12
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph103
  %index107 = phi i64 [ 0, %vector.ph103 ], [ %index.next114, %vector.body106 ] ; 3 uses
  %offset.idx108 = shl i64 %index107, 3
  %next.gep109 = getelementptr i8, ptr %i.bw, i64 %offset.idx108 ; 2 uses
  %offset.idx110 = shl i64 %index107, 3
  %next.gep111 = getelementptr i8, ptr %i.bl, i64 %offset.idx110 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2501)
  call void @llvm.experimental.noalias.scope.decl(metadata !2504)
  %i.ch = getelementptr i8, ptr %next.gep111, i64 16
end_hunk_19
