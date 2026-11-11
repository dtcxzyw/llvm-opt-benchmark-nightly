Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/thread?download=true
inline.NumInlined: 2122
inline.NumDeleted: 1239
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZNSt17_Function_handlerIFbvEN9Stockfish10Tablebases3$_0EE9_M_invokeERKSt9_Any_data"
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEN9Stockfish10Tablebases3$_0EE9_M_invokeERKSt9_Any_data"(ptr nofree nonnull readnone align 8 captures(none) %0) #19 align 2 !guid !613 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEN9Stockfish10Tablebases3$_0EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #20 align 2 !guid !614 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIN9Stockfish10Tablebases3$_0EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIN9Stockfish10Tablebases3$_0EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIN9Stockfish10Tablebases3$_0EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIN9Stockfish10Tablebases3$_0EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIN9Stockfish10Tablebases3$_0E", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !146
  br label %"_ZNSt14_Function_base13_Base_managerIN9Stockfish10Tablebases3$_0EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIN9Stockfish10Tablebases3$_0EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIN9Stockfish10Tablebases3$_0EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZN9Stockfish10ThreadPool14start_thinkingERKNS1_10OptionsMapERNS1_8PositionERSt10unique_ptrISt5dequeINS1_9StateInfoESaISA_EESt14default_deleteISC_EENS1_6Search10LimitsTypeEE3$_0E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #4 align 2 !guid !617 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !146   ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !619
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !620, !nonnull !118, !align !119 ; 2 uses
  %i.e = load ptr, ptr %.val, align 8, !tbaa !621, !nonnull !118, !align !119
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !130
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !149  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 11419664
  %i.j = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(113) %i.i, ptr noundef nonnull align 8 dereferenceable(113) %i.d) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 11419688
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(89) %i.k, ptr noundef nonnull align 8 dereferenceable(89) %i.l, i64 89, i1 false)
  %i.m = load ptr, ptr %.val, align 8, !tbaa !621, !nonnull !118, !align !119
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !130
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !149
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 11419816
  store atomic i64 0, ptr %i.q seq_cst, align 8
  %i.r = load ptr, ptr %.val, align 8, !tbaa !621, !nonnull !118, !align !119
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !130
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !149
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 11419808
  store atomic i64 0, ptr %i.v seq_cst, align 8
  %i.w = load ptr, ptr %.val, align 8, !tbaa !621, !nonnull !118, !align !119
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !130
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !149
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 11419800
  store atomic i64 0, ptr %i.aa seq_cst, align 8
  %i.ab = load ptr, ptr %.val, align 8, !tbaa !621, !nonnull !118, !align !119
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !130
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !149 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 11419828
  store i32 0, ptr %i.af, align 4, !tbaa !622
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 11421108
  store i32 0, ptr %i.ag, align 4, !tbaa !305
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 11421104
  store i32 0, ptr %i.ah, align 16, !tbaa !623
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !624, !nonnull !118, !align !119
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 11421080
  %i.al = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.aj) ; 0 uses
  %i.am = load ptr, ptr %.val, align 8, !tbaa !621, !nonnull !118, !align !119
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !130
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !149
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 11419840
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !625, !nonnull !118, !align !119
  call void @_ZNK9Stockfish8Position3fenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(1048) %i.as) #26
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !625, !nonnull !118, !align !119
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 621
  %i.av = load i8, ptr %i.au, align 1, !tbaa !626, !range !139, !noundef !118
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = load ptr, ptr %.val, align 8, !tbaa !621, !nonnull !118, !align !119
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !130
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !149
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 11420888
  %i.bc = call noundef nonnull align 8 dereferenceable(1048) ptr @_ZN9Stockfish8Position3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbPNS_9StateInfoE(ptr noundef nonnull align 8 dereferenceable(1048) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %i.aw, ptr noundef nonnull %i.bb) #26 ; 0 uses
  %i.bd = load ptr, ptr %1, align 8, !tbaa !126   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !125
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !236 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !627, !noalias !628 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !629, !noalias !628
  %i.bo = icmp eq ptr %i.bl, %i.bn
  br i1 %i.bo, label %bb.b, label %"_ZSt10__invoke_rIvRZN9Stockfish10ThreadPool14start_thinkingERKNS0_10OptionsMapERNS0_8PositionERSt10unique_ptrISt5dequeINS0_9StateInfoESaIS9_EESt14default_deleteISB_EENS0_6Search10LimitsTypeEE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !630, !noalias !628
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !241
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 384
  br label %"_ZSt10__invoke_rIvRZN9Stockfish10ThreadPool14start_thinkingERKNS0_10OptionsMapERNS0_8PositionERSt10unique_ptrISt5dequeINS0_9StateInfoESaIS9_EESt14default_deleteISB_EENS0_6Search10LimitsTypeEE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

"_ZSt10__invoke_rIvRZN9Stockfish10ThreadPool14start_thinkingERKNS0_10OptionsMapERNS0_8PositionERSt10unique_ptrISt5dequeINS0_9StateInfoESaIS9_EESt14default_deleteISB_EENS0_6Search10LimitsTypeEE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.b
  %i.bu = phi ptr [ %i.bt, %bb.b ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ]
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -192
  %i.bw = load ptr, ptr %.val, align 8, !tbaa !621, !nonnull !118, !align !119
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !130
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !149
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 11420888
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ca, ptr noundef nonnull align 8 dereferenceable(192) %i.bv, i64 192, i1 false), !tbaa.struct !633
  %i.cb = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !634, !nonnull !118, !align !635
  %i.cd = load ptr, ptr %.val, align 8, !tbaa !621, !nonnull !118, !align !119
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !130
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !149
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 11422184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ch, ptr noundef nonnull align 4 dereferenceable(12) %i.cc, i64 12, i1 false), !tbaa.struct !636
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZN9Stockfish10ThreadPool14start_thinkingERKNS1_10OptionsMapERNS1_8PositionERSt10unique_ptrISt5dequeINS1_9StateInfoESaISA_EESt14default_deleteISC_EENS1_6Search10LimitsTypeEE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #4 align 2 !guid !637 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish10ThreadPool14start_thinkingERKNS1_10OptionsMapERNS1_8PositionERSt10unique_ptrISt5dequeINS1_9StateInfoESaISA_EESt14default_deleteISC_EENS1_6Search10LimitsTypeEE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN9Stockfish10ThreadPool14start_thinkingERKNS_10OptionsMapERNS_8PositionERSt10unique_ptrISt5dequeINS_9StateInfoESaIS8_EESt14default_deleteISA_EENS_6Search10LimitsTypeEE3$_0", ptr %0, align 8, !tbaa !328
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish10ThreadPool14start_thinkingERKNS1_10OptionsMapERNS1_8PositionERSt10unique_ptrISt5dequeINS1_9StateInfoESaISA_EESt14default_deleteISC_EENS1_6Search10LimitsTypeEE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !146
  store ptr %.val, ptr %0, align 8, !tbaa !146
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish10ThreadPool14start_thinkingERKNS1_10OptionsMapERNS1_8PositionERSt10unique_ptrISt5dequeINS1_9StateInfoESaISA_EESt14default_deleteISC_EENS1_6Search10LimitsTypeEE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %.val6, i64 48, i1 false), !tbaa.struct !638
  store ptr %i.a, ptr %0, align 8, !tbaa !146
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish10ThreadPool14start_thinkingERKNS1_10OptionsMapERNS1_8PositionERSt10unique_ptrISt5dequeINS1_9StateInfoESaISA_EESt14default_deleteISC_EENS1_6Search10LimitsTypeEE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !146 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish10ThreadPool14start_thinkingERKNS1_10OptionsMapERNS1_8PositionERSt10unique_ptrISt5dequeINS1_9StateInfoESaISA_EESt14default_deleteISC_EENS1_6Search10LimitsTypeEE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 48) #30
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish10ThreadPool14start_thinkingERKNS1_10OptionsMapERNS1_8PositionERSt10unique_ptrISt5dequeINS1_9StateInfoESaISA_EESt14default_deleteISC_EENS1_6Search10LimitsTypeEE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN9Stockfish10ThreadPool14start_thinkingERKNS1_10OptionsMapERNS1_8PositionERSt10unique_ptrISt5dequeINS1_9StateInfoESaISA_EESt14default_deleteISC_EENS1_6Search10LimitsTypeEE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 !guid !643 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !217  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !251    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !218
  %i.i = load ptr, ptr %0, align 8, !tbaa !251    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 72
  %i.o = tail call noundef ptr @_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n, ptr %i.c, ptr %i.b) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !251    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !217  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !231  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !232
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #30
  br label %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i

_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i: ; preds = %bb.d, %.lr.ph.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.r
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !9

_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !251
  br label %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exit

_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exit: ; preds = %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exitthread-pre-split, %bb.c
  %i.aa = phi ptr [ %.pr, %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exitthread-pre-split ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN9Stockfish6Search8RootMoveESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exit
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !218
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ae) #30
  br label %_ZNSt12_Vector_baseIN9Stockfish6Search8RootMoveESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN9Stockfish6Search8RootMoveESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !251
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.af, ptr %i.g, align 8, !tbaa !218
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

bb.f:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !217 ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.aj, %i.f
  br i1 %.not24, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = icmp sgt i64 %i.f, 0
  br i1 %i.ak, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.al = udiv exact i64 %i.f, 72
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %i.al, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0910.i.i.i.i.i, i64 44, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.ao = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN9Stockfish4MoveESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.an) ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 72
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 72 ; 2 uses
  %i.ar = add nsw i64 %.012.i.i.i.i.i, -1
  %i.as = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.as, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit, !llvm.loop !639

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !212
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit, %bb.g
  %i.at = phi ptr [ %i.ah, %bb.g ], [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.i, %bb.g ], [ %i.aq, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit ] ; 2 uses
  %.not4.i.i25 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.at
  br i1 %.not4.i.i25, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i26.preheader

.lr.ph.i.i26.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit
  %.pre-phi48 = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64
  %i.au = sub i64 %.pre-phi48, %i.k
  %i.av = getelementptr inbounds i8, ptr %i.i, i64 %i.au
  br label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %.lr.ph.i.i26.preheader, %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i28
  %.sroa.01.05.i.i = phi ptr [ %i.bd, %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i28 ], [ %i.av, %.lr.ph.i.i26.preheader ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !231 ; 3 uses
  %.not.i.i.i.i.i.i.i27 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i.i.i27, label %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i28, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i26
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !232
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #30
  br label %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i28

_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i28: ; preds = %bb.h, %.lr.ph.i.i26
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 72 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.bd, %i.at
  br i1 %.not.i.i29, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i26, !llvm.loop !640

bb.i:                                             ; preds = %bb.f
  %i.be = icmp sgt i64 %i.aj, 0
  br i1 %i.be, label %.lr.ph.preheader.i.i.i.i.i31, label %_ZSt4copyIPN9Stockfish6Search8RootMoveES3_ET0_T_S5_S4_.exit

.lr.ph.preheader.i.i.i.i.i31:                     ; preds = %bb.i
  %i.bf = udiv exact i64 %i.aj, 72
  br label %.lr.ph.i.i.i.i.i32

.lr.ph.i.i.i.i.i32:                               ; preds = %.lr.ph.i.i.i.i.i32, %.lr.ph.preheader.i.i.i.i.i31
  %.012.i.i.i.i.i33 = phi i64 [ %i.bl, %.lr.ph.i.i.i.i.i32 ], [ %i.bf, %.lr.ph.preheader.i.i.i.i.i31 ] ; 2 uses
  %.0811.i.i.i.i.i34 = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i32 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i31 ] ; 3 uses
  %.0910.i.i.i.i.i35 = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i32 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i31 ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0811.i.i.i.i.i34, ptr noundef nonnull align 8 dereferenceable(72) %.0910.i.i.i.i.i35, i64 44, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i34, i64 48
  %i.bh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i35, i64 48
  %i.bi = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN9Stockfish4MoveESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.bh) ; 0 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i35, i64 72
  %i.bk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i34, i64 72
  %i.bl = add nsw i64 %.012.i.i.i.i.i33, -1
  %i.bm = icmp samesign ugt i64 %.012.i.i.i.i.i33, 1
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i32, label %_ZSt4copyIPN9Stockfish6Search8RootMoveES3_ET0_T_S5_S4_.exit.loopexit, !llvm.loop !641

_ZSt4copyIPN9Stockfish6Search8RootMoveES3_ET0_T_S5_S4_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i32
  %.pre38 = load ptr, ptr %1, align 8, !tbaa !251
  %.pre39 = load ptr, ptr %i.ag, align 8, !tbaa !217 ; 2 uses
  %.pre40 = load ptr, ptr %0, align 8, !tbaa !251
  %.pre41 = load ptr, ptr %i.a, align 8, !tbaa !217
  %.pre42 = ptrtoint ptr %.pre39 to i64
  %.pre43 = ptrtoint ptr %.pre40 to i64
  %.pre45 = sub i64 %.pre42, %.pre43
  br label %_ZSt4copyIPN9Stockfish6Search8RootMoveES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN9Stockfish6Search8RootMoveES3_ET0_T_S5_S4_.exit: ; preds = %_ZSt4copyIPN9Stockfish6Search8RootMoveES3_ET0_T_S5_S4_.exit.loopexit, %bb.i
  %.pre-phi46 = phi i64 [ %.pre45, %_ZSt4copyIPN9Stockfish6Search8RootMoveES3_ET0_T_S5_S4_.exit.loopexit ], [ %i.aj, %bb.i ]
  %i.bn = phi ptr [ %.pre41, %_ZSt4copyIPN9Stockfish6Search8RootMoveES3_ET0_T_S5_S4_.exit.loopexit ], [ %i.b, %bb.i ] ; 2 uses
  %i.bo = phi ptr [ %.pre39, %_ZSt4copyIPN9Stockfish6Search8RootMoveES3_ET0_T_S5_S4_.exit.loopexit ], [ %i.ah, %bb.i ]
  %i.bp = phi ptr [ %.pre38, %_ZSt4copyIPN9Stockfish6Search8RootMoveES3_ET0_T_S5_S4_.exit.loopexit ], [ %i.c, %bb.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.pre-phi46 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bq, %i.bn
  br i1 %.not10.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN9Stockfish6Search8RootMoveES3_ET0_T_S5_S4_.exit, %_ZSt10_ConstructIN9Stockfish6Search8RootMoveEJRS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cp, %_ZSt10_ConstructIN9Stockfish6Search8RootMoveEJRS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.bo, %_ZSt4copyIPN9Stockfish6Search8RootMoveES3_ET0_T_S5_S4_.exit ] ; 5 uses
  %.0811.i.i.i.i = phi ptr [ %i.co, %_ZSt10_ConstructIN9Stockfish6Search8RootMoveEJRS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.bq, %_ZSt4copyIPN9Stockfish6Search8RootMoveES3_ET0_T_S5_S4_.exit ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0811.i.i.i.i, i64 44, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i, i64 48 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i, i64 56 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !234 ; 2 uses
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !231 ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EEC2EmRKS2_.exit.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bz = icmp ugt i64 %i.by, 9223372036854775806
  br i1 %i.bz, label %bb.k, label %_ZNSt15__new_allocatorIN9Stockfish4MoveEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i, !prof !260

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt15__new_allocatorIN9Stockfish4MoveEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.ca = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #29
  br label %_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EEC2EmRKS2_.exit.i.i.i.i.i.i.i

_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EEC2EmRKS2_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt15__new_allocatorIN9Stockfish4MoveEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cb = phi ptr [ %i.ca, %_ZNSt15__new_allocatorIN9Stockfish4MoveEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i ], [ null, %.lr.ph.i.i.i.i ] ; 6 uses
  store ptr %i.cb, ptr %i.br, align 8, !tbaa !231
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 56 ; 2 uses
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !234
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.by
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 64
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !232
  %i.cf = load ptr, ptr %i.bs, align 8, !tbaa !332 ; 3 uses
  %i.cg = load ptr, ptr %i.bt, align 8, !tbaa !332
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 4 uses
  %i.ck = icmp sgt i64 %i.cj, 2
  br i1 %i.ck, label %bb.l, label %bb.m, !prof !326

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EEC2EmRKS2_.exit.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.cb, ptr align 2 %i.cf, i64 %i.cj, i1 false)
  br label %_ZSt10_ConstructIN9Stockfish6Search8RootMoveEJRS2_EEvPT_DpOT0_.exit.i.i.i.i

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EEC2EmRKS2_.exit.i.i.i.i.i.i.i
  %i.cl = icmp eq i64 %i.cj, 2
  br i1 %i.cl, label %bb.n, label %_ZSt10_ConstructIN9Stockfish6Search8RootMoveEJRS2_EEvPT_DpOT0_.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.cm = load i16, ptr %i.cf, align 2, !tbaa !233
  store i16 %i.cm, ptr %i.cb, align 2, !tbaa !233
  br label %_ZSt10_ConstructIN9Stockfish6Search8RootMoveEJRS2_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN9Stockfish6Search8RootMoveEJRS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.cn = getelementptr inbounds i8, ptr %i.cb, i64 %i.cj
  store ptr %i.cn, ptr %i.cc, align 8, !tbaa !234
  %i.co = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i, i64 72 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 72
  %.not.i.i.i.i = icmp eq ptr %i.co, %i.bn
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !642

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i28, %_ZSt10_ConstructIN9Stockfish6Search8RootMoveEJRS2_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4copyIPN9Stockfish6Search8RootMoveES3_ET0_T_S5_S4_.exit, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %_ZNSt12_Vector_baseIN9Stockfish6Search8RootMoveESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.cq = load ptr, ptr %0, align 8, !tbaa !251
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.f
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !217
  br label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, %bb.a
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(1048) ptr @_ZN9Stockfish8Position3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbPNS_9StateInfoE(ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, ptr noundef) local_unnamed_addr #6

declare void @_ZNK9Stockfish8Position3fenB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(1048)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 !guid !648 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !330  ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !329    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 5 uses
  %i.h = ashr exact i64 %i.g, 5                   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !331
  %i.k = load ptr, ptr %0, align 8, !tbaa !329    ; 5 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ugt i64 %i.g, %i.n
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.h, ptr %i.d, ptr %i.c) ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !329    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !330  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.q, %i.s
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i, align 8, !tbaa !126 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !125
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !12

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !329
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split, %bb.c
  %i.z = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split ], [ %i.q, %bb.c ] ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !331
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #30
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, %bb.d
  store ptr %i.p, ptr %0, align 8, !tbaa !329
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store ptr %i.ae, ptr %i.i, align 8, !tbaa !331
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit

bb.e:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !330 ; 3 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.m                     ; 3 uses
  %.not24 = icmp ult i64 %i.ai, %i.g
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = icmp sgt i64 %i.h, 0
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i ], [ %i.h, %bb.f ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.f ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %i.d, %bb.f ] ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i) #26
  %i.ak = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 2 uses
  %i.am = add nsw i64 %.012.i.i.i.i.i, -1
  %i.an = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit, !llvm.loop !644

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.af, align 8, !tbaa !210
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit, %bb.f
  %i.ao = phi ptr [ %i.ag, %bb.f ], [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.k, %bb.f ], [ %i.al, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit ] ; 2 uses
  %.not4.i.i25 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.ao
  br i1 %.not4.i.i25, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, label %.lr.ph.i.i26.preheader

.lr.ph.i.i26.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit
  %.pre-phi48 = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64
  %i.ap = sub i64 %.pre-phi48, %i.m
  %i.aq = getelementptr inbounds i8, ptr %i.k, i64 %i.ap
  br label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %.lr.ph.i.i26.preheader, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28
  %.sroa.01.05.i.i = phi ptr [ %i.aw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28 ], [ %i.aq, %.lr.ph.i.i26.preheader ] ; 3 uses
  %i.ar = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !126 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %.lr.ph.i.i26
  %i.au = load i64, ptr %i.as, align 8, !tbaa !125
  %i.av = add i64 %i.au, 1
  tail call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28: ; preds = %.lr.ph.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 32 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.aw, %i.ao
  br i1 %.not.i.i29, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, label %.lr.ph.i.i26, !llvm.loop !645

bb.g:                                             ; preds = %bb.e
  %i.ax = ashr exact i64 %i.ai, 5                 ; 2 uses
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i32, label %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i32:                               ; preds = %bb.g, %.lr.ph.i.i.i.i.i32
  %.012.i.i.i.i.i33 = phi i64 [ %i.bb, %.lr.ph.i.i.i.i.i32 ], [ %i.ax, %bb.g ] ; 2 uses
  %.0811.i.i.i.i.i34 = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i32 ], [ %i.k, %bb.g ] ; 2 uses
  %.0910.i.i.i.i.i35 = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i32 ], [ %i.d, %bb.g ] ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i34, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i35) #26
  %i.az = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i35, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i34, i64 32
  %i.bb = add nsw i64 %.012.i.i.i.i.i33, -1
  %i.bc = icmp samesign ugt i64 %.012.i.i.i.i.i33, 1
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i32, label %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit, !llvm.loop !646

_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i32
  %.pre38 = load ptr, ptr %1, align 8, !tbaa !329
  %.pre39 = load ptr, ptr %i.af, align 8, !tbaa !330 ; 2 uses
  %.pre40 = load ptr, ptr %0, align 8, !tbaa !329
  %.pre41 = load ptr, ptr %i.b, align 8, !tbaa !330
  %.pre42 = ptrtoint ptr %.pre39 to i64
  %.pre43 = ptrtoint ptr %.pre40 to i64
  %.pre45 = sub i64 %.pre42, %.pre43
  br label %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit

_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit: ; preds = %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit, %bb.g
  %.pre-phi46 = phi i64 [ %.pre45, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit ], [ %i.ai, %bb.g ]
  %i.bd = phi ptr [ %.pre41, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit ], [ %i.c, %bb.g ] ; 2 uses
  %i.be = phi ptr [ %.pre39, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit ], [ %i.ag, %bb.g ]
  %i.bf = phi ptr [ %.pre38, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit ], [ %i.d, %bb.g ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.pre-phi46 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.bg, %i.bd
  br i1 %.not9.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS5_EEvPT_DpOT0_.exit.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bv, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS5_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.be, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit ] ; 7 uses
  %.0810.i.i.i.i = phi ptr [ %i.bu, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS5_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.bg, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.bh, ptr %.011.i.i.i.i, align 8, !tbaa !122
  %i.bi = load ptr, ptr %.0810.i.i.i.i, align 8, !tbaa !126 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !124 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !79
  %i.bl = icmp ugt i64 %i.bk, 15
  br i1 %i.bl, label %bb.h, label %._crit_edge.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.bm, ptr %.011.i.i.i.i, align 8, !tbaa !126
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !79
  store i64 %i.bn, ptr %i.bh, align 8, !tbaa !125
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.h, %.lr.ph.i.i.i.i
  %i.bo = phi ptr [ %i.bm, %bb.h ], [ %i.bh, %.lr.ph.i.i.i.i ] ; 2 uses
  switch i64 %i.bk, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS5_EEvPT_DpOT0_.exit.i.i.i.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.bp = load i8, ptr %i.bi, align 1, !tbaa !125
  store i8 %i.bp, ptr %i.bo, align 1, !tbaa !125
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS5_EEvPT_DpOT0_.exit.i.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr align 1 %i.bi, i64 %i.bk, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS5_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS5_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i.i.i.i
  %i.bq = load i64, ptr %i.a, align 8, !tbaa !79  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !124
  %i.bs = load ptr, ptr %.011.i.i.i.i, align 8, !tbaa !126
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  store i8 0, ptr %i.bt, align 1, !tbaa !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.bu = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 32 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 32
  %.not.i.i.i.i = icmp eq ptr %i.bu, %i.bd
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !647

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS5_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit
  %i.bw = load ptr, ptr %0, align 8, !tbaa !329
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.g
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !330
  br label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #4 comdat align 2 !guid !650 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %1, 288230376151711743
  br i1 %i.b, label %bb.c, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i, !prof !260

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt i64 %1, 576460752303423487
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.d = shl nuw nsw i64 %1, 5
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #29
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i
  %i.f = phi ptr [ %i.e, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %2, %3
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.u, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.f, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 7 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.t, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i ], [ %2, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.g, ptr %.09.i.i.i.i, align 8, !tbaa !122
  %i.h = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !126 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !124  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.j, ptr %i.a, align 8, !tbaa !79
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %bb.f, label %._crit_edge.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.l, ptr %.09.i.i.i.i, align 8, !tbaa !126
  %i.m = load i64, ptr %i.a, align 8, !tbaa !79
  store i64 %i.m, ptr %i.g, align 8, !tbaa !125
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.f, %.lr.ph.i.i.i.i
  %i.n = phi ptr [ %i.l, %bb.f ], [ %i.g, %.lr.ph.i.i.i.i ] ; 2 uses
  switch i64 %i.j, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.o = load i8, ptr %i.h, align 1, !tbaa !125
  store i8 %i.o, ptr %i.n, align 1, !tbaa !125
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !79   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !124
  %i.r = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !126
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32
  %.not.i.i.i.i = icmp eq ptr %i.t, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !649

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  ret ptr %i.f
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #4 comdat align 2 !guid !652 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN9Stockfish6Search8RootMoveESaIS2_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 128102389400760775
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorIN9Stockfish6Search8RootMoveEE8allocateEmPKv.exit.i, !prof !260

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %1, 256204778801521550
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt15__new_allocatorIN9Stockfish6Search8RootMoveEE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.c = mul nuw nsw i64 %1, 72
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #29
  br label %_ZNSt12_Vector_baseIN9Stockfish6Search8RootMoveESaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN9Stockfish6Search8RootMoveESaIS2_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorIN9Stockfish6Search8RootMoveEE8allocateEmPKv.exit.i
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorIN9Stockfish6Search8RootMoveEE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %2, %3
  br i1 %.not8.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN9Stockfish6Search8RootMoveESaIS2_EE11_M_allocateEm.exit, %_ZSt10_ConstructIN9Stockfish6Search8RootMoveEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.aa, %_ZSt10_ConstructIN9Stockfish6Search8RootMoveEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.e, %_ZNSt12_Vector_baseIN9Stockfish6Search8RootMoveESaIS2_EE11_M_allocateEm.exit ] ; 5 uses
  %.sroa.04.09.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructIN9Stockfish6Search8RootMoveEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %2, %_ZNSt12_Vector_baseIN9Stockfish6Search8RootMoveESaIS2_EE11_M_allocateEm.exit ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.010.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.04.09.i.i.i.i, i64 44, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i.i, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i.i, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !234  ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !231  ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EEC2EmRKS2_.exit.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.n = icmp ugt i64 %i.m, 9223372036854775806
  br i1 %i.n, label %bb.g, label %_ZNSt15__new_allocatorIN9Stockfish4MoveEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i, !prof !260

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt15__new_allocatorIN9Stockfish4MoveEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #29
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !332
  %.pre6 = load ptr, ptr %i.h, align 8, !tbaa !332
  %.pre8 = ptrtoint ptr %.pre6 to i64
  br label %_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EEC2EmRKS2_.exit.i.i.i.i.i.i.i

_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EEC2EmRKS2_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt15__new_allocatorIN9Stockfish4MoveEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %.pre-phi = phi i64 [ %.pre8, %_ZNSt15__new_allocatorIN9Stockfish4MoveEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.k, %.lr.ph.i.i.i.i ]
  %i.p = phi ptr [ %.pre, %_ZNSt15__new_allocatorIN9Stockfish4MoveEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.q = phi ptr [ %i.o, %_ZNSt15__new_allocatorIN9Stockfish4MoveEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i ], [ null, %.lr.ph.i.i.i.i ] ; 5 uses
  %.pre-phi9 = ptrtoint ptr %i.p to i64
  store ptr %i.q, ptr %i.f, align 8, !tbaa !231
  %i.r = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.m
  %i.t = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 64
  store ptr %i.s, ptr %i.t, align 8, !tbaa !232
  %i.u = sub i64 %.pre-phi, %.pre-phi9            ; 4 uses
  %i.v = icmp sgt i64 %i.u, 2
  br i1 %i.v, label %bb.h, label %bb.i, !prof !326

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EEC2EmRKS2_.exit.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.q, ptr align 2 %i.p, i64 %i.u, i1 false)
  br label %_ZSt10_ConstructIN9Stockfish6Search8RootMoveEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EEC2EmRKS2_.exit.i.i.i.i.i.i.i
  %i.w = icmp eq i64 %i.u, 2
  br i1 %i.w, label %bb.j, label %_ZSt10_ConstructIN9Stockfish6Search8RootMoveEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.x = load i16, ptr %i.p, align 2, !tbaa !233
  store i16 %i.x, ptr %i.q, align 2, !tbaa !233
  br label %_ZSt10_ConstructIN9Stockfish6Search8RootMoveEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN9Stockfish6Search8RootMoveEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.y = getelementptr inbounds i8, ptr %i.q, i64 %i.u
  store ptr %i.y, ptr %i.r, align 8, !tbaa !234
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i.i, i64 72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 72
  %.not.i.i.i.i = icmp eq ptr %i.z, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !651

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN9Stockfish6Search8RootMoveEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN9Stockfish6Search8RootMoveESaIS2_EE11_M_allocateEm.exit
  ret ptr %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN9Stockfish4MoveESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 !guid !653 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !234
  %i.c = load ptr, ptr %1, align 8, !tbaa !231    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !232
  %i.i = load ptr, ptr %0, align 8, !tbaa !231    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775806
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EE11_M_allocateEm.exit.i, !prof !260

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #29 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 2
  br i1 %i.p, label %bb.e, label %bb.f, !prof !326

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.o, ptr align 2 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 2
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i16, ptr %i.c, align 2, !tbaa !233
  store i16 %i.r, ptr %i.o, align 2, !tbaa !233
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !231    ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !232
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #30
  br label %_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !231
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !232
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !234  ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 2
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !326

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.i, ptr align 2 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 2
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i16, ptr %i.c, align 2, !tbaa !233
  store i16 %i.ae, ptr %i.i, align 2, !tbaa !233
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 2
  br i1 %i.af, label %bb.o, label %bb.p, !prof !326

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.i, ptr align 2 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !231
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !234 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !231
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !234
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPN9Stockfish4MoveES2_ET0_T_S4_S3_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 2
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPN9Stockfish4MoveES2_ET0_T_S4_S3_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load i16, ptr %i.c, align 2, !tbaa !233
  store i16 %i.ah, ptr %i.i, align 2, !tbaa !233
  br label %_ZSt4copyIPN9Stockfish4MoveES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN9Stockfish4MoveES2_ET0_T_S4_S3_.exit: ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 2, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 2
  br i1 %i.an, label %bb.r, label %bb.s, !prof !326

bb.r:                                             ; preds = %_ZSt4copyIPN9Stockfish4MoveES2_ET0_T_S4_S3_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.ai, ptr align 2 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.s:                                             ; preds = %_ZSt4copyIPN9Stockfish4MoveES2_ET0_T_S4_S3_.exit
  %i.ao = icmp eq i64 %i.am, 2
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load i16, ptr %i.ak, align 2, !tbaa !233
  store i16 %i.ap, ptr %i.ai, align 2, !tbaa !233
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !231
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !234
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

declare noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN9Stockfish4MoveESt4pairIKS2_lESaIS5_ENS_10_Select1stESt8equal_toIS2_ENS2_8MoveHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #4 comdat align 2 !guid !655 {
bb.a:
  %i.a = load i16, ptr %1, align 2, !tbaa !215    ; 3 uses
  %i.b = zext i16 %i.a to i64
  %i.c = mul i64 %i.b, 6364136223846793005
  %i.d = add i64 %i.c, 1442695040888963407        ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !259  ; 2 uses
  %i.g = urem i64 %i.d, %i.f                      ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !258
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
end_hunk_0
