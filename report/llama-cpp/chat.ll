Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/chat?download=true
inline.NumInlined: 13193
inline.NumDeleted: 4330
loop-unroll.NumCompletelyUnrolled: 113
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_ZL37common_chat_params_init_deepseek_v3_2RK20common_chat_templateRKN10autoparser17generation_paramsE:bb.a
bb.ht:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit527
  store ptr %48, ptr %i.ash, align 16, !tbaa !202
  %.sroa.5654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ash, i64 8
  store ptr %i.l, ptr %.sroa.5654.0..sroa_idx, align 8, !tbaa !256
  %.sroa.6655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ash, i64 16
  store ptr %2, ptr %.sroa.6655.0..sroa_idx, align 16, !tbaa !258
  %.sroa.7656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ash, i64 24
  store ptr %44, ptr %.sroa.7656.0..sroa_idx, align 8, !tbaa !202
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ash, i64 32
  store ptr %46, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !202
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ash, i64 40
  store ptr %40, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !202
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ash, i64 48
  store ptr %42, ptr %.sroa.10.0..sroa_idx, align 16, !tbaa !202
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ash, i64 56
  store ptr %34, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !202
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ash, i64 64
  store ptr %37, ptr %.sroa.12.0..sroa_idx, align 16, !tbaa !202
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ash, i64 72
  store ptr %i.k, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !256
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ash, i64 80
  store ptr %i.j, ptr %.sroa.14.0..sroa_idx, align 16, !tbaa !256
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ash, i64 88
  store ptr %31, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !202
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ash, i64 96
  store ptr %32, ptr %.sroa.16.0..sroa_idx, align 16, !tbaa !202
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ash, i64 104
  store ptr %49, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !202
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ash, i64 112
  store ptr %i.h, ptr %.sroa.18.0..sroa_idx, align 16, !tbaa !256
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ash, i64 120
  store ptr %i.i, ptr %.sroa.19.0..sroa_idx, align 8, !tbaa !256
  store ptr %i.ash, ptr %65, align 8, !tbaa !242
  store ptr @"_ZNSt17_Function_handlerIF17common_peg_parserR23common_chat_peg_builderEZL37common_chat_params_init_deepseek_v3_2RK20common_chat_templateRKN10autoparser17generation_paramsEE3$_0E9_M_invokeERKSt9_Any_dataS2_", ptr %i.asf, align 8, !tbaa !261
  store ptr @"_ZNSt17_Function_handlerIF17common_peg_parserR23common_chat_peg_builderEZL37common_chat_params_init_deepseek_v3_2RK20common_chat_templateRKN10autoparser17generation_paramsEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation", ptr %i.ase, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !887
  invoke void @_ZN25common_peg_parser_builderC2Ev(ptr noundef nonnull align 8 dereferenceable(88) %3)
          to label %.noexc530 unwind label %bb.iz

.noexc530:                                        ; preds = %bb.ht
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !887
  %i.asi = load ptr, ptr %i.ase, align 8, !tbaa !262, !noalias !888
  %.not.i.i.i = icmp eq ptr %i.asi, null
  br i1 %.not.i.i.i, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %.noexc530
  invoke void @_ZSt25__throw_bad_function_callv() #33
          to label %.noexc.i529 unwind label %bb.hx, !noalias !887

.noexc.i529:                                      ; preds = %bb.hu
  unreachable

bb.hv:                                            ; preds = %.noexc530
  %i.asj = load ptr, ptr %i.asf, align 8, !tbaa !261, !noalias !888
  invoke void %i.asj(ptr dead_on_unwind nonnull writable sret(%class.common_peg_parser) align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull align 8 dereferenceable(88) %3)
          to label %_ZNKSt8functionIF17common_peg_parserR23common_chat_peg_builderEEclES2_.exit.i unwind label %bb.hx, !noalias !887, !inline_history !13

_ZNKSt8functionIF17common_peg_parserR23common_chat_peg_builderEEclES2_.exit.i: ; preds = %bb.hv
  invoke void @_ZN25common_peg_parser_builder8set_rootERK17common_peg_parser(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.hw unwind label %bb.hx, !noalias !887

bb.hw:                                            ; preds = %_ZNKSt8functionIF17common_peg_parserR23common_chat_peg_builderEEclES2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !887
  invoke void @_ZN25common_peg_parser_builder5buildEv(ptr dead_on_unwind nonnull writable sret(%class.common_peg_arena) align 8 %64, ptr noundef nonnull align 8 dereferenceable(88) %3)
          to label %bb.ia unwind label %bb.hy

bb.hx:                                            ; preds = %_ZNKSt8functionIF17common_peg_parserR23common_chat_peg_builderEEclES2_.exit.i, %bb.hv, %bb.hu
  %i.ask = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !887
  br label %bb.hz

bb.hy:                                            ; preds = %bb.hw
  %i.asl = landingpad { ptr, i32 }
          cleanup
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx
  %.pn.i = phi { ptr, i32 } [ %i.asl, %bb.hy ], [ %i.ask, %bb.hx ]
  call void @_ZN16common_peg_arenaD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !887
  br label %.body531

bb.ia:                                            ; preds = %bb.hw
  call void @_ZN16common_peg_arenaD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !887
  %i.asm = load ptr, ptr %i.ase, align 8, !tbaa !262 ; 2 uses
  %.not.i533 = icmp eq ptr %i.asm, null
  br i1 %.not.i533, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.asn = invoke noundef zeroext i1 %i.asm(ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull align 8 dereferenceable(32) %65, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.ic ; 0 uses

bb.ic:                                            ; preds = %bb.ib
  %i.aso = landingpad { ptr, i32 }
          catch ptr null
  %i.asp = extractvalue { ptr, i32 } %i.aso, 0
  call void @__clang_call_terminate(ptr %i.asp) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.ia, %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #32
  invoke void @_ZNK16common_peg_arena4saveB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %66, ptr noundef nonnull align 8 dereferenceable(88) %64)
          to label %bb.id unwind label %bb.jc

bb.id:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.asq = load ptr, ptr %i.ab, align 8, !tbaa !61 ; 6 uses
  %i.asr = icmp eq ptr %i.asq, %i.ac
  %i.ass = load ptr, ptr %66, align 8, !tbaa !61  ; 6 uses
  %i.ast = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 4 uses
  %i.asu = icmp eq ptr %i.ass, %i.ast             ; 2 uses
  br i1 %i.asr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i540, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i534

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i540: ; preds = %bb.id
  br i1 %i.asu, label %bb.ie, label %.thread.i541

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i534: ; preds = %bb.id
  br i1 %i.asu, label %bb.ie, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i535

bb.ie:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i534, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i540
  %i.asv = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 2 uses
  %i.asw = load i64, ptr %i.asv, align 8, !tbaa !57 ; 3 uses
  %i.asx = icmp ult i64 %i.asw, 16
  call void @llvm.assume(i1 %i.asx)
  %.not21.i537 = icmp eq ptr %66, %i.ab
  br i1 %.not21.i537, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit542, label %bb.if, !prof !89

bb.if:                                            ; preds = %bb.ie
  switch i64 %i.asw, label %bb.ih [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i538
    i64 1, label %bb.ig
  ]

bb.ig:                                            ; preds = %bb.if
  %i.asy = load i8, ptr %i.ass, align 1, !tbaa !63
  store i8 %i.asy, ptr %i.asq, align 1, !tbaa !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i538

bb.ih:                                            ; preds = %bb.if
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.asq, ptr align 1 %i.ass, i64 %i.asw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i538

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i538: ; preds = %bb.ih, %bb.ig, %bb.if
  %i.asz = load i64, ptr %i.asv, align 8, !tbaa !57 ; 2 uses
  store i64 %i.asz, ptr %i.ad, align 8, !tbaa !57
  %i.ata = load ptr, ptr %i.ab, align 8, !tbaa !61
  %i.atb = getelementptr inbounds nuw i8, ptr %i.ata, i64 %i.asz
  store i8 0, ptr %i.atb, align 1, !tbaa !63
  %.pre.i539 = load ptr, ptr %66, align 8, !tbaa !61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit542

.thread.i541:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i540
  store ptr %i.ass, ptr %i.ab, align 8, !tbaa !61
  %i.atc = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.atd = load <2 x i64>, ptr %i.atc, align 8, !tbaa !63
  store <2 x i64> %i.atd, ptr %i.ad, align 8, !tbaa !63
  br label %bb.ij

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i535: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i534
  %i.ate = load i64, ptr %i.ac, align 8, !tbaa !63
  store ptr %i.ass, ptr %i.ab, align 8, !tbaa !61
  %i.atf = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.atg = load <2 x i64>, ptr %i.atf, align 8, !tbaa !63
  store <2 x i64> %i.atg, ptr %i.ad, align 8, !tbaa !63
  %.not.i536 = icmp eq ptr %i.asq, null
  br i1 %.not.i536, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i535
  store ptr %i.asq, ptr %66, align 8, !tbaa !61
  store i64 %i.ate, ptr %i.ast, align 8, !tbaa !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit542

bb.ij:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i535, %.thread.i541
  store ptr %i.ast, ptr %66, align 8, !tbaa !61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit542

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit542: ; preds = %bb.ie, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i538, %bb.ii, %bb.ij
  %i.ath = phi ptr [ %.pre.i539, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i538 ], [ %i.asq, %bb.ii ], [ %i.ast, %bb.ij ], [ %i.ass, %bb.ie ]
  %i.ati = getelementptr inbounds nuw i8, ptr %66, i64 8
  store i64 0, ptr %i.ati, align 8, !tbaa !57
  store i8 0, ptr %i.ath, align 1, !tbaa !63
  %i.atj = load ptr, ptr %66, align 8, !tbaa !61  ; 2 uses
  %i.atk = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 2 uses
  %i.atl = icmp eq ptr %i.atj, %i.atk
  br i1 %i.atl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i543

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i543: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit542
  %i.atm = load i64, ptr %i.atk, align 8, !tbaa !63
  %i.atn = add i64 %i.atm, 1
  call void @_ZdlPvm(ptr noundef %i.atj, i64 noundef %i.atn) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit542, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i543
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #32
  br i1 %i.nf, label %bb.ik, label %bb.jj

bb.ik:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545
  %i.ato = load i8, ptr %i.k, align 1, !range !166
  %71 = icmp eq i8 %i.ato, 0
  %72 = select i1 %i.ms, i1 %71, i1 false
  %73 = zext i1 %72 to i8
  store i8 %73, ptr %i.s, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #32
  %i.atp = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 3 uses
  %i.atq = getelementptr inbounds nuw i8, ptr %68, i64 8
  store i64 0, ptr %i.atq, align 8
  %i.atr = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #35
          to label %bb.il unwind label %bb.jd     ; 5 uses

bb.il:                                            ; preds = %bb.ik
  %i.ats = getelementptr inbounds nuw i8, ptr %68, i64 24
  store ptr %2, ptr %i.atr, align 16, !tbaa !258
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atr, i64 8
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !256
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atr, i64 16
  store ptr %64, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !265
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atr, i64 24
  store ptr %0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !267
  store ptr %i.atr, ptr %68, align 8, !tbaa !242
  store ptr @"_ZNSt17_Function_handlerIFvRK22common_grammar_builderEZL37common_chat_params_init_deepseek_v3_2RK20common_chat_templateRKN10autoparser17generation_paramsEE3$_1E9_M_invokeERKSt9_Any_dataS2_", ptr %i.ats, align 8, !tbaa !269
  store ptr @"_ZNSt17_Function_handlerIFvRK22common_grammar_builderEZL37common_chat_params_init_deepseek_v3_2RK20common_chat_templateRKN10autoparser17generation_paramsEE3$_1E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation", ptr %i.atp, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #32
  store i8 0, ptr %69, align 1, !tbaa !271
  invoke void @_Z13build_grammarB5cxx11RKSt8functionIFvRK22common_grammar_builderEERK22common_grammar_options(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %67, ptr noundef nonnull align 8 dereferenceable(32) %68, ptr noundef nonnull align 1 dereferenceable(1) %69)
          to label %bb.im unwind label %bb.je

bb.im:                                            ; preds = %bb.il
  %i.att = load ptr, ptr %i.p, align 8, !tbaa !61 ; 6 uses
  %i.atu = icmp eq ptr %i.att, %i.q
  %i.atv = load ptr, ptr %67, align 8, !tbaa !61  ; 6 uses
  %i.atw = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 4 uses
  %i.atx = icmp eq ptr %i.atv, %i.atw             ; 2 uses
  br i1 %i.atu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i553, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i547

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i553: ; preds = %bb.im
  br i1 %i.atx, label %bb.in, label %.thread.i554

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i547: ; preds = %bb.im
  br i1 %i.atx, label %bb.in, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i548

bb.in:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i547, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i553
  %i.aty = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 2 uses
  %i.atz = load i64, ptr %i.aty, align 8, !tbaa !57 ; 3 uses
  %i.aua = icmp ult i64 %i.atz, 16
  call void @llvm.assume(i1 %i.aua)
  %.not21.i550 = icmp eq ptr %67, %i.p
  br i1 %.not21.i550, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit555, label %bb.io, !prof !89

bb.io:                                            ; preds = %bb.in
  switch i64 %i.atz, label %bb.iq [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i551
    i64 1, label %bb.ip
  ]

bb.ip:                                            ; preds = %bb.io
  %i.aub = load i8, ptr %i.atv, align 1, !tbaa !63
  store i8 %i.aub, ptr %i.att, align 1, !tbaa !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i551

bb.iq:                                            ; preds = %bb.io
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.att, ptr align 1 %i.atv, i64 %i.atz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i551

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i551: ; preds = %bb.iq, %bb.ip, %bb.io
  %i.auc = load i64, ptr %i.aty, align 8, !tbaa !57 ; 2 uses
  store i64 %i.auc, ptr %i.r, align 8, !tbaa !57
  %i.aud = load ptr, ptr %i.p, align 8, !tbaa !61
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 %i.auc
  store i8 0, ptr %i.aue, align 1, !tbaa !63
  %.pre.i552 = load ptr, ptr %67, align 8, !tbaa !61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit555

.thread.i554:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i553
  store ptr %i.atv, ptr %i.p, align 8, !tbaa !61
  %i.auf = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.aug = load <2 x i64>, ptr %i.auf, align 8, !tbaa !63
  store <2 x i64> %i.aug, ptr %i.r, align 8, !tbaa !63
  br label %bb.is

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i548: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i547
  %i.auh = load i64, ptr %i.q, align 8, !tbaa !63
  store ptr %i.atv, ptr %i.p, align 8, !tbaa !61
  %i.aui = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.auj = load <2 x i64>, ptr %i.aui, align 8, !tbaa !63
  store <2 x i64> %i.auj, ptr %i.r, align 8, !tbaa !63
  %.not.i549 = icmp eq ptr %i.att, null
  br i1 %.not.i549, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i548
  store ptr %i.att, ptr %67, align 8, !tbaa !61
  store i64 %i.auh, ptr %i.atw, align 8, !tbaa !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit555

bb.is:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i548, %.thread.i554
  store ptr %i.atw, ptr %67, align 8, !tbaa !61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit555

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit555: ; preds = %bb.in, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i551, %bb.ir, %bb.is
  %i.auk = phi ptr [ %.pre.i552, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i551 ], [ %i.att, %bb.ir ], [ %i.atw, %bb.is ], [ %i.atv, %bb.in ]
  %i.aul = getelementptr inbounds nuw i8, ptr %67, i64 8
  store i64 0, ptr %i.aul, align 8, !tbaa !57
  store i8 0, ptr %i.auk, align 1, !tbaa !63
  %i.aum = load ptr, ptr %67, align 8, !tbaa !61  ; 2 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 2 uses
  %i.auo = icmp eq ptr %i.aum, %i.aun
  br i1 %i.auo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i556

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i556: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit555
  %i.aup = load i64, ptr %i.aun, align 8, !tbaa !63
  %i.auq = add i64 %i.aup, 1
  call void @_ZdlPvm(ptr noundef %i.aum, i64 noundef %i.auq) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit555, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i556
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #32
  %i.aur = load ptr, ptr %i.atp, align 8, !tbaa !262 ; 2 uses
  %.not.i559 = icmp eq ptr %i.aur, null
  br i1 %.not.i559, label %_ZNSt14_Function_baseD2Ev.exit560, label %bb.it

bb.it:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558
  %i.aus = invoke noundef zeroext i1 %i.aur(ptr noundef nonnull align 8 dereferenceable(32) %68, ptr noundef nonnull align 8 dereferenceable(32) %68, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit560 unwind label %bb.iu ; 0 uses

bb.iu:                                            ; preds = %bb.it
  %i.aut = landingpad { ptr, i32 }
          catch ptr null
  %i.auu = extractvalue { ptr, i32 } %i.aut, 0
  call void @__clang_call_terminate(ptr %i.auu) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit560:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558, %bb.it
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #32
  store i32 1, ptr %70, align 8, !tbaa !274
  %i.auv = getelementptr inbounds nuw i8, ptr %70, i64 8 ; 4 uses
  %i.auw = getelementptr inbounds nuw i8, ptr %70, i64 24 ; 3 uses
  store ptr %i.auw, ptr %i.auv, align 8, !tbaa !60
  %i.aux = load ptr, ptr %34, align 8, !tbaa !61  ; 2 uses
  %i.auy = load i64, ptr %i.rp, align 8, !tbaa !57 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.auy, ptr %i.a, align 8, !tbaa !62
  %i.auz = icmp ugt i64 %i.auy, 15
  br i1 %i.auz, label %.noexc.i562, label %._crit_edge.i.i561

.noexc.i562:                                      ; preds = %_ZNSt14_Function_baseD2Ev.exit560
  %i.ava = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.auv, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc563 unwind label %bb.jh ; 2 uses

.noexc563:                                        ; preds = %.noexc.i562
  store ptr %i.ava, ptr %i.auv, align 8, !tbaa !61
  %i.avb = load i64, ptr %i.a, align 8, !tbaa !62
  store i64 %i.avb, ptr %i.auw, align 8, !tbaa !63
  br label %._crit_edge.i.i561

._crit_edge.i.i561:                               ; preds = %.noexc563, %_ZNSt14_Function_baseD2Ev.exit560
  %i.avc = phi ptr [ %i.ava, %.noexc563 ], [ %i.auw, %_ZNSt14_Function_baseD2Ev.exit560 ] ; 2 uses
  switch i64 %i.auy, label %bb.iw [
    i64 1, label %bb.iv
    i64 0, label %bb.ix
  ]

bb.iv:                                            ; preds = %._crit_edge.i.i561
  %i.avd = load i8, ptr %i.aux, align 1, !tbaa !63
  store i8 %i.avd, ptr %i.avc, align 1, !tbaa !63
  br label %bb.ix

bb.iw:                                            ; preds = %._crit_edge.i.i561
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.avc, ptr align 1 %i.aux, i64 %i.auy, i1 false)
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iv, %._crit_edge.i.i561
  %i.ave = load i64, ptr %i.a, align 8, !tbaa !62 ; 2 uses
  %i.avf = getelementptr inbounds nuw i8, ptr %70, i64 16
  store i64 %i.ave, ptr %i.avf, align 8, !tbaa !57
  %i.avg = load ptr, ptr %i.auv, align 8, !tbaa !61
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avg, i64 %i.ave
  store i8 0, ptr %i.avh, align 1, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.avi = getelementptr inbounds nuw i8, ptr %70, i64 40
  store i32 -1, ptr %i.avi, align 8, !tbaa !275
  %i.avj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.avk = getelementptr inbounds nuw i8, ptr %70, i64 48
  invoke void @_ZNSt6vectorI22common_grammar_triggerSaIS0_EE13_M_assign_auxIPKS0_EEvT_S6_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.avj, ptr noundef nonnull %70, ptr noundef nonnull %i.avk)
          to label %_ZNSt6vectorI22common_grammar_triggerSaIS0_EEaSESt16initializer_listIS0_E.exit.preheader unwind label %bb.ji

_ZNSt6vectorI22common_grammar_triggerSaIS0_EEaSESt16initializer_listIS0_E.exit.preheader: ; preds = %bb.ix
  %i.avl = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.avm = load ptr, ptr %i.avl, align 8, !tbaa !61 ; 2 uses
  %i.avn = getelementptr inbounds nuw i8, ptr %70, i64 24 ; 2 uses
  %i.avo = icmp eq ptr %i.avm, %i.avn
  br i1 %i.avo, label %_ZN22common_grammar_triggerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i566

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i566: ; preds = %_ZNSt6vectorI22common_grammar_triggerSaIS0_EEaSESt16initializer_listIS0_E.exit.preheader
  %i.avp = load i64, ptr %i.avn, align 8, !tbaa !63
  %i.avq = add i64 %i.avp, 1
  call void @_ZdlPvm(ptr noundef %i.avm, i64 noundef %i.avq) #34
  br label %_ZN22common_grammar_triggerD2Ev.exit

_ZN22common_grammar_triggerD2Ev.exit:             ; preds = %_ZNSt6vectorI22common_grammar_triggerSaIS0_EEaSESt16initializer_listIS0_E.exit.preheader, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i566
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #32
end_hunk_0
begin_hunk_1_@_ZNSt6vectorI22common_grammar_triggerSaIS0_EED2Ev:bb.a
.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyI22common_grammar_triggerEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyI22common_grammar_triggerEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !61   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyI22common_grammar_triggerEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !63
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #34
  br label %_ZSt8_DestroyI22common_grammar_triggerEvPT_.exit.i.i

_ZSt8_DestroyI22common_grammar_triggerEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIP22common_grammar_triggerS0_EvT_S2_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !8

_ZSt8_DestroyIP22common_grammar_triggerS0_EvT_S2_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyI22common_grammar_triggerEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !182
  br label %_ZSt8_DestroyIP22common_grammar_triggerS0_EvT_S2_RSaIT0_E.exit

_ZSt8_DestroyIP22common_grammar_triggerS0_EvT_S2_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIP22common_grammar_triggerS0_EvT_S2_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIP22common_grammar_triggerS0_EvT_S2_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseI22common_grammar_triggerSaIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIP22common_grammar_triggerS0_EvT_S2_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !184
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #34
  br label %_ZNSt12_Vector_baseI22common_grammar_triggerSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseI22common_grammar_triggerSaIS0_EED2Ev.exit: ; preds = %_ZSt8_DestroyIP22common_grammar_triggerS0_EvT_S2_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !61 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !63
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !7

_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIP22common_grammar_triggerEvT_S2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIP22common_grammar_triggerEEvT_S4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyI22common_grammar_triggerEvPT_.exit.i
  %.05.i = phi ptr [ %i.g, %_ZSt8_DestroyI22common_grammar_triggerEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZSt8_DestroyI22common_grammar_triggerEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.e = load i64, ptr %i.c, align 8, !tbaa !63
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #34
  br label %_ZSt8_DestroyI22common_grammar_triggerEvPT_.exit.i

_ZSt8_DestroyI22common_grammar_triggerEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i, i64 48 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIP22common_grammar_triggerEEvT_S4_.exit, label %.lr.ph.i, !llvm.loop !8

_ZNSt12_Destroy_auxILb0EE9__destroyIP22common_grammar_triggerEEvT_S4_.exit: ; preds = %_ZSt8_DestroyI22common_grammar_triggerEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !341
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !342  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 80 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.j = load i64, ptr %i.h, align 8, !tbaa !63
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !63
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #34
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 96) #34
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1046

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !63
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !61     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !63
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

declare void @_ZN17common_json_valueC1EO11common_json(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN23messages_inp_normalizer9normalizeERK11common_json(ptr dead_on_unwind noalias writable sret(%class.common_json) align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %4 = alloca %"class.common_json::iterator", align 8 ; 6 uses
  %5 = alloca %class.common_json, align 8         ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %class.common_json, align 8         ; 3 uses
  %9 = alloca [1 x %struct.common_json_value], align 8 ; 9 uses
  %10 = alloca %class.common_json, align 8        ; 7 uses
  %11 = alloca [2 x %struct.common_json_item], align 8 ; 34 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %struct.common_json_value, align 8 ; 9 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1048, !nonnull !167 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.c = load i8, ptr %i.b, align 1, !tbaa !190, !range !166, !noundef !167
  %i.d = trunc nuw i8 %i.c to i1                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.f = load i8, ptr %i.e, align 1, !tbaa !191, !range !166, !noundef !167 ; 2 uses
  %17 = icmp eq i8 %i.f, 0                        ; 2 uses
  %18 = trunc nuw i8 %i.f to i1                   ; 2 uses
  %i.g = and i1 %17, %i.d
  %not. = xor i1 %i.d, true
  %i.h = and i1 %not., %18
  %or.cond = select i1 %i.d, i1 %17, i1 %18
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZNK11common_json8is_arrayEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  tail call void @_ZN11common_jsonC1ERKS_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.br

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN11common_json5arrayEv(ptr dead_on_unwind writable sret(%class.common_json) align 8 %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.j = invoke { ptr, i64 } @_ZNK11common_json5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.k = extractvalue { ptr, i64 } %i.j, 0
  store ptr %i.k, ptr %4, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.m = extractvalue { ptr, i64 } %i.j, 1
  store i64 %i.m, ptr %i.l, align 8
  %i.n = invoke { ptr, i64 } @_ZNK11common_json3endEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.o = extractvalue { ptr, i64 } %i.n, 1        ; 2 uses
  %i.p = load i64, ptr %i.l, align 8, !tbaa !91
  %.not239 = icmp eq i64 %i.p, %i.o
  br i1 %.not239, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 96 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 11 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 112 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 104
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 9 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 136
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 144 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 160 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 152
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 176
  %i.an = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.ao = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 23
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 23
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 20
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 20
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 184
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 144
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 160 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 112 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  br label %bb.g

._crit_edge:                                      ; preds = %_ZN17common_json_valueD2Ev.exit148, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.br

bb.g:                                             ; preds = %.lr.ph, %_ZN17common_json_valueD2Ev.exit148
  %i.bg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK11common_json8iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  invoke void @_ZN11common_jsonC1ERKS_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.bg)
          to label %._crit_edge.i.i unwind label %bb.an

._crit_edge.i.i:                                  ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  store ptr %i.q, ptr %6, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.q, ptr noundef nonnull align 1 dereferenceable(7) @.str.9, i64 7, i1 false)
  store i64 7, ptr %i.r, align 8, !tbaa !57
  store i8 0, ptr %i.aq, align 1, !tbaa !63
  %i.bh = invoke noundef zeroext i1 @_ZNK11common_json8containsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.ao

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.bi = load ptr, ptr %6, align 8, !tbaa !61    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.q
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.bk = load i64, ptr %i.q, align 8, !tbaa !63
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br i1 %i.bh, label %._crit_edge.i.i83, label %bb.bd

._crit_edge.i.i83:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store ptr %i.s, ptr %7, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.s, ptr noundef nonnull align 1 dereferenceable(7) @.str.9, i64 7, i1 false)
  store i64 7, ptr %i.t, align 8, !tbaa !57
  store i8 0, ptr %i.ar, align 1, !tbaa !63
  %i.bm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11common_json2atERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.j unwind label %bb.ap      ; 6 uses

bb.j:                                             ; preds = %._crit_edge.i.i83
  %i.bn = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.s
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.j
  %i.bp = load i64, ptr %i.s, align 8, !tbaa !63
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br i1 %i.h, label %bb.k, label %bb.av

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %i.br = invoke noundef zeroext i1 @_ZNK11common_json9is_stringEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bm)
          to label %bb.l unwind label %bb.aq

bb.l:                                             ; preds = %bb.k
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, label %bb.av

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  store i32 1701869940, ptr %i.v, align 8
  store i8 0, ptr %i.as, align 4, !tbaa !63
  store ptr %i.x, ptr %11, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.x, ptr noundef nonnull align 8 dereferenceable(5) %i.v, i64 5, i1 false)
  store i64 4, ptr %i.y, align 8, !tbaa !57
  store ptr %i.v, ptr %12, align 8, !tbaa !61
  store i64 0, ptr %i.w, align 8, !tbaa !57
  store i8 0, ptr %i.v, align 8, !tbaa !63
  invoke void @_ZN17common_json_valueC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull @.str.1)
          to label %_ZN16common_json_itemC2IRA5_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit unwind label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %11, align 8, !tbaa !61   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.x
  br i1 %i.bu, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  %i.bv = load i64, ptr %i.x, align 8, !tbaa !63
  br label %.body.sink.split

_ZN16common_json_itemC2IRA5_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.ab, ptr %13, align 8, !tbaa !60
  store i32 1954047348, ptr %i.ab, align 8
  store i64 4, ptr %i.ac, align 8, !tbaa !57
  store i8 0, ptr %i.at, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  invoke void @_ZNK11common_json3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %i.bm)
          to label %bb.n unwind label %bb.ar

bb.n:                                             ; preds = %_ZN16common_json_itemC2IRA5_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !60
  %i.bw = load ptr, ptr %13, align 8, !tbaa !61   ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.ab
  br i1 %i.bx, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

bb.o:                                             ; preds = %bb.n
  %i.by = load i64, ptr %i.ac, align 8, !tbaa !57 ; 3 uses
  %i.bz = icmp ult i64 %i.by, 16
  call void @llvm.assume(i1 %i.bz)
  %i.ca = add nuw nsw i64 %i.by, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ca, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %bb.n
  store ptr %i.bw, ptr %i.aa, align 8, !tbaa !61
  %i.cb = load i64, ptr %i.ab, align 8, !tbaa !63
  store i64 %i.cb, ptr %i.ad, align 8, !tbaa !63
  %.pre = load i64, ptr %i.ac, align 8, !tbaa !57
end_hunk_1
