Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3DfgBreakCycles?download=true
inline.NumInlined: 4049
inline.NumDeleted: 1674
begin_hunk_0_@_ZNSt17_Function_handlerIFbR9DfgVertexjEZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedEUlS1_jE_E9_M_invokeERKSt9_Any_dataS1_Oj:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbR9DfgVertexjEZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedEUlS1_jE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedEUlR9DfgVertexjE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedEUlR9DfgVertexjE_, ptr %0, align 8, !tbaa !188
  br label %_ZNSt14_Function_base13_Base_managerIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedEUlR9DfgVertexjE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !189
  store ptr %i.a, ptr %0, align 8, !tbaa !189
  br label %_ZNSt14_Function_base13_Base_managerIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedEUlR9DfgVertexjE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !189
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !554
  store ptr %i.c, ptr %0, align 8, !tbaa !189
  br label %_ZNSt14_Function_base13_Base_managerIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedEUlR9DfgVertexjE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !189    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedEUlR9DfgVertexjE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #25
  br label %_ZNSt14_Function_base13_Base_managerIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedEUlR9DfgVertexjE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedEUlR9DfgVertexjE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedENKUlR9DfgVertexjE_clES4_j(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !556  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !240, !nonnull !94, !align !121 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !246
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %_ZNK9DfgVertex5widthEv.exit, label %bb.b, !prof !165

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.30, i32 noundef 195) ; 0 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.113)
  tail call void @_ZNK9DfgVertex15v3errorEndFatalERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.i) #28
  unreachable

_ZNK9DfgVertex5widthEv.exit:                      ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !247
  %i.l = add i32 %2, -1
  %i.m = add i32 %i.l, %i.k                       ; 4 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !557, !nonnull !94, !align !121 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !558  ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !285
  %.not.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK9DfgVertex5widthEv.exit
  store ptr %1, ptr %i.p, align 8, !tbaa !282
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 %2, ptr %i.s, align 8, !tbaa !281
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 %i.m, ptr %i.t, align 4, !tbaa !280
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.u, ptr %i.o, align 8, !tbaa !558
  br label %_ZNSt6vectorIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSaIS4_EE12emplace_backIJP9DfgVertexRjRKjEEERS4_DpOT_.exit

bb.d:                                             ; preds = %_ZNK9DfgVertex5widthEv.exit
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !284  ; 4 uses
  %i.w = ptrtoint ptr %i.p to i64
  %i.x = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.y = sub i64 %i.w, %i.x                       ; 5 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775792
  br i1 %i.z, label %bb.e, label %_ZNKSt6vectorIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #28
  unreachable

_ZNKSt6vectorIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.aa = ashr exact i64 %i.y, 4                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 576460752303423487)
  %i.ae = select i1 %i.ac, i64 576460752303423487, i64 %i.ad ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 4
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #29 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.y ; 4 uses
  store ptr %1, ptr %i.ah, align 8, !tbaa !282
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 %2, ptr %i.ai, align 8, !tbaa !281
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 %i.m, ptr %i.aj, align 4, !tbaa !280
  %i.ak = icmp sgt i64 %i.y, 0
  br i1 %i.ak, label %bb.f, label %_ZNSt6vectorIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit28.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSaIS4_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.v, i64 %i.y, i1 false)
  br label %_ZNSt6vectorIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit28.i.i

_ZNSt6vectorIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit28.i.i: ; preds = %bb.f, %_ZNKSt6vectorIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.not.i29.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i29.i.i, label %_ZNSt6vectorIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSaIS4_EE17_M_realloc_insertIJP9DfgVertexRjRKjEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit28.i.i
  %i.am = load ptr, ptr %i.q, align 8, !tbaa !285
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.ao) #25
  br label %_ZNSt6vectorIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSaIS4_EE17_M_realloc_insertIJP9DfgVertexRjRKjEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSaIS4_EE17_M_realloc_insertIJP9DfgVertexRjRKjEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit28.i.i
  store ptr %i.ag, ptr %i.n, align 8, !tbaa !284
  store ptr %i.al, ptr %i.o, align 8, !tbaa !558
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.ap, ptr %i.q, align 8, !tbaa !285
  br label %_ZNSt6vectorIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSaIS4_EE12emplace_backIJP9DfgVertexRjRKjEEERS4_DpOT_.exit

_ZNSt6vectorIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSaIS4_EE12emplace_backIJP9DfgVertexRjRKjEEERS4_DpOT_.exit: ; preds = %bb.c, %_ZNSt6vectorIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSaIS4_EE17_M_realloc_insertIJP9DfgVertexRjRKjEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !250 ; 3 uses
  %.not = icmp ult i32 %i.ar, %2
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !251 ; 3 uses
  %.not8 = icmp ult i32 %i.m, %.pre
  %or.cond = select i1 %.not, i1 true, i1 %.not8
  br i1 %or.cond, label %_ZNSt6vectorIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSaIS4_EE12emplace_backIJP9DfgVertexRjRKjEEERS4_DpOT_.exit._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSaIS4_EE12emplace_backIJP9DfgVertexRjRKjEEERS4_DpOT_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !559, !nonnull !94
  store i8 0, ptr %i.at, align 1, !tbaa !153
  br label %_ZNSt6vectorIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSaIS4_EE12emplace_backIJP9DfgVertexRjRKjEEERS4_DpOT_.exit._crit_edge

_ZNSt6vectorIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSaIS4_EE12emplace_backIJP9DfgVertexRjRKjEEERS4_DpOT_.exit._crit_edge: ; preds = %_ZNSt6vectorIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSaIS4_EE12emplace_backIJP9DfgVertexRjRKjEEERS4_DpOT_.exit, %bb.h
  %i.au = icmp uge i32 %.pre, %2
  %i.av = icmp uge i32 %i.m, %i.ar
  %or.cond.not = select i1 %i.au, i1 %i.av, i1 false ; 2 uses
  br i1 %or.cond.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSaIS4_EE12emplace_backIJP9DfgVertexRjRKjEEERS4_DpOT_.exit._crit_edge
  %i.aw = sub i32 %i.ar, %2
  %i.ax = sub nuw i32 %.pre, %2
  %i.ay = tail call noundef ptr @_ZN16V3DfgBreakCycles11TraceDriver5traceEP9DfgVertexjj(ptr noundef nonnull align 8 dereferenceable(120) %i.b, ptr noundef nonnull %1, i32 noundef %i.aw, i32 noundef %i.ax)
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !236
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSaIS4_EE12emplace_backIJP9DfgVertexRjRKjEEERS4_DpOT_.exit._crit_edge, %bb.i
  ret i1 %or.cond.not
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %struct.Driver, align 8             ; 4 uses
  %4 = alloca %struct.Driver, align 8             ; 4 uses
  %5 = alloca %struct.Driver, align 8             ; 4 uses
  %6 = alloca %struct.Driver, align 8             ; 4 uses
  %7 = alloca %struct.Driver, align 8             ; 4 uses
  %8 = alloca %struct.Driver, align 8             ; 4 uses
  %9 = alloca %struct.Driver, align 8             ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i24 = freeze i64 %i.c                      ; 2 uses
  %i.d = ashr exact i64 %.fr.i24, 4               ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph48

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEET_SI_SI_T0_.exit
  %i.j = icmp eq i64 %i.ce, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph48, !llvm.loop !560

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i27.lcssa = phi i64 [ %.fr.i24, %.lr.ph ], [ %.fr.i, %bb.b ] ; 3 uses
  %storemerge25.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i27.lcssa, 4               ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i27.lcssa, 16
  %i.q = icmp eq i64 %i.p, 0
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_SJ_T1_T2_.exit.i.i, %._crit_edge
  %.010.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.as, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_SJ_T1_T2_.exit.i.i ] ; 8 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %.010.i.i ; 2 uses
  %.sroa.03.0.copyload.i.i = load ptr, ptr %i.u, align 8, !tbaa !147
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8 ; 2 uses
  %i.v = icmp slt i64 %.010.i.i, %i.o
  br i1 %i.v, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.037.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.010.i.i, %bb.c ] ; 2 uses
  %i.w = shl i64 %.037.i.i.i, 1                   ; 2 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds [16 x i8], ptr %0, i64 %i.x
  %i.z = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !281
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !281
  %i.af = icmp ult i32 %i.ac, %i.ae
  %spec.select.i.i.i = select i1 %i.af, i64 %i.z, i64 %i.x ; 4 uses
  %i.ag = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.ah = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !tbaa.struct !341
  %i.ai = icmp slt i64 %spec.select.i.i.i, %i.o
  br i1 %i.ai, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !561

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.010.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.aj = icmp eq i64 %.0.lcssa.i.i.i, %i.m
  %or.cond.i.i = select i1 %i.q, i1 %i.aj, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !341
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ak = icmp sgt i64 %.1.i.i.i, %.010.i.i
  br i1 %i.ak, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_SJ_T1_T2_.exit.i.i

.lr.ph.i.i.i.i17:                                 ; preds = %bb.e
  %.sroa.2.8.extract.trunc.i.i.i.i = trunc i64 %.sroa.4.0.copyload.i.i to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i17
  %.019.i.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i.i17 ], [ %.0920.i.i.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i.i.i = add nsw i64 %.019.i.i.i.i, -1
  %.0920.i.i.i.i = sdiv i64 %.0920.in.i.i.i.i, 2  ; 4 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0920.i.i.i.i ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !281
  %i.ao = icmp ult i32 %i.an, %.sroa.2.8.extract.trunc.i.i.i.i
  br i1 %i.ao, label %bb.g, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_SJ_T1_T2_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.019.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !341
  %i.aq = icmp sgt i64 %.0920.i.i.i.i, %.010.i.i
  br i1 %i.aq, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_SJ_T1_T2_.exit.i.i, !llvm.loop !562

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_SJ_T1_T2_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i16 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0920.i.i.i.i, %bb.g ], [ %.019.i.i.i.i, %bb.f ]
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i16 ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i, ptr %i.ar, align 8, !tbaa !147
  %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i, align 8
  %.not.i.i = icmp eq i64 %.010.i.i, 0
  %i.as = add nsw i64 %.010.i.i, -1
  br i1 %.not.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_T0_.exit, label %bb.c, !llvm.loop !563

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_T0_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_SJ_T1_T2_.exit.i.i
  %10 = icmp sgt i64 %.fr.i27.lcssa, 16
  br i1 %10, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_T0_.exit

.lr.ph.i.i:                                       ; preds = %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.at, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_RT0_.exit.i.i ], [ %storemerge25.lcssa, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_T0_.exit ] ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -16 ; 4 uses
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %i.at, align 8, !tbaa !147
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !341
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.a                     ; 3 uses
  %i.aw = ashr exact i64 %i.av, 4                 ; 3 uses
  %i.ax = add nsw i64 %i.aw, -1
  %i.ay = lshr i64 %i.ax, 1
  %i.az = icmp sgt i64 %i.aw, 2
  br i1 %i.az, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.ba = shl i64 %.037.i.i.i.i, 1                ; 2 uses
  %i.bb = add i64 %i.ba, 2                        ; 2 uses
  %i.bc = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bb
  %i.bd = or disjoint i64 %i.ba, 1                ; 2 uses
  %i.be = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !281
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !281
  %i.bj = icmp ult i32 %i.bg, %i.bi
  %spec.select.i.i.i.i = select i1 %i.bj, i64 %i.bd, i64 %i.bb ; 4 uses
  %i.bk = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bl = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i64 16, i1 false), !tbaa.struct !341
  %i.bm = icmp slt i64 %spec.select.i.i.i.i, %i.ay
  br i1 %i.bm, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !561

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.bn = and i64 %i.av, 16
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bp = add nsw i64 %i.aw, -2
  %i.bq = ashr exact i64 %i.bp, 1
  %i.br = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bq
  br i1 %i.br, label %.thread.i.i.i, label %bb.i

.thread.i.i.i:                                    ; preds = %bb.h
  %i.bs = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bt = or disjoint i64 %i.bs, 1                ; 2 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bt
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false), !tbaa.struct !341
  br label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.thread.i.i.i
  %.1.i9.i.i.i = phi i64 [ %i.bt, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.i ]
  %.sroa.2.8.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.4.0.copyload.i.i.i to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i9.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i1011.i.i.i, %bb.k ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i1011.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0920.i.i1011.i.i.i ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !281
  %i.bz = icmp ult i32 %i.by, %.sroa.2.8.extract.trunc.i.i.i.i.i
  br i1 %i.bz, label %bb.k, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_RT0_.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds [16 x i8], ptr %0, i64 %.019.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false), !tbaa.struct !341
  %.not12.i.i.i = icmp eq i64 %.0920.i.i1011.i.i.i, 0
  br i1 %.not12.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_RT0_.exit.i.i, label %bb.j, !llvm.loop !562

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_RT0_.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.i ], [ %.019.i.i.i.i.i, %bb.j ], [ 0, %bb.k ]
  %i.cb = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i.i, ptr %i.cb, align 8, !tbaa !147
  %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %.sroa.4.0.copyload.i.i.i, ptr %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 8
  %i.cc = icmp sgt i64 %i.av, 16
  br i1 %i.cc, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_T0_.exit, !llvm.loop !564

.lr.ph48:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2547 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02646 = phi i64 [ %i.ce, %bb.b ], [ %2, %.lr.ph ]
  %i.cd = phi i64 [ %i.dd, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ce = add nsw i64 %.02646, -1                 ; 3 uses
  %i.cf = lshr i64 %i.cd, 1
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cf ; 5 uses
  %i.ch = getelementptr inbounds i8, ptr %storemerge2547, i64 -16 ; 4 uses
  %i.ci = load i32, ptr %i.g, align 8, !tbaa !281 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !281 ; 3 uses
  %i.cl = icmp ult i32 %i.ci, %i.ck
  %i.cm = getelementptr inbounds i8, ptr %storemerge2547, i64 -8
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !281 ; 4 uses
  br i1 %i.cl, label %bb.l, label %bb.q

bb.l:                                             ; preds = %.lr.ph48
  %i.co = icmp ult i32 %i.ck, %i.cn
  br i1 %i.co, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !341
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %i.cp = icmp ult i32 %i.ci, %i.cn
  br i1 %i.cp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !341
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !341
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.q:                                             ; preds = %.lr.ph48
  %i.cq = icmp ult i32 %i.ci, %i.cn
  br i1 %i.cq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !341
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  %i.cr = icmp ult i32 %i.ck, %i.cn
  br i1 %i.cr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !341
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !341
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_SI_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_SI_T0_.exit.i.preheader: ; preds = %bb.u, %bb.t, %bb.r, %bb.p, %bb.o, %bb.m
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_SI_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_SI_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_SI_T0_.exit.i.preheader, %bb.x
  %.sroa.010.0.i.i = phi ptr [ %i.cw, %bb.x ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_SI_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.x ], [ %storemerge2547, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_SI_T0_.exit.i.preheader ]
  %i.cs = load i32, ptr %i.h, align 8, !tbaa !281 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_SI_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_SI_T0_.exit.i ], [ %i.cw, %bb.v ] ; 9 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !281
  %i.cv = icmp ult i32 %i.cu, %i.cs
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16 ; 2 uses
  br i1 %i.cv, label %bb.v, label %.preheader.i.i, !llvm.loop !565

.preheader.i.i:                                   ; preds = %bb.v, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.v ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !281
  %i.cz = icmp ult i32 %i.cs, %i.cy
  br i1 %i.cz, label %.preheader.i.i, label %bb.w, !llvm.loop !566

bb.w:                                             ; preds = %.preheader.i.i
  %i.da = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.da, label %bb.x, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEET_SI_SI_T0_.exit

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.1.i.i, i64 16, i1 false), !tbaa.struct !341
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_SI_T0_.exit.i, !llvm.loop !567

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEET_SI_SI_T0_.exit: ; preds = %bb.w
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2547, i64 noundef %i.ce)
  %i.db = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.dc = sub i64 %i.db, %i.a
  %.fr.i = freeze i64 %i.dc                       ; 2 uses
  %i.dd = ashr exact i64 %.fr.i, 4                ; 2 uses
  %i.de = icmp sgt i64 %i.dd, 16
  br i1 %i.de, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_T0_.exit, !llvm.loop !560

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEET_SI_SI_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_RT0_.exit.i.i, %bb.a, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_SI_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %struct.Driver, align 8             ; 4 uses
  %3 = alloca %struct.Driver, align 8             ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %scevgep = getelementptr i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.019.i.idx = phi i64 [ 16, %.lr.ph.i ], [ %.sroa.0.019.i.add, %bb.g ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i.ptr, %bb.g ] ; 4 uses
  %.sroa.0.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !281  ; 4 uses
  %i.h = load i32, ptr %i.e, align 8, !tbaa !281
  %i.i = icmp ult i32 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i.ptr, i64 16, i1 false), !tbaa.struct !341
  %i.j = icmp samesign ugt i64 %.sroa.0.019.i.idx, 16
  br i1 %i.j, label %bb.d, label %bb.e, !prof !165

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !341
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %.sroa.03.0.copyload.i.i = load ptr, ptr %.sroa.0.019.i.ptr, align 8, !tbaa !147
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 28
  %.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !tbaa !117
  %i.l = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !281
  %i.n = icmp ult i32 %i.g, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.09.012.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.019.i.ptr, %bb.f ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.09.012.i.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.012.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i, i64 16, i1 false), !tbaa.struct !341
  %i.o = getelementptr inbounds i8, ptr %.sroa.09.012.i.i, i64 -24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !281
  %i.q = icmp ult i32 %i.g, %i.p
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_.exit.i, !llvm.loop !568

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.09.0.lcssa.i.i = phi ptr [ %.sroa.0.019.i.ptr, %bb.f ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 3 uses
  store ptr %.sroa.03.0.copyload.i.i, ptr %.sroa.09.0.lcssa.i.i, align 8, !tbaa !147
  %.sroa.4.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i, i64 8
  store i32 %i.g, ptr %.sroa.4.0..sroa_idx5.i.i, align 8, !tbaa !117
  %.sroa.5.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i, i64 12
  store i32 %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx7.i.i, align 4, !tbaa !117
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 16 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 256
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_T0_.exit, label %bb.b, !llvm.loop !569

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_T0_.exit: ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.not6.i = icmp eq ptr %i.r, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_.exit.i16
  %.sroa.0.07.i = phi ptr [ %i.z, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_.exit.i16 ], [ %i.r, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_T0_.exit ] ; 6 uses
  %.sroa.03.0.copyload.i.i13 = load ptr, ptr %.sroa.0.07.i, align 8, !tbaa !147
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8 ; 2 uses
  %i.s = load <2 x i32>, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !117
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !117 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !281
  %i.v = icmp ult i32 %.sroa.4.0.copyload.i.i, %i.u
  br i1 %i.v, label %.lr.ph.i.i21, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_.exit.i16

.lr.ph.i.i21:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i21
  %.sroa.09.012.i.i22 = phi ptr [ %.sroa.0.0.i.i23, %.lr.ph.i.i21 ], [ %.sroa.0.07.i, %.lr.ph.i12 ] ; 3 uses
  %.sroa.0.0.i.i23 = getelementptr inbounds i8, ptr %.sroa.09.012.i.i22, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.012.i.i22, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i23, i64 16, i1 false), !tbaa.struct !341
  %i.w = getelementptr inbounds i8, ptr %.sroa.09.012.i.i22, i64 -24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !281
  %i.y = icmp ult i32 %.sroa.4.0.copyload.i.i, %i.x
  br i1 %i.y, label %.lr.ph.i.i21, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_.exit.i16, !llvm.loop !568

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_.exit.i16: ; preds = %.lr.ph.i.i21, %.lr.ph.i12
  %.sroa.09.0.lcssa.i.i17 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.0.i.i23, %.lr.ph.i.i21 ] ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i13, ptr %.sroa.09.0.lcssa.i.i17, align 8, !tbaa !147
  %.sroa.4.0..sroa_idx5.i.i18 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i17, i64 8
  store <2 x i32> %i.s, ptr %.sroa.4.0..sroa_idx5.i.i18, align 8, !tbaa !117
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16 ; 2 uses
  %.not.i20 = icmp eq ptr %i.z, %1
  br i1 %.not.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_T0_.exit, label %.lr.ph.i12, !llvm.loop !570

bb.h:                                             ; preds = %bb.a
  %i.aa = icmp eq ptr %0, %1
  br i1 %i.aa, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_T0_.exit, label %.preheader.i24

.preheader.i24:                                   ; preds = %bb.h
  %.sroa.0.016.i25 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not17.i26 = icmp eq ptr %.sroa.0.016.i25, %1
  br i1 %.not17.i26, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_T0_.exit, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.preheader.i24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i27
  %.sroa.0.019.i28 = phi ptr [ %.sroa.0.016.i25, %.lr.ph.i27 ], [ %.sroa.0.0.i37, %bb.o ] ; 7 uses
  %.pn18.i29 = phi ptr [ %0, %.lr.ph.i27 ], [ %.sroa.0.019.i28, %bb.o ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn18.i29, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !281 ; 4 uses
  %i.ae = load i32, ptr %i.ab, align 8, !tbaa !281
  %i.af = icmp ult i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i28, i64 16, i1 false), !tbaa.struct !341
  %i.ag = ptrtoint ptr %.sroa.0.019.i28 to i64
  %i.ah = sub i64 %i.ag, %i.b                     ; 3 uses
  %i.ai = ashr exact i64 %i.ah, 4                 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 1
  br i1 %i.aj, label %bb.k, label %bb.l, !prof !165

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn18.i29, i64 32
  %i.al = sub nsw i64 0, %i.ai
  %i.am = getelementptr inbounds [16 x i8], ptr %i.ak, i64 %i.al
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ah, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i42

bb.l:                                             ; preds = %bb.j
  %i.an = icmp eq i64 %i.ah, 16
  br i1 %i.an, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i42

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn18.i29, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !341
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i42

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i42: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !341
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %.sroa.03.0.copyload.i.i30 = load ptr, ptr %.sroa.0.019.i28, align 8, !tbaa !147
  %.sroa.5.0..sroa_idx.i.i31 = getelementptr inbounds nuw i8, ptr %.pn18.i29, i64 28
  %.sroa.5.0.copyload.i.i32 = load i32, ptr %.sroa.5.0..sroa_idx.i.i31, align 4, !tbaa !117
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn18.i29, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !281
  %i.ar = icmp ult i32 %i.ad, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i39, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_.exit.i33

.lr.ph.i.i39:                                     ; preds = %bb.n, %.lr.ph.i.i39
  %.sroa.09.012.i.i40 = phi ptr [ %.sroa.0.0.i.i41, %.lr.ph.i.i39 ], [ %.sroa.0.019.i28, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i41 = getelementptr inbounds i8, ptr %.sroa.09.012.i.i40, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.012.i.i40, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i41, i64 16, i1 false), !tbaa.struct !341
  %i.as = getelementptr inbounds i8, ptr %.sroa.09.012.i.i40, i64 -24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !281
  %i.au = icmp ult i32 %i.ad, %i.at
  br i1 %i.au, label %.lr.ph.i.i39, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_.exit.i33, !llvm.loop !568

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_.exit.i33: ; preds = %.lr.ph.i.i39, %bb.n
  %.sroa.09.0.lcssa.i.i34 = phi ptr [ %.sroa.0.019.i28, %bb.n ], [ %.sroa.0.0.i.i41, %.lr.ph.i.i39 ] ; 3 uses
  store ptr %.sroa.03.0.copyload.i.i30, ptr %.sroa.09.0.lcssa.i.i34, align 8, !tbaa !147
  %.sroa.4.0..sroa_idx5.i.i35 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i34, i64 8
  store i32 %i.ad, ptr %.sroa.4.0..sroa_idx5.i.i35, align 8, !tbaa !117
  %.sroa.5.0..sroa_idx7.i.i36 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i34, i64 12
  store i32 %.sroa.5.0.copyload.i.i32, ptr %.sroa.5.0..sroa_idx7.i.i36, align 4, !tbaa !117
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_.exit.i33, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i42
  %.sroa.0.0.i37 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i28, i64 16 ; 2 uses
  %.not.i38 = icmp eq ptr %.sroa.0.0.i37, %1
  br i1 %.not.i38, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_T0_.exit, label %bb.i, !llvm.loop !569

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_T0_.exit.i16, %.preheader.i24, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN16V3DfgBreakCycles11TraceDriver5visitEP15DfgSplicePackedE6DriverSt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_5visitES5_EUlRKS6_SF_E_EEEvT_SI_T0_.exit
end_hunk_0
