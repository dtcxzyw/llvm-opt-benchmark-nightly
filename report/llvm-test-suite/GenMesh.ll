inline.NumInlined: 678
inline.NumDeleted: 216
begin_hunk_0_@_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_:bb.a
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.preheader846, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 2305843009213693950     ; 3 uses
  %i.an = shl i64 %n.vec, 4                       ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ad, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.s, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 4                 ; 3 uses
  %12 = or disjoint i64 %offset.idx, 16           ; 2 uses
  %next.gep798.a = getelementptr i8, ptr %i.ad, i64 %offset.idx
  %next.gep800.a = getelementptr i8, ptr %i.ad, i64 %12
  %i.aq = getelementptr i8, ptr %i.s, i64 %offset.idx
  %next.gep801 = getelementptr i8, ptr %i.s, i64 %12
  %wide.load = load <2 x double>, ptr %i.aq, align 8
  %wide.load802 = load <2 x double>, ptr %next.gep801, align 8
  store <2 x double> %wide.load, ptr %next.gep798.a, align 8
  store <2 x double> %wide.load802, ptr %next.gep800.a, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !47
end_hunk_0
begin_hunk_1_@_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_:bb.a
  br i1 %conflict.rdx820, label %.lr.ph.i.i.i.i.i.i435.preheader844, label %vector.ph823

vector.ph823:                                     ; preds = %vector.memcheck804
  %n.vec825 = and i64 %i.fk, 2305843009213693950  ; 3 uses
  %i.fo = shl i64 %n.vec825, 4                    ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fe, i64 %i.fo  ; 2 uses
  %i.fq = getelementptr i8, ptr %i.et, i64 %i.fo
  br label %vector.body826

vector.body826:                                   ; preds = %vector.body826, %vector.ph823
  %index827 = phi i64 [ 0, %vector.ph823 ], [ %index.next836, %vector.body826 ] ; 2 uses
  %offset.idx828 = shl i64 %index827, 4           ; 3 uses
  %13 = or disjoint i64 %offset.idx828, 16        ; 2 uses
  %next.gep830.a = getelementptr i8, ptr %i.fe, i64 %offset.idx828
  %next.gep832 = getelementptr i8, ptr %i.fe, i64 %13
  %i.fr = getelementptr i8, ptr %i.et, i64 %offset.idx828
  %next.gep833 = getelementptr i8, ptr %i.et, i64 %13
  %wide.load834 = load <2 x double>, ptr %i.fr, align 8
  %wide.load835 = load <2 x double>, ptr %next.gep833, align 8
  store <2 x double> %wide.load834, ptr %next.gep830.a, align 8
  store <2 x double> %wide.load835, ptr %next.gep832, align 8
  %index.next836 = add nuw i64 %index827, 2       ; 2 uses
  %i.fs = icmp eq i64 %index.next836, %n.vec825
  br i1 %i.fs, label %middle.block837, label %vector.body826, !llvm.loop !59
end_hunk_1
begin_hunk_2_@_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_:bb.a
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.preheader696, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 2305843009213693950     ; 3 uses
  %i.ah = shl i64 %n.vec, 4                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.x, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.m, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 4                 ; 3 uses
  %11 = or disjoint i64 %offset.idx, 16           ; 2 uses
  %next.gep644.a = getelementptr i8, ptr %i.x, i64 %offset.idx
  %next.gep646.a = getelementptr i8, ptr %i.x, i64 %11
  %i.ak = getelementptr i8, ptr %i.m, i64 %offset.idx
  %next.gep647 = getelementptr i8, ptr %i.m, i64 %11
  %wide.load = load <2 x double>, ptr %i.ak, align 8
  %wide.load648 = load <2 x double>, ptr %next.gep647, align 8
  store <2 x double> %wide.load, ptr %next.gep644.a, align 8
  store <2 x double> %wide.load648, ptr %next.gep646.a, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !72
end_hunk_2
begin_hunk_3_@_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_:bb.a
  br i1 %conflict.rdx666, label %.lr.ph.i.i.i.i.i.i337.preheader691, label %vector.ph669

vector.ph669:                                     ; preds = %vector.memcheck650
  %n.vec671 = and i64 %i.ey, 2305843009213693950  ; 3 uses
  %i.fc = shl i64 %n.vec671, 4                    ; 2 uses
  %i.fd = getelementptr i8, ptr %i.es, i64 %i.fc  ; 2 uses
  %i.fe = getelementptr i8, ptr %i.dz, i64 %i.fc
  br label %vector.body672

vector.body672:                                   ; preds = %vector.body672, %vector.ph669
  %index673 = phi i64 [ 0, %vector.ph669 ], [ %index.next682, %vector.body672 ] ; 2 uses
  %offset.idx674 = shl i64 %index673, 4           ; 3 uses
  %12 = or disjoint i64 %offset.idx674, 16        ; 2 uses
  %next.gep676.a = getelementptr i8, ptr %i.es, i64 %offset.idx674
  %next.gep678 = getelementptr i8, ptr %i.es, i64 %12
  %i.ff = getelementptr i8, ptr %i.dz, i64 %offset.idx674
  %next.gep679 = getelementptr i8, ptr %i.dz, i64 %12
  %wide.load680 = load <2 x double>, ptr %i.ff, align 8
  %wide.load681 = load <2 x double>, ptr %next.gep679, align 8
  store <2 x double> %wide.load680, ptr %next.gep676.a, align 8
  store <2 x double> %wide.load681, ptr %next.gep678, align 8
  %index.next682 = add nuw i64 %index673, 2       ; 2 uses
  %i.fg = icmp eq i64 %index.next682, %n.vec671
  br i1 %i.fg, label %middle.block683, label %vector.body672, !llvm.loop !75
end_hunk_3
begin_hunk_4_@_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_:bb.a
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.preheader1359, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 2305843009213693950     ; 3 uses
  %i.ai = shl i64 %n.vec, 4                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.y, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.n, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 4                 ; 3 uses
  %15 = or disjoint i64 %offset.idx, 16           ; 2 uses
  %next.gep1305.a = getelementptr i8, ptr %i.y, i64 %offset.idx
  %next.gep1307.a = getelementptr i8, ptr %i.y, i64 %15
  %i.al = getelementptr i8, ptr %i.n, i64 %offset.idx
  %next.gep1308 = getelementptr i8, ptr %i.n, i64 %15
  %wide.load = load <2 x double>, ptr %i.al, align 8
  %wide.load1309 = load <2 x double>, ptr %next.gep1308, align 8
  store <2 x double> %wide.load, ptr %next.gep1305.a, align 8
  store <2 x double> %wide.load1309, ptr %next.gep1307.a, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !84
end_hunk_4
begin_hunk_5_@_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_:bb.a
  br i1 %conflict.rdx1327, label %.lr.ph.i.i.i.i.i.i661.preheader1357, label %vector.ph1330

vector.ph1330:                                    ; preds = %vector.memcheck1311
  %n.vec1332 = and i64 %i.fc, 2305843009213693950 ; 3 uses
  %i.fg = shl i64 %n.vec1332, 4                   ; 2 uses
  %i.fh = getelementptr i8, ptr %i.ew, i64 %i.fg  ; 2 uses
  %i.fi = getelementptr i8, ptr %i.el, i64 %i.fg
  br label %vector.body1333

vector.body1333:                                  ; preds = %vector.body1333, %vector.ph1330
  %index1334 = phi i64 [ 0, %vector.ph1330 ], [ %index.next1343, %vector.body1333 ] ; 2 uses
  %offset.idx1335 = shl i64 %index1334, 4         ; 3 uses
  %16 = or disjoint i64 %offset.idx1335, 16       ; 2 uses
  %next.gep1337.a = getelementptr i8, ptr %i.ew, i64 %offset.idx1335
  %next.gep1339 = getelementptr i8, ptr %i.ew, i64 %16
  %i.fj = getelementptr i8, ptr %i.el, i64 %offset.idx1335
  %next.gep1340 = getelementptr i8, ptr %i.el, i64 %16
  %wide.load1341 = load <2 x double>, ptr %i.fj, align 8
  %wide.load1342 = load <2 x double>, ptr %next.gep1340, align 8
  store <2 x double> %wide.load1341, ptr %next.gep1337.a, align 8
  store <2 x double> %wide.load1342, ptr %next.gep1339, align 8
  %index.next1343 = add nuw i64 %index1334, 2     ; 2 uses
  %i.fk = icmp eq i64 %index.next1343, %n.vec1332
  br i1 %i.fk, label %middle.block1344, label %vector.body1333, !llvm.loop !87
end_hunk_5
begin_hunk_6_@_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:bb.a
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.preheader98, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 2305843009213693950      ; 3 uses
  %i.ac = shl i64 %n.vec, 4                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.q, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.d, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 4                 ; 3 uses
  %3 = or disjoint i64 %offset.idx, 16            ; 2 uses
  %next.gep57.a = getelementptr i8, ptr %i.q, i64 %offset.idx
  %next.gep59.a = getelementptr i8, ptr %i.q, i64 %3
  %i.af = getelementptr i8, ptr %i.d, i64 %offset.idx
  %next.gep60 = getelementptr i8, ptr %i.d, i64 %3
  %wide.load = load <2 x double>, ptr %i.af, align 8
  %wide.load61 = load <2 x double>, ptr %next.gep60, align 8
  store <2 x double> %wide.load, ptr %next.gep57.a, align 8
  store <2 x double> %wide.load61, ptr %next.gep59.a, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !110
end_hunk_6
begin_hunk_7_@_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:bb.a
  br i1 %conflict.rdx76, label %.lr.ph.i.i.i.i.i29.preheader97, label %vector.ph79

vector.ph79:                                      ; preds = %vector.memcheck63
  %n.vec81 = and i64 %i.ao, 2305843009213693950   ; 3 uses
  %i.aw = shl i64 %n.vec81, 4                     ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ak, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %1, i64 %i.aw
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph79
  %index83 = phi i64 [ 0, %vector.ph79 ], [ %index.next92, %vector.body82 ] ; 2 uses
  %offset.idx84 = shl i64 %index83, 4             ; 3 uses
  %4 = or disjoint i64 %offset.idx84, 16          ; 2 uses
  %next.gep86.a = getelementptr i8, ptr %i.ak, i64 %offset.idx84
  %next.gep88 = getelementptr i8, ptr %i.ak, i64 %4
  %i.az = getelementptr i8, ptr %1, i64 %offset.idx84
  %next.gep89 = getelementptr i8, ptr %1, i64 %4
  %wide.load90 = load <2 x double>, ptr %i.az, align 8
  %wide.load91 = load <2 x double>, ptr %next.gep89, align 8
  store <2 x double> %wide.load90, ptr %next.gep86.a, align 8
  store <2 x double> %wide.load91, ptr %next.gep88, align 8
  %index.next92 = add nuw i64 %index83, 2         ; 2 uses
  %i.ba = icmp eq i64 %index.next92, %n.vec81
  br i1 %i.ba, label %middle.block93, label %vector.body82, !llvm.loop !112
end_hunk_7
