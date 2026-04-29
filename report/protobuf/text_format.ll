inline.NumInlined: 5150
inline.NumDeleted: 1899
begin_hunk_0_@_ZN6google8protobuf10TextFormat13ParseInfoTree12CreateNestedEPKNS0_15FieldDescriptorE:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.af, 4611686018427387900     ; 3 uses
  %i.ak = shl i64 %n.vec, 3                       ; 2 uses
  %i.al = getelementptr i8, ptr %i.aa, i64 %i.ak  ; 2 uses
  %i.am = getelementptr i8, ptr %i.p, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %offset.idx ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.p, i64 %offset.idx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.an = getelementptr i8, ptr %next.gep9, i64 16
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal21MapFieldPrinterHelper7SortMapERKNS0_7MessageEPKNS0_10ReflectionEPKNS0_15FieldDescriptorE:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader449, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bu, 4611686018427387900     ; 3 uses
  %i.bz = shl i64 %n.vec, 3                       ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bq, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.bf, i64 %i.bz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bq, i64 %offset.idx ; 2 uses
  %next.gep377 = getelementptr i8, ptr %i.bf, i64 %offset.idx ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  %i.cc = getelementptr i8, ptr %next.gep377, i64 16
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8internal21MapFieldPrinterHelper7SortMapERKNS0_7MessageEPKNS0_10ReflectionEPKNS0_15FieldDescriptorE:bb.a
  br i1 %found.conflict387, label %.lr.ph.i.i.i.i94.preheader410, label %vector.ph390

vector.ph390:                                     ; preds = %vector.memcheck380
  %n.vec392 = and i64 %i.eg, 4611686018427387900  ; 3 uses
  %i.ek = shl i64 %n.vec392, 3                    ; 2 uses
  %i.el = getelementptr i8, ptr %i.ea, i64 %i.ek  ; 2 uses
  %i.em = getelementptr i8, ptr %i.dp, i64 %i.ek
  br label %vector.body393

vector.body393:                                   ; preds = %vector.body393, %vector.ph390
  %index394 = phi i64 [ 0, %vector.ph390 ], [ %index.next401, %vector.body393 ] ; 2 uses
  %offset.idx395 = shl i64 %index394, 3           ; 2 uses
  %next.gep396 = getelementptr i8, ptr %i.ea, i64 %offset.idx395 ; 2 uses
  %next.gep398 = getelementptr i8, ptr %i.dp, i64 %offset.idx395 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  %i.en = getelementptr i8, ptr %next.gep398, i64 16
end_hunk_2
begin_hunk_3_@_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS7_SaIS7_EEEEEET_SD_SD_SD_St26random_access_iterator_tag:bb.a
  br i1 %found.conflict173, label %.lr.ph.i.preheader194, label %vector.ph176

vector.ph176:                                     ; preds = %vector.memcheck168
  %n.vec178 = and i64 %i.o, 4611686018427387900   ; 3 uses
  %i.t = shl i64 %n.vec178, 3                     ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph176
  %index180 = phi i64 [ 0, %vector.ph176 ], [ %index.next189, %vector.body179 ] ; 2 uses
  %offset.idx181 = shl i64 %index180, 3           ; 2 uses
  %next.gep182 = getelementptr i8, ptr %1, i64 %offset.idx181 ; 3 uses
  %next.gep184 = getelementptr i8, ptr %0, i64 %offset.idx181 ; 3 uses
  %i.w = getelementptr i8, ptr %next.gep184, i64 16 ; 2 uses
  %wide.load185 = load <2 x ptr>, ptr %next.gep184, align 8, !tbaa !506, !alias.scope !946, !noalias !949
  %wide.load186 = load <2 x ptr>, ptr %i.w, align 8, !tbaa !506, !alias.scope !946, !noalias !949
end_hunk_3
begin_hunk_4_@_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS7_SaIS7_EEEEEET_SD_SD_SD_St26random_access_iterator_tag:bb.a
  br i1 %found.conflict, label %.lr.ph99.preheader195, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.af, 9223372036854775804     ; 4 uses
  %i.ar = shl i64 %n.vec, 3                       ; 2 uses
  %i.as = getelementptr i8, ptr %.sroa.041.0, i64 %i.ar ; 2 uses
  %i.at = getelementptr i8, ptr %i.an, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.041.0, i64 %offset.idx ; 3 uses
  %next.gep129 = getelementptr i8, ptr %i.an, i64 %offset.idx ; 3 uses
  %i.au = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !506, !alias.scope !953, !noalias !956
  %wide.load130.a = load <2 x ptr>, ptr %i.au, align 8, !tbaa !506, !alias.scope !953, !noalias !956
end_hunk_4
begin_hunk_5_@_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS7_SaIS7_EEEEEET_SD_SD_SD_St26random_access_iterator_tag:bb.a
  br i1 %found.conflict139, label %.lr.ph.preheader196, label %vector.ph142

vector.ph142:                                     ; preds = %vector.memcheck135
  %n.vec144 = and i64 %.084, 9223372036854775804  ; 4 uses
  %i.cp = mul i64 %n.vec144, -8                   ; 2 uses
  %i.cq = getelementptr i8, ptr %i.ca, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cl, i64 %i.cp
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph142
  %index146 = phi i64 [ 0, %vector.ph142 ], [ %index.next162, %vector.body145 ] ; 2 uses
  %offset.idx147 = mul i64 %index146, -8          ; 2 uses
  %next.gep148 = getelementptr i8, ptr %i.ca, i64 %offset.idx147 ; 2 uses
  %next.gep150 = getelementptr i8, ptr %i.cl, i64 %offset.idx147 ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %next.gep150, i64 -16 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %next.gep150, i64 -32 ; 2 uses
  %wide.load151.a = load <2 x ptr>, ptr %i.cs, align 8, !tbaa !506, !alias.scope !961, !noalias !964
end_hunk_5
