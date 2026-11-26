Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-testsuites?download=true
inline.NumInlined: 7862
inline.NumDeleted: 1619
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN8nlohmann16json_abi_v3_12_06detail6parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterEE18sax_parse_internalINS1_19json_sax_dom_parserISF_SG_EEEEbPT_:.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull @.str.131, ptr noundef nonnull align 1 dereferenceable(1) %62)
          to label %bb.fp unwind label %bb.fu

bb.fp:                                            ; preds = %bb.fo
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail6parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterEE17exception_messageENS1_10lexer_baseISF_E10token_typeERKSB_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %60, ptr noundef nonnull align 8 dereferenceable(201) %0, i32 noundef 11, ptr noundef nonnull align 8 dereferenceable(32) %61)
          to label %bb.fq unwind label %bb.fv

bb.fq:                                            ; preds = %bb.fp
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail11parse_error6createIDnTnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_iRKNS1_10position_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::detail::parse_error") align 8 %58, i32 noundef 101, ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef nonnull align 8 dereferenceable(32) %60, ptr null)
          to label %bb.fr unwind label %bb.fw

bb.fr:                                            ; preds = %bb.fq
  %i.ph = invoke noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterEE11parse_errorINS1_11parse_errorEEEbmRKSB_RKT_(ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef nonnull align 8 dereferenceable(40) %58)
          to label %bb.fs unwind label %bb.fx

bb.fs:                                            ; preds = %bb.fr
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nlohmann16json_abi_v3_12_06detail9exceptionE, i64 16), ptr %58, align 8, !tbaa !25
  %i.pi = getelementptr inbounds nuw i8, ptr %58, i64 16
  call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.pi) #28, !inline_history !146
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %58) #28, !inline_history !146
  %i.pj = load ptr, ptr %60, align 8, !tbaa !70   ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.pl = icmp eq ptr %i.pj, %i.pk
  br i1 %i.pl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374: ; preds = %bb.fs
  call void @_ZdlPv(ptr noundef %i.pj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376: ; preds = %bb.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374
  %i.pm = load ptr, ptr %61, align 8, !tbaa !70   ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %61, i64 16
  %i.po = icmp eq ptr %i.pm, %i.pn
  br i1 %i.po, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376
  call void @_ZdlPv(ptr noundef %i.pm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #28
  %i.pp = load ptr, ptr %57, align 8, !tbaa !70   ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.pr = icmp eq ptr %i.pp, %i.pq
  br i1 %i.pr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379
  call void @_ZdlPv(ptr noundef %i.pp) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #28
  br label %.loopexit

bb.ft:                                            ; preds = %bb.fn
  %i.ps = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391

bb.fu:                                            ; preds = %bb.fo
  %i.pt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388

bb.fv:                                            ; preds = %bb.fp
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385

bb.fw:                                            ; preds = %bb.fq
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

bb.fx:                                            ; preds = %bb.fr
  %i.pw = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nlohmann16json_abi_v3_12_06detail9exceptionE, i64 16), ptr %58, align 8, !tbaa !25
  %i.px = getelementptr inbounds nuw i8, ptr %58, i64 16
  call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.px) #28, !inline_history !146
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %58) #28, !inline_history !146
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.pn120 = phi { ptr, i32 } [ %i.pw, %bb.fx ], [ %i.pv, %bb.fw ] ; 2 uses
  %i.py = load ptr, ptr %60, align 8, !tbaa !70   ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.qa = icmp eq ptr %i.py, %i.pz
  br i1 %i.qa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383: ; preds = %bb.fy
  call void @_ZdlPv(ptr noundef %i.py) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385: ; preds = %bb.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383, %bb.fv
  %.pn120.pn = phi { ptr, i32 } [ %i.pu, %bb.fv ], [ %.pn120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383 ], [ %.pn120, %bb.fy ] ; 2 uses
  %i.qb = load ptr, ptr %61, align 8, !tbaa !70   ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %61, i64 16
  %i.qd = icmp eq ptr %i.qb, %i.qc
  br i1 %i.qd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385
  call void @_ZdlPv(ptr noundef %i.qb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386, %bb.fu
  %.pn120.pn.pn = phi { ptr, i32 } [ %i.pt, %bb.fu ], [ %.pn120.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386 ], [ %.pn120.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #28
  %i.qe = load ptr, ptr %57, align 8, !tbaa !70   ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.qg = icmp eq ptr %i.qe, %i.qf
  br i1 %i.qg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388
  call void @_ZdlPv(ptr noundef %i.qe) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389, %bb.ft
  %.pn120.pn.pn.pn = phi { ptr, i32 } [ %i.ps, %bb.ft ], [ %.pn120.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389 ], [ %.pn120.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #28
  br label %bb.ga

.loopexit:                                        ; preds = %bb.an, %bb.b, %_ZN8nlohmann16json_abi_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterEE6stringERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i196, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %.384 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231 ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %i.ll, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314 ], [ %i.mo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336 ], [ %i.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i196 ], [ %i.oa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361 ], [ %i.gx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246 ], [ %i.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267 ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168 ], [ true, %_ZN8nlohmann16json_abi_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterEE6stringERSB_.exit ], [ false, %bb.b ], [ false, %bb.an ]
  %i.qh = load ptr, ptr %2, align 8, !tbaa !211   ; 2 uses
  %.not.i.i = icmp eq ptr %i.qh, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.fz

bb.fz:                                            ; preds = %.loopexit
  %i.qi = load ptr, ptr %i.k, align 8, !tbaa !212 ; 2 uses
  %i.qj = ptrtoint ptr %i.qi to i64
  %i.qk = ptrtoint ptr %i.qh to i64
  %i.ql = sub i64 %i.qj, %i.qk
  %i.qm = ashr exact i64 %i.ql, 3
  %i.qn = sub nsw i64 0, %i.qm
  %i.qo = getelementptr inbounds [8 x i8], ptr %i.qi, i64 %i.qn
  call void @_ZdlPv(ptr noundef %i.qo) #31
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %.loopexit, %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret i1 %.384

bb.ga:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %.pn142 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.pn137.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323 ], [ %.pn132.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345 ], [ %.pn127.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370 ], [ %.pn120.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391 ], [ %.pn98.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206 ], [ %.pn115.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300 ], [ %.pn110.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ], [ %.pn105.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276 ], [ %.pn93.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240 ], [ %.pn89.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252 ]
  %i.qp = load ptr, ptr %2, align 8, !tbaa !211   ; 2 uses
  %.not.i.i392 = icmp eq ptr %i.qp, null
  br i1 %.not.i.i392, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit393, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.qq = load ptr, ptr %i.k, align 8, !tbaa !212 ; 2 uses
  %i.qr = ptrtoint ptr %i.qq to i64
  %i.qs = ptrtoint ptr %i.qp to i64
  %i.qt = sub i64 %i.qr, %i.qs
  %i.qu = ashr exact i64 %i.qt, 3
  %i.qv = sub nsw i64 0, %i.qu
  %i.qw = getelementptr inbounds [8 x i8], ptr %i.qq, i64 %i.qv
  call void @_ZdlPv(ptr noundef %i.qw) #31
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit393

_ZNSt13_Bvector_baseISaIbEED2Ev.exit393:          ; preds = %bb.ga, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn142
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterEE11parse_errorINS1_11parse_errorEEEbmRKSB_RKT_(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.a, align 8, !tbaa !185
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.c = load i8, ptr %i.b, align 1, !tbaa !184, !range !33, !noundef !34
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 40) #28 ; 2 uses
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail11parse_errorC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %3) #28
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN8nlohmann16json_abi_v3_12_06detail11parse_errorE, ptr nonnull @_ZN8nlohmann16json_abi_v3_12_06detail9exceptionD2Ev) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !211  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !212  ; 2 uses
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
  %i.ac = load i64, ptr %spec.select19.i.i.i.i.i, align 8, !tbaa !71
  %i.ad = and i64 %i.x, %i.ac
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.ae = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !71
  %i.af = or i64 %i.ae, %i.ab
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

bb.d:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.ag = xor i64 %i.ab, -1
  %i.ah = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !71
  %i.ai = and i64 %i.ah, %i.ag
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i:      ; preds = %bb.d, %bb.c
  %storemerge.i.i.i.i.i = phi i64 [ %i.af, %bb.c ], [ %i.ai, %bb.d ]
  store i64 %storemerge.i.i.i.i.i, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !71
  %i.aj = add nsw i64 %.024.i.i.i.i.i, -1
  %i.ak = icmp sgt i64 %.024.i.i.i.i.i, 1
  br i1 %i.ak, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !553

_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit: ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i, %bb.b
  %i.al = shl nuw i64 1, %i.l                     ; 2 uses
  br i1 %3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.am = load i64, ptr %1, align 8, !tbaa !71
  %i.an = or i64 %i.am, %i.al
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.f:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.ao = xor i64 %i.al, -1
  %i.ap = load i64, ptr %1, align 8, !tbaa !71
  %i.aq = and i64 %i.ap, %i.ao
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.e, %bb.f
  %storemerge = phi i64 [ %i.aq, %bb.f ], [ %i.an, %bb.e ]
  store i64 %storemerge, ptr %1, align 8, !tbaa !71
  %i.ar = add i32 %i.f, 1
  store i32 %i.ar, ptr %i.e, align 8, !tbaa !213
  %i.as = icmp eq i32 %i.f, 63
  br i1 %i.as, label %bb.g, label %_ZNSt13_Bit_iteratorppEv.exit

bb.g:                                             ; preds = %_ZNSt14_Bit_referenceaSEb.exit
  store i32 0, ptr %i.e, align 8, !tbaa !213
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.at, ptr %i.a, align 8, !tbaa !211
  br label %_ZNSt13_Bit_iteratorppEv.exit

bb.h:                                             ; preds = %bb.a
  %i.au = load ptr, ptr %0, align 8, !tbaa !211   ; 4 uses
  %i.av = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.aw = sub i64 %i.g, %i.av                     ; 2 uses
  %i.ax = shl nsw i64 %i.aw, 3
  %i.ay = zext i32 %i.f to i64
  %i.az = add nsw i64 %i.ax, %i.ay                ; 4 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775744
  br i1 %i.ba, label %bb.i, label %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.125) #32
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
  %i.bi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #33 ; 5 uses
  %i.bj = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bk = sub i64 %i.bj, %i.av                    ; 4 uses
  %i.bl = icmp sgt i64 %i.bk, 8
  br i1 %i.bl, label %bb.j, label %bb.k, !prof !200

bb.j:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr align 8 %i.au, i64 %i.bk, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.k:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  %i.bm = icmp eq i64 %i.bk, 8
  br i1 %i.bm, label %bb.l, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bn = load i64, ptr %i.au, align 8, !tbaa !71
  store i64 %i.bn, ptr %i.bi, align 8, !tbaa !71
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
  %i.bs = load i64, ptr %.sroa.09.016.i.i.i.i.i.i, align 8, !tbaa !71
  %i.bt = and i64 %i.bs, %i.br
  %.not.i.i.i.i.i.i47 = icmp eq i64 %i.bt, 0
  %i.bu = zext nneg i32 %.sroa.55.018.i.i.i.i.i.i to i64
  %i.bv = shl nuw i64 1, %i.bu                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i47, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bw = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !71
  %i.bx = or i64 %i.bw, %i.bv
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.by = xor i64 %i.bv, -1
  %i.bz = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !71
  %i.ca = and i64 %i.bz, %i.by
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i:       ; preds = %bb.n, %bb.m
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.ca, %bb.n ], [ %i.bx, %bb.m ]
  store i64 %storemerge.i.i.i.i.i.i, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !71
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
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i.i, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, !llvm.loop !554

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
  %i.cm = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i110, align 8, !tbaa !71
  %i.cn = or i64 %i.cm, %i.cl
  br label %_ZNSt14_Bit_referenceaSEb.exit53

bb.q:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit
  %i.co = xor i64 %i.cl, -1
  %i.cp = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i110, align 8, !tbaa !71
  %i.cq = and i64 %i.cp, %i.co
  br label %_ZNSt14_Bit_referenceaSEb.exit53

_ZNSt14_Bit_referenceaSEb.exit53:                 ; preds = %bb.p, %bb.q
  %storemerge111 = phi i64 [ %i.cq, %bb.q ], [ %i.cn, %bb.p ]
  store i64 %storemerge111, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i110, align 8, !tbaa !71
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
  %i.dc = load i64, ptr %.sroa.013.020.i.i.i.i.i, align 8, !tbaa !71
  %i.dd = and i64 %i.dc, %i.cz
  %.not.i.i.i.i.i.i65 = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i.i.i.i.i65, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.de = load i64, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !71
  %i.df = or i64 %i.de, %i.db
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dg = xor i64 %i.db, -1
  %i.dh = load i64, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !71
  %i.di = and i64 %i.dh, %i.dg
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66:    ; preds = %bb.s, %bb.r
  %storemerge.i.i.i.i.i67 = phi i64 [ %i.df, %bb.r ], [ %i.di, %bb.s ]
  store i64 %storemerge.i.i.i.i.i67, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !71
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
  br i1 %i.do, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !555

_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit:  ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66, %_ZNSt14_Bit_referenceaSEb.exit53
  %.sroa.59.0.lcssa.i.i.i.i.i58 = phi i32 [ %.sroa.683.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.59.1.i.i.i.i.i70, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.sroa.07.0.lcssa.i.i.i.i.i59 = phi ptr [ %.sroa.082.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.07.1.i.i.i.i.i72, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.not.i73 = icmp eq ptr %i.au, null
  br i1 %.not.i73, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.dp = ashr exact i64 %i.aw, 3
  %i.dq = sub nsw i64 0, %i.dp
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.dq
  tail call void @_ZdlPv(ptr noundef %i.dr) #31
  br label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit: ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, %bb.t
  %i.ds = lshr i64 %i.bf, 6
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ds
  store ptr %i.dt, ptr %i.c, align 8, !tbaa !212
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
define linkonce_odr dso_local noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail28json_sax_dom_callback_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterEE12start_objectEm(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !220
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !186
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 3
  %i.l = trunc i64 %i.k to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.l, ptr %i.a, align 4, !tbaa !103
  store i8 0, ptr %i.b, align 1, !tbaa !223
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFbiN8nlohmann16json_abi_v3_12_06detail13parse_event_tERNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SH_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #32
  unreachable

_ZNKSt8functionIFbiN8nlohmann16json_abi_v3_12_06detail13parse_event_tERNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SH_.exit: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !139
  %i.s = call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.p), !inline_history !1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !211  ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !212
  %.not.i = icmp eq ptr %i.u, %i.w
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8functionIFbiN8nlohmann16json_abi_v3_12_06detail13parse_event_tERNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SH_.exit
  %i.x = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.x, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !213
  %i.y = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.y, label %bb.d, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !213
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.z, ptr %i.t, align 8, !tbaa !211
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.d, %bb.c
  %i.aa = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.ab = shl nuw i64 1, %i.aa                    ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ac = load i64, ptr %i.u, align 8, !tbaa !71
  %i.ad = or i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %i.u, align 8, !tbaa !71
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.f:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ae = xor i64 %i.ab, -1
  %i.af = load i64, ptr %i.u, align 8, !tbaa !71
  %i.ag = and i64 %i.af, %i.ae
  store i64 %i.ag, ptr %i.u, align 8, !tbaa !71
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.g:                                             ; preds = %_ZNKSt8functionIFbiN8nlohmann16json_abi_v3_12_06detail13parse_event_tERNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SH_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr %i.u, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %i.s)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i8 1, ptr %i.c, align 1, !tbaa !51
  %i.ai = call { i8, ptr } @_ZN8nlohmann16json_abi_v3_12_06detail28json_sax_dom_callback_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterEE12handle_valueINS1_7value_tEEESt4pairIbPSF_EOT_b(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.c, i1 noundef zeroext true)
  %i.aj = extractvalue { i8, ptr } %i.ai, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !220 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !224
  %.not.i15 = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !182
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.an, ptr %i.e, align 8, !tbaa !220
  br label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit

bb.i:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !186 ; 4 uses
  %i.ap = ptrtoint ptr %i.ak to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 5 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.j, label %_ZNKSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.76) #32
  unreachable

_ZNKSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.at = ashr exact i64 %i.ar, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975)
  %i.ax = select i1 %i.av, i64 1152921504606846975, i64 %i.aw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ax, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #33 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.ar ; 3 uses
  store ptr %i.aj, ptr %i.ba, align 8, !tbaa !182
  %i.bb = icmp sgt i64 %i.ar, 0
  br i1 %i.bb, label %bb.k, label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr align 8 %i.ao, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i

_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i: ; preds = %bb.k, %_ZNKSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE12_M_check_lenEmPKc.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ao) #31
  br label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i

_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i
  store ptr %i.az, ptr %i.d, align 8, !tbaa !186
  store ptr %i.bc, ptr %i.e, align 8, !tbaa !220
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bd, ptr %i.al, align 8, !tbaa !224
  br label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit

_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit: ; preds = %bb.h, %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i
  %i.be = phi ptr [ %i.ak, %bb.h ], [ %i.ba, %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i ]
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !182 ; 2 uses
  %.not = icmp eq ptr %i.bf, null
  %.not12 = icmp eq i64 %1, -1
  %or.cond = or i1 %.not12, %.not
  br i1 %or.cond, label %.critedge, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !93  ; 2 uses
  %i.bh = icmp ult i8 %i.bg, 3
  br i1 %i.bh, label %switch.lookup, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit

switch.lookup:                                    ; preds = %bb.m
  %i.bi = zext nneg i8 %i.bg to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8nlohmann16json_abi_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEE11start_arrayEm, i64 %i.bi
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit: ; preds = %bb.m, %switch.lookup
  %.0.i = phi i64 [ %switch.load, %switch.lookup ], [ 1, %bb.m ]
  %i.bj = icmp ugt i64 %1, %.0.i
  br i1 %i.bj, label %bb.n, label %.critedge, !prof !198

bb.n:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit
  %i.bk = call ptr @__cxa_allocate_exception(i64 32) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 noundef %1)
          to label %bb.o unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread

bb.o:                                             ; preds = %bb.n
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE17_M_construct_nodeIJRKSH_EEEvPSt13_Rb_tree_nodeISH_EDpOT_:bb.a

bb.i:                                             ; preds = %.body
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EEC2ERKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !97     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEE8allocateEmPKv.exit.i.i.i, !prof !198

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

_ZNSt15__new_allocatorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !97
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !96
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !238
  %i.m = load ptr, ptr %1, align 8, !tbaa !182    ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !182  ; 2 uses
  %.not18 = icmp eq ptr %i.m, %i.n
  br i1 %.not18, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEEPSG_SG_ET0_T_SO_SN_RSaIT1_E.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKSE_EEvPT_DpOT0_.exit.i
  %.0.i20 = phi ptr [ %i.p, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKSE_EEvPT_DpOT0_.exit.i ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.014.019 = phi ptr [ %i.o, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKSE_EEvPT_DpOT0_.exit.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ERKSD_(ptr noundef nonnull align 8 dereferenceable(16) %.0.i20, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.019)
          to label %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKSE_EEvPT_DpOT0_.exit.i unwind label %bb.d, !inline_history !596

_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKSE_EEvPT_DpOT0_.exit.i: ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.014.019, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i20, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.n
  br i1 %.not, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEEPSG_SG_ET0_T_SO_SN_RSaIT1_E.exit, label %.lr.ph, !llvm.loop !597

bb.d:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #28, !inline_history !598 ; 0 uses
  invoke void @_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_(ptr noundef %i.i, ptr noundef nonnull %.0.i20)
          to label %bb.e unwind label %bb.f, !inline_history !598

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #32
          to label %bb.h unwind label %bb.f, !inline_history !598

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g, !inline_history !598

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #29, !inline_history !598
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEEPSG_SG_ET0_T_SO_SN_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKSE_EEvPT_DpOT0_.exit.i, %bb.c
  %.0.i.lcssa = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKSE_EEvPT_DpOT0_.exit.i ]
  store ptr %.0.i.lcssa, ptr %i.j, align 8, !tbaa !96
  ret void

.body:                                            ; preds = %bb.f
  %i.w = load ptr, ptr %0, align 8, !tbaa !97     ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.body
  tail call void @_ZdlPv(ptr noundef nonnull %i.w) #31
  br label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EED2Ev.exit

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EED2Ev.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %i.t
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i2 = icmp eq ptr %0, %1
  br i1 %.not.i2, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEEvT_SI_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit
  %.0.i3 = phi ptr [ %i.e, %_ZSt8_DestroyIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.i3, i64 8
  %i.b = load i8, ptr %.0.i3, align 8, !tbaa !44
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef zeroext %i.b)
          to label %_ZSt8_DestroyIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit unwind label %bb.b, !inline_history !599

bb.b:                                             ; preds = %.lr.ph
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #29, !inline_history !599
  unreachable

_ZSt8_DestroyIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit: ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i3, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.e, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEEvT_SI_.exit, label %.lr.ph, !llvm.loop !10

_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEEvT_SI_.exit: ; preds = %_ZSt8_DestroyIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 27 uses
  %3 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 8 uses
  %i.a = icmp eq i8 %1, 1
  %i.b = load ptr, ptr %0, align 8                ; 6 uses
  %i.c = icmp eq ptr %i.b, null                   ; 2 uses
  %or.cond31 = select i1 %i.a, i1 %i.c, i1 false
  br i1 %or.cond31, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %1, 2
  %i.e = and i8 %1, -2
  %i.f = icmp eq i8 %i.e, 2
  %i.g = icmp eq i8 %1, 8
  %i.h = or i1 %i.g, %i.f
  %or.cond67 = select i1 %i.h, i1 %i.c, i1 false
  br i1 %or.cond67, label %bb.an, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i8 %1, -1
  %or.cond = icmp ult i8 %i.i, 2
  br i1 %or.cond, label %bb.d, label %bb.ag

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br i1 %i.d, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !96   ; 3 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !97   ; 4 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp ugt i64 %i.o, 9223372036854775792
  br i1 %i.p, label %.invoke, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %.not392 = icmp eq ptr %i.k, %i.l
  br i1 %.not392, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #33
          to label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i unwind label %.loopexit.split-lp72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !600 ; 4 uses

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.r, ptr %2, align 8, !tbaa !97
  store ptr %i.r, ptr %i.s, align 8, !tbaa !96
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o ; 2 uses
  store ptr %i.t, ptr %i.q, align 8, !tbaa !238
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i, %bb.f
  %.promoted269 = phi ptr [ %i.t, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i ], [ null, %bb.f ]
  %.promoted273 = phi ptr [ %i.r, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i ], [ null, %bb.f ] ; 3 uses
  %.not393 = icmp eq ptr %i.k, %i.l
  br i1 %.not393, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit, label %.lr.ph.i138

.lr.ph.i138:                                      ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit
  %i.u = lshr exact i64 %i.o, 4
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i, %.lr.ph.i138
  %i.w = phi ptr [ %.promoted273, %.lr.ph.i138 ], [ %i.aq, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ] ; 8 uses
  %i.x = phi ptr [ %.promoted269, %.lr.ph.i138 ], [ %i.ar, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ] ; 7 uses
  %.0.i1931.i266 = phi ptr [ %.promoted273, %.lr.ph.i138 ], [ %.0.i1931.i267, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ] ; 5 uses
  %.0.i12.i139 = phi i64 [ %i.u, %.lr.ph.i138 ], [ %i.at, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ] ; 2 uses
  %.05.i11.i = phi ptr [ %i.l, %.lr.ph.i138 ], [ %i.as, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ] ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %.0.i1931.i266, %i.x
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i1931.i266, ptr noundef nonnull align 8 dereferenceable(16) %.05.i11.i, i64 16, i1 false), !tbaa.struct !106
  store i8 0, ptr %.05.i11.i, align 8, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 8
  store ptr null, ptr %i.y, align 8, !tbaa !45
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775792
  br i1 %i.ac, label %bb.j, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  store ptr %.0.i1931.i266, ptr %i.v, align 8
  store ptr %i.x, ptr %i.q, align 8
  br label %.invoke.sink.split

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.ad = ashr exact i64 %i.ab, 4                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 576460752303423487)
  %i.ah = select i1 %i.af, i64 576460752303423487, i64 %i.ag ; 3 uses
  %.not.i.i163 = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i163)
  %i.ai = shl nuw nsw i64 %i.ah, 4
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #33
          to label %.noexc167 unwind label %.loopexit.split-lp72.loopexit.split-lp.loopexit, !inline_history !601 ; 5 uses

.noexc167:                                        ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %.05.i11.i, i64 16, i1 false), !tbaa.struct !106
  store i8 0, ptr %.05.i11.i, align 8, !tbaa !93
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 8
  store ptr null, ptr %i.al, align 8, !tbaa !45
  %.not.i1728.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i1728.i, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i164

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i164: ; preds = %.noexc167, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i164
  %.0.i30.i = phi ptr [ %i.ao, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i164 ], [ %i.aj, %.noexc167 ] ; 2 uses
  %.09.i29.i = phi ptr [ %i.an, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i164 ], [ %i.w, %.noexc167 ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i30.i, ptr noundef nonnull align 8 dereferenceable(16) %.09.i29.i, i64 16, i1 false), !tbaa.struct !106
  store i8 0, ptr %.09.i29.i, align 8, !tbaa !93
  %i.am = getelementptr inbounds nuw i8, ptr %.09.i29.i, i64 8
  store ptr null, ptr %i.am, align 8, !tbaa !45
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i29.i, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i30.i, i64 16 ; 2 uses
  %.not.i17.i = icmp eq ptr %i.an, %i.x
  br i1 %.not.i17.i, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i164, !llvm.loop !4

_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i164, %.noexc167
  %.0.i.lcssa.i = phi ptr [ %i.aj, %.noexc167 ], [ %i.ao, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i164 ]
  %.not.i16.i = icmp eq ptr %i.w, null
  br i1 %.not.i16.i, label %.noexc140, label %bb.k

bb.k:                                             ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.w) #31, !inline_history !601
  br label %.noexc140

.noexc140:                                        ; preds = %bb.k, %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.ah
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i: ; preds = %.noexc140, %bb.h
  %i.aq = phi ptr [ %i.aj, %.noexc140 ], [ %i.w, %bb.h ] ; 2 uses
  %i.ar = phi ptr [ %i.ap, %.noexc140 ], [ %i.x, %bb.h ] ; 2 uses
  %.0.i.lcssa.i.pn = phi ptr [ %.0.i.lcssa.i, %.noexc140 ], [ %.0.i1931.i266, %bb.h ]
  %.0.i1931.i267 = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i.pn, i64 16 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 16
  %i.at = add nsw i64 %.0.i12.i139, -1
  %i.au = icmp sgt i64 %.0.i12.i139, 1
  br i1 %i.au, label %bb.g, label %.loopexit70.loopexit, !llvm.loop !602

bb.l:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !102 ; 4 uses
  %i.ax = icmp ugt i64 %i.aw, 576460752303423487
  br i1 %i.ax, label %.invoke, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %.not391 = icmp eq i64 %i.aw, 0
  br i1 %.not391, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit156, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i142

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i142: ; preds = %bb.m
  %i.az = shl nuw nsw i64 %i.aw, 4
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #33
          to label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i153 unwind label %.loopexit.split-lp72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !600 ; 4 uses

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i153: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i142
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ba, ptr %2, align 8, !tbaa !97
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !96
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.aw ; 2 uses
  store ptr %i.bc, ptr %i.ay, align 8, !tbaa !238
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit156

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit156: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i153, %bb.m
  %.promoted257 = phi ptr [ %i.bc, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i153 ], [ null, %bb.m ]
  %.promoted261 = phi ptr [ %i.ba, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i153 ], [ null, %bb.m ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !144 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.not89 = icmp eq ptr %i.be, %i.bf
  br i1 %.not89, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit156
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit
  %i.bh = phi ptr [ %.promoted261, %.lr.ph ], [ %i.cd, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit ] ; 8 uses
  %i.bi = phi ptr [ %.promoted257, %.lr.ph ], [ %i.ce, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit ] ; 7 uses
  %.0.i1931.i178254 = phi ptr [ %.promoted261, %.lr.ph ], [ %.0.i1931.i178255, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  %.sroa.061.090 = phi ptr [ %i.be, %.lr.ph ], [ %i.cf, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.061.090, i64 64 ; 4 uses
  %.not.i = icmp eq ptr %.0.i1931.i178254, %i.bi
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i1931.i178254, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !tbaa.struct !106
  store i8 0, ptr %i.bj, align 8, !tbaa !93
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.061.090, i64 72
  store ptr null, ptr %i.bk, align 8, !tbaa !45
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit

bb.p:                                             ; preds = %bb.n
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = ptrtoint ptr %i.bh to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775792
  br i1 %i.bo, label %bb.q, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i168

bb.q:                                             ; preds = %bb.p
  store ptr %.0.i1931.i178254, ptr %i.bg, align 8
  store ptr %i.bi, ptr %i.ay, align 8
  br label %.invoke.sink.split

.invoke.sink.split:                               ; preds = %bb.q, %bb.j
  %.lcssa423.sink = phi ptr [ %i.w, %bb.j ], [ %i.bh, %bb.q ]
  store ptr %.lcssa423.sink, ptr %2, align 8
  br label %.invoke

.invoke:                                          ; preds = %.invoke.sink.split, %bb.l, %bb.e
  %i.bp = phi ptr [ @.str.134, %bb.e ], [ @.str.134, %bb.l ], [ @.str.76, %.invoke.sink.split ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.bp) #32
          to label %.cont unwind label %.loopexit.split-lp72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !603

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i168: ; preds = %bb.p
  %i.bq = ashr exact i64 %i.bn, 4                 ; 3 uses
  %.sroa.speculated.i.i169 = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i169, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.br, i64 576460752303423487)
  %i.bu = select i1 %i.bs, i64 576460752303423487, i64 %i.bt ; 3 uses
  %.not.i.i170 = icmp ne i64 %i.bu, 0
  tail call void @llvm.assume(i1 %.not.i.i170)
  %i.bv = shl nuw nsw i64 %i.bu, 4
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #33
          to label %.noexc190 unwind label %.loopexit.split-lp72.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !603 ; 5 uses

.noexc190:                                        ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i168
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !tbaa.struct !106
  store i8 0, ptr %i.bj, align 8, !tbaa !93
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.061.090, i64 72
  store ptr null, ptr %i.by, align 8, !tbaa !45
  %.not.i1728.i171 = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i1728.i171, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i185, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i172

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i172: ; preds = %.noexc190, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i172
  %.0.i30.i173 = phi ptr [ %i.cb, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i172 ], [ %i.bw, %.noexc190 ] ; 2 uses
  %.09.i29.i174 = phi ptr [ %i.ca, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i172 ], [ %i.bh, %.noexc190 ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i30.i173, ptr noundef nonnull align 8 dereferenceable(16) %.09.i29.i174, i64 16, i1 false), !tbaa.struct !106
  store i8 0, ptr %.09.i29.i174, align 8, !tbaa !93
  %i.bz = getelementptr inbounds nuw i8, ptr %.09.i29.i174, i64 8
  store ptr null, ptr %i.bz, align 8, !tbaa !45
  %i.ca = getelementptr inbounds nuw i8, ptr %.09.i29.i174, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i30.i173, i64 16 ; 2 uses
  %.not.i17.i175 = icmp eq ptr %i.ca, %i.bi
  br i1 %.not.i17.i175, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i185, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i172, !llvm.loop !4

_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i185: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i172, %.noexc190
  %.0.i.lcssa.i177 = phi ptr [ %i.bw, %.noexc190 ], [ %i.cb, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i172 ]
  %.not.i16.i187 = icmp eq ptr %i.bh, null
  br i1 %.not.i16.i187, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit191, label %bb.r

bb.r:                                             ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i185
  tail call void @_ZdlPv(ptr noundef nonnull %i.bh) #31, !inline_history !603
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit191

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit191: ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i185, %bb.r
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.bu
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit191, %bb.o
  %i.cd = phi ptr [ %i.bw, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit191 ], [ %i.bh, %bb.o ] ; 2 uses
  %i.ce = phi ptr [ %i.cc, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit191 ], [ %i.bi, %bb.o ] ; 2 uses
  %.0.i.lcssa.i177.pn = phi ptr [ %.0.i.lcssa.i177, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit191 ], [ %.0.i1931.i178254, %bb.o ]
  %.0.i1931.i178255 = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i177.pn, i64 16 ; 3 uses
  %i.cf = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.061.090) #34 ; 2 uses
  %.not = icmp eq ptr %i.cf, %i.bf
  br i1 %.not, label %.loopexit70.loopexit249, label %bb.n

.loopexit.split-lp72.loopexit.split-lp.loopexit:  ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit244 = landingpad { ptr, i32 }
          cleanup
  store ptr %.0.i1931.i266, ptr %i.v, align 8
  store ptr %i.x, ptr %i.q, align 8
  store ptr %i.w, ptr %2, align 8
  br label %.loopexit.split-lp72

.loopexit.split-lp72.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i168
  %lpad.loopexit247 = landingpad { ptr, i32 }
          cleanup
  store ptr %.0.i1931.i178254, ptr %i.bg, align 8
  store ptr %i.bi, ptr %i.ay, align 8
  store ptr %i.bh, ptr %2, align 8
  br label %.loopexit.split-lp72

.loopexit.split-lp72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i142, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp72

.loopexit70.loopexit:                             ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i
  store ptr %.0.i1931.i267, ptr %i.v, align 8
  store ptr %i.ar, ptr %i.q, align 8
  br label %.loopexit70

.loopexit70.loopexit249:                          ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit
  store ptr %.0.i1931.i178255, ptr %i.bg, align 8
  store ptr %i.ce, ptr %i.ay, align 8
  br label %.loopexit70

.loopexit70:                                      ; preds = %.loopexit70.loopexit249, %.loopexit70.loopexit
  %.lcssa438.sink = phi ptr [ %i.cd, %.loopexit70.loopexit249 ], [ %i.aq, %.loopexit70.loopexit ] ; 3 uses
  %i.cg = phi ptr [ %.0.i1931.i178255, %.loopexit70.loopexit249 ], [ %.0.i1931.i267, %.loopexit70.loopexit ] ; 2 uses
  store ptr %.lcssa438.sink, ptr %2, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.ci = icmp eq ptr %.lcssa438.sink, %i.cg
  br i1 %i.ci, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit, label %.lr.ph100

.lr.ph100:                                        ; preds = %.loopexit70
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph100, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %i.cl = phi ptr [ %i.cg, %.lr.ph100 ], [ %i.fz, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i64 16, i1 false), !tbaa.struct !106
  store i8 0, ptr %i.cm, align 8, !tbaa !93
  %i.cn = getelementptr inbounds i8, ptr %i.cl, i64 -8
  store ptr null, ptr %i.cn, align 8, !tbaa !45
  %i.co = load ptr, ptr %i.ch, align 8, !tbaa !96 ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -16 ; 7 uses
  store ptr %i.cp, ptr %i.ch, align 8, !tbaa !96
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 -8
  %i.cr = load i8, ptr %i.cp, align 8, !tbaa !44
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, i8 noundef zeroext %i.cr)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit39 unwind label %bb.t, !inline_history !604

bb.t:                                             ; preds = %bb.s
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  call void @__clang_call_terminate(ptr %i.ct) #29, !inline_history !604
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit39: ; preds = %bb.s
  %i.cu = load i8, ptr %3, align 8, !tbaa !93
  switch i8 %i.cu, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE15_M_erase_at_endEPSD_.exit [
    i8 2, label %bb.u
    i8 1, label %bb.z
  ]

bb.u:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit39
  %i.cv = load ptr, ptr %i.cj, align 8, !tbaa !45 ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !182 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !182 ; 2 uses
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = ashr exact i64 %i.db, 4                 ; 2 uses
  %i.dd = icmp sgt i64 %i.dc, 0
  br i1 %i.dd, label %.lr.ph97.preheader, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit

.lr.ph97.preheader:                               ; preds = %bb.u
  %.promoted293 = load ptr, ptr %i.ck, align 8, !tbaa !238
  %.promoted297 = load ptr, ptr %2, align 8
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97.preheader, %.noexc47
  %i.de = phi ptr [ %i.dy, %.noexc47 ], [ %.promoted297, %.lr.ph97.preheader ] ; 8 uses
  %i.df = phi ptr [ %i.dz, %.noexc47 ], [ %.promoted293, %.lr.ph97.preheader ] ; 7 uses
  %.0.i1931.i202290 = phi ptr [ %.0.i1931.i202291, %.noexc47 ], [ %i.cp, %.lr.ph97.preheader ] ; 5 uses
  %.0.i.i4695 = phi i64 [ %i.eb, %.noexc47 ], [ %i.dc, %.lr.ph97.preheader ] ; 2 uses
  %.05.i.i94 = phi ptr [ %i.ea, %.noexc47 ], [ %i.cw, %.lr.ph97.preheader ] ; 7 uses
  %.not.i50 = icmp eq ptr %.0.i1931.i202290, %i.df
  br i1 %.not.i50, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i1931.i202290, ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i94, i64 16, i1 false), !tbaa.struct !106
  store i8 0, ptr %.05.i.i94, align 8, !tbaa !93
  %i.dg = getelementptr inbounds nuw i8, ptr %.05.i.i94, i64 8
  store ptr null, ptr %i.dg, align 8, !tbaa !45
  br label %.noexc47

bb.w:                                             ; preds = %.lr.ph97
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.de to i64
  %i.dj = sub i64 %i.dh, %i.di                    ; 3 uses
  %i.dk = icmp eq i64 %i.dj, 9223372036854775792
  br i1 %i.dk, label %.invoke439, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i192

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i192: ; preds = %bb.w
  %i.dl = ashr exact i64 %i.dj, 4                 ; 3 uses
  %.sroa.speculated.i.i193 = call i64 @llvm.umax.i64(i64 %i.dl, i64 1)
  %i.dm = add nsw i64 %.sroa.speculated.i.i193, %i.dl ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.dl
  %i.do = call i64 @llvm.umin.i64(i64 %i.dm, i64 576460752303423487)
  %i.dp = select i1 %i.dn, i64 576460752303423487, i64 %i.do ; 3 uses
  %.not.i.i194 = icmp ne i64 %i.dp, 0
  call void @llvm.assume(i1 %.not.i.i194)
  %i.dq = shl nuw nsw i64 %i.dp, 4
  %i.dr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #33
          to label %.noexc214 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !605 ; 5 uses

.noexc214:                                        ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i192
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i94, i64 16, i1 false), !tbaa.struct !106
  store i8 0, ptr %.05.i.i94, align 8, !tbaa !93
  %i.dt = getelementptr inbounds nuw i8, ptr %.05.i.i94, i64 8
  store ptr null, ptr %i.dt, align 8, !tbaa !45
  %.not.i1728.i195 = icmp eq ptr %i.de, %i.df
  br i1 %.not.i1728.i195, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i209, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i196

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i196: ; preds = %.noexc214, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i196
  %.0.i30.i197 = phi ptr [ %i.dw, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i196 ], [ %i.dr, %.noexc214 ] ; 2 uses
  %.09.i29.i198 = phi ptr [ %i.dv, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i196 ], [ %i.de, %.noexc214 ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i30.i197, ptr noundef nonnull align 8 dereferenceable(16) %.09.i29.i198, i64 16, i1 false), !tbaa.struct !106
  store i8 0, ptr %.09.i29.i198, align 8, !tbaa !93
  %i.du = getelementptr inbounds nuw i8, ptr %.09.i29.i198, i64 8
  store ptr null, ptr %i.du, align 8, !tbaa !45
  %i.dv = getelementptr inbounds nuw i8, ptr %.09.i29.i198, i64 16 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i30.i197, i64 16 ; 2 uses
  %.not.i17.i199 = icmp eq ptr %i.dv, %i.df
  br i1 %.not.i17.i199, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i209, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i196, !llvm.loop !4

_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i209: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i196, %.noexc214
  %.0.i.lcssa.i201 = phi ptr [ %i.dr, %.noexc214 ], [ %i.dw, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i196 ]
  %.not.i16.i211 = icmp eq ptr %i.de, null
  br i1 %.not.i16.i211, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit215, label %bb.x

bb.x:                                             ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i209
  call void @_ZdlPv(ptr noundef nonnull %i.de) #31, !inline_history !605
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit215

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit215: ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i209, %bb.x
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.dp
  br label %.noexc47

.noexc47:                                         ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit215, %bb.v
  %i.dy = phi ptr [ %i.dr, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit215 ], [ %i.de, %bb.v ] ; 2 uses
  %i.dz = phi ptr [ %i.dx, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit215 ], [ %i.df, %bb.v ] ; 2 uses
  %.0.i.lcssa.i201.pn = phi ptr [ %.0.i.lcssa.i201, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit215 ], [ %.0.i1931.i202290, %bb.v ]
  %.0.i1931.i202291 = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i201.pn, i64 16 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.05.i.i94, i64 16
  %i.eb = add nsw i64 %.0.i.i4695, -1
  %i.ec = icmp sgt i64 %.0.i.i4695, 1
  br i1 %i.ec, label %.lr.ph97, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit.loopexit, !llvm.loop !602

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit.loopexit: ; preds = %.noexc47
  store ptr %.0.i1931.i202291, ptr %i.ch, align 8
  store ptr %i.dz, ptr %i.ck, align 8
  store ptr %i.dy, ptr %2, align 8
  %.pre110 = load ptr, ptr %i.cj, align 8, !tbaa !45 ; 3 uses
  %.pre111 = load ptr, ptr %.pre110, align 8, !tbaa !97
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre110, i64 8
  %.pre112 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !96
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit.loopexit, %bb.u
  %i.ed = phi ptr [ %.0.i1931.i202291, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit.loopexit ], [ %i.cp, %bb.u ] ; 2 uses
  %i.ee = phi ptr [ %.pre112, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit.loopexit ], [ %i.cy, %bb.u ] ; 2 uses
  %i.ef = phi ptr [ %.pre111, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit.loopexit ], [ %i.cw, %bb.u ] ; 3 uses
  %i.eg = phi ptr [ %.pre110, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit.loopexit ], [ %i.cv, %bb.u ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %.not.i41 = icmp eq ptr %i.ee, %i.ef
  br i1 %.not.i41, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE15_M_erase_at_endEPSD_.exit, label %.preheader69

.preheader69:                                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i
  %.0.i98 = phi ptr [ %i.em, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i ], [ %i.ef, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit ] ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i98, i64 8
  %i.ej = load i8, ptr %.0.i98, align 8, !tbaa !44
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, i8 noundef zeroext %i.ej)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i unwind label %bb.y, !inline_history !606

bb.y:                                             ; preds = %.preheader69
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #29, !inline_history !606
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i: ; preds = %.preheader69
  %i.em = getelementptr inbounds nuw i8, ptr %.0.i98, i64 16 ; 2 uses
  %.not.i48 = icmp eq ptr %i.em, %i.ee
  br i1 %.not.i48, label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_.exit.i, label %.preheader69, !llvm.loop !10

_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_.exit.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i
  store ptr %i.ef, ptr %i.eh, align 8, !tbaa !96
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE15_M_erase_at_endEPSD_.exit

bb.z:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit39
  %i.en = load ptr, ptr %i.cj, align 8, !tbaa !45 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !144 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %.not6891 = icmp eq ptr %i.ep, %i.eq
  br i1 %.not6891, label %._crit_edge, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %bb.z
  %.promoted281 = load ptr, ptr %i.ck, align 8, !tbaa !238
  %.promoted285 = load ptr, ptr %2, align 8
  br label %.lr.ph93

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit38
  store ptr %.0.i1931.i226279, ptr %i.ch, align 8
  store ptr %i.fx, ptr %i.ck, align 8
  store ptr %i.fw, ptr %2, align 8
  %.pre = load ptr, ptr %i.cj, align 8, !tbaa !45
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.z
  %i.er = phi ptr [ %.0.i1931.i226279, %._crit_edge.loopexit ], [ %i.cp, %bb.z ]
  %i.es = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.en, %bb.z ] ; 6 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !239
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef nonnull align 8 dereferenceable(48) %i.es, ptr noundef %i.eu)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE5clearEv.exit unwind label %bb.aa, !inline_history !607

bb.aa:                                            ; preds = %._crit_edge
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  %i.ew = extractvalue { ptr, i32 } %i.ev, 0
  call void @__clang_call_terminate(ptr %i.ew) #29, !inline_history !607
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE5clearEv.exit: ; preds = %._crit_edge
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  store ptr null, ptr %i.et, align 8, !tbaa !239
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !144
  %i.ez = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  store ptr %i.ex, ptr %i.ez, align 8, !tbaa !145
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  store i64 0, ptr %i.fa, align 8, !tbaa !102
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE15_M_erase_at_endEPSD_.exit

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit38
  %i.fb = phi ptr [ %i.fw, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit38 ], [ %.promoted285, %.lr.ph93.preheader ] ; 8 uses
  %i.fc = phi ptr [ %i.fx, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit38 ], [ %.promoted281, %.lr.ph93.preheader ] ; 7 uses
  %.0.i1931.i226278 = phi ptr [ %.0.i1931.i226279, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit38 ], [ %i.cp, %.lr.ph93.preheader ] ; 5 uses
  %.sroa.057.092 = phi ptr [ %i.fy, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit38 ], [ %i.ep, %.lr.ph93.preheader ] ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.057.092, i64 64 ; 4 uses
  %.not.i42 = icmp eq ptr %.0.i1931.i226278, %i.fc
  br i1 %.not.i42, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i1931.i226278, ptr noundef nonnull align 8 dereferenceable(16) %i.fd, i64 16, i1 false), !tbaa.struct !106
  store i8 0, ptr %i.fd, align 8, !tbaa !93
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.057.092, i64 72
  store ptr null, ptr %i.fe, align 8, !tbaa !45
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit38

bb.ac:                                            ; preds = %.lr.ph93
  %i.ff = ptrtoint ptr %i.fc to i64
  %i.fg = ptrtoint ptr %i.fb to i64
  %i.fh = sub i64 %i.ff, %i.fg                    ; 3 uses
  %i.fi = icmp eq i64 %i.fh, 9223372036854775792
  br i1 %i.fi, label %.invoke439, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i216

.invoke439:                                       ; preds = %bb.ac, %bb.w
  %.0.i1931.i202290.lcssa.sink = phi ptr [ %.0.i1931.i202290, %bb.w ], [ %.0.i1931.i226278, %bb.ac ]
  %.lcssa408.sink = phi ptr [ %i.df, %bb.w ], [ %i.fc, %bb.ac ]
  %.lcssa411.sink = phi ptr [ %i.de, %bb.w ], [ %i.fb, %bb.ac ]
  store ptr %.0.i1931.i202290.lcssa.sink, ptr %i.ch, align 8
  store ptr %.lcssa408.sink, ptr %i.ck, align 8
  store ptr %.lcssa411.sink, ptr %2, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.76) #32
          to label %.cont440 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !603

.cont440:                                         ; preds = %.invoke439
  unreachable

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i216: ; preds = %bb.ac
  %i.fj = ashr exact i64 %i.fh, 4                 ; 3 uses
  %.sroa.speculated.i.i217 = call i64 @llvm.umax.i64(i64 %i.fj, i64 1)
  %i.fk = add nsw i64 %.sroa.speculated.i.i217, %i.fj ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.fj
  %i.fm = call i64 @llvm.umin.i64(i64 %i.fk, i64 576460752303423487)
  %i.fn = select i1 %i.fl, i64 576460752303423487, i64 %i.fm ; 3 uses
  %.not.i.i218 = icmp ne i64 %i.fn, 0
  call void @llvm.assume(i1 %.not.i.i218)
  %i.fo = shl nuw nsw i64 %i.fn, 4
  %i.fp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fo) #33
          to label %.noexc238 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !603 ; 5 uses

.noexc238:                                        ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i216
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, ptr noundef nonnull align 8 dereferenceable(16) %i.fd, i64 16, i1 false), !tbaa.struct !106
  store i8 0, ptr %i.fd, align 8, !tbaa !93
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.057.092, i64 72
  store ptr null, ptr %i.fr, align 8, !tbaa !45
  %.not.i1728.i219 = icmp eq ptr %i.fb, %i.fc
  br i1 %.not.i1728.i219, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i233, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i220

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i220: ; preds = %.noexc238, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i220
  %.0.i30.i221 = phi ptr [ %i.fu, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i220 ], [ %i.fp, %.noexc238 ] ; 2 uses
  %.09.i29.i222 = phi ptr [ %i.ft, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i220 ], [ %i.fb, %.noexc238 ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i30.i221, ptr noundef nonnull align 8 dereferenceable(16) %.09.i29.i222, i64 16, i1 false), !tbaa.struct !106
  store i8 0, ptr %.09.i29.i222, align 8, !tbaa !93
  %i.fs = getelementptr inbounds nuw i8, ptr %.09.i29.i222, i64 8
  store ptr null, ptr %i.fs, align 8, !tbaa !45
  %i.ft = getelementptr inbounds nuw i8, ptr %.09.i29.i222, i64 16 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0.i30.i221, i64 16 ; 2 uses
  %.not.i17.i223 = icmp eq ptr %i.ft, %i.fc
  br i1 %.not.i17.i223, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i233, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i220, !llvm.loop !4

_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i233: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i220, %.noexc238
  %.0.i.lcssa.i225 = phi ptr [ %i.fp, %.noexc238 ], [ %i.fu, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i220 ]
  %.not.i16.i235 = icmp eq ptr %i.fb, null
  br i1 %.not.i16.i235, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit239, label %bb.ad

bb.ad:                                            ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i233
  call void @_ZdlPv(ptr noundef nonnull %i.fb) #31, !inline_history !603
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit239

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit239: ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i233, %bb.ad
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.fp, i64 %i.fn
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit38

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit38: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit239, %bb.ab
  %i.fw = phi ptr [ %i.fp, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit239 ], [ %i.fb, %bb.ab ] ; 2 uses
  %i.fx = phi ptr [ %i.fv, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit239 ], [ %i.fc, %bb.ab ] ; 2 uses
  %.0.i.lcssa.i225.pn = phi ptr [ %.0.i.lcssa.i225, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit239 ], [ %.0.i1931.i226278, %bb.ab ]
  %.0.i1931.i226279 = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i225.pn, i64 16 ; 3 uses
  %i.fy = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.057.092) #34 ; 2 uses
  %.not68 = icmp eq ptr %i.fy, %i.eq
  br i1 %.not68, label %._crit_edge.loopexit, label %.lr.ph93

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i192
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %.0.i1931.i202290, ptr %i.ch, align 8
  store ptr %i.df, ptr %i.ck, align 8
  store ptr %i.de, ptr %2, align 8
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i216
  %lpad.loopexit241 = landingpad { ptr, i32 }
          cleanup
  store ptr %.0.i1931.i226278, ptr %i.ch, align 8
  store ptr %i.fc, ptr %i.ck, align 8
  store ptr %i.fb, ptr %2, align 8
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke439
  %lpad.loopexit.split-lp242 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit241, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp242, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.loopexit.split-lp72

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE15_M_erase_at_endEPSD_.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit39, %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_.exit.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE5clearEv.exit
  %i.fz = phi ptr [ %i.cp, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit39 ], [ %i.ed, %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_.exit.i ], [ %i.ed, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit ], [ %i.er, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE5clearEv.exit ] ; 2 uses
  %i.ga = load i8, ptr %3, align 8, !tbaa !44
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, i8 noundef zeroext %i.ga)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.ae, !inline_history !52

bb.ae:                                            ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE15_M_erase_at_endEPSD_.exit
  %i.gb = landingpad { ptr, i32 }
          catch ptr null
  %i.gc = extractvalue { ptr, i32 } %i.gb, 0
  call void @__clang_call_terminate(ptr %i.gc) #29, !inline_history !52
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE15_M_erase_at_endEPSD_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.gd = load ptr, ptr %2, align 8, !tbaa !182   ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.fz
  br i1 %i.ge, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit, label %bb.s, !llvm.loop !608

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit156, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit, %.loopexit70
  %i.gf = phi ptr [ %.lcssa438.sink, %.loopexit70 ], [ %.promoted273, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit ], [ %.promoted261, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit156 ], [ %i.gd, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.gf, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.gf) #31
  br label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EED2Ev.exit

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EED2Ev.exit: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.ag

.loopexit.split-lp72:                             ; preds = %.loopexit.split-lp72.loopexit.split-lp.loopexit, %.loopexit.split-lp72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp72.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit244, %.loopexit.split-lp72.loopexit.split-lp.loopexit ], [ %lpad.loopexit247, %.loopexit.split-lp72.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn.pn

bb.ag:                                            ; preds = %bb.c, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EED2Ev.exit
  switch i8 %1, label %bb.an [
    i8 1, label %bb.ah
    i8 2, label %bb.aj
    i8 3, label %bb.al
    i8 8, label %bb.am
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.gg = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !239
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef nonnull align 8 dereferenceable(48) %i.gg, ptr noundef %i.gi)
          to label %.sink.split.sink.split unwind label %bb.ai, !inline_history !609

bb.ai:                                            ; preds = %bb.ah
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  call void @__clang_call_terminate(ptr %i.gk) #29, !inline_history !609
  unreachable

bb.aj:                                            ; preds = %bb.ag
  %i.gl = load ptr, ptr %0, align 8, !tbaa !45    ; 3 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !97 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !96 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.gm, %i.go
  br i1 %.not.i1.i, label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.i, label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %bb.aj, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i158
  %.0.i2.i = phi ptr [ %i.gt, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i158 ], [ %i.gm, %bb.aj ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 8
  %i.gq = load i8, ptr %.0.i2.i, align 8, !tbaa !44
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.gp, i8 noundef zeroext %i.gq)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i158 unwind label %bb.ak, !inline_history !610

bb.ak:                                            ; preds = %.lr.ph.i157
  %i.gr = landingpad { ptr, i32 }
          catch ptr null
  %i.gs = extractvalue { ptr, i32 } %i.gr, 0
  call void @__clang_call_terminate(ptr %i.gs) #29, !inline_history !610
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i158: ; preds = %.lr.ph.i157
  %i.gt = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 16 ; 2 uses
  %.not.i.i159 = icmp eq ptr %i.gt, %i.go
  br i1 %.not.i.i159, label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.loopexit.i, label %.lr.ph.i157, !llvm.loop !10

_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.loopexit.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i158
  %.pre.i160 = load ptr, ptr %i.gl, align 8, !tbaa !97
  br label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.i

_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.loopexit.i, %bb.aj
  %i.gu = phi ptr [ %.pre.i160, %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.loopexit.i ], [ %i.gm, %bb.aj ] ; 2 uses
  %.not.i.i.i161 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i161, label %.sink.split.sink.split, label %.sink.split.sink.split.sink.split

bb.al:                                            ; preds = %bb.ag
  %i.gv = load ptr, ptr %0, align 8, !tbaa !45    ; 3 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !70 ; 2 uses
end_hunk_1
