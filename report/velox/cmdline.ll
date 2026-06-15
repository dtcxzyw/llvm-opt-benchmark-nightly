inline.NumInlined: 1359
inline.NumDeleted: 494
begin_hunk_0_@_ZSt8_DestroyIPN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvT_SJ_
define linkonce_odr void @_ZSt8_DestroyIPN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvT_SJ_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5boost9function1ISt6vectorINS2_15program_options12basic_optionIcEESaIS7_EERS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEEEEEvT_SL_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.h, %_ZSt8_DestroyIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 4 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !17 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %_ZNK5boost6detail8function13basic_vtable1ISt6vectorINS_15program_options12basic_optionIcEESaIS6_EERS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEE5clearERNS1_15function_bufferE.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK5boost6detail8function13basic_vtable1ISt6vectorINS_15program_options12basic_optionIcEESaIS6_EERS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEE5clearERNS1_15function_bufferE.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i, i64 8 ; 2 uses
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i32 noundef 2)
          to label %_ZNK5boost6detail8function13basic_vtable1ISt6vectorINS_15program_options12basic_optionIcEESaIS6_EERS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEE5clearERNS1_15function_bufferE.exit.i.i.i.i.i unwind label %bb.e, !inline_history !37

_ZNK5boost6detail8function13basic_vtable1ISt6vectorINS_15program_options12basic_optionIcEESaIS6_EERS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEE5clearERNS1_15function_bufferE.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  store ptr null, ptr %.05.i, align 8, !tbaa !17
  br label %_ZSt8_DestroyIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvPT_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #29
  unreachable

_ZSt8_DestroyIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvPT_.exit.i: ; preds = %_ZNK5boost6detail8function13basic_vtable1ISt6vectorINS_15program_options12basic_optionIcEESaIS6_EERS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEE5clearERNS1_15function_bufferE.exit.i.i.i.i.i, %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.h, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5boost9function1ISt6vectorINS2_15program_options12basic_optionIcEESaIS7_EERS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEEEEEvT_SL_.exit, label %.lr.ph.i, !llvm.loop !87

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5boost9function1ISt6vectorINS2_15program_options12basic_optionIcEESaIS7_EERS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEEEEEvT_SL_.exit: ; preds = %_ZSt8_DestroyIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt10destroy_atIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvPT_(ptr noundef %0) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN5boost9function1ISt6vectorINS_15program_options12basic_optionIcEESaIS4_EERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %_ZNK5boost6detail8function13basic_vtable1ISt6vectorINS_15program_options12basic_optionIcEESaIS6_EERS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEE5clearERNS1_15function_bufferE.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNK5boost6detail8function13basic_vtable1ISt6vectorINS_15program_options12basic_optionIcEESaIS6_EERS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEE5clearERNS1_15function_bufferE.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i32 noundef 2)
          to label %_ZNK5boost6detail8function13basic_vtable1ISt6vectorINS_15program_options12basic_optionIcEESaIS6_EERS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEE5clearERNS1_15function_bufferE.exit.i.i unwind label %bb.e, !inline_history !37

_ZNK5boost6detail8function13basic_vtable1ISt6vectorINS_15program_options12basic_optionIcEESaIS6_EERS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEE5clearERNS1_15function_bufferE.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  store ptr null, ptr %0, align 8, !tbaa !17
  br label %_ZN5boost9function1ISt6vectorINS_15program_options12basic_optionIcEESaIS4_EERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #29
  unreachable

_ZN5boost9function1ISt6vectorINS_15program_options12basic_optionIcEESaIS4_EERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEED2Ev.exit: ; preds = %bb.a, %_ZNK5boost6detail8function13basic_vtable1ISt6vectorINS_15program_options12basic_optionIcEESaIS6_EERS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEE5clearERNS1_15function_bufferE.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN5boost9function1IS_INS0_15program_options12basic_optionIcEESaIS4_EERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEESaISG_EE12emplace_backIJSG_EEERSG_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !17
  %i.e = icmp eq ptr %1, %i.b
  br i1 %i.e, label %_ZSt12construct_atIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEJSH_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSJ_DpOSK_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !17     ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZSt12construct_atIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEJSH_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSJ_DpOSK_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.f, ptr %i.b, align 8, !tbaa !17
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = trunc i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br label %_ZN5boost9function1ISt6vectorINS_15program_options12basic_optionIcEESaIS4_EERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEE5clearEv.exit.sink.split.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i32 noundef 1)
          to label %_ZN5boost9function1ISt6vectorINS_15program_options12basic_optionIcEESaIS4_EERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEE5clearEv.exit.sink.split.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %i.n) #26 ; 0 uses
  store ptr null, ptr %i.b, align 8, !tbaa !17
  invoke void @__cxa_rethrow() #27
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

_ZN5boost9function1ISt6vectorINS_15program_options12basic_optionIcEESaIS4_EERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEE5clearEv.exit.sink.split.i.i.i: ; preds = %bb.f, %bb.e
  store ptr null, ptr %1, align 8, !tbaa !17
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !54
  br label %_ZSt12construct_atIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEJSH_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSJ_DpOSK_.exit

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.p

bb.j:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #29
  unreachable

bb.k:                                             ; preds = %bb.g
  unreachable

_ZSt12construct_atIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEJSH_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSJ_DpOSK_.exit: ; preds = %bb.b, %bb.c, %_ZN5boost9function1ISt6vectorINS_15program_options12basic_optionIcEESaIS4_EERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEE5clearEv.exit.sink.split.i.i.i
  %i.s = phi ptr [ %i.b, %bb.b ], [ %i.b, %bb.c ], [ %.pre, %_ZN5boost9function1ISt6vectorINS_15program_options12basic_optionIcEESaIS4_EERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEE5clearEv.exit.sink.split.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !54
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN5boost9function1IS_INS0_15program_options12basic_optionIcEESaIS4_EERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEESaISG_EE17_M_realloc_insertIJSG_EEEvN9__gnu_cxx17__normal_iteratorIPSG_SI_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %.pre3 = load ptr, ptr %i.a, align 8, !tbaa !165
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZSt12construct_atIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEJSH_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSJ_DpOSK_.exit
  %i.u = phi ptr [ %.pre3, %bb.l ], [ %i.t, %_ZSt12construct_atIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEJSH_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSJ_DpOSK_.exit ]
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -32
  ret ptr %i.v
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5boost9function1IS_INS0_15program_options12basic_optionIcEESaIS4_EERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEESaISG_EE17_M_realloc_insertIJSG_EEEvN9__gnu_cxx17__normal_iteratorIPSG_SI_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !57     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5boost9function1IS_INS0_15program_options12basic_optionIcEESaIS4_EERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEESaISG_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #27
  unreachable

_ZNKSt6vectorIN5boost9function1IS_INS0_15program_options12basic_optionIcEESaIS4_EERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEESaISG_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  store ptr null, ptr %i.q, align 8, !tbaa !17
  %3 = load ptr, ptr %2, align 8, !tbaa !17       ; 4 uses
  %i.r = icmp eq ptr %3, null
  br i1 %i.r, label %_ZNSt16allocator_traitsISaIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEE9constructISH_JSH_EEEvRSI_PT_DpOT0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN5boost9function1IS_INS0_15program_options12basic_optionIcEESaIS4_EERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEESaISG_EE12_M_check_lenEmPKc.exit
  store ptr %3, ptr %i.q, align 8, !tbaa !17
  %i.s = ptrtoint ptr %3 to i64
  %i.t = trunc i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  br label %_ZN5boost9function1ISt6vectorINS_15program_options12basic_optionIcEESaIS4_EERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEE5clearEv.exit.sink.split.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %3, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i32 noundef 1)
          to label %_ZN5boost9function1ISt6vectorINS_15program_options12basic_optionIcEESaIS4_EERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEE5clearEv.exit.sink.split.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.z) #26 ; 0 uses
  store ptr null, ptr %i.q, align 8, !tbaa !17
  invoke void @__cxa_rethrow() #27
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.af unwind label %bb.h

_ZN5boost9function1ISt6vectorINS_15program_options12basic_optionIcEESaIS4_EERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEE5clearEv.exit.sink.split.i.i.i: ; preds = %bb.e, %bb.d
  store ptr null, ptr %2, align 8, !tbaa !17
  br label %_ZNSt16allocator_traitsISaIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEE9constructISH_JSH_EEEvRSI_PT_DpOT0_.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #29
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable

_ZNSt16allocator_traitsISaIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEE9constructISH_JSH_EEEvRSI_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN5boost9function1IS_INS0_15program_options12basic_optionIcEESaIS4_EERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEESaISG_EE12_M_check_lenEmPKc.exit, %_ZN5boost9function1ISt6vectorINS_15program_options12basic_optionIcEESaIS4_EERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEE5clearEv.exit.sink.split.i.i.i
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEESI_SaISH_EET0_T_SL_SK_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEE9constructISH_JSH_EEEvRSI_PT_DpOT0_.exit, %_ZSt10_ConstructIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEJRKSH_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.am, %_ZSt10_ConstructIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEJRKSH_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEE9constructISH_JSH_EEEvRSI_PT_DpOT0_.exit ] ; 6 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.al, %_ZSt10_ConstructIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEJRKSH_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEE9constructISH_JSH_EEEvRSI_PT_DpOT0_.exit ] ; 3 uses
  store ptr null, ptr %.016.i.i.i.i.i, align 8, !tbaa !17
  %i.ae = load ptr, ptr %.01215.i.i.i.i.i, align 8, !tbaa !17 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEJRKSH_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.ae, ptr %.016.i.i.i.i.i, align 8, !tbaa !17
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = trunc i64 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 8 ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  br label %_ZSt10_ConstructIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEJRKSH_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 8
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i32 noundef 0)
          to label %_ZSt10_ConstructIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEJRKSH_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.m, !inline_history !163

_ZSt10_ConstructIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEJRKSH_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k, %.lr.ph.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEESI_SaISH_EET0_T_SL_SK_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !164

bb.m:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  %i.ap = tail call ptr @__cxa_begin_catch(ptr %i.ao) #26 ; 0 uses
  invoke void @_ZSt8_DestroyIPN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvT_SJ_(ptr noundef nonnull %i.p, ptr noundef nonnull %.016.i.i.i.i.i)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_rethrow() #27
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.ae unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #29
  unreachable

bb.q:                                             ; preds = %bb.n
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEESI_SaISH_EET0_T_SL_SK_RT1_.exit: ; preds = %_ZSt10_ConstructIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEJRKSH_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEE9constructISH_JSH_EEEvRSI_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEE9constructISH_JSH_EEEvRSI_PT_DpOT0_.exit ], [ %i.am, %_ZSt10_ConstructIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEJRKSH_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32 ; 4 uses
  %.not14.i.i.i.i.i31 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i31, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEESI_SaISH_EET0_T_SL_SK_RT1_.exit41, label %.lr.ph.i.i.i.i.i32

.lr.ph.i.i.i.i.i32:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEESI_SaISH_EET0_T_SL_SK_RT1_.exit, %_ZSt10_ConstructIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEJRKSH_EEvPT_DpOT0_.exit.i.i.i.i.i36
  %.016.i.i.i.i.i33 = phi ptr [ %i.bc, %_ZSt10_ConstructIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEJRKSH_EEvPT_DpOT0_.exit.i.i.i.i.i36 ], [ %i.at, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEESI_SaISH_EET0_T_SL_SK_RT1_.exit ] ; 6 uses
  %.01215.i.i.i.i.i34 = phi ptr [ %i.bb, %_ZSt10_ConstructIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEJRKSH_EEvPT_DpOT0_.exit.i.i.i.i.i36 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEESI_SaISH_EET0_T_SL_SK_RT1_.exit ] ; 3 uses
  store ptr null, ptr %.016.i.i.i.i.i33, align 8, !tbaa !17
  %i.au = load ptr, ptr %.01215.i.i.i.i.i34, align 8, !tbaa !17 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i35 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i.i.i35, label %_ZSt10_ConstructIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEJRKSH_EEvPT_DpOT0_.exit.i.i.i.i.i36, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i32
  store ptr %i.au, ptr %.016.i.i.i.i.i33, align 8, !tbaa !17
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = trunc i64 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i34, i64 8 ; 2 uses
  br i1 %i.aw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i33, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false)
  br label %_ZSt10_ConstructIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEJRKSH_EEvPT_DpOT0_.exit.i.i.i.i.i36

bb.t:                                             ; preds = %bb.r
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !34
  %i.ba = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i33, i64 8
  invoke void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i32 noundef 0)
          to label %_ZSt10_ConstructIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEJRKSH_EEvPT_DpOT0_.exit.i.i.i.i.i36 unwind label %bb.u, !inline_history !163

_ZSt10_ConstructIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEJRKSH_EEvPT_DpOT0_.exit.i.i.i.i.i36: ; preds = %bb.t, %bb.s, %.lr.ph.i.i.i.i.i32
  %i.bb = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i34, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i33, i64 32 ; 2 uses
  %.not.i.i.i.i.i37 = icmp eq ptr %i.bb, %i.b
  br i1 %.not.i.i.i.i.i37, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEESI_SaISH_EET0_T_SL_SK_RT1_.exit41, label %.lr.ph.i.i.i.i.i32, !llvm.loop !164

bb.u:                                             ; preds = %bb.t
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  %i.bf = tail call ptr @__cxa_begin_catch(ptr %i.be) #26 ; 0 uses
  invoke void @_ZSt8_DestroyIPN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvT_SJ_(ptr noundef nonnull %i.at, ptr noundef nonnull %.016.i.i.i.i.i33)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @__cxa_rethrow() #27
          to label %bb.y unwind label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.af unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #29
  unreachable

bb.y:                                             ; preds = %bb.v
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEESI_SaISH_EET0_T_SL_SK_RT1_.exit41: ; preds = %_ZSt10_ConstructIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEJRKSH_EEvPT_DpOT0_.exit.i.i.i.i.i36, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEESI_SaISH_EET0_T_SL_SK_RT1_.exit
  %.0.lcssa.i.i.i.i.i38 = phi ptr [ %i.at, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEESI_SaISH_EET0_T_SL_SK_RT1_.exit ], [ %i.bc, %_ZSt10_ConstructIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEJRKSH_EEvPT_DpOT0_.exit.i.i.i.i.i36 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvT_SJ_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEESI_SaISH_EET0_T_SL_SK_RT1_.exit41, %_ZSt8_DestroyIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.bq, %_ZSt8_DestroyIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEESI_SaISH_EET0_T_SL_SK_RT1_.exit41 ] ; 4 uses
  %i.bj = load ptr, ptr %.05.i.i, align 8, !tbaa !17 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvPT_.exit.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = trunc i64 %i.bk to i1
  br i1 %i.bl, label %_ZNK5boost6detail8function13basic_vtable1ISt6vectorINS_15program_options12basic_optionIcEESaIS6_EERS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEE5clearERNS1_15function_bufferE.exit.i.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !34 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK5boost6detail8function13basic_vtable1ISt6vectorINS_15program_options12basic_optionIcEESaIS6_EERS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEE5clearERNS1_15function_bufferE.exit.i.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  invoke void %i.bm(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i32 noundef 2)
          to label %_ZNK5boost6detail8function13basic_vtable1ISt6vectorINS_15program_options12basic_optionIcEESaIS6_EERS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEE5clearERNS1_15function_bufferE.exit.i.i.i.i.i.i unwind label %bb.ac, !inline_history !37

_ZNK5boost6detail8function13basic_vtable1ISt6vectorINS_15program_options12basic_optionIcEESaIS6_EERS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEE5clearERNS1_15function_bufferE.exit.i.i.i.i.i.i: ; preds = %bb.ab, %bb.aa, %bb.z
  store ptr null, ptr %.05.i.i, align 8, !tbaa !17
  br label %_ZSt8_DestroyIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvPT_.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  tail call void @__clang_call_terminate(ptr %i.bp) #29
  unreachable

_ZSt8_DestroyIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvPT_.exit.i.i: ; preds = %_ZNK5boost6detail8function13basic_vtable1ISt6vectorINS_15program_options12basic_optionIcEESaIS6_EERS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEE5clearERNS1_15function_bufferE.exit.i.i.i.i.i.i, %.lr.ph.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bq, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvT_SJ_.exit, label %.lr.ph.i.i, !llvm.loop !87

_ZSt8_DestroyIPN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvT_SJ_.exit: ; preds = %_ZSt8_DestroyIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEESI_SaISH_EET0_T_SL_SK_RT1_.exit41
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i42 = icmp eq ptr %i.c, null
  br i1 %.not.i42, label %_ZNSt12_Vector_baseIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEESaISH_EE13_M_deallocateEPSH_m.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZSt8_DestroyIPN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvT_SJ_.exit
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !88
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bu) #30
  br label %_ZNSt12_Vector_baseIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEESaISH_EE13_M_deallocateEPSH_m.exit

_ZNSt12_Vector_baseIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEESaISH_EE13_M_deallocateEPSH_m.exit: ; preds = %_ZSt8_DestroyIPN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvT_SJ_.exit, %bb.ad
  store ptr %i.p, ptr %0, align 8, !tbaa !57
  store ptr %.0.lcssa.i.i.i.i.i38, ptr %i.a, align 8, !tbaa !54
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !88
  ret void

bb.ae:                                            ; preds = %bb.o
  %i.bw = extractvalue { ptr, i32 } %i.aq, 0
  %i.bx = tail call ptr @__cxa_begin_catch(ptr %i.bw) #26 ; 0 uses
  tail call void @_ZSt10destroy_atIN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvPT_(ptr noundef nonnull %i.q)
  br label %_ZSt8_DestroyIPN5boost9function1ISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EERS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEESH_EvT_SJ_RSaIT0_E.exit

bb.af:                                            ; preds = %bb.g, %bb.w
  %.0.lpad-body.ph = phi ptr [ %i.p, %bb.g ], [ %i.at, %bb.w ]
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %i.bg, %bb.w ]
  %i.by = extractvalue { ptr, i32 } %eh.lpad-body.ph, 0
end_hunk_0
