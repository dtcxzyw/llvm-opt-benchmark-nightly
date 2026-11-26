Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexFlatCodes?download=true
inline.NumInlined: 11869
inline.NumDeleted: 3329
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK5faiss14IndexFlatCodes7search1EPKfRNS_22ResultHandlerUnorderedIflEEPNS_16SearchParametersE:bb.a
bb.ha:                                            ; preds = %.body.i.i.i.i66.i.i.i179
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8.i.i.i.i68.i.i.i181

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8.i.i.i.i68.i.i.i181: ; preds = %bb.ha, %.body.i.i.i.i66.i.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %.body240

_ZZN5faiss19with_VectorDistanceIZNS_12_GLOBAL__N_130Run_search_with_decompress_res1fINS_29SingleQueryBlockResultHandlerINS_4CMaxIflEELb0EEEEEvRT_PKNS_14IndexFlatCodesEPKfEUlS8_E_EEDamNS_10MetricTypeEfOS8_ENKUlTnSG_vE_clILSG_24EEEDav.exit.i.i.i: ; preds = %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZN5faiss12_GLOBAL__N_130Run_search_with_decompress_res1fINS_29SingleQueryBlockResultHandlerINS_4CMaxIflEELb0EEEEEvRT_PKNS_14IndexFlatCodesEPKf.exit

bb.hb:                                            ; preds = %bb.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %i.mf, ptr %7, align 8
  %i.ol = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %i.mg, ptr %i.ol, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.on = load i64, ptr %i.om, align 8, !tbaa !88
  store i64 %i.on, ptr %i.b, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store i8 0, ptr %6, align 1, !tbaa !121
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @3, i32 7, ptr nonnull @_ZN5faiss12_GLOBAL__N_126Run_search_with_decompressINS_29SingleQueryBlockResultHandlerINS_4CMaxIflEELb0EEEE1fINS_14VectorDistanceILNS_10MetricTypeE25ELNS_9SIMDLevelE0EEEEEvRT_PKNS_14IndexFlatCodesEPKfRS5_.omp_outlined, ptr nonnull %0, ptr nonnull align 8 dereferenceable(12) %7, ptr nonnull align 8 dereferenceable(48) %155, ptr nonnull %5, ptr nonnull %6, ptr nonnull %i.a, ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.oo = load ptr, ptr %5, align 8, !tbaa !119   ; 2 uses
  %.not.i.i.i.i.i69.i.i.i168 = icmp eq ptr %i.oo, null
  br i1 %.not.i.i.i.i.i69.i.i.i168, label %_ZZN5faiss19with_VectorDistanceIZNS_12_GLOBAL__N_130Run_search_with_decompress_res1fINS_29SingleQueryBlockResultHandlerINS_4CMaxIflEELb0EEEEEvRT_PKNS_14IndexFlatCodesEPKfEUlS8_E_EEDamNS_10MetricTypeEfOS8_ENKUlTnSG_vE_clILSG_25EEEDav.exit.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i70.i.i.i169

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i70.i.i.i169: ; preds = %bb.hb
  store ptr %i.oo, ptr %4, align 8, !tbaa !119
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %4) #32
          to label %bb.hc unwind label %bb.hd

bb.hc:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i70.i.i.i169
  unreachable

bb.hd:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i70.i.i.i169
  %i.op = landingpad { ptr, i32 }
          cleanup
  %i.oq = load ptr, ptr %4, align 8, !tbaa !119
  %.not.i3.i.i.i.i.i71.i.i.i170 = icmp eq ptr %i.oq, null
  br i1 %.not.i3.i.i.i.i.i71.i.i.i170, label %.body.i.i.i.i72.i.i.i171, label %bb.he

bb.he:                                            ; preds = %bb.hd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  br label %.body.i.i.i.i72.i.i.i171

.body.i.i.i.i72.i.i.i171:                         ; preds = %bb.he, %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.or = load ptr, ptr %5, align 8, !tbaa !119
  %.not.i7.i.i.i.i73.i.i.i172 = icmp eq ptr %i.or, null
  br i1 %.not.i7.i.i.i.i73.i.i.i172, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8.i.i.i.i74.i.i.i173, label %bb.hf

bb.hf:                                            ; preds = %.body.i.i.i.i72.i.i.i171
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8.i.i.i.i74.i.i.i173

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8.i.i.i.i74.i.i.i173: ; preds = %bb.hf, %.body.i.i.i.i72.i.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.body240

_ZZN5faiss19with_VectorDistanceIZNS_12_GLOBAL__N_130Run_search_with_decompress_res1fINS_29SingleQueryBlockResultHandlerINS_4CMaxIflEELb0EEEEEvRT_PKNS_14IndexFlatCodesEPKfEUlS8_E_EEDamNS_10MetricTypeEfOS8_ENKUlTnSG_vE_clILSG_25EEEDav.exit.i.i.i: ; preds = %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN5faiss12_GLOBAL__N_130Run_search_with_decompress_res1fINS_29SingleQueryBlockResultHandlerINS_4CMaxIflEELb0EEEEEvRT_PKNS_14IndexFlatCodesEPKf.exit

bb.hg:                                            ; preds = %bb.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #24
  %i.os = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 4 uses
  store ptr %i.os, ptr %40, align 8, !tbaa !86
  %i.ot = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  store i64 0, ptr %i.ot, align 8, !tbaa !87
  store i8 0, ptr %i.os, align 8, !tbaa !68
  %i.ou = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.17, i32 noundef %i.ir) #24 ; 2 uses
  %i.ov = icmp sgt i32 %i.ou, 0
  br i1 %i.ov, label %bb.hh, label %bb.hk

bb.hh:                                            ; preds = %bb.hg
  %i.ow = zext nneg i32 %i.ou to i64              ; 2 uses
  %i.ox = add nuw nsw i64 %i.ow, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %40, i64 noundef %i.ox)
          to label %bb.hi unwind label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.oy = load ptr, ptr %40, align 8, !tbaa !78
  %i.oz = load i64, ptr %i.ot, align 8, !tbaa !87
  %i.pa = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.oy, i64 noundef %i.oz, ptr noundef nonnull @.str.17, i32 noundef %i.ir) #24 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %40, i64 noundef %i.ow)
          to label %bb.hk unwind label %bb.hj

bb.hj:                                            ; preds = %bb.hl, %bb.hi, %bb.hh
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %bb.hn

bb.hk:                                            ; preds = %bb.hi, %bb.hg
  %i.pc = call ptr @__cxa_allocate_exception(i64 40) #24 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.pc, ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZN5faiss16with_metric_typeIRZNS_19with_VectorDistanceIZNKS_14IndexFlatCodes29get_FlatCodesDistanceComputerEvE3$_0EEDamNS_10MetricTypeEfOT_EUlTnS4_vE_EEDaS4_S6_", ptr noundef nonnull @.str.18, i32 noundef 98)
          to label %bb.hl unwind label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  invoke void @__cxa_throw(ptr nonnull %i.pc, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #32
          to label %bb.ho unwind label %bb.hj

bb.hm:                                            ; preds = %bb.hk
  %i.pd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.pc) #24
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hj
  %.pn.i.i.i236 = phi { ptr, i32 } [ %i.pb, %bb.hj ], [ %i.pd, %bb.hm ]
  %i.pe = load ptr, ptr %40, align 8, !tbaa !78   ; 2 uses
  %i.pf = icmp eq ptr %i.pe, %i.os
  br i1 %i.pf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i237: ; preds = %bb.hn
  %i.pg = load i64, ptr %i.os, align 8, !tbaa !68
  %i.ph = add i64 %i.pg, 1
  call void @_ZdlPvm(ptr noundef %i.pe, i64 noundef %i.ph) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i238: ; preds = %bb.hn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i237
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  br label %.body240

bb.ho:                                            ; preds = %bb.hl
  unreachable

_ZN5faiss12_GLOBAL__N_130Run_search_with_decompress_res1fINS_29SingleQueryBlockResultHandlerINS_4CMaxIflEELb0EEEEEvRT_PKNS_14IndexFlatCodesEPKf.exit: ; preds = %_ZZN5faiss19with_VectorDistanceIZNS_12_GLOBAL__N_130Run_search_with_decompress_res1fINS_29SingleQueryBlockResultHandlerINS_4CMaxIflEELb0EEEEEvRT_PKNS_14IndexFlatCodesEPKfEUlS8_E_EEDamNS_10MetricTypeEfOS8_ENKUlTnSG_vE_clILSG_25EEEDav.exit.i.i.i, %_ZZN5faiss19with_VectorDistanceIZNS_12_GLOBAL__N_130Run_search_with_decompress_res1fINS_29SingleQueryBlockResultHandlerINS_4CMaxIflEELb0EEEEEvRT_PKNS_14IndexFlatCodesEPKfEUlS8_E_EEDamNS_10MetricTypeEfOS8_ENKUlTnSG_vE_clILSG_24EEEDav.exit.i.i.i, %_ZZN5faiss19with_VectorDistanceIZNS_12_GLOBAL__N_130Run_search_with_decompress_res1fINS_29SingleQueryBlockResultHandlerINS_4CMaxIflEELb0EEEEEvRT_PKNS_14IndexFlatCodesEPKfEUlS8_E_EEDamNS_10MetricTypeEfOS8_ENKUlTnSG_vE_clILSG_22EEEDav.exit.i.i.i, %_ZZN5faiss19with_VectorDistanceIZNS_12_GLOBAL__N_130Run_search_with_decompress_res1fINS_29SingleQueryBlockResultHandlerINS_4CMaxIflEELb0EEEEEvRT_PKNS_14IndexFlatCodesEPKfEUlS8_E_EEDamNS_10MetricTypeEfOS8_ENKUlTnSG_vE_clILSG_21EEEDav.exit.i.i.i, %_ZZN5faiss19with_VectorDistanceIZNS_12_GLOBAL__N_130Run_search_with_decompress_res1fINS_29SingleQueryBlockResultHandlerINS_4CMaxIflEELb0EEEEEvRT_PKNS_14IndexFlatCodesEPKfEUlS8_E_EEDamNS_10MetricTypeEfOS8_ENKUlTnSG_vE_clILSG_20EEEDav.exit.i.i.i, %_ZZN5faiss19with_VectorDistanceIZNS_12_GLOBAL__N_130Run_search_with_decompress_res1fINS_29SingleQueryBlockResultHandlerINS_4CMaxIflEELb0EEEEEvRT_PKNS_14IndexFlatCodesEPKfEUlS8_E_EEDamNS_10MetricTypeEfOS8_ENKUlTnSG_vE_clILSG_4EEEDav.exit.i.i.i, %_ZZN5faiss19with_VectorDistanceIZNS_12_GLOBAL__N_130Run_search_with_decompress_res1fINS_29SingleQueryBlockResultHandlerINS_4CMaxIflEELb0EEEEEvRT_PKNS_14IndexFlatCodesEPKfEUlS8_E_EEDamNS_10MetricTypeEfOS8_ENKUlTnSG_vE_clILSG_3EEEDav.exit.i.i.i, %_ZZN5faiss19with_VectorDistanceIZNS_12_GLOBAL__N_130Run_search_with_decompress_res1fINS_29SingleQueryBlockResultHandlerINS_4CMaxIflEELb0EEEEEvRT_PKNS_14IndexFlatCodesEPKfEUlS8_E_EEDamNS_10MetricTypeEfOS8_ENKUlTnSG_vE_clILSG_2EEEDav.exit.i.i.i, %_ZZN5faiss19with_VectorDistanceIZNS_12_GLOBAL__N_130Run_search_with_decompress_res1fINS_29SingleQueryBlockResultHandlerINS_4CMaxIflEELb0EEEEEvRT_PKNS_14IndexFlatCodesEPKfEUlS8_E_EEDamNS_10MetricTypeEfOS8_ENKUlTnSG_vE_clILSG_1EEEDav.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #24
  br label %bb.hp

.body240:                                         ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8.i.i.i.i.i.i.i26.i.i.i229, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8.i.i.i.i.i.i.i32.i.i.i223, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8.i.i.i.i.i.i.i38.i.i.i217, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8.i.i.i.i.i.i.i211, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8.i.i.i.i44.i.i.i205, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8.i.i.i.i50.i.i.i199, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8.i.i.i.i56.i.i.i193, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8.i.i.i.i68.i.i.i181, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8.i.i.i.i74.i.i.i173, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i238
  %eh.lpad-body241 = phi { ptr, i32 } [ %i.op, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8.i.i.i.i74.i.i.i173 ], [ %i.oi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8.i.i.i.i68.i.i.i181 ], [ %i.ml, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8.i.i.i.i.i.i.i26.i.i.i229 ], [ %i.ms, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8.i.i.i.i.i.i.i32.i.i.i223 ], [ %i.mz, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8.i.i.i.i.i.i.i38.i.i.i217 ], [ %i.ng, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8.i.i.i.i.i.i.i211 ], [ %i.nn, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8.i.i.i.i44.i.i.i205 ], [ %i.nu, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8.i.i.i.i50.i.i.i199 ], [ %i.ob, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8.i.i.i.i56.i.i.i193 ], [ %.pn.i.i.i236, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i238 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #24
  br label %bb.hq

bb.hp:                                            ; preds = %_ZN5faiss12_GLOBAL__N_130Run_search_with_decompress_res1fINS_29SingleQueryBlockResultHandlerINS_4CMinIflEELb0EEEEEvRT_PKNS_14IndexFlatCodesEPKf.exit, %_ZN5faiss12_GLOBAL__N_130Run_search_with_decompress_res1fINS_29SingleQueryBlockResultHandlerINS_4CMaxIflEELb0EEEEEvRT_PKNS_14IndexFlatCodesEPKf.exit, %_ZN5faiss12_GLOBAL__N_130Run_search_with_decompress_res1fINS_29SingleQueryBlockResultHandlerINS_4CMinIflEELb1EEEEEvRT_PKNS_14IndexFlatCodesEPKf.exit, %_ZN5faiss12_GLOBAL__N_130Run_search_with_decompress_res1fINS_29SingleQueryBlockResultHandlerINS_4CMaxIflEELb1EEEEEvRT_PKNS_14IndexFlatCodesEPKf.exit
  ret void

bb.hq:                                            ; preds = %.body240, %.body166, %.body92, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %eh.lpad-body93, %.body92 ], [ %eh.lpad-body167, %.body166 ], [ %eh.lpad-body241, %.body240 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss14IndexFlatCodes12range_searchElPKffPNS_17RangeSearchResultEPKNS_16SearchParametersE(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 %1, ptr noundef %2, float noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(address_is_null) %5) unnamed_addr #2 align 2 {
bb.a:
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !107
  tail call fastcc void @_ZN5faiss28dispatch_range_ResultHandlerINS_12_GLOBAL__N_130Run_search_with_decompress_resEJPKNS_14IndexFlatCodesEPKfEEENT_1TEPNS_17RangeSearchResultEfNS_10MetricTypeEPKNS_10IDSelectorERS8_DpT0_(ptr noundef %4, float noundef %3, i32 noundef %i.e, ptr noundef %i.c, ptr noundef %0, ptr noundef %2)
  ret void
}

declare void @_ZNK5faiss5Index6assignElPKfPll(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef, ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN5faiss14IndexFlatCodes5resetEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !tbaa !98, !range !84, !noundef !85
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !100
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss16MaybeOwnedVectorIhE5clearEv, ptr noundef nonnull @.str.7, i32 noundef 254) #33 ; 0 uses
  tail call void @abort() #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !101
  %.not.i.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i.i, label %_ZN5faiss16MaybeOwnedVectorIhE5clearEv.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.c
  store ptr %i.g, ptr %i.h, align 8, !tbaa !101
  br label %_ZN5faiss16MaybeOwnedVectorIhE5clearEv.exit

_ZN5faiss16MaybeOwnedVectorIhE5clearEv.exit:      ; preds = %bb.c, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.g, ptr %i.j, align 8, !tbaa !102
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.k, align 8, !tbaa !103
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.l, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5faiss14IndexFlatCodes10remove_idsERKNS_10IDSelectorE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.013.lcssa = phi i64 [ 0, %bb.a ], [ %.1, %bb.f ] ; 4 uses
  %.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.r, %bb.f ] ; 2 uses
  %.not = icmp eq i64 %.lcssa, %.013.lcssa
  br i1 %.not, label %bb.m, label %bb.g

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.017 = phi i64 [ 0, %.lr.ph ], [ %i.q, %bb.f ] ; 4 uses
  %.01316 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.f ] ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !60
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  br i1 %i.h, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp sgt i64 %.017, %.01316
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.d, align 8, !tbaa !97   ; 3 uses
  %i.k = mul i64 %i.j, %.01316
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !102  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  %i.n = mul i64 %i.j, %.017
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %i.o, i64 %i.j, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = add nsw i64 %.01316, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.1 = phi i64 [ %.01316, %bb.b ], [ %i.p, %bb.e ] ; 2 uses
  %i.q = add nuw nsw i64 %.017, 1                 ; 2 uses
  %i.r = load i64, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.s = icmp slt i64 %i.q, %i.r
  br i1 %i.s, label %bb.b, label %._crit_edge, !llvm.loop !436

bb.g:                                             ; preds = %._crit_edge
  store i64 %.013.lcssa, ptr %i.a, align 8, !tbaa !88
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !97
  %i.w = mul i64 %i.v, %.013.lcssa                ; 4 uses
  %i.x = load i8, ptr %i.t, align 8, !tbaa !98, !range !84, !noundef !85
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !100
  %i.aa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.z, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss16MaybeOwnedVectorIhE6resizeEm, ptr noundef nonnull @.str.7, i32 noundef 264) #33 ; 0 uses
  tail call void @abort() #34
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !101 ; 4 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !73 ; 5 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64               ; 4 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 3 uses
  %i.ai = icmp ugt i64 %i.w, %i.ah
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = sub nuw i64 %i.w, %i.ah
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %i.aj)
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !73 ; 2 uses
  %.pre1.i = load ptr, ptr %i.ac, align 8, !tbaa !101
  %.pre2.i = ptrtoint ptr %.pre.i to i64
  br label %_ZN5faiss16MaybeOwnedVectorIhE6resizeEm.exit

bb.k:                                             ; preds = %bb.i
  %i.ak = icmp ult i64 %i.w, %i.ah
  br i1 %i.ak, label %bb.l, label %_ZN5faiss16MaybeOwnedVectorIhE6resizeEm.exit

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %i.al
  br i1 %.not.i.i.i, label %_ZN5faiss16MaybeOwnedVectorIhE6resizeEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.l
  store ptr %i.al, ptr %i.ac, align 8, !tbaa !101
  br label %_ZN5faiss16MaybeOwnedVectorIhE6resizeEm.exit

_ZN5faiss16MaybeOwnedVectorIhE6resizeEm.exit:     ; preds = %bb.j, %bb.k, %bb.l, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre2.i, %bb.j ], [ %i.ag, %bb.k ], [ %i.ag, %bb.l ], [ %i.ag, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i ]
  %i.am = phi ptr [ %.pre1.i, %bb.j ], [ %i.ad, %bb.k ], [ %i.ad, %bb.l ], [ %i.al, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i ]
  %i.an = phi ptr [ %.pre.i, %bb.j ], [ %i.ae, %bb.k ], [ %i.ae, %bb.l ], [ %i.ae, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !102
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ap, %.pre-phi.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !103
  br label %bb.m

bb.m:                                             ; preds = %_ZN5faiss16MaybeOwnedVectorIhE6resizeEm.exit, %._crit_edge
  %i.as = sub nsw i64 %.lcssa, %.013.lcssa
  ret i64 %i.as
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss14IndexFlatCodes11reconstructElPf(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %1, ptr noundef %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %1, i64 noundef 1, ptr noundef %2)
  ret void
}

declare void @_ZNK5faiss5Index17reconstruct_batchElPKlPf(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss14IndexFlatCodes13reconstruct_nEllPf(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i64 %1, -1
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = add nsw i64 %2, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !88
  %.not = icmp sgt i64 %i.c, %i.e
  br i1 %.not, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !86
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.g, align 8, !tbaa !87
  store i8 0, ptr %i.f, align 8, !tbaa !68
  %i.h = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #24 ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.j = zext nneg i32 %i.h to i64                ; 2 uses
  %i.k = add nuw nsw i64 %i.j, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.k)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %4, align 8, !tbaa !78
  %i.m = load i64, ptr %i.g, align 8, !tbaa !87
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.l, i64 noundef %i.m, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #24 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.j)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %bb.f, %bb.d
  %i.p = call ptr @__cxa_allocate_exception(i64 40) #24 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss14IndexFlatCodes13reconstruct_nEllPf, ptr noundef nonnull @.str.2, i32 noundef 79)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #32
          to label %bb.m unwind label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.p) #24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.pn = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.q, %bb.j ]
  %i.r = load ptr, ptr %4, align 8, !tbaa !78     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.f
end_hunk_0
