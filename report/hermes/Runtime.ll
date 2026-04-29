inline.NumInlined: 3789
inline.NumDeleted: 2145
begin_hunk_0_@_ZN6hermes2vm7Runtime20initCharacterStringsEv:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader44, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 4 uses
  %i.ae = shl i64 %n.vec, 3
  %i.af = getelementptr i8, ptr %i.x, i64 %i.ae
  %2 = shl i64 %n.vec, 3
  %i.ag = getelementptr i8, ptr %i.o, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.x, i64 %offset.idx ; 2 uses
  %offset.idx18 = shl i64 %index, 3
  %next.gep19 = getelementptr i8, ptr %i.o, i64 %offset.idx18 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !466)
  call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.ah = getelementptr i8, ptr %next.gep19, i64 16
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm7Runtime20initCharacterStringsEv:bb.a
  br i1 %or.cond42, label %.lr.ph.i.i.i.i.i.i.preheader43, label %vector.ph26

vector.ph26:                                      ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec28 = and i64 %i.bp, 4611686018427387900   ; 4 uses
  %i.br = shl i64 %n.vec28, 3
  %i.bs = getelementptr i8, ptr %i.bj, i64 %i.br  ; 2 uses
  %3 = shl i64 %n.vec28, 3
  %i.bt = getelementptr i8, ptr %i.ay, i64 %3
  br label %vector.body29

vector.body29:                                    ; preds = %vector.body29, %vector.ph26
  %index30 = phi i64 [ 0, %vector.ph26 ], [ %index.next37, %vector.body29 ] ; 3 uses
  %offset.idx31 = shl i64 %index30, 3
  %next.gep32 = getelementptr i8, ptr %i.bj, i64 %offset.idx31 ; 2 uses
  %offset.idx33 = shl i64 %index30, 3
  %next.gep34 = getelementptr i8, ptr %i.ay, i64 %offset.idx33 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %i.bu = getelementptr i8, ptr %next.gep34, i64 16
end_hunk_1
begin_hunk_2_@"_ZNSt17_Function_handlerIFN6hermes2vm15ExecutionStatusEjNS1_10Predefined3StrERNS1_6HandleINS1_8JSObjectEEENS1_8SymbolIDEEZNS1_7Runtime14freezeBuiltinsEvE3$_0E9_M_invokeERKSt9_Any_dataOjOS4_S8_OS9_":bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader47, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.z, 9223372036854775800      ; 4 uses
  %i.ab = shl i64 %n.vec, 2
  %i.ac = getelementptr i8, ptr %i.t, i64 %i.ab   ; 2 uses
  %6 = shl i64 %n.vec, 2
  %i.ad = getelementptr i8, ptr %i.i, i64 %6
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.t, i64 %offset.idx ; 2 uses
  %offset.idx21 = shl i64 %index, 2
  %next.gep22 = getelementptr i8, ptr %i.i, i64 %offset.idx21 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  %i.ae = getelementptr i8, ptr %next.gep22, i64 16
end_hunk_2
begin_hunk_3_@"_ZNSt17_Function_handlerIFN6hermes2vm15ExecutionStatusEjNS1_10Predefined3StrERNS1_6HandleINS1_8JSObjectEEENS1_8SymbolIDEEZNS1_7Runtime14freezeBuiltinsEvE3$_0E9_M_invokeERKSt9_Any_dataOjOS4_S8_OS9_":bb.a
  br i1 %or.cond45, label %.lr.ph.i.i.i.i.i12.i.i.i.preheader46, label %vector.ph29

vector.ph29:                                      ; preds = %.lr.ph.i.i.i.i.i12.i.i.i.preheader
  %n.vec31 = and i64 %i.bq, 9223372036854775800   ; 4 uses
  %i.bs = shl i64 %n.vec31, 2
  %i.bt = getelementptr i8, ptr %i.bk, i64 %i.bs  ; 2 uses
  %7 = shl i64 %n.vec31, 2
  %i.bu = getelementptr i8, ptr %i.az, i64 %7
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph29
  %index33 = phi i64 [ 0, %vector.ph29 ], [ %index.next40, %vector.body32 ] ; 3 uses
  %offset.idx34 = shl i64 %index33, 2
  %next.gep35 = getelementptr i8, ptr %i.bk, i64 %offset.idx34 ; 2 uses
  %offset.idx36 = shl i64 %index33, 2
  %next.gep37 = getelementptr i8, ptr %i.az, i64 %offset.idx36 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  %i.bv = getelementptr i8, ptr %next.gep37, i64 16
end_hunk_3
begin_hunk_4_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a

vector.ph162:                                     ; preds = %vector.main.loop.iter.check160
  %n.mod.vf163 = and i64 %.082, 8
  %n.vec164 = and i64 %.082, 9223372036854775792  ; 6 uses
  %i.cv = sub nsw i64 0, %n.vec164
  %i.cw = getelementptr i8, ptr %i.ck, i64 %i.cv
  %3 = sub nsw i64 0, %n.vec164
  %i.cx = getelementptr i8, ptr %i.ct, i64 %3
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph162
  %index166 = phi i64 [ 0, %vector.ph162 ], [ %index.next175, %vector.body165 ] ; 3 uses
  %offset.idx = sub i64 0, %index166
  %next.gep167 = getelementptr i8, ptr %i.ck, i64 %offset.idx
  %offset.idx168 = sub i64 0, %index166
  %next.gep169 = getelementptr i8, ptr %i.ct, i64 %offset.idx168
  %i.cy = getelementptr inbounds i8, ptr %next.gep169, i64 -16 ; 2 uses
  %wide.load170.a = load <16 x i8>, ptr %i.cy, align 1, !tbaa !19, !alias.scope !1276, !noalias !1279
  %i.cz = getelementptr inbounds i8, ptr %next.gep167, i64 -16 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a

vec.epilog.ph184:                                 ; preds = %vector.main.loop.iter.check160, %vec.epilog.iter.check182
  %vec.epilog.resume.val178 = phi i64 [ %n.vec164, %vec.epilog.iter.check182 ], [ 0, %vector.main.loop.iter.check160 ]
  %n.vec186 = and i64 %.082, 9223372036854775800  ; 5 uses
  %i.db = sub nsw i64 0, %n.vec186
  %i.dc = getelementptr i8, ptr %i.ck, i64 %i.db
  %4 = sub nsw i64 0, %n.vec186
  %i.dd = getelementptr i8, ptr %i.ct, i64 %4
  br label %vec.epilog.vector.body187

vec.epilog.vector.body187:                        ; preds = %vec.epilog.vector.body187, %vec.epilog.ph184
  %index188 = phi i64 [ %vec.epilog.resume.val178, %vec.epilog.ph184 ], [ %index.next197, %vec.epilog.vector.body187 ] ; 3 uses
  %i.de = sub i64 0, %index188
  %next.gep189.a = getelementptr i8, ptr %i.ck, i64 %i.de
  %5 = sub i64 0, %index188
  %next.gep190 = getelementptr i8, ptr %i.ct, i64 %5
  %i.df = getelementptr inbounds i8, ptr %next.gep190, i64 -8 ; 2 uses
  %wide.load191 = load <8 x i8>, ptr %i.df, align 1, !tbaa !19, !alias.scope !1276, !noalias !1279
  %i.dg = getelementptr inbounds i8, ptr %next.gep189.a, i64 -8 ; 2 uses
end_hunk_5
