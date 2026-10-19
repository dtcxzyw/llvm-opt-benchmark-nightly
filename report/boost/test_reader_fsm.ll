Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/test_reader_fsm?download=true
inline.NumInlined: 1456
inline.NumDeleted: 552
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@main:bb.a

_ZN5boost5redis6detail11log_messageD2Ev.exit42.i81: ; preds = %bb.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40.i80
  %i.aeb = icmp eq ptr %i.adu, %103
  br i1 %i.aeb, label %.thread.i76, label %bb.en

.thread.i76:                                      ; preds = %_ZN5boost5redis6detail11log_messageD2Ev.exit42.i81, %_ZN5boost5redis6detail11log_messageD2Ev.exit39.1.i88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37.2.i89, %bb.ei
  %.pn.pn.pn55.i = phi { ptr, i32 } [ %i.add, %bb.ei ], [ %i.adg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37.2.i89 ], [ %i.adg, %_ZN5boost5redis6detail11log_messageD2Ev.exit39.1.i88 ], [ %.pn.pn.pn.i78, %_ZN5boost5redis6detail11log_messageD2Ev.exit42.i81 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #27
  br label %bb.eo

bb.eo:                                            ; preds = %.thread.i76, %bb.eh, %bb.eg
  %.pn.pn.pn.pn.i70 = phi { ptr, i32 } [ %.pn.pn.pn55.i, %.thread.i76 ], [ %i.adc, %bb.eh ], [ %i.adb, %bb.eg ]
  %i.aec = load ptr, ptr %99, align 8, !tbaa !22  ; 2 uses
  %i.aed = icmp eq ptr %i.aec, %i.aay
  br i1 %i.aed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i71: ; preds = %bb.eo
  %i.aee = load i64, ptr %i.aay, align 8, !tbaa !23
  %i.aef = add i64 %i.aee, 1
  call void @_ZdlPvm(ptr noundef %i.aec, i64 noundef %i.aef) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i72: ; preds = %bb.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #27
  br label %bb.ep

bb.ep:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i72, %bb.ef, %bb.ee
  %.pn.pn.pn.pn.pn.pn.i68 = phi { ptr, i32 } [ %.pn.pn.pn.pn.i70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i72 ], [ %i.ada, %bb.ef ], [ %i.acz, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #27
  call fastcc void @_ZN12_GLOBAL__N_17fixtureD2Ev(ptr noundef nonnull align 8 dead_on_return(1544) dereferenceable(1544) %94) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #27
  br label %common.resume

_ZN12_GLOBAL__N_116test_parse_errorEv.exit:       ; preds = %_ZN5boost5redis6detail11log_messageD2Ev.exit.2.i98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #27
  call fastcc void @_ZN12_GLOBAL__N_17fixtureD2Ev(ptr noundef nonnull align 8 dead_on_return(1544) dereferenceable(1544) %94) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %97)
  call void @llvm.lifetime.end.p0(ptr nonnull %101)
  call void @llvm.lifetime.end.p0(ptr nonnull %104)
  call void @llvm.lifetime.start.p0(ptr nonnull %82)
  call void @llvm.lifetime.start.p0(ptr nonnull %83)
  call void @llvm.lifetime.start.p0(ptr nonnull %85)
  call void @llvm.lifetime.start.p0(ptr nonnull %89)
  call void @llvm.lifetime.start.p0(ptr nonnull %92)
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #27
  call fastcc void @_ZN12_GLOBAL__N_17fixtureC2Ev(ptr noundef nonnull align 8 dereferenceable(1544) %77)
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #27
  store i32 0, ptr %78, align 8, !tbaa !258
  %i.aeg = getelementptr inbounds nuw i8, ptr %78, i64 8
  store i32 0, ptr %i.aeg, align 8, !tbaa !259
  %i.aeh = getelementptr inbounds nuw i8, ptr %78, i64 16
  store i64 0, ptr %i.aeh, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #27
  store i32 16842752, ptr %79, align 8, !tbaa !47
  %i.aei = getelementptr inbounds nuw i8, ptr %79, i64 8 ; 4 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %79, i64 24 ; 4 uses
  store ptr %i.aej, ptr %i.aei, align 8, !tbaa !18
  %i.aek = getelementptr inbounds nuw i8, ptr %79, i64 16
  store i64 0, ptr %i.aek, align 8, !tbaa !24
  store i8 0, ptr %i.aej, align 8, !tbaa !23
  %i.ael = getelementptr inbounds nuw i8, ptr %79, i64 40 ; 3 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %79, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.ael, i8 0, i64 17, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aem, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost5redis5resp310add_headerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_4typeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.aei, i32 noundef 0, i64 noundef 1)
          to label %.noexc.i105 unwind label %bb.fs

.noexc.i105:                                      ; preds = %_ZN12_GLOBAL__N_116test_parse_errorEv.exit
  invoke void @_ZN5boost5redis5resp319boost_redis_to_bulkERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_E(ptr noundef nonnull align 8 dereferenceable(32) %i.aei, i64 4, ptr nonnull @.str.100)
          to label %.noexc36.i106 unwind label %bb.fs

.noexc36.i106:                                    ; preds = %.noexc.i105
  %i.aen = load i64, ptr %i.ael, align 8, !tbaa !289
  %i.aeo = add i64 %i.aen, 1
  store i64 %i.aeo, ptr %i.ael, align 8, !tbaa !289
  %i.aep = invoke noundef zeroext i1 @_ZN5boost5redis6detail12has_responseESt17basic_string_viewIcSt11char_traitsIcEE(i64 4, ptr nonnull @.str.100)
          to label %.noexc37.i unwind label %bb.fs

.noexc37.i:                                       ; preds = %.noexc36.i106
  br i1 %i.aep, label %_ZN5boost5redis11any_adapterC2ESt8functionIFvNS1_11parse_eventERKNS0_5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEERNS_6system10error_codeEEE.exit.i, label %bb.eq

bb.eq:                                            ; preds = %.noexc37.i
  %i.aeq = getelementptr inbounds nuw i8, ptr %79, i64 48 ; 2 uses
  %i.aer = load i64, ptr %i.aeq, align 8, !tbaa !290
  %i.aes = add i64 %i.aer, 1
  store i64 %i.aes, ptr %i.aeq, align 8, !tbaa !290
  br label %_ZN5boost5redis11any_adapterC2ESt8functionIFvNS1_11parse_eventERKNS0_5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEERNS_6system10error_codeEEE.exit.i

_ZN5boost5redis11any_adapterC2ESt8functionIFvNS1_11parse_eventERKNS0_5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEERNS_6system10error_codeEEE.exit.i: ; preds = %bb.eq, %.noexc37.i
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #27
  %i.aet = getelementptr inbounds nuw i8, ptr %82, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %82, i8 0, i64 16, i1 false)
  %i.aeu = getelementptr inbounds nuw i8, ptr %81, i64 24
  store ptr @"_ZNSt17_Function_handlerIFvN5boost5redis11any_adapter11parse_eventERKNS1_5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEERNS0_6system10error_codeEEZN12_GLOBAL__N_124test_setup_request_errorEvE3$_0E9_M_invokeERKSt9_Any_dataOS3_SC_SF_", ptr %i.aeu, align 8, !tbaa !57
  %i.aev = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %81, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvN5boost5redis11any_adapter11parse_eventERKNS1_5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEERNS0_6system10error_codeEEZN12_GLOBAL__N_124test_setup_request_errorEvE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation", ptr %i.aev, align 8, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aet, i8 0, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #27, !noalias !291
  store ptr null, ptr %80, align 8, !tbaa !293, !alias.scope !291
  %i.aew = getelementptr inbounds nuw i8, ptr %80, i64 8 ; 2 uses
  invoke void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5boost5redis6detail11multiplexer4elemESaIvEJRNS5_7requestENS5_11any_adapterEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.aew, ptr noundef nonnull align 8 dereferenceable(16) %80, ptr nonnull %76, ptr noundef nonnull align 8 dereferenceable(88) %79, ptr noundef nonnull align 8 dereferenceable(32) %81)
          to label %bb.er unwind label %bb.ft

bb.er:                                            ; preds = %_ZN5boost5redis11any_adapterC2ESt8functionIFvNS1_11parse_eventERKNS0_5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEERNS_6system10error_codeEEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #27, !noalias !291
  %i.aex = load ptr, ptr %i.aev, align 8, !tbaa !58 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aex, null
  br i1 %.not.i.i.i, label %_ZN5boost5redis11any_adapterD2Ev.exit.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.aey = invoke noundef zeroext i1 %i.aex(ptr noundef nonnull align 8 dereferenceable(32) %81, ptr noundef nonnull align 8 dereferenceable(32) %81, i32 noundef 3)
          to label %_ZN5boost5redis11any_adapterD2Ev.exit.i unwind label %bb.et ; 0 uses

bb.et:                                            ; preds = %bb.es
  %i.aez = landingpad { ptr, i32 }
          catch ptr null
  %i.afa = extractvalue { ptr, i32 } %i.aez, 0
  call void @__clang_call_terminate(ptr %i.afa) #28
  unreachable

_ZN5boost5redis11any_adapterD2Ev.exit.i:          ; preds = %bb.es, %bb.er
  %i.afb = load ptr, ptr %i.aet, align 8, !tbaa !58 ; 2 uses
  %.not.i.i = icmp eq ptr %i.afb, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i, label %bb.eu

bb.eu:                                            ; preds = %_ZN5boost5redis11any_adapterD2Ev.exit.i
  %i.afc = invoke noundef zeroext i1 %i.afb(ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef nonnull align 8 dereferenceable(32) %82, i32 noundef 3)
          to label %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i unwind label %bb.ev ; 0 uses

bb.ev:                                            ; preds = %bb.eu
  %i.afd = landingpad { ptr, i32 }
          catch ptr null
  %i.afe = extractvalue { ptr, i32 } %i.afd, 0
  call void @__clang_call_terminate(ptr %i.afe) #28
  unreachable

_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i:           ; preds = %bb.eu, %_ZN5boost5redis11any_adapterD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #27
  %i.aff = load ptr, ptr %80, align 8, !tbaa !293 ; 3 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %83, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %83, i8 0, i64 16, i1 false)
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aff, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.afg, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %75, ptr noundef nonnull align 8 dereferenceable(32) %i.afh, i64 16, i1 false), !tbaa.struct !62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.afh, i8 0, i64 16, i1 false)
  %i.afi = getelementptr inbounds nuw i8, ptr %75, i64 16
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aff, i64 56 ; 3 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %i.aff, i64 64
  %i.afl = load <2 x ptr>, ptr %i.afj, align 8, !tbaa !63
  %i.afm = load ptr, ptr %i.afj, align 8, !tbaa !63 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFvvEZN12_GLOBAL__N_124test_setup_request_errorEvE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation", ptr %i.afj, align 8, !tbaa !63
  store <2 x ptr> %i.afl, ptr %i.afi, align 8, !tbaa !63
  store ptr @"_ZNSt17_Function_handlerIFvvEZN12_GLOBAL__N_124test_setup_request_errorEvE3$_1E9_M_invokeERKSt9_Any_data", ptr %i.afk, align 8, !tbaa !63
  %.not.i.i.i.i = icmp eq ptr %i.afm, null
  br i1 %.not.i.i.i.i, label %_ZN5boost5redis6detail11multiplexer4elem17set_done_callbackESt8functionIFvvEE.exit.thread.i, label %bb.ew

_ZN5boost5redis6detail11multiplexer4elem17set_done_callbackESt8functionIFvvEE.exit.thread.i: ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #27
  br label %_ZNSt14_Function_baseD2Ev.exit40.i

bb.ew:                                            ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i
  %i.afn = invoke noundef zeroext i1 %i.afm(ptr noundef nonnull align 8 dereferenceable(32) %75, ptr noundef nonnull align 8 dereferenceable(32) %75, i32 noundef 3)
          to label %_ZN5boost5redis6detail11multiplexer4elem17set_done_callbackESt8functionIFvvEE.exit.i unwind label %bb.ex ; 0 uses

bb.ex:                                            ; preds = %bb.ew
  %i.afo = landingpad { ptr, i32 }
          catch ptr null
  %i.afp = extractvalue { ptr, i32 } %i.afo, 0
  call void @__clang_call_terminate(ptr %i.afp) #28
  unreachable

_ZN5boost5redis6detail11multiplexer4elem17set_done_callbackESt8functionIFvvEE.exit.i: ; preds = %bb.ew
  %.pre.i = load ptr, ptr %i.afg, align 8, !tbaa !58 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #27
  %.not.i39.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i39.i, label %_ZNSt14_Function_baseD2Ev.exit40.i, label %bb.ey

bb.ey:                                            ; preds = %_ZN5boost5redis6detail11multiplexer4elem17set_done_callbackESt8functionIFvvEE.exit.i
  %i.afq = invoke noundef zeroext i1 %.pre.i(ptr noundef nonnull align 8 dereferenceable(32) %83, ptr noundef nonnull align 8 dereferenceable(32) %83, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit40.i unwind label %bb.ez ; 0 uses

bb.ez:                                            ; preds = %bb.ey
  %i.afr = landingpad { ptr, i32 }
          catch ptr null
  %i.afs = extractvalue { ptr, i32 } %i.afr, 0
  call void @__clang_call_terminate(ptr %i.afs) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit40.i:               ; preds = %bb.ey, %_ZN5boost5redis6detail11multiplexer4elem17set_done_callbackESt8functionIFvvEE.exit.i, %_ZN5boost5redis6detail11multiplexer4elem17set_done_callbackESt8functionIFvvEE.exit.thread.i
  %i.aft = getelementptr inbounds nuw i8, ptr %77, i64 24 ; 2 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %77, i64 712 ; 4 uses
  invoke void @_ZN5boost5redis6detail11multiplexer3addERKSt10shared_ptrINS2_4elemEE(ptr noundef nonnull align 8 dereferenceable(352) %i.afu, ptr noundef nonnull align 8 dereferenceable(16) %80)
          to label %bb.fa unwind label %bb.gb

bb.fa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit40.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #27
  %i.afv = invoke noundef i64 @_ZN5boost5redis6detail11multiplexer13prepare_writeEv(ptr noundef nonnull align 8 dereferenceable(352) %i.afu)
          to label %bb.fb unwind label %bb.fy

bb.fb:                                            ; preds = %bb.fa
  store i64 %i.afv, ptr %i.u, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #27
  store i32 1, ptr %i.v, align 4, !tbaa !64
  %i.afw = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEmjEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.33, i32 noundef 332, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN12_GLOBAL__N_124test_setup_request_errorEv, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.v)
          to label %bb.fc unwind label %bb.fz     ; 0 uses

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #27
  %i.afx = getelementptr inbounds nuw i8, ptr %77, i64 768
  %i.afy = load i64, ptr %i.afx, align 8, !tbaa !24 ; 3 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %77, i64 792
  %i.aga = load i64, ptr %i.afz, align 8, !tbaa !294 ; 3 uses
  %i.agb = icmp ugt i64 %i.aga, %i.afy
  br i1 %i.agb, label %bb.fd, label %_ZNK5boost5redis6detail11multiplexer16get_write_bufferEv.exit.i

bb.fd:                                            ; preds = %bb.fc
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.110, i64 noundef %i.aga, i64 noundef %i.afy) #29
          to label %.noexc.i.i122 unwind label %bb.fe

.noexc.i.i122:                                    ; preds = %bb.fd
  unreachable

bb.fe:                                            ; preds = %bb.fd
  %i.agc = landingpad { ptr, i32 }
          catch ptr null
  %i.agd = extractvalue { ptr, i32 } %i.agc, 0
  call void @__clang_call_terminate(ptr %i.agd) #28
  unreachable

_ZNK5boost5redis6detail11multiplexer16get_write_bufferEv.exit.i: ; preds = %bb.fc
  %i.age = sub nuw i64 %i.afy, %i.aga
  %i.agf = invoke noundef zeroext i1 @_ZN5boost5redis6detail11multiplexer12commit_writeEm(ptr noundef nonnull align 8 dereferenceable(352) %i.afu, i64 noundef %i.age)
          to label %bb.ff unwind label %bb.gb

bb.ff:                                            ; preds = %_ZNK5boost5redis6detail11multiplexer16get_write_bufferEv.exit.i
  %i.agg = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.33, i32 noundef 333, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN12_GLOBAL__N_124test_setup_request_errorEv, i1 noundef zeroext %i.agf)
          to label %bb.fg unwind label %bb.gb     ; 0 uses

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %85, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost5redis6detail10reader_fsm6resumeERNS1_16connection_stateEmNS_6system10error_codeENS_4asio17cancellation_typeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::redis::detail::reader_fsm::action") align 8 %84, ptr noundef nonnull align 8 dereferenceable(24) %78, ptr noundef nonnull align 8 dereferenceable(1472) %i.aft, i64 noundef 0, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %85, i32 noundef 0)
          to label %bb.fh unwind label %bb.gc

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #27
  store i32 0, ptr %86, align 8, !tbaa !29, !alias.scope !295
  %i.agh = getelementptr inbounds nuw i8, ptr %86, i64 8
  store i64 6000000000, ptr %i.agh, align 8, !tbaa !20, !alias.scope !295
  %i.agi = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqENS_5redis6detail10reader_fsm6actionES6_EEbT_PKcS9_S9_iS9_RKT0_RKT1_(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 337, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN12_GLOBAL__N_124test_setup_request_errorEv, ptr noundef nonnull align 8 dereferenceable(32) %84, ptr noundef nonnull align 8 dereferenceable(32) %86)
          to label %_ZN12_GLOBAL__N_17copy_toERN5boost5redis6detail11multiplexerESt17basic_string_viewIcSt11char_traitsIcEE.exit.i107 unwind label %bb.gd ; 0 uses

_ZN12_GLOBAL__N_17copy_toERN5boost5redis6detail11multiplexerESt17basic_string_viewIcSt11char_traitsIcEE.exit.i107: ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #27
  %i.agj = getelementptr inbounds nuw i8, ptr %87, i64 16 ; 7 uses
  store ptr %i.agj, ptr %87, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.agj, ptr noundef nonnull align 1 dereferenceable(11) @.str.104, i64 11, i1 false)
  %i.agk = getelementptr inbounds nuw i8, ptr %87, i64 8 ; 2 uses
  store i64 11, ptr %i.agk, align 8, !tbaa !24
  %i.agl = getelementptr inbounds nuw i8, ptr %87, i64 27
  store i8 0, ptr %i.agl, align 1, !tbaa !23
  %i.agm = call { ptr, i64 } @_ZN5boost5redis6detail11multiplexer24get_prepared_read_bufferEv(ptr noundef nonnull align 8 dereferenceable(352) %i.afu) #27
  %i.agn = extractvalue { ptr, i64 } %i.agm, 0
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.agn, ptr noundef nonnull readonly align 8 dereferenceable(11) %i.agj, i64 11, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #27
  %i.ago = load i64, ptr %i.agk, align 8, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %89, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost5redis6detail10reader_fsm6resumeERNS1_16connection_stateEmNS_6system10error_codeENS_4asio17cancellation_typeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::redis::detail::reader_fsm::action") align 8 %88, ptr noundef nonnull align 8 dereferenceable(24) %78, ptr noundef nonnull align 8 dereferenceable(1472) %i.aft, i64 noundef %i.ago, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %89, i32 noundef 0)
          to label %bb.fi unwind label %bb.ge

bb.fi:                                            ; preds = %_ZN12_GLOBAL__N_17copy_toERN5boost5redis6detail11multiplexerESt17basic_string_viewIcSt11char_traitsIcEE.exit.i107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %84, ptr noundef nonnull align 8 dereferenceable(32) %88, i64 32, i1 false), !tbaa.struct !264
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %90, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #27
  invoke void @_ZN5boost5redis15make_error_codeENS0_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %74, i32 noundef 23)
          to label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i108 unwind label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.agp = landingpad { ptr, i32 }
          catch ptr null
  %i.agq = extractvalue { ptr, i32 } %i.agp, 0
  call void @__clang_call_terminate(ptr %i.agq) #28
  unreachable

_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i108: ; preds = %bb.fi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %90, ptr noundef nonnull align 8 dereferenceable(24) %74, i64 24, i1 false), !tbaa.struct !35
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #27
  %i.agr = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqENS_5redis6detail10reader_fsm6actionENS_6system10error_codeEEEbT_PKcSB_SB_iSB_RKT0_RKT1_(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.33, i32 noundef 345, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN12_GLOBAL__N_124test_setup_request_errorEv, ptr noundef nonnull align 8 dereferenceable(32) %84, ptr noundef nonnull align 8 dereferenceable(24) %90)
          to label %.noexc.i44.i unwind label %bb.gf ; 0 uses

.noexc.i44.i:                                     ; preds = %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #27
  store i32 8, ptr %91, align 8, !tbaa !270
  %i.ags = getelementptr inbounds nuw i8, ptr %91, i64 8 ; 6 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %91, i64 24 ; 6 uses
  store ptr %i.agt, ptr %i.ags, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #27
  store i64 25, ptr %i.t, align 8, !tbaa !20
  %i.agu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ags, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i64 noundef 0)
          to label %.noexc45.i unwind label %bb.gg ; 2 uses

.noexc45.i:                                       ; preds = %.noexc.i44.i
  store ptr %i.agu, ptr %i.ags, align 8, !tbaa !22
  %i.agv = load i64, ptr %i.t, align 8, !tbaa !20 ; 3 uses
  store i64 %i.agv, ptr %i.agt, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.agu, ptr noundef nonnull align 1 dereferenceable(25) @.str.38, i64 25, i1 false)
  %i.agw = getelementptr inbounds nuw i8, ptr %91, i64 16
  store i64 %i.agv, ptr %i.agw, align 8, !tbaa !24
  %i.agx = load ptr, ptr %i.ags, align 8, !tbaa !22
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 %i.agv
  store i8 0, ptr %i.agy, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #27
  %i.agz = getelementptr inbounds nuw i8, ptr %91, i64 40 ; 2 uses
  store i32 8, ptr %i.agz, align 8, !tbaa !270
  %i.aha = getelementptr inbounds nuw i8, ptr %91, i64 48 ; 6 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %91, i64 64 ; 6 uses
  store ptr %i.ahb, ptr %i.aha, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #27
  store i64 26, ptr %i.s, align 8, !tbaa !20
  %i.ahc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.aha, ptr noundef nonnull align 8 dereferenceable(8) %i.s, i64 noundef 0)
          to label %.noexc49.i unwind label %bb.gh ; 2 uses

.noexc49.i:                                       ; preds = %.noexc45.i
  store ptr %i.ahc, ptr %i.aha, align 8, !tbaa !22
  %i.ahd = load i64, ptr %i.s, align 8, !tbaa !20 ; 3 uses
  store i64 %i.ahd, ptr %i.ahb, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.ahc, ptr noundef nonnull align 1 dereferenceable(26) @.str.80, i64 26, i1 false)
  %i.ahe = getelementptr inbounds nuw i8, ptr %91, i64 56
  store i64 %i.ahd, ptr %i.ahe, align 8, !tbaa !24
  %i.ahf = load ptr, ptr %i.aha, align 8, !tbaa !22
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 %i.ahd
  store i8 0, ptr %i.ahg, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #27
  %i.ahh = getelementptr inbounds nuw i8, ptr %91, i64 80 ; 2 uses
  store i32 8, ptr %i.ahh, align 8, !tbaa !270
  %i.ahi = getelementptr inbounds nuw i8, ptr %91, i64 88 ; 6 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %91, i64 104 ; 6 uses
  store ptr %i.ahj, ptr %i.ahi, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #27
  store i64 45, ptr %i.r, align 8, !tbaa !20
  %i.ahk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ahi, ptr noundef nonnull align 8 dereferenceable(8) %i.r, i64 noundef 0)
          to label %.noexc53.i unwind label %bb.gi ; 2 uses

.noexc53.i:                                       ; preds = %.noexc49.i
  store ptr %i.ahk, ptr %i.ahi, align 8, !tbaa !22
  %i.ahl = load i64, ptr %i.r, align 8, !tbaa !20 ; 3 uses
  store i64 %i.ahl, ptr %i.ahj, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.ahk, ptr noundef nonnull align 1 dereferenceable(45) @.str.106, i64 45, i1 false)
  %i.ahm = getelementptr inbounds nuw i8, ptr %91, i64 96
  store i64 %i.ahl, ptr %i.ahm, align 8, !tbaa !24
  %i.ahn = load ptr, ptr %i.ahi, align 8, !tbaa !22
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 %i.ahl
  store i8 0, ptr %i.aho, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #27
  store ptr @.str.33, ptr %92, align 8, !tbaa !272
  %i.ahp = getelementptr inbounds nuw i8, ptr %92, i64 8
  store ptr @.str.107, ptr %i.ahp, align 8, !tbaa !273
  %i.ahq = getelementptr inbounds nuw i8, ptr %92, i64 16
  store i32 348, ptr %i.ahq, align 8, !tbaa !274
  %i.ahr = getelementptr inbounds nuw i8, ptr %92, i64 20
  store i32 8, ptr %i.ahr, align 4, !tbaa !275
  invoke void @_ZNK5boost5redis6detail11log_fixture9check_logESt16initializer_listIKNS1_11log_messageEENS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(24) %77, ptr nonnull %91, i64 3, ptr noundef nonnull byval(%"struct.boost::source_location") align 8 %92)
          to label %bb.fk unwind label %bb.gj

bb.fk:                                            ; preds = %.noexc53.i
  %i.ahs = load ptr, ptr %i.ahi, align 8, !tbaa !22 ; 2 uses
  %i.aht = icmp eq ptr %i.ahs, %i.ahj
  br i1 %i.aht, label %_ZN5boost5redis6detail11log_messageD2Ev.exit.i111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i110: ; preds = %bb.fk
  %i.ahu = load i64, ptr %i.ahj, align 8, !tbaa !23
  %i.ahv = add i64 %i.ahu, 1
  call void @_ZdlPvm(ptr noundef %i.ahs, i64 noundef %i.ahv) #30
  br label %_ZN5boost5redis6detail11log_messageD2Ev.exit.i111

_ZN5boost5redis6detail11log_messageD2Ev.exit.i111: ; preds = %bb.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i110
  %i.ahw = load ptr, ptr %i.aha, align 8, !tbaa !22 ; 2 uses
  %i.ahx = icmp eq ptr %i.ahw, %i.ahb
  br i1 %i.ahx, label %_ZN5boost5redis6detail11log_messageD2Ev.exit.1.i113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1.i112: ; preds = %_ZN5boost5redis6detail11log_messageD2Ev.exit.i111
  %i.ahy = load i64, ptr %i.ahb, align 8, !tbaa !23
  %i.ahz = add i64 %i.ahy, 1
  call void @_ZdlPvm(ptr noundef %i.ahw, i64 noundef %i.ahz) #30
  br label %_ZN5boost5redis6detail11log_messageD2Ev.exit.1.i113

_ZN5boost5redis6detail11log_messageD2Ev.exit.1.i113: ; preds = %_ZN5boost5redis6detail11log_messageD2Ev.exit.i111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1.i112
  %i.aia = load ptr, ptr %i.ags, align 8, !tbaa !22 ; 2 uses
  %i.aib = icmp eq ptr %i.aia, %i.agt
  br i1 %i.aib, label %_ZN5boost5redis6detail11log_messageD2Ev.exit.2.i115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2.i114: ; preds = %_ZN5boost5redis6detail11log_messageD2Ev.exit.1.i113
  %i.aic = load i64, ptr %i.agt, align 8, !tbaa !23
  %i.aid = add i64 %i.aic, 1
  call void @_ZdlPvm(ptr noundef %i.aia, i64 noundef %i.aid) #30
  br label %_ZN5boost5redis6detail11log_messageD2Ev.exit.2.i115

_ZN5boost5redis6detail11log_messageD2Ev.exit.2.i115: ; preds = %_ZN5boost5redis6detail11log_messageD2Ev.exit.1.i113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #27
  %i.aie = load ptr, ptr %87, align 8, !tbaa !22  ; 2 uses
  %i.aif = icmp eq ptr %i.aie, %i.agj
  br i1 %i.aif, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i116: ; preds = %_ZN5boost5redis6detail11log_messageD2Ev.exit.2.i115
  %i.aig = load i64, ptr %i.agj, align 8, !tbaa !23
  %i.aih = add i64 %i.aig, 1
  call void @_ZdlPvm(ptr noundef %i.aie, i64 noundef %i.aih) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i117: ; preds = %_ZN5boost5redis6detail11log_messageD2Ev.exit.2.i115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #27
  %i.aii = load ptr, ptr %i.aew, align 8, !tbaa !85 ; 8 uses
  %.not.i.i55.i = icmp eq ptr %i.aii, null
  br i1 %.not.i.i55.i, label %_ZNSt12__shared_ptrIN5boost5redis6detail11multiplexer4elemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.fl

bb.fl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i117
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aii, i64 8 ; 4 uses
  %i.aik = load atomic i64, ptr %i.aij acquire, align 8 ; 2 uses
  %i.ail = icmp eq i64 %i.aik, 4294967297
  %i.aim = trunc i64 %i.aik to i32                ; 2 uses
  br i1 %i.ail, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  store i32 0, ptr %i.aij, align 8, !tbaa !87
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aii, i64 12
  store i32 0, ptr %i.ain, align 4, !tbaa !88
  %i.aio = load ptr, ptr %i.aii, align 8, !tbaa !14
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 16
  %i.aiq = load ptr, ptr %i.aip, align 8
  call void %i.aiq(ptr noundef nonnull align 8 dereferenceable(16) %i.aii) #27, !inline_history !220
  %i.air = load ptr, ptr %i.aii, align 8, !tbaa !14
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 24
  %i.ait = load ptr, ptr %i.ais, align 8
  call void %i.ait(ptr noundef nonnull align 8 dereferenceable(16) %i.aii) #27, !inline_history !220
  br label %_ZNSt12__shared_ptrIN5boost5redis6detail11multiplexer4elemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.fn:                                            ; preds = %bb.fl
  %i.aiu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i56.i = icmp eq i8 %i.aiu, 0
  br i1 %.not.i.i.i56.i, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.aiv = add nsw i32 %i.aim, -1
  store i32 %i.aiv, ptr %i.aij, align 8, !tbaa !64
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.fp:                                            ; preds = %bb.fn
  %i.aiw = atomicrmw volatile add ptr %i.aij, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.fp, %bb.fo
  %.0.i.i.i.i.i = phi i32 [ %i.aim, %bb.fo ], [ %i.aiw, %bb.fp ]
  %i.aix = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aix, label %bb.fq, label %_ZNSt12__shared_ptrIN5boost5redis6detail11multiplexer4elemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !89

bb.fq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aii) #27
  br label %_ZNSt12__shared_ptrIN5boost5redis6detail11multiplexer4elemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5boost5redis6detail11multiplexer4elemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.fq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #27
  %i.aiy = load ptr, ptr %i.aem, align 8, !tbaa !90 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aiy, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EED2Ev.exit.i.i, label %bb.fr

bb.fr:                                            ; preds = %_ZNSt12__shared_ptrIN5boost5redis6detail11multiplexer4elemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.aiz = getelementptr inbounds nuw i8, ptr %79, i64 80
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !91
  %i.ajb = ptrtoint ptr %i.aja to i64
  %i.ajc = ptrtoint ptr %i.aiy to i64
  %i.ajd = sub i64 %i.ajb, %i.ajc
  call void @_ZdlPvm(ptr noundef nonnull %i.aiy, i64 noundef %i.ajd) #30
  br label %_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EED2Ev.exit.i.i

_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EED2Ev.exit.i.i: ; preds = %bb.fr, %_ZNSt12__shared_ptrIN5boost5redis6detail11multiplexer4elemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.aje = load ptr, ptr %i.aei, align 8, !tbaa !22 ; 2 uses
  %i.ajf = icmp eq ptr %i.aje, %i.aej
  br i1 %i.ajf, label %_ZN12_GLOBAL__N_124test_setup_request_errorEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57.i: ; preds = %_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EED2Ev.exit.i.i
  %i.ajg = load i64, ptr %i.aej, align 8, !tbaa !23
  %i.ajh = add i64 %i.ajg, 1
  call void @_ZdlPvm(ptr noundef %i.aje, i64 noundef %i.ajh) #30
  br label %_ZN12_GLOBAL__N_124test_setup_request_errorEv.exit

bb.fs:                                            ; preds = %.noexc36.i106, %.noexc.i105, %_ZN12_GLOBAL__N_116test_parse_errorEv.exit
  %i.aji = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

bb.ft:                                            ; preds = %_ZN5boost5redis11any_adapterC2ESt8functionIFvNS1_11parse_eventERKNS0_5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEERNS_6system10error_codeEEE.exit.i
  %i.ajj = landingpad { ptr, i32 }
          cleanup
  %i.ajk = load ptr, ptr %i.aev, align 8, !tbaa !58 ; 2 uses
  %.not.i.i59.i = icmp eq ptr %i.ajk, null
  br i1 %.not.i.i59.i, label %_ZN5boost5redis11any_adapterD2Ev.exit60.i, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.ajl = invoke noundef zeroext i1 %i.ajk(ptr noundef nonnull align 8 dereferenceable(32) %81, ptr noundef nonnull align 8 dereferenceable(32) %81, i32 noundef 3)
          to label %_ZN5boost5redis11any_adapterD2Ev.exit60.i unwind label %bb.fv ; 0 uses

bb.fv:                                            ; preds = %bb.fu
  %i.ajm = landingpad { ptr, i32 }
          catch ptr null
  %i.ajn = extractvalue { ptr, i32 } %i.ajm, 0
  call void @__clang_call_terminate(ptr %i.ajn) #28
  unreachable

_ZN5boost5redis11any_adapterD2Ev.exit60.i:        ; preds = %bb.fu, %bb.ft
  %i.ajo = load ptr, ptr %i.aet, align 8, !tbaa !58 ; 2 uses
  %.not.i61.i = icmp eq ptr %i.ajo, null
  br i1 %.not.i61.i, label %_ZNSt14_Function_baseD2Ev.exit62.i, label %bb.fw

bb.fw:                                            ; preds = %_ZN5boost5redis11any_adapterD2Ev.exit60.i
  %i.ajp = invoke noundef zeroext i1 %i.ajo(ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef nonnull align 8 dereferenceable(32) %82, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit62.i unwind label %bb.fx ; 0 uses

bb.fx:                                            ; preds = %bb.fw
  %i.ajq = landingpad { ptr, i32 }
          catch ptr null
  %i.ajr = extractvalue { ptr, i32 } %i.ajq, 0
  call void @__clang_call_terminate(ptr %i.ajr) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit62.i:               ; preds = %bb.fw, %_ZN5boost5redis11any_adapterD2Ev.exit60.i
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #27
  br label %bb.gp

bb.fy:                                            ; preds = %bb.fa
  %i.ajs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

bb.fz:                                            ; preds = %bb.fb
  %i.ajt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #27
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %.pn.i = phi { ptr, i32 } [ %i.ajt, %bb.fz ], [ %i.ajs, %bb.fy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #27
  br label %bb.go

bb.gb:                                            ; preds = %bb.ff, %_ZNK5boost5redis6detail11multiplexer16get_write_bufferEv.exit.i, %_ZNSt14_Function_baseD2Ev.exit40.i
  %i.aju = landingpad { ptr, i32 }
          cleanup
  br label %bb.go

bb.gc:                                            ; preds = %bb.fg
  %i.ajv = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

bb.gd:                                            ; preds = %bb.fh
  %i.ajw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #27
  br label %bb.gn

bb.ge:                                            ; preds = %_ZN12_GLOBAL__N_17copy_toERN5boost5redis6detail11multiplexerESt17basic_string_viewIcSt11char_traitsIcEE.exit.i107
  %i.ajx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #27
  br label %bb.gm

bb.gf:                                            ; preds = %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i108
  %i.ajy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #27
  br label %bb.gm

bb.gg:                                            ; preds = %.noexc.i44.i
  %i.ajz = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i109

bb.gh:                                            ; preds = %.noexc45.i
  %i.aka = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

bb.gi:                                            ; preds = %.noexc49.i
  %i.akb = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

bb.gj:                                            ; preds = %.noexc53.i
  %i.akc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akd = load ptr, ptr %i.ahi, align 8, !tbaa !22 ; 2 uses
  %i.ake = icmp eq ptr %i.akd, %i.ahj
  br i1 %i.ake, label %_ZN5boost5redis6detail11log_messageD2Ev.exit65.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63.i: ; preds = %bb.gj
  %i.akf = load i64, ptr %i.ahj, align 8, !tbaa !23
  %i.akg = add i64 %i.akf, 1
  call void @_ZdlPvm(ptr noundef %i.akd, i64 noundef %i.akg) #30
  br label %_ZN5boost5redis6detail11log_messageD2Ev.exit65.i

_ZN5boost5redis6detail11log_messageD2Ev.exit65.i: ; preds = %bb.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63.i
  %i.akh = load ptr, ptr %i.aha, align 8, !tbaa !22 ; 2 uses
  %i.aki = icmp eq ptr %i.akh, %i.ahb
  br i1 %i.aki, label %_ZN5boost5redis6detail11log_messageD2Ev.exit65.1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63.1.i: ; preds = %_ZN5boost5redis6detail11log_messageD2Ev.exit65.i
  %i.akj = load i64, ptr %i.ahb, align 8, !tbaa !23
  %i.akk = add i64 %i.akj, 1
  call void @_ZdlPvm(ptr noundef %i.akh, i64 noundef %i.akk) #30
  br label %_ZN5boost5redis6detail11log_messageD2Ev.exit65.1.i

_ZN5boost5redis6detail11log_messageD2Ev.exit65.1.i: ; preds = %_ZN5boost5redis6detail11log_messageD2Ev.exit65.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63.1.i
  %i.akl = load ptr, ptr %i.ags, align 8, !tbaa !22 ; 2 uses
  %i.akm = icmp eq ptr %i.akl, %i.agt
  br i1 %i.akm, label %.thread.i109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63.2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63.2.i: ; preds = %_ZN5boost5redis6detail11log_messageD2Ev.exit65.1.i
  %i.akn = load i64, ptr %i.agt, align 8, !tbaa !23
  %i.ako = add i64 %i.akn, 1
  call void @_ZdlPvm(ptr noundef %i.akl, i64 noundef %i.ako) #30
  br label %.thread.i109

bb.gk:                                            ; preds = %bb.gi, %bb.gh
  %.pn25.pn.pn.i = phi { ptr, i32 } [ %i.akb, %bb.gi ], [ %i.aka, %bb.gh ]
  %.19.i = phi ptr [ %i.ahh, %bb.gi ], [ %i.agz, %bb.gh ]
  br label %bb.gl

bb.gl:                                            ; preds = %_ZN5boost5redis6detail11log_messageD2Ev.exit68.i, %bb.gk
  %i.akp = phi ptr [ %.19.i, %bb.gk ], [ %i.akq, %_ZN5boost5redis6detail11log_messageD2Ev.exit68.i ] ; 3 uses
  %i.akq = getelementptr inbounds i8, ptr %i.akp, i64 -40 ; 2 uses
  %i.akr = getelementptr inbounds i8, ptr %i.akp, i64 -32
  %i.aks = load ptr, ptr %i.akr, align 8, !tbaa !22 ; 2 uses
  %i.akt = getelementptr inbounds i8, ptr %i.akp, i64 -16 ; 2 uses
  %i.aku = icmp eq ptr %i.aks, %i.akt
  br i1 %i.aku, label %_ZN5boost5redis6detail11log_messageD2Ev.exit68.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i66.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i66.i: ; preds = %bb.gl
  %i.akv = load i64, ptr %i.akt, align 8, !tbaa !23
  %i.akw = add i64 %i.akv, 1
  call void @_ZdlPvm(ptr noundef %i.aks, i64 noundef %i.akw) #30
  br label %_ZN5boost5redis6detail11log_messageD2Ev.exit68.i

_ZN5boost5redis6detail11log_messageD2Ev.exit68.i: ; preds = %bb.gl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i66.i
  %i.akx = icmp eq ptr %i.akq, %91
  br i1 %i.akx, label %.thread.i109, label %bb.gl

.thread.i109:                                     ; preds = %_ZN5boost5redis6detail11log_messageD2Ev.exit68.i, %_ZN5boost5redis6detail11log_messageD2Ev.exit65.1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63.2.i, %bb.gg
  %.pn25.pn.pn85.i = phi { ptr, i32 } [ %i.ajz, %bb.gg ], [ %i.akc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63.2.i ], [ %i.akc, %_ZN5boost5redis6detail11log_messageD2Ev.exit65.1.i ], [ %.pn25.pn.pn.i, %_ZN5boost5redis6detail11log_messageD2Ev.exit68.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #27
  br label %bb.gm

bb.gm:                                            ; preds = %.thread.i109, %bb.gf, %bb.ge
  %.pn25.pn.pn.pn.i = phi { ptr, i32 } [ %.pn25.pn.pn85.i, %.thread.i109 ], [ %i.ajy, %bb.gf ], [ %i.ajx, %bb.ge ]
  %i.aky = load ptr, ptr %87, align 8, !tbaa !22  ; 2 uses
  %i.akz = icmp eq ptr %i.aky, %i.agj
  br i1 %i.akz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i: ; preds = %bb.gm
  %i.ala = load i64, ptr %i.agj, align 8, !tbaa !23
  %i.alb = add i64 %i.ala, 1
  call void @_ZdlPvm(ptr noundef %i.aky, i64 noundef %i.alb) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i: ; preds = %bb.gm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #27
  br label %bb.gn

bb.gn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i, %bb.gd, %bb.gc
  %.pn25.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn25.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i ], [ %i.ajw, %bb.gd ], [ %i.ajv, %bb.gc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #27
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gb, %bb.ga
  %.pn25.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn25.pn.pn.pn.pn.pn.i, %bb.gn ], [ %i.aju, %bb.gb ], [ %.pn.i, %bb.ga ]
  call void @_ZNSt12__shared_ptrIN5boost5redis6detail11multiplexer4elemELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %80) #27
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %_ZNSt14_Function_baseD2Ev.exit62.i
  %.pn25.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn25.pn.pn.pn.pn.pn.pn.i, %bb.go ], [ %i.ajj, %_ZNSt14_Function_baseD2Ev.exit62.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #27
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.fs
  %.pn25.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn25.pn.pn.pn.pn.pn.pn.pn.i, %bb.gp ], [ %i.aji, %bb.fs ]
  call void @_ZN5boost5redis7requestD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %79) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #27
  call fastcc void @_ZN12_GLOBAL__N_17fixtureD2Ev(ptr noundef nonnull align 8 dead_on_return(1544) dereferenceable(1544) %77) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #27
  br label %common.resume

_ZN12_GLOBAL__N_124test_setup_request_errorEv.exit: ; preds = %_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57.i
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #27
  call fastcc void @_ZN12_GLOBAL__N_17fixtureD2Ev(ptr noundef nonnull align 8 dead_on_return(1544) dereferenceable(1544) %77) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %82)
  call void @llvm.lifetime.end.p0(ptr nonnull %83)
  call void @llvm.lifetime.end.p0(ptr nonnull %85)
  call void @llvm.lifetime.end.p0(ptr nonnull %89)
  call void @llvm.lifetime.end.p0(ptr nonnull %92)
  call void @llvm.lifetime.start.p0(ptr nonnull %63)
  call void @llvm.lifetime.start.p0(ptr nonnull %67)
  call void @llvm.lifetime.start.p0(ptr nonnull %70)
  call void @llvm.lifetime.start.p0(ptr nonnull %73)
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #27
  call fastcc void @_ZN12_GLOBAL__N_17fixtureC2Ev(ptr noundef nonnull align 8 dereferenceable(1544) %60)
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #27
  store i32 0, ptr %61, align 8, !tbaa !258
  %i.alc = getelementptr inbounds nuw i8, ptr %61, i64 8
  store i32 0, ptr %i.alc, align 8, !tbaa !259
  %i.ald = getelementptr inbounds nuw i8, ptr %61, i64 16
  store i64 0, ptr %i.ald, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #27
  %i.ale = getelementptr inbounds nuw i8, ptr %60, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %63, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost5redis6detail10reader_fsm6resumeERNS1_16connection_stateEmNS_6system10error_codeENS_4asio17cancellation_typeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::redis::detail::reader_fsm::action") align 8 %62, ptr noundef nonnull align 8 dereferenceable(24) %61, ptr noundef nonnull align 8 dereferenceable(1472) %i.ale, i64 noundef 0, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %63, i32 noundef 0)
          to label %bb.gr unwind label %bb.gy

bb.gr:                                            ; preds = %_ZN12_GLOBAL__N_124test_setup_request_errorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #27
  store i32 0, ptr %64, align 8, !tbaa !29, !alias.scope !296
  %i.alf = getelementptr inbounds nuw i8, ptr %64, i64 8
  store i64 6000000000, ptr %i.alf, align 8, !tbaa !20, !alias.scope !296
  %i.alg = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqENS_5redis6detail10reader_fsm6actionES6_EEbT_PKcS9_S9_iS9_RKT0_RKT1_(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 362, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN12_GLOBAL__N_123test_push_deliver_errorEv, ptr noundef nonnull align 8 dereferenceable(32) %62, ptr noundef nonnull align 8 dereferenceable(32) %64)
          to label %_ZN12_GLOBAL__N_17copy_toERN5boost5redis6detail11multiplexerESt17basic_string_viewIcSt11char_traitsIcEE.exit.i124 unwind label %bb.gz ; 0 uses

_ZN12_GLOBAL__N_17copy_toERN5boost5redis6detail11multiplexerESt17basic_string_viewIcSt11char_traitsIcEE.exit.i124: ; preds = %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #27
  %i.alh = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 7 uses
  store ptr %i.alh, ptr %65, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.alh, ptr noundef nonnull align 1 dereferenceable(11) @.str.87, i64 11, i1 false)
  %i.ali = getelementptr inbounds nuw i8, ptr %65, i64 8 ; 2 uses
  store i64 11, ptr %i.ali, align 8, !tbaa !24
  %i.alj = getelementptr inbounds nuw i8, ptr %65, i64 27
  store i8 0, ptr %i.alj, align 1, !tbaa !23
  %i.alk = getelementptr inbounds nuw i8, ptr %60, i64 712
  %i.all = call { ptr, i64 } @_ZN5boost5redis6detail11multiplexer24get_prepared_read_bufferEv(ptr noundef nonnull align 8 dereferenceable(352) %i.alk) #27
  %i.alm = extractvalue { ptr, i64 } %i.all, 0
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.alm, ptr noundef nonnull readonly align 8 dereferenceable(11) %i.alh, i64 11, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #27
  %i.aln = load i64, ptr %i.ali, align 8, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %67, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost5redis6detail10reader_fsm6resumeERNS1_16connection_stateEmNS_6system10error_codeENS_4asio17cancellation_typeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::redis::detail::reader_fsm::action") align 8 %66, ptr noundef nonnull align 8 dereferenceable(24) %61, ptr noundef nonnull align 8 dereferenceable(1472) %i.ale, i64 noundef %i.aln, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %67, i32 noundef 0)
          to label %bb.gs unwind label %bb.ha

bb.gs:                                            ; preds = %_ZN12_GLOBAL__N_17copy_toERN5boost5redis6detail11multiplexerESt17basic_string_viewIcSt11char_traitsIcEE.exit.i124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %62, ptr noundef nonnull align 8 dereferenceable(32) %66, i64 32, i1 false), !tbaa.struct !264
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #27
  store i32 1, ptr %68, align 8, !tbaa !29, !alias.scope !297
  %i.alo = getelementptr inbounds nuw i8, ptr %68, i64 8
  store i64 11, ptr %i.alo, align 8, !tbaa !23, !alias.scope !297
  %i.alp = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqENS_5redis6detail10reader_fsm6actionES6_EEbT_PKcS9_S9_iS9_RKT0_RKT1_(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33, i32 noundef 370, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN12_GLOBAL__N_123test_push_deliver_errorEv, ptr noundef nonnull align 8 dereferenceable(32) %62, ptr noundef nonnull align 8 dereferenceable(32) %68)
          to label %bb.gt unwind label %bb.hb     ; 0 uses

bb.gt:                                            ; preds = %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #27
  invoke void @_ZN5boost5redis15make_error_codeENS0_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %59, i32 noundef 5)
          to label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i129 unwind label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.alq = landingpad { ptr, i32 }
          catch ptr null
  %i.alr = extractvalue { ptr, i32 } %i.alq, 0
  call void @__clang_call_terminate(ptr %i.alr) #28
  unreachable

_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i129: ; preds = %bb.gt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %70, ptr noundef nonnull align 8 dereferenceable(24) %59, i64 24, i1 false), !tbaa.struct !35
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #27
  invoke void @_ZN5boost5redis6detail10reader_fsm6resumeERNS1_16connection_stateEmNS_6system10error_codeENS_4asio17cancellation_typeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::redis::detail::reader_fsm::action") align 8 %69, ptr noundef nonnull align 8 dereferenceable(24) %61, ptr noundef nonnull align 8 dereferenceable(1472) %i.ale, i64 noundef 0, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %70, i32 noundef 0)
          to label %bb.gv unwind label %bb.hc

bb.gv:                                            ; preds = %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %62, ptr noundef nonnull align 8 dereferenceable(32) %69, i64 32, i1 false), !tbaa.struct !264
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %71, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #27
  invoke void @_ZN5boost5redis15make_error_codeENS0_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %58, i32 noundef 5)
          to label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit25.i130 unwind label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.als = landingpad { ptr, i32 }
          catch ptr null
  %i.alt = extractvalue { ptr, i32 } %i.als, 0
  call void @__clang_call_terminate(ptr %i.alt) #28
  unreachable

_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit25.i130: ; preds = %bb.gv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %71, ptr noundef nonnull align 8 dereferenceable(24) %58, i64 24, i1 false), !tbaa.struct !35
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #27
  %i.alu = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqENS_5redis6detail10reader_fsm6actionENS_6system10error_codeEEEbT_PKcSB_SB_iSB_RKT0_RKT1_(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.33, i32 noundef 374, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN12_GLOBAL__N_123test_push_deliver_errorEv, ptr noundef nonnull align 8 dereferenceable(32) %62, ptr noundef nonnull align 8 dereferenceable(24) %71)
          to label %.noexc.i27.i131 unwind label %bb.hd ; 0 uses

.noexc.i27.i131:                                  ; preds = %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit25.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #27
  store i32 8, ptr %72, align 8, !tbaa !270
  %i.alv = getelementptr inbounds nuw i8, ptr %72, i64 8 ; 6 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %72, i64 24 ; 6 uses
  store ptr %i.alw, ptr %i.alv, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #27
  store i64 25, ptr %i.q, align 8, !tbaa !20
  %i.alx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.alv, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef 0)
          to label %.noexc28.i134 unwind label %bb.he ; 2 uses

.noexc28.i134:                                    ; preds = %.noexc.i27.i131
  store ptr %i.alx, ptr %i.alv, align 8, !tbaa !22
  %i.aly = load i64, ptr %i.q, align 8, !tbaa !20 ; 3 uses
  store i64 %i.aly, ptr %i.alw, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.alx, ptr noundef nonnull align 1 dereferenceable(25) @.str.38, i64 25, i1 false)
  %i.alz = getelementptr inbounds nuw i8, ptr %72, i64 16
  store i64 %i.aly, ptr %i.alz, align 8, !tbaa !24
  %i.ama = load ptr, ptr %i.alv, align 8, !tbaa !22
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 %i.aly
  store i8 0, ptr %i.amb, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #27
  %i.amc = getelementptr inbounds nuw i8, ptr %72, i64 40 ; 2 uses
  store i32 8, ptr %i.amc, align 8, !tbaa !270
  %i.amd = getelementptr inbounds nuw i8, ptr %72, i64 48 ; 6 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %72, i64 64 ; 6 uses
  store ptr %i.ame, ptr %i.amd, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #27
  store i64 26, ptr %i.p, align 8, !tbaa !20
  %i.amf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.amd, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef 0)
          to label %.noexc32.i140 unwind label %bb.hf ; 2 uses

.noexc32.i140:                                    ; preds = %.noexc28.i134
  store ptr %i.amf, ptr %i.amd, align 8, !tbaa !22
  %i.amg = load i64, ptr %i.p, align 8, !tbaa !20 ; 3 uses
  store i64 %i.amg, ptr %i.ame, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.amf, ptr noundef nonnull align 1 dereferenceable(26) @.str.80, i64 26, i1 false)
  %i.amh = getelementptr inbounds nuw i8, ptr %72, i64 56
  store i64 %i.amg, ptr %i.amh, align 8, !tbaa !24
  %i.ami = load ptr, ptr %i.amd, align 8, !tbaa !22
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 %i.amg
  store i8 0, ptr %i.amj, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #27
  %i.amk = getelementptr inbounds nuw i8, ptr %72, i64 80 ; 2 uses
  store i32 4, ptr %i.amk, align 8, !tbaa !270
  %i.aml = getelementptr inbounds nuw i8, ptr %72, i64 88 ; 6 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %72, i64 104 ; 6 uses
  store ptr %i.amm, ptr %i.aml, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #27
  store i64 77, ptr %i.o, align 8, !tbaa !20
  %i.amn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.aml, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef 0)
          to label %.noexc36.i141 unwind label %bb.hg ; 2 uses

.noexc36.i141:                                    ; preds = %.noexc32.i140
  store ptr %i.amn, ptr %i.aml, align 8, !tbaa !22
  %i.amo = load i64, ptr %i.o, align 8, !tbaa !20 ; 3 uses
  store i64 %i.amo, ptr %i.amm, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(77) %i.amn, ptr noundef nonnull align 1 dereferenceable(77) @.str.112, i64 77, i1 false)
  %i.amp = getelementptr inbounds nuw i8, ptr %72, i64 96
  store i64 %i.amo, ptr %i.amp, align 8, !tbaa !24
  %i.amq = load ptr, ptr %i.aml, align 8, !tbaa !22
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amq, i64 %i.amo
  store i8 0, ptr %i.amr, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #27
  store ptr @.str.33, ptr %73, align 8, !tbaa !272
  %i.ams = getelementptr inbounds nuw i8, ptr %73, i64 8
  store ptr @.str.113, ptr %i.ams, align 8, !tbaa !273
  %i.amt = getelementptr inbounds nuw i8, ptr %73, i64 16
  store i32 377, ptr %i.amt, align 8, !tbaa !274
  %i.amu = getelementptr inbounds nuw i8, ptr %73, i64 20
  store i32 8, ptr %i.amu, align 4, !tbaa !275
  invoke void @_ZNK5boost5redis6detail11log_fixture9check_logESt16initializer_listIKNS1_11log_messageEENS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(24) %60, ptr nonnull %72, i64 3, ptr noundef nonnull byval(%"struct.boost::source_location") align 8 %73)
          to label %bb.gx unwind label %bb.hh

end_hunk_0
