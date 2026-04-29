inline.NumInlined: 5049
inline.NumDeleted: 1965
begin_hunk_0_@_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 4 uses
  %i.ae = shl i64 %n.vec, 3
  %i.af = getelementptr i8, ptr %i.u, i64 %i.ae   ; 2 uses
  %1 = shl i64 %n.vec, 3
  %i.ag = getelementptr i8, ptr %i.h, i64 %1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.u, i64 %offset.idx ; 2 uses
  %offset.idx27 = shl i64 %index, 3
  %next.gep28 = getelementptr i8, ptr %i.h, i64 %offset.idx27 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.ah = getelementptr i8, ptr %next.gep28, i64 16
end_hunk_0
begin_hunk_1_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader32, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 9223372036854775800     ; 4 uses
  %i.as = shl i64 %n.vec, 2
  %i.at = getelementptr i8, ptr %i.ak, i64 %i.as  ; 2 uses
  %3 = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.z, i64 %3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ak, i64 %offset.idx ; 2 uses
  %offset.idx28 = shl i64 %index, 2
  %next.gep29 = getelementptr i8, ptr %i.z, i64 %offset.idx28 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
  %i.av = getelementptr i8, ptr %next.gep29, i64 16
end_hunk_1
begin_hunk_2_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEC2ERKS4_:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bp, 12
  %n.vec = and i64 %i.bp, -16                     ; 5 uses
  %i.br = shl i64 %n.vec, 1
  %i.bs = getelementptr i8, ptr %i.bc, i64 %i.br  ; 2 uses
  %2 = shl i64 %n.vec, 1
  %i.bt = getelementptr i8, ptr %i.bg, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.bc, i64 %offset.idx ; 2 uses
  %offset.idx47 = shl i64 %index, 1
  %next.gep48 = getelementptr i8, ptr %i.bg, i64 %offset.idx47 ; 2 uses
  %i.bu = getelementptr i8, ptr %next.gep48, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep48, align 1
  %wide.load49 = load <8 x i16>, ptr %i.bu, align 1
end_hunk_2
begin_hunk_3_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEC2ERKS4_:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec52 = and i64 %i.bp, -4                    ; 4 uses
  %i.bx = shl i64 %n.vec52, 1
  %i.by = getelementptr i8, ptr %i.bc, i64 %i.bx  ; 2 uses
  %3 = shl i64 %n.vec52, 1
  %i.bz = getelementptr i8, ptr %i.bg, i64 %3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index53 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 3 uses
  %i.ca = shl i64 %index53, 1
  %next.gep54.a = getelementptr i8, ptr %i.bc, i64 %i.ca
  %4 = shl i64 %index53, 1
  %next.gep55 = getelementptr i8, ptr %i.bg, i64 %4
  %wide.load56 = load <4 x i16>, ptr %next.gep55, align 1
  store <4 x i16> %wide.load56, ptr %next.gep54.a, align 1
  %index.next57 = add nuw i64 %index53, 4         ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEC2ERKS4_:bb.a
  br i1 %or.cond79, label %.lr.ph.i.i.i.i.i20.preheader80, label %vector.ph64

vector.ph64:                                      ; preds = %.lr.ph.i.i.i.i.i20.preheader
  %n.vec66 = and i64 %i.dc, 9223372036854775800   ; 4 uses
  %i.de = shl i64 %n.vec66, 2
  %i.df = getelementptr i8, ptr %i.cp, i64 %i.de  ; 2 uses
  %5 = shl i64 %n.vec66, 2
  %i.dg = getelementptr i8, ptr %i.ct, i64 %5
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph64
  %index68 = phi i64 [ 0, %vector.ph64 ], [ %index.next75, %vector.body67 ] ; 3 uses
  %offset.idx69 = shl i64 %index68, 2
  %next.gep70 = getelementptr i8, ptr %i.cp, i64 %offset.idx69 ; 2 uses
  %offset.idx71 = shl i64 %index68, 2
  %next.gep72 = getelementptr i8, ptr %i.ct, i64 %offset.idx71 ; 2 uses
  %i.dh = getelementptr i8, ptr %next.gep72, i64 16
  %wide.load73 = load <4 x i32>, ptr %next.gep72, align 2
  %wide.load74 = load <4 x i32>, ptr %i.dh, align 2
end_hunk_4
begin_hunk_5_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader32, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 9223372036854775800     ; 4 uses
  %i.as = shl i64 %n.vec, 2
  %i.at = getelementptr i8, ptr %i.ak, i64 %i.as  ; 2 uses
  %3 = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.z, i64 %3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ak, i64 %offset.idx ; 2 uses
  %offset.idx28 = shl i64 %index, 2
  %next.gep29 = getelementptr i8, ptr %i.z, i64 %offset.idx28 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614)
  %i.av = getelementptr i8, ptr %next.gep29, i64 16
end_hunk_5
begin_hunk_6_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEC2ERKS4_:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.br, 9223372036854775800     ; 4 uses
  %i.bt = shl i64 %n.vec, 2
  %i.bu = getelementptr i8, ptr %i.be, i64 %i.bt  ; 2 uses
  %2 = shl i64 %n.vec, 2
  %i.bv = getelementptr i8, ptr %i.bi, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.be, i64 %offset.idx ; 2 uses
  %offset.idx26 = shl i64 %index, 2
  %next.gep27 = getelementptr i8, ptr %i.bi, i64 %offset.idx26 ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep27, align 2
  %wide.load28 = load <4 x i32>, ptr %i.bw, align 2
end_hunk_6
begin_hunk_7_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader32, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 9223372036854775800     ; 4 uses
  %i.as = shl i64 %n.vec, 2
  %i.at = getelementptr i8, ptr %i.ak, i64 %i.as  ; 2 uses
  %3 = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.z, i64 %3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ak, i64 %offset.idx ; 2 uses
  %offset.idx28 = shl i64 %index, 2
  %next.gep29 = getelementptr i8, ptr %i.z, i64 %offset.idx28 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641)
  %i.av = getelementptr i8, ptr %next.gep29, i64 16
end_hunk_7
begin_hunk_8_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EEC2ERKS4_:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bp, 12
  %n.vec = and i64 %i.bp, -16                     ; 5 uses
  %i.br = shl i64 %n.vec, 1
  %i.bs = getelementptr i8, ptr %i.bc, i64 %i.br  ; 2 uses
  %2 = shl i64 %n.vec, 1
  %i.bt = getelementptr i8, ptr %i.bg, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.bc, i64 %offset.idx ; 2 uses
  %offset.idx47 = shl i64 %index, 1
  %next.gep48 = getelementptr i8, ptr %i.bg, i64 %offset.idx47 ; 2 uses
  %i.bu = getelementptr i8, ptr %next.gep48, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep48, align 1
  %wide.load49 = load <8 x i16>, ptr %i.bu, align 1
end_hunk_8
begin_hunk_9_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EEC2ERKS4_:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec52 = and i64 %i.bp, -4                    ; 4 uses
  %i.bx = shl i64 %n.vec52, 1
  %i.by = getelementptr i8, ptr %i.bc, i64 %i.bx  ; 2 uses
  %3 = shl i64 %n.vec52, 1
  %i.bz = getelementptr i8, ptr %i.bg, i64 %3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index53 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 3 uses
  %i.ca = shl i64 %index53, 1
  %next.gep54.a = getelementptr i8, ptr %i.bc, i64 %i.ca
  %4 = shl i64 %index53, 1
  %next.gep55 = getelementptr i8, ptr %i.bg, i64 %4
  %wide.load56 = load <4 x i16>, ptr %next.gep55, align 1
  store <4 x i16> %wide.load56, ptr %next.gep54.a, align 1
  %index.next57 = add nuw i64 %index53, 4         ; 2 uses
end_hunk_9
begin_hunk_10_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EEC2ERKS4_:bb.a
  br i1 %or.cond79, label %.lr.ph.i.i.i.i.i20.preheader80, label %vector.ph64

vector.ph64:                                      ; preds = %.lr.ph.i.i.i.i.i20.preheader
  %n.vec66 = and i64 %i.dc, 9223372036854775800   ; 4 uses
  %i.de = shl i64 %n.vec66, 2
  %i.df = getelementptr i8, ptr %i.cp, i64 %i.de  ; 2 uses
  %5 = shl i64 %n.vec66, 2
  %i.dg = getelementptr i8, ptr %i.ct, i64 %5
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph64
  %index68 = phi i64 [ 0, %vector.ph64 ], [ %index.next75, %vector.body67 ] ; 3 uses
  %offset.idx69 = shl i64 %index68, 2
  %next.gep70 = getelementptr i8, ptr %i.cp, i64 %offset.idx69 ; 2 uses
  %offset.idx71 = shl i64 %index68, 2
  %next.gep72 = getelementptr i8, ptr %i.ct, i64 %offset.idx71 ; 2 uses
  %i.dh = getelementptr i8, ptr %next.gep72, i64 16
  %wide.load73 = load <4 x i32>, ptr %next.gep72, align 2
  %wide.load74 = load <4 x i32>, ptr %i.dh, align 2
end_hunk_10
begin_hunk_11_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader32, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 9223372036854775800     ; 4 uses
  %i.as = shl i64 %n.vec, 2
  %i.at = getelementptr i8, ptr %i.ak, i64 %i.as  ; 2 uses
  %3 = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.z, i64 %3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ak, i64 %offset.idx ; 2 uses
  %offset.idx28 = shl i64 %index, 2
  %next.gep29 = getelementptr i8, ptr %i.z, i64 %offset.idx28 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660)
  %i.av = getelementptr i8, ptr %next.gep29, i64 16
end_hunk_11
begin_hunk_12_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEC2ERKS4_:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.br, 9223372036854775800     ; 4 uses
  %i.bt = shl i64 %n.vec, 2
  %i.bu = getelementptr i8, ptr %i.be, i64 %i.bt  ; 2 uses
  %2 = shl i64 %n.vec, 2
  %i.bv = getelementptr i8, ptr %i.bi, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.be, i64 %offset.idx ; 2 uses
  %offset.idx26 = shl i64 %index, 2
  %next.gep27 = getelementptr i8, ptr %i.bi, i64 %offset.idx26 ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep27, align 2
  %wide.load28 = load <4 x i32>, ptr %i.bw, align 2
end_hunk_12
begin_hunk_13_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE13_M_make_rangeEcc:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.z, 12
  %n.vec = and i64 %i.z, -16                      ; 5 uses
  %i.ab = shl i64 %n.vec, 1
  %i.ac = getelementptr i8, ptr %i.t, i64 %i.ab   ; 2 uses
  %3 = shl i64 %n.vec, 1
  %i.ad = getelementptr i8, ptr %i.i, i64 %3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.t, i64 %offset.idx ; 2 uses
  %offset.idx11 = shl i64 %index, 1
  %next.gep12 = getelementptr i8, ptr %i.i, i64 %offset.idx11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693)
  %i.ae = getelementptr i8, ptr %next.gep12, i64 16
end_hunk_13
begin_hunk_14_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE13_M_make_rangeEcc:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %i.z, -4                     ; 4 uses
  %i.ah = shl i64 %n.vec16, 1
  %i.ai = getelementptr i8, ptr %i.t, i64 %i.ah   ; 2 uses
  %4 = shl i64 %n.vec16, 1
  %i.aj = getelementptr i8, ptr %i.i, i64 %4
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 3 uses
  %i.ak = shl i64 %index17, 1
  %next.gep18.a = getelementptr i8, ptr %i.t, i64 %i.ak
  %5 = shl i64 %index17, 1
  %next.gep19 = getelementptr i8, ptr %i.i, i64 %5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693)
  %wide.load20 = load <4 x i16>, ptr %next.gep19, align 1, !alias.scope !693, !noalias !690
end_hunk_14
begin_hunk_15_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE13_M_make_rangeEcc:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.z, 12
  %n.vec = and i64 %i.z, -16                      ; 5 uses
  %i.ab = shl i64 %n.vec, 1
  %i.ac = getelementptr i8, ptr %i.t, i64 %i.ab   ; 2 uses
  %3 = shl i64 %n.vec, 1
  %i.ad = getelementptr i8, ptr %i.i, i64 %3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.t, i64 %offset.idx ; 2 uses
  %offset.idx11 = shl i64 %index, 1
  %next.gep12 = getelementptr i8, ptr %i.i, i64 %offset.idx11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !745)
  %i.ae = getelementptr i8, ptr %next.gep12, i64 16
end_hunk_15
begin_hunk_16_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE13_M_make_rangeEcc:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %i.z, -4                     ; 4 uses
  %i.ah = shl i64 %n.vec16, 1
  %i.ai = getelementptr i8, ptr %i.t, i64 %i.ah   ; 2 uses
  %4 = shl i64 %n.vec16, 1
  %i.aj = getelementptr i8, ptr %i.i, i64 %4
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 3 uses
  %i.ak = shl i64 %index17, 1
  %next.gep18.a = getelementptr i8, ptr %i.t, i64 %i.ak
  %5 = shl i64 %index17, 1
  %next.gep19 = getelementptr i8, ptr %i.i, i64 %5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !745)
  %wide.load20 = load <4 x i16>, ptr %next.gep19, align 1, !alias.scope !745, !noalias !742
end_hunk_16
begin_hunk_17_@_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader65, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 4611686018427387900      ; 4 uses
  %i.ab = shl i64 %n.vec, 3
  %i.ac = getelementptr i8, ptr %i.q, i64 %i.ab   ; 2 uses
  %3 = shl i64 %n.vec, 3
  %i.ad = getelementptr i8, ptr %i.d, i64 %3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.q, i64 %offset.idx ; 2 uses
  %offset.idx36 = shl i64 %index, 3
  %next.gep37 = getelementptr i8, ptr %i.d, i64 %offset.idx36 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  %i.ae = getelementptr i8, ptr %next.gep37, i64 16
end_hunk_17
begin_hunk_18_@_ZNSt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_:bb.a
  br i1 %found.conflict45, label %.lr.ph.i.i.i17.preheader64, label %vector.ph48

vector.ph48:                                      ; preds = %vector.memcheck40
  %n.vec50 = and i64 %i.ap, 4611686018427387900   ; 4 uses
  %i.av = shl i64 %n.vec50, 3
  %i.aw = getelementptr i8, ptr %i.al, i64 %i.av  ; 2 uses
  %4 = shl i64 %n.vec50, 3
  %i.ax = getelementptr i8, ptr %1, i64 %4
  br label %vector.body51

vector.body51:                                    ; preds = %vector.body51, %vector.ph48
  %index52 = phi i64 [ 0, %vector.ph48 ], [ %index.next59, %vector.body51 ] ; 3 uses
  %offset.idx53 = shl i64 %index52, 3
  %next.gep54 = getelementptr i8, ptr %i.al, i64 %offset.idx53 ; 2 uses
  %offset.idx55 = shl i64 %index52, 3
  %next.gep56 = getelementptr i8, ptr %1, i64 %offset.idx55 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !908)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !911)
  %i.ay = getelementptr i8, ptr %next.gep56, i64 16
end_hunk_18
begin_hunk_19_@_ZNSt19__shrink_to_fit_auxISt6vectorISt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS4_EESaIS7_EELb1EE8_S_do_itERS9_:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.o, 4611686018427387900      ; 4 uses
  %i.t = shl i64 %n.vec, 3
  %i.u = getelementptr i8, ptr %i.k, i64 %i.t     ; 2 uses
  %1 = shl i64 %n.vec, 3
  %i.v = getelementptr i8, ptr %i.a, i64 %1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.k, i64 %offset.idx ; 2 uses
  %offset.idx27 = shl i64 %index, 3
  %next.gep28 = getelementptr i8, ptr %i.a, i64 %offset.idx27 ; 4 uses
  %i.w = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep28, align 8, !tbaa !14, !alias.scope !920
  %wide.load29 = load <2 x i64>, ptr %i.w, align 8, !tbaa !14, !alias.scope !920
end_hunk_19
