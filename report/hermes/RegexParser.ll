inline.NumInlined: 3173
inline.NumDeleted: 1582
begin_hunk_0_@_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_15AlternationNodeEJSt6vectorIS6_IPNS0_4NodeESaIS8_EESaISA_EEEEEPT_DpOT0_:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i8.preheader32, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.as, 4611686018427387900     ; 4 uses
  %i.ax = shl i64 %n.vec, 3
  %i.ay = getelementptr i8, ptr %i.am, i64 %i.ax  ; 2 uses
  %3 = shl i64 %n.vec, 3
  %i.az = getelementptr i8, ptr %i.ab, i64 %3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.am, i64 %offset.idx ; 2 uses
  %offset.idx28 = shl i64 %index, 3
  %next.gep29 = getelementptr i8, ptr %i.ab, i64 %offset.idx28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.ba = getelementptr i8, ptr %next.gep29, i64 16
end_hunk_0
begin_hunk_1_@_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE14pushLookaroundESt6vectorIPNS0_4NodeESaIS6_EEttbb:bb.a
  br i1 %found.conflict37, label %.lr.ph.i.i.i.i.preheader56, label %vector.ph40

vector.ph40:                                      ; preds = %vector.memcheck32
  %n.vec42 = and i64 %i.cm, 4611686018427387900   ; 4 uses
  %i.cr = shl i64 %n.vec42, 3
  %i.cs = getelementptr i8, ptr %i.cg, i64 %i.cr  ; 2 uses
  %6 = shl i64 %n.vec42, 3
  %i.ct = getelementptr i8, ptr %i.bv, i64 %6
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph40
  %index44 = phi i64 [ 0, %vector.ph40 ], [ %index.next51, %vector.body43 ] ; 3 uses
  %offset.idx45 = shl i64 %index44, 3
  %next.gep46 = getelementptr i8, ptr %i.cg, i64 %offset.idx45 ; 2 uses
  %offset.idx47 = shl i64 %index44, 3
  %next.gep48 = getelementptr i8, ptr %i.bv, i64 %offset.idx47 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  %i.cu = getelementptr i8, ptr %next.gep48, i64 16
end_hunk_1
begin_hunk_2_@_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_23MarkedSubexpressionNodeEJSt6vectorIPNS0_4NodeESaIS8_EERjEEEPT_DpOT0_:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ar, 4611686018427387900     ; 4 uses
  %i.aw = shl i64 %n.vec, 3
  %i.ax = getelementptr i8, ptr %i.al, i64 %i.aw  ; 2 uses
  %3 = shl i64 %n.vec, 3
  %i.ay = getelementptr i8, ptr %i.aa, i64 %3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.al, i64 %offset.idx ; 2 uses
  %offset.idx27 = shl i64 %index, 3
  %next.gep28 = getelementptr i8, ptr %i.aa, i64 %offset.idx27 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.az = getelementptr i8, ptr %next.gep28, i64 16
end_hunk_2
begin_hunk_3_@_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_14LookaroundNodeEJSt6vectorIPNS0_4NodeESaIS8_EERtSB_RbSC_EEEPT_DpOT0_:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader34, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ay, 4611686018427387900     ; 4 uses
  %i.bd = shl i64 %n.vec, 3
  %i.be = getelementptr i8, ptr %i.as, i64 %i.bd  ; 2 uses
  %6 = shl i64 %n.vec, 3
  %i.bf = getelementptr i8, ptr %i.ah, i64 %6
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.as, i64 %offset.idx ; 2 uses
  %offset.idx30 = shl i64 %index, 3
  %next.gep31 = getelementptr i8, ptr %i.ah, i64 %offset.idx30 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.bg = getelementptr i8, ptr %next.gep31, i64 16
end_hunk_3
begin_hunk_4_@_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_8LoopNodeEJjRjS6_RbS6_RtSt6vectorIPNS0_4NodeESaISB_EEEEEPT_DpOT0_:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader37, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bb, 4611686018427387900     ; 4 uses
  %i.bg = shl i64 %n.vec, 3
  %i.bh = getelementptr i8, ptr %i.av, i64 %i.bg  ; 2 uses
  %8 = shl i64 %n.vec, 3
  %i.bi = getelementptr i8, ptr %i.ak, i64 %8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.av, i64 %offset.idx ; 2 uses
  %offset.idx33 = shl i64 %index, 3
  %next.gep34 = getelementptr i8, ptr %i.ak, i64 %offset.idx33 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.bj = getelementptr i8, ptr %next.gep34, i64 16
end_hunk_4
begin_hunk_5_@_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_14LeftAnchorNodeEJNS0_11SyntaxFlagsEEEEPT_DpOT0_:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 4 uses
  %i.ag = shl i64 %n.vec, 3
  %i.ah = getelementptr i8, ptr %i.v, i64 %i.ag   ; 2 uses
  %2 = shl i64 %n.vec, 3
  %i.ai = getelementptr i8, ptr %i.k, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.v, i64 %offset.idx ; 2 uses
  %offset.idx20 = shl i64 %index, 3
  %next.gep21 = getelementptr i8, ptr %i.k, i64 %offset.idx20 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %i.aj = getelementptr i8, ptr %next.gep21, i64 16
end_hunk_5
begin_hunk_6_@_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_15RightAnchorNodeEJEEEPT_DpOT0_:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 4 uses
  %i.ae = shl i64 %n.vec, 3
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ae   ; 2 uses
  %1 = shl i64 %n.vec, 3
  %i.ag = getelementptr i8, ptr %i.i, i64 %1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.t, i64 %offset.idx ; 2 uses
  %offset.idx19 = shl i64 %index, 3
  %next.gep20 = getelementptr i8, ptr %i.i, i64 %offset.idx19 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %i.ah = getelementptr i8, ptr %next.gep20, i64 16
end_hunk_6
begin_hunk_7_@_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_16WordBoundaryNodeEJRbEEEPT_DpOT0_:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 4 uses
  %i.ag = shl i64 %n.vec, 3
  %i.ah = getelementptr i8, ptr %i.v, i64 %i.ag   ; 2 uses
  %2 = shl i64 %n.vec, 3
  %i.ai = getelementptr i8, ptr %i.k, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.v, i64 %offset.idx ; 2 uses
  %offset.idx20 = shl i64 %index, 3
  %next.gep21 = getelementptr i8, ptr %i.k, i64 %offset.idx20 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  %i.aj = getelementptr i8, ptr %next.gep21, i64 16
end_hunk_7
begin_hunk_8_@_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE13pushCharClassENS0_14CharacterClassE:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ab, 12
  %n.vec = and i64 %i.ab, -16                     ; 5 uses
  %i.ad = shl i64 %n.vec, 1
  %i.ae = getelementptr i8, ptr %i.v, i64 %i.ad   ; 2 uses
  %2 = shl i64 %n.vec, 1
  %i.af = getelementptr i8, ptr %i.k, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.v, i64 %offset.idx ; 2 uses
  %offset.idx6 = shl i64 %index, 1
  %next.gep7 = getelementptr i8, ptr %i.k, i64 %offset.idx6 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %i.ag = getelementptr i8, ptr %next.gep7, i64 16
end_hunk_8
begin_hunk_9_@_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE13pushCharClassENS0_14CharacterClassE:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %i.ab, -4                    ; 4 uses
  %i.aj = shl i64 %n.vec11, 1
  %i.ak = getelementptr i8, ptr %i.v, i64 %i.aj   ; 2 uses
  %3 = shl i64 %n.vec11, 1
  %i.al = getelementptr i8, ptr %i.k, i64 %3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 3 uses
  %i.am = shl i64 %index12, 1
  %next.gep13.a = getelementptr i8, ptr %i.v, i64 %i.am
  %4 = shl i64 %index12, 1
  %next.gep14 = getelementptr i8, ptr %i.k, i64 %4
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %wide.load15 = load <4 x i16>, ptr %next.gep14, align 1, !alias.scope !527, !noalias !524
end_hunk_9
begin_hunk_10_@_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_11BracketNodeIS2_EEJRS2_RbRNS0_11SyntaxFlagsEEEEPT_DpOT0_:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 4611686018427387900     ; 4 uses
  %i.aq = shl i64 %n.vec, 3
  %i.ar = getelementptr i8, ptr %i.af, i64 %i.aq  ; 2 uses
  %4 = shl i64 %n.vec, 3
  %i.as = getelementptr i8, ptr %i.u, i64 %4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.af, i64 %offset.idx ; 2 uses
  %offset.idx22 = shl i64 %index, 3
  %next.gep23 = getelementptr i8, ptr %i.u, i64 %offset.idx22 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
  %i.at = getelementptr i8, ptr %next.gep23, i64 16
end_hunk_10
begin_hunk_11_@_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_11BackRefNodeEJRjEEEPT_DpOT0_:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 4 uses
  %i.ah = shl i64 %n.vec, 3
  %i.ai = getelementptr i8, ptr %i.w, i64 %i.ah   ; 2 uses
  %2 = shl i64 %n.vec, 3
  %i.aj = getelementptr i8, ptr %i.l, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.w, i64 %offset.idx ; 2 uses
  %offset.idx20 = shl i64 %index, 3
  %next.gep21 = getelementptr i8, ptr %i.l, i64 %offset.idx20 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.ak = getelementptr i8, ptr %next.gep21, i64 16
end_hunk_11
begin_hunk_12_@_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_11BackRefNodeEJiEEEPT_DpOT0_:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 4 uses
  %i.ah = shl i64 %n.vec, 3
  %i.ai = getelementptr i8, ptr %i.w, i64 %i.ah   ; 2 uses
  %2 = shl i64 %n.vec, 3
  %i.aj = getelementptr i8, ptr %i.l, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.w, i64 %offset.idx ; 2 uses
  %offset.idx20 = shl i64 %index, 3
  %next.gep21 = getelementptr i8, ptr %i.l, i64 %offset.idx20 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  %i.ak = getelementptr i8, ptr %next.gep21, i64 16
end_hunk_12
begin_hunk_13_@_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_11BackRefNodeEJjEEEPT_DpOT0_:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 4 uses
  %i.ah = shl i64 %n.vec, 3
  %i.ai = getelementptr i8, ptr %i.w, i64 %i.ah   ; 2 uses
  %2 = shl i64 %n.vec, 3
  %i.aj = getelementptr i8, ptr %i.l, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.w, i64 %offset.idx ; 2 uses
  %offset.idx20 = shl i64 %index, 3
  %next.gep21 = getelementptr i8, ptr %i.l, i64 %offset.idx20 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  %i.ak = getelementptr i8, ptr %next.gep21, i64 16
end_hunk_13
begin_hunk_14_@_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_12MatchAnyNodeEJNS0_11SyntaxFlagsEEEEPT_DpOT0_:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ad, 4611686018427387900     ; 4 uses
  %i.ai = shl i64 %n.vec, 3
  %i.aj = getelementptr i8, ptr %i.x, i64 %i.ai   ; 2 uses
  %2 = shl i64 %n.vec, 3
  %i.ak = getelementptr i8, ptr %i.m, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.x, i64 %offset.idx ; 2 uses
  %offset.idx20 = shl i64 %index, 3
  %next.gep21 = getelementptr i8, ptr %i.m, i64 %offset.idx20 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !643)
  %i.al = getelementptr i8, ptr %next.gep21, i64 16
end_hunk_14
begin_hunk_15_@_ZZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE21consumeCharacterClassEvENKUlRKNS7_9ClassAtomEE_clESA_:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ae, 12
  %n.vec = and i64 %i.ae, -16                     ; 5 uses
  %i.ag = shl i64 %n.vec, 1
  %i.ah = getelementptr i8, ptr %i.y, i64 %i.ag   ; 2 uses
  %3 = shl i64 %n.vec, 1
  %i.ai = getelementptr i8, ptr %i.n, i64 %3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.y, i64 %offset.idx ; 2 uses
  %offset.idx16 = shl i64 %index, 1
  %next.gep17 = getelementptr i8, ptr %i.n, i64 %offset.idx16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  %i.aj = getelementptr i8, ptr %next.gep17, i64 16
end_hunk_15
begin_hunk_16_@_ZZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE21consumeCharacterClassEvENKUlRKNS7_9ClassAtomEE_clESA_:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %i.ae, -4                    ; 4 uses
  %i.am = shl i64 %n.vec21, 1
  %i.an = getelementptr i8, ptr %i.y, i64 %i.am   ; 2 uses
  %4 = shl i64 %n.vec21, 1
  %i.ao = getelementptr i8, ptr %i.n, i64 %4
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 3 uses
  %i.ap = shl i64 %index22, 1
  %next.gep23.a = getelementptr i8, ptr %i.y, i64 %i.ap
  %5 = shl i64 %index22, 1
  %next.gep24 = getelementptr i8, ptr %i.n, i64 %5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  %wide.load25 = load <4 x i16>, ptr %next.gep24, align 1, !alias.scope !658, !noalias !655
end_hunk_16
begin_hunk_17_@_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_13MatchCharNodeEJN4llvh11SmallVectorIjLj5EEENS0_11SyntaxFlagsEEEEPT_DpOT0_:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.av, 4611686018427387900     ; 4 uses
  %i.ba = shl i64 %n.vec, 3
  %i.bb = getelementptr i8, ptr %i.ap, i64 %i.ba  ; 2 uses
  %4 = shl i64 %n.vec, 3
  %i.bc = getelementptr i8, ptr %i.ae, i64 %4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ap, i64 %offset.idx ; 2 uses
  %offset.idx22 = shl i64 %index, 3
  %next.gep23 = getelementptr i8, ptr %i.ae, i64 %offset.idx22 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !682)
  call void @llvm.experimental.noalias.scope.decl(metadata !685)
  %i.bd = getelementptr i8, ptr %next.gep23, i64 16
end_hunk_17
