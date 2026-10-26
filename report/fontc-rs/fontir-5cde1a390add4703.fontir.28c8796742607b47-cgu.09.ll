Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontir-5cde1a390add4703.fontir.28c8796742607b47-cgu.09?download=true
inline.NumInlined: 948
inline.NumDeleted: 458
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCsgdm2QMcbaeA_10fontdrasil13orchestration17assert_access_oneNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEB16_:bb.a
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtCsgdm2QMcbaeA_10fontdrasil13orchestration17assert_access_oneNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEB16_.157, i64 %.val1.i
  %switch.load = load i8, ptr %switch.gep, align 1 ; 2 uses
  %.val.i = load i64, ptr %1, align 8, !range !5, !alias.scope !828, !noundef !4 ; 2 uses
  %switch.gep31 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtCsgdm2QMcbaeA_10fontdrasil13orchestration17assert_access_oneNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEB16_.157, i64 %.val.i
  %switch.load32 = load i8, ptr %switch.gep31, align 1
  %i.aa = icmp eq i8 %switch.load, %switch.load32
  br i1 %i.aa, label %.split, label %_RNvMs3_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_6AccessNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdE5checkB13_.exit.thread

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !835
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10AccessTypeNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE4iterB1N_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !835
  %i.ac = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10AccessTypeNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEuENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0      ; 2 uses
  %.not10.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not10.not.i.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set4IterINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10AccessTypeNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2E_3any5checkRBV_NCNvMs3_BY_INtBY_6AccessB1R_E5check0E0INtNtNtB2M_3ops12control_flow11ControlFlowuEEB1V_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i.i.i = load i64, ptr %1, align 8, !range !5, !alias.scope !828 ; 4 uses
  %i.ah = load i64, ptr %i.af, align 8, !alias.scope !828 ; 2 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !alias.scope !828, !nonnull !4
  %switch.gep37 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtCsgdm2QMcbaeA_10fontdrasil13orchestration17assert_access_oneNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEB16_.157, i64 %.val.i.i.i.i.i
  %switch.gep40 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RINvNtCsgdm2QMcbaeA_10fontdrasil13orchestration17assert_access_oneNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEB16_.158, i64 %.val.i.i.i.i.i
  br label %bb.f

bb.f:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i
  %i.aj = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %i.bc, %.backedge.i.i ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !836)
  call void @llvm.experimental.noalias.scope.decl(metadata !837)
  call void @llvm.experimental.noalias.scope.decl(metadata !838)
  %i.ak = load i64, ptr %i.aj, align 8, !range !14, !alias.scope !839, !noundef !4
  %i.al = trunc nuw i64 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  br i1 %i.al, label %bb.g, label %switch.lookup24

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !840)
  %i.an = load i64, ptr %i.am, align 8, !range !5, !alias.scope !841, !noundef !4
  %i.ao = icmp eq i64 %i.an, %.val.i.i.i.i.i
  br i1 %i.ao, label %bb.h, label %.backedge.i.i

bb.h:                                             ; preds = %bb.g
  switch i64 %.val.i.i.i.i.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set4IterINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10AccessTypeNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2E_3any5checkRBV_NCNvMs3_BY_INtBY_6AccessB1R_E5check0E0INtNtNtB2M_3ops12control_flow11ControlFlowuEEB1V_.exit.i.thread [
    i64 2, label %.split7.i.i
    i64 9, label %bb.i
    i64 10, label %.split6.i.i
  ]

.split7.i.i:                                      ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.aq = call noundef zeroext i1 @_RNvXs3_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae)
  br i1 %i.aq, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set4IterINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10AccessTypeNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2E_3any5checkRBV_NCNvMs3_BY_INtBY_6AccessB1R_E5check0E0INtNtNtB2M_3ops12control_flow11ControlFlowuEEB1V_.exit.i.thread, label %.backedge.i.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !841, !noundef !4
  %i.at = icmp eq i64 %i.as, %i.ah
  br i1 %i.at, label %.split8.i.i, label %.backedge.i.i

.split8.i.i:                                      ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !841, !nonnull !4, !noundef !4
  %i.aw = call noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1i_15NormalizedSpaceEEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs3v5ql5U6hxj_6fontir(ptr noundef nonnull %i.av, ptr noundef nonnull %i.ai, i64 noundef %i.ah), !noalias !842
  br i1 %i.aw, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set4IterINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10AccessTypeNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2E_3any5checkRBV_NCNvMs3_BY_INtBY_6AccessB1R_E5check0E0INtNtNtB2M_3ops12control_flow11ControlFlowuEEB1V_.exit.i.thread, label %.backedge.i.i

.split6.i.i:                                      ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ay = call noundef zeroext i1 @_RNvXs3_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae)
  br i1 %i.ay, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set4IterINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10AccessTypeNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2E_3any5checkRBV_NCNvMs3_BY_INtBY_6AccessB1R_E5check0E0INtNtNtB2M_3ops12control_flow11ControlFlowuEEB1V_.exit.i.thread, label %.backedge.i.i

switch.lookup24:                                  ; preds = %bb.f
  %.val1.i.i.i.i.i = load i64, ptr %i.am, align 8, !range !5, !alias.scope !839, !noundef !4 ; 2 uses
  %switch.gep25 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtCsgdm2QMcbaeA_10fontdrasil13orchestration17assert_access_oneNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEB16_.157, i64 %.val1.i.i.i.i.i
  %switch.load26 = load i8, ptr %switch.gep25, align 1 ; 2 uses
  %switch.load38 = load i8, ptr %switch.gep37, align 1
  %i.az = icmp eq i8 %switch.load26, %switch.load38
  br i1 %i.az, label %.split.i.i, label %.backedge.i.i

.split.i.i:                                       ; preds = %switch.lookup24
  %switch.ext27 = zext i8 %switch.load26 to i64
  %switch.load41 = load ptr, ptr %switch.gep40, align 8
  %switch.gep28 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RINvNtCsgdm2QMcbaeA_10fontdrasil13orchestration17assert_access_oneNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEB16_.158, i64 %.val1.i.i.i.i.i
  %switch.load29 = load ptr, ptr %switch.gep28, align 8
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %switch.load29, ptr noundef nonnull dereferenceable(1) %switch.load41, i64 %switch.ext27), !noalias !843
  %i.ba = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ba, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set4IterINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10AccessTypeNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2E_3any5checkRBV_NCNvMs3_BY_INtBY_6AccessB1R_E5check0E0INtNtNtB2M_3ops12control_flow11ControlFlowuEEB1V_.exit.i.thread, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.split.i.i, %switch.lookup24, %.split6.i.i, %.split8.i.i, %bb.i, %.split7.i.i, %bb.g
  %i.bb = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10AccessTypeNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEuENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
  %i.bc = extractvalue { ptr, ptr } %i.bb, 0      ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.not.i.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set4IterINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10AccessTypeNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2E_3any5checkRBV_NCNvMs3_BY_INtBY_6AccessB1R_E5check0E0INtNtNtB2M_3ops12control_flow11ControlFlowuEEB1V_.exit.i, label %bb.f

_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set4IterINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10AccessTypeNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2E_3any5checkRBV_NCNvMs3_BY_INtBY_6AccessB1R_E5check0E0INtNtNtB2M_3ops12control_flow11ControlFlowuEEB1V_.exit.i.thread: ; preds = %.split8.i.i, %.split7.i.i, %.split6.i.i, %.split.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !835
  br label %_RNvMs3_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_6AccessNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdE5checkB13_.exit.thread13

_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set4IterINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10AccessTypeNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2E_3any5checkRBV_NCNvMs3_BY_INtBY_6AccessB1R_E5check0E0INtNtNtB2M_3ops12control_flow11ControlFlowuEEB1V_.exit.i: ; preds = %.backedge.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !835
  br label %_RNvMs3_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_6AccessNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdE5checkB13_.exit.thread

.split:                                           ; preds = %switch.lookup
  %switch.ext = zext i8 %switch.load to i64
  %switch.gep34 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RINvNtCsgdm2QMcbaeA_10fontdrasil13orchestration17assert_access_oneNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEB16_.158, i64 %.val.i
  %switch.load35 = load ptr, ptr %switch.gep34, align 8
  %switch.gep22 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RINvNtCsgdm2QMcbaeA_10fontdrasil13orchestration17assert_access_oneNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEB16_.158, i64 %.val1.i
  %switch.load23 = load ptr, ptr %switch.gep22, align 8
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %switch.load23, ptr noundef nonnull dereferenceable(1) %switch.load35, i64 %switch.ext), !noalias !835
  %i.bd = icmp eq i32 %bcmp.i, 0
  br i1 %i.bd, label %_RNvMs3_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_6AccessNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdE5checkB13_.exit.thread13, label %_RNvMs3_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_6AccessNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdE5checkB13_.exit.thread, !prof !834

_RNvMs3_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_6AccessNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdE5checkB13_.exit: ; preds = %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = tail call noundef zeroext i1 @_RNvXs3_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf)
  br i1 %i.bg, label %_RNvMs3_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_6AccessNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdE5checkB13_.exit.thread13, label %_RNvMs3_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_6AccessNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdE5checkB13_.exit.thread, !prof !834

_RNvMs3_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_6AccessNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdE5checkB13_.exit.thread: ; preds = %bb.d, %bb.b, %switch.lookup, %bb.a, %bb.a, %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set4IterINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10AccessTypeNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2E_3any5checkRBV_NCNvMs3_BY_INtBY_6AccessB1R_E5check0E0INtNtNtB2M_3ops12control_flow11ControlFlowuEEB1V_.exit.i, %.split16, %.split15, %.split, %_RNvMs3_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_6AccessNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdE5checkB13_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCs3v5ql5U6hxj_6fontir, ptr %.sroa.42.0..sroa_idx, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.bh, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdNtB6_5Debug3fmtBA_, ptr %.sroa.46.0..sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.f, ptr %i.bi, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration6AccessNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdENtB6_5Debug3fmtB1r_, ptr %.sroa.410.0..sroa_idx, align 8
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #29
  unreachable

_RNvMs3_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_6AccessNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdE5checkB13_.exit.thread13: ; preds = %bb.a, %bb.c, %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set4IterINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10AccessTypeNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2E_3any5checkRBV_NCNvMs3_BY_INtBY_6AccessB1R_E5check0E0INtNtNtB2M_3ops12control_flow11ControlFlowuEEB1V_.exit.i.thread, %.split16, %.split15, %.split, %_RNvMs3_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_6AccessNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdE5checkB13_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsgdm2QMcbaeA_10fontdrasil4util29depth_sorted_composite_glyphsRNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphEB19_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [80 x i8], align 8                ; 13 uses
  %i.n = alloca [48 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 4 uses
  store i64 0, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.r = load ptr, ptr %1, align 8, !noundef !4   ; 3 uses
  %.not = icmp ne ptr %i.r, null                  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8              ; 3 uses
  %.sroa.0.sroa.6.0 = zext i1 %.not to i64        ; 2 uses
  %.sroa.0.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.t, i64 undef ; 2 uses
  %.sroa.5.0 = select i1 %.not, i64 %i.v, i64 0
  store i64 %.sroa.0.sroa.6.0, ptr %i.m, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr null, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.r, ptr %.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.5.sroa.6.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %.sroa.0.sroa.5.sroa.6.0, ptr %.sroa.0.sroa.5.sroa.6.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %.sroa.0.sroa.6.0, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr null, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.7.sroa.5.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.r, ptr %.sroa.0.sroa.7.sroa.5.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.7.sroa.6.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i64 %.sroa.0.sroa.5.sroa.6.0, ptr %.sroa.0.sroa.7.sroa.6.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store ptr %i.o, ptr %i.w, align 8
  invoke void @_RINvXs1c_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB7_7HashMapNtCs9NoVXegZYB5_8smol_str7SmolStrlEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTB15_lEE9from_iterINtNtNtB1L_8adapters10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterB15_RNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphENCINvNtCsgdm2QMcbaeA_10fontdrasil4util29depth_sorted_composite_glyphsB4B_E0EEB4G_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.m)
          to label %bb.b unwind label %.thread

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtCs9NoVXegZYB5_8smol_str7SmolStrlEECs3v5ql5U6hxj_6fontir.exit.a: ; preds = %bb.ao, %bb.ah
  %lpad.phi100 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp96, %bb.ah ], [ %lpad.thr_comm95, %bb.ao ] ; 2 uses
  br i1 %2, label %bb.aq, label %common.resume

.thread:                                          ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.y = load i64, ptr %i.q, align 8, !noundef !4 ; 3 uses
  %i.z = icmp ult i64 %i.y, 1152921504606846976
  call void @llvm.assume(i1 %i.z)
  %.not56105 = icmp eq i64 %i.v, %i.y
  br i1 %.not56105, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ap, %bb.b
  %i.aa = phi i64 [ %i.v, %bb.b ], [ %i.ac, %bb.ap ] ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.c, label %.lr.ph108

.lr.ph:                                           ; preds = %bb.b, %bb.ap
  %i.ac = phi i64 [ %i.cn, %bb.ap ], [ %i.y, %bb.b ] ; 2 uses
  invoke void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRRNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphE6retainNCINvNtCsgdm2QMcbaeA_10fontdrasil4util29depth_sorted_composite_glyphsBG_Es_0EBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 %i.n)
          to label %bb.ap unwind label %.thread89.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph108:                                        ; preds = %._crit_edge
  %i.ad = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.aa, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs3v5ql5U6hxj_6fontir.exit, %._crit_edge109, %._crit_edge
  %2 = phi i1 [ true, %._crit_edge ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs3v5ql5U6hxj_6fontir.exit ], [ true, %bb.n ], [ true, %._crit_edge109 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtCs9NoVXegZYB5_8smol_str7SmolStrlNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.ac unwind label %.split

bb.d:                                             ; preds = %.lr.ph108, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs3v5ql5U6hxj_6fontir.exit60
  %.sroa.04.0106 = phi ptr [ %i.ad, %.lr.ph108 ], [ %i.ag, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs3v5ql5U6hxj_6fontir.exit60 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.0106, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ah = load ptr, ptr %.sroa.04.0106, align 8, !nonnull !4, !align !15, !noundef !4
  invoke void @_RNvXs_NtCs3v5ql5U6hxj_6fontir5glyphRNtNtB6_2ir5GlyphNtNtCsgdm2QMcbaeA_10fontdrasil4util13CompositeLike4name(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah)
          to label %bb.e unwind label %.thread89.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread89.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %.lr.ph
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread84

.thread89.loopexit.split-lp.loopexit.split-lp:    ; preds = %bb.o, %bb.m
  %.sroa.012.3.ph.ph.ph = phi i1 [ false, %bb.o ], [ true, %bb.m ]
  %lpad.loopexit.split-lp103 = landingpad { ptr, i32 }
          cleanup
  br label %.thread84

.split:                                           ; preds = %bb.c, %bb.ac
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %2, label %bb.aq, label %common.resume

bb.e:                                             ; preds = %bb.d
  %i.ai = invoke { i32, i32 } @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtCs9NoVXegZYB5_8smol_str7SmolStrlNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6removeBO_ECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %bb.i unwind label %bb.f       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !876)
  call void @llvm.experimental.noalias.scope.decl(metadata !877)
  %i.ak = load i8, ptr %i.l, align 8, !range !13, !alias.scope !878, !noundef !4
  %switch.i.i = icmp samesign ult i8 %i.ak, 25
  br i1 %switch.i.i, label %.thread84, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !879)
  call void @llvm.experimental.noalias.scope.decl(metadata !880)
  %i.al = load ptr, ptr %i.af, align 8, !alias.scope !881, !nonnull !4, !noundef !4
  %i.am = atomicrmw add ptr %i.al, i64 -1 release, align 8, !noalias !881
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.h, label %.thread84

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.af) #32
  br label %.thread84

bb.i:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !882)
  call void @llvm.experimental.noalias.scope.decl(metadata !883)
  %i.ao = load i8, ptr %i.l, align 8, !range !13, !alias.scope !884, !noundef !4
  %switch.i.i59 = icmp samesign ult i8 %i.ao, 25
  br i1 %switch.i.i59, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs3v5ql5U6hxj_6fontir.exit60, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !885)
  call void @llvm.experimental.noalias.scope.decl(metadata !886)
  %i.ap = load ptr, ptr %i.af, align 8, !alias.scope !887, !nonnull !4, !noundef !4
  %i.aq = atomicrmw add ptr %i.ap, i64 -1 release, align 8, !noalias !887
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.k, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs3v5ql5U6hxj_6fontir.exit60

bb.k:                                             ; preds = %bb.j
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.af) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs3v5ql5U6hxj_6fontir.exit60

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs3v5ql5U6hxj_6fontir.exit60: ; preds = %bb.k, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.as = icmp eq ptr %i.ag, %i.ae
  br i1 %i.as, label %._crit_edge109, label %bb.d

bb.l:                                             ; preds = %.thread84, %bb.aq, %bb.ao, %bb.t
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

._crit_edge109:                                   ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs3v5ql5U6hxj_6fontir.exit60
  %i.au = load atomic i64, ptr @_RNvCsksibNCz2yVN_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.av = icmp ult i64 %i.au, 6
  call void @llvm.assume(i1 %i.av)
  %i.aw = icmp samesign ugt i64 %i.au, 1
  br i1 %i.aw, label %bb.m, label %bb.c

bb.m:                                             ; preds = %._crit_edge109
  %i.ax = invoke noundef zeroext i1 @_RINvNtCsksibNCz2yVN_3log13___private_api7enabledNtB2_12GlobalLoggerECs3v5ql5U6hxj_6fontir(i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 16)
          to label %bb.n unwind label %.thread89.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  br i1 %i.ax, label %bb.o, label %bb.c

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ay = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.az = load i64, ptr %i.o, align 8, !range !12, !noundef !4
  %i.ba = load i64, ptr %i.q, align 8, !noundef !4 ; 2 uses
  %i.bb = icmp ult i64 %i.ba, 1152921504606846976
  call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ba
  store ptr %i.ay, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.az, ptr %.sroa.57.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.bc, ptr %.sroa.6.0..sroa_idx, align 8
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec16in_place_collectINtB6_3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterRRNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphENCINvNtCsgdm2QMcbaeA_10fontdrasil4util29depth_sorted_composite_glyphsB3r_Es0_0EE9from_iterB3w_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.j)
          to label %bb.p unwind label %.thread89.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !4 ; 4 uses
  %i.bh = icmp samesign ult i64 %i.bg, 2
  br i1 %i.bh, label %bb.u, label %bb.q, !prof !16

bb.q:                                             ; preds = %bb.p
  %i.bi = icmp samesign ult i64 %i.bg, 21
  br i1 %i.bi, label %bb.s, label %bb.r, !prof !16

bb.r:                                             ; preds = %bb.q
  invoke void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable14driftsort_mainNtCs9NoVXegZYB5_8smol_str7SmolStrNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtCsgCecv3eZDcN_5alloc3vec3VecBZ_EECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 %i.be, i64 noundef range(i64 0, 384307168202282326) %i.bg, ptr noalias nofree noundef nonnull %i.a) #32
          to label %bb.u unwind label %bb.t

bb.s:                                             ; preds = %bb.q
  invoke void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtCs9NoVXegZYB5_8smol_str7SmolStrNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 %i.be, i64 noundef range(i64 0, 384307168202282326) %i.bg, i64 noundef 1, ptr noalias nofree noundef nonnull %i.a)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.v
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #27
          to label %.thread84 unwind label %bb.l

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.p
  %i.bk = load atomic i64, ptr @_RNvCsksibNCz2yVN_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.bl = icmp ult i64 %i.bk, 6
  call void @llvm.assume(i1 %i.bl)
  %i.bm = icmp samesign ugt i64 %i.bk, 1
  br i1 %i.bm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.bn = load i64, ptr %i.bf, align 8, !noundef !4 ; 2 uses
  store i64 %i.bn, ptr %i.i, align 8
  %i.bo = icmp ult i64 %i.bn, 384307168202282326
  call void @llvm.assume(i1 %i.bo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.i, ptr %i.h, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.450.0..sroa_idx, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.k, ptr %i.bp, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXsr_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCs3v5ql5U6hxj_6fontir, ptr %.sroa.454.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @17, ptr %i.g, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 16, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr @17, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 16, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr @20, ptr %i.bt, align 8
  invoke void @_RINvNtCsksibNCz2yVN_3log13___private_api3loguNtB2_12GlobalLoggerECs3v5ql5U6hxj_6fontir(ptr noundef nonnull @18, ptr noundef nonnull %i.h, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.g)
          to label %bb.ab unwind label %bb.t

bb.w:                                             ; preds = %bb.u, %bb.ab
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.z unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.k, align 8, !range !12, !alias.scope !888, !noundef !4 ; 2 uses
  %i.bv = icmp eq i64 %.val2.i, 0
  br i1 %i.bv, label %.thread84, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.val3.i = load ptr, ptr %i.bd, align 8, !alias.scope !889, !nonnull !4, !noundef !4
  %i.bw = mul nuw i64 %.val2.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !890
  br label %.thread84

bb.z:                                             ; preds = %bb.w
  %.val.i = load i64, ptr %i.k, align 8, !range !12, !alias.scope !888, !noundef !4 ; 2 uses
  %i.bx = icmp eq i64 %.val.i, 0
  br i1 %i.bx, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs3v5ql5U6hxj_6fontir.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val1.i = load ptr, ptr %i.bd, align 8, !alias.scope !889, !nonnull !4, !noundef !4
  %i.by = mul nuw i64 %.val.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !891
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs3v5ql5U6hxj_6fontir.exit

bb.ab:                                            ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.w

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs3v5ql5U6hxj_6fontir.exit: ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.c

bb.ac:                                            ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTlNtCs9NoVXegZYB5_8smol_str7SmolStrEEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterBW_lENCINvNtCsgdm2QMcbaeA_10fontdrasil4util29depth_sorted_composite_glyphsRNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphEs1_0EE9from_iterB4T_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.e)
          to label %bb.ad unwind label %.split

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !4 ; 6 uses
  %i.cd = icmp samesign ult i64 %i.cc, 2
  br i1 %i.cd, label %_RINvNtCsgCecv3eZDcN_5alloc5slice11stable_sortTlNtCs9NoVXegZYB5_8smol_str7SmolStrENvYBH_NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir.exit, label %bb.ae, !prof !16

bb.ae:                                            ; preds = %bb.ad
  %i.ce = icmp samesign ult i64 %i.cc, 21
  br i1 %i.ce, label %bb.ag, label %bb.af, !prof !16

bb.af:                                            ; preds = %bb.ae
  invoke void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable14driftsort_mainTlNtCs9NoVXegZYB5_8smol_str7SmolStrENvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtCsgCecv3eZDcN_5alloc3vec3VecBZ_EECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 %i.ca, i64 noundef range(i64 0, 288230376151711744) %i.cc, ptr noalias nofree noundef nonnull %i.a) #32
          to label %_RINvNtCsgCecv3eZDcN_5alloc5slice11stable_sortTlNtCs9NoVXegZYB5_8smol_str7SmolStrENvYBH_NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir.exit unwind label %bb.ao

bb.ag:                                            ; preds = %bb.ae
  invoke void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTlNtCs9NoVXegZYB5_8smol_str7SmolStrENvYB1m_NtNtBa_3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 %i.ca, i64 noundef range(i64 0, 288230376151711744) %i.cc, i64 noundef 1, ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCsgCecv3eZDcN_5alloc5slice11stable_sortTlNtCs9NoVXegZYB5_8smol_str7SmolStrENvYBH_NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir.exit unwind label %bb.ao

bb.ah:                                            ; preds = %_RINvNtCsgCecv3eZDcN_5alloc5slice11stable_sortTlNtCs9NoVXegZYB5_8smol_str7SmolStrENvYBH_NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir.exit
  %lpad.thr_comm.split-lp96 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtCs9NoVXegZYB5_8smol_str7SmolStrlEECs3v5ql5U6hxj_6fontir.exit.a

_RINvNtCsgCecv3eZDcN_5alloc5slice11stable_sortTlNtCs9NoVXegZYB5_8smol_str7SmolStrENvYBH_NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir.exit: ; preds = %bb.ad, %bb.af, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cf = load i64, ptr %i.f, align 8, !range !12, !noundef !4
  %i.cg = icmp ult i64 %i.cc, 288230376151711744
  call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %i.ca, i64 %i.cc
  store ptr %i.ca, ptr %i.d, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ca, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.cf, ptr %.sroa.510.0..sroa_idx, align 8
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.ch, ptr %.sroa.611.0..sroa_idx, align 8
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec16in_place_collectINtB6_3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterTlBY_EENCINvNtCsgdm2QMcbaeA_10fontdrasil4util29depth_sorted_composite_glyphsRNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphEs2_0EE9from_iterB4J_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.ai unwind label %bb.ah

bb.ai:                                            ; preds = %_RINvNtCsgCecv3eZDcN_5alloc5slice11stable_sortTlNtCs9NoVXegZYB5_8smol_str7SmolStrENvYBH_NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br i1 %2, label %bb.aj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRRNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphEEB1e_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRRNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphEEB1e_.exit: ; preds = %bb.an, %bb.am, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRRNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.am unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i64 = load i64, ptr %i.o, align 8, !range !12, !alias.scope !892, !noundef !4 ; 2 uses
  %i.cj = icmp eq i64 %.val2.i64, 0
  br i1 %i.cj, label %common.resume, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.val3.i65 = load ptr, ptr %i.p, align 8, !alias.scope !893, !nonnull !4, !noundef !4
  %i.ck = shl nuw i64 %.val2.i64, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i65, i64 noundef %i.ck, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !894
  br label %common.resume

bb.am:                                            ; preds = %bb.aj
  %.val.i66 = load i64, ptr %i.o, align 8, !range !12, !alias.scope !892, !noundef !4 ; 2 uses
  %i.cl = icmp eq i64 %.val.i66, 0
  br i1 %i.cl, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRRNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphEEB1e_.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.val1.i67 = load ptr, ptr %i.p, align 8, !alias.scope !893, !nonnull !4, !noundef !4
  %i.cm = shl nuw i64 %.val.i66, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i67, i64 noundef %i.cm, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !895
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRRNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphEEB1e_.exit

common.resume:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtCs9NoVXegZYB5_8smol_str7SmolStrlEECs3v5ql5U6hxj_6fontir.exit.a, %bb.aq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtCs9NoVXegZYB5_8smol_str7SmolStrlEECs3v5ql5U6hxj_6fontir.exit, %.split, %bb.ak, %bb.al
  %common.resume.op = phi { ptr, i32 } [ %i.ci, %bb.ak ], [ %i.ci, %bb.al ], [ %.pn.pn72, %bb.aq ], [ %lpad.phi100, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtCs9NoVXegZYB5_8smol_str7SmolStrlEECs3v5ql5U6hxj_6fontir.exit.a ], [ %.pn78, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtCs9NoVXegZYB5_8smol_str7SmolStrlEECs3v5ql5U6hxj_6fontir.exit ], [ %lpad.thr_comm.split-lp, %.split ]
  resume { ptr, i32 } %common.resume.op

bb.ao:                                            ; preds = %bb.ag, %bb.af
  %lpad.thr_comm95 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTlNtCs9NoVXegZYB5_8smol_str7SmolStrEEECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #27
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtCs9NoVXegZYB5_8smol_str7SmolStrlEECs3v5ql5U6hxj_6fontir.exit.a unwind label %bb.l

bb.ap:                                            ; preds = %.lr.ph
  %i.cn = load i64, ptr %i.q, align 8, !noundef !4 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 1152921504606846976
  call void @llvm.assume(i1 %i.co)
  %.not56 = icmp eq i64 %i.ac, %i.cn
  br i1 %.not56, label %._crit_edge, label %.lr.ph

.thread84:                                        ; preds = %.thread89.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread89.loopexit.split-lp.loopexit.split-lp, %bb.h, %bb.g, %bb.f, %bb.t, %bb.y, %bb.x
  %.pn78 = phi { ptr, i32 } [ %i.bu, %bb.y ], [ %i.aj, %bb.h ], [ %i.bu, %bb.x ], [ %i.bj, %bb.t ], [ %i.aj, %bb.f ], [ %i.aj, %bb.g ], [ %lpad.loopexit.split-lp103, %.thread89.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.thread89.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.012.277 = phi i1 [ false, %bb.y ], [ true, %bb.h ], [ false, %bb.x ], [ false, %bb.t ], [ true, %bb.f ], [ true, %bb.g ], [ %.sroa.012.3.ph.ph.ph, %.thread89.loopexit.split-lp.loopexit.split-lp ], [ true, %.thread89.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrlEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtCs9NoVXegZYB5_8smol_str7SmolStrlEECs3v5ql5U6hxj_6fontir.exit unwind label %bb.l

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtCs9NoVXegZYB5_8smol_str7SmolStrlEECs3v5ql5U6hxj_6fontir.exit: ; preds = %.thread84
  br i1 %.sroa.012.277, label %bb.aq, label %common.resume

bb.aq:                                            ; preds = %.split, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtCs9NoVXegZYB5_8smol_str7SmolStrlEECs3v5ql5U6hxj_6fontir.exit, %.thread, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtCs9NoVXegZYB5_8smol_str7SmolStrlEECs3v5ql5U6hxj_6fontir.exit.a
  %.pn.pn72 = phi { ptr, i32 } [ %i.x, %.thread ], [ %lpad.phi100, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtCs9NoVXegZYB5_8smol_str7SmolStrlEECs3v5ql5U6hxj_6fontir.exit.a ], [ %.pn78, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtCs9NoVXegZYB5_8smol_str7SmolStrlEECs3v5ql5U6hxj_6fontir.exit ], [ %lpad.thr_comm.split-lp, %.split ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRRNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #27
          to label %common.resume unwind label %bb.l
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !12, !alias.scope !898, !noundef !4 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.c)
  %i.h = icmp eq i64 %4, 1
  %i.i = icmp ult i64 %4, 1025
  %..i = select i1 %i.i, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.h, i64 8, i64 %..i
  %i.j = tail call i64 @llvm.umax.i64(i64 %.sroa.08.0.i, i64 %i.g) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !898
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.k, align 8, !alias.scope !898
  call fastcc void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !898
  %i.l = load i64, ptr %i.a, align 8, !range !14, !noalias !898, !noundef !4
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.n, align 8, !range !17, !noalias !898, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noalias !898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !898
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.q, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.o, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #30
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.n, align 8, !noalias !898, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !898
  store ptr %i.r, ptr %i.k, align 8, !alias.scope !898
  %i.s = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.s)
  store i64 %i.j, ptr %0, align 8, !alias.scope !898
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_11ContextItemNtB5_6WorkIdNtNtB7_2ir10GlyphOrderE3setB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  invoke void @_RINvNtCsgdm2QMcbaeA_10fontdrasil13orchestration17assert_access_oneNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEB16_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 5)
          to label %.noexc unwind label %.thread41

.thread41:                                        ; preds = %bb.j, %bb.a, %bb.e, %_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread33

.noexc:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 15 uses
  %i.i = load atomic i64, ptr %i.h monotonic, align 8 ; 4 uses
  %i.j = and i64 %i.i, 8
  %i.k = icmp ne i64 %i.j, 0
  %i.l = icmp ugt i64 %i.i, -17
  %or.cond.i = or i1 %i.l, %i.k
  br i1 %or.cond.i, label %_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread, label %_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit, !prof !18

_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit: ; preds = %.noexc
  %i.m = add nuw i64 %i.i, 16
  %i.n = cmpxchg weak ptr %i.h, i64 %i.i, i64 %i.m acquire monotonic, align 8
  %i.o = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.o, label %bb.b, label %_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread, !prof !7

_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread: ; preds = %.noexc, %_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit
  %i.p = invoke noundef zeroext i1 @_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.h, i1 noundef zeroext false, i64 undef, i32 noundef -1)
          to label %bb.b unwind label %.thread41  ; 0 uses

bb.b:                                             ; preds = %_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread, %_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = invoke noundef zeroext i1 @_RNvXs1_NtCs3v5ql5U6hxj_6fontir2irNtB5_10GlyphOrderNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1)
          to label %bb.h unwind label %bb.f

bb.d:                                             ; preds = %bb.b, %bb.h
  %i.u = atomicrmw add ptr %i.h, i64 -16 release, align 8
  %i.v = and i64 %i.u, -14
  %i.w = icmp eq i64 %i.v, 18
  br i1 %i.w, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsoeFWPcSj6V_8lock_api6rwlock15RwLockReadGuardNtNtCs5CI2K4y5rgb_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEEEEB3f_.exit, !prof !8

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsoeFWPcSj6V_8lock_api6rwlock15RwLockReadGuardNtNtCs5CI2K4y5rgb_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEEEEB3f_.exit unwind label %.thread41

bb.f:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = atomicrmw add ptr %i.h, i64 -16 release, align 8
  %i.z = and i64 %i.y, -14
  %i.aa = icmp eq i64 %i.z, 18
  br i1 %i.aa, label %bb.g, label %.thread33, !prof !8

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.h)
          to label %.thread33 unwind label %bb.x

bb.h:                                             ; preds = %bb.c
  br i1 %i.t, label %bb.i, label %bb.d

bb.i:                                             ; preds = %bb.h
  %i.ab = atomicrmw add ptr %i.h, i64 -16 release, align 8
  %i.ac = and i64 %i.ab, -14
  %i.ad = icmp eq i64 %i.ac, 18
  br i1 %i.ad, label %bb.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsoeFWPcSj6V_8lock_api6rwlock15RwLockReadGuardNtNtCs5CI2K4y5rgb_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEEEEB3f_.exit18, !prof !8

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsoeFWPcSj6V_8lock_api6rwlock15RwLockReadGuardNtNtCs5CI2K4y5rgb_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEEEEB3f_.exit18 unwind label %.thread41

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsoeFWPcSj6V_8lock_api6rwlock15RwLockReadGuardNtNtCs5CI2K4y5rgb_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEEEEB3f_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  store i64 1, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.af, align 8
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !913
  %i.ag = tail call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 88, i64 noundef 8) #31, !noalias !913 ; 6 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.k, label %bb.p, !prof !8

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsoeFWPcSj6V_8lock_api6rwlock15RwLockReadGuardNtNtCs5CI2K4y5rgb_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEEEEB3f_.exit
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #30
          to label %.noexc19 unwind label %bb.l

.noexc19:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEBF_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ae)
          to label %.thread37 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.n:                                             ; preds = %bb.q
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = atomicrmw add ptr %i.ag, i64 -1 release, align 8, !noalias !914
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.o, label %.thread37

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b) #32
          to label %.thread37 unwind label %bb.x

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsoeFWPcSj6V_8lock_api6rwlock15RwLockReadGuardNtNtCs5CI2K4y5rgb_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEEEEB3f_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ag, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.ag, ptr %i.b, align 8
  %i.an = cmpxchg weak ptr %i.h, i64 0, i64 8 acquire monotonic, align 8
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  br i1 %i.ao, label %bb.r, label %bb.q, !prof !16

bb.q:                                             ; preds = %bb.p
  %i.ap = invoke noundef zeroext i1 @_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.h, i64 undef, i32 noundef -1)
          to label %bb.r unwind label %bb.n       ; 0 uses

bb.r:                                             ; preds = %bb.q, %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !915)
  %i.aq = load ptr, ptr %i.q, align 8, !alias.scope !915, !noundef !4 ; 2 uses
end_hunk_0
