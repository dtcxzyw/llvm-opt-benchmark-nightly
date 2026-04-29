inline.NumInlined: 2614
inline.NumDeleted: 870
begin_hunk_0_@_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS7_SaIS7_EEEEEET_SD_SD_SD_St26random_access_iterator_tag:bb.a
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
  %wide.load185 = load <2 x ptr>, ptr %next.gep184, align 8, !tbaa !170, !alias.scope !323, !noalias !326
  %wide.load186 = load <2 x ptr>, ptr %i.w, align 8, !tbaa !170, !alias.scope !323, !noalias !326
end_hunk_0
begin_hunk_1_@_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS7_SaIS7_EEEEEET_SD_SD_SD_St26random_access_iterator_tag:bb.a
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
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !170, !alias.scope !332, !noalias !335
  %wide.load130.a = load <2 x ptr>, ptr %i.au, align 8, !tbaa !170, !alias.scope !332, !noalias !335
end_hunk_1
begin_hunk_2_@_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS7_SaIS7_EEEEEET_SD_SD_SD_St26random_access_iterator_tag:bb.a
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
  %wide.load151.a = load <2 x ptr>, ptr %i.cs, align 8, !tbaa !170, !alias.scope !341, !noalias !344
end_hunk_2
