Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-diagnostics?download=true
inline.NumInlined: 5547
inline.NumDeleted: 1837
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN8nlohmann21json_abi_diag_v3_12_06detail6parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEE18sax_parse_internalINS1_19json_sax_dom_parserISF_SJ_EEEEbPT_:.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %62)
          to label %bb.fx unwind label %bb.gc

bb.fx:                                            ; preds = %bb.fw
  invoke void @_ZN8nlohmann21json_abi_diag_v3_12_06detail6parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEE17exception_messageENS1_10lexer_baseISF_E10token_typeERKSB_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %60, ptr noundef nonnull align 8 dereferenceable(201) %0, i32 noundef 11, ptr noundef nonnull align 8 dereferenceable(32) %61)
          to label %bb.fy unwind label %bb.gd

bb.fy:                                            ; preds = %bb.fx
  invoke void @_ZN8nlohmann21json_abi_diag_v3_12_06detail11parse_error6createIDnTnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_iRKNS1_10position_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_diag_v3_12_0::detail::parse_error") align 8 %58, i32 noundef 101, ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef nonnull align 8 dereferenceable(32) %60, ptr null)
          to label %bb.fz unwind label %bb.ge

bb.fz:                                            ; preds = %bb.fy
  %i.rt = invoke noundef zeroext i1 @_ZN8nlohmann21json_abi_diag_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEE11parse_errorINS1_11parse_errorEEEbmRKSB_RKT_(ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef nonnull align 8 dereferenceable(40) %58)
          to label %bb.ga unwind label %bb.gf

bb.ga:                                            ; preds = %bb.fz
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nlohmann21json_abi_diag_v3_12_06detail9exceptionE, i64 16), ptr %58, align 8, !tbaa !129
  %i.ru = getelementptr inbounds nuw i8, ptr %58, i64 16
  call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ru) #28, !inline_history !143
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %58) #28, !inline_history !143
  %i.rv = load ptr, ptr %60, align 8, !tbaa !55   ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.rx = icmp eq ptr %i.rv, %i.rw
  br i1 %i.rx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400: ; preds = %bb.ga
  call void @_ZdlPv(ptr noundef %i.rv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402: ; preds = %bb.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400
  %i.ry = load ptr, ptr %61, align 8, !tbaa !55   ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %61, i64 16
  %i.sa = icmp eq ptr %i.ry, %i.rz
  br i1 %i.sa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402
  call void @_ZdlPv(ptr noundef %i.ry) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #28
  %i.sb = load ptr, ptr %57, align 8, !tbaa !55   ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.sd = icmp eq ptr %i.sb, %i.sc
  br i1 %i.sd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405
  call void @_ZdlPv(ptr noundef %i.sb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #28
  br label %.loopexit454

bb.gb:                                            ; preds = %bb.fv
  %i.se = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417

bb.gc:                                            ; preds = %bb.fw
  %i.sf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414

bb.gd:                                            ; preds = %bb.fx
  %i.sg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411

bb.ge:                                            ; preds = %bb.fy
  %i.sh = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.gf:                                            ; preds = %bb.fz
  %i.si = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nlohmann21json_abi_diag_v3_12_06detail9exceptionE, i64 16), ptr %58, align 8, !tbaa !129
  %i.sj = getelementptr inbounds nuw i8, ptr %58, i64 16
  call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.sj) #28, !inline_history !143
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %58) #28, !inline_history !143
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %.pn120 = phi { ptr, i32 } [ %i.si, %bb.gf ], [ %i.sh, %bb.ge ] ; 2 uses
  %i.sk = load ptr, ptr %60, align 8, !tbaa !55   ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.sm = icmp eq ptr %i.sk, %i.sl
  br i1 %i.sm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409: ; preds = %bb.gg
  call void @_ZdlPv(ptr noundef %i.sk) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411: ; preds = %bb.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409, %bb.gd
  %.pn120.pn = phi { ptr, i32 } [ %i.sg, %bb.gd ], [ %.pn120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409 ], [ %.pn120, %bb.gg ] ; 2 uses
  %i.sn = load ptr, ptr %61, align 8, !tbaa !55   ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %61, i64 16
  %i.sp = icmp eq ptr %i.sn, %i.so
  br i1 %i.sp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411
  call void @_ZdlPv(ptr noundef %i.sn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412, %bb.gc
  %.pn120.pn.pn = phi { ptr, i32 } [ %i.sf, %bb.gc ], [ %.pn120.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412 ], [ %.pn120.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #28
  %i.sq = load ptr, ptr %57, align 8, !tbaa !55   ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.ss = icmp eq ptr %i.sq, %i.sr
  br i1 %i.ss, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414
  call void @_ZdlPv(ptr noundef %i.sq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415, %bb.gb
  %.pn120.pn.pn.pn = phi { ptr, i32 } [ %i.se, %bb.gb ], [ %.pn120.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415 ], [ %.pn120.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #28
  br label %bb.gi

.loopexit454:                                     ; preds = %bb.ap, %bb.b, %_ZN8nlohmann21json_abi_diag_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEE6stringERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i204, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %.384 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239 ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %i.nh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331 ], [ %i.ok, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353 ], [ %i.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i204 ], [ %i.pw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378 ], [ %i.id, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254 ], [ %i.rt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275 ], [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168 ], [ true, %_ZN8nlohmann21json_abi_diag_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEE6stringERSB_.exit ], [ false, %bb.b ], [ false, %bb.ap ]
  %i.st = load ptr, ptr %2, align 8, !tbaa !206   ; 2 uses
  %.not.i.i418 = icmp eq ptr %i.st, null
  br i1 %.not.i.i418, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.gh

bb.gh:                                            ; preds = %.loopexit454
  %i.su = load ptr, ptr %i.k, align 8, !tbaa !207 ; 2 uses
  %i.sv = ptrtoint ptr %i.su to i64
  %i.sw = ptrtoint ptr %i.st to i64
  %i.sx = sub i64 %i.sv, %i.sw
  %i.sy = ashr exact i64 %i.sx, 3
  %i.sz = sub nsw i64 0, %i.sy
  %i.ta = getelementptr inbounds [8 x i8], ptr %i.su, i64 %i.sz
  call void @_ZdlPv(ptr noundef %i.ta) #29
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %.loopexit454, %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret i1 %.384

bb.gi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %.pn142 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.pn137.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340 ], [ %.pn132.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362 ], [ %.pn127.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387 ], [ %.pn120.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417 ], [ %.pn98.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214 ], [ %.pn115.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308 ], [ %.pn110.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ], [ %.pn105.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284 ], [ %.pn93.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248 ], [ %.pn89.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260 ]
  %i.tb = load ptr, ptr %2, align 8, !tbaa !206   ; 2 uses
  %.not.i.i419 = icmp eq ptr %i.tb, null
  br i1 %.not.i.i419, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit420, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.tc = load ptr, ptr %i.k, align 8, !tbaa !207 ; 2 uses
  %i.td = ptrtoint ptr %i.tc to i64
  %i.te = ptrtoint ptr %i.tb to i64
  %i.tf = sub i64 %i.td, %i.te
  %i.tg = ashr exact i64 %i.tf, 3
  %i.th = sub nsw i64 0, %i.tg
  %i.ti = getelementptr inbounds [8 x i8], ptr %i.tc, i64 %i.th
  call void @_ZdlPv(ptr noundef %i.ti) #29
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit420

_ZNSt13_Bvector_baseISaIbEED2Ev.exit420:          ; preds = %bb.gi, %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn142
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8nlohmann21json_abi_diag_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEE11parse_errorINS1_11parse_errorEEEbmRKSB_RKT_(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.a, align 8, !tbaa !185
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.c = load i8, ptr %i.b, align 1, !tbaa !184, !range !53, !noundef !54
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 40) #28 ; 2 uses
  tail call void @_ZN8nlohmann21json_abi_diag_v3_12_06detail11parse_errorC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %3) #28
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN8nlohmann21json_abi_diag_v3_12_06detail11parse_errorE, ptr nonnull @_ZN8nlohmann21json_abi_diag_v3_12_06detail9exceptionD2Ev) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !206  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !207  ; 2 uses
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
  %i.ac = load i64, ptr %spec.select19.i.i.i.i.i, align 8, !tbaa !88
  %i.ad = and i64 %i.x, %i.ac
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.ae = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !88
  %i.af = or i64 %i.ae, %i.ab
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

bb.d:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.ag = xor i64 %i.ab, -1
  %i.ah = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !88
  %i.ai = and i64 %i.ah, %i.ag
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i:      ; preds = %bb.d, %bb.c
  %storemerge.i.i.i.i.i = phi i64 [ %i.af, %bb.c ], [ %i.ai, %bb.d ]
  store i64 %storemerge.i.i.i.i.i, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !88
  %i.aj = add nsw i64 %.024.i.i.i.i.i, -1
  %i.ak = icmp sgt i64 %.024.i.i.i.i.i, 1
  br i1 %i.ak, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !571

_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit: ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i, %bb.b
  %i.al = shl nuw i64 1, %i.l                     ; 2 uses
  br i1 %3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.am = load i64, ptr %1, align 8, !tbaa !88
  %i.an = or i64 %i.am, %i.al
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.f:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.ao = xor i64 %i.al, -1
  %i.ap = load i64, ptr %1, align 8, !tbaa !88
  %i.aq = and i64 %i.ap, %i.ao
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.e, %bb.f
  %storemerge = phi i64 [ %i.aq, %bb.f ], [ %i.an, %bb.e ]
  store i64 %storemerge, ptr %1, align 8, !tbaa !88
  %i.ar = add i32 %i.f, 1
  store i32 %i.ar, ptr %i.e, align 8, !tbaa !208
  %i.as = icmp eq i32 %i.f, 63
  br i1 %i.as, label %bb.g, label %_ZNSt13_Bit_iteratorppEv.exit

bb.g:                                             ; preds = %_ZNSt14_Bit_referenceaSEb.exit
  store i32 0, ptr %i.e, align 8, !tbaa !208
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.at, ptr %i.a, align 8, !tbaa !206
  br label %_ZNSt13_Bit_iteratorppEv.exit

bb.h:                                             ; preds = %bb.a
  %i.au = load ptr, ptr %0, align 8, !tbaa !206   ; 4 uses
  %i.av = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.aw = sub i64 %i.g, %i.av                     ; 2 uses
  %i.ax = shl nsw i64 %i.aw, 3
  %i.ay = zext i32 %i.f to i64
  %i.az = add nsw i64 %i.ax, %i.ay                ; 4 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775744
  br i1 %i.ba, label %bb.i, label %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #33
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
  %i.bi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #32 ; 5 uses
  %i.bj = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bk = sub i64 %i.bj, %i.av                    ; 4 uses
  %i.bl = icmp sgt i64 %i.bk, 8
  br i1 %i.bl, label %bb.j, label %bb.k, !prof !105

bb.j:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr align 8 %i.au, i64 %i.bk, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.k:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  %i.bm = icmp eq i64 %i.bk, 8
  br i1 %i.bm, label %bb.l, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bn = load i64, ptr %i.au, align 8, !tbaa !88
  store i64 %i.bn, ptr %i.bi, align 8, !tbaa !88
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
  %i.bs = load i64, ptr %.sroa.09.016.i.i.i.i.i.i, align 8, !tbaa !88
  %i.bt = and i64 %i.bs, %i.br
  %.not.i.i.i.i.i.i47 = icmp eq i64 %i.bt, 0
  %i.bu = zext nneg i32 %.sroa.55.018.i.i.i.i.i.i to i64
  %i.bv = shl nuw i64 1, %i.bu                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i47, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bw = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !88
  %i.bx = or i64 %i.bw, %i.bv
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.by = xor i64 %i.bv, -1
  %i.bz = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !88
  %i.ca = and i64 %i.bz, %i.by
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i:       ; preds = %bb.n, %bb.m
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.ca, %bb.n ], [ %i.bx, %bb.m ]
  store i64 %storemerge.i.i.i.i.i.i, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !88
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
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i.i, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, !llvm.loop !572

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
  %i.cm = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i110, align 8, !tbaa !88
  %i.cn = or i64 %i.cm, %i.cl
  br label %_ZNSt14_Bit_referenceaSEb.exit53

bb.q:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit
  %i.co = xor i64 %i.cl, -1
  %i.cp = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i110, align 8, !tbaa !88
  %i.cq = and i64 %i.cp, %i.co
  br label %_ZNSt14_Bit_referenceaSEb.exit53

_ZNSt14_Bit_referenceaSEb.exit53:                 ; preds = %bb.p, %bb.q
  %storemerge111 = phi i64 [ %i.cq, %bb.q ], [ %i.cn, %bb.p ]
  store i64 %storemerge111, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i110, align 8, !tbaa !88
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
  %i.dc = load i64, ptr %.sroa.013.020.i.i.i.i.i, align 8, !tbaa !88
  %i.dd = and i64 %i.dc, %i.cz
  %.not.i.i.i.i.i.i65 = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i.i.i.i.i65, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.de = load i64, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !88
  %i.df = or i64 %i.de, %i.db
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dg = xor i64 %i.db, -1
  %i.dh = load i64, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !88
  %i.di = and i64 %i.dh, %i.dg
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66:    ; preds = %bb.s, %bb.r
  %storemerge.i.i.i.i.i67 = phi i64 [ %i.df, %bb.r ], [ %i.di, %bb.s ]
  store i64 %storemerge.i.i.i.i.i67, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !88
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
  br i1 %i.do, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !573

_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit:  ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66, %_ZNSt14_Bit_referenceaSEb.exit53
  %.sroa.59.0.lcssa.i.i.i.i.i58 = phi i32 [ %.sroa.683.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.59.1.i.i.i.i.i70, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.sroa.07.0.lcssa.i.i.i.i.i59 = phi ptr [ %.sroa.082.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.07.1.i.i.i.i.i72, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.not.i73 = icmp eq ptr %i.au, null
  br i1 %.not.i73, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.dp = ashr exact i64 %i.aw, 3
  %i.dq = sub nsw i64 0, %i.dp
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.dq
  tail call void @_ZdlPv(ptr noundef %i.dr) #29
  br label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit: ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, %bb.t
  %i.ds = lshr i64 %i.bf, 6
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ds
  store ptr %i.dt, ptr %i.c, align 8, !tbaa !207
  store ptr %i.bi, ptr %0, align 8
  %.sroa.587.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.587.0..sroa_idx88, align 8
  store ptr %.sroa.07.0.lcssa.i.i.i.i.i59, ptr %i.a, align 8
  store i32 %.sroa.59.0.lcssa.i.i.i.i.i58, ptr %i.e, align 8
  br label %_ZNSt13_Bit_iteratorppEv.exit

_ZNSt13_Bit_iteratorppEv.exit:                    ; preds = %bb.g, %_ZNSt14_Bit_referenceaSEb.exit, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8nlohmann21json_abi_diag_v3_12_06detail28json_sax_dom_callback_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEE12start_objectEm(ptr noundef nonnull align 8 dereferenceable(200) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !213
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !186
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 3
  %i.l = trunc i64 %i.k to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.l, ptr %i.a, align 4, !tbaa !89
  store i8 0, ptr %i.b, align 1, !tbaa !216
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !83
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFbiN8nlohmann21json_abi_diag_v3_12_06detail13parse_event_tERNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SH_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #33
  unreachable

_ZNKSt8functionIFbiN8nlohmann21json_abi_diag_v3_12_06detail13parse_event_tERNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SH_.exit: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !118
  %i.s = call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.p), !inline_history !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !206  ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !207
  %.not.i = icmp eq ptr %i.u, %i.w
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8functionIFbiN8nlohmann21json_abi_diag_v3_12_06detail13parse_event_tERNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SH_.exit
  %i.x = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.x, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !208
  %i.y = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.y, label %bb.d, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !208
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.z, ptr %i.t, align 8, !tbaa !206
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.d, %bb.c
  %i.aa = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.ab = shl nuw i64 1, %i.aa                    ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ac = load i64, ptr %i.u, align 8, !tbaa !88
  %i.ad = or i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %i.u, align 8, !tbaa !88
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.f:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ae = xor i64 %i.ab, -1
  %i.af = load i64, ptr %i.u, align 8, !tbaa !88
  %i.ag = and i64 %i.af, %i.ae
  store i64 %i.ag, ptr %i.u, align 8, !tbaa !88
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.g:                                             ; preds = %_ZNKSt8functionIFbiN8nlohmann21json_abi_diag_v3_12_06detail13parse_event_tERNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SH_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr %i.u, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %i.s)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i8 1, ptr %i.c, align 1, !tbaa !64
  %i.ai = call { i8, ptr } @_ZN8nlohmann21json_abi_diag_v3_12_06detail28json_sax_dom_callback_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEE12handle_valueINS1_7value_tEEESt4pairIbPSF_EOT_b(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.c, i1 noundef zeroext true)
  %i.aj = extractvalue { i8, ptr } %i.ai, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !213 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !217
  %.not.i15 = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !65
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.an, ptr %i.e, align 8, !tbaa !213
  br label %_ZNSt6vectorIPN8nlohmann21json_abi_diag_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit

bb.i:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !186 ; 4 uses
  %i.ap = ptrtoint ptr %i.ak to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 5 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.j, label %_ZNKSt6vectorIPN8nlohmann21json_abi_diag_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #33
  unreachable

_ZNKSt6vectorIPN8nlohmann21json_abi_diag_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.at = ashr exact i64 %i.ar, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975)
  %i.ax = select i1 %i.av, i64 1152921504606846975, i64 %i.aw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ax, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #32 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.ar ; 3 uses
  store ptr %i.aj, ptr %i.ba, align 8, !tbaa !65
  %i.bb = icmp sgt i64 %i.ar, 0
  br i1 %i.bb, label %bb.k, label %_ZNSt6vectorIPN8nlohmann21json_abi_diag_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPN8nlohmann21json_abi_diag_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr align 8 %i.ao, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIPN8nlohmann21json_abi_diag_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i

_ZNSt6vectorIPN8nlohmann21json_abi_diag_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i: ; preds = %bb.k, %_ZNKSt6vectorIPN8nlohmann21json_abi_diag_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE12_M_check_lenEmPKc.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN8nlohmann21json_abi_diag_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN8nlohmann21json_abi_diag_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ao) #29
  br label %_ZNSt6vectorIPN8nlohmann21json_abi_diag_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i

_ZNSt6vectorIPN8nlohmann21json_abi_diag_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIPN8nlohmann21json_abi_diag_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i
  store ptr %i.az, ptr %i.d, align 8, !tbaa !186
  store ptr %i.bc, ptr %i.e, align 8, !tbaa !213
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bd, ptr %i.al, align 8, !tbaa !217
  br label %_ZNSt6vectorIPN8nlohmann21json_abi_diag_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit

_ZNSt6vectorIPN8nlohmann21json_abi_diag_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit: ; preds = %bb.h, %_ZNSt6vectorIPN8nlohmann21json_abi_diag_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i
  %i.be = phi ptr [ %i.ak, %bb.h ], [ %i.ba, %_ZNSt6vectorIPN8nlohmann21json_abi_diag_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i ]
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !65 ; 2 uses
  %.not = icmp eq ptr %i.bf, null
  %.not12 = icmp eq i64 %1, -1
  %or.cond = or i1 %.not12, %.not
  br i1 %or.cond, label %.critedge, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN8nlohmann21json_abi_diag_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !39  ; 2 uses
  %i.bh = icmp ult i8 %i.bg, 3
  br i1 %i.bh, label %switch.lookup, label %_ZNK8nlohmann21json_abi_diag_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit

switch.lookup:                                    ; preds = %bb.m
  %i.bi = zext nneg i8 %i.bg to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8nlohmann21json_abi_diag_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEE11start_arrayEm, i64 %i.bi
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %_ZNK8nlohmann21json_abi_diag_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit

_ZNK8nlohmann21json_abi_diag_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit: ; preds = %bb.m, %switch.lookup
  %.0.i = phi i64 [ %switch.load, %switch.lookup ], [ 1, %bb.m ]
  %i.bj = icmp ugt i64 %1, %.0.i
  br i1 %i.bj, label %bb.n, label %.critedge, !prof !198

bb.n:                                             ; preds = %_ZNK8nlohmann21json_abi_diag_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit
  %i.bk = call ptr @__cxa_allocate_exception(i64 32) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 noundef %1)
          to label %bb.o unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread

bb.o:                                             ; preds = %bb.n
end_hunk_0
