inline.NumInlined: 5068
inline.NumDeleted: 1851
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN4node6sqlite16ExtractRowValuesEPNS_11EnvironmentEP12sqlite3_stmtibPN2v811LocalVectorINS5_5ValueEEE
define dso_local range(i8 0, 2) i8 @_ZN4node6sqlite16ExtractRowValuesEPNS_11EnvironmentEP12sqlite3_stmtibPN2v811LocalVectorINS5_5ValueEEE(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %4, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZN2v811LocalVectorINS_5ValueEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE5clearEv.exit

_ZN2v811LocalVectorINS_5ValueEE5clearEv.exit:     ; preds = %bb.a, %bb.b
  %i.d = sext i32 %2 to i64                       ; 3 uses
  %i.e = icmp slt i32 %2, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v811LocalVectorINS_5ValueEE5clearEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.308) #31
  unreachable

bb.d:                                             ; preds = %_ZN2v811LocalVectorINS_5ValueEE5clearEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.a to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 3
  %i.l = icmp ult i64 %i.k, %i.d
  br i1 %i.l, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i, label %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i: ; preds = %bb.d
  %i.m = shl nuw nsw i64 %i.d, 3
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #32 ; 3 uses
  %.not.i8.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.j) #33
  br label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i
  store ptr %i.n, ptr %4, align 8
  store ptr %i.n, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.d
  store ptr %i.o, ptr %i.f, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit

_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit:   ; preds = %bb.d, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i
  %.not24 = icmp eq i32 %2, 0
  br i1 %.not24, label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit, %bb.k
  %.01221 = phi i32 [ %i.ba, %bb.k ], [ 0, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ] ; 2 uses
  %i.p = tail call ptr @_ZN4node6sqlite24StatementExecutionHelper13ColumnToValueEPNS_11EnvironmentEP12sqlite3_stmtib(ptr noundef %0, ptr noundef %1, i32 noundef %.01221, i1 noundef zeroext %3) ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.s = load ptr, ptr %i.f, align 8
  %.not.i.i.i13 = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i.i13, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.q, ptr %i.r, align 8
  %i.t = load ptr, ptr %i.b, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.u, ptr %i.b, align 8
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %4, align 8                ; 7 uses
  %i.w = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64                 ; 3 uses
  %i.y = sub i64 %i.w, %i.x                       ; 4 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.i, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.205) #31
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.h
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i.i.i14 = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i14)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #32 ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.y
  store i64 %i.q, ptr %i.ah, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.v, %i.r
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ai = ptrtoaddr ptr %i.ag to i64
  %i.aj = sub i64 %i.w, %i.x
  %i.ak = add i64 %i.aj, -8                       ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 24
  %i.an = sub i64 %i.x, %i.ai
  %diff.check = icmp ugt i64 %i.an, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader35, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.am, 4611686018427387900     ; 3 uses
  %i.ao = shl i64 %n.vec, 3                       ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ag, i64 %i.ao  ; 2 uses
  %i.aq = getelementptr i8, ptr %i.v, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.ar ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.v, i64 %i.ar ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.as = getelementptr i8, ptr %next.gep32, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep32, align 8, !alias.scope !90, !noalias !87
  %wide.load33 = load <2 x i64>, ptr %i.as, align 8, !alias.scope !90, !noalias !87
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !87, !noalias !90
  store <2 x i64> %wide.load33, ptr %i.at, align 8, !alias.scope !87, !noalias !90
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader35

.lr.ph.i.i.i.i.i.i.i.preheader35:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ap, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader35, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader35 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader35 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.av = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !90, !noalias !87
  store i64 %i.av, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !87, !noalias !90
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aw, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !93

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ag, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.ap, %middle.block ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.y) #33
  br label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.j, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  store ptr %i.ag, ptr %4, align 8
  store ptr %i.ay, ptr %i.b, align 8
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.az, ptr %i.f, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, %bb.g
  %i.ba = add nuw nsw i32 %.01221, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ba, %2
  br i1 %exitcond.not, label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit, label %.lr.ph, !llvm.loop !94

_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit: ; preds = %.lr.ph, %bb.k, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit
  %.sroa.0.3 = phi i8 [ 1, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ], [ 1, %bb.k ], [ 0, %.lr.ph ]
  ret i8 %.sroa.0.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4node6sqlite24StatementExecutionHelper3AllEPNS_11EnvironmentEPNS0_12DatabaseSyncEP12sqlite3_stmtbb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.v8::EscapableHandleScope", align 8 ; 9 uses
  %6 = alloca %"class.v8::LocalVector", align 8   ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZN2v824EscapableHandleScopeBaseC2EPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.c) #30
  %i.d = call i32 @sqlite3_column_count(ptr noundef %2) #30 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.e = sext i32 %i.d to i64                     ; 4 uses
  %i.f = icmp slt i32 %i.d, 0
  %i.g = shl nuw nsw i64 %i.e, 3
  %.not36173 = icmp sgt i32 %i.d, 0
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = add i64 %i.h, 664
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  br i1 %3, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit.us
  %.sroa.19.0.us = phi ptr [ %.sroa.19.1.us, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit.us ], [ null, %bb.a ] ; 8 uses
  %.sroa.1089.0.us = phi ptr [ %.sroa.1089.1.us, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit.us ], [ null, %bb.a ] ; 4 uses
  %.sroa.084.0.us = phi ptr [ %.sroa.084.1.us, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit.us ], [ null, %bb.a ] ; 11 uses
  %i.l = call i32 @sqlite3_step(ptr noundef %2) #30
  switch i32 %i.l, label %.split181.us [
    i32 100, label %bb.b
    i32 101, label %.critedge38
  ]

bb.b:                                             ; preds = %.split.us
  %i.m = call i8 @_ZN4node6sqlite16ExtractRowValuesEPNS_11EnvironmentEP12sqlite3_stmtibPN2v811LocalVectorINS5_5ValueEEE(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.d, i1 noundef zeroext %4, ptr noundef nonnull %6)
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %_ZN2v811LocalVectorINS_4NameEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %6, align 8                ; 2 uses
  %i.p = load ptr, ptr %i.k, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = call ptr @_ZN2v85Array3NewEPNS_7IsolateEPNS_5LocalINS_5ValueEEEm(ptr noundef %i.c, ptr noundef %i.o, i64 noundef %i.t) #30
  %i.v = ptrtoint ptr %i.u to i64                 ; 2 uses
  %.not.i.i.i.us = icmp eq ptr %.sroa.1089.0.us, %.sroa.19.0.us
  br i1 %.not.i.i.i.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.v, ptr %.sroa.1089.0.us, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit.us

bb.e:                                             ; preds = %bb.c
  %i.w = ptrtoint ptr %.sroa.19.0.us to i64       ; 2 uses
  %i.x = ptrtoint ptr %.sroa.084.0.us to i64      ; 3 uses
  %i.y = sub i64 %i.w, %i.x                       ; 4 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %.split195.us, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.us

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.us: ; preds = %bb.e
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i.i.us = call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i.i.i.us, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i.i.i.us = icmp ne i64 %i.ae, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.us)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #32 ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.y
  store i64 %i.v, ptr %i.ah, align 8
  %.not10.i.i.i.i.i.i.i.us = icmp eq ptr %.sroa.084.0.us, %.sroa.19.0.us
  br i1 %.not10.i.i.i.i.i.i.i.us, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.us, label %.lr.ph.i.i.i.i.i.i.i.us.preheader

.lr.ph.i.i.i.i.i.i.i.us.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.us
  %i.ai = ptrtoaddr ptr %i.ag to i64
  %i.aj = sub i64 %i.w, %i.x
  %i.ak = add i64 %i.aj, -8                       ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check418 = icmp ult i64 %i.ak, 24
  %i.an = sub i64 %i.x, %i.ai
  %diff.check416 = icmp ugt i64 %i.an, -32
  %or.cond = or i1 %min.iters.check418, %diff.check416
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.us.preheader435, label %vector.ph419

vector.ph419:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.us.preheader
  %n.vec421 = and i64 %i.am, 4611686018427387900  ; 3 uses
  %i.ao = shl i64 %n.vec421, 3                    ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ag, i64 %i.ao  ; 2 uses
  %i.aq = getelementptr i8, ptr %.sroa.084.0.us, i64 %i.ao
  br label %vector.body422

vector.body422:                                   ; preds = %vector.body422, %vector.ph419
  %index423 = phi i64 [ 0, %vector.ph419 ], [ %index.next428, %vector.body422 ] ; 2 uses
  %i.ar = shl i64 %index423, 3                    ; 2 uses
  %next.gep424 = getelementptr i8, ptr %i.ag, i64 %i.ar ; 2 uses
  %next.gep425 = getelementptr i8, ptr %.sroa.084.0.us, i64 %i.ar ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.as = getelementptr i8, ptr %next.gep425, i64 16
  %wide.load426 = load <2 x i64>, ptr %next.gep425, align 8, !alias.scope !98, !noalias !95
  %wide.load427 = load <2 x i64>, ptr %i.as, align 8, !alias.scope !98, !noalias !95
  %i.at = getelementptr i8, ptr %next.gep424, i64 16
  store <2 x i64> %wide.load426, ptr %next.gep424, align 8, !alias.scope !95, !noalias !98
  store <2 x i64> %wide.load427, ptr %i.at, align 8, !alias.scope !95, !noalias !98
  %index.next428 = add nuw i64 %index423, 4       ; 2 uses
  %i.au = icmp eq i64 %index.next428, %n.vec421
  br i1 %i.au, label %middle.block429, label %vector.body422, !llvm.loop !100

middle.block429:                                  ; preds = %vector.body422
  %cmp.n430 = icmp eq i64 %i.am, %n.vec421
  br i1 %cmp.n430, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.us, label %.lr.ph.i.i.i.i.i.i.i.us.preheader435

.lr.ph.i.i.i.i.i.i.i.us.preheader435:             ; preds = %.lr.ph.i.i.i.i.i.i.i.us.preheader, %middle.block429
  %.012.i.i.i.i.i.i.i.us.ph = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.us.preheader ], [ %i.ap, %middle.block429 ]
  %.0911.i.i.i.i.i.i.i.us.ph = phi ptr [ %.sroa.084.0.us, %.lr.ph.i.i.i.i.i.i.i.us.preheader ], [ %i.aq, %middle.block429 ]
  br label %.lr.ph.i.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.i.us:                          ; preds = %.lr.ph.i.i.i.i.i.i.i.us.preheader435, %.lr.ph.i.i.i.i.i.i.i.us
  %.012.i.i.i.i.i.i.i.us = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.us ], [ %.012.i.i.i.i.i.i.i.us.ph, %.lr.ph.i.i.i.i.i.i.i.us.preheader435 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.us = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.us ], [ %.0911.i.i.i.i.i.i.i.us.ph, %.lr.ph.i.i.i.i.i.i.i.us.preheader435 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.av = load i64, ptr %.0911.i.i.i.i.i.i.i.us, align 8, !alias.scope !98, !noalias !95
  store i64 %i.av, ptr %.012.i.i.i.i.i.i.i.us, align 8, !alias.scope !95, !noalias !98
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.us, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.us, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.us = icmp eq ptr %i.aw, %.sroa.19.0.us
  br i1 %.not.i.i.i.i.i.i.i.us, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.us, label %.lr.ph.i.i.i.i.i.i.i.us, !llvm.loop !101

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.us, %middle.block429, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.us
  %.0.lcssa.i.i.i.i.i.i.i.us = phi ptr [ %i.ag, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.us ], [ %i.ap, %middle.block429 ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.us ]
  %.not.i23.i.i.i.i.us = icmp eq ptr %.sroa.084.0.us, null
  br i1 %.not.i23.i.i.i.i.us, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.us, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.us
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.084.0.us, i64 noundef %i.y) #33
  br label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.us

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.us: ; preds = %bb.f, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.us
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  br label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit.us

_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit.us: ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.us, %bb.d
  %.sroa.19.1.us = phi ptr [ %i.ay, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.us ], [ %.sroa.19.0.us, %bb.d ]
  %.0.lcssa.i.i.i.i.i.i.i.us.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i.us, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.us ], [ %.sroa.1089.0.us, %bb.d ]
  %.sroa.084.1.us = phi ptr [ %i.ag, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.us ], [ %.sroa.084.0.us, %bb.d ]
  %.sroa.1089.1.us = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.us.pn, i64 8
  br label %.split.us, !llvm.loop !102

.split:                                           ; preds = %bb.a, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit
  %.sroa.10.0 = phi ptr [ %.sroa.10.3, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit ], [ null, %bb.a ] ; 5 uses
  %.sroa.17.0 = phi ptr [ %.sroa.17.3, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit ], [ null, %bb.a ] ; 6 uses
  %.sroa.074.0 = phi ptr [ %.sroa.074.3, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit ], [ null, %bb.a ] ; 8 uses
  %.sroa.19.0 = phi ptr [ %.sroa.19.1, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit ], [ null, %bb.a ] ; 10 uses
  %.sroa.1089.0 = phi ptr [ %.sroa.1089.1, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit ], [ null, %bb.a ] ; 4 uses
  %.sroa.084.0 = phi ptr [ %.sroa.084.1, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit ], [ null, %bb.a ] ; 13 uses
  %i.az = call i32 @sqlite3_step(ptr noundef %2) #30
  switch i32 %i.az, label %.split181.us [
    i32 100, label %bb.g
    i32 101, label %.critedge38
  ]

bb.g:                                             ; preds = %.split
  %i.ba = call i8 @_ZN4node6sqlite16ExtractRowValuesEPNS_11EnvironmentEP12sqlite3_stmtibPN2v811LocalVectorINS5_5ValueEEE(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.d, i1 noundef zeroext %4, ptr noundef nonnull %6)
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.h, label %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit

bb.h:                                             ; preds = %bb.g
  %i.bc = ptrtoint ptr %.sroa.10.0 to i64
  %i.bd = ptrtoint ptr %.sroa.074.0 to i64        ; 2 uses
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = icmp eq ptr %.sroa.10.0, %.sroa.074.0
  br i1 %i.bf, label %bb.i, label %.critedge

.split195.us:                                     ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.205) #31
  unreachable

bb.i:                                             ; preds = %bb.h
  br i1 %i.f, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.308) #31
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bg = ptrtoint ptr %.sroa.17.0 to i64
  %i.bh = sub i64 %i.bg, %i.bd                    ; 2 uses
  %i.bi = ashr exact i64 %i.bh, 3
  %i.bj = icmp ult i64 %i.bi, %i.e
  br i1 %i.bj, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_M_allocateEm.exit.i.i, label %_ZN2v811LocalVectorINS_4NameEE7reserveEm.exit

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_M_allocateEm.exit.i.i: ; preds = %bb.k
  %i.bk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #32 ; 3 uses
  %.not.i8.i.i = icmp eq ptr %.sroa.10.0, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_M_allocateEm.exit.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.074.0, i64 noundef %i.bh) #33
  br label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i: ; preds = %bb.l, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_M_allocateEm.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.be
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.e
  br label %_ZN2v811LocalVectorINS_4NameEE7reserveEm.exit

_ZN2v811LocalVectorINS_4NameEE7reserveEm.exit:    ; preds = %bb.k, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i
  %.sroa.10.5 = phi ptr [ %i.bl, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i ], [ %.sroa.10.0, %bb.k ] ; 2 uses
  %.sroa.17.6 = phi ptr [ %i.bm, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i ], [ %.sroa.17.0, %bb.k ] ; 2 uses
  %.sroa.074.6 = phi ptr [ %i.bk, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i ], [ %.sroa.074.0, %bb.k ] ; 2 uses
  br i1 %.not36173, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN2v811LocalVectorINS_4NameEE7reserveEm.exit, %bb.r
  %.034177 = phi i32 [ %i.cx, %bb.r ], [ 0, %_ZN2v811LocalVectorINS_4NameEE7reserveEm.exit ] ; 3 uses
  %.sroa.074.1176 = phi ptr [ %.sroa.074.2.ph, %bb.r ], [ %.sroa.074.6, %_ZN2v811LocalVectorINS_4NameEE7reserveEm.exit ] ; 10 uses
  %.sroa.17.1175 = phi ptr [ %.sroa.17.2.ph, %bb.r ], [ %.sroa.17.6, %_ZN2v811LocalVectorINS_4NameEE7reserveEm.exit ] ; 7 uses
  %.sroa.10.1174 = phi ptr [ %.sroa.10.2.ph, %bb.r ], [ %.sroa.10.5, %_ZN2v811LocalVectorINS_4NameEE7reserveEm.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.034177, ptr %i.a, align 4
  %i.bn = call ptr @sqlite3_column_name(ptr noundef %2, i32 noundef %.034177) #30 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  %i.bp = load ptr, ptr %i.b, align 8             ; 3 uses
  br i1 %i.bo, label %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit.thread, label %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit

_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit.thread: ; preds = %.lr.ph
  %i.bq = call ptr @_ZN4node17ERR_INVALID_STATEIJRKiEEEN2v85LocalINS3_6ObjectEEEPNS3_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.bp, i64 28, ptr nonnull @.str.111, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.br = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.bp, ptr %i.bq) #30 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit

_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit: ; preds = %.lr.ph
  %i.bs = call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %i.bp, ptr noundef nonnull %i.bn, i32 noundef 0, i32 noundef -1) #30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bt = ptrtoint ptr %i.bs to i64               ; 2 uses
  %.not = icmp eq ptr %i.bs, null
  br i1 %.not, label %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit
  %.not.i.i.i41 = icmp eq ptr %.sroa.10.1174, %.sroa.17.1175
  br i1 %.not.i.i.i41, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %i.bt, ptr %.sroa.10.1174, align 8
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bu = ptrtoint ptr %.sroa.17.1175 to i64      ; 2 uses
  %i.bv = ptrtoint ptr %.sroa.074.1176 to i64     ; 3 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 4 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775800
  br i1 %i.bx, label %bb.p, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.205) #31
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.o
  %i.by = ashr exact i64 %i.bw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i42 = call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %i.bz = add nsw i64 %.sroa.speculated.i.i.i.i.i42, %i.by ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.by
  %i.cb = call i64 @llvm.umin.i64(i64 %i.bz, i64 1152921504606846975)
  %i.cc = select i1 %i.ca, i64 1152921504606846975, i64 %i.cb ; 3 uses
  %.not.i.i.i.i.i43 = icmp ne i64 %i.cc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i43)
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #32 ; 8 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bw
  store i64 %i.bt, ptr %i.cf, align 8
  %.not10.i.i.i.i.i.i.i44 = icmp eq ptr %.sroa.074.1176, %.sroa.17.1175
  br i1 %.not10.i.i.i.i.i.i.i44, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i45.preheader

.lr.ph.i.i.i.i.i.i.i45.preheader:                 ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.cg = ptrtoaddr ptr %i.ce to i64
  %i.ch = sub i64 %i.bu, %i.bv
  %i.ci = add i64 %i.ch, -8                       ; 2 uses
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check400 = icmp ult i64 %i.ci, 24
  %i.cl = sub i64 %i.bv, %i.cg
  %diff.check398 = icmp ugt i64 %i.cl, -32
  %or.cond433 = or i1 %min.iters.check400, %diff.check398
  br i1 %or.cond433, label %.lr.ph.i.i.i.i.i.i.i45.preheader445, label %vector.ph401

vector.ph401:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i45.preheader
  %n.vec403 = and i64 %i.ck, 4611686018427387900  ; 3 uses
  %i.cm = shl i64 %n.vec403, 3                    ; 2 uses
  %i.cn = getelementptr i8, ptr %i.ce, i64 %i.cm  ; 2 uses
  %i.co = getelementptr i8, ptr %.sroa.074.1176, i64 %i.cm
  br label %vector.body404

vector.body404:                                   ; preds = %vector.body404, %vector.ph401
  %index405 = phi i64 [ 0, %vector.ph401 ], [ %index.next410, %vector.body404 ] ; 2 uses
  %i.cp = shl i64 %index405, 3                    ; 2 uses
  %next.gep406 = getelementptr i8, ptr %i.ce, i64 %i.cp ; 2 uses
  %next.gep407 = getelementptr i8, ptr %.sroa.074.1176, i64 %i.cp ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.cq = getelementptr i8, ptr %next.gep407, i64 16
  %wide.load408 = load <2 x i64>, ptr %next.gep407, align 8, !alias.scope !106, !noalias !103
  %wide.load409 = load <2 x i64>, ptr %i.cq, align 8, !alias.scope !106, !noalias !103
  %i.cr = getelementptr i8, ptr %next.gep406, i64 16
  store <2 x i64> %wide.load408, ptr %next.gep406, align 8, !alias.scope !103, !noalias !106
  store <2 x i64> %wide.load409, ptr %i.cr, align 8, !alias.scope !103, !noalias !106
  %index.next410 = add nuw i64 %index405, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next410, %n.vec403
  br i1 %i.cs, label %middle.block411, label %vector.body404, !llvm.loop !108

middle.block411:                                  ; preds = %vector.body404
  %cmp.n412 = icmp eq i64 %i.ck, %n.vec403
  br i1 %cmp.n412, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i45.preheader445

.lr.ph.i.i.i.i.i.i.i45.preheader445:              ; preds = %.lr.ph.i.i.i.i.i.i.i45.preheader, %middle.block411
  %.012.i.i.i.i.i.i.i46.ph = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.i45.preheader ], [ %i.cn, %middle.block411 ]
  %.0911.i.i.i.i.i.i.i47.ph = phi ptr [ %.sroa.074.1176, %.lr.ph.i.i.i.i.i.i.i45.preheader ], [ %i.co, %middle.block411 ]
  br label %.lr.ph.i.i.i.i.i.i.i45

.lr.ph.i.i.i.i.i.i.i45:                           ; preds = %.lr.ph.i.i.i.i.i.i.i45.preheader445, %.lr.ph.i.i.i.i.i.i.i45
  %.012.i.i.i.i.i.i.i46 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i.i45 ], [ %.012.i.i.i.i.i.i.i46.ph, %.lr.ph.i.i.i.i.i.i.i45.preheader445 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i47 = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i.i45 ], [ %.0911.i.i.i.i.i.i.i47.ph, %.lr.ph.i.i.i.i.i.i.i45.preheader445 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.ct = load i64, ptr %.0911.i.i.i.i.i.i.i47, align 8, !alias.scope !106, !noalias !103
  store i64 %i.ct, ptr %.012.i.i.i.i.i.i.i46, align 8, !alias.scope !103, !noalias !106
  %i.cu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i47, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i46, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i48 = icmp eq ptr %i.cu, %.sroa.17.1175
  br i1 %.not.i.i.i.i.i.i.i48, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i45, !llvm.loop !109

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i45, %middle.block411, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i49 = phi ptr [ %i.ce, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cn, %middle.block411 ], [ %i.cv, %.lr.ph.i.i.i.i.i.i.i45 ]
  %.not.i23.i.i.i.i50 = icmp eq ptr %.sroa.074.1176, null
  br i1 %.not.i23.i.i.i.i50, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.074.1176, i64 noundef %i.bw) #33
  br label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cc
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i
  %.sroa.10.1.pn = phi ptr [ %.sroa.10.1174, %bb.n ], [ %.0.lcssa.i.i.i.i.i.i.i49, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ]
  %.sroa.17.2.ph = phi ptr [ %.sroa.17.1175, %bb.n ], [ %i.cw, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ] ; 2 uses
  %.sroa.074.2.ph = phi ptr [ %.sroa.074.1176, %bb.n ], [ %i.ce, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ] ; 2 uses
  %.sroa.10.2.ph = getelementptr inbounds nuw i8, ptr %.sroa.10.1.pn, i64 8 ; 2 uses
  %i.cx = add nuw nsw i32 %.034177, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.cx, %i.d
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !110

.critedge:                                        ; preds = %bb.r, %_ZN2v811LocalVectorINS_4NameEE7reserveEm.exit, %bb.h
  %.sroa.10.3 = phi ptr [ %.sroa.10.0, %bb.h ], [ %.sroa.10.5, %_ZN2v811LocalVectorINS_4NameEE7reserveEm.exit ], [ %.sroa.10.2.ph, %bb.r ]
  %.sroa.17.3 = phi ptr [ %.sroa.17.0, %bb.h ], [ %.sroa.17.6, %_ZN2v811LocalVectorINS_4NameEE7reserveEm.exit ], [ %.sroa.17.2.ph, %bb.r ]
  %.sroa.074.3 = phi ptr [ %.sroa.074.0, %bb.h ], [ %.sroa.074.6, %_ZN2v811LocalVectorINS_4NameEE7reserveEm.exit ], [ %.sroa.074.2.ph, %bb.r ] ; 2 uses
  %i.cy = load ptr, ptr %6, align 8
  %i.cz = call ptr @_ZN2v86Object3NewEPNS_7IsolateENS_5LocalINS_5ValueEEEPNS3_INS_4NameEEEPS5_m(ptr noundef %i.c, ptr %i.j, ptr noundef %.sroa.074.3, ptr noundef %i.cy, i64 noundef %i.e) #30
  %i.da = ptrtoint ptr %i.cz to i64               ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %.sroa.1089.0, %.sroa.19.0
  br i1 %.not.i.i.i52, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge
  store i64 %i.da, ptr %.sroa.1089.0, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit

bb.t:                                             ; preds = %.critedge
  %i.db = ptrtoint ptr %.sroa.19.0 to i64         ; 2 uses
  %i.dc = ptrtoint ptr %.sroa.084.0 to i64        ; 3 uses
  %i.dd = sub i64 %i.db, %i.dc                    ; 4 uses
  %i.de = icmp eq i64 %i.dd, 9223372036854775800
  br i1 %i.de, label %bb.u, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i53

bb.u:                                             ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.205) #31
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i53: ; preds = %bb.t
  %i.df = ashr exact i64 %i.dd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i54 = call i64 @llvm.umax.i64(i64 %i.df, i64 1)
  %i.dg = add nsw i64 %.sroa.speculated.i.i.i.i.i54, %i.df ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.df
  %i.di = call i64 @llvm.umin.i64(i64 %i.dg, i64 1152921504606846975)
  %i.dj = select i1 %i.dh, i64 1152921504606846975, i64 %i.di ; 3 uses
  %.not.i.i.i.i.i55 = icmp ne i64 %i.dj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i55)
  %i.dk = shl nuw nsw i64 %i.dj, 3
  %i.dl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #32 ; 8 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dd
  store i64 %i.da, ptr %i.dm, align 8
  %.not10.i.i.i.i.i.i.i56 = icmp eq ptr %.sroa.084.0, %.sroa.19.0
  br i1 %.not10.i.i.i.i.i.i.i56, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i61, label %.lr.ph.i.i.i.i.i.i.i57.preheader

.lr.ph.i.i.i.i.i.i.i57.preheader:                 ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i53
  %i.dn = ptrtoaddr ptr %i.dl to i64
  %i.do = sub i64 %i.db, %i.dc
  %i.dp = add i64 %i.do, -8                       ; 2 uses
  %i.dq = lshr i64 %i.dp, 3
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dp, 24
  %i.ds = sub i64 %i.dc, %i.dn
  %diff.check = icmp ugt i64 %i.ds, -32
  %or.cond434 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond434, label %.lr.ph.i.i.i.i.i.i.i57.preheader446, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i57.preheader
  %n.vec = and i64 %i.dr, 4611686018427387900     ; 3 uses
  %i.dt = shl i64 %n.vec, 3                       ; 2 uses
  %i.du = getelementptr i8, ptr %i.dl, i64 %i.dt  ; 2 uses
  %i.dv = getelementptr i8, ptr %.sroa.084.0, i64 %i.dt
  br label %vector.body

end_hunk_0
