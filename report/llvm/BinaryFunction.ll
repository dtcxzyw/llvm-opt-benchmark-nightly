Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BinaryFunction?download=true
inline.NumInlined: 14780
inline.NumDeleted: 6683
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN4llvm4bolt14BinaryFunction20mutateCFIRegisterForERKNS_6MCInstEt:_ZNK4llvm4bolt14BinaryFunction9getCFIForERKNS_6MCInstE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %bb.as

bb.p:                                             ; preds = %_ZNK4llvm4bolt14BinaryFunction9getCFIForERKNS_6MCInstE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  %i.ci = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !733
  %.not.i.i.i47 = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.i47, label %_ZNK4llvm16MCCFIInstruction12getRegister2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @abort() #34
  unreachable

_ZNK4llvm16MCCFIInstruction12getRegister2Ev.exit: ; preds = %bb.p
  %i.ck = zext i16 %2 to i32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !1417
  store ptr null, ptr %18, align 8, !tbaa !736, !alias.scope !1418
  %i.cn = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  store i32 %i.ck, ptr %i.cn, align 8, !tbaa !583, !alias.scope !1418
  %.sroa.43.0..sroa_idx.i48 = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.43.0..sroa_idx.i48, align 8, !tbaa !472, !alias.scope !1418
  %.sroa.5.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i32 %i.cm, ptr %.sroa.5.0..sroa_idx.i49, align 8, !tbaa !583, !alias.scope !1418
  %.sroa.6.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %18, i64 28
  store i32 0, ptr %.sroa.6.0..sroa_idx.i50, align 4, !tbaa !583, !alias.scope !1418
  %i.co = getelementptr inbounds nuw i8, ptr %18, i64 64 ; 2 uses
  store i8 0, ptr %i.co, align 8, !tbaa !733, !alias.scope !1418
  %i.cp = getelementptr inbounds nuw i8, ptr %18, i64 72 ; 2 uses
  store i8 13, ptr %i.cp, align 8, !tbaa !732, !alias.scope !1418
  %i.cq = getelementptr inbounds nuw i8, ptr %18, i64 80
  store ptr null, ptr %i.cq, align 8, !tbaa !471, !alias.scope !1418
  store ptr null, ptr %i.p, align 8, !tbaa !736
  %i.cr = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  store ptr %i.cr, ptr %11, align 8, !tbaa !739
  call void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEEaSEOSD_EUlOT_T0_E_JRSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEEDcOSH_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(57) %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i64 16, i1 false)
  %i.cs = load i8, ptr %i.co, align 8, !tbaa !733
  switch i8 %i.cs, label %bb.t [
    i8 -1, label %_ZN4llvm16MCCFIInstructionD2Ev.exit59
    i8 0, label %_ZN4llvm16MCCFIInstructionD2Ev.exit59
    i8 1, label %bb.r
    i8 2, label %_ZN4llvm16MCCFIInstructionD2Ev.exit59
    i8 3, label %_ZN4llvm16MCCFIInstructionD2Ev.exit59
    i8 4, label %bb.s
    i8 5, label %_ZN4llvm16MCCFIInstructionD2Ev.exit59
    i8 6, label %_ZN4llvm16MCCFIInstructionD2Ev.exit59
  ], !prof !740

bb.r:                                             ; preds = %_ZNK4llvm16MCCFIInstruction12getRegister2Ev.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !466 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i55: ; preds = %bb.r
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !473
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i56: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i55
  %i.cz = load ptr, ptr %i.cn, align 8, !tbaa !742 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i57 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i57, label %_ZN4llvm16MCCFIInstructionD2Ev.exit59, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i52

bb.s:                                             ; preds = %_ZNK4llvm16MCCFIInstruction12getRegister2Ev.exit
  %i.da = load ptr, ptr %.sroa.43.0..sroa_idx.i48, align 8, !tbaa !745 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i16.i.i.i.i51 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i.i.i.i.i.i16.i.i.i.i51, label %_ZN4llvm16MCCFIInstructionD2Ev.exit59, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i52

bb.t:                                             ; preds = %_ZNK4llvm16MCCFIInstruction12getRegister2Ev.exit
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i52: ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i56
  %.sink26.i.i.i.i53 = phi i64 [ 16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i56 ], [ 24, %bb.s ]
  %.sink23.i.i.i.i54 = phi ptr [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i56 ], [ %i.da, %bb.s ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.sink26.i.i.i.i53
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !645
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %.sink23.i.i.i.i54 to i64
  %i.df = sub i64 %i.dd, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %.sink23.i.i.i.i54, i64 noundef %i.df) #31
  br label %_ZN4llvm16MCCFIInstructionD2Ev.exit59

_ZN4llvm16MCCFIInstructionD2Ev.exit59:            ; preds = %_ZNK4llvm16MCCFIInstruction12getRegister2Ev.exit, %_ZNK4llvm16MCCFIInstruction12getRegister2Ev.exit, %_ZNK4llvm16MCCFIInstruction12getRegister2Ev.exit, %_ZNK4llvm16MCCFIInstruction12getRegister2Ev.exit, %_ZNK4llvm16MCCFIInstruction12getRegister2Ev.exit, %_ZNK4llvm16MCCFIInstruction12getRegister2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i56, %bb.s, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %bb.as

bb.u:                                             ; preds = %_ZNK4llvm4bolt14BinaryFunction9getCFIForERKNS_6MCInstE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  %i.dg = zext i16 %2 to i32
  store ptr null, ptr %19, align 8, !tbaa !736, !alias.scope !1419
  %i.dh = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  store i32 %i.dg, ptr %i.dh, align 8, !tbaa !583, !alias.scope !1419
  %.sroa.42.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.42.0..sroa_idx.i60, align 8, !tbaa !472, !alias.scope !1419
  %.sroa.5.0..sroa_idx.i61 = getelementptr inbounds nuw i8, ptr %19, i64 24
  store i32 -1, ptr %.sroa.5.0..sroa_idx.i61, align 8, !tbaa !583, !alias.scope !1419
  %.sroa.6.0..sroa_idx.i62 = getelementptr inbounds nuw i8, ptr %19, i64 28
  store i32 0, ptr %.sroa.6.0..sroa_idx.i62, align 4, !tbaa !583, !alias.scope !1419
  %i.di = getelementptr inbounds nuw i8, ptr %19, i64 64 ; 2 uses
  store i8 0, ptr %i.di, align 8, !tbaa !733, !alias.scope !1419
  %i.dj = getelementptr inbounds nuw i8, ptr %19, i64 72 ; 2 uses
  store i8 0, ptr %i.dj, align 8, !tbaa !732, !alias.scope !1419
  %i.dk = getelementptr inbounds nuw i8, ptr %19, i64 80
  store ptr null, ptr %i.dk, align 8, !tbaa !471, !alias.scope !1419
  store ptr null, ptr %i.p, align 8, !tbaa !736
  %i.dl = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  store ptr %i.dl, ptr %10, align 8, !tbaa !739
  call void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEEaSEOSD_EUlOT_T0_E_JRSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEEDcOSH_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(57) %i.dh)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i64 16, i1 false)
  %i.dm = load i8, ptr %i.di, align 8, !tbaa !733
  switch i8 %i.dm, label %bb.x [
    i8 -1, label %_ZN4llvm16MCCFIInstructionD2Ev.exit71
    i8 0, label %_ZN4llvm16MCCFIInstructionD2Ev.exit71
    i8 1, label %bb.v
    i8 2, label %_ZN4llvm16MCCFIInstructionD2Ev.exit71
    i8 3, label %_ZN4llvm16MCCFIInstructionD2Ev.exit71
    i8 4, label %bb.w
    i8 5, label %_ZN4llvm16MCCFIInstructionD2Ev.exit71
    i8 6, label %_ZN4llvm16MCCFIInstructionD2Ev.exit71
  ], !prof !740

bb.v:                                             ; preds = %bb.u
  %i.dn = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !466 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i67: ; preds = %bb.v
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !473
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i68: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i67
  %i.dt = load ptr, ptr %i.dh, align 8, !tbaa !742 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i69 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i69, label %_ZN4llvm16MCCFIInstructionD2Ev.exit71, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i64

bb.w:                                             ; preds = %bb.u
  %i.du = load ptr, ptr %.sroa.42.0..sroa_idx.i60, align 8, !tbaa !745 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i16.i.i.i.i63 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i.i.i.i16.i.i.i.i63, label %_ZN4llvm16MCCFIInstructionD2Ev.exit71, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i64

bb.x:                                             ; preds = %bb.u
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i64: ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i68
  %.sink26.i.i.i.i65 = phi i64 [ 16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i68 ], [ 24, %bb.w ]
  %.sink23.i.i.i.i66 = phi ptr [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i68 ], [ %i.du, %bb.w ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sink26.i.i.i.i65
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !645
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %.sink23.i.i.i.i66 to i64
  %i.dz = sub i64 %i.dx, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %.sink23.i.i.i.i66, i64 noundef %i.dz) #31
  br label %_ZN4llvm16MCCFIInstructionD2Ev.exit71

_ZN4llvm16MCCFIInstructionD2Ev.exit71:            ; preds = %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i68, %bb.w, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %bb.as

bb.y:                                             ; preds = %_ZNK4llvm4bolt14BinaryFunction9getCFIForERKNS_6MCInstE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  %i.ea = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.eb = load i8, ptr %i.ea, align 8, !tbaa !733, !noalias !1420
  %.not.i.i.i.i = icmp eq i8 %i.eb, 1
  br i1 %.not.i.i.i.i, label %_ZNK4llvm16MCCFIInstruction9getValuesEv.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @abort() #34, !noalias !1420
  unreachable

_ZNK4llvm16MCCFIInstruction9getValuesEv.exit.i:   ; preds = %bb.y
  %i.ec = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !742, !noalias !1420 ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !746, !noalias !1420 ; 2 uses
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ed to i64
  %i.ei = sub i64 %i.eg, %i.eh                    ; 4 uses
  %i.ej = icmp ne ptr %i.ef, %i.ed                ; 2 uses
  %.sroa.speculated4.i.i.i = zext i1 %i.ej to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.sroa.speculated4.i.i.i ; 3 uses
  %i.el = add nsw i64 %i.ei, -1                   ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 %i.el ; 3 uses
  %i.en = icmp eq i64 %i.el, 0
  br i1 %i.en, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i, label %.lr.ph, !prof !1421

bb.aa:                                            ; preds = %bb.ac
  %i.eo = add i32 %.028.i.i152, 7
  %i.ep = icmp eq ptr %i.eu, %i.em
  br i1 %i.ep, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i, label %.lr.ph, !prof !1422, !llvm.loop !1404

.lr.ph:                                           ; preds = %_ZNK4llvm16MCCFIInstruction9getValuesEv.exit.i, %bb.aa
  %.028.i.i152 = phi i32 [ %i.eo, %bb.aa ], [ 0, %_ZNK4llvm16MCCFIInstruction9getValuesEv.exit.i ] ; 3 uses
  %.031.i.i151 = phi ptr [ %i.eu, %bb.aa ], [ %i.ek, %_ZNK4llvm16MCCFIInstruction9getValuesEv.exit.i ] ; 3 uses
  %i.eq = load i8, ptr %.031.i.i151, align 1, !tbaa !473, !noalias !1420 ; 2 uses
  %i.er = icmp ugt i32 %.028.i.i152, 62
  br i1 %i.er, label %bb.ab, label %bb.ac, !prof !591

bb.ab:                                            ; preds = %.lr.ph
  %i.es = and i8 %i.eq, 127                       ; 2 uses
  %.not44.i.i = icmp eq i32 %.028.i.i152, 63
  %.not.i.i = icmp samesign ugt i8 %i.es, 1
  %i.et = icmp ne i8 %i.es, 0
  %or.cond43.i.i = select i1 %.not44.i.i, i1 %.not.i.i, i1 %i.et
  br i1 %or.cond43.i.i, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph
  %i.eu = getelementptr inbounds nuw i8, ptr %.031.i.i151, i64 1 ; 3 uses
  %i.ev = icmp slt i8 %i.eq, 0
  br i1 %i.ev, label %bb.aa, label %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i_crit_edge, !llvm.loop !1404

._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i_crit_edge: ; preds = %bb.ac
  br label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i, !llvm.loop !1404

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i:      ; preds = %bb.aa, %bb.ab, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i_crit_edge, %_ZNK4llvm16MCCFIInstruction9getValuesEv.exit.i
  %.132.i.i = phi ptr [ %i.eu, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i_crit_edge ], [ %i.em, %_ZNK4llvm16MCCFIInstruction9getValuesEv.exit.i ], [ %i.em, %bb.aa ], [ %.031.i.i151, %bb.ab ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !1420
  %i.ew = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %i.ew, ptr %6, align 8, !tbaa !600, !noalias !1420
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ex, align 8, !tbaa !601, !noalias !1420
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 8, ptr %i.ey, align 8, !tbaa !602, !noalias !1420
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30, !noalias !1420
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 2, ptr %i.ez, align 8, !tbaa !712, !noalias !1420
  %i.fa = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i8 0, ptr %i.fa, align 8, !tbaa !713, !noalias !1420
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 44
  store i32 1, ptr %i.fb, align 4, !tbaa !714, !noalias !1420
  %i.fc = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fc, i8 0, i64 24, i1 false), !noalias !1420
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %7, align 8, !tbaa !77, !noalias !1420
  %i.fd = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store ptr %6, ptr %i.fd, align 8, !tbaa !716, !noalias !1420
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef null, i64 noundef 0, i32 noundef 0) #30, !noalias !1420
  %i.fe = zext i16 %2 to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %7, i64 24
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.i, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i
  %.019.i.i = phi i64 [ %i.fe, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i ], [ %i.fh, %_ZN4llvm11raw_ostreamlsEc.exit.i.i ] ; 2 uses
  %i.fh = lshr i64 %.019.i.i, 7                   ; 2 uses
  %.not.i8.not.i = icmp eq i64 %i.fh, 0           ; 2 uses
  %i.fi = trunc i64 %.019.i.i to i8               ; 2 uses
  %i.fj = or i8 %i.fi, -128
  %.0.i.i = select i1 %.not.i8.not.i, i8 %i.fi, i8 %i.fj ; 2 uses
  %i.fk = load ptr, ptr %i.ff, align 8, !tbaa !561, !noalias !1420 ; 3 uses
  %i.fl = load ptr, ptr %i.fg, align 8, !tbaa !560, !noalias !1420
  %.not.i.i.i72 = icmp ult ptr %i.fk, %i.fl
  br i1 %.not.i.i.i72, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 noundef zeroext %.0.i.i) #30, !noalias !1420 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i

bb.af:                                            ; preds = %bb.ad
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  store ptr %i.fn, ptr %i.ff, align 8, !tbaa !561, !noalias !1420
  store i8 %.0.i.i, ptr %i.fk, align 1, !tbaa !473, !noalias !1420
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i

_ZN4llvm11raw_ostreamlsEc.exit.i.i:               ; preds = %bb.af, %bb.ae
  br i1 %.not.i8.not.i, label %_ZNK4llvm5Twine6concatERKS0_.exit31.i, label %bb.ad, !llvm.loop !1405

_ZNK4llvm5Twine6concatERKS0_.exit31.i:            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30, !noalias !1420
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30, !noalias !1420
  %.sroa.speculated.i.i = select i1 %i.ej, i64 1, i64 %i.ei
  %i.fo = load ptr, ptr %i.fd, align 8, !tbaa !1425, !noalias !1420, !nonnull !86, !align !219 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !600, !noalias !1420
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !601, !noalias !1420
  store ptr %i.ed, ptr %9, align 8, !alias.scope !1426, !noalias !1420
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.sroa.speculated.i.i, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !tbaa !473, !alias.scope !1426, !noalias !1420
  %i.fs = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.fp, ptr %i.fs, align 8, !alias.scope !1426, !noalias !1420
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %i.fr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !473, !alias.scope !1426, !noalias !1420
  %i.ft = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 5, ptr %i.ft, align 8, !tbaa !476, !alias.scope !1426, !noalias !1420
  %i.fu = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 5, ptr %i.fu, align 1, !tbaa !477, !alias.scope !1426, !noalias !1420
  %i.fv = ptrtoint ptr %.132.i.i to i64
  %i.fw = ptrtoint ptr %i.ek to i64
  %reass.sub = sub i64 %i.fv, %i.fw
  %i.fx = add i64 %reass.sub, 1
  %i.fy = and i64 %i.fx, 4294967295
  %.sroa.speculated4.i.i14.i = call i64 @llvm.umin.i64(i64 %i.ei, i64 %i.fy) ; 2 uses
  %i.fz = sub i64 %i.ei, %.sroa.speculated4.i.i14.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.sroa.speculated4.i.i14.i
  store ptr %9, ptr %8, align 8, !alias.scope !1427, !noalias !1420
  %i.gb = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.ga, ptr %i.gb, align 8, !alias.scope !1427, !noalias !1420
  %.sroa.2.0..sroa_idx.i.i30.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %i.fz, ptr %.sroa.2.0..sroa_idx.i.i30.i, align 8, !tbaa !473, !alias.scope !1427, !noalias !1420
  %i.gc = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 2, ptr %i.gc, align 8, !tbaa !476, !alias.scope !1427, !noalias !1420
  %i.gd = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 5, ptr %i.gd, align 1, !tbaa !477, !alias.scope !1427, !noalias !1420
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(34) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !1420
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !1420
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30, !noalias !1420
  %i.ge = load ptr, ptr %6, align 8, !tbaa !600, !noalias !1420 ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.ew
  br i1 %i.gf, label %_ZN4llvm4boltL30mutateDWARFExpressionTargetRegB5cxx11ERKNS_16MCCFIInstructionEt.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNK4llvm5Twine6concatERKS0_.exit31.i
  call void @free(ptr noundef %i.ge) #30
  br label %_ZN4llvm4boltL30mutateDWARFExpressionTargetRegB5cxx11ERKNS_16MCCFIInstructionEt.exit

_ZN4llvm4boltL30mutateDWARFExpressionTargetRegB5cxx11ERKNS_16MCCFIInstructionEt.exit: ; preds = %_ZNK4llvm5Twine6concatERKS0_.exit31.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !1420
  %i.gg = load ptr, ptr %21, align 8, !tbaa !466
  %i.gh = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !467
  store ptr @.str.44, ptr %22, align 8, !tbaa !677
  %i.gj = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 0, ptr %i.gj, align 8, !tbaa !678
  call void @_ZN4llvm16MCCFIInstruction12createEscapeEPNS_8MCSymbolENS_9StringRefENS_5SMLocES3_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCCFIInstruction") align 8 %20, ptr noundef null, ptr %i.gg, i64 %i.gi, ptr null, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %22)
  %i.gk = load ptr, ptr %i.i, align 8, !tbaa !89
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !473
  %i.gn = and i64 %i.gm, 4294967295
  %i.go = load ptr, ptr %i.m, align 8, !tbaa !89
  %i.gp = getelementptr inbounds nuw [88 x i8], ptr %i.go, i64 %i.gn ; 3 uses
  %i.gq = load ptr, ptr %20, align 8, !tbaa !736
  store ptr %i.gq, ptr %i.gp, align 8, !tbaa !736
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.gr, ptr %5, align 8, !tbaa !739
  call void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEEaSEOSD_EUlOT_T0_E_JRSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEEDcOSH_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(57) %i.gs)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 72
  %i.gu = getelementptr inbounds nuw i8, ptr %20, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gt, ptr noundef nonnull align 8 dereferenceable(16) %i.gu, i64 16, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %20, i64 64
  %i.gw = load i8, ptr %i.gv, align 8, !tbaa !733
  switch i8 %i.gw, label %bb.aj [
    i8 -1, label %_ZN4llvm16MCCFIInstructionD2Ev.exit81
    i8 0, label %_ZN4llvm16MCCFIInstructionD2Ev.exit81
    i8 1, label %bb.ah
    i8 2, label %_ZN4llvm16MCCFIInstructionD2Ev.exit81
    i8 3, label %_ZN4llvm16MCCFIInstructionD2Ev.exit81
    i8 4, label %bb.ai
    i8 5, label %_ZN4llvm16MCCFIInstructionD2Ev.exit81
    i8 6, label %_ZN4llvm16MCCFIInstructionD2Ev.exit81
  ], !prof !740

bb.ah:                                            ; preds = %_ZN4llvm4boltL30mutateDWARFExpressionTargetRegB5cxx11ERKNS_16MCCFIInstructionEt.exit
  %i.gx = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !466 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 2 uses
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i77: ; preds = %bb.ah
  %i.hb = load i64, ptr %i.gz, align 8, !tbaa !473
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i78: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i77
  %i.hd = load ptr, ptr %i.gs, align 8, !tbaa !742 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i79 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i79, label %_ZN4llvm16MCCFIInstructionD2Ev.exit81, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i74

bb.ai:                                            ; preds = %_ZN4llvm4boltL30mutateDWARFExpressionTargetRegB5cxx11ERKNS_16MCCFIInstructionEt.exit
  %i.he = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !745 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i16.i.i.i.i73 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i16.i.i.i.i73, label %_ZN4llvm16MCCFIInstructionD2Ev.exit81, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i74

bb.aj:                                            ; preds = %_ZN4llvm4boltL30mutateDWARFExpressionTargetRegB5cxx11ERKNS_16MCCFIInstructionEt.exit
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i74: ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i78
  %.sink26.i.i.i.i75 = phi i64 [ 16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i78 ], [ 24, %bb.ai ]
  %.sink23.i.i.i.i76 = phi ptr [ %i.hd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i78 ], [ %i.hf, %bb.ai ] ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.sink26.i.i.i.i75
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !645
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %.sink23.i.i.i.i76 to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %.sink23.i.i.i.i76, i64 noundef %i.hk) #31
  br label %_ZN4llvm16MCCFIInstructionD2Ev.exit81

_ZN4llvm16MCCFIInstructionD2Ev.exit81:            ; preds = %_ZN4llvm4boltL30mutateDWARFExpressionTargetRegB5cxx11ERKNS_16MCCFIInstructionEt.exit, %_ZN4llvm4boltL30mutateDWARFExpressionTargetRegB5cxx11ERKNS_16MCCFIInstructionEt.exit, %_ZN4llvm4boltL30mutateDWARFExpressionTargetRegB5cxx11ERKNS_16MCCFIInstructionEt.exit, %_ZN4llvm4boltL30mutateDWARFExpressionTargetRegB5cxx11ERKNS_16MCCFIInstructionEt.exit, %_ZN4llvm4boltL30mutateDWARFExpressionTargetRegB5cxx11ERKNS_16MCCFIInstructionEt.exit, %_ZN4llvm4boltL30mutateDWARFExpressionTargetRegB5cxx11ERKNS_16MCCFIInstructionEt.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i78, %bb.ai, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i74
  %i.hl = load ptr, ptr %21, align 8, !tbaa !466  ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.hn = icmp eq ptr %i.hl, %i.hm
end_hunk_0
