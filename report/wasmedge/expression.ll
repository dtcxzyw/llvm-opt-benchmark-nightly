Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/expression?download=true
inline.NumInlined: 722
inline.NumDeleted: 399
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3fmt3v116detail7get_argINS0_7contextENS0_17basic_string_viewIcEEEEDTcldtfp_3argfp0_EERT_T0_:bb.a
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %i.ag, i64 16, i1 false), !tbaa.struct !64
  br label %bb.i

_ZNK3fmt3v1117basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.thread.i.i: ; preds = %bb.c, %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i, %bb.b, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.ah, align 16, !tbaa !63, !alias.scope !226
  br label %_ZN3fmt3v117context3argENS0_17basic_string_viewIcEE.exit.thread

_ZN3fmt3v117context3argENS0_17basic_string_viewIcEE.exit: ; preds = %bb.f
  %i.ai = zext nneg i32 %i.s to i64
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %0, ptr noundef nonnull align 16 dereferenceable(20) %i.aj, i64 20, i1 false), !tbaa.struct !66
  %.pre = load i32, ptr %i.u, align 16, !tbaa !63
  %i.ak = icmp eq i32 %.pre, 0
  br i1 %i.ak, label %_ZN3fmt3v117context3argENS0_17basic_string_viewIcEE.exit.thread, label %bb.i

_ZN3fmt3v117context3argENS0_17basic_string_viewIcEE.exit.thread: ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.thread.i.i, %bb.h, %bb.g, %bb.f, %_ZN3fmt3v117context3argENS0_17basic_string_viewIcEE.exit
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.109) #20
  unreachable

bb.i:                                             ; preds = %_ZN3fmt3v117context3argENS0_17basic_string_viewIcEE.exit.thread10, %_ZN3fmt3v117context3argENS0_17basic_string_viewIcEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS1_17precision_checkerENS0_16basic_format_argINS0_7contextEEEEEiT0_(ptr noundef byval(%"class.fmt::v11::basic_format_arg") align 16 %0) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 16, !tbaa !63
  switch i32 %i.b, label %bb.t [
    i32 15, label %bb.s
    i32 1, label %bb.b
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 8, label %bb.l
    i32 9, label %bb.m
    i32 10, label %bb.n
    i32 11, label %bb.o
    i32 12, label %bb.p
    i32 13, label %bb.q
    i32 14, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 16, !tbaa !21    ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail17precision_checkerEEEDTclfp_Li0EEEOT_.exit.thread

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.110) #20
  unreachable

_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail17precision_checkerEEEDTclfp_Li0EEEOT_.exit.thread: ; preds = %bb.b
  %i.e = zext nneg i32 %i.c to i64
  br label %bb.u

bb.d:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 16, !tbaa !21
  %i.g = zext i32 %i.f to i64
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail17precision_checkerEEEDTclfp_Li0EEEOT_.exit

bb.e:                                             ; preds = %bb.a
  %i.h = load i64, ptr %0, align 16, !tbaa !21    ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.f, label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail17precision_checkerEEEDTclfp_Li0EEEOT_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.110) #20
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.j = load i64, ptr %0, align 16, !tbaa !21
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail17precision_checkerEEEDTclfp_Li0EEEOT_.exit

bb.h:                                             ; preds = %bb.a
  %i.k = load i128, ptr %0, align 16, !tbaa !21   ; 2 uses
  %i.l = icmp slt i128 %i.k, 0
  br i1 %i.l, label %bb.i, label %_ZN3fmt3v116detail17precision_checkerclInTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEyS5_.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.110) #20
  unreachable

_ZN3fmt3v116detail17precision_checkerclInTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEyS5_.exit: ; preds = %bb.h
  %i.m = trunc i128 %i.k to i64
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail17precision_checkerEEEDTclfp_Li0EEEOT_.exit

bb.j:                                             ; preds = %bb.a
  %i.n = load i128, ptr %0, align 16, !tbaa !21
  %i.o = trunc i128 %i.n to i64
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail17precision_checkerEEEDTclfp_Li0EEEOT_.exit

bb.k:                                             ; preds = %bb.a
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.111) #20
  unreachable

bb.l:                                             ; preds = %bb.a
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.111) #20
  unreachable

bb.m:                                             ; preds = %bb.a
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.111) #20
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.111) #20
  unreachable

bb.o:                                             ; preds = %bb.a
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.111) #20
  unreachable

bb.p:                                             ; preds = %bb.a
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.111) #20
  unreachable

bb.q:                                             ; preds = %bb.a
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.111) #20
  unreachable

bb.r:                                             ; preds = %bb.a
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.111) #20
  unreachable

bb.s:                                             ; preds = %bb.a
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.111) #20
  unreachable

bb.t:                                             ; preds = %bb.a
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.111) #20
  unreachable

_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail17precision_checkerEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.e, %bb.d, %bb.g, %_ZN3fmt3v116detail17precision_checkerclInTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEyS5_.exit, %bb.j
  %.0.i = phi i64 [ %i.j, %bb.g ], [ %i.m, %_ZN3fmt3v116detail17precision_checkerclInTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEyS5_.exit ], [ %i.h, %bb.e ], [ %i.g, %bb.d ], [ %i.o, %bb.j ] ; 2 uses
  %i.p = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.p, label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail17precision_checkerEEEDTclfp_Li0EEEOT_.exit.thread9, label %bb.u

_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail17precision_checkerEEEDTclfp_Li0EEEOT_.exit.thread9: ; preds = %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail17precision_checkerEEEDTclfp_Li0EEEOT_.exit
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.8) #20
  unreachable

bb.u:                                             ; preds = %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail17precision_checkerEEEDTclfp_Li0EEEOT_.exit.thread, %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail17precision_checkerEEEDTclfp_Li0EEEOT_.exit
  %.0.i8 = phi i64 [ %i.e, %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail17precision_checkerEEEDTclfp_Li0EEEOT_.exit.thread ], [ %.0.i, %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail17precision_checkerEEEDTclfp_Li0EEEOT_.exit ]
  %i.q = trunc nuw nsw i64 %.0.i8 to i32
  ret i32 %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN8WasmEdge3AST11Instruction5resetEv(ptr noundef nonnull align 16 dereferenceable(26) %.05.i.i) #17
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !28
  br label %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN8WasmEdge3AST11InstructionESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #18
  br label %_ZNSt12_Vector_baseIN8WasmEdge3AST11InstructionESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN8WasmEdge3AST11InstructionESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.WasmEdge::AST::Instruction", align 16 ; 8 uses
  %3 = alloca %"class.WasmEdge::AST::Instruction", align 16 ; 8 uses
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !28     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.j = load ptr, ptr %0, align 8, !tbaa !28     ; 6 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 288230376151711743
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN8WasmEdge3AST11InstructionESaIS2_EE11_M_allocateEm.exit.i, !prof !85

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

_ZNSt12_Vector_baseIN8WasmEdge3AST11InstructionESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #21 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN8WasmEdge3AST11InstructionESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN8WasmEdge3AST11InstructionESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseIN8WasmEdge3AST11InstructionESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @_ZN8WasmEdge3AST11InstructionC2ERKS1_(ptr noundef nonnull align 16 dereferenceable(26) %.09.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(26) %.sroa.04.08.i.i.i.i.i) #17
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !235

_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre44 = load ptr, ptr %0, align 8, !tbaa !28
  br label %_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.loopexit, %_ZNSt12_Vector_baseIN8WasmEdge3AST11InstructionESaIS2_EE11_M_allocateEm.exit.i
  %4 = phi ptr [ %.pre44, %_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.loopexit ], [ %i.j, %_ZNSt12_Vector_baseIN8WasmEdge3AST11InstructionESaIS2_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29   ; 2 uses
  %.not4.i.i = icmp eq ptr %4, %i.t
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %4, %_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit ] ; 2 uses
  tail call void @_ZN8WasmEdge3AST11Instruction5resetEv(ptr noundef nonnull align 16 dereferenceable(26) %.05.i.i) #17
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.u, %i.t
  br i1 %.not.i.i25, label %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionEEvT_S4_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN8WasmEdge3AST11InstructionEEvT_S4_.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !28
  br label %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionEEvT_S4_.exit

_ZSt8_DestroyIPN8WasmEdge3AST11InstructionEEvT_S4_.exit: ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionEEvT_S4_.exitthread-pre-split, %_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionEEvT_S4_.exitthread-pre-split ], [ %4, %_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN8WasmEdge3AST11InstructionESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionEEvT_S4_.exit
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #18
  br label %_ZNSt12_Vector_baseIN8WasmEdge3AST11InstructionESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN8WasmEdge3AST11InstructionESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionEEvT_S4_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !28
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !26
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN8WasmEdge3AST11InstructionESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

bb.f:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29 ; 3 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.ae, %i.f
  br i1 %.not24, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = icmp sgt i64 %i.g, 0
  br i1 %i.af, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST11InstructionESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i26:                               ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i26
  %.012.i.i.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i26 ], [ %i.aq, %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i26 ], [ %i.ap, %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i ] ; 6 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i26 ], [ %i.ao, %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i ] ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.0811.i.i.i.i.i, %.0910.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZN8WasmEdge3AST11InstructionC2ERKS1_(ptr noundef nonnull align 16 dereferenceable(26) %3, ptr noundef nonnull align 16 dereferenceable(26) %.0910.i.i.i.i.i) #17
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i128, ptr %3, align 16, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %3, ptr noundef nonnull align 16 dereferenceable(26) %.0811.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !64
  store i128 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %.0811.i.i.i.i.i, align 16, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 2 uses
  %i.aj = load <2 x i32>, ptr %i.ag, align 16, !tbaa !21
  %i.ak = load <2 x i32>, ptr %i.ai, align 16, !tbaa !21
  store <2 x i32> %i.ak, ptr %i.ag, align 16, !tbaa !21
  store <2 x i32> %i.aj, ptr %i.ai, align 16, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24 ; 2 uses
  %i.am = load i16, ptr %i.ah, align 8, !tbaa !21
  %i.an = load i16, ptr %i.al, align 8, !tbaa !21
  store i16 %i.an, ptr %i.ah, align 8, !tbaa !21
  store i16 %i.am, ptr %i.al, align 8, !tbaa !21
  call void @_ZN8WasmEdge3AST11Instruction5resetEv(ptr noundef nonnull align 16 dereferenceable(26) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i

_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 3 uses
  %i.aq = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ar = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ar, label %bb.h, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST11InstructionESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit, !llvm.loop !236

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST11InstructionESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit: ; preds = %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !27
  %.pre50 = ptrtoint ptr %i.ap to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST11InstructionESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST11InstructionESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST11InstructionESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit, %bb.g
  %.pre-phi51 = phi i64 [ %.pre50, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST11InstructionESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit ], [ %i.l, %bb.g ]
  %i.as = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST11InstructionESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit ], [ %i.ac, %bb.g ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.ap, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST11InstructionESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit ], [ %i.j, %bb.g ]
  %.not4.i.i27 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.as
  br i1 %.not4.i.i27, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN8WasmEdge3AST11InstructionESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i28.preheader

.lr.ph.i.i28.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST11InstructionESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit
  %i.at = sub i64 %.pre-phi51, %i.l
  %i.au = getelementptr inbounds i8, ptr %i.j, i64 %i.at
  br label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %.lr.ph.i.i28.preheader, %.lr.ph.i.i28
  %.sroa.01.05.i.i = phi ptr [ %i.av, %.lr.ph.i.i28 ], [ %i.au, %.lr.ph.i.i28.preheader ] ; 2 uses
  call void @_ZN8WasmEdge3AST11Instruction5resetEv(ptr noundef nonnull align 16 dereferenceable(26) %.sroa.01.05.i.i) #17
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 32 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.av, %i.as
  br i1 %.not.i.i29, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN8WasmEdge3AST11InstructionESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i28, !llvm.loop !237

bb.j:                                             ; preds = %bb.f
  %i.aw = ashr exact i64 %i.ae, 5                 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i31, label %_ZSt4copyIPN8WasmEdge3AST11InstructionES3_ET0_T_S5_S4_.exit

.lr.ph.i.i.i.i.i31:                               ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i37, %.lr.ph.i.i.i.i.i31
  %.012.i.i.i.i.i32 = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i31 ], [ %i.bi, %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i37 ] ; 2 uses
  %.0811.i.i.i.i.i33 = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i31 ], [ %i.bh, %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i37 ] ; 6 uses
  %.0910.i.i.i.i.i34 = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i31 ], [ %i.bg, %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i37 ] ; 3 uses
  %.not.i.i.i.i.i.i35 = icmp eq ptr %.0811.i.i.i.i.i33, %.0910.i.i.i.i.i34
  br i1 %.not.i.i.i.i.i.i35, label %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i37, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN8WasmEdge3AST11InstructionC2ERKS1_(ptr noundef nonnull align 16 dereferenceable(26) %2, ptr noundef nonnull align 16 dereferenceable(26) %.0910.i.i.i.i.i34) #17
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i36 = load i128, ptr %2, align 16, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %2, ptr noundef nonnull align 16 dereferenceable(26) %.0811.i.i.i.i.i33, i64 16, i1 false), !tbaa.struct !64
  store i128 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i36, ptr %.0811.i.i.i.i.i33, align 16, !tbaa !21
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i33, i64 16 ; 2 uses
  %i.bb = load <2 x i32>, ptr %i.ay, align 16, !tbaa !21
  %i.bc = load <2 x i32>, ptr %i.ba, align 16, !tbaa !21
  store <2 x i32> %i.bc, ptr %i.ay, align 16, !tbaa !21
  store <2 x i32> %i.bb, ptr %i.ba, align 16, !tbaa !21
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i33, i64 24 ; 2 uses
  %i.be = load i16, ptr %i.az, align 8, !tbaa !21
  %i.bf = load i16, ptr %i.bd, align 8, !tbaa !21
  store i16 %i.bf, ptr %i.az, align 8, !tbaa !21
  store i16 %i.be, ptr %i.bd, align 8, !tbaa !21
  call void @_ZN8WasmEdge3AST11Instruction5resetEv(ptr noundef nonnull align 16 dereferenceable(26) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i37

_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i37: ; preds = %bb.l, %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i34, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i33, i64 32
  %i.bi = add nsw i64 %.012.i.i.i.i.i32, -1
  %i.bj = icmp sgt i64 %.012.i.i.i.i.i32, 1
  br i1 %i.bj, label %bb.k, label %_ZSt4copyIPN8WasmEdge3AST11InstructionES3_ET0_T_S5_S4_.exit.loopexit, !llvm.loop !238

_ZSt4copyIPN8WasmEdge3AST11InstructionES3_ET0_T_S5_S4_.exit.loopexit: ; preds = %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i37
  %.pre40 = load ptr, ptr %1, align 8, !tbaa !28
  %.pre41 = load ptr, ptr %i.ab, align 8, !tbaa !29 ; 2 uses
  %.pre42 = load ptr, ptr %0, align 8, !tbaa !28
  %.pre43 = load ptr, ptr %i.a, align 8, !tbaa !29
  %.pre45 = ptrtoint ptr %.pre41 to i64
  %.pre46 = ptrtoint ptr %.pre42 to i64
  %.pre48 = sub i64 %.pre45, %.pre46
  br label %_ZSt4copyIPN8WasmEdge3AST11InstructionES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN8WasmEdge3AST11InstructionES3_ET0_T_S5_S4_.exit: ; preds = %_ZSt4copyIPN8WasmEdge3AST11InstructionES3_ET0_T_S5_S4_.exit.loopexit, %bb.j
  %.pre-phi49 = phi i64 [ %.pre48, %_ZSt4copyIPN8WasmEdge3AST11InstructionES3_ET0_T_S5_S4_.exit.loopexit ], [ %i.ae, %bb.j ]
  %i.bk = phi ptr [ %.pre43, %_ZSt4copyIPN8WasmEdge3AST11InstructionES3_ET0_T_S5_S4_.exit.loopexit ], [ %i.b, %bb.j ] ; 2 uses
  %i.bl = phi ptr [ %.pre41, %_ZSt4copyIPN8WasmEdge3AST11InstructionES3_ET0_T_S5_S4_.exit.loopexit ], [ %i.ac, %bb.j ]
  %i.bm = phi ptr [ %.pre40, %_ZSt4copyIPN8WasmEdge3AST11InstructionES3_ET0_T_S5_S4_.exit.loopexit ], [ %i.c, %bb.j ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.pre-phi49 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.bn, %i.bk
  br i1 %.not9.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN8WasmEdge3AST11InstructionESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN8WasmEdge3AST11InstructionES3_ET0_T_S5_S4_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i ], [ %i.bl, %_ZSt4copyIPN8WasmEdge3AST11InstructionES3_ET0_T_S5_S4_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i ], [ %i.bn, %_ZSt4copyIPN8WasmEdge3AST11InstructionES3_ET0_T_S5_S4_.exit ] ; 2 uses
  call void @_ZN8WasmEdge3AST11InstructionC2ERKS1_(ptr noundef nonnull align 16 dereferenceable(26) %.011.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(26) %.0810.i.i.i.i) #17
  %i.bo = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 32 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 32
  %.not.i.i.i.i = icmp eq ptr %i.bo, %i.bk
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN8WasmEdge3AST11InstructionESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !239

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN8WasmEdge3AST11InstructionESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %.lr.ph.i.i28, %.lr.ph.i.i.i.i, %_ZSt4copyIPN8WasmEdge3AST11InstructionES3_ET0_T_S5_S4_.exit, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST11InstructionESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %_ZNSt12_Vector_baseIN8WasmEdge3AST11InstructionESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.bq = load ptr, ptr %0, align 8, !tbaa !28
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.f
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !29
  br label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN8WasmEdge3AST11InstructionESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8WasmEdge3AST11InstructionC2ERKS1_(ptr noundef nonnull align 16 dereferenceable(26) %0, ptr noundef nonnull align 16 dereferenceable(26) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load <2 x i32>, ptr %i.b, align 16, !tbaa !21
  store <2 x i32> %i.c, ptr %i.a, align 16, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i16, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  store i16 %i.f, ptr %i.d, align 8, !tbaa !21
  %i.g = lshr i16 %i.f, 8                         ; 2 uses
  %i.h = trunc nuw i16 %i.g to i8                 ; 3 uses
  %i.i = trunc i16 %i.g to i1
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %0, align 16, !tbaa !21
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 4
  %i.m = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #21
          to label %bb.c unwind label %bb.v       ; 3 uses

bb.c:                                             ; preds = %bb.b
end_hunk_0
