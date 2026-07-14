inline.NumInlined: 5068
inline.NumDeleted: 1851
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN4node6sqlite24StatementExecutionHelper3AllEPNS_11EnvironmentEPNS0_12DatabaseSyncEP12sqlite3_stmtbb:bb.a
  %wide.load395 = load <2 x i64>, ptr %i.dx, align 8, !alias.scope !114, !noalias !111
  %i.dy = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !111, !noalias !114
  store <2 x i64> %wide.load395, ptr %i.dy, align 8, !alias.scope !111, !noalias !114
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dr, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i61, label %.lr.ph.i.i.i.i.i.i.i57.preheader446

.lr.ph.i.i.i.i.i.i.i57.preheader446:              ; preds = %.lr.ph.i.i.i.i.i.i.i57.preheader, %middle.block
  %.012.i.i.i.i.i.i.i58.ph = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i.i.i57.preheader ], [ %i.du, %middle.block ]
  %.0911.i.i.i.i.i.i.i59.ph = phi ptr [ %.sroa.084.0, %.lr.ph.i.i.i.i.i.i.i57.preheader ], [ %i.dv, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i57

.lr.ph.i.i.i.i.i.i.i57:                           ; preds = %.lr.ph.i.i.i.i.i.i.i57.preheader446, %.lr.ph.i.i.i.i.i.i.i57
  %.012.i.i.i.i.i.i.i58 = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i.i.i57 ], [ %.012.i.i.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i.i.i57.preheader446 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i59 = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i.i.i57 ], [ %.0911.i.i.i.i.i.i.i59.ph, %.lr.ph.i.i.i.i.i.i.i57.preheader446 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.ea = load i64, ptr %.0911.i.i.i.i.i.i.i59, align 8, !alias.scope !114, !noalias !111
  store i64 %i.ea, ptr %.012.i.i.i.i.i.i.i58, align 8, !alias.scope !111, !noalias !114
  %i.eb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i59, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i58, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i60 = icmp eq ptr %i.eb, %.sroa.19.0
  br i1 %.not.i.i.i.i.i.i.i60, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i61, label %.lr.ph.i.i.i.i.i.i.i57, !llvm.loop !117

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i61: ; preds = %.lr.ph.i.i.i.i.i.i.i57, %middle.block, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i53
  %.0.lcssa.i.i.i.i.i.i.i62 = phi ptr [ %i.dl, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i53 ], [ %i.du, %middle.block ], [ %i.ec, %.lr.ph.i.i.i.i.i.i.i57 ]
  %.not.i23.i.i.i.i63 = icmp eq ptr %.sroa.084.0, null
  br i1 %.not.i23.i.i.i.i63, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i64, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i61
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.084.0, i64 noundef %i.dd) #33
  br label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i64

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i64: ; preds = %bb.v, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i61
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dj
  br label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit

_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i64, %bb.s
  %.sroa.19.1 = phi ptr [ %i.ed, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i64 ], [ %.sroa.19.0, %bb.s ]
  %.0.lcssa.i.i.i.i.i.i.i62.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i62, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i64 ], [ %.sroa.1089.0, %bb.s ]
  %.sroa.084.1 = phi ptr [ %i.dl, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i64 ], [ %.sroa.084.0, %bb.s ]
  %.sroa.1089.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i62.pn, i64 8
  br label %.split, !llvm.loop !102

.split181.us:                                     ; preds = %.split, %.split.us
  %.us-phi = phi ptr [ null, %.split.us ], [ %.sroa.17.0, %.split ] ; 3 uses
  %.us-phi182 = phi ptr [ null, %.split.us ], [ %.sroa.074.0, %.split ] ; 3 uses
  %.us-phi183 = phi ptr [ %.sroa.19.0.us, %.split.us ], [ %.sroa.19.0, %.split ] ; 3 uses
  %.us-phi184 = phi ptr [ %.sroa.084.0.us, %.split.us ], [ %.sroa.084.0, %.split ] ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 8, !range !26, !noundef !28
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.split181.us
  store i8 0, ptr %i.ee, align 8
  br label %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit

bb.x:                                             ; preds = %.split181.us
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = call ptr @_ZN4node6sqlite17CreateSQLiteErrorEPN2v87IsolateEP7sqlite3(ptr noundef %i.c, ptr noundef %i.ei) ; 2 uses
  %.not.i65 = icmp eq ptr %i.ej, null
  br i1 %.not.i65, label %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ek = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr nonnull %i.ej) #30 ; 0 uses
  br label %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit

.critedge38:                                      ; preds = %.split, %.split.us
  %.us-phi185 = phi ptr [ null, %.split.us ], [ %.sroa.17.0, %.split ] ; 2 uses
  %.us-phi186 = phi ptr [ null, %.split.us ], [ %.sroa.074.0, %.split ] ; 2 uses
  %.us-phi187 = phi ptr [ %.sroa.19.0.us, %.split.us ], [ %.sroa.19.0, %.split ] ; 2 uses
  %.us-phi188 = phi ptr [ %.sroa.1089.0.us, %.split.us ], [ %.sroa.1089.0, %.split ]
  %.us-phi189 = phi ptr [ %.sroa.084.0.us, %.split.us ], [ %.sroa.084.0, %.split ] ; 4 uses
  %i.el = ptrtoint ptr %.us-phi188 to i64
  %i.em = ptrtoint ptr %.us-phi189 to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 3
  %i.ep = call ptr @_ZN2v85Array3NewEPNS_7IsolateEPNS_5LocalINS_5ValueEEEm(ptr noundef %i.c, ptr noundef %.us-phi189, i64 noundef %i.eo) #30 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit, label %bb.z

bb.z:                                             ; preds = %.critedge38
  %i.er = call noundef ptr @_ZN2v824EscapableHandleScopeBase10EscapeSlotEPm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %i.ep) #30
  br label %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit

_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit: ; preds = %bb.g, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit, %bb.z, %.critedge38, %bb.y, %bb.x, %bb.w, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit.thread
  %.sroa.19.0156 = phi ptr [ %.sroa.19.0, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit.thread ], [ %.us-phi183, %bb.y ], [ %.sroa.19.0, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit ], [ %.us-phi187, %bb.z ], [ %.us-phi183, %bb.w ], [ %.us-phi183, %bb.x ], [ %.us-phi187, %.critedge38 ], [ %.sroa.19.0, %bb.g ] ; 2 uses
  %.sroa.084.0139 = phi ptr [ %.sroa.084.0, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit.thread ], [ %.us-phi184, %bb.y ], [ %.sroa.084.0, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit ], [ %.us-phi189, %bb.z ], [ %.us-phi184, %bb.w ], [ %.us-phi184, %bb.x ], [ %.us-phi189, %.critedge38 ], [ %.sroa.084.0, %bb.g ] ; 2 uses
  %.sroa.17.5 = phi ptr [ %.sroa.17.1175, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit.thread ], [ %.us-phi, %bb.y ], [ %.sroa.17.1175, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit ], [ %.us-phi185, %bb.z ], [ %.us-phi, %bb.w ], [ %.us-phi, %bb.x ], [ %.us-phi185, %.critedge38 ], [ %.sroa.17.0, %bb.g ]
  %.sroa.074.5 = phi ptr [ %.sroa.074.1176, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit.thread ], [ %.us-phi182, %bb.y ], [ %.sroa.074.1176, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit ], [ %.us-phi186, %bb.z ], [ %.us-phi182, %bb.w ], [ %.us-phi182, %bb.x ], [ %.us-phi186, %.critedge38 ], [ %.sroa.074.0, %bb.g ] ; 3 uses
  %.sroa.096.5 = phi ptr [ null, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit.thread ], [ null, %bb.y ], [ null, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit ], [ %i.er, %bb.z ], [ null, %bb.w ], [ null, %bb.x ], [ null, %.critedge38 ], [ null, %bb.g ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.074.5, null
  br i1 %.not.i.i.i.i, label %_ZN2v811LocalVectorINS_4NameEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit
  %i.es = ptrtoint ptr %.sroa.17.5 to i64
  %i.et = ptrtoint ptr %.sroa.074.5 to i64
  %i.eu = sub i64 %i.es, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.074.5, i64 noundef %i.eu) #33
  br label %_ZN2v811LocalVectorINS_4NameEED2Ev.exit

_ZN2v811LocalVectorINS_4NameEED2Ev.exit:          ; preds = %bb.b, %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit, %bb.aa
  %.sroa.096.5275 = phi ptr [ %.sroa.096.5, %bb.aa ], [ %.sroa.096.5, %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit ], [ null, %bb.b ]
  %.sroa.084.0139274 = phi ptr [ %.sroa.084.0139, %bb.aa ], [ %.sroa.084.0139, %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit ], [ %.sroa.084.0.us, %bb.b ] ; 3 uses
  %.sroa.19.0156273 = phi ptr [ %.sroa.19.0156, %bb.aa ], [ %.sroa.19.0156, %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit ], [ %.sroa.19.0.us, %bb.b ]
  %i.ev = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i.i.i66 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i.i66, label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN2v811LocalVectorINS_4NameEED2Ev.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.ev to i64
  %i.fa = sub i64 %i.ey, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef %i.fa) #33
  br label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit

_ZN2v811LocalVectorINS_5ValueEED2Ev.exit:         ; preds = %_ZN2v811LocalVectorINS_4NameEED2Ev.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %.not.i.i.i.i67 = icmp eq ptr %.sroa.084.0139274, null
  br i1 %.not.i.i.i.i67, label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit68, label %bb.ac

bb.ac:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit
  %i.fb = ptrtoint ptr %.sroa.19.0156273 to i64
  %i.fc = ptrtoint ptr %.sroa.084.0139274 to i64
  %i.fd = sub i64 %i.fb, %i.fc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.084.0139274, i64 noundef %i.fd) #33
  br label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit68

_ZN2v811LocalVectorINS_5ValueEED2Ev.exit68:       ; preds = %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit, %bb.ac
  %i.fe = load ptr, ptr %5, align 8               ; 2 uses
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.ad, !prof !5

bb.ad:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit68
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = add i64 %i.fg, 560
  %i.fi = inttoptr i64 %i.fh to ptr               ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.fk = load ptr, ptr %i.fi, align 8
  %i.fl = load ptr, ptr %i.fj, align 8
  store ptr %i.fl, ptr %i.fi, align 8
  store ptr %i.fk, ptr %i.fj, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 8
  %i.fo = add nsw i32 %i.fn, -1
  store i32 %i.fo, ptr %i.fm, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.fq, %i.fs
  br i1 %.not.i, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.ae, !prof !41

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.fs, ptr %i.fp, align 8
  %i.ft = load ptr, ptr %5, align 8
  call void @_ZN2v811HandleScope16DeleteExtensionsEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.ft) #30
  br label %_ZN2v811HandleScopeD2Ev.exit

_ZN2v811HandleScopeD2Ev.exit:                     ; preds = %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit68, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret ptr %.sroa.096.5275
}

declare i32 @sqlite3_column_count(ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_step(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN2v811LocalVectorINS_4NameEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.308) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8                ; 7 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE7reserveEm.exit

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.f
  %i.n = shl nuw nsw i64 %1, 3
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #32 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_M_allocateEm.exit.i
  %i.p = ptrtoaddr ptr %i.o to i64
  %2 = add i64 %i.l, -8
  %i.q = sub i64 %2, %i.f                         ; 2 uses
  %i.r = lshr i64 %i.q, 3
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 72
  %i.t = sub i64 %i.f, %i.p
  %diff.check = icmp ugt i64 %i.t, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader6, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.s, 4611686018427387900      ; 3 uses
  %i.u = shl i64 %n.vec, 3                        ; 2 uses
  %i.v = getelementptr i8, ptr %i.o, i64 %i.u
  %i.w = getelementptr i8, ptr %i.d, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.x ; 2 uses
  %next.gep3 = getelementptr i8, ptr %i.d, i64 %i.x ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.y = getelementptr i8, ptr %next.gep3, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep3, align 8, !alias.scope !121, !noalias !118
  %wide.load4 = load <2 x i64>, ptr %i.y, align 8, !alias.scope !121, !noalias !118
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !118, !noalias !121
  store <2 x i64> %wide.load4, ptr %i.z, align 8, !alias.scope !118, !noalias !121
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i.preheader6

.lr.ph.i.i.i.i.preheader6:                        ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.v, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader6, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader6 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader6 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.ab = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !121, !noalias !118
  store i64 %i.ab, ptr %.012.i.i.i.i, align 8, !alias.scope !118, !noalias !121
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ac, %i.k
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !124

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.d, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE13_M_deallocateEPS4_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.g) #33
  br label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE13_M_deallocateEPS4_m.exit.i

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  store ptr %i.o, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.ae, ptr %i.j, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %1
  store ptr %i.af, ptr %i.b, align 8
  br label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE7reserveEm.exit

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE13_M_deallocateEPS4_m.exit.i
  ret void
}

declare ptr @_ZN2v86Object3NewEPNS_7IsolateENS_5LocalINS_5ValueEEEPNS3_INS_4NameEEEPS5_m(ptr noundef, ptr, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4node6sqlite24StatementExecutionHelper3RunEPNS_11EnvironmentEPNS0_12DatabaseSyncEP12sqlite3_stmtb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::EscapableHandleScope", align 8 ; 9 uses
  %5 = alloca [2 x %"class.v8::MaybeLocal"], align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN2v824EscapableHandleScopeBaseC2EPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.b) #30
  %i.c = call i32 @sqlite3_step(ptr noundef %2) #30 ; 0 uses
  %i.d = call i32 @sqlite3_reset(ptr noundef %2) #30
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !26, !noundef !28
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.e, align 8
  br label %_ZN4node6sqlite22THROW_ERR_SQLITE_ERROREPN2v87IsolateEPNS0_12DatabaseSyncE.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call ptr @_ZN4node6sqlite17CreateSQLiteErrorEPN2v87IsolateEP7sqlite3(ptr noundef %i.b, ptr noundef %i.i) ; 2 uses
  %.not.i34 = icmp eq ptr %i.j, null
  br i1 %.not.i34, label %_ZN4node6sqlite22THROW_ERR_SQLITE_ERROREPN2v87IsolateEPNS0_12DatabaseSyncE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr nonnull %i.j) #30 ; 0 uses
  br label %_ZN4node6sqlite22THROW_ERR_SQLITE_ERROREPN2v87IsolateEPNS0_12DatabaseSyncE.exit

.critedge:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call i64 @sqlite3_last_insert_rowid(ptr noundef %i.m) #30 ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8
  %i.p = call i64 @sqlite3_changes64(ptr noundef %i.o) #30 ; 2 uses
  br i1 %3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge
  %i.q = call ptr @_ZN2v86BigInt3NewEPNS_7IsolateEl(ptr noundef %i.b, i64 noundef %i.n) #30
  %i.r = call ptr @_ZN2v86BigInt3NewEPNS_7IsolateEl(ptr noundef %i.b, i64 noundef %i.p) #30
  br label %bb.h

bb.g:                                             ; preds = %.critedge
  %i.s = sitofp i64 %i.n to double
  %i.t = call ptr @_ZN2v86Number3NewEPNS_7IsolateEd(ptr noundef %i.b, double noundef %i.s) #30
  %i.u = sitofp i64 %i.p to double
  %i.v = call ptr @_ZN2v86Number3NewEPNS_7IsolateEd(ptr noundef %i.b, double noundef %i.u) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.044.0 = phi ptr [ %i.r, %bb.f ], [ %i.v, %bb.g ] ; 2 uses
  %i.w = phi ptr [ %i.q, %bb.f ], [ %i.t, %bb.g ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3288
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  %i.ac = call ptr @_ZN2v818DictionaryTemplate3NewEPNS_7IsolateENS_10MemorySpanIKSt17basic_string_viewIcSt11char_traitsIcEEEE(ptr noundef %i.b, ptr nonnull @_ZZN4node6sqlite24StatementExecutionHelper3RunEPNS_11EnvironmentEPNS0_12DatabaseSyncEP12sqlite3_stmtbE15run_result_keys, i64 2) #30 ; 2 uses
  %i.ad = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 3288 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN4node11Environment30set_sqlite_run_result_templateEN2v85LocalINS1_18DictionaryTemplateEEE.exit, label %bb.j, !prof !41

bb.j:                                             ; preds = %bb.i
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11IsolateData30set_sqlite_run_result_templateEN2v85LocalINS1_18DictionaryTemplateEEEE20error_and_abort_args) #30
  call void @abort() #31
  unreachable

_ZN4node11Environment30set_sqlite_run_result_templateEN2v85LocalINS1_18DictionaryTemplateEEE.exit: ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 4648
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call noundef ptr @_ZN2v812api_internal10EternalizeEPNS_7IsolateEPNS_5ValueE(ptr noundef %i.ai, ptr noundef %i.ac) #30
  store ptr %i.aj, ptr %i.ae, align 8
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZN4node11Environment30set_sqlite_run_result_templateEN2v85LocalINS1_18DictionaryTemplateEEE.exit, %bb.h
  %.sroa.039.0 = phi ptr [ %i.ac, %_ZN4node11Environment30set_sqlite_run_result_templateEN2v85LocalINS1_18DictionaryTemplateEEE.exit ], [ %i.aa, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %.sroa.044.0, ptr %5, align 16
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.w, ptr %i.ak, align 8
  %i.al = icmp eq ptr %.sroa.044.0, null
  %i.am = icmp eq ptr %i.w, null
  %or.cond = select i1 %i.al, i1 true, i1 %i.am
  br i1 %or.cond, label %_ZN4node21NewDictionaryInstanceEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.thread, label %_ZN4node21NewDictionaryInstanceEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit

_ZN4node21NewDictionaryInstanceEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit: ; preds = %.critedge.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 192
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ap, align 8
  %i.aq = call ptr @_ZN2v818DictionaryTemplate11NewInstanceENS_5LocalINS_7ContextEEENS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.039.0, ptr %.sroa.0.0.copyload.i.i.i, ptr nonnull %5, i64 2) #30 ; 2 uses
  %.not57 = icmp eq ptr %i.aq, null
  br i1 %.not57, label %_ZN4node21NewDictionaryInstanceEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.thread, label %_ZN2v820EscapableHandleScope6EscapeINS_6ObjectEEENS_5LocalIT_EES5_.exit

_ZN2v820EscapableHandleScope6EscapeINS_6ObjectEEENS_5LocalIT_EES5_.exit: ; preds = %_ZN4node21NewDictionaryInstanceEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit
  %i.ar = call noundef ptr @_ZN2v824EscapableHandleScopeBase10EscapeSlotEPm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %i.aq) #30
  br label %_ZN4node21NewDictionaryInstanceEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.thread

_ZN4node21NewDictionaryInstanceEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.thread: ; preds = %.critedge.i, %_ZN4node21NewDictionaryInstanceEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit, %_ZN2v820EscapableHandleScope6EscapeINS_6ObjectEEENS_5LocalIT_EES5_.exit
  %.sroa.046.0 = phi ptr [ %i.ar, %_ZN2v820EscapableHandleScope6EscapeINS_6ObjectEEENS_5LocalIT_EES5_.exit ], [ null, %_ZN4node21NewDictionaryInstanceEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit ], [ null, %.critedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %_ZN4node6sqlite22THROW_ERR_SQLITE_ERROREPN2v87IsolateEPNS0_12DatabaseSyncE.exit

_ZN4node6sqlite22THROW_ERR_SQLITE_ERROREPN2v87IsolateEPNS0_12DatabaseSyncE.exit: ; preds = %bb.e, %bb.d, %bb.c, %_ZN4node21NewDictionaryInstanceEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.thread
  %.sroa.046.1 = phi ptr [ %.sroa.046.0, %_ZN4node21NewDictionaryInstanceEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.thread ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ]
  %i.as = load ptr, ptr %4, align 8               ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.k, !prof !5

bb.k:                                             ; preds = %_ZN4node6sqlite22THROW_ERR_SQLITE_ERROREPN2v87IsolateEPNS0_12DatabaseSyncE.exit
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = add i64 %i.au, 560
  %i.aw = inttoptr i64 %i.av to ptr               ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.aw, align 8
  %i.az = load ptr, ptr %i.ax, align 8
  store ptr %i.az, ptr %i.aw, align 8
end_hunk_0
begin_hunk_1_@_ZN2v812api_internal12ToLocalEmptyEv

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZN4node27ERR_CONSTRUCT_CALL_REQUIREDIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  %i.c = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %2, i64 noundef %1) ; 0 uses
  %i.d = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %0, ptr noundef nonnull @.str.241, i32 noundef 1, i32 noundef 27) #30 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm28EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #30
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm28EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit

_ZN4node21FIXED_ONE_BYTE_STRINGILm28EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit: ; preds = %bb.a, %bb.b
  %i.f = load ptr, ptr %3, align 8
  %i.g = load i64, ptr %i.b, align 8
  %i.h = trunc i64 %i.g to i32
  %i.i = call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %0, ptr noundef %i.f, i32 noundef 0, i32 noundef %i.h) #30 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit, !prof !5

bb.c:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm28EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #30
  br label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit

_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit: ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm28EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, %bb.c
  %i.k = call ptr @_ZN2v89Exception9TypeErrorENS_5LocalINS_6StringEEENS1_INS_5ValueEEE(ptr %i.i, ptr null) #30
  %i.l = call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #30
  %i.m = call ptr @_ZNK2v85Value8ToObjectENS_5LocalINS_7ContextEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr %i.l) #30 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit, !prof !5

bb.d:                                             ; preds = %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #30
  br label %_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit

_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit: ; preds = %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit, %bb.d
  %i.o = call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #30
  %i.p = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef nonnull %0, ptr noundef nonnull @.str.235, i32 noundef 1, i32 noundef 4) #30 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, !prof !5

bb.e:                                             ; preds = %_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #30
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit

_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit: ; preds = %_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit, %bb.e
  %i.r = call i16 @_ZN2v86Object3SetENS_5LocalINS_7ContextEEENS1_INS_5ValueEEES5_(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr %i.o, ptr %i.p, ptr %i.d) #30
  %i.s = trunc i16 %i.r to i1
  br i1 %i.s, label %_ZNK2v85MaybeIbE5CheckEv.exit, label %bb.f, !prof !41

bb.f:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  call void @_ZN2v812api_internal17FromJustIsNothingEv() #30
  br label %_ZNK2v85MaybeIbE5CheckEv.exit

_ZNK2v85MaybeIbE5CheckEv.exit:                    ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, %bb.f
  %i.t = load ptr, ptr %3, align 8                ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.a
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK2v85MaybeIbE5CheckEv.exit
  %i.v = load i64, ptr %i.a, align 8
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK2v85MaybeIbE5CheckEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret ptr %i.m
}

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #23 comdat {
bb.a:
  tail call void @abort() #31
  unreachable
}

declare noundef ptr @_ZN2v88internal9Internals17GetCurrentIsolateEv() local_unnamed_addr #5

declare ptr @_ZN2v86Object20SlowGetInternalFieldEi(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK2v85Value10FullIsTrueEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node6sqlite15CustomAggregate9xStepBaseEP15sqlite3_contextiPP13sqlite3_valueMS1_N2v86GlobalINS7_8FunctionEEE(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::unique_ptr.375", align 8 ; 6 uses
  %5 = alloca %"class.std::shared_ptr.385", align 8 ; 3 uses
  %i.b = tail call ptr @sqlite3_user_data(ptr noundef %0) #30 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.e = load ptr, ptr %i.d, align 8              ; 12 uses
  %i.f = tail call noundef ptr @_ZN4node6sqlite15CustomAggregate12GetAggregateEP15sqlite3_context(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef %0) ; 5 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64                 ; 4 uses
  %i.h = add i64 %i.g, 648
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = add nsw i32 %1, 1                        ; 3 uses
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = icmp slt i32 %1, -1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.308) #31
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not133 = icmp eq i32 %i.j, 0
  br i1 %.not133, label %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i: ; preds = %bb.d
  %i.m = shl nuw nsw i64 %i.k, 3
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #32 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k
  br label %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit

_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit:   ; preds = %bb.d, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i
  %.sroa.21.5 = phi ptr [ %i.o, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i ], [ null, %bb.d ] ; 3 uses
  %.sroa.11.2 = phi ptr [ %i.n, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i ], [ null, %bb.d ] ; 4 uses
  %i.p = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEPS1_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit
  %i.r = load i64, ptr %i.p, align 8
  %i.s = add i64 %i.g, 560
  %i.t = inttoptr i64 %i.s to ptr                 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %bb.f, label %_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEm.exit, !prof !5

bb.f:                                             ; preds = %bb.e
  %i.y = tail call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.e) #30
  br label %_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEm.exit

_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEm.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.y, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.z = ptrtoint ptr %.0.i.i to i64              ; 2 uses
  %i.aa = add i64 %i.z, 8
  %i.ab = inttoptr i64 %i.aa to ptr
  store ptr %i.ab, ptr %i.t, align 8
  store i64 %i.r, ptr %.0.i.i, align 8
  br label %_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEPS1_.exit

_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEPS1_.exit: ; preds = %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit, %_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEm.exit
  %.sroa.0122.0 = phi i64 [ %i.z, %_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEm.exit ], [ 0, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.11.2, %.sroa.21.5
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEPS1_.exit
  store i64 %.sroa.0122.0, ptr %.sroa.11.2, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalIS1_EEEEEvDpOT_.exit

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEPS1_.exit
  %i.ac = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #32 ; 3 uses
  store i64 %.sroa.0122.0, ptr %i.ac, align 8
  %.not.i23.i.i.i.i = icmp eq ptr %.sroa.21.5, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.11.2, i64 noundef 0) #33
  br label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  br label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalIS1_EEEEEvDpOT_.exit

_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalIS1_EEEEEvDpOT_.exit: ; preds = %bb.g, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i
  %.sroa.21.6 = phi ptr [ %i.ad, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.21.5, %bb.g ] ; 2 uses
  %.sroa.097.6 = phi ptr [ %i.ac, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.11.2, %bb.g ] ; 3 uses
  %.not63144 = icmp sgt i32 %1, 0
  br i1 %.not63144, label %.lr.ph, label %.critedge65

.lr.ph:                                           ; preds = %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalIS1_EEEEEvDpOT_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.af = add i64 %i.g, 664
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit ] ; 2 uses
  %.sroa.097.0147 = phi ptr [ %.sroa.097.6, %.lr.ph ], [ %.sroa.097.7, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit ] ; 9 uses
  %.sroa.097.6.pn146 = phi ptr [ %.sroa.097.6, %.lr.ph ], [ %.0.lcssa.i.i.i.i.i.i.i79.pn, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit ] ; 3 uses
  %.sroa.21.0145 = phi ptr [ %.sroa.21.6, %.lr.ph ], [ %.sroa.21.7, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit ] ; 5 uses
  %.sroa.097.6.pn146179 = ptrtoint ptr %.sroa.097.6.pn146 to i64 ; 2 uses
  %.sroa.11.0149 = getelementptr inbounds nuw i8, ptr %.sroa.097.6.pn146, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.aj = load ptr, ptr %i.ai, align 8            ; 6 uses
  %i.ak = call i32 @sqlite3_value_type(ptr noundef %i.aj) #30
  switch i32 %i.ak, label %bb.y [
    i32 1, label %bb.j
    i32 2, label %bb.p
    i32 3, label %bb.q
    i32 5, label %bb.z
    i32 4, label %bb.r
  ]

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.al = call i64 @sqlite3_value_int64(ptr noundef %i.aj) #30 ; 4 uses
  store i64 %i.al, ptr %i.a, align 8
  %i.am = load i8, ptr %i.ah, align 8, !range !26, !noundef !28
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = call ptr @_ZN2v86BigInt3NewEPNS_7IsolateEl(ptr noundef %i.e, i64 noundef %i.al) #30
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ap = add i64 %i.al, 9007199254740991
  %i.aq = icmp ult i64 %i.ap, 18014398509481983
  br i1 %i.aq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ar = sitofp i64 %i.al to double
  %i.as = call ptr @_ZN2v86Number3NewEPNS_7IsolateEd(ptr noundef %i.e, double noundef %i.ar) #30
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.at = call ptr @_ZN4node16ERR_OUT_OF_RANGEIJRxEEEN2v85LocalINS2_6ObjectEEEPNS2_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.e, i64 64, ptr nonnull @.str.13, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.au = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr %i.at) #30 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.k
  %.sroa.094.0 = phi ptr [ %i.ao, %bb.k ], [ %i.as, %bb.m ], [ null, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.z

bb.p:                                             ; preds = %bb.i
  %i.av = call double @sqlite3_value_double(ptr noundef %i.aj) #30
  %i.aw = call ptr @_ZN2v86Number3NewEPNS_7IsolateEd(ptr noundef %i.e, double noundef %i.av) #30
  br label %bb.z

bb.q:                                             ; preds = %bb.i
  %i.ax = call ptr @sqlite3_value_text(ptr noundef %i.aj) #30
  %i.ay = call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %i.e, ptr noundef %i.ax, i32 noundef 0, i32 noundef -1) #30
  br label %bb.z

bb.r:                                             ; preds = %bb.i
  %i.az = call i32 @sqlite3_value_bytes(ptr noundef %i.aj) #30
  %i.ba = sext i32 %i.az to i64                   ; 3 uses
  %i.bb = call ptr @sqlite3_value_blob(ptr noundef %i.aj) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN2v811ArrayBuffer15NewBackingStoreEPNS_7IsolateEmNS_30BackingStoreInitializationModeENS_25BackingStoreOnFailureModeE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.375") align 8 %4, ptr noundef %i.e, i64 noundef %i.ba, i32 noundef 1, i32 noundef 1) #30
  %i.bc = load ptr, ptr %4, align 8
  %i.bd = call noundef ptr @_ZNK2v812BackingStore4DataEv(ptr noundef nonnull align 1 dereferenceable(1) %i.bc) #30
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.bb, i64 %i.ba, i1 false)
  call void @_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.be = call ptr @_ZN2v811ArrayBuffer3NewEPNS_7IsolateESt10shared_ptrINS_12BackingStoreEE(ptr noundef %i.e, ptr noundef nonnull %5) #30
  %i.bf = load ptr, ptr %i.ae, align 8            ; 8 uses
  %.not.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bg, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4
  %i.bl = load ptr, ptr %i.bf, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #30, !inline_history !29
  %i.bo = load ptr, ptr %i.bf, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #30, !inline_history !29
  br label %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.br = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i68 = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i68, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bj, %bb.v ], [ %i.bt, %bb.w ]
  %i.bu = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bu, label %bb.x, label %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #30
  br label %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.r, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  %i.bv = call ptr @_ZN2v810Uint8Array3NewENS_5LocalINS_11ArrayBufferEEEmm(ptr %i.be, i64 noundef 0, i64 noundef %i.ba) #30
  %i.bw = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i = icmp eq ptr %i.bw, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit.i: ; preds = %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZN2v812BackingStoreD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %i.bw) #30
  call void @_ZdlPv(ptr noundef nonnull %i.bw) #30
  br label %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.z

bb.y:                                             ; preds = %bb.i
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node6sqlite15CustomAggregate9xStepBaseEP15sqlite3_contextiPP13sqlite3_valueMS1_N2v86GlobalINS7_8FunctionEEEE20error_and_abort_args) #30
  call void @abort() #31
  unreachable

bb.z:                                             ; preds = %bb.i, %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit, %bb.q, %bb.p, %bb.o
  %.sroa.094.1 = phi ptr [ %.sroa.094.0, %bb.o ], [ %i.aw, %bb.p ], [ %i.ay, %bb.q ], [ %i.bv, %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit ], [ %i.ag, %bb.i ] ; 2 uses
  %i.bx = icmp eq ptr %.sroa.094.1, null
  br i1 %i.bx, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.by = ptrtoint ptr %.sroa.094.1 to i64        ; 2 uses
  %.not.i.i.i69 = icmp eq ptr %.sroa.11.0149, %.sroa.21.0145
  br i1 %.not.i.i.i69, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i64 %i.by, ptr %.sroa.11.0149, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.bz = ptrtoint ptr %.sroa.21.0145 to i64
  %i.ca = ptrtoint ptr %.sroa.097.0147 to i64     ; 3 uses
  %i.cb = sub i64 %i.bz, %i.ca                    ; 4 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775800
  br i1 %i.cc, label %bb.ad, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i70

bb.ad:                                            ; preds = %bb.ac
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.205) #31
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i70: ; preds = %bb.ac
  %i.cd = ashr exact i64 %i.cb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i71 = call i64 @llvm.umax.i64(i64 %i.cd, i64 1)
  %i.ce = add nsw i64 %.sroa.speculated.i.i.i.i.i71, %i.cd ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.cd
  %i.cg = call i64 @llvm.umin.i64(i64 %i.ce, i64 1152921504606846975)
  %i.ch = select i1 %i.cf, i64 1152921504606846975, i64 %i.cg ; 3 uses
  %.not.i.i.i.i.i72 = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i72)
  %i.ci = shl nuw nsw i64 %i.ch, 3
  %i.cj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #32 ; 8 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cb
  store i64 %i.by, ptr %i.ck, align 8
  %.not10.i.i.i.i.i.i.i73 = icmp eq ptr %.sroa.097.0147, %.sroa.21.0145
  br i1 %.not10.i.i.i.i.i.i.i73, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i78, label %.lr.ph.i.i.i.i.i.i.i74.preheader

.lr.ph.i.i.i.i.i.i.i74.preheader:                 ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i70
  %i.cl = ptrtoaddr ptr %i.cj to i64
  %i.cm = sub i64 %.sroa.097.6.pn146179, %i.ca    ; 2 uses
  %i.cn = lshr i64 %i.cm, 3
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cm, 24
  %i.cp = sub i64 %i.ca, %i.cl
  %diff.check = icmp ugt i64 %i.cp, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i74.preheader183, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i74.preheader
  %n.vec = and i64 %i.co, 4611686018427387900     ; 3 uses
  %i.cq = shl i64 %n.vec, 3                       ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cj, i64 %i.cq  ; 2 uses
  %i.cs = getelementptr i8, ptr %.sroa.097.0147, i64 %i.cq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ct = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cj, i64 %i.ct ; 2 uses
  %next.gep180 = getelementptr i8, ptr %.sroa.097.0147, i64 %i.ct ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !282)
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.cu = getelementptr i8, ptr %next.gep180, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep180, align 8, !alias.scope !285, !noalias !282
  %wide.load181 = load <2 x i64>, ptr %i.cu, align 8, !alias.scope !285, !noalias !282
  %i.cv = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !282, !noalias !285
  store <2 x i64> %wide.load181, ptr %i.cv, align 8, !alias.scope !282, !noalias !285
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !287

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i78, label %.lr.ph.i.i.i.i.i.i.i74.preheader183

.lr.ph.i.i.i.i.i.i.i74.preheader183:              ; preds = %.lr.ph.i.i.i.i.i.i.i74.preheader, %middle.block
  %.012.i.i.i.i.i.i.i75.ph = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i.i74.preheader ], [ %i.cr, %middle.block ] ; 2 uses
  %.0911.i.i.i.i.i.i.i76.ph = phi ptr [ %.sroa.097.0147, %.lr.ph.i.i.i.i.i.i.i74.preheader ], [ %i.cs, %middle.block ] ; 3 uses
  %.0911.i.i.i.i.i.i.i76.ph190 = ptrtoint ptr %.0911.i.i.i.i.i.i.i76.ph to i64
  %i.cx = sub i64 %.sroa.097.6.pn146179, %.0911.i.i.i.i.i.i.i76.ph190 ; 2 uses
  %i.cy = lshr i64 %i.cx, 3
  %i.cz = add nuw nsw i64 %i.cy, 1
  %xtraiter = and i64 %i.cz, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i74.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i74.prol

.lr.ph.i.i.i.i.i.i.i74.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i74.preheader183, %.lr.ph.i.i.i.i.i.i.i74.prol
  %.012.i.i.i.i.i.i.i75.prol = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.i.i74.prol ], [ %.012.i.i.i.i.i.i.i75.ph, %.lr.ph.i.i.i.i.i.i.i74.preheader183 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i76.prol = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.i.i74.prol ], [ %.0911.i.i.i.i.i.i.i76.ph, %.lr.ph.i.i.i.i.i.i.i74.preheader183 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i74.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i74.preheader183 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !282)
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.da = load i64, ptr %.0911.i.i.i.i.i.i.i76.prol, align 8, !alias.scope !285, !noalias !282
  store i64 %i.da, ptr %.012.i.i.i.i.i.i.i75.prol, align 8, !alias.scope !282, !noalias !285
  %i.db = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i76.prol, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i75.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i74.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i74.prol, !llvm.loop !288

.lr.ph.i.i.i.i.i.i.i74.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i74.prol, %.lr.ph.i.i.i.i.i.i.i74.preheader183
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i74.preheader183 ], [ %i.dc, %.lr.ph.i.i.i.i.i.i.i74.prol ]
  %.012.i.i.i.i.i.i.i75.unr = phi ptr [ %.012.i.i.i.i.i.i.i75.ph, %.lr.ph.i.i.i.i.i.i.i74.preheader183 ], [ %i.dc, %.lr.ph.i.i.i.i.i.i.i74.prol ]
  %.0911.i.i.i.i.i.i.i76.unr = phi ptr [ %.0911.i.i.i.i.i.i.i76.ph, %.lr.ph.i.i.i.i.i.i.i74.preheader183 ], [ %i.db, %.lr.ph.i.i.i.i.i.i.i74.prol ]
  %i.dd = icmp ult i64 %i.cx, 56
  br i1 %i.dd, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i78, label %.lr.ph.i.i.i.i.i.i.i74

.lr.ph.i.i.i.i.i.i.i74:                           ; preds = %.lr.ph.i.i.i.i.i.i.i74.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i74
  %.012.i.i.i.i.i.i.i75 = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i.i.i74 ], [ %.012.i.i.i.i.i.i.i75.unr, %.lr.ph.i.i.i.i.i.i.i74.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i76 = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i.i.i74 ], [ %.0911.i.i.i.i.i.i.i76.unr, %.lr.ph.i.i.i.i.i.i.i74.prol.loopexit ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !282)
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.de = load i64, ptr %.0911.i.i.i.i.i.i.i76, align 8, !alias.scope !285, !noalias !282
  store i64 %i.de, ptr %.012.i.i.i.i.i.i.i75, align 8, !alias.scope !282, !noalias !285
  %i.df = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i76, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i75, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !290)
  call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.dh = load i64, ptr %i.df, align 8, !alias.scope !292, !noalias !290
  store i64 %i.dh, ptr %i.dg, align 8, !alias.scope !290, !noalias !292
  %i.di = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i76, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i75, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !294)
  call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %i.dk = load i64, ptr %i.di, align 8, !alias.scope !296, !noalias !294
  store i64 %i.dk, ptr %i.dj, align 8, !alias.scope !294, !noalias !296
  %i.dl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i76, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i75, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !298)
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.dn = load i64, ptr %i.dl, align 8, !alias.scope !300, !noalias !298
  store i64 %i.dn, ptr %i.dm, align 8, !alias.scope !298, !noalias !300
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i76, i64 32
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i75, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.dq = load i64, ptr %i.do, align 8, !alias.scope !304, !noalias !302
  store i64 %i.dq, ptr %i.dp, align 8, !alias.scope !302, !noalias !304
  %i.dr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i76, i64 40
  %i.ds = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i75, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !306)
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.dt = load i64, ptr %i.dr, align 8, !alias.scope !308, !noalias !306
  store i64 %i.dt, ptr %i.ds, align 8, !alias.scope !306, !noalias !308
  %i.du = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i76, i64 48
  %i.dv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i75, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.dw = load i64, ptr %i.du, align 8, !alias.scope !312, !noalias !310
  store i64 %i.dw, ptr %i.dv, align 8, !alias.scope !310, !noalias !312
  %i.dx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i76, i64 56 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i75, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  %i.dz = load i64, ptr %i.dx, align 8, !alias.scope !316, !noalias !314
  store i64 %i.dz, ptr %i.dy, align 8, !alias.scope !314, !noalias !316
  %i.ea = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i76, i64 64
  %i.eb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i75, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i77.7 = icmp eq ptr %i.dx, %.sroa.097.6.pn146
  br i1 %.not.i.i.i.i.i.i.i77.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i78, label %.lr.ph.i.i.i.i.i.i.i74, !llvm.loop !318

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i78: ; preds = %.lr.ph.i.i.i.i.i.i.i74.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i74, %middle.block, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i70
  %.0.lcssa.i.i.i.i.i.i.i79 = phi ptr [ %i.cj, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i70 ], [ %i.cr, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i74.prol.loopexit ], [ %i.eb, %.lr.ph.i.i.i.i.i.i.i74 ]
  %.not.i23.i.i.i.i80 = icmp eq ptr %.sroa.097.0147, null
  br i1 %.not.i23.i.i.i.i80, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i81, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i78
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.097.0147, i64 noundef %i.cb) #33
  br label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i81

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i81: ; preds = %bb.ae, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i78
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ch
  br label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit

_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit: ; preds = %bb.ab, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i81
  %.sroa.21.7 = phi ptr [ %i.ec, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i81 ], [ %.sroa.21.0145, %bb.ab ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i79.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i79, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i81 ], [ %.sroa.11.0149, %bb.ab ]
  %.sroa.097.7 = phi ptr [ %i.cj, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i81 ], [ %.sroa.097.0147, %bb.ab ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge65, label %bb.i, !llvm.loop !319

bb.af:                                            ; preds = %bb.z
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 200
  store i8 1, ptr %i.ef, align 8
  call void @sqlite3_result_error(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef 0) #30
  br label %bb.ak

.critedge65:                                      ; preds = %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalIS1_EEEEEvDpOT_.exit
  %.sroa.21.0.lcssa = phi ptr [ %.sroa.21.6, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalIS1_EEEEEvDpOT_.exit ], [ %.sroa.21.7, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit ] ; 2 uses
  %.sroa.097.0.lcssa = phi ptr [ %.sroa.097.6, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalIS1_EEEEEvDpOT_.exit ], [ %.sroa.097.7, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit ] ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %i.b, i64 %3
  %i.eh = load ptr, ptr %i.eg, align 8, !nonnull !28, !noundef !28
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = add i64 %i.g, 560
  %i.ek = inttoptr i64 %i.ej to ptr               ; 3 uses
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = icmp eq ptr %i.el, %i.en
  br i1 %i.eo, label %bb.ag, label %_ZN2v89LocalBaseINS_8FunctionEE3NewEPNS_7IsolateEm.exit, !prof !5

bb.ag:                                            ; preds = %.critedge65
  %i.ep = call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.e) #30
  br label %_ZN2v89LocalBaseINS_8FunctionEE3NewEPNS_7IsolateEm.exit

_ZN2v89LocalBaseINS_8FunctionEE3NewEPNS_7IsolateEm.exit: ; preds = %.critedge65, %bb.ag
  %.0.i.i66 = phi ptr [ %i.ep, %bb.ag ], [ %i.el, %.critedge65 ] ; 3 uses
  %i.eq = ptrtoint ptr %.0.i.i66 to i64
  %i.er = add i64 %i.eq, 8
  %i.es = inttoptr i64 %i.er to ptr
  store ptr %i.es, ptr %i.ek, align 8
  store i64 %i.ei, ptr %.0.i.i66, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 3008
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 192
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ev, align 8
  %i.ew = call ptr @_ZN2v88Function4CallENS_5LocalINS_7ContextEEENS1_INS_5ValueEEEiPS5_(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i66, ptr %.sroa.0.0.copyload.i.i.i, ptr %i.i, i32 noundef %i.j, ptr noundef %.sroa.097.0.lcssa) #30 ; 2 uses
  %.not134 = icmp eq ptr %i.ew, null
  br i1 %.not134, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN2v89LocalBaseINS_8FunctionEE3NewEPNS_7IsolateEm.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 200
  store i8 1, ptr %i.ez, align 8
  call void @sqlite3_result_error(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef 0) #30
  br label %bb.ak

bb.ai:                                            ; preds = %_ZN2v89LocalBaseINS_8FunctionEE3NewEPNS_7IsolateEm.exit
  %i.fa = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %_ZN2v814PersistentBaseINS_5ValueEE5ResetIS1_EEvPNS_7IsolateERKNS_5LocalIT_EE.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN2v812api_internal13DisposeGlobalEPm(ptr noundef nonnull %i.fa) #30
  store ptr null, ptr %i.f, align 8
  br label %_ZN2v814PersistentBaseINS_5ValueEE5ResetIS1_EEvPNS_7IsolateERKNS_5LocalIT_EE.exit

_ZN2v814PersistentBaseINS_5ValueEE5ResetIS1_EEvPNS_7IsolateERKNS_5LocalIT_EE.exit: ; preds = %bb.ai, %bb.aj
  %i.fc = load i64, ptr %i.ew, align 8
  %i.fd = call noundef ptr @_ZN2v812api_internal18GlobalizeReferenceEPNS_8internal7IsolateEm(ptr noundef %i.e, i64 noundef %i.fc) #30
  store ptr %i.fd, ptr %i.f, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ah, %_ZN2v814PersistentBaseINS_5ValueEE5ResetIS1_EEvPNS_7IsolateERKNS_5LocalIT_EE.exit, %bb.af
  %.sroa.21.0142 = phi ptr [ %.sroa.21.0.lcssa, %bb.ah ], [ %.sroa.21.0.lcssa, %_ZN2v814PersistentBaseINS_5ValueEE5ResetIS1_EEvPNS_7IsolateERKNS_5LocalIT_EE.exit ], [ %.sroa.21.0145, %bb.af ]
  %.sroa.097.0138 = phi ptr [ %.sroa.097.0.lcssa, %bb.ah ], [ %.sroa.097.0.lcssa, %_ZN2v814PersistentBaseINS_5ValueEE5ResetIS1_EEvPNS_7IsolateERKNS_5LocalIT_EE.exit ], [ %.sroa.097.0147, %bb.af ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.097.0138, null
  br i1 %.not.i.i.i.i, label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fe = ptrtoint ptr %.sroa.21.0142 to i64
  %i.ff = ptrtoint ptr %.sroa.097.0138 to i64
  %i.fg = sub i64 %i.fe, %i.ff
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.097.0138, i64 noundef %i.fg) #33
  br label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit

_ZN2v811LocalVectorINS_5ValueEED2Ev.exit:         ; preds = %bb.al, %bb.ak, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN4node6sqlite15CustomAggregate12GetAggregateEP15sqlite3_context(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call ptr @sqlite3_aggregate_context(ptr noundef %1, i32 noundef 16) #30 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !26, !noundef !28
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !28, !noundef !28
  %i.j = load i64, ptr %i.i, align 8
end_hunk_1
begin_hunk_2_@"_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEZN4node6sqlite12DatabaseSync14ApplyChangesetERKN2v820FunctionCallbackInfoINS8_5ValueEEEE3$_1E9_M_invokeERKSt9_Any_dataOS3_":bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i.i.i.i = phi ptr [ %i.m, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %i.n = icmp ugt i64 %.val2, 536870887
  br i1 %i.n, label %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit.thread.i.i.i, label %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit.i.i.i, !prof !5

_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit.thread.i.i.i: ; preds = %bb.d
  tail call void @_ZN4node21ThrowErrStringTooLongEPN2v87IsolateE(ptr noundef %.0.i.i.i.i) #30
  br label %bb.e

_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit.i.i.i: ; preds = %bb.d
  %i.o = trunc nuw nsw i64 %.val2 to i32
  %i.p = tail call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %.0.i.i.i.i, ptr noundef %.val3, i32 noundef 0, i32 noundef %i.o) #30 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  store i64 %i.q, ptr %2, align 8
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit.i.i.i, %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit.thread.i.i.i
  %i.r = load ptr, ptr %.val, align 8, !nonnull !28, !align !395
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  store i8 1, ptr %i.t, align 8
  br label %bb.i

bb.f:                                             ; preds = %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !28, !align !395
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.g, align 8, !nonnull !28, !align !395
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3008
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 192
  %.sroa.0.0.copyload.i.i.i7.i.i.i = load ptr, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 200
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = add i64 %i.ae, 664
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = call ptr @_ZN2v88Function4CallENS_5LocalINS_7ContextEEENS1_INS_5ValueEEEiPS5_(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr %.sroa.0.0.copyload.i.i.i7.i.i.i, ptr %i.ag, i32 noundef 1, ptr noundef nonnull %2) #30 ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not16.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %.val, align 8, !nonnull !28, !align !395
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 200
  store i8 1, ptr %i.ak, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %i.g, align 8, !nonnull !28, !align !395
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 200
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call noundef zeroext i1 @_ZNK2v85Value12BooleanValueEPNS_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %i.ah, ptr noundef %i.ao) #30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %.1.i.i.i = phi i1 [ false, %bb.e ], [ false, %bb.g ], [ %i.ap, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %"_ZSt10__invoke_rIbRZN4node6sqlite12DatabaseSync14ApplyChangesetERKN2v820FunctionCallbackInfoINS3_5ValueEEEE3$_1JSt17basic_string_viewIcSt11char_traitsIcEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit"

"_ZSt10__invoke_rIbRZN4node6sqlite12DatabaseSync14ApplyChangesetERKN2v820FunctionCallbackInfoINS3_5ValueEEEE3$_1JSt17basic_string_viewIcSt11char_traitsIcEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit": ; preds = %bb.a, %bb.i
  %.2.i.i.i = phi i1 [ %.1.i.i.i, %bb.i ], [ false, %bb.a ]
  ret i1 %.2.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEZN4node6sqlite12DatabaseSync14ApplyChangesetERKN2v820FunctionCallbackInfoINS8_5ValueEEEE3$_1E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4node6sqlite12DatabaseSync14ApplyChangesetERKN2v820FunctionCallbackInfoINS4_5ValueEEEE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8
  store ptr %.val, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN4node6sqlite12DatabaseSync14ApplyChangesetERKN2v820FunctionCallbackInfoINS4_5ValueEEEE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN4node6sqlite12DatabaseSync14ApplyChangesetERKN2v820FunctionCallbackInfoINS4_5ValueEEEE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val5 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val5, i64 24, i1 false)
  store ptr %i.a, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN4node6sqlite12DatabaseSync14ApplyChangesetERKN2v820FunctionCallbackInfoINS4_5ValueEEEE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val6.i = load ptr, ptr %0, align 8            ; 2 uses
  %i.b = icmp eq ptr %.val6.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN4node6sqlite12DatabaseSync14ApplyChangesetERKN2v820FunctionCallbackInfoINS4_5ValueEEEE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val6.i, i64 noundef 24) #33
  br label %"_ZNSt14_Function_base13_Base_managerIZN4node6sqlite12DatabaseSync14ApplyChangesetERKN2v820FunctionCallbackInfoINS4_5ValueEEEE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4node6sqlite12DatabaseSync14ApplyChangesetERKN2v820FunctionCallbackInfoINS4_5ValueEEEE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef zeroext i1 @_ZNK2v85Value12BooleanValueEPNS_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #5

declare void @_ZN4node21ThrowErrStringTooLongEPN2v87IsolateE(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZN4node17ERR_INVALID_STATEIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  %i.c = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %2, i64 noundef %1) ; 0 uses
  %i.d = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %0, ptr noundef nonnull @.str.358, i32 noundef 1, i32 noundef 17) #30 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm18EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #30
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm18EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit

_ZN4node21FIXED_ONE_BYTE_STRINGILm18EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit: ; preds = %bb.a, %bb.b
  %i.f = load ptr, ptr %3, align 8
  %i.g = load i64, ptr %i.b, align 8
  %i.h = trunc i64 %i.g to i32
  %i.i = call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %0, ptr noundef %i.f, i32 noundef 0, i32 noundef %i.h) #30 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit, !prof !5

bb.c:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm18EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #30
  br label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit

_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit: ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm18EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, %bb.c
  %i.k = call ptr @_ZN2v89Exception5ErrorENS_5LocalINS_6StringEEENS1_INS_5ValueEEE(ptr %i.i, ptr null) #30
  %i.l = call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #30
  %i.m = call ptr @_ZNK2v85Value8ToObjectENS_5LocalINS_7ContextEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr %i.l) #30 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit, !prof !5

bb.d:                                             ; preds = %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #30
  br label %_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit

_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit: ; preds = %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit, %bb.d
  %i.o = call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #30
  %i.p = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef nonnull %0, ptr noundef nonnull @.str.235, i32 noundef 1, i32 noundef 4) #30 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, !prof !5

bb.e:                                             ; preds = %_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #30
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit

_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit: ; preds = %_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit, %bb.e
  %i.r = call i16 @_ZN2v86Object3SetENS_5LocalINS_7ContextEEENS1_INS_5ValueEEES5_(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr %i.o, ptr %i.p, ptr %i.d) #30
  %i.s = trunc i16 %i.r to i1
  br i1 %i.s, label %_ZNK2v85MaybeIbE5CheckEv.exit, label %bb.f, !prof !41

bb.f:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  call void @_ZN2v812api_internal17FromJustIsNothingEv() #30
  br label %_ZNK2v85MaybeIbE5CheckEv.exit

_ZNK2v85MaybeIbE5CheckEv.exit:                    ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, %bb.f
  %i.t = load ptr, ptr %3, align 8                ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.a
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK2v85MaybeIbE5CheckEv.exit
  %i.v = load i64, ptr %i.a, align 8
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK2v85MaybeIbE5CheckEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret ptr %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE15_M_range_insertIPKNS0_5LocalIS3_EEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EET_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = ptrtoint ptr %1 to i64                     ; 3 uses
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 9 uses
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 16 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 7 uses
  %i.k = sub i64 %i.i, %i.j
  %.not46 = icmp ult i64 %i.k, %i.c
  br i1 %.not46, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.m = sub i64 %i.j, %i.l                       ; 4 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIPKN2v85LocalINS0_5ValueEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %.idx ; 4 uses
  %i.q = sub i64 %i.a, %i.b
  %i.r = add i64 %i.q, -8                         ; 2 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check154 = icmp ult i64 %i.r, 72
  %i.u = sub i64 %i.b, %i.a
  %diff.check152 = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check154, %diff.check152
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph155

vector.ph155:                                     ; preds = %bb.d
  %n.vec157 = and i64 %i.t, 4611686018427387900   ; 3 uses
  %i.v = shl i64 %n.vec157, 3                     ; 2 uses
  %i.w = getelementptr i8, ptr %i.h, i64 %i.v
  %i.x = getelementptr i8, ptr %i.p, i64 %i.v
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph155
  %index159 = phi i64 [ 0, %vector.ph155 ], [ %index.next164, %vector.body158 ] ; 2 uses
  %i.y = shl i64 %index159, 3                     ; 2 uses
  %next.gep160 = getelementptr i8, ptr %i.h, i64 %i.y ; 2 uses
  %next.gep161 = getelementptr i8, ptr %i.p, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep161, i64 16
  %wide.load162 = load <2 x i64>, ptr %next.gep161, align 8
  %wide.load163 = load <2 x i64>, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %next.gep160, i64 16
  store <2 x i64> %wide.load162, ptr %next.gep160, align 8
  store <2 x i64> %wide.load163, ptr %i.aa, align 8
  %index.next164 = add nuw i64 %index159, 4       ; 2 uses
  %i.ab = icmp eq i64 %index.next164, %n.vec157
  br i1 %i.ab, label %middle.block165, label %vector.body158, !llvm.loop !396

middle.block165:                                  ; preds = %vector.body158
  %cmp.n166 = icmp eq i64 %i.t, %n.vec157
  br i1 %cmp.n166, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %middle.block165
  %.08.i.i.i.i.i.ph = phi ptr [ %i.h, %bb.d ], [ %i.w, %middle.block165 ]
  %.sroa.04.07.i.i.i.i.i.ph = phi ptr [ %i.p, %bb.d ], [ %i.x, %middle.block165 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ac = load i64, ptr %.sroa.04.07.i.i.i.i.i, align 8
  store i64 %i.ac, ptr %.08.i.i.i.i.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  %i.af = icmp eq ptr %i.ad, %i.h
  br i1 %i.af, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !397

_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block165
  %i.ag = load ptr, ptr %i.g, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.c
  store ptr %i.ah, ptr %i.g, align 8
  %i.ai = ptrtoint ptr %i.p to i64
  %i.aj = sub i64 %i.ai, %i.l                     ; 3 uses
  %i.ak = ashr exact i64 %i.aj, 3                 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 1
  br i1 %i.al, label %bb.e, label %bb.f, !prof !41

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.am = sub nsw i64 0, %i.ak
  %i.an = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.am
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr align 8 %1, i64 %i.aj, i1 false)
  br label %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.ao = icmp eq i64 %i.aj, 8
  br i1 %i.ao, label %bb.g, label %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_ET0_T_S7_S6_.exit

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.aq = load i64, ptr %1, align 8
  store i64 %i.aq, ptr %i.ap, align 8
  br label %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_ET0_T_S7_S6_.exit

_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_ET0_T_S7_S6_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.ar = icmp sgt i64 %i.d, 0
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i47.preheader, label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i47.preheader:                     ; preds = %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_ET0_T_S7_S6_.exit
  %min.iters.check172 = icmp ult i64 %i.d, 8
  %i.as = sub i64 %i.b, %i.l
  %diff.check170 = icmp ugt i64 %i.as, -32
  %or.cond244 = or i1 %min.iters.check172, %diff.check170
  br i1 %or.cond244, label %.lr.ph.i.i.i.i.i47.preheader254, label %vector.ph173

vector.ph173:                                     ; preds = %.lr.ph.i.i.i.i.i47.preheader
  %n.vec175 = and i64 %i.d, 9223372036854775804   ; 3 uses
  %i.at = and i64 %i.d, 3
  %i.au = shl i64 %n.vec175, 3                    ; 2 uses
  %i.av = getelementptr i8, ptr %1, i64 %i.au
  %i.aw = getelementptr i8, ptr %2, i64 %i.au
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph173
  %index177 = phi i64 [ 0, %vector.ph173 ], [ %index.next182, %vector.body176 ] ; 2 uses
  %i.ax = shl i64 %index177, 3                    ; 2 uses
  %next.gep178 = getelementptr i8, ptr %1, i64 %i.ax ; 2 uses
  %next.gep179 = getelementptr i8, ptr %2, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep179, i64 16
  %wide.load180 = load <2 x i64>, ptr %next.gep179, align 8
  %wide.load181 = load <2 x i64>, ptr %i.ay, align 8
  %i.az = getelementptr i8, ptr %next.gep178, i64 16
  store <2 x i64> %wide.load180, ptr %next.gep178, align 8
  store <2 x i64> %wide.load181, ptr %i.az, align 8
  %index.next182 = add nuw i64 %index177, 4       ; 2 uses
  %i.ba = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.ba, label %middle.block183, label %vector.body176, !llvm.loop !398

middle.block183:                                  ; preds = %vector.body176
  %cmp.n184 = icmp eq i64 %i.d, %n.vec175
  br i1 %cmp.n184, label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, label %.lr.ph.i.i.i.i.i47.preheader254

.lr.ph.i.i.i.i.i47.preheader254:                  ; preds = %.lr.ph.i.i.i.i.i47.preheader, %middle.block183
  %.012.i.i.i.i.i.ph = phi i64 [ %i.d, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.at, %middle.block183 ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.av, %middle.block183 ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.aw, %middle.block183 ]
  br label %.lr.ph.i.i.i.i.i47

.lr.ph.i.i.i.i.i47:                               ; preds = %.lr.ph.i.i.i.i.i47.preheader254, %.lr.ph.i.i.i.i.i47
  %.012.i.i.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i47 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i47.preheader254 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i47 ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i47.preheader254 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i47 ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i47.preheader254 ] ; 2 uses
  %i.bb = load i64, ptr %.0910.i.i.i.i.i, align 8
  store i64 %i.bb, ptr %.0811.i.i.i.i.i, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.be = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bf = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i47, label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, !llvm.loop !399

_ZSt9__advanceIPKN2v85LocalINS0_5ValueEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bg = getelementptr inbounds i8, ptr %2, i64 %i.m ; 4 uses
  %.not9.i.i.i.i = icmp eq ptr %i.bg, %3
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceIPKN2v85LocalINS0_5ValueEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bh = add i64 %i.a, %i.l
  %i.bi = add i64 %i.j, %i.b
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = add i64 %i.bj, -8                       ; 2 uses
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bk, 72
  %i.bn = sub i64 %i.b, %i.l
  %diff.check = icmp ugt i64 %i.bn, -32
  %or.cond245 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond245, label %.lr.ph.i.i.i.i.preheader258, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.bm, 4611686018427387900     ; 3 uses
  %i.bo = shl i64 %n.vec, 3                       ; 2 uses
  %i.bp = getelementptr i8, ptr %i.h, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bg, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.br ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.bg, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep111, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep111, align 8
  %wide.load112 = load <2 x i64>, ptr %i.bs, align 8
  %i.bt = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load112, ptr %i.bt, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !400

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i.preheader258

.lr.ph.i.i.i.i.preheader258:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.bp, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader258, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader258 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader258 ] ; 2 uses
  %i.bv = load i64, ptr %.0810.i.i.i.i, align 8
  store i64 %i.bv, ptr %.011.i.i.i.i, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bw, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !401

_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre = load ptr, ptr %i.g, align 8
  br label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIPKN2v85LocalINS0_5ValueEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.by = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit ], [ %i.h, %_ZSt9__advanceIPKN2v85LocalINS0_5ValueEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.bz = ptrtoaddr ptr %i.by to i64
  %i.ca = sub nuw nsw i64 %i.d, %i.n
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ca ; 6 uses
  store ptr %i.cb, ptr %i.g, align 8
  %i.cc = icmp eq ptr %1, %i.h
  br i1 %i.cc, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52, label %.lr.ph.i.i.i.i.i48.preheader

.lr.ph.i.i.i.i.i48.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit
  %i.cd = sub i64 %i.j, %i.l
  %i.ce = add i64 %i.cd, -8                       ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check117 = icmp ult i64 %i.ce, 136
  br i1 %min.iters.check117, label %.lr.ph.i.i.i.i.i48.preheader257, label %vector.memcheck114

vector.memcheck114:                               ; preds = %.lr.ph.i.i.i.i.i48.preheader
  %i.ch = add i64 %i.c, %i.bz
  %i.ci = sub i64 %i.j, %i.ch
  %diff.check115 = icmp ugt i64 %i.ci, -32
  br i1 %diff.check115, label %.lr.ph.i.i.i.i.i48.preheader257, label %vector.ph118

vector.ph118:                                     ; preds = %vector.memcheck114
  %n.vec120 = and i64 %i.cg, 4611686018427387900  ; 3 uses
  %i.cj = shl i64 %n.vec120, 3                    ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cb, i64 %i.cj
  %i.cl = getelementptr i8, ptr %1, i64 %i.cj
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph118
  %index122 = phi i64 [ 0, %vector.ph118 ], [ %index.next127, %vector.body121 ] ; 2 uses
  %i.cm = shl i64 %index122, 3                    ; 2 uses
  %next.gep123 = getelementptr i8, ptr %i.cb, i64 %i.cm ; 2 uses
  %next.gep124 = getelementptr i8, ptr %1, i64 %i.cm ; 2 uses
  %i.cn = getelementptr i8, ptr %next.gep124, i64 16
  %wide.load125 = load <2 x i64>, ptr %next.gep124, align 8
  %wide.load126 = load <2 x i64>, ptr %i.cn, align 8
  %i.co = getelementptr i8, ptr %next.gep123, i64 16
  store <2 x i64> %wide.load125, ptr %next.gep123, align 8
  store <2 x i64> %wide.load126, ptr %i.co, align 8
  %index.next127 = add nuw i64 %index122, 4       ; 2 uses
  %i.cp = icmp eq i64 %index.next127, %n.vec120
  br i1 %i.cp, label %middle.block128, label %vector.body121, !llvm.loop !402

middle.block128:                                  ; preds = %vector.body121
  %cmp.n129 = icmp eq i64 %i.cg, %n.vec120
  br i1 %cmp.n129, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit, label %.lr.ph.i.i.i.i.i48.preheader257

.lr.ph.i.i.i.i.i48.preheader257:                  ; preds = %vector.memcheck114, %.lr.ph.i.i.i.i.i48.preheader, %middle.block128
  %.08.i.i.i.i.i49.ph = phi ptr [ %i.cb, %vector.memcheck114 ], [ %i.cb, %.lr.ph.i.i.i.i.i48.preheader ], [ %i.ck, %middle.block128 ]
  %.sroa.04.07.i.i.i.i.i50.ph = phi ptr [ %1, %vector.memcheck114 ], [ %1, %.lr.ph.i.i.i.i.i48.preheader ], [ %i.cl, %middle.block128 ]
  br label %.lr.ph.i.i.i.i.i48

.lr.ph.i.i.i.i.i48:                               ; preds = %.lr.ph.i.i.i.i.i48.preheader257, %.lr.ph.i.i.i.i.i48
  %.08.i.i.i.i.i49 = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i48 ], [ %.08.i.i.i.i.i49.ph, %.lr.ph.i.i.i.i.i48.preheader257 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i50 = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i48 ], [ %.sroa.04.07.i.i.i.i.i50.ph, %.lr.ph.i.i.i.i.i48.preheader257 ] ; 2 uses
  %i.cq = load i64, ptr %.sroa.04.07.i.i.i.i.i50, align 8
  store i64 %i.cq, ptr %.08.i.i.i.i.i49, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i50, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i49, i64 8
  %i.ct = icmp eq ptr %i.cr, %i.h
  br i1 %i.ct, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit, label %.lr.ph.i.i.i.i.i48, !llvm.loop !403

_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit: ; preds = %.lr.ph.i.i.i.i.i48, %middle.block128
  %.pre90 = load ptr, ptr %i.g, align 8
  br label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52

_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52: ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit
  %i.cu = phi ptr [ %.pre90, %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit ], [ %i.cb, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.m
  store ptr %i.cv, ptr %i.g, align 8
  %i.cw = ashr exact i64 %i.m, 3                  ; 6 uses
  %i.cx = icmp sgt i64 %i.cw, 0
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i54.preheader, label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i54.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52
  %min.iters.check135 = icmp ult i64 %i.cw, 8
  %i.cy = sub i64 %i.b, %i.l
  %diff.check133 = icmp ugt i64 %i.cy, -32
  %or.cond246 = or i1 %min.iters.check135, %diff.check133
  br i1 %or.cond246, label %.lr.ph.i.i.i.i.i54.preheader255, label %vector.ph136

vector.ph136:                                     ; preds = %.lr.ph.i.i.i.i.i54.preheader
  %n.vec138 = and i64 %i.cw, 9223372036854775804  ; 3 uses
  %i.cz = and i64 %i.cw, 3
  %i.da = shl i64 %n.vec138, 3                    ; 2 uses
  %i.db = getelementptr i8, ptr %1, i64 %i.da
  %i.dc = getelementptr i8, ptr %2, i64 %i.da
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph136
  %index140 = phi i64 [ 0, %vector.ph136 ], [ %index.next145, %vector.body139 ] ; 2 uses
  %i.dd = shl i64 %index140, 3                    ; 2 uses
  %next.gep141 = getelementptr i8, ptr %1, i64 %i.dd ; 2 uses
  %next.gep142 = getelementptr i8, ptr %2, i64 %i.dd ; 2 uses
  %i.de = getelementptr i8, ptr %next.gep142, i64 16
  %wide.load143 = load <2 x i64>, ptr %next.gep142, align 8
  %wide.load144 = load <2 x i64>, ptr %i.de, align 8
  %i.df = getelementptr i8, ptr %next.gep141, i64 16
  store <2 x i64> %wide.load143, ptr %next.gep141, align 8
  store <2 x i64> %wide.load144, ptr %i.df, align 8
  %index.next145 = add nuw i64 %index140, 4       ; 2 uses
  %i.dg = icmp eq i64 %index.next145, %n.vec138
  br i1 %i.dg, label %middle.block146, label %vector.body139, !llvm.loop !404

middle.block146:                                  ; preds = %vector.body139
  %cmp.n147 = icmp eq i64 %i.cw, %n.vec138
  br i1 %cmp.n147, label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, label %.lr.ph.i.i.i.i.i54.preheader255

.lr.ph.i.i.i.i.i54.preheader255:                  ; preds = %.lr.ph.i.i.i.i.i54.preheader, %middle.block146
  %.012.i.i.i.i.i55.ph = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.cz, %middle.block146 ]
  %.0811.i.i.i.i.i56.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.db, %middle.block146 ]
  %.0910.i.i.i.i.i57.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.dc, %middle.block146 ]
  br label %.lr.ph.i.i.i.i.i54

.lr.ph.i.i.i.i.i54:                               ; preds = %.lr.ph.i.i.i.i.i54.preheader255, %.lr.ph.i.i.i.i.i54
  %.012.i.i.i.i.i55 = phi i64 [ %i.dk, %.lr.ph.i.i.i.i.i54 ], [ %.012.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i54.preheader255 ] ; 2 uses
  %.0811.i.i.i.i.i56 = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i54 ], [ %.0811.i.i.i.i.i56.ph, %.lr.ph.i.i.i.i.i54.preheader255 ] ; 2 uses
  %.0910.i.i.i.i.i57 = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i54 ], [ %.0910.i.i.i.i.i57.ph, %.lr.ph.i.i.i.i.i54.preheader255 ] ; 2 uses
  %i.dh = load i64, ptr %.0910.i.i.i.i.i57, align 8
  store i64 %i.dh, ptr %.0811.i.i.i.i.i56, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i57, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i56, i64 8
  %i.dk = add nsw i64 %.012.i.i.i.i.i55, -1
  %i.dl = icmp samesign ugt i64 %.012.i.i.i.i.i55, 1
  br i1 %i.dl, label %.lr.ph.i.i.i.i.i54, label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, !llvm.loop !405

bb.h:                                             ; preds = %bb.b
  %i.dm = load ptr, ptr %0, align 8               ; 7 uses
  %i.dn = ptrtoint ptr %i.dm to i64               ; 4 uses
  %i.do = sub i64 %i.j, %i.dn
  %i.dp = ashr exact i64 %i.do, 3                 ; 4 uses
  %i.dq = sub nsw i64 1152921504606846975, %i.dp
  %i.dr = icmp ult i64 %i.dq, %i.d
  br i1 %i.dr, label %bb.i, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.360) #31
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.h
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.dp, i64 %i.d)
  %i.ds = add nsw i64 %.sroa.speculated.i, %i.dp  ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.dp
  %i.du = tail call i64 @llvm.umin.i64(i64 %i.ds, i64 1152921504606846975)
  %i.dv = select i1 %i.dt, i64 1152921504606846975, i64 %i.du ; 3 uses
  %.not.i = icmp eq i64 %i.dv, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_M_allocateEm.exit, label %bb.j

bb.j:                                             ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.dw = shl nuw nsw i64 %i.dv, 3
  %i.dx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dw) #32
  br label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit, %bb.j
  %i.dy = phi ptr [ %i.dx, %bb.j ], [ null, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %i.dz = icmp eq ptr %i.dm, %1
  br i1 %i.dz, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i59.preheader

.lr.ph.i.i.i.i.i59.preheader:                     ; preds = %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_M_allocateEm.exit
  %i.ea = ptrtoaddr ptr %i.dy to i64
  %5 = add i64 %4, -8
  %i.eb = sub i64 %5, %i.dn                       ; 2 uses
  %i.ec = lshr i64 %i.eb, 3
  %i.ed = add nuw nsw i64 %i.ec, 1                ; 2 uses
  %min.iters.check191 = icmp ult i64 %i.eb, 72
  %i.ee = sub i64 %i.dn, %i.ea
  %diff.check189 = icmp ugt i64 %i.ee, -32
  %or.cond247 = or i1 %min.iters.check191, %diff.check189
  br i1 %or.cond247, label %.lr.ph.i.i.i.i.i59.preheader252, label %vector.ph192

vector.ph192:                                     ; preds = %.lr.ph.i.i.i.i.i59.preheader
  %n.vec194 = and i64 %i.ed, 4611686018427387900  ; 3 uses
  %i.ef = shl i64 %n.vec194, 3                    ; 2 uses
  %i.eg = getelementptr i8, ptr %i.dy, i64 %i.ef  ; 2 uses
  %i.eh = getelementptr i8, ptr %i.dm, i64 %i.ef
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph192
  %index196 = phi i64 [ 0, %vector.ph192 ], [ %index.next201, %vector.body195 ] ; 2 uses
  %i.ei = shl i64 %index196, 3                    ; 2 uses
  %next.gep197 = getelementptr i8, ptr %i.dy, i64 %i.ei ; 2 uses
  %next.gep198 = getelementptr i8, ptr %i.dm, i64 %i.ei ; 2 uses
  %i.ej = getelementptr i8, ptr %next.gep198, i64 16
  %wide.load199 = load <2 x i64>, ptr %next.gep198, align 8
  %wide.load200 = load <2 x i64>, ptr %i.ej, align 8
  %i.ek = getelementptr i8, ptr %next.gep197, i64 16
  store <2 x i64> %wide.load199, ptr %next.gep197, align 8
  store <2 x i64> %wide.load200, ptr %i.ek, align 8
  %index.next201 = add nuw i64 %index196, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next201, %n.vec194
  br i1 %i.el, label %middle.block202, label %vector.body195, !llvm.loop !406

middle.block202:                                  ; preds = %vector.body195
  %cmp.n203 = icmp eq i64 %i.ed, %n.vec194
  br i1 %cmp.n203, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i59.preheader252

.lr.ph.i.i.i.i.i59.preheader252:                  ; preds = %.lr.ph.i.i.i.i.i59.preheader, %middle.block202
  %.08.i.i.i.i.i60.ph = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i59.preheader ], [ %i.eg, %middle.block202 ]
  %.sroa.04.07.i.i.i.i.i61.ph = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i59.preheader ], [ %i.eh, %middle.block202 ]
  br label %.lr.ph.i.i.i.i.i59

.lr.ph.i.i.i.i.i59:                               ; preds = %.lr.ph.i.i.i.i.i59.preheader252, %.lr.ph.i.i.i.i.i59
  %.08.i.i.i.i.i60 = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i59 ], [ %.08.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i59.preheader252 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i61 = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i59 ], [ %.sroa.04.07.i.i.i.i.i61.ph, %.lr.ph.i.i.i.i.i59.preheader252 ] ; 2 uses
  %i.em = load i64, ptr %.sroa.04.07.i.i.i.i.i61, align 8
  store i64 %i.em, ptr %.08.i.i.i.i.i60, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i61, i64 8 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i60, i64 8 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %1
  br i1 %i.ep, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i59, !llvm.loop !407

_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i59, %middle.block202, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i62 = phi ptr [ %i.dy, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_M_allocateEm.exit ], [ %i.eg, %middle.block202 ], [ %i.eo, %.lr.ph.i.i.i.i.i59 ] ; 4 uses
  %i.eq = sub i64 %i.a, %i.b
  %i.er = add i64 %i.eq, -8                       ; 2 uses
  %i.es = lshr i64 %i.er, 3
  %i.et = add nuw nsw i64 %i.es, 1                ; 2 uses
  %min.iters.check210 = icmp ult i64 %i.er, 72
  %.0.lcssa.i.i.i.i.i62207 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i62 to i64
  %i.eu = sub i64 %i.b, %.0.lcssa.i.i.i.i.i62207
  %diff.check208 = icmp ugt i64 %i.eu, -32
  %or.cond248 = select i1 %min.iters.check210, i1 true, i1 %diff.check208
  br i1 %or.cond248, label %.lr.ph.i.i.i.i64.preheader, label %vector.ph211

vector.ph211:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %n.vec213 = and i64 %i.et, 4611686018427387900  ; 3 uses
  %i.ev = shl i64 %n.vec213, 3                    ; 2 uses
  %i.ew = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i62, i64 %i.ev ; 2 uses
  %i.ex = getelementptr i8, ptr %2, i64 %i.ev
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph211
  %index215 = phi i64 [ 0, %vector.ph211 ], [ %index.next220, %vector.body214 ] ; 2 uses
  %i.ey = shl i64 %index215, 3                    ; 2 uses
  %next.gep216 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i62, i64 %i.ey ; 2 uses
  %next.gep217 = getelementptr i8, ptr %2, i64 %i.ey ; 2 uses
  %i.ez = getelementptr i8, ptr %next.gep217, i64 16
  %wide.load218 = load <2 x i64>, ptr %next.gep217, align 8
  %wide.load219 = load <2 x i64>, ptr %i.ez, align 8
  %i.fa = getelementptr i8, ptr %next.gep216, i64 16
  store <2 x i64> %wide.load218, ptr %next.gep216, align 8
  store <2 x i64> %wide.load219, ptr %i.fa, align 8
  %index.next220 = add nuw i64 %index215, 4       ; 2 uses
  %i.fb = icmp eq i64 %index.next220, %n.vec213
  br i1 %i.fb, label %middle.block221, label %vector.body214, !llvm.loop !408

middle.block221:                                  ; preds = %vector.body214
  %cmp.n222 = icmp eq i64 %i.et, %n.vec213
  br i1 %cmp.n222, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69, label %.lr.ph.i.i.i.i64.preheader

.lr.ph.i.i.i.i64.preheader:                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, %middle.block221
  %.011.i.i.i.i65.ph = phi ptr [ %.0.lcssa.i.i.i.i.i62, %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ], [ %i.ew, %middle.block221 ]
  %.0810.i.i.i.i66.ph = phi ptr [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ], [ %i.ex, %middle.block221 ]
  br label %.lr.ph.i.i.i.i64

.lr.ph.i.i.i.i64:                                 ; preds = %.lr.ph.i.i.i.i64.preheader, %.lr.ph.i.i.i.i64
  %.011.i.i.i.i65 = phi ptr [ %i.fe, %.lr.ph.i.i.i.i64 ], [ %.011.i.i.i.i65.ph, %.lr.ph.i.i.i.i64.preheader ] ; 2 uses
  %.0810.i.i.i.i66 = phi ptr [ %i.fd, %.lr.ph.i.i.i.i64 ], [ %.0810.i.i.i.i66.ph, %.lr.ph.i.i.i.i64.preheader ] ; 2 uses
  %i.fc = load i64, ptr %.0810.i.i.i.i66, align 8
  store i64 %i.fc, ptr %.011.i.i.i.i65, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i66, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i65, i64 8 ; 2 uses
  %.not.i.i.i.i67 = icmp eq ptr %i.fd, %3
  br i1 %.not.i.i.i.i67, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69, label %.lr.ph.i.i.i.i64, !llvm.loop !409

_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69: ; preds = %.lr.ph.i.i.i.i64, %middle.block221
  %.lcssa109 = phi ptr [ %i.ew, %middle.block221 ], [ %i.fe, %.lr.ph.i.i.i.i64 ] ; 5 uses
  %i.ff = icmp eq ptr %1, %i.h
  br i1 %i.ff, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, label %.lr.ph.i.i.i.i.i70.preheader

.lr.ph.i.i.i.i.i70.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69
  %.lcssa109226 = ptrtoaddr ptr %.lcssa109 to i64
  %6 = add i64 %i.j, -8
  %i.fg = sub i64 %6, %4                          ; 2 uses
  %i.fh = lshr i64 %i.fg, 3
  %i.fi = add nuw nsw i64 %i.fh, 1                ; 2 uses
  %min.iters.check229 = icmp ult i64 %i.fg, 72
  %i.fj = sub i64 %4, %.lcssa109226
  %diff.check227 = icmp ugt i64 %i.fj, -32
  %or.cond249 = select i1 %min.iters.check229, i1 true, i1 %diff.check227
  br i1 %or.cond249, label %.lr.ph.i.i.i.i.i70.preheader250, label %vector.ph230

vector.ph230:                                     ; preds = %.lr.ph.i.i.i.i.i70.preheader
  %n.vec232 = and i64 %i.fi, 4611686018427387900  ; 3 uses
  %i.fk = shl i64 %n.vec232, 3                    ; 2 uses
  %i.fl = getelementptr i8, ptr %.lcssa109, i64 %i.fk ; 2 uses
  %i.fm = getelementptr i8, ptr %1, i64 %i.fk
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph230
  %index234 = phi i64 [ 0, %vector.ph230 ], [ %index.next239, %vector.body233 ] ; 2 uses
  %i.fn = shl i64 %index234, 3                    ; 2 uses
  %next.gep235 = getelementptr i8, ptr %.lcssa109, i64 %i.fn ; 2 uses
  %next.gep236 = getelementptr i8, ptr %1, i64 %i.fn ; 2 uses
  %i.fo = getelementptr i8, ptr %next.gep236, i64 16
  %wide.load237 = load <2 x i64>, ptr %next.gep236, align 8
  %wide.load238 = load <2 x i64>, ptr %i.fo, align 8
  %i.fp = getelementptr i8, ptr %next.gep235, i64 16
  store <2 x i64> %wide.load237, ptr %next.gep235, align 8
  store <2 x i64> %wide.load238, ptr %i.fp, align 8
  %index.next239 = add nuw i64 %index234, 4       ; 2 uses
  %i.fq = icmp eq i64 %index.next239, %n.vec232
  br i1 %i.fq, label %middle.block240, label %vector.body233, !llvm.loop !410

middle.block240:                                  ; preds = %vector.body233
  %cmp.n241 = icmp eq i64 %i.fi, %n.vec232
  br i1 %cmp.n241, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, label %.lr.ph.i.i.i.i.i70.preheader250

.lr.ph.i.i.i.i.i70.preheader250:                  ; preds = %.lr.ph.i.i.i.i.i70.preheader, %middle.block240
  %.08.i.i.i.i.i71.ph = phi ptr [ %.lcssa109, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.fl, %middle.block240 ]
  %.sroa.04.07.i.i.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.fm, %middle.block240 ]
  br label %.lr.ph.i.i.i.i.i70

.lr.ph.i.i.i.i.i70:                               ; preds = %.lr.ph.i.i.i.i.i70.preheader250, %.lr.ph.i.i.i.i.i70
  %.08.i.i.i.i.i71 = phi ptr [ %i.ft, %.lr.ph.i.i.i.i.i70 ], [ %.08.i.i.i.i.i71.ph, %.lr.ph.i.i.i.i.i70.preheader250 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i72 = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i70 ], [ %.sroa.04.07.i.i.i.i.i72.ph, %.lr.ph.i.i.i.i.i70.preheader250 ] ; 2 uses
  %i.fr = load i64, ptr %.sroa.04.07.i.i.i.i.i72, align 8
  store i64 %i.fr, ptr %.08.i.i.i.i.i71, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i72, i64 8 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i71, i64 8 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.h
  br i1 %i.fu, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, label %.lr.ph.i.i.i.i.i70, !llvm.loop !411

_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74: ; preds = %.lr.ph.i.i.i.i.i70, %middle.block240, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69
  %.0.lcssa.i.i.i.i.i73 = phi ptr [ %.lcssa109, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69 ], [ %i.fl, %middle.block240 ], [ %i.ft, %.lr.ph.i.i.i.i.i70 ]
  %.not.i75 = icmp eq ptr %i.dm, null
  br i1 %.not.i75, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74
  %i.fv = load ptr, ptr %i.e, align 8
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = sub i64 %i.fw, %i.dn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.fx) #33
  br label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, %bb.k
  store ptr %i.dy, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i.i.i73, ptr %i.g, align 8
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dv
  store ptr %i.fy, ptr %i.e, align 8
  br label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit

_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit: ; preds = %.lr.ph.i.i.i.i.i54, %.lr.ph.i.i.i.i.i47, %middle.block146, %middle.block183, %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52, %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_ET0_T_S7_S6_.exit, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE16_M_insert_uniqueIS8_EES6_ISt17_Rb_tree_iteratorIS8_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.a, 1        ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.e
  br i1 %or.cond.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_M_insert_IS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  %i.j = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr %1, align 8
  %i.n = tail call i32 @memcmp(ptr noundef %i.m, ptr noundef %i.l, i64 noundef %.sroa.speculated.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.c
  %i.o = sub i64 %i.g, %i.i
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.o, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.p = icmp slt i32 %.0.i.i.i.i, 0
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_M_insert_IS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_M_insert_IS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit: ; preds = %bb.b, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
  %i.q = phi i1 [ %i.p, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ true, %bb.b ]
  %i.r = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_create_nodeIJS8_EEEPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 2 uses
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.q, ptr noundef %i.r, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #30
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_M_insert_IS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit
  %.sroa.09.0 = phi ptr [ %i.r, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_M_insert_IS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit ], [ %i.b, %bb.a ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_M_insert_IS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.09.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8           ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #30 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8             ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !412

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
end_hunk_2
