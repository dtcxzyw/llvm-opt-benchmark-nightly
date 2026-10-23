Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SparcFrameLowering?download=true
inline.NumInlined: 570
inline.NumDeleted: 372
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4llvm18SparcFrameLowering12emitPrologueERNS_15MachineFunctionERNS_17MachineBasicBlockE:bb.a
_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i.i: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sink26.i.i.i.i.i = phi i64 [ 16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 24, %bb.i ]
  %.sink23.i.i.i.i.i = phi ptr [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cb, %bb.i ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.sink26.i.i.i.i.i
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !365
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %.sink23.i.i.i.i.i to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %.sink23.i.i.i.i.i, i64 noundef %i.cg) #17
  br label %_ZNK4llvm14CFIInstBuilder19buildDefCFARegisterENS_10MCRegisterE.exit

_ZNK4llvm14CFIInstBuilder19buildDefCFARegisterENS_10MCRegisterE.exit: ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr null, ptr %3, align 8, !tbaa !352, !alias.scope !453
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 -1, ptr %i.ch, align 8, !tbaa !353, !alias.scope !453
  %.sroa.42.0..sroa_idx.i.i29 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.42.0..sroa_idx.i.i29, align 8, !tbaa !354, !alias.scope !453
  %.sroa.5.0..sroa_idx.i.i30 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 -1, ptr %.sroa.5.0..sroa_idx.i.i30, align 8, !tbaa !353, !alias.scope !453
  %.sroa.6.0..sroa_idx.i.i31 = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i31, align 4, !tbaa !353, !alias.scope !453
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  store i8 0, ptr %i.ci, align 8, !tbaa !355, !alias.scope !453
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i8 14, ptr %i.cj, align 8, !tbaa !356, !alias.scope !453
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr null, ptr %i.ck, align 8, !tbaa !357, !alias.scope !453
  call void @_ZNK4llvm14CFIInstBuilder13insertCFIInstERKNS_16MCCFIInstructionE(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(88) %3)
  %i.cl = load i8, ptr %i.ci, align 8, !tbaa !355
  switch i8 %i.cl, label %bb.m [
    i8 -1, label %_ZNK4llvm14CFIInstBuilder15buildWindowSaveEv.exit
    i8 0, label %_ZNK4llvm14CFIInstBuilder15buildWindowSaveEv.exit
    i8 1, label %bb.k
    i8 2, label %_ZNK4llvm14CFIInstBuilder15buildWindowSaveEv.exit
    i8 3, label %_ZNK4llvm14CFIInstBuilder15buildWindowSaveEv.exit
    i8 4, label %bb.l
    i8 5, label %_ZNK4llvm14CFIInstBuilder15buildWindowSaveEv.exit
    i8 6, label %_ZNK4llvm14CFIInstBuilder15buildWindowSaveEv.exit
  ], !prof !358

bb.k:                                             ; preds = %_ZNK4llvm14CFIInstBuilder19buildDefCFARegisterENS_10MCRegisterE.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !359 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i36: ; preds = %bb.k
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !131
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i37: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i36
  %i.cs = load ptr, ptr %i.ch, align 8, !tbaa !361 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i38, label %_ZNK4llvm14CFIInstBuilder15buildWindowSaveEv.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i.i33

bb.l:                                             ; preds = %_ZNK4llvm14CFIInstBuilder19buildDefCFARegisterENS_10MCRegisterE.exit
  %i.ct = load ptr, ptr %.sroa.42.0..sroa_idx.i.i29, align 8, !tbaa !364 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i16.i.i.i.i.i32 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i.i.i.i.i.i16.i.i.i.i.i32, label %_ZNK4llvm14CFIInstBuilder15buildWindowSaveEv.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i.i33

bb.m:                                             ; preds = %_ZNK4llvm14CFIInstBuilder19buildDefCFARegisterENS_10MCRegisterE.exit
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i.i33: ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i37
  %.sink26.i.i.i.i.i34 = phi i64 [ 16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i37 ], [ 24, %bb.l ]
  %.sink23.i.i.i.i.i35 = phi ptr [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i37 ], [ %i.ct, %bb.l ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sink26.i.i.i.i.i34
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !365
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %.sink23.i.i.i.i.i35 to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %.sink23.i.i.i.i.i35, i64 noundef %i.cy) #17
  br label %_ZNK4llvm14CFIInstBuilder15buildWindowSaveEv.exit

_ZNK4llvm14CFIInstBuilder15buildWindowSaveEv.exit: ; preds = %_ZNK4llvm14CFIInstBuilder19buildDefCFARegisterENS_10MCRegisterE.exit, %_ZNK4llvm14CFIInstBuilder19buildDefCFARegisterENS_10MCRegisterE.exit, %_ZNK4llvm14CFIInstBuilder19buildDefCFARegisterENS_10MCRegisterE.exit, %_ZNK4llvm14CFIInstBuilder19buildDefCFARegisterENS_10MCRegisterE.exit, %_ZNK4llvm14CFIInstBuilder19buildDefCFARegisterENS_10MCRegisterE.exit, %_ZNK4llvm14CFIInstBuilder19buildDefCFARegisterENS_10MCRegisterE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i37, %bb.l, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @_ZNK4llvm14CFIInstBuilder13buildRegisterENS_10MCRegisterES1_(ptr noundef nonnull align 8 dereferenceable(80) %5, i32 189, i32 173)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %_ZNK4llvm14CFIInstBuilder15buildWindowSaveEv.exit, %bb.b
  ret void
}

declare noundef i32 @_ZNK4llvm14SparcSubtarget20getAdjustedFrameSizeEi(ptr noundef nonnull align 8 dereferenceable(519368), i32 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4llvm15MachineFunction15needsFrameMovesEv(ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm14CFIInstBuilder13buildRegisterENS_10MCRegisterES1_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 %1, i32 %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::MCCFIInstruction", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !456, !nonnull !16, !align !244 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !341, !range !15, !noundef !16
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i64 %i.h(ptr noundef nonnull align 8 dereferenceable(240) %i.b, i32 %1, i1 noundef zeroext %i.e) #16
  %i.j = trunc i64 %i.i to i32
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !456, !nonnull !16, !align !244 ; 2 uses
  %i.l = load i8, ptr %i.c, align 4, !tbaa !341, !range !15, !noundef !16
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i64 %i.p(ptr noundef nonnull align 8 dereferenceable(240) %i.k, i32 %2, i1 noundef zeroext %i.m) #16
  %i.r = trunc i64 %i.q to i32
  store ptr null, ptr %3, align 8, !tbaa !352, !alias.scope !457
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 %i.j, ptr %i.s, align 8, !tbaa !353, !alias.scope !457
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !354, !alias.scope !457
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.r, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !353, !alias.scope !457
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 0, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !353, !alias.scope !457
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  store i8 0, ptr %i.t, align 8, !tbaa !355, !alias.scope !457
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i8 13, ptr %i.u, align 8, !tbaa !356, !alias.scope !457
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr null, ptr %i.v, align 8, !tbaa !357, !alias.scope !457
  call void @_ZNK4llvm14CFIInstBuilder13insertCFIInstERKNS_16MCCFIInstructionE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(88) %3)
  %i.w = load i8, ptr %i.t, align 8, !tbaa !355
  switch i8 %i.w, label %bb.d [
    i8 -1, label %_ZN4llvm16MCCFIInstructionD2Ev.exit
    i8 0, label %_ZN4llvm16MCCFIInstructionD2Ev.exit
    i8 1, label %bb.b
    i8 2, label %_ZN4llvm16MCCFIInstructionD2Ev.exit
    i8 3, label %_ZN4llvm16MCCFIInstructionD2Ev.exit
    i8 4, label %bb.c
    i8 5, label %_ZN4llvm16MCCFIInstructionD2Ev.exit
    i8 6, label %_ZN4llvm16MCCFIInstructionD2Ev.exit
  ], !prof !358

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !359  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !131
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !361 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm16MCCFIInstructionD2Ev.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.ae = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !364 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i16.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i.i.i16.i.i.i.i, label %_ZN4llvm16MCCFIInstructionD2Ev.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i

bb.d:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i
  %.sink26.i.i.i.i = phi i64 [ 16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i ], [ 24, %bb.c ]
  %.sink23.i.i.i.i = phi ptr [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ae, %bb.c ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sink26.i.i.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !365
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %.sink23.i.i.i.i to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %.sink23.i.i.i.i, i64 noundef %i.aj) #17
  br label %_ZN4llvm16MCCFIInstructionD2Ev.exit

_ZN4llvm16MCCFIInstructionD2Ev.exit:              ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i, %bb.c, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZNK4llvm18SparcFrameLowering29eliminateCallFramePseudoInstrERNS_15MachineFunctionERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr %3) unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) #16
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !460
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !131
  %i.i = trunc i64 %i.h to i32                    ; 3 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 52
  %5 = load i32, ptr %4, align 4, !tbaa !372
  %6 = icmp eq i32 %5, 331
  %7 = sub nsw i32 0, %i.i
  %spec.select = select i1 %6, i32 %7, i32 %i.i
  tail call void @_ZNK4llvm18SparcFrameLowering16emitSPAdjustmentERNS_15MachineFunctionERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEijj(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr nonnull %3, i32 noundef %spec.select, i32 noundef 359, i32 noundef 358)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %3, align 8
  %i.j = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !373
  %i.m = and i32 %i.l, 8
  %.not34.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not34.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i = phi ptr [ %i.o, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ], [ %3, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !302  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !373
  %i.r = and i32 %i.q, 8
  %.not3.i.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, !llvm.loop !458

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %bb.d
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %3, %bb.d ], [ %3, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ], [ %i.o, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !302  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %3, %i.t
  br i1 %.not4.i.i.i, label %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, %.lr.ph.i.i.i
  %.sroa.03.05.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %3, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i ] ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !302  ; 2 uses
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE18removeNodeFromListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull %.sroa.03.05.i.i.i) #16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.03.05.i.i.i, align 8
  %i.x = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !302  ; 3 uses
  %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i = load i64, ptr %i.z, align 8
  %i.aa = and i64 %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i, 7
  %i.ab = or disjoint i64 %i.aa, %i.x
  store i64 %i.ab, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !302
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.03.05.i.i.i, align 8
  %i.ad = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i, 7
  store i64 %i.ad, ptr %.sroa.03.05.i.i.i, align 8
  store ptr null, ptr %i.v, align 8, !tbaa !302
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE10deleteNodeEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull %.sroa.03.05.i.i.i) #16
  %.not.i.i.i = icmp eq ptr %i.w, %i.t
  br i1 %.not.i.i.i, label %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit, label %.lr.ph.i.i.i, !llvm.loop !459

_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit: ; preds = %.lr.ph.i.i.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i
  ret ptr %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm18SparcFrameLowering12emitEpilogueERNS_15MachineFunctionERNS_17MachineBasicBlockE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MIMetadata", align 8  ; 5 uses
  %10 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %11 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !310
  %i.c = tail call ptr @_ZN4llvm17MachineBasicBlock20getLastNonDebugInstrEb(ptr noundef nonnull align 8 dereferenceable(360) %2, i1 noundef zeroext true) #16 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !243, !nonnull !16, !align !244 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(344) %i.e) #16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.sroa.09.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !301 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.l = load i8, ptr %i.k, align 4, !tbaa !334, !range !15, !noundef !16
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store ptr %.sroa.09.0.copyload, ptr %9, align 8, !tbaa !301
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !245
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -23264
  %i.r = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i32 158) ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.r, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.u, align 8, !tbaa !248, !alias.scope !476
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 158, ptr %i.v, align 4, !tbaa !131, !alias.scope !476
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false), !alias.scope !476
  store i32 0, ptr %8, align 8, !alias.scope !476
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.t, ptr noundef nonnull align 8 dereferenceable(1065) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.x, align 8, !tbaa !248, !alias.scope !477
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 158, ptr %i.y, align 4, !tbaa !131, !alias.scope !477
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false), !alias.scope !477
  store i32 0, ptr %7, align 8, !alias.scope !477
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.t, ptr noundef nonnull align 8 dereferenceable(1065) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !311
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !331
  %i.ae = trunc i64 %i.ad to i32                  ; 2 uses
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNK4llvm18SparcFrameLowering16emitSPAdjustmentERNS_15MachineFunctionERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEijj(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr nonnull %i.c, i32 noundef %i.ae, i32 noundef 359, i32 noundef 358)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !372
  %i.ah = icmp eq i32 %i.ag, 833
  br i1 %i.ah, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !375 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !376
  %.not.i.i.i = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 189, ptr %i.ak, align 8, !tbaa !353
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 -1, ptr %.sroa.57.0..sroa_idx.i, align 8, !tbaa !354
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !375
  br label %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit

bb.h:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !377 ; 5 uses
  %i.ap = ptrtoint ptr %i.ak to i64
  %i.aq = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775792
  br i1 %i.as, label %bb.i, label %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #18
  unreachable

_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.h
  %i.at = ashr exact i64 %i.ar, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.au, i64 576460752303423487)
  %i.ax = select i1 %i.av, i64 576460752303423487, i64 %i.aw ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ax, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 4
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #19 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar ; 2 uses
  store i32 189, ptr %i.ba, align 8, !tbaa !353
  %.sroa.57.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 -1, ptr %.sroa.57.0..sroa_idx8.i, align 8, !tbaa !354
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.ak
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ], [ %i.az, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ao, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !378, !alias.scope !478
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.ak
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.az, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ]
end_hunk_0
