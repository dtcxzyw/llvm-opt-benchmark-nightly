inline.NumInlined: 5586
inline.NumDeleted: 2028
begin_hunk_0_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader32, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 9223372036854775800     ; 3 uses
  %i.as = shl i64 %n.vec, 2                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ak, i64 %i.as  ; 2 uses
  %i.au = getelementptr i8, ptr %i.z, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 2                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %offset.idx ; 2 uses
  %next.gep29 = getelementptr i8, ptr %i.z, i64 %offset.idx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !720)
  %i.av = getelementptr i8, ptr %next.gep29, i64 16
end_hunk_0
begin_hunk_1_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEC2ERKS4_:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bp, 12
  %n.vec = and i64 %i.bp, -16                     ; 4 uses
  %i.br = shl i64 %n.vec, 1                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bc, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bg, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 1                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bc, i64 %offset.idx ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.bg, i64 %offset.idx ; 2 uses
  %i.bu = getelementptr i8, ptr %next.gep48, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep48, align 1
  %wide.load49 = load <8 x i16>, ptr %i.bu, align 1
end_hunk_1
begin_hunk_2_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEC2ERKS4_:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec52 = and i64 %i.bp, -4                    ; 3 uses
  %i.bx = shl i64 %n.vec52, 1                     ; 2 uses
  %i.by = getelementptr i8, ptr %i.bc, i64 %i.bx  ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bg, i64 %i.bx
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index53 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 2 uses
  %i.ca = shl i64 %index53, 1                     ; 2 uses
  %next.gep54.a = getelementptr i8, ptr %i.bc, i64 %i.ca
  %next.gep55 = getelementptr i8, ptr %i.bg, i64 %i.ca
  %wide.load56 = load <4 x i16>, ptr %next.gep55, align 1
  store <4 x i16> %wide.load56, ptr %next.gep54.a, align 1
  %index.next57 = add nuw i64 %index53, 4         ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEC2ERKS4_:bb.a
  br i1 %or.cond79, label %.lr.ph.i.i.i.i.i20.preheader80, label %vector.ph64

vector.ph64:                                      ; preds = %.lr.ph.i.i.i.i.i20.preheader
  %n.vec66 = and i64 %i.dc, 9223372036854775800   ; 3 uses
  %i.de = shl i64 %n.vec66, 2                     ; 2 uses
  %i.df = getelementptr i8, ptr %i.cp, i64 %i.de  ; 2 uses
  %i.dg = getelementptr i8, ptr %i.ct, i64 %i.de
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph64
  %index68 = phi i64 [ 0, %vector.ph64 ], [ %index.next75, %vector.body67 ] ; 2 uses
  %offset.idx69 = shl i64 %index68, 2             ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.cp, i64 %offset.idx69 ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.ct, i64 %offset.idx69 ; 2 uses
  %i.dh = getelementptr i8, ptr %next.gep72, i64 16
  %wide.load73 = load <4 x i32>, ptr %next.gep72, align 2
  %wide.load74 = load <4 x i32>, ptr %i.dh, align 2
end_hunk_3
begin_hunk_4_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader32, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 9223372036854775800     ; 3 uses
  %i.as = shl i64 %n.vec, 2                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ak, i64 %i.as  ; 2 uses
  %i.au = getelementptr i8, ptr %i.z, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 2                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %offset.idx ; 2 uses
  %next.gep29 = getelementptr i8, ptr %i.z, i64 %offset.idx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !766)
  %i.av = getelementptr i8, ptr %next.gep29, i64 16
end_hunk_4
begin_hunk_5_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEC2ERKS4_:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.br, 9223372036854775800     ; 3 uses
  %i.bt = shl i64 %n.vec, 2                       ; 2 uses
  %i.bu = getelementptr i8, ptr %i.be, i64 %i.bt  ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bi, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 2                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.be, i64 %offset.idx ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.bi, i64 %offset.idx ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep27, align 2
  %wide.load28 = load <4 x i32>, ptr %i.bw, align 2
end_hunk_5
begin_hunk_6_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader32, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 9223372036854775800     ; 3 uses
  %i.as = shl i64 %n.vec, 2                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ak, i64 %i.as  ; 2 uses
  %i.au = getelementptr i8, ptr %i.z, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 2                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %offset.idx ; 2 uses
  %next.gep29 = getelementptr i8, ptr %i.z, i64 %offset.idx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !792)
  %i.av = getelementptr i8, ptr %next.gep29, i64 16
end_hunk_6
begin_hunk_7_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EEC2ERKS4_:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bp, 12
  %n.vec = and i64 %i.bp, -16                     ; 4 uses
  %i.br = shl i64 %n.vec, 1                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bc, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bg, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 1                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bc, i64 %offset.idx ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.bg, i64 %offset.idx ; 2 uses
  %i.bu = getelementptr i8, ptr %next.gep48, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep48, align 1
  %wide.load49 = load <8 x i16>, ptr %i.bu, align 1
end_hunk_7
begin_hunk_8_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EEC2ERKS4_:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec52 = and i64 %i.bp, -4                    ; 3 uses
  %i.bx = shl i64 %n.vec52, 1                     ; 2 uses
  %i.by = getelementptr i8, ptr %i.bc, i64 %i.bx  ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bg, i64 %i.bx
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index53 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 2 uses
  %i.ca = shl i64 %index53, 1                     ; 2 uses
  %next.gep54.a = getelementptr i8, ptr %i.bc, i64 %i.ca
  %next.gep55 = getelementptr i8, ptr %i.bg, i64 %i.ca
  %wide.load56 = load <4 x i16>, ptr %next.gep55, align 1
  store <4 x i16> %wide.load56, ptr %next.gep54.a, align 1
  %index.next57 = add nuw i64 %index53, 4         ; 2 uses
end_hunk_8
begin_hunk_9_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EEC2ERKS4_:bb.a
  br i1 %or.cond79, label %.lr.ph.i.i.i.i.i20.preheader80, label %vector.ph64

vector.ph64:                                      ; preds = %.lr.ph.i.i.i.i.i20.preheader
  %n.vec66 = and i64 %i.dc, 9223372036854775800   ; 3 uses
  %i.de = shl i64 %n.vec66, 2                     ; 2 uses
  %i.df = getelementptr i8, ptr %i.cp, i64 %i.de  ; 2 uses
  %i.dg = getelementptr i8, ptr %i.ct, i64 %i.de
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph64
  %index68 = phi i64 [ 0, %vector.ph64 ], [ %index.next75, %vector.body67 ] ; 2 uses
  %offset.idx69 = shl i64 %index68, 2             ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.cp, i64 %offset.idx69 ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.ct, i64 %offset.idx69 ; 2 uses
  %i.dh = getelementptr i8, ptr %next.gep72, i64 16
  %wide.load73 = load <4 x i32>, ptr %next.gep72, align 2
  %wide.load74 = load <4 x i32>, ptr %i.dh, align 2
end_hunk_9
begin_hunk_10_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader32, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 9223372036854775800     ; 3 uses
  %i.as = shl i64 %n.vec, 2                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ak, i64 %i.as  ; 2 uses
  %i.au = getelementptr i8, ptr %i.z, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 2                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %offset.idx ; 2 uses
  %next.gep29 = getelementptr i8, ptr %i.z, i64 %offset.idx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !811)
  %i.av = getelementptr i8, ptr %next.gep29, i64 16
end_hunk_10
begin_hunk_11_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEC2ERKS4_:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.br, 9223372036854775800     ; 3 uses
  %i.bt = shl i64 %n.vec, 2                       ; 2 uses
  %i.bu = getelementptr i8, ptr %i.be, i64 %i.bt  ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bi, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 2                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.be, i64 %offset.idx ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.bi, i64 %offset.idx ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep27, align 2
  %wide.load28 = load <4 x i32>, ptr %i.bw, align 2
end_hunk_11
begin_hunk_12_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE13_M_make_rangeEcc:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.z, 12
  %n.vec = and i64 %i.z, -16                      ; 4 uses
  %i.ab = shl i64 %n.vec, 1                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.t, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.i, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 1                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %offset.idx ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.i, i64 %offset.idx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !844)
  %i.ae = getelementptr i8, ptr %next.gep12, i64 16
end_hunk_12
begin_hunk_13_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE13_M_make_rangeEcc:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %i.z, -4                     ; 3 uses
  %i.ah = shl i64 %n.vec16, 1                     ; 2 uses
  %i.ai = getelementptr i8, ptr %i.t, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.i, i64 %i.ah
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = shl i64 %index17, 1                     ; 2 uses
  %next.gep18.a = getelementptr i8, ptr %i.t, i64 %i.ak
  %next.gep19 = getelementptr i8, ptr %i.i, i64 %i.ak
  tail call void @llvm.experimental.noalias.scope.decl(metadata !841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !844)
  %wide.load20 = load <4 x i16>, ptr %next.gep19, align 1, !alias.scope !844, !noalias !841
end_hunk_13
begin_hunk_14_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE13_M_make_rangeEcc:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.z, 12
  %n.vec = and i64 %i.z, -16                      ; 4 uses
  %i.ab = shl i64 %n.vec, 1                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.t, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.i, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 1                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %offset.idx ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.i, i64 %offset.idx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  %i.ae = getelementptr i8, ptr %next.gep12, i64 16
end_hunk_14
begin_hunk_15_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE13_M_make_rangeEcc:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %i.z, -4                     ; 3 uses
  %i.ah = shl i64 %n.vec16, 1                     ; 2 uses
  %i.ai = getelementptr i8, ptr %i.t, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.i, i64 %i.ah
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = shl i64 %index17, 1                     ; 2 uses
  %next.gep18.a = getelementptr i8, ptr %i.t, i64 %i.ak
  %next.gep19 = getelementptr i8, ptr %i.i, i64 %i.ak
  tail call void @llvm.experimental.noalias.scope.decl(metadata !879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  %wide.load20 = load <4 x i16>, ptr %next.gep19, align 1, !alias.scope !882, !noalias !879
end_hunk_15
