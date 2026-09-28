Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86FrameLowering?download=true
inline.NumInlined: 5118
inline.NumDeleted: 1851
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNK4llvm16X86FrameLowering25emitCalleeSavedFrameMovesERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocEb:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i83.us: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i82.us
  %i.hy = load ptr, ptr %i.am, align 8, !tbaa !510 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i84.us = icmp eq ptr %i.hy, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i84.us, label %_ZN4llvm16MCCFIInstructionD2Ev.exit86.us, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i79.us

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i79.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i83.us, %bb.q
  %.sink26.i.i.i.i80.us = phi i64 [ 16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i83.us ], [ 24, %bb.q ]
  %.sink23.i.i.i.i81.us = phi ptr [ %i.hy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i83.us ], [ %i.ht, %bb.q ] ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sink26.i.i.i.i80.us
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !514
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = ptrtoint ptr %.sink23.i.i.i.i81.us to i64
  %i.id = sub i64 %i.ib, %i.ic
  call void @_ZdlPvm(ptr noundef nonnull %.sink23.i.i.i.i81.us, i64 noundef %i.id) #27
  br label %_ZN4llvm16MCCFIInstructionD2Ev.exit86.us

_ZN4llvm16MCCFIInstructionD2Ev.exit86.us:         ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i79.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i83.us, %bb.q, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.s

bb.s:                                             ; preds = %_ZN4llvm16MCCFIInstructionD2Ev.exit86.us, %_ZN4llvm11SmallVectorIcLj64EED2Ev.exit.us
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0175.0187.us, i64 12 ; 2 uses
  %.not178.us = icmp eq ptr %i.ie, %i.p
  br i1 %.not178.us, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %_ZN4llvm16MCCFIInstructionD2Ev.exit97, %bb.s, %bb.a
  %i.if = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !652 ; 2 uses
  %.not = icmp eq ptr %i.ig, null
  br i1 %.not, label %bb.an, label %bb.w

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4llvm16MCCFIInstructionD2Ev.exit97
  %.sroa.0175.0187 = phi ptr [ %i.iy, %_ZN4llvm16MCCFIInstructionD2Ev.exit97 ], [ %i.n, %.lr.ph ] ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %.sroa.0175.0187, align 4, !tbaa !325
  %i.ih = load ptr, ptr %i.j, align 8, !tbaa !316
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8
  %i.ik = call noundef i64 %i.ij(ptr noundef nonnull align 8 dereferenceable(240) %i.j, i32 %.sroa.0.0.copyload.i, i1 noundef zeroext true) #24
  %i.il = trunc i64 %i.ik to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store ptr null, ptr %9, align 8, !tbaa !501, !alias.scope !1016
  store i32 %i.il, ptr %i.s, align 8, !tbaa !325, !alias.scope !1016
  store i64 0, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !644, !alias.scope !1016
  store i32 -1, ptr %.sroa.5.0..sroa_idx.i87, align 8, !tbaa !325, !alias.scope !1016
  store i32 0, ptr %.sroa.6.0..sroa_idx.i88, align 4, !tbaa !325, !alias.scope !1016
  store i8 0, ptr %i.t, align 8, !tbaa !502, !alias.scope !1016
  store i8 11, ptr %i.u, align 8, !tbaa !506, !alias.scope !1016
  store ptr null, ptr %i.v, align 8, !tbaa !645, !alias.scope !1016
  call void @_ZNK4llvm16X86FrameLowering8BuildCFIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocERKNS_16MCCFIInstructionENS4_6MIFlagE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(88) %9, i32 noundef 0)
  %i.im = load i8, ptr %i.t, align 8, !tbaa !502
  switch i8 %i.im, label %bb.v [
    i8 -1, label %_ZN4llvm16MCCFIInstructionD2Ev.exit97
    i8 0, label %_ZN4llvm16MCCFIInstructionD2Ev.exit97
    i8 1, label %bb.t
    i8 2, label %_ZN4llvm16MCCFIInstructionD2Ev.exit97
    i8 3, label %_ZN4llvm16MCCFIInstructionD2Ev.exit97
    i8 4, label %bb.u
    i8 5, label %_ZN4llvm16MCCFIInstructionD2Ev.exit97
    i8 6, label %_ZN4llvm16MCCFIInstructionD2Ev.exit97
  ], !prof !507

.split.us:                                        ; preds = %_ZN4llvm15SmallVectorImplIcE6appendIPhvEEvT_S4_.exit77.us
  unreachable

.split189.us:                                     ; preds = %bb.p
  unreachable

bb.t:                                             ; preds = %.lr.ph.split
  %i.in = load ptr, ptr %i.w, align 8, !tbaa !508 ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.x
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i93: ; preds = %bb.t
  %i.ip = load i64, ptr %i.x, align 8, !tbaa !313
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.iq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i94: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i93
  %i.ir = load ptr, ptr %i.s, align 8, !tbaa !510 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i95 = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i95, label %_ZN4llvm16MCCFIInstructionD2Ev.exit97, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i90

bb.u:                                             ; preds = %.lr.ph.split
  %i.is = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !513 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i16.i.i.i.i89 = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i.i.i.i.i.i.i16.i.i.i.i89, label %_ZN4llvm16MCCFIInstructionD2Ev.exit97, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i90

bb.v:                                             ; preds = %.lr.ph.split
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i90: ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i94
  %.sink26.i.i.i.i91 = phi i64 [ 16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i94 ], [ 24, %bb.u ]
  %.sink23.i.i.i.i92 = phi ptr [ %i.ir, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i94 ], [ %i.is, %bb.u ] ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sink26.i.i.i.i91
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !514
  %i.iv = ptrtoint ptr %i.iu to i64
  %i.iw = ptrtoint ptr %.sink23.i.i.i.i92 to i64
  %i.ix = sub i64 %i.iv, %i.iw
  call void @_ZdlPvm(ptr noundef nonnull %.sink23.i.i.i.i92, i64 noundef %i.ix) #27
  br label %_ZN4llvm16MCCFIInstructionD2Ev.exit97

_ZN4llvm16MCCFIInstructionD2Ev.exit97:            ; preds = %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i94, %bb.u, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0175.0187, i64 12 ; 2 uses
  %.not178 = icmp eq ptr %i.iy, %i.p
  br i1 %.not178, label %._crit_edge, label %.lr.ph.split

bb.w:                                             ; preds = %._crit_edge
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !471
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 48
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !313
  %i.jd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !647
  %i.jg = add i32 %i.jf, %i.jc
  %i.jh = zext i32 %i.jg to i64
  %i.ji = load ptr, ptr %i.jd, align 8, !tbaa !648
  %i.jj = getelementptr inbounds nuw [40 x i8], ptr %i.ji, i64 %i.jh
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !651
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !320
  %i.jn = shl i32 %i.jm, 1
  %i.jo = zext i32 %i.jn to i64
  %i.jp = add nsw i64 %i.jk, %i.jo
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.jq = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  store ptr %i.jq, ptr %10, align 8, !tbaa !653
  %i.jr = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 12 uses
  store i64 0, ptr %i.jr, align 8, !tbaa !655
  %i.js = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store i64 64, ptr %i.js, align 8, !tbaa !654
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !317
  %i.jv = call i32 @_ZNK4llvm15X86RegisterInfo16getFrameRegisterERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(336) %i.ju, ptr noundef nonnull align 8 dereferenceable(1065) %i.d) #24 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !479, !nonnull !156, !align !157 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 522
  %i.jz = load i8, ptr %i.jy, align 2, !tbaa !312, !range !311, !noundef !156
  %i.ka = trunc nuw i8 %i.jz to i1
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jx, i64 530
  %i.kc = load i8, ptr %i.kb, align 2, !range !311
  %i.kd = trunc nuw i8 %i.kc to i1
  %i.ke = select i1 %i.ka, i1 %i.kd, i1 false
  br i1 %i.ke, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.kf = call i32 @_ZN4llvm22getX86SubSuperRegisterENS_10MCRegisterEjb(i32 %i.jv, i32 noundef 64, i1 noundef zeroext false) #24
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.sroa.0165.0 = phi i32 [ %i.kf, %bb.x ], [ %i.jv, %bb.w ]
  %i.kg = load ptr, ptr %i.j, align 8, !tbaa !316
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.ki = load ptr, ptr %i.kh, align 8
  %i.kj = call noundef i64 %i.ki(ptr noundef nonnull align 8 dereferenceable(240) %i.j, i32 %.sroa.0165.0, i1 noundef zeroext true) #24
  %i.kk = trunc i64 %i.kj to i8
  %i.kl = add i8 %i.kk, 112                       ; 2 uses
  %i.km = load i64, ptr %i.jr, align 8, !tbaa !655 ; 2 uses
  %i.kn = load i64, ptr %i.js, align 8, !tbaa !654
  %.not.i98 = icmp ult i64 %i.km, %i.kn
  br i1 %.not.i98, label %bb.aa, label %bb.z, !prof !657

bb.z:                                             ; preds = %bb.y
  call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 noundef signext %i.kl)
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit99

bb.aa:                                            ; preds = %bb.y
  %i.ko = load ptr, ptr %10, align 8, !tbaa !653
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.km
  store i8 %i.kl, ptr %i.kp, align 1
  %i.kq = load i64, ptr %i.jr, align 8, !tbaa !655
  %i.kr = add i64 %i.kq, 1
  store i64 %i.kr, ptr %i.jr, align 8, !tbaa !655
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit99

_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit99: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit99
  %indvars.iv197 = phi i32 [ %indvars.iv.next198, %bb.ab ], [ 1, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit99 ] ; 4 uses
  %.026.i103 = phi ptr [ %i.kw, %bb.ab ], [ %i.b, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit99 ] ; 2 uses
  %.025.i104 = phi i64 [ %i.ku, %bb.ab ], [ %i.jp, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit99 ] ; 2 uses
  %i.ks = trunc i64 %.025.i104 to i8
  %i.kt = and i8 %i.ks, 127                       ; 2 uses
  %i.ku = ashr i64 %.025.i104, 7                  ; 2 uses
  %.not.i106 = icmp samesign ugt i8 %i.kt, 63
  %i.kv = sext i1 %.not.i106 to i64
  %.not32.i107.not = icmp eq i64 %i.ku, %i.kv     ; 2 uses
  %masksel.i108 = select i1 %.not32.i107.not, i8 0, i8 -128
  %.0.i109 = or disjoint i8 %masksel.i108, %i.kt
  %i.kw = getelementptr i8, ptr %.026.i103, i64 1 ; 2 uses
  store i8 %.0.i109, ptr %.026.i103, align 1, !tbaa !313
  %indvars.iv.next198 = add i32 %indvars.iv197, 1
  br i1 %.not32.i107.not, label %_ZN4llvm13encodeSLEB128ElPhj.exit112, label %bb.ab, !llvm.loop !12

_ZN4llvm13encodeSLEB128ElPhj.exit112:             ; preds = %bb.ab
  %i.kx = ptrtoint ptr %i.kw to i64
  %i.ky = ptrtoint ptr %i.b to i64                ; 6 uses
  %i.kz = sub i64 %i.kx, %i.ky
  %i.la = and i64 %i.kz, 4294967295               ; 3 uses
  %i.lb = load i64, ptr %i.jr, align 8, !tbaa !655 ; 2 uses
  %i.lc = add i64 %i.lb, %i.la                    ; 2 uses
  %i.ld = load i64, ptr %i.js, align 8, !tbaa !654
  %i.le = icmp ult i64 %i.ld, %i.lc
  br i1 %i.le, label %bb.ac, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i113

bb.ac:                                            ; preds = %_ZN4llvm13encodeSLEB128ElPhj.exit112
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull %i.jq, i64 noundef %i.lc, i64 noundef 1) #24
  %.pre.i121 = load i64, ptr %i.jr, align 8, !tbaa !655
  br label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i113

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i113: ; preds = %bb.ac, %_ZN4llvm13encodeSLEB128ElPhj.exit112
  %i.lf = phi i64 [ %i.lb, %_ZN4llvm13encodeSLEB128ElPhj.exit112 ], [ %.pre.i121, %bb.ac ] ; 3 uses
  %.not179 = icmp eq i64 %i.la, 0
  br i1 %.not179, label %_ZN4llvm15SmallVectorImplIcE6appendIPhvEEvT_S4_.exit122, label %iter.check282

iter.check282:                                    ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i113
  %i.lg = load ptr, ptr %10, align 8, !tbaa !653  ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.lf ; 6 uses
  %scevgep196 = getelementptr i8, ptr %i.b, i64 -1
  %i.li = zext i32 %indvars.iv197 to i64          ; 8 uses
  %scevgep199 = getelementptr i8, ptr %scevgep196, i64 %i.li
  %min.iters.check266 = icmp ult i32 %indvars.iv197, 8
  br i1 %min.iters.check266, label %.lr.ph.i.i.i.i.i.i.i.i.i115.preheader, label %vector.memcheck264

vector.memcheck264:                               ; preds = %iter.check282
  %i.lj = ptrtoaddr ptr %i.lg to i64
  %i.lk = add i64 %i.lf, %i.lj
  %i.ll = sub i64 %i.ky, %i.lk
  %diff.check265 = icmp ugt i64 %i.ll, -32
  br i1 %diff.check265, label %.lr.ph.i.i.i.i.i.i.i.i.i115.preheader, label %vector.main.loop.iter.check267

vector.main.loop.iter.check267:                   ; preds = %vector.memcheck264
  %min.iters.check268 = icmp ult i32 %indvars.iv197, 32
  br i1 %min.iters.check268, label %vec.epilog.ph286, label %vector.ph269

vector.ph269:                                     ; preds = %vector.main.loop.iter.check267
  %i.lm = and i64 %i.li, 24
  %n.vec270 = and i64 %i.li, 4294967264           ; 5 uses
  %i.ln = getelementptr i8, ptr %i.lh, i64 %n.vec270
  %i.lo = getelementptr i8, ptr %i.b, i64 %n.vec270
  br label %vector.body271

vector.body271:                                   ; preds = %vector.ph269, %vector.body271
  %index272 = phi i64 [ 0, %vector.ph269 ], [ %index.next277, %vector.body271 ] ; 3 uses
  %next.gep273 = getelementptr i8, ptr %i.lh, i64 %index272 ; 2 uses
  %next.gep274 = getelementptr i8, ptr %i.b, i64 %index272 ; 2 uses
  %i.lp = getelementptr i8, ptr %next.gep274, i64 16
  %wide.load275 = load <16 x i8>, ptr %next.gep274, align 16, !tbaa !313
  %wide.load276 = load <16 x i8>, ptr %i.lp, align 16, !tbaa !313
  %i.lq = getelementptr i8, ptr %next.gep273, i64 16
  store <16 x i8> %wide.load275, ptr %next.gep273, align 1, !tbaa !313
  store <16 x i8> %wide.load276, ptr %i.lq, align 1, !tbaa !313
  %index.next277 = add nuw i64 %index272, 32      ; 2 uses
  %i.lr = icmp eq i64 %index.next277, %n.vec270
  br i1 %i.lr, label %middle.block278, label %vector.body271, !llvm.loop !1007

middle.block278:                                  ; preds = %vector.body271
  %cmp.n279 = icmp eq i64 %n.vec270, %i.li
  br i1 %cmp.n279, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIPhPcEEvT_S5_T0_.exit.loopexit.i119, label %vec.epilog.iter.check284

vec.epilog.iter.check284:                         ; preds = %middle.block278
  %min.epilog.iters.check285 = icmp eq i64 %i.lm, 0
  br i1 %min.epilog.iters.check285, label %.lr.ph.i.i.i.i.i.i.i.i.i115.preheader, label %vec.epilog.ph286, !prof !660

vec.epilog.ph286:                                 ; preds = %vector.main.loop.iter.check267, %vec.epilog.iter.check284
  %vec.epilog.resume.val280 = phi i64 [ %n.vec270, %vec.epilog.iter.check284 ], [ 0, %vector.main.loop.iter.check267 ]
  %n.vec287 = and i64 %i.li, 4294967288           ; 4 uses
  %i.ls = getelementptr i8, ptr %i.lh, i64 %n.vec287
  %i.lt = getelementptr i8, ptr %i.b, i64 %n.vec287
  br label %vec.epilog.vector.body288

vec.epilog.vector.body288:                        ; preds = %vec.epilog.vector.body288, %vec.epilog.ph286
  %index289 = phi i64 [ %vec.epilog.resume.val280, %vec.epilog.ph286 ], [ %index.next293, %vec.epilog.vector.body288 ] ; 3 uses
  %next.gep290 = getelementptr i8, ptr %i.lh, i64 %index289
  %next.gep291 = getelementptr i8, ptr %i.b, i64 %index289
  %wide.load292 = load <8 x i8>, ptr %next.gep291, align 8, !tbaa !313
  store <8 x i8> %wide.load292, ptr %next.gep290, align 1, !tbaa !313
  %index.next293 = add nuw i64 %index289, 8       ; 2 uses
  %i.lu = icmp eq i64 %index.next293, %n.vec287
  br i1 %i.lu, label %vec.epilog.middle.block294, label %vec.epilog.vector.body288, !llvm.loop !1008

vec.epilog.middle.block294:                       ; preds = %vec.epilog.vector.body288
  %cmp.n295 = icmp eq i64 %n.vec287, %i.li
  br i1 %cmp.n295, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIPhPcEEvT_S5_T0_.exit.loopexit.i119, label %.lr.ph.i.i.i.i.i.i.i.i.i115.preheader

.lr.ph.i.i.i.i.i.i.i.i.i115.preheader:            ; preds = %iter.check282, %vector.memcheck264, %vec.epilog.iter.check284, %vec.epilog.middle.block294
  %.0811.i.i.i.i.i.i.i.i.i117.ph = phi ptr [ %i.lh, %iter.check282 ], [ %i.lh, %vector.memcheck264 ], [ %i.ln, %vec.epilog.iter.check284 ], [ %i.ls, %vec.epilog.middle.block294 ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i.i118.ph = phi ptr [ %i.b, %iter.check282 ], [ %i.b, %vector.memcheck264 ], [ %i.lo, %vec.epilog.iter.check284 ], [ %i.lt, %vec.epilog.middle.block294 ] ; 3 uses
  %.0910.i.i.i.i.i.i.i.i.i118.ph341 = ptrtoaddr ptr %.0910.i.i.i.i.i.i.i.i.i118.ph to i64 ; 2 uses
  %i.lv = sub i64 %i.li, %.0910.i.i.i.i.i.i.i.i.i118.ph341
  %xtraiter342 = and i64 %i.lv, 7                 ; 2 uses
  %lcmp.mod343.not = icmp eq i64 %xtraiter342, 0
  br i1 %lcmp.mod343.not, label %.lr.ph.i.i.i.i.i.i.i.i.i115.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i115.prol

.lr.ph.i.i.i.i.i.i.i.i.i115.prol:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i115.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i115.prol
  %.0811.i.i.i.i.i.i.i.i.i117.prol = phi ptr [ %i.ly, %.lr.ph.i.i.i.i.i.i.i.i.i115.prol ], [ %.0811.i.i.i.i.i.i.i.i.i117.ph, %.lr.ph.i.i.i.i.i.i.i.i.i115.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i.i118.prol = phi ptr [ %i.lx, %.lr.ph.i.i.i.i.i.i.i.i.i115.prol ], [ %.0910.i.i.i.i.i.i.i.i.i118.ph, %.lr.ph.i.i.i.i.i.i.i.i.i115.preheader ] ; 2 uses
  %prol.iter344 = phi i64 [ %prol.iter344.next, %.lr.ph.i.i.i.i.i.i.i.i.i115.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i115.preheader ]
  %i.lw = load i8, ptr %.0910.i.i.i.i.i.i.i.i.i118.prol, align 1, !tbaa !313
  store i8 %i.lw, ptr %.0811.i.i.i.i.i.i.i.i.i117.prol, align 1, !tbaa !313
  %i.lx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i118.prol, i64 1 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i117.prol, i64 1 ; 2 uses
  %prol.iter344.next = add i64 %prol.iter344, 1   ; 2 uses
  %prol.iter344.cmp.not = icmp eq i64 %prol.iter344.next, %xtraiter342
  br i1 %prol.iter344.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i115.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i115.prol, !llvm.loop !1009

.lr.ph.i.i.i.i.i.i.i.i.i115.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i115.prol, %.lr.ph.i.i.i.i.i.i.i.i.i115.preheader
  %.0811.i.i.i.i.i.i.i.i.i117.unr = phi ptr [ %.0811.i.i.i.i.i.i.i.i.i117.ph, %.lr.ph.i.i.i.i.i.i.i.i.i115.preheader ], [ %i.ly, %.lr.ph.i.i.i.i.i.i.i.i.i115.prol ]
  %.0910.i.i.i.i.i.i.i.i.i118.unr = phi ptr [ %.0910.i.i.i.i.i.i.i.i.i118.ph, %.lr.ph.i.i.i.i.i.i.i.i.i115.preheader ], [ %i.lx, %.lr.ph.i.i.i.i.i.i.i.i.i115.prol ]
  %i.lz = add i64 %i.ky, %i.li
  %i.ma = sub i64 %.0910.i.i.i.i.i.i.i.i.i118.ph341, %i.lz
  %i.mb = icmp ugt i64 %i.ma, -8
  br i1 %i.mb, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIPhPcEEvT_S5_T0_.exit.loopexit.i119, label %.lr.ph.i.i.i.i.i.i.i.i.i115

.lr.ph.i.i.i.i.i.i.i.i.i115:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i115.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i115
  %.0811.i.i.i.i.i.i.i.i.i117 = phi ptr [ %i.mz, %.lr.ph.i.i.i.i.i.i.i.i.i115 ], [ %.0811.i.i.i.i.i.i.i.i.i117.unr, %.lr.ph.i.i.i.i.i.i.i.i.i115.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i.i.i.i118 = phi ptr [ %i.my, %.lr.ph.i.i.i.i.i.i.i.i.i115 ], [ %.0910.i.i.i.i.i.i.i.i.i118.unr, %.lr.ph.i.i.i.i.i.i.i.i.i115.prol.loopexit ] ; 9 uses
  %i.mc = load i8, ptr %.0910.i.i.i.i.i.i.i.i.i118, align 1, !tbaa !313
  store i8 %i.mc, ptr %.0811.i.i.i.i.i.i.i.i.i117, align 1, !tbaa !313
  %i.md = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i118, i64 1
  %i.me = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i117, i64 1
  %i.mf = load i8, ptr %i.md, align 1, !tbaa !313
  store i8 %i.mf, ptr %i.me, align 1, !tbaa !313
  %i.mg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i118, i64 2
  %i.mh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i117, i64 2
  %i.mi = load i8, ptr %i.mg, align 1, !tbaa !313
  store i8 %i.mi, ptr %i.mh, align 1, !tbaa !313
  %i.mj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i118, i64 3
  %i.mk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i117, i64 3
  %i.ml = load i8, ptr %i.mj, align 1, !tbaa !313
  store i8 %i.ml, ptr %i.mk, align 1, !tbaa !313
  %i.mm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i118, i64 4
  %i.mn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i117, i64 4
  %i.mo = load i8, ptr %i.mm, align 1, !tbaa !313
  store i8 %i.mo, ptr %i.mn, align 1, !tbaa !313
  %i.mp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i118, i64 5
  %i.mq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i117, i64 5
  %i.mr = load i8, ptr %i.mp, align 1, !tbaa !313
  store i8 %i.mr, ptr %i.mq, align 1, !tbaa !313
  %i.ms = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i118, i64 6
  %i.mt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i117, i64 6
  %i.mu = load i8, ptr %i.ms, align 1, !tbaa !313
  store i8 %i.mu, ptr %i.mt, align 1, !tbaa !313
  %i.mv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i118, i64 7 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i117, i64 7
  %i.mx = load i8, ptr %i.mv, align 1, !tbaa !313
  store i8 %i.mx, ptr %i.mw, align 1, !tbaa !313
  %i.my = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i118, i64 8
  %i.mz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i117, i64 8
  %exitcond200.not.7 = icmp eq ptr %i.mv, %scevgep199
  br i1 %exitcond200.not.7, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIPhPcEEvT_S5_T0_.exit.loopexit.i119, label %.lr.ph.i.i.i.i.i.i.i.i.i115, !llvm.loop !1010

_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIPhPcEEvT_S5_T0_.exit.loopexit.i119: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i115.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i115, %vec.epilog.middle.block294, %middle.block278
  %.pre8.i120 = load i64, ptr %i.jr, align 8, !tbaa !655
  br label %_ZN4llvm15SmallVectorImplIcE6appendIPhvEEvT_S4_.exit122

_ZN4llvm15SmallVectorImplIcE6appendIPhvEEvT_S4_.exit122: ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i113, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIPhPcEEvT_S5_T0_.exit.loopexit.i119
  %i.na = phi i64 [ %.pre8.i120, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIPhPcEEvT_S5_T0_.exit.loopexit.i119 ], [ %i.lf, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i113 ]
  %i.nb = add i64 %i.na, %i.la                    ; 3 uses
  store i64 %i.nb, ptr %i.jr, align 8, !tbaa !655
  %i.nc = load i64, ptr %i.js, align 8, !tbaa !654
  %.not.i123 = icmp ult i64 %i.nb, %i.nc
  br i1 %.not.i123, label %bb.ae, label %bb.ad, !prof !657

bb.ad:                                            ; preds = %_ZN4llvm15SmallVectorImplIcE6appendIPhvEEvT_S4_.exit122
  call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 noundef signext 6)
  %.pre = load i64, ptr %i.jr, align 8, !tbaa !655
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit126

bb.ae:                                            ; preds = %_ZN4llvm15SmallVectorImplIcE6appendIPhvEEvT_S4_.exit122
  %i.nd = load ptr, ptr %10, align 8, !tbaa !653
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.nb
  store i8 6, ptr %i.ne, align 1
  %i.nf = load i64, ptr %i.jr, align 8, !tbaa !655
  %i.ng = add i64 %i.nf, 1                        ; 2 uses
  store i64 %i.ng, ptr %i.jr, align 8, !tbaa !655
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit126

_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit126: ; preds = %bb.ad, %bb.ae
  %i.nh = phi i64 [ %.pre, %bb.ad ], [ %i.ng, %bb.ae ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.ni = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 5 uses
  store ptr %i.ni, ptr %11, align 8, !tbaa !653
  %i.nj = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 7 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store i64 64, ptr %i.nk, align 8, !tbaa !654
  store i8 15, ptr %i.ni, align 8
  store i64 1, ptr %i.nj, align 8, !tbaa !655
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit126
  %indvars.iv202 = phi i32 [ %indvars.iv.next203, %bb.af ], [ 1, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit126 ] ; 4 uses
  %.026.i130 = phi ptr [ %i.np, %bb.af ], [ %i.b, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit126 ] ; 2 uses
  %.025.i131 = phi i64 [ %i.nn, %bb.af ], [ %i.nh, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit126 ] ; 2 uses
  %i.nl = trunc i64 %.025.i131 to i8
  %i.nm = and i8 %i.nl, 127                       ; 2 uses
  %i.nn = ashr i64 %.025.i131, 7                  ; 2 uses
  %.not.i133 = icmp samesign ugt i8 %i.nm, 63
  %i.no = sext i1 %.not.i133 to i64
  %.not32.i134.not = icmp eq i64 %i.nn, %i.no     ; 2 uses
  %masksel.i135 = select i1 %.not32.i134.not, i8 0, i8 -128
  %.0.i136 = or disjoint i8 %masksel.i135, %i.nm
  %i.np = getelementptr i8, ptr %.026.i130, i64 1 ; 2 uses
  store i8 %.0.i136, ptr %.026.i130, align 1, !tbaa !313
  %indvars.iv.next203 = add i32 %indvars.iv202, 1
  br i1 %.not32.i134.not, label %_ZN4llvm13encodeSLEB128ElPhj.exit139, label %bb.af, !llvm.loop !12

_ZN4llvm13encodeSLEB128ElPhj.exit139:             ; preds = %bb.af
  %i.nq = ptrtoint ptr %i.np to i64
  %i.nr = sub i64 %i.nq, %i.ky
  %i.ns = and i64 %i.nr, 4294967295               ; 4 uses
  %i.nt = icmp samesign ugt i64 %i.ns, 63
  br i1 %i.nt, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i140.thread, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i140

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i140.thread: ; preds = %_ZN4llvm13encodeSLEB128ElPhj.exit139
  %i.nu = add nuw nsw i64 %i.ns, 1
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull %i.ni, i64 noundef %i.nu, i64 noundef 1) #24
  %.pre.i148 = load i64, ptr %i.nj, align 8, !tbaa !655
  br label %iter.check316

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i140: ; preds = %_ZN4llvm13encodeSLEB128ElPhj.exit139
  %.not180 = icmp eq i64 %i.ns, 0
  br i1 %.not180, label %_ZN4llvm15SmallVectorImplIcE6appendIPhvEEvT_S4_.exit149, label %iter.check316

iter.check316:                                    ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i140.thread, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i140
  %i.nv = phi i64 [ %.pre.i148, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i140.thread ], [ 1, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i140 ] ; 2 uses
  %i.nw = load ptr, ptr %11, align 8, !tbaa !653  ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.nv ; 6 uses
  %scevgep201 = getelementptr i8, ptr %i.b, i64 -1
  %i.ny = zext i32 %indvars.iv202 to i64          ; 8 uses
  %scevgep204 = getelementptr i8, ptr %scevgep201, i64 %i.ny
  %min.iters.check300 = icmp ult i32 %indvars.iv202, 8
  br i1 %min.iters.check300, label %.lr.ph.i.i.i.i.i.i.i.i.i142.preheader, label %vector.memcheck298

vector.memcheck298:                               ; preds = %iter.check316
  %i.nz = ptrtoaddr ptr %i.nw to i64
  %i.oa = add i64 %i.nv, %i.nz
  %i.ob = sub i64 %i.ky, %i.oa
  %diff.check299 = icmp ugt i64 %i.ob, -32
  br i1 %diff.check299, label %.lr.ph.i.i.i.i.i.i.i.i.i142.preheader, label %vector.main.loop.iter.check301

vector.main.loop.iter.check301:                   ; preds = %vector.memcheck298
  %min.iters.check302 = icmp ult i32 %indvars.iv202, 32
  br i1 %min.iters.check302, label %vec.epilog.ph320, label %vector.ph303

vector.ph303:                                     ; preds = %vector.main.loop.iter.check301
  %i.oc = and i64 %i.ny, 24
  %n.vec304 = and i64 %i.ny, 4294967264           ; 5 uses
  %i.od = getelementptr i8, ptr %i.nx, i64 %n.vec304
  %i.oe = getelementptr i8, ptr %i.b, i64 %n.vec304
  br label %vector.body305

vector.body305:                                   ; preds = %vector.ph303, %vector.body305
  %index306 = phi i64 [ 0, %vector.ph303 ], [ %index.next311, %vector.body305 ] ; 3 uses
  %next.gep307 = getelementptr i8, ptr %i.nx, i64 %index306 ; 2 uses
  %next.gep308 = getelementptr i8, ptr %i.b, i64 %index306 ; 2 uses
  %i.of = getelementptr i8, ptr %next.gep308, i64 16
  %wide.load309 = load <16 x i8>, ptr %next.gep308, align 16, !tbaa !313
  %wide.load310 = load <16 x i8>, ptr %i.of, align 16, !tbaa !313
  %i.og = getelementptr i8, ptr %next.gep307, i64 16
  store <16 x i8> %wide.load309, ptr %next.gep307, align 1, !tbaa !313
  store <16 x i8> %wide.load310, ptr %i.og, align 1, !tbaa !313
  %index.next311 = add nuw i64 %index306, 32      ; 2 uses
  %i.oh = icmp eq i64 %index.next311, %n.vec304
  br i1 %i.oh, label %middle.block312, label %vector.body305, !llvm.loop !1011

middle.block312:                                  ; preds = %vector.body305
  %cmp.n313 = icmp eq i64 %n.vec304, %i.ny
  br i1 %cmp.n313, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIPhPcEEvT_S5_T0_.exit.loopexit.i146, label %vec.epilog.iter.check318

vec.epilog.iter.check318:                         ; preds = %middle.block312
  %min.epilog.iters.check319 = icmp eq i64 %i.oc, 0
  br i1 %min.epilog.iters.check319, label %.lr.ph.i.i.i.i.i.i.i.i.i142.preheader, label %vec.epilog.ph320, !prof !660

vec.epilog.ph320:                                 ; preds = %vector.main.loop.iter.check301, %vec.epilog.iter.check318
  %vec.epilog.resume.val314 = phi i64 [ %n.vec304, %vec.epilog.iter.check318 ], [ 0, %vector.main.loop.iter.check301 ]
  %n.vec321 = and i64 %i.ny, 4294967288           ; 4 uses
  %i.oi = getelementptr i8, ptr %i.nx, i64 %n.vec321
  %i.oj = getelementptr i8, ptr %i.b, i64 %n.vec321
  br label %vec.epilog.vector.body322

vec.epilog.vector.body322:                        ; preds = %vec.epilog.vector.body322, %vec.epilog.ph320
  %index323 = phi i64 [ %vec.epilog.resume.val314, %vec.epilog.ph320 ], [ %index.next327, %vec.epilog.vector.body322 ] ; 3 uses
  %next.gep324 = getelementptr i8, ptr %i.nx, i64 %index323
  %next.gep325 = getelementptr i8, ptr %i.b, i64 %index323
  %wide.load326 = load <8 x i8>, ptr %next.gep325, align 8, !tbaa !313
  store <8 x i8> %wide.load326, ptr %next.gep324, align 1, !tbaa !313
  %index.next327 = add nuw i64 %index323, 8       ; 2 uses
  %i.ok = icmp eq i64 %index.next327, %n.vec321
  br i1 %i.ok, label %vec.epilog.middle.block328, label %vec.epilog.vector.body322, !llvm.loop !1012

vec.epilog.middle.block328:                       ; preds = %vec.epilog.vector.body322
  %cmp.n329 = icmp eq i64 %n.vec321, %i.ny
  br i1 %cmp.n329, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIPhPcEEvT_S5_T0_.exit.loopexit.i146, label %.lr.ph.i.i.i.i.i.i.i.i.i142.preheader

.lr.ph.i.i.i.i.i.i.i.i.i142.preheader:            ; preds = %iter.check316, %vector.memcheck298, %vec.epilog.iter.check318, %vec.epilog.middle.block328
  %.0811.i.i.i.i.i.i.i.i.i144.ph = phi ptr [ %i.nx, %iter.check316 ], [ %i.nx, %vector.memcheck298 ], [ %i.od, %vec.epilog.iter.check318 ], [ %i.oi, %vec.epilog.middle.block328 ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i.i145.ph = phi ptr [ %i.b, %iter.check316 ], [ %i.b, %vector.memcheck298 ], [ %i.oe, %vec.epilog.iter.check318 ], [ %i.oj, %vec.epilog.middle.block328 ] ; 3 uses
  %.0910.i.i.i.i.i.i.i.i.i145.ph345 = ptrtoaddr ptr %.0910.i.i.i.i.i.i.i.i.i145.ph to i64 ; 2 uses
  %i.ol = sub i64 %i.ny, %.0910.i.i.i.i.i.i.i.i.i145.ph345
  %xtraiter346 = and i64 %i.ol, 7                 ; 2 uses
  %lcmp.mod347.not = icmp eq i64 %xtraiter346, 0
  br i1 %lcmp.mod347.not, label %.lr.ph.i.i.i.i.i.i.i.i.i142.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i142.prol

.lr.ph.i.i.i.i.i.i.i.i.i142.prol:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i142.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i142.prol
  %.0811.i.i.i.i.i.i.i.i.i144.prol = phi ptr [ %i.oo, %.lr.ph.i.i.i.i.i.i.i.i.i142.prol ], [ %.0811.i.i.i.i.i.i.i.i.i144.ph, %.lr.ph.i.i.i.i.i.i.i.i.i142.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i.i145.prol = phi ptr [ %i.on, %.lr.ph.i.i.i.i.i.i.i.i.i142.prol ], [ %.0910.i.i.i.i.i.i.i.i.i145.ph, %.lr.ph.i.i.i.i.i.i.i.i.i142.preheader ] ; 2 uses
  %prol.iter348 = phi i64 [ %prol.iter348.next, %.lr.ph.i.i.i.i.i.i.i.i.i142.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i142.preheader ]
  %i.om = load i8, ptr %.0910.i.i.i.i.i.i.i.i.i145.prol, align 1, !tbaa !313
  store i8 %i.om, ptr %.0811.i.i.i.i.i.i.i.i.i144.prol, align 1, !tbaa !313
end_hunk_0
begin_hunk_1_@_ZNK4llvm16X86FrameLowering16spillFPBPUsingSPERNS_15MachineFunctionENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8RegisterES6_i:bb.a
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.gz = ptrtoaddr ptr %i.gw to i64
  %i.ha = add i64 %i.gv, %i.gz
  %i.hb = sub i64 %i.go, %i.ha
  %diff.check = icmp ugt i64 %i.hb, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check217 = icmp ult i32 %indvars.iv, 32
  br i1 %min.iters.check217, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hc = and i64 %i.gy, 24
  %n.vec = and i64 %i.gy, 4294967264              ; 5 uses
  %i.hd = getelementptr i8, ptr %i.gx, i64 %n.vec
  %i.he = getelementptr i8, ptr %i.a, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.gx, i64 %index ; 2 uses
  %next.gep218 = getelementptr i8, ptr %i.a, i64 %index ; 2 uses
  %i.hf = getelementptr i8, ptr %next.gep218, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep218, align 16, !tbaa !313
  %wide.load219 = load <16 x i8>, ptr %i.hf, align 16, !tbaa !313
  %i.hg = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !313
  store <16 x i8> %wide.load219, ptr %i.hg, align 1, !tbaa !313
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hh = icmp eq i64 %index.next, %n.vec
  br i1 %i.hh, label %middle.block, label %vector.body, !llvm.loop !2240

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.gy
  br i1 %cmp.n, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIPhPcEEvT_S5_T0_.exit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !660

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec221 = and i64 %i.gy, 4294967288           ; 4 uses
  %i.hi = getelementptr i8, ptr %i.gx, i64 %n.vec221
  %i.hj = getelementptr i8, ptr %i.a, i64 %n.vec221
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index222 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next226, %vec.epilog.vector.body ] ; 3 uses
  %next.gep223 = getelementptr i8, ptr %i.gx, i64 %index222
  %next.gep224 = getelementptr i8, ptr %i.a, i64 %index222
  %wide.load225 = load <8 x i8>, ptr %next.gep224, align 8, !tbaa !313
  store <8 x i8> %wide.load225, ptr %next.gep223, align 1, !tbaa !313
  %index.next226 = add nuw i64 %index222, 8       ; 2 uses
  %i.hk = icmp eq i64 %index.next226, %n.vec221
  br i1 %i.hk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2241

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n227 = icmp eq i64 %n.vec221, %i.gy
  br i1 %cmp.n227, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIPhPcEEvT_S5_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0811.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.gx, %iter.check ], [ %i.gx, %vector.memcheck ], [ %i.hd, %vec.epilog.iter.check ], [ %i.hi, %vec.epilog.middle.block ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.a, %iter.check ], [ %i.a, %vector.memcheck ], [ %i.he, %vec.epilog.iter.check ], [ %i.hj, %vec.epilog.middle.block ] ; 3 uses
  %.0910.i.i.i.i.i.i.i.i.i.ph301 = ptrtoaddr ptr %.0910.i.i.i.i.i.i.i.i.i.ph to i64 ; 2 uses
  %i.hl = sub i64 %i.gy, %.0910.i.i.i.i.i.i.i.i.i.ph301
  %xtraiter = and i64 %i.hl, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.0811.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ho, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.0811.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.hn, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.0910.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %i.hm = load i8, ptr %.0910.i.i.i.i.i.i.i.i.i.prol, align 1, !tbaa !313
  store i8 %i.hm, ptr %.0811.i.i.i.i.i.i.i.i.i.prol, align 1, !tbaa !313
  %i.hn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i.prol, i64 1 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !2242

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.0811.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.0811.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ho, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.0910.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.hn, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.hp = add i64 %i.go, %i.gy
  %i.hq = sub i64 %.0910.i.i.i.i.i.i.i.i.i.ph301, %i.hp
  %i.hr = icmp ugt i64 %i.hq, -8
  br i1 %i.hr, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIPhPcEEvT_S5_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.0811.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ip, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i.i.i.i = phi ptr [ %i.io, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.hs = load i8, ptr %.0910.i.i.i.i.i.i.i.i.i, align 1, !tbaa !313
  store i8 %i.hs, ptr %.0811.i.i.i.i.i.i.i.i.i, align 1, !tbaa !313
  %i.ht = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i, i64 1
  %i.hu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 1
  %i.hv = load i8, ptr %i.ht, align 1, !tbaa !313
  store i8 %i.hv, ptr %i.hu, align 1, !tbaa !313
  %i.hw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i, i64 2
  %i.hx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 2
  %i.hy = load i8, ptr %i.hw, align 1, !tbaa !313
  store i8 %i.hy, ptr %i.hx, align 1, !tbaa !313
  %i.hz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i, i64 3
  %i.ia = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 3
  %i.ib = load i8, ptr %i.hz, align 1, !tbaa !313
  store i8 %i.ib, ptr %i.ia, align 1, !tbaa !313
  %i.ic = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i, i64 4
  %i.id = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 4
  %i.ie = load i8, ptr %i.ic, align 1, !tbaa !313
  store i8 %i.ie, ptr %i.id, align 1, !tbaa !313
  %i.if = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i, i64 5
  %i.ig = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 5
  %i.ih = load i8, ptr %i.if, align 1, !tbaa !313
  store i8 %i.ih, ptr %i.ig, align 1, !tbaa !313
  %i.ii = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i, i64 6
  %i.ij = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 6
  %i.ik = load i8, ptr %i.ii, align 1, !tbaa !313
  store i8 %i.ik, ptr %i.ij, align 1, !tbaa !313
  %i.il = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i, i64 7 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 7
  %i.in = load i8, ptr %i.il, align 1, !tbaa !313
  store i8 %i.in, ptr %i.im, align 1, !tbaa !313
  %i.io = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i, i64 8
  %i.ip = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 8
  %exitcond.not.7 = icmp eq ptr %i.il, %scevgep172
  br i1 %exitcond.not.7, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIPhPcEEvT_S5_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !2243

_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIPhPcEEvT_S5_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre8.i = load i64, ptr %i.di, align 8, !tbaa !655
  br label %_ZN4llvm15SmallVectorImplIcE6appendIPhvEEvT_S4_.exit

_ZN4llvm15SmallVectorImplIcE6appendIPhvEEvT_S4_.exit: ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIPhPcEEvT_S5_T0_.exit.loopexit.i
  %i.iq = phi i64 [ %.pre8.i, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIPhPcEEvT_S5_T0_.exit.loopexit.i ], [ %i.gv, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i ]
  %i.ir = add i64 %i.iq, %i.gq                    ; 3 uses
  store i64 %i.ir, ptr %i.di, align 8, !tbaa !655
  %i.is = load i64, ptr %i.dj, align 8, !tbaa !654
  %.not.i62 = icmp ult i64 %i.ir, %i.is
  br i1 %.not.i62, label %bb.v, label %bb.u, !prof !657

bb.u:                                             ; preds = %_ZN4llvm15SmallVectorImplIcE6appendIPhvEEvT_S4_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 noundef signext 6)
  %.pre183 = load i64, ptr %i.di, align 8, !tbaa !655
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit63

bb.v:                                             ; preds = %_ZN4llvm15SmallVectorImplIcE6appendIPhvEEvT_S4_.exit
  %i.it = load ptr, ptr %12, align 8, !tbaa !653
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.ir
  store i8 6, ptr %i.iu, align 1
  %i.iv = load i64, ptr %i.di, align 8, !tbaa !655
  %i.iw = add i64 %i.iv, 1                        ; 2 uses
  store i64 %i.iw, ptr %i.di, align 8, !tbaa !655
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit63

_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit63: ; preds = %bb.u, %bb.v
  %i.ix = phi i64 [ %.pre183, %bb.u ], [ %i.iw, %bb.v ] ; 2 uses
  %i.iy = load i64, ptr %i.dj, align 8, !tbaa !654
  %.not.i64 = icmp ult i64 %i.ix, %i.iy
  br i1 %.not.i64, label %bb.x, label %bb.w, !prof !657

bb.w:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit63
  call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 noundef signext 17)
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit65

bb.x:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit63
  %i.iz = load ptr, ptr %12, align 8, !tbaa !653
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.ix
  store i8 17, ptr %i.ja, align 1
  %i.jb = load i64, ptr %i.di, align 8, !tbaa !655
  %i.jc = add i64 %i.jb, 1
  store i64 %i.jc, ptr %i.di, align 8, !tbaa !655
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit65

_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit65: ; preds = %bb.w, %bb.x
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !320
  %i.jf = shl i32 %i.je, 1
  %i.jg = zext i32 %i.jf to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit65
  %indvars.iv174 = phi i32 [ %indvars.iv.next175, %bb.y ], [ 1, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit65 ] ; 4 uses
  %.026.i69 = phi ptr [ %i.jl, %bb.y ], [ %i.a, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit65 ] ; 2 uses
  %.025.i70 = phi i64 [ %i.jj, %bb.y ], [ %i.jg, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit65 ] ; 2 uses
  %i.jh = trunc i64 %.025.i70 to i8
  %i.ji = and i8 %i.jh, 127                       ; 2 uses
  %i.jj = lshr i64 %.025.i70, 7                   ; 2 uses
  %.not.i72 = icmp samesign ugt i8 %i.ji, 63
  %i.jk = sext i1 %.not.i72 to i64
  %.not32.i73.not = icmp eq i64 %i.jj, %i.jk      ; 2 uses
  %masksel.i74 = select i1 %.not32.i73.not, i8 0, i8 -128
  %.0.i75 = or disjoint i8 %masksel.i74, %i.ji
  %i.jl = getelementptr i8, ptr %.026.i69, i64 1  ; 2 uses
  store i8 %.0.i75, ptr %.026.i69, align 1, !tbaa !313
  %indvars.iv.next175 = add i32 %indvars.iv174, 1
  br i1 %.not32.i73.not, label %_ZN4llvm13encodeSLEB128ElPhj.exit78, label %bb.y, !llvm.loop !12

_ZN4llvm13encodeSLEB128ElPhj.exit78:              ; preds = %bb.y
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = sub i64 %i.jm, %i.go
  %i.jo = and i64 %i.jn, 4294967295               ; 3 uses
  %i.jp = load i64, ptr %i.di, align 8, !tbaa !655 ; 2 uses
  %i.jq = add i64 %i.jp, %i.jo                    ; 2 uses
  %i.jr = load i64, ptr %i.dj, align 8, !tbaa !654
  %i.js = icmp ult i64 %i.jr, %i.jq
  br i1 %i.js, label %bb.z, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i79

bb.z:                                             ; preds = %_ZN4llvm13encodeSLEB128ElPhj.exit78
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull %i.dh, i64 noundef %i.jq, i64 noundef 1) #24
  %.pre.i87 = load i64, ptr %i.di, align 8, !tbaa !655
  br label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i79

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i79:  ; preds = %bb.z, %_ZN4llvm13encodeSLEB128ElPhj.exit78
  %i.jt = phi i64 [ %i.jp, %_ZN4llvm13encodeSLEB128ElPhj.exit78 ], [ %.pre.i87, %bb.z ] ; 3 uses
  %.not163 = icmp eq i64 %i.jo, 0
  br i1 %.not163, label %_ZN4llvm15SmallVectorImplIcE6appendIPhvEEvT_S4_.exit88, label %iter.check248

iter.check248:                                    ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i79
  %i.ju = load ptr, ptr %12, align 8, !tbaa !653  ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.jt ; 6 uses
  %scevgep173 = getelementptr i8, ptr %i.a, i64 -1
  %i.jw = zext i32 %indvars.iv174 to i64          ; 8 uses
  %scevgep176 = getelementptr i8, ptr %scevgep173, i64 %i.jw
  %min.iters.check232 = icmp ult i32 %indvars.iv174, 8
  br i1 %min.iters.check232, label %.lr.ph.i.i.i.i.i.i.i.i.i81.preheader, label %vector.memcheck230

vector.memcheck230:                               ; preds = %iter.check248
  %i.jx = ptrtoaddr ptr %i.ju to i64
  %i.jy = add i64 %i.jt, %i.jx
  %i.jz = sub i64 %i.go, %i.jy
  %diff.check231 = icmp ugt i64 %i.jz, -32
  br i1 %diff.check231, label %.lr.ph.i.i.i.i.i.i.i.i.i81.preheader, label %vector.main.loop.iter.check233

vector.main.loop.iter.check233:                   ; preds = %vector.memcheck230
  %min.iters.check234 = icmp ult i32 %indvars.iv174, 32
  br i1 %min.iters.check234, label %vec.epilog.ph252, label %vector.ph235

vector.ph235:                                     ; preds = %vector.main.loop.iter.check233
  %i.ka = and i64 %i.jw, 24
  %n.vec236 = and i64 %i.jw, 4294967264           ; 5 uses
  %i.kb = getelementptr i8, ptr %i.jv, i64 %n.vec236
  %i.kc = getelementptr i8, ptr %i.a, i64 %n.vec236
  br label %vector.body237

vector.body237:                                   ; preds = %vector.ph235, %vector.body237
  %index238 = phi i64 [ 0, %vector.ph235 ], [ %index.next243, %vector.body237 ] ; 3 uses
  %next.gep239 = getelementptr i8, ptr %i.jv, i64 %index238 ; 2 uses
  %next.gep240 = getelementptr i8, ptr %i.a, i64 %index238 ; 2 uses
  %i.kd = getelementptr i8, ptr %next.gep240, i64 16
  %wide.load241 = load <16 x i8>, ptr %next.gep240, align 16, !tbaa !313
  %wide.load242 = load <16 x i8>, ptr %i.kd, align 16, !tbaa !313
  %i.ke = getelementptr i8, ptr %next.gep239, i64 16
  store <16 x i8> %wide.load241, ptr %next.gep239, align 1, !tbaa !313
  store <16 x i8> %wide.load242, ptr %i.ke, align 1, !tbaa !313
  %index.next243 = add nuw i64 %index238, 32      ; 2 uses
  %i.kf = icmp eq i64 %index.next243, %n.vec236
  br i1 %i.kf, label %middle.block244, label %vector.body237, !llvm.loop !2244

middle.block244:                                  ; preds = %vector.body237
  %cmp.n245 = icmp eq i64 %n.vec236, %i.jw
  br i1 %cmp.n245, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIPhPcEEvT_S5_T0_.exit.loopexit.i85, label %vec.epilog.iter.check250

vec.epilog.iter.check250:                         ; preds = %middle.block244
  %min.epilog.iters.check251 = icmp eq i64 %i.ka, 0
  br i1 %min.epilog.iters.check251, label %.lr.ph.i.i.i.i.i.i.i.i.i81.preheader, label %vec.epilog.ph252, !prof !660

vec.epilog.ph252:                                 ; preds = %vector.main.loop.iter.check233, %vec.epilog.iter.check250
  %vec.epilog.resume.val246 = phi i64 [ %n.vec236, %vec.epilog.iter.check250 ], [ 0, %vector.main.loop.iter.check233 ]
  %n.vec253 = and i64 %i.jw, 4294967288           ; 4 uses
  %i.kg = getelementptr i8, ptr %i.jv, i64 %n.vec253
  %i.kh = getelementptr i8, ptr %i.a, i64 %n.vec253
  br label %vec.epilog.vector.body254

vec.epilog.vector.body254:                        ; preds = %vec.epilog.vector.body254, %vec.epilog.ph252
  %index255 = phi i64 [ %vec.epilog.resume.val246, %vec.epilog.ph252 ], [ %index.next259, %vec.epilog.vector.body254 ] ; 3 uses
  %next.gep256 = getelementptr i8, ptr %i.jv, i64 %index255
  %next.gep257 = getelementptr i8, ptr %i.a, i64 %index255
  %wide.load258 = load <8 x i8>, ptr %next.gep257, align 8, !tbaa !313
  store <8 x i8> %wide.load258, ptr %next.gep256, align 1, !tbaa !313
  %index.next259 = add nuw i64 %index255, 8       ; 2 uses
  %i.ki = icmp eq i64 %index.next259, %n.vec253
  br i1 %i.ki, label %vec.epilog.middle.block260, label %vec.epilog.vector.body254, !llvm.loop !2245

vec.epilog.middle.block260:                       ; preds = %vec.epilog.vector.body254
  %cmp.n261 = icmp eq i64 %n.vec253, %i.jw
  br i1 %cmp.n261, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIPhPcEEvT_S5_T0_.exit.loopexit.i85, label %.lr.ph.i.i.i.i.i.i.i.i.i81.preheader

.lr.ph.i.i.i.i.i.i.i.i.i81.preheader:             ; preds = %iter.check248, %vector.memcheck230, %vec.epilog.iter.check250, %vec.epilog.middle.block260
  %.0811.i.i.i.i.i.i.i.i.i83.ph = phi ptr [ %i.jv, %iter.check248 ], [ %i.jv, %vector.memcheck230 ], [ %i.kb, %vec.epilog.iter.check250 ], [ %i.kg, %vec.epilog.middle.block260 ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i.i84.ph = phi ptr [ %i.a, %iter.check248 ], [ %i.a, %vector.memcheck230 ], [ %i.kc, %vec.epilog.iter.check250 ], [ %i.kh, %vec.epilog.middle.block260 ] ; 3 uses
  %.0910.i.i.i.i.i.i.i.i.i84.ph302 = ptrtoaddr ptr %.0910.i.i.i.i.i.i.i.i.i84.ph to i64 ; 2 uses
  %i.kj = sub i64 %i.jw, %.0910.i.i.i.i.i.i.i.i.i84.ph302
  %xtraiter303 = and i64 %i.kj, 7                 ; 2 uses
  %lcmp.mod304.not = icmp eq i64 %xtraiter303, 0
  br i1 %lcmp.mod304.not, label %.lr.ph.i.i.i.i.i.i.i.i.i81.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i81.prol

.lr.ph.i.i.i.i.i.i.i.i.i81.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i81.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i81.prol
  %.0811.i.i.i.i.i.i.i.i.i83.prol = phi ptr [ %i.km, %.lr.ph.i.i.i.i.i.i.i.i.i81.prol ], [ %.0811.i.i.i.i.i.i.i.i.i83.ph, %.lr.ph.i.i.i.i.i.i.i.i.i81.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i.i84.prol = phi ptr [ %i.kl, %.lr.ph.i.i.i.i.i.i.i.i.i81.prol ], [ %.0910.i.i.i.i.i.i.i.i.i84.ph, %.lr.ph.i.i.i.i.i.i.i.i.i81.preheader ] ; 2 uses
  %prol.iter305 = phi i64 [ %prol.iter305.next, %.lr.ph.i.i.i.i.i.i.i.i.i81.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i81.preheader ]
  %i.kk = load i8, ptr %.0910.i.i.i.i.i.i.i.i.i84.prol, align 1, !tbaa !313
  store i8 %i.kk, ptr %.0811.i.i.i.i.i.i.i.i.i83.prol, align 1, !tbaa !313
  %i.kl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i84.prol, i64 1 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i83.prol, i64 1 ; 2 uses
  %prol.iter305.next = add i64 %prol.iter305, 1   ; 2 uses
  %prol.iter305.cmp.not = icmp eq i64 %prol.iter305.next, %xtraiter303
  br i1 %prol.iter305.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i81.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i81.prol, !llvm.loop !2246

.lr.ph.i.i.i.i.i.i.i.i.i81.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i81.prol, %.lr.ph.i.i.i.i.i.i.i.i.i81.preheader
  %.0811.i.i.i.i.i.i.i.i.i83.unr = phi ptr [ %.0811.i.i.i.i.i.i.i.i.i83.ph, %.lr.ph.i.i.i.i.i.i.i.i.i81.preheader ], [ %i.km, %.lr.ph.i.i.i.i.i.i.i.i.i81.prol ]
  %.0910.i.i.i.i.i.i.i.i.i84.unr = phi ptr [ %.0910.i.i.i.i.i.i.i.i.i84.ph, %.lr.ph.i.i.i.i.i.i.i.i.i81.preheader ], [ %i.kl, %.lr.ph.i.i.i.i.i.i.i.i.i81.prol ]
  %i.kn = add i64 %i.go, %i.jw
  %i.ko = sub i64 %.0910.i.i.i.i.i.i.i.i.i84.ph302, %i.kn
  %i.kp = icmp ugt i64 %i.ko, -8
  br i1 %i.kp, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIPhPcEEvT_S5_T0_.exit.loopexit.i85, label %.lr.ph.i.i.i.i.i.i.i.i.i81

.lr.ph.i.i.i.i.i.i.i.i.i81:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i81.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i81
  %.0811.i.i.i.i.i.i.i.i.i83 = phi ptr [ %i.ln, %.lr.ph.i.i.i.i.i.i.i.i.i81 ], [ %.0811.i.i.i.i.i.i.i.i.i83.unr, %.lr.ph.i.i.i.i.i.i.i.i.i81.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i.i.i.i84 = phi ptr [ %i.lm, %.lr.ph.i.i.i.i.i.i.i.i.i81 ], [ %.0910.i.i.i.i.i.i.i.i.i84.unr, %.lr.ph.i.i.i.i.i.i.i.i.i81.prol.loopexit ] ; 9 uses
  %i.kq = load i8, ptr %.0910.i.i.i.i.i.i.i.i.i84, align 1, !tbaa !313
  store i8 %i.kq, ptr %.0811.i.i.i.i.i.i.i.i.i83, align 1, !tbaa !313
  %i.kr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i84, i64 1
  %i.ks = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i83, i64 1
  %i.kt = load i8, ptr %i.kr, align 1, !tbaa !313
  store i8 %i.kt, ptr %i.ks, align 1, !tbaa !313
  %i.ku = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i84, i64 2
  %i.kv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i83, i64 2
  %i.kw = load i8, ptr %i.ku, align 1, !tbaa !313
  store i8 %i.kw, ptr %i.kv, align 1, !tbaa !313
  %i.kx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i84, i64 3
  %i.ky = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i83, i64 3
  %i.kz = load i8, ptr %i.kx, align 1, !tbaa !313
  store i8 %i.kz, ptr %i.ky, align 1, !tbaa !313
  %i.la = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i84, i64 4
  %i.lb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i83, i64 4
  %i.lc = load i8, ptr %i.la, align 1, !tbaa !313
  store i8 %i.lc, ptr %i.lb, align 1, !tbaa !313
  %i.ld = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i84, i64 5
  %i.le = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i83, i64 5
  %i.lf = load i8, ptr %i.ld, align 1, !tbaa !313
  store i8 %i.lf, ptr %i.le, align 1, !tbaa !313
  %i.lg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i84, i64 6
  %i.lh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i83, i64 6
  %i.li = load i8, ptr %i.lg, align 1, !tbaa !313
  store i8 %i.li, ptr %i.lh, align 1, !tbaa !313
  %i.lj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i84, i64 7 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i83, i64 7
  %i.ll = load i8, ptr %i.lj, align 1, !tbaa !313
  store i8 %i.ll, ptr %i.lk, align 1, !tbaa !313
  %i.lm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i84, i64 8
  %i.ln = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i83, i64 8
  %exitcond177.not.7 = icmp eq ptr %i.lj, %scevgep176
  br i1 %exitcond177.not.7, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIPhPcEEvT_S5_T0_.exit.loopexit.i85, label %.lr.ph.i.i.i.i.i.i.i.i.i81, !llvm.loop !2247

_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIPhPcEEvT_S5_T0_.exit.loopexit.i85: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i81.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i81, %vec.epilog.middle.block260, %middle.block244
  %.pre8.i86 = load i64, ptr %i.di, align 8, !tbaa !655
  br label %_ZN4llvm15SmallVectorImplIcE6appendIPhvEEvT_S4_.exit88

_ZN4llvm15SmallVectorImplIcE6appendIPhvEEvT_S4_.exit88: ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i79, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIPhPcEEvT_S5_T0_.exit.loopexit.i85
  %i.lo = phi i64 [ %.pre8.i86, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIPhPcEEvT_S5_T0_.exit.loopexit.i85 ], [ %i.jt, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i79 ]
  %i.lp = add i64 %i.lo, %i.jo                    ; 3 uses
  store i64 %i.lp, ptr %i.di, align 8, !tbaa !655
  %i.lq = load i64, ptr %i.dj, align 8, !tbaa !654
  %.not.i89 = icmp ult i64 %i.lp, %i.lq
  br i1 %.not.i89, label %bb.ab, label %bb.aa, !prof !657

bb.aa:                                            ; preds = %_ZN4llvm15SmallVectorImplIcE6appendIPhvEEvT_S4_.exit88
  call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 noundef signext 34)
  %.pre184 = load i64, ptr %i.di, align 8, !tbaa !655
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit92

bb.ab:                                            ; preds = %_ZN4llvm15SmallVectorImplIcE6appendIPhvEEvT_S4_.exit88
  %i.lr = load ptr, ptr %12, align 8, !tbaa !653
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lp
  store i8 34, ptr %i.ls, align 1
  %i.lt = load i64, ptr %i.di, align 8, !tbaa !655
  %i.lu = add i64 %i.lt, 1                        ; 2 uses
  store i64 %i.lu, ptr %i.di, align 8, !tbaa !655
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit92

_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit92: ; preds = %bb.aa, %bb.ab
  %i.lv = phi i64 [ %.pre184, %bb.aa ], [ %i.lu, %bb.ab ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.lw = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 5 uses
  store ptr %i.lw, ptr %13, align 8, !tbaa !653
  %i.lx = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 7 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store i64 64, ptr %i.ly, align 8, !tbaa !654
  store i8 15, ptr %i.lw, align 8
  store i64 1, ptr %i.lx, align 8, !tbaa !655
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit92
  %indvars.iv179 = phi i32 [ %indvars.iv.next180, %bb.ac ], [ 1, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit92 ] ; 4 uses
  %.026.i96 = phi ptr [ %i.md, %bb.ac ], [ %i.a, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit92 ] ; 2 uses
  %.025.i97 = phi i64 [ %i.mb, %bb.ac ], [ %i.lv, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit92 ] ; 2 uses
  %i.lz = trunc i64 %.025.i97 to i8
  %i.ma = and i8 %i.lz, 127                       ; 2 uses
  %i.mb = ashr i64 %.025.i97, 7                   ; 2 uses
  %.not.i99 = icmp samesign ugt i8 %i.ma, 63
  %i.mc = sext i1 %.not.i99 to i64
  %.not32.i100.not = icmp eq i64 %i.mb, %i.mc     ; 2 uses
  %masksel.i101 = select i1 %.not32.i100.not, i8 0, i8 -128
  %.0.i102 = or disjoint i8 %masksel.i101, %i.ma
  %i.md = getelementptr i8, ptr %.026.i96, i64 1  ; 2 uses
  store i8 %.0.i102, ptr %.026.i96, align 1, !tbaa !313
  %indvars.iv.next180 = add i32 %indvars.iv179, 1
  br i1 %.not32.i100.not, label %_ZN4llvm13encodeSLEB128ElPhj.exit105, label %bb.ac, !llvm.loop !12

_ZN4llvm13encodeSLEB128ElPhj.exit105:             ; preds = %bb.ac
  %i.me = ptrtoint ptr %i.md to i64
  %i.mf = sub i64 %i.me, %i.go
  %i.mg = and i64 %i.mf, 4294967295               ; 4 uses
  %i.mh = icmp samesign ugt i64 %i.mg, 63
  br i1 %i.mh, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i106.thread, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i106

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i106.thread: ; preds = %_ZN4llvm13encodeSLEB128ElPhj.exit105
  %i.mi = add nuw nsw i64 %i.mg, 1
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull %i.lw, i64 noundef %i.mi, i64 noundef 1) #24
  %.pre.i114 = load i64, ptr %i.lx, align 8, !tbaa !655
  br label %iter.check282

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i106: ; preds = %_ZN4llvm13encodeSLEB128ElPhj.exit105
  %.not164 = icmp eq i64 %i.mg, 0
  br i1 %.not164, label %_ZN4llvm15SmallVectorImplIcE6appendIPhvEEvT_S4_.exit115, label %iter.check282

iter.check282:                                    ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i106.thread, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i106
  %i.mj = phi i64 [ %.pre.i114, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i106.thread ], [ 1, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i106 ] ; 2 uses
  %i.mk = load ptr, ptr %13, align 8, !tbaa !653  ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.mj ; 6 uses
  %scevgep178 = getelementptr i8, ptr %i.a, i64 -1
  %i.mm = zext i32 %indvars.iv179 to i64          ; 8 uses
  %scevgep181 = getelementptr i8, ptr %scevgep178, i64 %i.mm
  %min.iters.check266 = icmp ult i32 %indvars.iv179, 8
  br i1 %min.iters.check266, label %.lr.ph.i.i.i.i.i.i.i.i.i108.preheader, label %vector.memcheck264

vector.memcheck264:                               ; preds = %iter.check282
  %i.mn = ptrtoaddr ptr %i.mk to i64
  %i.mo = add i64 %i.mj, %i.mn
  %i.mp = sub i64 %i.go, %i.mo
  %diff.check265 = icmp ugt i64 %i.mp, -32
  br i1 %diff.check265, label %.lr.ph.i.i.i.i.i.i.i.i.i108.preheader, label %vector.main.loop.iter.check267

vector.main.loop.iter.check267:                   ; preds = %vector.memcheck264
  %min.iters.check268 = icmp ult i32 %indvars.iv179, 32
  br i1 %min.iters.check268, label %vec.epilog.ph286, label %vector.ph269

vector.ph269:                                     ; preds = %vector.main.loop.iter.check267
  %i.mq = and i64 %i.mm, 24
  %n.vec270 = and i64 %i.mm, 4294967264           ; 5 uses
  %i.mr = getelementptr i8, ptr %i.ml, i64 %n.vec270
  %i.ms = getelementptr i8, ptr %i.a, i64 %n.vec270
  br label %vector.body271

vector.body271:                                   ; preds = %vector.ph269, %vector.body271
  %index272 = phi i64 [ 0, %vector.ph269 ], [ %index.next277, %vector.body271 ] ; 3 uses
  %next.gep273 = getelementptr i8, ptr %i.ml, i64 %index272 ; 2 uses
  %next.gep274 = getelementptr i8, ptr %i.a, i64 %index272 ; 2 uses
  %i.mt = getelementptr i8, ptr %next.gep274, i64 16
  %wide.load275 = load <16 x i8>, ptr %next.gep274, align 16, !tbaa !313
  %wide.load276 = load <16 x i8>, ptr %i.mt, align 16, !tbaa !313
  %i.mu = getelementptr i8, ptr %next.gep273, i64 16
  store <16 x i8> %wide.load275, ptr %next.gep273, align 1, !tbaa !313
  store <16 x i8> %wide.load276, ptr %i.mu, align 1, !tbaa !313
  %index.next277 = add nuw i64 %index272, 32      ; 2 uses
  %i.mv = icmp eq i64 %index.next277, %n.vec270
  br i1 %i.mv, label %middle.block278, label %vector.body271, !llvm.loop !2248

middle.block278:                                  ; preds = %vector.body271
  %cmp.n279 = icmp eq i64 %n.vec270, %i.mm
  br i1 %cmp.n279, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIPhPcEEvT_S5_T0_.exit.loopexit.i112, label %vec.epilog.iter.check284

vec.epilog.iter.check284:                         ; preds = %middle.block278
  %min.epilog.iters.check285 = icmp eq i64 %i.mq, 0
  br i1 %min.epilog.iters.check285, label %.lr.ph.i.i.i.i.i.i.i.i.i108.preheader, label %vec.epilog.ph286, !prof !660

vec.epilog.ph286:                                 ; preds = %vector.main.loop.iter.check267, %vec.epilog.iter.check284
  %vec.epilog.resume.val280 = phi i64 [ %n.vec270, %vec.epilog.iter.check284 ], [ 0, %vector.main.loop.iter.check267 ]
  %n.vec287 = and i64 %i.mm, 4294967288           ; 4 uses
  %i.mw = getelementptr i8, ptr %i.ml, i64 %n.vec287
  %i.mx = getelementptr i8, ptr %i.a, i64 %n.vec287
  br label %vec.epilog.vector.body288

vec.epilog.vector.body288:                        ; preds = %vec.epilog.vector.body288, %vec.epilog.ph286
  %index289 = phi i64 [ %vec.epilog.resume.val280, %vec.epilog.ph286 ], [ %index.next293, %vec.epilog.vector.body288 ] ; 3 uses
  %next.gep290 = getelementptr i8, ptr %i.ml, i64 %index289
  %next.gep291 = getelementptr i8, ptr %i.a, i64 %index289
  %wide.load292 = load <8 x i8>, ptr %next.gep291, align 8, !tbaa !313
  store <8 x i8> %wide.load292, ptr %next.gep290, align 1, !tbaa !313
  %index.next293 = add nuw i64 %index289, 8       ; 2 uses
  %i.my = icmp eq i64 %index.next293, %n.vec287
  br i1 %i.my, label %vec.epilog.middle.block294, label %vec.epilog.vector.body288, !llvm.loop !2249

vec.epilog.middle.block294:                       ; preds = %vec.epilog.vector.body288
  %cmp.n295 = icmp eq i64 %n.vec287, %i.mm
  br i1 %cmp.n295, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIPhPcEEvT_S5_T0_.exit.loopexit.i112, label %.lr.ph.i.i.i.i.i.i.i.i.i108.preheader

.lr.ph.i.i.i.i.i.i.i.i.i108.preheader:            ; preds = %iter.check282, %vector.memcheck264, %vec.epilog.iter.check284, %vec.epilog.middle.block294
  %.0811.i.i.i.i.i.i.i.i.i110.ph = phi ptr [ %i.ml, %iter.check282 ], [ %i.ml, %vector.memcheck264 ], [ %i.mr, %vec.epilog.iter.check284 ], [ %i.mw, %vec.epilog.middle.block294 ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i.i111.ph = phi ptr [ %i.a, %iter.check282 ], [ %i.a, %vector.memcheck264 ], [ %i.ms, %vec.epilog.iter.check284 ], [ %i.mx, %vec.epilog.middle.block294 ] ; 3 uses
  %.0910.i.i.i.i.i.i.i.i.i111.ph306 = ptrtoaddr ptr %.0910.i.i.i.i.i.i.i.i.i111.ph to i64 ; 2 uses
  %i.mz = sub i64 %i.mm, %.0910.i.i.i.i.i.i.i.i.i111.ph306
  %xtraiter307 = and i64 %i.mz, 7                 ; 2 uses
  %lcmp.mod308.not = icmp eq i64 %xtraiter307, 0
  br i1 %lcmp.mod308.not, label %.lr.ph.i.i.i.i.i.i.i.i.i108.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i108.prol

.lr.ph.i.i.i.i.i.i.i.i.i108.prol:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i108.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i108.prol
  %.0811.i.i.i.i.i.i.i.i.i110.prol = phi ptr [ %i.nc, %.lr.ph.i.i.i.i.i.i.i.i.i108.prol ], [ %.0811.i.i.i.i.i.i.i.i.i110.ph, %.lr.ph.i.i.i.i.i.i.i.i.i108.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i.i111.prol = phi ptr [ %i.nb, %.lr.ph.i.i.i.i.i.i.i.i.i108.prol ], [ %.0910.i.i.i.i.i.i.i.i.i111.ph, %.lr.ph.i.i.i.i.i.i.i.i.i108.preheader ] ; 2 uses
  %prol.iter309 = phi i64 [ %prol.iter309.next, %.lr.ph.i.i.i.i.i.i.i.i.i108.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i108.preheader ]
  %i.na = load i8, ptr %.0910.i.i.i.i.i.i.i.i.i111.prol, align 1, !tbaa !313
  store i8 %i.na, ptr %.0811.i.i.i.i.i.i.i.i.i110.prol, align 1, !tbaa !313
end_hunk_1
