inline.NumInlined: 1461
inline.NumDeleted: 397
begin_hunk_0_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x312IfcFaceBoundEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader121, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %offset.idx ; 2 uses
  %next.gep96 = getelementptr i8, ptr %i.aa, i64 %offset.idx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.av = getelementptr i8, ptr %next.gep96, i64 16
end_hunk_0
begin_hunk_1_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x312IfcFaceBoundEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond119, label %.lr.ph.i.i.i.i.i.i.preheader120, label %vector.ph103

vector.ph103:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec105 = and i64 %i.cc, 4611686018427387900  ; 3 uses
  %i.ce = shl i64 %n.vec105, 3                    ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bl, i64 %i.ce
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph103
  %index107 = phi i64 [ 0, %vector.ph103 ], [ %index.next114, %vector.body106 ] ; 2 uses
  %offset.idx108 = shl i64 %index107, 3           ; 2 uses
  %next.gep109 = getelementptr i8, ptr %i.bw, i64 %offset.idx108 ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.bl, i64 %offset.idx108 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.ch = getelementptr i8, ptr %next.gep111, i64 16
end_hunk_1
begin_hunk_2_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x317IfcCartesianPointEEELm2ELm0EEclERNS0_6ListOfIS6_Lm2ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader125, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %offset.idx ; 2 uses
  %next.gep100 = getelementptr i8, ptr %i.aa, i64 %offset.idx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.av = getelementptr i8, ptr %next.gep100, i64 16
end_hunk_2
begin_hunk_3_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x317IfcCartesianPointEEELm2ELm0EEclERNS0_6ListOfIS6_Lm2ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond123, label %.lr.ph.i.i.i.i.i.i.preheader124, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec109 = and i64 %i.cc, 4611686018427387900  ; 3 uses
  %i.ce = shl i64 %n.vec109, 3                    ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bl, i64 %i.ce
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next118, %vector.body110 ] ; 2 uses
  %offset.idx112 = shl i64 %index111, 3           ; 2 uses
  %next.gep113 = getelementptr i8, ptr %i.bw, i64 %offset.idx112 ; 2 uses
  %next.gep115 = getelementptr i8, ptr %i.bl, i64 %offset.idx112 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.ch = getelementptr i8, ptr %next.gep115, i64 16
end_hunk_3
begin_hunk_4_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x317IfcCartesianPointEEELm3ELm0EEclERNS0_6ListOfIS6_Lm3ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader125, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %offset.idx ; 2 uses
  %next.gep100 = getelementptr i8, ptr %i.aa, i64 %offset.idx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.av = getelementptr i8, ptr %next.gep100, i64 16
end_hunk_4
begin_hunk_5_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x317IfcCartesianPointEEELm3ELm0EEclERNS0_6ListOfIS6_Lm3ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond123, label %.lr.ph.i.i.i.i.i.i.preheader124, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec109 = and i64 %i.cc, 4611686018427387900  ; 3 uses
  %i.ce = shl i64 %n.vec109, 3                    ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bl, i64 %i.ce
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next118, %vector.body110 ] ; 2 uses
  %offset.idx112 = shl i64 %index111, 3           ; 2 uses
  %next.gep113 = getelementptr i8, ptr %i.bw, i64 %offset.idx112 ; 2 uses
  %next.gep115 = getelementptr i8, ptr %i.bl, i64 %offset.idx112 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.ch = getelementptr i8, ptr %next.gep115, i64 16
end_hunk_5
begin_hunk_6_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x319IfcConnectedFaceSetEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader121, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %offset.idx ; 2 uses
  %next.gep96 = getelementptr i8, ptr %i.aa, i64 %offset.idx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.av = getelementptr i8, ptr %next.gep96, i64 16
end_hunk_6
begin_hunk_7_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x319IfcConnectedFaceSetEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond119, label %.lr.ph.i.i.i.i.i.i.preheader120, label %vector.ph103

vector.ph103:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec105 = and i64 %i.cc, 4611686018427387900  ; 3 uses
  %i.ce = shl i64 %n.vec105, 3                    ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bl, i64 %i.ce
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph103
  %index107 = phi i64 [ 0, %vector.ph103 ], [ %index.next114, %vector.body106 ] ; 2 uses
  %offset.idx108 = shl i64 %index107, 3           ; 2 uses
  %next.gep109 = getelementptr i8, ptr %i.bw, i64 %offset.idx108 ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.bl, i64 %offset.idx108 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %i.ch = getelementptr i8, ptr %next.gep111, i64 16
end_hunk_7
begin_hunk_8_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x311IfcPropertyEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader121, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %offset.idx ; 2 uses
  %next.gep96 = getelementptr i8, ptr %i.aa, i64 %offset.idx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.av = getelementptr i8, ptr %next.gep96, i64 16
end_hunk_8
begin_hunk_9_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x311IfcPropertyEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond119, label %.lr.ph.i.i.i.i.i.i.preheader120, label %vector.ph103

vector.ph103:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec105 = and i64 %i.cc, 4611686018427387900  ; 3 uses
  %i.ce = shl i64 %n.vec105, 3                    ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bl, i64 %i.ce
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph103
  %index107 = phi i64 [ 0, %vector.ph103 ], [ %index.next114, %vector.body106 ] ; 2 uses
  %offset.idx108 = shl i64 %index107, 3           ; 2 uses
  %next.gep109 = getelementptr i8, ptr %i.bw, i64 %offset.idx108 ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.bl, i64 %offset.idx108 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.ch = getelementptr i8, ptr %next.gep111, i64 16
end_hunk_9
begin_hunk_10_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x314NotImplementedEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader121, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %offset.idx ; 2 uses
  %next.gep96 = getelementptr i8, ptr %i.aa, i64 %offset.idx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.av = getelementptr i8, ptr %next.gep96, i64 16
end_hunk_10
begin_hunk_11_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x314NotImplementedEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br i1 %or.cond119, label %.lr.ph.i.i.i.i.i.i.preheader120, label %vector.ph103

vector.ph103:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec105 = and i64 %i.cc, 4611686018427387900  ; 3 uses
  %i.ce = shl i64 %n.vec105, 3                    ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bl, i64 %i.ce
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph103
  %index107 = phi i64 [ 0, %vector.ph103 ], [ %index.next114, %vector.body106 ] ; 2 uses
  %offset.idx108 = shl i64 %index107, 3           ; 2 uses
  %next.gep109 = getelementptr i8, ptr %i.bw, i64 %offset.idx108 ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.bl, i64 %offset.idx108 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.ch = getelementptr i8, ptr %next.gep111, i64 16
end_hunk_11
