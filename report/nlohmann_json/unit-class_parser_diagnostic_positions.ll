Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-class_parser_diagnostic_positions?download=true
inline.NumInlined: 18171
inline.NumDeleted: 2672
loop-unroll.NumCompletelyUnrolled: 177
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 180
begin_hunk_0_@_ZN8nlohmann19json_abi_dp_v3_12_06detail6parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE18sax_parse_internalINS1_19json_sax_dom_parserISF_SM_EEEEbPT_:.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #35
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %62)
          to label %bb.fy unwind label %bb.gd

bb.fy:                                            ; preds = %bb.fx
  invoke void @_ZN8nlohmann19json_abi_dp_v3_12_06detail6parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE17exception_messageENS1_10lexer_baseISF_E10token_typeERKSB_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %60, ptr noundef nonnull align 8 dereferenceable(201) %0, i32 noundef 11, ptr noundef nonnull align 8 dereferenceable(32) %61)
          to label %bb.fz unwind label %bb.ge

bb.fz:                                            ; preds = %bb.fy
  invoke void @_ZN8nlohmann19json_abi_dp_v3_12_06detail11parse_error6createIDnTnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_iRKNS1_10position_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_dp_v3_12_0::detail::parse_error") align 8 %58, i32 noundef 101, ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef nonnull align 8 dereferenceable(32) %60, ptr null)
          to label %bb.ga unwind label %bb.gf

bb.ga:                                            ; preds = %bb.fz
  %i.qg = invoke noundef zeroext i1 @_ZN8nlohmann19json_abi_dp_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE11parse_errorINS1_11parse_errorEEEbmRKSB_RKT_(ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef nonnull align 8 dereferenceable(40) %58)
          to label %bb.gb unwind label %bb.gg

bb.gb:                                            ; preds = %bb.ga
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nlohmann19json_abi_dp_v3_12_06detail9exceptionE, i64 16), ptr %58, align 8, !tbaa !88
  %i.qh = getelementptr inbounds nuw i8, ptr %58, i64 16
  call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.qh) #35, !inline_history !169
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %58) #35, !inline_history !169
  %i.qi = load ptr, ptr %60, align 8, !tbaa !57   ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.qk = icmp eq ptr %i.qi, %i.qj
  br i1 %i.qk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392: ; preds = %bb.gb
  call void @_ZdlPv(ptr noundef %i.qi) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394: ; preds = %bb.gb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392
  %i.ql = load ptr, ptr %61, align 8, !tbaa !57   ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %61, i64 16
  %i.qn = icmp eq ptr %i.ql, %i.qm
  br i1 %i.qn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394
  call void @_ZdlPv(ptr noundef %i.ql) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #35
  %i.qo = load ptr, ptr %57, align 8, !tbaa !57   ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.qq = icmp eq ptr %i.qo, %i.qp
  br i1 %i.qq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397
  call void @_ZdlPv(ptr noundef %i.qo) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #35
  br label %.loopexit

bb.gc:                                            ; preds = %bb.fw
  %i.qr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit409

bb.gd:                                            ; preds = %bb.fx
  %i.qs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406

bb.ge:                                            ; preds = %bb.fy
  %i.qt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403

bb.gf:                                            ; preds = %bb.fz
  %i.qu = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

bb.gg:                                            ; preds = %bb.ga
  %i.qv = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nlohmann19json_abi_dp_v3_12_06detail9exceptionE, i64 16), ptr %58, align 8, !tbaa !88
  %i.qw = getelementptr inbounds nuw i8, ptr %58, i64 16
  call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.qw) #35, !inline_history !169
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %58) #35, !inline_history !169
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %.pn120 = phi { ptr, i32 } [ %i.qv, %bb.gg ], [ %i.qu, %bb.gf ] ; 2 uses
  %i.qx = load ptr, ptr %60, align 8, !tbaa !57   ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.qz = icmp eq ptr %i.qx, %i.qy
  br i1 %i.qz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401: ; preds = %bb.gh
  call void @_ZdlPv(ptr noundef %i.qx) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403: ; preds = %bb.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401, %bb.ge
  %.pn120.pn = phi { ptr, i32 } [ %i.qt, %bb.ge ], [ %.pn120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401 ], [ %.pn120, %bb.gh ] ; 2 uses
  %i.ra = load ptr, ptr %61, align 8, !tbaa !57   ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %61, i64 16
  %i.rc = icmp eq ptr %i.ra, %i.rb
  br i1 %i.rc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403
  call void @_ZdlPv(ptr noundef %i.ra) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404, %bb.gd
  %.pn120.pn.pn = phi { ptr, i32 } [ %i.qs, %bb.gd ], [ %.pn120.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404 ], [ %.pn120.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #35
  %i.rd = load ptr, ptr %57, align 8, !tbaa !57   ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.rf = icmp eq ptr %i.rd, %i.re
  br i1 %i.rf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit409, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i407

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i407: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406
  call void @_ZdlPv(ptr noundef %i.rd) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit409

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit409: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i407, %bb.gc
  %.pn120.pn.pn.pn = phi { ptr, i32 } [ %i.qr, %bb.gc ], [ %.pn120.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i407 ], [ %.pn120.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #35
  br label %bb.gj

.loopexit:                                        ; preds = %bb.ap, %bb.b, %_ZN8nlohmann19json_abi_dp_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE6stringERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i202, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %.384 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237 ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %i.me, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326 ], [ %i.nh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348 ], [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i202 ], [ %i.ot, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373 ], [ %i.hk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252 ], [ %i.qg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273 ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ], [ true, %_ZN8nlohmann19json_abi_dp_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE6stringERSB_.exit ], [ false, %bb.b ], [ false, %bb.ap ]
  %i.rg = load ptr, ptr %2, align 8, !tbaa !148   ; 2 uses
  %.not.i.i = icmp eq ptr %i.rg, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.gi

bb.gi:                                            ; preds = %.loopexit
  %i.rh = load ptr, ptr %i.k, align 8, !tbaa !152 ; 2 uses
  %i.ri = ptrtoint ptr %i.rh to i64
  %i.rj = ptrtoint ptr %i.rg to i64
  %i.rk = sub i64 %i.ri, %i.rj
  %i.rl = ashr exact i64 %i.rk, 3
  %i.rm = sub nsw i64 0, %i.rl
  %i.rn = getelementptr inbounds [8 x i8], ptr %i.rh, i64 %i.rm
  call void @_ZdlPv(ptr noundef %i.rn) #38
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %.loopexit, %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  ret i1 %.384

bb.gj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit409, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %.pn142 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.pn137.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335 ], [ %.pn132.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357 ], [ %.pn127.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382 ], [ %.pn120.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit409 ], [ %.pn98.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212 ], [ %.pn115.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306 ], [ %.pn110.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ], [ %.pn105.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282 ], [ %.pn93.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246 ], [ %.pn89.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258 ]
  %i.ro = load ptr, ptr %2, align 8, !tbaa !148   ; 2 uses
  %.not.i.i410 = icmp eq ptr %i.ro, null
  br i1 %.not.i.i410, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit411, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.rp = load ptr, ptr %i.k, align 8, !tbaa !152 ; 2 uses
  %i.rq = ptrtoint ptr %i.rp to i64
  %i.rr = ptrtoint ptr %i.ro to i64
  %i.rs = sub i64 %i.rq, %i.rr
  %i.rt = ashr exact i64 %i.rs, 3
  %i.ru = sub nsw i64 0, %i.rt
  %i.rv = getelementptr inbounds [8 x i8], ptr %i.rp, i64 %i.ru
  call void @_ZdlPv(ptr noundef %i.rv) #38
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit411

_ZNSt13_Bvector_baseISaIbEED2Ev.exit411:          ; preds = %bb.gj, %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  resume { ptr, i32 } %.pn142
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8nlohmann19json_abi_dp_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE11parse_errorINS1_11parse_errorEEEbmRKSB_RKT_(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.a, align 8, !tbaa !270
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.c = load i8, ptr %i.b, align 1, !tbaa !136, !range !74, !noundef !75
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 40) #35 ; 2 uses
  tail call void @_ZN8nlohmann19json_abi_dp_v3_12_06detail11parse_errorC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %3) #35
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN8nlohmann19json_abi_dp_v3_12_06detail11parse_errorE, ptr nonnull @_ZN8nlohmann19json_abi_dp_v3_12_06detail9exceptionD2Ev) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !148  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !152  ; 2 uses
  %.not = icmp eq ptr %i.b, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8              ; 5 uses
  %i.g = ptrtoint ptr %i.b to i64                 ; 3 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.f to i64                     ; 2 uses
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub i64 %i.g, %i.i
  %i.k = shl nsw i64 %i.j, 3
  %i.l = zext i32 %2 to i64                       ; 2 uses
  %i.m = sub nsw i64 %i.h, %i.l
  %i.n = add i64 %i.m, %i.k                       ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader: ; preds = %bb.b
  %i.p = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 63
  %i.s = lshr i64 %i.p, 6
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.s
  br label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i:          ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i
  %.024.i.i.i.i.i = phi i64 [ %i.aj, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.n, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.07.023.i.i.i.i.i = phi ptr [ %.sroa.07.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.t, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %.sroa.59.022.i.i.i.i.i = phi i32 [ %.sroa.59.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.r, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.012.021.i.i.i.i.i = phi ptr [ %spec.select19.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.b, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %.sroa.515.020.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.f, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %i.u = add i32 %.sroa.515.020.i.i.i.i.i, -1
  %i.v = icmp eq i32 %.sroa.515.020.i.i.i.i.i, 0  ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %i.v, i32 63, i32 %i.u ; 2 uses
  %spec.select19.idx.i.i.i.i.i = select i1 %i.v, i64 -8, i64 0
  %spec.select19.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.012.021.i.i.i.i.i, i64 %spec.select19.idx.i.i.i.i.i ; 2 uses
  %i.w = zext nneg i32 %spec.select.i.i.i.i.i to i64
  %i.x = shl nuw i64 1, %i.w
  %i.y = add i32 %.sroa.59.022.i.i.i.i.i, -1
  %i.z = icmp eq i32 %.sroa.59.022.i.i.i.i.i, 0   ; 2 uses
  %.sroa.59.1.i.i.i.i.i = select i1 %i.z, i32 63, i32 %i.y ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i = select i1 %i.z, i64 -8, i64 0
  %.sroa.07.1.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.023.i.i.i.i.i, i64 %.sroa.07.1.idx.i.i.i.i.i ; 4 uses
  %i.aa = zext nneg i32 %.sroa.59.1.i.i.i.i.i to i64
  %i.ab = shl nuw i64 1, %i.aa                    ; 2 uses
  %i.ac = load i64, ptr %spec.select19.i.i.i.i.i, align 8, !tbaa !49
  %i.ad = and i64 %i.x, %i.ac
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.ae = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !49
  %i.af = or i64 %i.ae, %i.ab
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

bb.d:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.ag = xor i64 %i.ab, -1
  %i.ah = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !49
  %i.ai = and i64 %i.ah, %i.ag
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i:      ; preds = %bb.d, %bb.c
  %storemerge.i.i.i.i.i = phi i64 [ %i.af, %bb.c ], [ %i.ai, %bb.d ]
  store i64 %storemerge.i.i.i.i.i, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !49
  %i.aj = add nsw i64 %.024.i.i.i.i.i, -1
  %i.ak = icmp sgt i64 %.024.i.i.i.i.i, 1
  br i1 %i.ak, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !1513

_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit: ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i, %bb.b
  %i.al = shl nuw i64 1, %i.l                     ; 2 uses
  br i1 %3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.am = load i64, ptr %1, align 8, !tbaa !49
  %i.an = or i64 %i.am, %i.al
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.f:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.ao = xor i64 %i.al, -1
  %i.ap = load i64, ptr %1, align 8, !tbaa !49
  %i.aq = and i64 %i.ap, %i.ao
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.e, %bb.f
  %storemerge = phi i64 [ %i.aq, %bb.f ], [ %i.an, %bb.e ]
  store i64 %storemerge, ptr %1, align 8, !tbaa !49
  %i.ar = add i32 %i.f, 1
  store i32 %i.ar, ptr %i.e, align 8, !tbaa !149
  %i.as = icmp eq i32 %i.f, 63
  br i1 %i.as, label %bb.g, label %_ZNSt13_Bit_iteratorppEv.exit

bb.g:                                             ; preds = %_ZNSt14_Bit_referenceaSEb.exit
  store i32 0, ptr %i.e, align 8, !tbaa !149
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.at, ptr %i.a, align 8, !tbaa !148
  br label %_ZNSt13_Bit_iteratorppEv.exit

bb.h:                                             ; preds = %bb.a
  %i.au = load ptr, ptr %0, align 8, !tbaa !148   ; 4 uses
  %i.av = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.aw = sub i64 %i.g, %i.av                     ; 2 uses
  %i.ax = shl nsw i64 %i.aw, 3
  %i.ay = zext i32 %i.f to i64
  %i.az = add nsw i64 %i.ax, %i.ay                ; 4 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775744
  br i1 %i.ba, label %bb.i, label %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.933) #40
  unreachable

_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit:    ; preds = %bb.h
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.bb = add i64 %.sroa.speculated.i, %i.az      ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.az
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 9223372036854775744)
  %i.be = add nuw nsw i64 %i.bd, 63
  %i.bf = select i1 %i.bc, i64 9223372036854775807, i64 %i.be ; 2 uses
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1152921504606846968
  %i.bi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #39 ; 5 uses
  %i.bj = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bk = sub i64 %i.bj, %i.av                    ; 4 uses
  %i.bl = icmp sgt i64 %i.bk, 8
  br i1 %i.bl, label %bb.j, label %bb.k, !prof !140

bb.j:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr align 8 %i.au, i64 %i.bk, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.k:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  %i.bm = icmp eq i64 %i.bk, 8
  br i1 %i.bm, label %bb.l, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bn = load i64, ptr %i.au, align 8, !tbaa !49
  store i64 %i.bn, ptr %i.bi, align 8, !tbaa !49
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.l, %bb.k, %bb.j
  %i.bo = getelementptr inbounds i8, ptr %i.bi, i64 %i.bk ; 3 uses
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %_ZNSt13_Bit_iteratorppEi.exit, label %.lr.ph.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %i.bp = zext i32 %2 to i64
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.cf, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.bp, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.03.019.i.i.i.i.i.i = phi ptr [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.bo, %.lr.ph.i.i.i.i.i.preheader.i ] ; 4 uses
  %.sroa.55.018.i.i.i.i.i.i = phi i32 [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.512.017.i.i.i.i.i.i = phi i32 [ %spec.select15.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.09.016.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %i.bq = zext nneg i32 %.sroa.512.017.i.i.i.i.i.i to i64
  %i.br = shl nuw i64 1, %i.bq
  %i.bs = load i64, ptr %.sroa.09.016.i.i.i.i.i.i, align 8, !tbaa !49
  %i.bt = and i64 %i.bs, %i.br
  %.not.i.i.i.i.i.i47 = icmp eq i64 %i.bt, 0
  %i.bu = zext nneg i32 %.sroa.55.018.i.i.i.i.i.i to i64
  %i.bv = shl nuw i64 1, %i.bu                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i47, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bw = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !49
  %i.bx = or i64 %i.bw, %i.bv
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.by = xor i64 %i.bv, -1
  %i.bz = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !49
  %i.ca = and i64 %i.bz, %i.by
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i:       ; preds = %bb.n, %bb.m
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.ca, %bb.n ], [ %i.bx, %bb.m ]
  store i64 %storemerge.i.i.i.i.i.i, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !49
  %i.cb = add i32 %.sroa.512.017.i.i.i.i.i.i, 1
  %i.cc = icmp eq i32 %.sroa.512.017.i.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i.i = select i1 %i.cc, i64 8, i64 0
  %spec.select.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.016.i.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i.i
  %spec.select15.i.i.i.i.i.i = select i1 %i.cc, i32 0, i32 %i.cb
  %i.cd = add i32 %.sroa.55.018.i.i.i.i.i.i, 1
  %i.ce = icmp eq i32 %.sroa.55.018.i.i.i.i.i.i, 63 ; 2 uses
  %.sroa.55.1.i.i.i.i.i.i = select i1 %i.ce, i32 0, i32 %i.cd ; 4 uses
  %.sroa.03.1.idx.i.i.i.i.i.i = select i1 %i.ce, i64 8, i64 0
  %.sroa.03.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.i.i.i.i, i64 %.sroa.03.1.idx.i.i.i.i.i.i ; 5 uses
  %i.cf = add nsw i64 %.020.i.i.i.i.i.i, -1
  %i.cg = icmp sgt i64 %.020.i.i.i.i.i.i, 1
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i.i, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, !llvm.loop !1514

_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit: ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i
  %i.ch = add i32 %.sroa.55.1.i.i.i.i.i.i, 1
  %i.ci = icmp eq i32 %.sroa.55.1.i.i.i.i.i.i, 63
  br i1 %i.ci, label %bb.o, label %_ZNSt13_Bit_iteratorppEi.exit

bb.o:                                             ; preds = %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i.i.i.i.i.i, i64 8
  br label %_ZNSt13_Bit_iteratorppEi.exit

_ZNSt13_Bit_iteratorppEi.exit:                    ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, %bb.o
  %.sroa.03.0.lcssa.i.i.i.i.i.i110 = phi ptr [ %.sroa.03.1.i.i.i.i.i.i, %bb.o ], [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit ], [ %i.bo, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.sroa.55.0.lcssa.i.i.i.i.i.i109 = phi i32 [ 63, %bb.o ], [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit ], [ 0, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ]
  %.sroa.683.0 = phi i32 [ 0, %bb.o ], [ %i.ch, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit ], [ 1, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ] ; 2 uses
  %.sroa.082.0 = phi ptr [ %i.cj, %bb.o ], [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit ], [ %i.bo, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ] ; 2 uses
  %i.ck = zext nneg i32 %.sroa.55.0.lcssa.i.i.i.i.i.i109 to i64
  %i.cl = shl nuw i64 1, %i.ck                    ; 2 uses
  br i1 %3, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit
  %i.cm = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i110, align 8, !tbaa !49
  %i.cn = or i64 %i.cm, %i.cl
  br label %_ZNSt14_Bit_referenceaSEb.exit53

bb.q:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit
  %i.co = xor i64 %i.cl, -1
  %i.cp = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i110, align 8, !tbaa !49
  %i.cq = and i64 %i.cp, %i.co
  br label %_ZNSt14_Bit_referenceaSEb.exit53

_ZNSt14_Bit_referenceaSEb.exit53:                 ; preds = %bb.p, %bb.q
  %storemerge111 = phi i64 [ %i.cq, %bb.q ], [ %i.cn, %bb.p ]
  store i64 %storemerge111, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i110, align 8, !tbaa !49
  %.sroa.2.0.copyload.i55 = load i32, ptr %i.e, align 8
  %i.cr = sub i64 %i.g, %i.bj
  %i.cs = shl nsw i64 %i.cr, 3
  %i.ct = zext i32 %.sroa.2.0.copyload.i55 to i64
  %i.cu = zext i32 %2 to i64
  %i.cv = sub nsw i64 %i.ct, %i.cu
  %i.cw = add i64 %i.cv, %i.cs                    ; 2 uses
  %i.cx = icmp sgt i64 %i.cw, 0
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt14_Bit_referenceaSEb.exit53, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66
  %.024.i.i.i.i.i62 = phi i64 [ %i.dn, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %i.cw, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 2 uses
  %.sroa.07.023.i.i.i.i.i63 = phi ptr [ %.sroa.07.1.i.i.i.i.i72, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %.sroa.082.0, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 4 uses
  %.sroa.59.022.i.i.i.i.i64 = phi i32 [ %.sroa.59.1.i.i.i.i.i70, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %.sroa.683.0, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 3 uses
  %.sroa.516.021.i.i.i.i.i = phi i32 [ %spec.select19.i.i.i.i.i69, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %2, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 3 uses
  %.sroa.013.020.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i68, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %1, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 2 uses
  %i.cy = zext nneg i32 %.sroa.516.021.i.i.i.i.i to i64
  %i.cz = shl nuw i64 1, %i.cy
  %i.da = zext nneg i32 %.sroa.59.022.i.i.i.i.i64 to i64
  %i.db = shl nuw i64 1, %i.da                    ; 2 uses
  %i.dc = load i64, ptr %.sroa.013.020.i.i.i.i.i, align 8, !tbaa !49
  %i.dd = and i64 %i.dc, %i.cz
  %.not.i.i.i.i.i.i65 = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i.i.i.i.i65, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.de = load i64, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !49
  %i.df = or i64 %i.de, %i.db
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dg = xor i64 %i.db, -1
  %i.dh = load i64, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !49
  %i.di = and i64 %i.dh, %i.dg
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66:    ; preds = %bb.s, %bb.r
  %storemerge.i.i.i.i.i67 = phi i64 [ %i.df, %bb.r ], [ %i.di, %bb.s ]
  store i64 %storemerge.i.i.i.i.i67, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !49
  %i.dj = add i32 %.sroa.516.021.i.i.i.i.i, 1
  %i.dk = icmp eq i32 %.sroa.516.021.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i = select i1 %i.dk, i64 8, i64 0
  %spec.select.i.i.i.i.i68 = getelementptr inbounds nuw i8, ptr %.sroa.013.020.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i
  %spec.select19.i.i.i.i.i69 = select i1 %i.dk, i32 0, i32 %i.dj
  %i.dl = add i32 %.sroa.59.022.i.i.i.i.i64, 1
  %i.dm = icmp eq i32 %.sroa.59.022.i.i.i.i.i64, 63 ; 2 uses
  %.sroa.59.1.i.i.i.i.i70 = select i1 %i.dm, i32 0, i32 %i.dl ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i71 = select i1 %i.dm, i64 8, i64 0
  %.sroa.07.1.i.i.i.i.i72 = getelementptr inbounds nuw i8, ptr %.sroa.07.023.i.i.i.i.i63, i64 %.sroa.07.1.idx.i.i.i.i.i71 ; 2 uses
  %i.dn = add nsw i64 %.024.i.i.i.i.i62, -1
  %i.do = icmp sgt i64 %.024.i.i.i.i.i62, 1
  br i1 %i.do, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !1515

_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit:  ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66, %_ZNSt14_Bit_referenceaSEb.exit53
  %.sroa.59.0.lcssa.i.i.i.i.i58 = phi i32 [ %.sroa.683.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.59.1.i.i.i.i.i70, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.sroa.07.0.lcssa.i.i.i.i.i59 = phi ptr [ %.sroa.082.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.07.1.i.i.i.i.i72, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.not.i73 = icmp eq ptr %i.au, null
  br i1 %.not.i73, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.dp = ashr exact i64 %i.aw, 3
  %i.dq = sub nsw i64 0, %i.dp
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.dq
  tail call void @_ZdlPv(ptr noundef %i.dr) #38
  br label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit: ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, %bb.t
  %i.ds = lshr i64 %i.bf, 6
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ds
  store ptr %i.dt, ptr %i.c, align 8, !tbaa !152
  store ptr %i.bi, ptr %0, align 8
  %.sroa.587.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.587.0..sroa_idx88, align 8
  store ptr %.sroa.07.0.lcssa.i.i.i.i.i59, ptr %i.a, align 8
  store i32 %.sroa.59.0.lcssa.i.i.i.i.i58, ptr %i.e, align 8
  br label %_ZNSt13_Bit_iteratorppEv.exit

_ZNSt13_Bit_iteratorppEv.exit:                    ; preds = %bb.g, %_ZNSt14_Bit_referenceaSEb.exit, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8nlohmann19json_abi_dp_v3_12_06detail28json_sax_dom_callback_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE12start_objectEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !278
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !138
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 3
  %i.l = trunc i64 %i.k to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.l, ptr %i.a, align 4, !tbaa !102
  store i8 0, ptr %i.b, align 1, !tbaa !281
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !82
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFbiN8nlohmann19json_abi_dp_v3_12_06detail13parse_event_tERNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SH_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #40
  unreachable

_ZNKSt8functionIFbiN8nlohmann19json_abi_dp_v3_12_06detail13parse_event_tERNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SH_.exit: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !114
  %i.s = call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.p), !inline_history !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !148  ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !152
  %.not.i = icmp eq ptr %i.u, %i.w
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8functionIFbiN8nlohmann19json_abi_dp_v3_12_06detail13parse_event_tERNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SH_.exit
  %i.x = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.x, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !149
  %i.y = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.y, label %bb.d, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !149
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.z, ptr %i.t, align 8, !tbaa !148
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.d, %bb.c
  %i.aa = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.ab = shl nuw i64 1, %i.aa                    ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ac = load i64, ptr %i.u, align 8, !tbaa !49
  %i.ad = or i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %i.u, align 8, !tbaa !49
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.f:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ae = xor i64 %i.ab, -1
  %i.af = load i64, ptr %i.u, align 8, !tbaa !49
  %i.ag = and i64 %i.af, %i.ae
  store i64 %i.ag, ptr %i.u, align 8, !tbaa !49
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.g:                                             ; preds = %_ZNKSt8functionIFbiN8nlohmann19json_abi_dp_v3_12_06detail13parse_event_tERNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SH_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr %i.u, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %i.s)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #35
  store i8 1, ptr %i.c, align 1, !tbaa !47
  %i.ai = call { i8, ptr } @_ZN8nlohmann19json_abi_dp_v3_12_06detail28json_sax_dom_callback_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE12handle_valueINS1_7value_tEEESt4pairIbPSF_EOT_b(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.c, i1 noundef zeroext true)
  %i.aj = extractvalue { i8, ptr } %i.ai, 1       ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !278 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !282
  %.not.i16 = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i16, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !127
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.an, ptr %i.e, align 8, !tbaa !278
  br label %_ZNSt6vectorIPN8nlohmann19json_abi_dp_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit

bb.i:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !138 ; 4 uses
  %i.ap = ptrtoint ptr %i.ak to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 5 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.j, label %_ZNKSt6vectorIPN8nlohmann19json_abi_dp_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.939) #40
  unreachable

_ZNKSt6vectorIPN8nlohmann19json_abi_dp_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.at = ashr exact i64 %i.ar, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975)
  %i.ax = select i1 %i.av, i64 1152921504606846975, i64 %i.aw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ax, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #39 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.ar ; 3 uses
  store ptr %i.aj, ptr %i.ba, align 8, !tbaa !127
  %i.bb = icmp sgt i64 %i.ar, 0
  br i1 %i.bb, label %bb.k, label %_ZNSt6vectorIPN8nlohmann19json_abi_dp_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPN8nlohmann19json_abi_dp_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr align 8 %i.ao, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIPN8nlohmann19json_abi_dp_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i

_ZNSt6vectorIPN8nlohmann19json_abi_dp_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i: ; preds = %bb.k, %_ZNKSt6vectorIPN8nlohmann19json_abi_dp_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE12_M_check_lenEmPKc.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN8nlohmann19json_abi_dp_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN8nlohmann19json_abi_dp_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ao) #38
  br label %_ZNSt6vectorIPN8nlohmann19json_abi_dp_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i

_ZNSt6vectorIPN8nlohmann19json_abi_dp_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIPN8nlohmann19json_abi_dp_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i
  store ptr %i.az, ptr %i.d, align 8, !tbaa !138
  store ptr %i.bc, ptr %i.e, align 8, !tbaa !278
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bd, ptr %i.al, align 8, !tbaa !282
  %.pr = load ptr, ptr %i.ba, align 8, !tbaa !127
  br label %_ZNSt6vectorIPN8nlohmann19json_abi_dp_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit

_ZNSt6vectorIPN8nlohmann19json_abi_dp_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit: ; preds = %bb.h, %_ZNSt6vectorIPN8nlohmann19json_abi_dp_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i
  %i.be = phi ptr [ %i.aj, %bb.h ], [ %.pr, %_ZNSt6vectorIPN8nlohmann19json_abi_dp_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i ] ; 3 uses
  %.not = icmp eq ptr %i.be, null
  br i1 %.not, label %.critedge, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN8nlohmann19json_abi_dp_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !272 ; 2 uses
  %.not12 = icmp eq ptr %i.bg, null
  br i1 %.not12, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
end_hunk_0
begin_hunk_1_@_ZN8nlohmann19json_abi_dp_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEENS1_19json_sax_dom_parserISF_SM_EEE16get_ubjson_valueEi:bb.a

bb.cs:                                            ; preds = %bb.cr
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lk, i64 40
  store i8 1, ptr %i.mi, align 8, !tbaa !270
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lk, i64 41
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !136, !range !74, !noundef !75
  %i.ml = trunc nuw i8 %i.mk to i1
  br i1 %i.ml, label %bb.ct, label %_ZN8nlohmann19json_abi_dp_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE11parse_errorINS1_11parse_errorEEEbmRKSB_RKT_.exit

bb.ct:                                            ; preds = %bb.cs
  %i.mm = call ptr @__cxa_allocate_exception(i64 40) #35 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nlohmann19json_abi_dp_v3_12_06detail9exceptionE, i64 16), ptr %i.mm, align 8, !tbaa !88
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mo = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.mp = load i32, ptr %i.mo, align 8, !tbaa !209
  store i32 %i.mp, ptr %i.mn, align 8, !tbaa !209
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  %i.mr = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  call void @_ZNSt13runtime_errorC1ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %i.mq, ptr noundef nonnull align 8 dereferenceable(16) %i.mr) #35
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nlohmann19json_abi_dp_v3_12_06detail11parse_errorE, i64 16), ptr %i.mm, align 8, !tbaa !88
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mm, i64 32
  %i.mt = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !211
  store i64 %i.mu, ptr %i.ms, align 8, !tbaa !211
  invoke void @__cxa_throw(ptr nonnull %i.mm, ptr nonnull @_ZTIN8nlohmann19json_abi_dp_v3_12_06detail11parse_errorE, ptr nonnull @_ZN8nlohmann19json_abi_dp_v3_12_06detail9exceptionD2Ev) #40
          to label %.noexc164 unwind label %bb.cw

.noexc164:                                        ; preds = %bb.ct
  unreachable

_ZN8nlohmann19json_abi_dp_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE11parse_errorINS1_11parse_errorEEEbmRKSB_RKT_.exit: ; preds = %bb.cs
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nlohmann19json_abi_dp_v3_12_06detail9exceptionE, i64 16), ptr %15, align 8, !tbaa !88
  %i.mv = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.mv) #35, !inline_history !169
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %15) #35, !inline_history !169
  %i.mw = load ptr, ptr %16, align 8, !tbaa !57   ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.my = icmp eq ptr %i.mw, %i.mx
  br i1 %i.my, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165: ; preds = %_ZN8nlohmann19json_abi_dp_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE11parse_errorINS1_11parse_errorEEEbmRKSB_RKT_.exit
  call void @_ZdlPv(ptr noundef %i.mw) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167: ; preds = %_ZN8nlohmann19json_abi_dp_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE11parse_errorINS1_11parse_errorEEEbmRKSB_RKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165
  %i.mz = load ptr, ptr %18, align 8, !tbaa !57   ; 2 uses
  %i.na = icmp eq ptr %i.mz, %i.mf
  br i1 %i.na, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167
  call void @_ZdlPv(ptr noundef %i.mz) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #35
  %i.nb = load ptr, ptr %17, align 8, !tbaa !57   ; 2 uses
  %i.nc = icmp eq ptr %i.nb, %i.lr
  br i1 %i.nc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  call void @_ZdlPv(ptr noundef %i.nb) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  %i.nd = load ptr, ptr %14, align 8, !tbaa !57   ; 2 uses
  %i.ne = icmp eq ptr %i.nd, %i.ky
  br i1 %i.ne, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173
  call void @_ZdlPv(ptr noundef %i.nd) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  br label %bb.cy

bb.cu:                                            ; preds = %bb.cq
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

bb.cv:                                            ; preds = %bb.cr
  %i.ng = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.cw:                                            ; preds = %bb.ct
  %i.nh = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nlohmann19json_abi_dp_v3_12_06detail9exceptionE, i64 16), ptr %15, align 8, !tbaa !88
  call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.mr) #35, !inline_history !169
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %15) #35, !inline_history !169
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.pn67 = phi { ptr, i32 } [ %i.nh, %bb.cw ], [ %i.ng, %bb.cv ] ; 2 uses
  %i.ni = load ptr, ptr %16, align 8, !tbaa !57   ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.nk = icmp eq ptr %i.ni, %i.nj
  br i1 %i.nk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %bb.cx
  call void @_ZdlPv(ptr noundef %i.ni) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177, %bb.cu
  %.pn67.pn = phi { ptr, i32 } [ %i.nf, %bb.cu ], [ %.pn67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177 ], [ %.pn67, %bb.cx ] ; 2 uses
  %i.nl = load ptr, ptr %18, align 8, !tbaa !57   ; 2 uses
  %i.nm = icmp eq ptr %i.nl, %i.mf
  br i1 %i.nm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179
  call void @_ZdlPv(ptr noundef %i.nl) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #35
  %i.nn = load ptr, ptr %17, align 8, !tbaa !57   ; 2 uses
  %i.no = icmp eq ptr %i.nn, %i.lr
  br i1 %i.no, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, %bb.cp
  %.sink = phi ptr [ %i.md, %bb.cp ], [ %i.nn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182 ]
  %.pn67.pn.pn.pn.ph = phi { ptr, i32 } [ %i.mc, %bb.cp ], [ %.pn67.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182 ]
  call void @_ZdlPv(ptr noundef %.sink) #38
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, %bb.cp
  %.pn67.pn.pn.pn = phi { ptr, i32 } [ %i.mc, %bb.cp ], [ %.pn67.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182 ], [ %.pn67.pn.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  %i.np = load ptr, ptr %14, align 8, !tbaa !57   ; 2 uses
  %i.nq = icmp eq ptr %i.np, %i.ky
  br i1 %i.nq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.np) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  br label %bb.cz

bb.cy:                                            ; preds = %_ZN8nlohmann19json_abi_dp_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEENS1_19json_sax_dom_parserISF_SM_EEE3getEv.exit119, %_ZN8nlohmann19json_abi_dp_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEENS1_19json_sax_dom_parserISF_SM_EEE3getEv.exit, %_ZN8nlohmann19json_abi_dp_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEENS1_19json_sax_dom_parserISF_SM_EEE3getEv.exit86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %bb.ck, %bb.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, %bb.bm, %.critedge78, %.critedge74, %_ZN8nlohmann19json_abi_dp_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEENS1_19json_sax_dom_parserISF_SM_EEE10get_numberImLb0EEEbNS1_14input_format_tERT_.exit, %_ZN8nlohmann19json_abi_dp_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEENS1_19json_sax_dom_parserISF_SM_EEE10get_numberIjLb0EEEbNS1_14input_format_tERT_.exit, %_ZN8nlohmann19json_abi_dp_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEENS1_19json_sax_dom_parserISF_SM_EEE10get_numberItLb0EEEbNS1_14input_format_tERT_.exit, %_ZN8nlohmann19json_abi_dp_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEENS1_19json_sax_dom_parserISF_SM_EEE10get_numberIlLb0EEEbNS1_14input_format_tERT_.exit, %_ZN8nlohmann19json_abi_dp_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEENS1_19json_sax_dom_parserISF_SM_EEE10get_numberIiLb0EEEbNS1_14input_format_tERT_.exit, %_ZN8nlohmann19json_abi_dp_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEENS1_19json_sax_dom_parserISF_SM_EEE10get_numberIsLb0EEEbNS1_14input_format_tERT_.exit, %bb.o, %bb.l, %bb.i, %bb.e, %bb.d, %bb.c, %bb.b
  %.249 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ], [ %i.ad, %bb.b ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ], [ %i.ap, %bb.i ], [ %i.ax, %bb.l ], [ %i.bf, %bb.o ], [ %i.bn, %_ZN8nlohmann19json_abi_dp_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEENS1_19json_sax_dom_parserISF_SM_EEE10get_numberIsLb0EEEbNS1_14input_format_tERT_.exit ], [ %i.cc, %_ZN8nlohmann19json_abi_dp_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEENS1_19json_sax_dom_parserISF_SM_EEE10get_numberIiLb0EEEbNS1_14input_format_tERT_.exit ], [ %i.cq, %_ZN8nlohmann19json_abi_dp_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEENS1_19json_sax_dom_parserISF_SM_EEE10get_numberIlLb0EEEbNS1_14input_format_tERT_.exit ], [ %i.dd, %_ZN8nlohmann19json_abi_dp_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEENS1_19json_sax_dom_parserISF_SM_EEE10get_numberItLb0EEEbNS1_14input_format_tERT_.exit ], [ %i.dq, %_ZN8nlohmann19json_abi_dp_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEENS1_19json_sax_dom_parserISF_SM_EEE10get_numberIjLb0EEEbNS1_14input_format_tERT_.exit ], [ %i.ec, %_ZN8nlohmann19json_abi_dp_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEENS1_19json_sax_dom_parserISF_SM_EEE10get_numberImLb0EEEbNS1_14input_format_tERT_.exit ], [ %i.kt, %bb.ck ], [ %i.gj, %.critedge74 ], [ %i.he, %.critedge78 ], [ %i.hw, %bb.bm ], [ false, %_ZN8nlohmann19json_abi_dp_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEENS1_19json_sax_dom_parserISF_SM_EEE3getEv.exit86 ], [ %i.iq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ], [ %i.kj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156 ], [ %i.ks, %bb.cj ], [ false, %_ZN8nlohmann19json_abi_dp_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEENS1_19json_sax_dom_parserISF_SM_EEE3getEv.exit ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %_ZN8nlohmann19json_abi_dp_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEENS1_19json_sax_dom_parserISF_SM_EEE3getEv.exit119 ]
  ret i1 %.249

bb.cz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %.pn67.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn67.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188 ], [ %i.ge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %i.gz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %i.ht, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ], [ %.pn51.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ], [ %i.kp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159 ]
  resume { ptr, i32 } %.pn67.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8nlohmann19json_abi_dp_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEENS1_19json_sax_dom_parserISF_SM_EEE32get_ubjson_high_precision_numberEv(ptr noundef nonnull align 8 dereferenceable(560) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 7 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  %1 = alloca %"class.nlohmann::json_abi_dp_v3_12_0::detail::lexer.203", align 8 ; 25 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.nlohmann::json_abi_dp_v3_12_0::detail::parse_error", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::allocator", align 1    ; 4 uses
  %9 = alloca %"class.nlohmann::json_abi_dp_v3_12_0::detail::parse_error", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #35
  store i64 0, ptr %i.e, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #35
  store i8 1, ptr %i.f, align 1, !tbaa !85
  %i.g = call noundef zeroext i1 @_ZN8nlohmann19json_abi_dp_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEENS1_19json_sax_dom_parserISF_SM_EEE21get_ubjson_size_valueERmRbi(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.f, i32 noundef 0)
  br i1 %i.g, label %.preheader, label %_ZNSt6vectorIcSaIcEED2Ev.exit, !prof !140

.preheader:                                       ; preds = %bb.a
  %i.h = load i64, ptr %i.e, align 8, !tbaa !49
  %.not145.not = icmp eq i64 %i.h, 0
  br i1 %.not145.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit
  %.026149 = phi i64 [ 0, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ]
  %.sroa.0117.0148 = phi ptr [ null, %.lr.ph ], [ %.sroa.0117.1, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ] ; 7 uses
  %.sroa.14.0147 = phi ptr [ null, %.lr.ph ], [ %.sroa.14.1, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ] ; 3 uses
  %.sroa.9.0146 = phi ptr [ null, %.lr.ph ], [ %.sroa.9.1, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ] ; 3 uses
  %i.m = load i64, ptr %i.i, align 8, !tbaa !318
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.i, align 8, !tbaa !318
  %i.o = load ptr, ptr %0, align 8, !tbaa !115    ; 3 uses
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !115
  %.not.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !173

bb.c:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.o, align 1, !tbaa !42
  %i.r = zext i8 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store ptr %i.s, ptr %0, align 8, !tbaa !306
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.r, %bb.c ], [ -1, %bb.b ]
  store i32 %.0.i.i, ptr %i.k, align 8, !tbaa !317
  %i.t = load i32, ptr %i.l, align 4, !tbaa !320
  %i.u = invoke noundef zeroext i1 @_ZNK8nlohmann19json_abi_dp_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEENS1_19json_sax_dom_parserISF_SM_EEE12unexpect_eofENS1_14input_format_tESK_(ptr noundef nonnull align 8 dereferenceable(560) %0, i32 noundef %i.t, ptr noundef @.str.210)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  br i1 %i.u, label %bb.f, label %.loopexit123, !prof !140

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.k, align 8, !tbaa !317
  %i.w = trunc i32 %i.v to i8                     ; 2 uses
  %.not.i.i51 = icmp eq ptr %.sroa.9.0146, %.sroa.14.0147
  br i1 %.not.i.i51, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 %i.w, ptr %.sroa.9.0146, align 1, !tbaa !42
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

bb.h:                                             ; preds = %bb.f
  %i.x = ptrtoint ptr %.sroa.14.0147 to i64
  %i.y = ptrtoint ptr %.sroa.0117.0148 to i64
  %i.z = sub i64 %i.x, %i.y                       ; 7 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775807
  br i1 %i.aa, label %bb.i, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.939) #40
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.ab = add i64 %.sroa.speculated.i.i.i.i, %i.z ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.z
  %i.ad = call i64 @llvm.umin.i64(i64 %i.ab, i64 9223372036854775807)
  %i.ae = select i1 %i.ac, i64 9223372036854775807, i64 %i.ad ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ae, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #39
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc52:                                         ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.z ; 2 uses
  store i8 %i.w, ptr %i.ag, align 1, !tbaa !42
  %i.ah = icmp sgt i64 %i.z, 0
  br i1 %i.ah, label %bb.j, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

bb.j:                                             ; preds = %.noexc52
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.af, ptr align 1 %.sroa.0117.0148, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.j, %.noexc52
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0117.0148, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0117.0148) #38
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

_ZNSt6vectorIcSaIcEE9push_backEOc.exit:           ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, %bb.g
  %.pn = phi ptr [ %i.ag, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %.sroa.9.0146, %bb.g ]
  %.sroa.14.1 = phi ptr [ %i.ai, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %.sroa.14.0147, %bb.g ]
  %.sroa.0117.1 = phi ptr [ %i.af, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %.sroa.0117.0148, %bb.g ] ; 2 uses
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 2 uses
  %i.aj = add nuw i64 %.026149, 1                 ; 2 uses
  %i.ak = load i64, ptr %i.e, align 8, !tbaa !49
  %.not = icmp ult i64 %i.aj, %i.ak
  br i1 %.not, label %bb.b, label %._crit_edge, !llvm.loop !1654

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.d, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i, %bb.i
  %lpad.loopexit.split-lp185 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

._crit_edge:                                      ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit, %.preheader
  %.sroa.9.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.9.1, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ]
  %.sroa.0117.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.0117.1, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  store ptr %.sroa.0117.0.lcssa, ptr %1, align 8, !tbaa !115
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.sroa.9.0.lcssa, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !115
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %i.al, align 8, !tbaa !337
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 -1, ptr %i.am, align 4, !tbaa !338
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 0, ptr %i.an, align 8, !tbaa !339
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, i8 0, i64 48, i1 false)
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !38
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 0, ptr %i.ar, align 8, !tbaa !41
  store i8 0, ptr %i.aq, align 8, !tbaa !42
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr @.str, ptr %i.as, align 8, !tbaa !340
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  %i.au = call ptr @localeconv() #35
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !342 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZN8nlohmann19json_abi_dp_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcS5_IcSA_EEEEEEC2EOSN_b.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.ax = load i8, ptr %i.av, align 1, !tbaa !42
  %i.ay = sext i8 %i.ax to i32
  br label %_ZN8nlohmann19json_abi_dp_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcS5_IcSA_EEEEEEC2EOSN_b.exit

_ZN8nlohmann19json_abi_dp_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcS5_IcSA_EEEEEEC2EOSN_b.exit: ; preds = %._crit_edge, %bb.l
  %i.az = phi i32 [ %i.ay, %bb.l ], [ 46, %._crit_edge ]
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !343
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i64 -1, ptr %i.bb, align 8, !tbaa !344
  %i.bc = invoke noundef i32 @_ZN8nlohmann19json_abi_dp_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcS5_IcSA_EEEEEE4scanEv(ptr noundef nonnull align 8 dereferenceable(160) %1)
          to label %bb.m unwind label %bb.w

bb.m:                                             ; preds = %_ZN8nlohmann19json_abi_dp_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcS5_IcSA_EEEEEEC2EOSN_b.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  invoke void @_ZNK8nlohmann19json_abi_dp_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcS5_IcSA_EEEEEE16get_token_stringEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(160) %1)
          to label %bb.n unwind label %bb.x

bb.n:                                             ; preds = %bb.m
  %i.bd = invoke noundef i32 @_ZN8nlohmann19json_abi_dp_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcS5_IcSA_EEEEEE4scanEv(ptr noundef nonnull align 8 dereferenceable(160) %1)
          to label %bb.o unwind label %bb.y

bb.o:                                             ; preds = %bb.n
  %.not33 = icmp eq i32 %i.bd, 15
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !321 ; 6 uses
  br i1 %.not33, label %bb.ag, label %bb.p, !prof !140

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !318 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !320
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  invoke void @_ZNK8nlohmann19json_abi_dp_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcS5_IcSA_EEEEEE16get_token_stringEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(160) %1)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN8nlohmann19json_abi_dp_v3_12_06detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA22_KcS8_EEET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(22) @.str.1061, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.r unwind label %bb.aa

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.1062, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.s unwind label %bb.ab

bb.s:                                             ; preds = %bb.r
  invoke void @_ZNK8nlohmann19json_abi_dp_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEENS1_19json_sax_dom_parserISF_SM_EEE17exception_messageENS1_14input_format_tERKSB_SS_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(560) %0, i32 noundef %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN8nlohmann19json_abi_dp_v3_12_06detail11parse_error6createIDnTnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_imRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_dp_v3_12_0::detail::parse_error") align 8 %3, i32 noundef 115, i64 noundef %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr null)
          to label %bb.u unwind label %bb.ad

bb.u:                                             ; preds = %bb.t
  %i.bk = invoke noundef zeroext i1 @_ZN8nlohmann19json_abi_dp_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE11parse_errorINS1_11parse_errorEEEbmRKSB_RKT_(ptr noundef nonnull align 8 dereferenceable(56) %i.bf, i64 noundef %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.v unwind label %bb.ae

bb.v:                                             ; preds = %bb.u
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nlohmann19json_abi_dp_v3_12_06detail9exceptionE, i64 16), ptr %3, align 8, !tbaa !88
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bl) #35, !inline_history !169
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %3) #35, !inline_history !169
  %i.bm = load ptr, ptr %4, align 8, !tbaa !57    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.bm) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bp = load ptr, ptr %7, align 8, !tbaa !57    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bp) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.bs = load ptr, ptr %5, align 8, !tbaa !57    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  call void @_ZdlPv(ptr noundef %i.bs) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  %i.bv = load ptr, ptr %6, align 8, !tbaa !57    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  call void @_ZdlPv(ptr noundef %i.bv) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
end_hunk_1
