Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/DecompressTracer?download=true
inline.NumInlined: 976
inline.NumDeleted: 629
begin_hunk_0_@_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev:bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !110    ; 7 uses
  switch i8 %i.b, label %bb.e [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i

bb.c:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i.i.i8.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i.i.i8.i.i, label %bb.f, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !113  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.d, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.c, %bb.d ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !39
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i9.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i.i.i.i.i.i.i.i9.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !114
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i, %bb.d
  %i.l = phi ptr [ %.pr.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i ], [ %i.c, %bb.d ] ; 2 uses
  %.not.i.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i, label %bb.f, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i

bb.e:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i, %bb.c, %bb.b
  %.sink20.i.i = phi ptr [ %i.c, %bb.c ], [ %i.c, %bb.b ], [ %i.l, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !110
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %.sink20.i.i to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink20.i.i, i64 noundef %i.q) #21
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i, %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !37 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !39
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !3

_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, %bb.a
  ret void
}

declare ptr @A1C_MapBuilder_add(ptr noundef byval(%struct.A1C_MapBuilder) align 8) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6openzl10visualizer20DecompressChunkTraceEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN6openzl10visualizer20DecompressChunkTraceEEvPT_.exit
  %.05 = phi ptr [ %i.w, %_ZSt8_DestroyIN6openzl10visualizer20DecompressChunkTraceEEvPT_.exit ], [ %0, %bb.a ] ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.c = getelementptr inbounds nuw i8, ptr %.05, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6openzl10visualizer5CodecEEEvT_S6_(ptr noundef %i.b, ptr noundef %i.d)
          to label %_ZSt8_DestroyIPN6openzl10visualizer5CodecES2_EvT_S4_RSaIT0_E.exit.i.i.i unwind label %bb.c

_ZSt8_DestroyIPN6openzl10visualizer5CodecES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6openzl10visualizer5CodecES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05, i64 144
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !92
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #21
  br label %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EED2Ev.exit.i.i

bb.c:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #24
  unreachable

_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EED2Ev.exit.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPN6openzl10visualizer5CodecES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %.05, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !44
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EESt10_Select1stIS9_ESt4lessImESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef %i.o)
          to label %_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEED2Ev.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EED2Ev.exit.i.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #24
  unreachable

_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEED2Ev.exit.i.i: ; preds = %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EED2Ev.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %.05, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !44
  invoke void @_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.t)
          to label %_ZSt8_DestroyIN6openzl10visualizer20DecompressChunkTraceEEvPT_.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEED2Ev.exit.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #24
  unreachable

_ZSt8_DestroyIN6openzl10visualizer20DecompressChunkTraceEEvPT_.exit: ; preds = %_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEED2Ev.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05, i64 152 ; 2 uses
  %.not = icmp eq ptr %i.w, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !174

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN6openzl10visualizer20DecompressChunkTraceEEvPT_.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !55     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #19
  unreachable

_ZNKSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 72                  ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 128102389400760775)
  %i.k = select i1 %i.i, i64 128102389400760775, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw nsw i64 %i.k, 72
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #20 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 7 uses
  %i.q = load i64, ptr %2, align 8, !tbaa !53
  store i64 %i.q, ptr %i.p, align 8, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !34
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !37   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !38   ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE12_M_check_lenEmPKc.exit
  store ptr %i.u, ptr %i.r, align 8, !tbaa !37
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !39
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !39
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.ac = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.y, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !38
  store ptr %i.v, ptr %i.s, align 8, !tbaa !37
  store i64 0, ptr %i.ad, align 8, !tbaa !38
  store i8 0, ptr %i.v, align 8, !tbaa !39
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 3 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !34
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !37 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !38 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false)
  br label %_ZN6openzl10visualizer15StreamdumpEntryC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !37
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !39
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !39
  %.phi.trans.insert37 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre38 = load i64, ptr %.phi.trans.insert37, align 8, !tbaa !38
  br label %_ZN6openzl10visualizer15StreamdumpEntryC2EOS1_.exit

_ZN6openzl10visualizer15StreamdumpEntryC2EOS1_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i
  %i.aq = phi i64 [ %i.am, %bb.d ], [ %.pre38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !38
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !37
  store i64 0, ptr %i.ar, align 8, !tbaa !38
  store i8 0, ptr %i.aj, align 8, !tbaa !39
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6openzl10visualizer15StreamdumpEntryC2EOS1_.exit, %_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bx, %_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZN6openzl10visualizer15StreamdumpEntryC2EOS1_.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.bw, %_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN6openzl10visualizer15StreamdumpEntryC2EOS1_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.at = load i64, ptr %.0911.i.i.i, align 8, !tbaa !53, !alias.scope !182, !noalias !181
  store i64 %i.at, ptr %.012.i.i.i, align 8, !tbaa !53, !alias.scope !181, !noalias !182
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !34, !alias.scope !181, !noalias !182
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !37, !alias.scope !182, !noalias !181 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !38, !alias.scope !182, !noalias !181 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.bd, i1 false), !alias.scope !183
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !37, !alias.scope !181, !noalias !182
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !39, !alias.scope !182, !noalias !181
  store i64 %i.be, ptr %i.aw, align 8, !tbaa !39, !alias.scope !181, !noalias !182
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !38, !alias.scope !182, !noalias !181
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.e
  %i.bf = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.bb, %bb.e ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.bf, ptr %i.bh, align 8, !tbaa !38, !alias.scope !181, !noalias !182
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !37, !alias.scope !182, !noalias !181
  store i64 0, ptr %i.bg, align 8, !tbaa !38, !alias.scope !182, !noalias !181
  store i8 0, ptr %i.ay, align 8, !tbaa !39, !alias.scope !182, !noalias !181
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 3 uses
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !34, !alias.scope !181, !noalias !182
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !37, !alias.scope !182, !noalias !181 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 5 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !38, !alias.scope !182, !noalias !181 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 16
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = add nuw nsw i64 %i.bp, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bk, ptr noundef nonnull align 8 dereferenceable(1) %i.bm, i64 %i.br, i1 false), !alias.scope !183
  br label %_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !37, !alias.scope !181, !noalias !182
  %i.bs = load i64, ptr %i.bm, align 8, !tbaa !39, !alias.scope !182, !noalias !181
  store i64 %i.bs, ptr %i.bk, align 8, !tbaa !39, !alias.scope !181, !noalias !182
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !tbaa !38, !alias.scope !182, !noalias !181
  br label %_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i, %bb.f
  %i.bt = phi i64 [ %i.bp, %bb.f ], [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  store i64 %i.bt, ptr %i.bv, align 8, !tbaa !38, !alias.scope !181, !noalias !182
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !37, !alias.scope !182, !noalias !181
  store i64 0, ptr %i.bu, align 8, !tbaa !38, !alias.scope !182, !noalias !181
  store i8 0, ptr %i.bm, align 8, !tbaa !39, !alias.scope !182, !noalias !181
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bw, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN6openzl10visualizer15StreamdumpEntryC2EOS1_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZN6openzl10visualizer15StreamdumpEntryC2EOS1_.exit ], [ %i.bx, %_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 72 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit30, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27
  %.012.i.i.i18 = phi ptr [ %i.dd, %_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27 ], [ %i.by, %_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 8 uses
  %.0911.i.i.i19 = phi ptr [ %i.dc, %_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27 ], [ %1, %_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.bz = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !53, !alias.scope !185, !noalias !184
  store i64 %i.bz, ptr %.012.i.i.i18, align 8, !tbaa !53, !alias.scope !184, !noalias !185
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 3 uses
  store ptr %i.cc, ptr %i.ca, align 8, !tbaa !34, !alias.scope !184, !noalias !185
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !37, !alias.scope !185, !noalias !184 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 5 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.g:                                             ; preds = %.lr.ph.i.i.i17
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !38, !alias.scope !185, !noalias !184 ; 3 uses
  %i.ci = icmp ult i64 %i.ch, 16
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = add nuw nsw i64 %i.ch, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cc, ptr noundef nonnull align 8 dereferenceable(1) %i.ce, i64 %i.cj, i1 false), !alias.scope !186
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.cd, ptr %i.ca, align 8, !tbaa !37, !alias.scope !184, !noalias !185
  %i.ck = load i64, ptr %i.ce, align 8, !tbaa !39, !alias.scope !185, !noalias !184
  store i64 %i.ck, ptr %i.cc, align 8, !tbaa !39, !alias.scope !184, !noalias !185
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !38, !alias.scope !185, !noalias !184
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.g
  %i.cl = phi i64 [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ], [ %i.ch, %bb.g ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  store i64 %i.cl, ptr %i.cn, align 8, !tbaa !38, !alias.scope !184, !noalias !185
  store ptr %i.ce, ptr %i.cb, align 8, !tbaa !37, !alias.scope !185, !noalias !184
  store i64 0, ptr %i.cm, align 8, !tbaa !38, !alias.scope !185, !noalias !184
  store i8 0, ptr %i.ce, align 8, !tbaa !39, !alias.scope !185, !noalias !184
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 56 ; 3 uses
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !34, !alias.scope !184, !noalias !185
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !37, !alias.scope !185, !noalias !184 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 56 ; 5 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i24

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23
  %i.cu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !38, !alias.scope !185, !noalias !184 ; 3 uses
  %i.cw = icmp ult i64 %i.cv, 16
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = add nuw nsw i64 %i.cv, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cq, ptr noundef nonnull align 8 dereferenceable(1) %i.cs, i64 %i.cx, i1 false), !alias.scope !186
  br label %_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23
  store ptr %i.cr, ptr %i.co, align 8, !tbaa !37, !alias.scope !184, !noalias !185
  %i.cy = load i64, ptr %i.cs, align 8, !tbaa !39, !alias.scope !185, !noalias !184
  store i64 %i.cy, ptr %i.cq, align 8, !tbaa !39, !alias.scope !184, !noalias !185
  %.phi.trans.insert5.i.i.i.i25 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48
  %.pre6.i.i.i.i26 = load i64, ptr %.phi.trans.insert5.i.i.i.i25, align 8, !tbaa !38, !alias.scope !185, !noalias !184
  br label %_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27

_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i24, %bb.h
  %i.cz = phi i64 [ %i.cv, %bb.h ], [ %.pre6.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i24 ]
  %i.da = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48
  %i.db = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48
  store i64 %i.cz, ptr %i.db, align 8, !tbaa !38, !alias.scope !184, !noalias !185
  store ptr %i.cs, ptr %i.cp, align 8, !tbaa !37, !alias.scope !185, !noalias !184
  store i64 0, ptr %i.da, align 8, !tbaa !38, !alias.scope !185, !noalias !184
  store i8 0, ptr %i.cs, align 8, !tbaa !39, !alias.scope !185, !noalias !184
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 72 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 72 ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.dc, %i.b
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit30, label %.lr.ph.i.i.i17, !llvm.loop !2

_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit30: ; preds = %_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27, %_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i29 = phi ptr [ %i.by, %_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.dd, %_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27 ]
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %i.c, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseIN6openzl10visualizer15StreamdumpEntryESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit30
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !29
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = sub i64 %i.dg, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.dh) #21
  br label %_ZNSt12_Vector_baseIN6openzl10visualizer15StreamdumpEntryESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6openzl10visualizer15StreamdumpEntryESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit30, %bb.i
  store ptr %i.o, ptr %0, align 8, !tbaa !55
  store ptr %.0.lcssa.i.i.i29, ptr %i.a, align 8, !tbaa !54
  %i.di = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %i.k
  store ptr %i.di, ptr %i.de, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !24     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #19
  unreachable

_ZNKSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 384307168202282325)
  %i.k = select i1 %i.i, i64 384307168202282325, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw nsw i64 %i.k, 24
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #20 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 2 uses
  %i.q = load <2 x ptr>, ptr %2, align 8, !tbaa !27
  store <2 x ptr> %i.q, ptr %i.p, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29
  store ptr %i.t, ptr %i.r, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.o, %_ZNKSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !27, !alias.scope !194, !noalias !193
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !27, !alias.scope !193, !noalias !194
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29, !alias.scope !194, !noalias !193
  store ptr %i.x, ptr %i.v, align 8, !tbaa !29, !alias.scope !193, !noalias !194
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !194, !noalias !193
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNKSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.z, %.lr.ph.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %i.aa, %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 3 uses
  %.0911.i.i.i19 = phi ptr [ %i.af, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.ab = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !27, !alias.scope !196, !noalias !195
  store <2 x ptr> %i.ab, ptr %.012.i.i.i18, align 8, !tbaa !27, !alias.scope !195, !noalias !196
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !29, !alias.scope !196, !noalias !195
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !29, !alias.scope !195, !noalias !196
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i19, i8 0, i64 24, i1 false), !alias.scope !196, !noalias !195
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.af, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !0

_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.aa, %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.ag, %.lr.ph.i.i.i17 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !23
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ak) #21
  br label %_ZNSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !24
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !25
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.k
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE17_M_realloc_insertIJRKmRbEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !20     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775752
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #19
  unreachable

_ZNKSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 152                 ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %4 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %4, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %4, i64 60680079189834051)
  %i.k = select i1 %i.i, i64 60680079189834051, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw nsw i64 %i.k, 152
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #20 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 13 uses
  %i.q = load i64, ptr %2, align 8, !tbaa !51
  %i.r = load i8, ptr %3, align 1, !tbaa !68, !range !69, !noundef !70
  store i64 %i.q, ptr %i.p, align 8, !tbaa !87
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i8 %i.r, ptr %i.s, align 8, !tbaa !88
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 3 uses
  store i32 0, ptr %i.u, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr null, ptr %i.v, align 8, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store ptr %i.u, ptr %i.w, align 8, !tbaa !49
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store ptr %i.u, ptr %i.x, align 8, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store i64 0, ptr %i.y, align 8, !tbaa !48
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 88 ; 3 uses
  store i32 0, ptr %i.z, align 8, !tbaa !45
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  store ptr null, ptr %i.aa, align 8, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !49
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !50
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i8 0, i64 32, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %i.o, %_ZNKSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @_ZSt19__relocate_object_aIN6openzl10visualizer20DecompressChunkTraceES2_SaIS2_EEvPT_PT0_RT1_(ptr noundef nonnull %.012.i.i.i, ptr noundef %.0911.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %0) #22
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 152 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 152 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !4

_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNKSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.af, %.lr.ph.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 152 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.ai, %.lr.ph.i.i.i28 ], [ %i.ag, %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  %.0911.i.i.i30 = phi ptr [ %i.ah, %.lr.ph.i.i.i28 ], [ %1, %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  tail call void @_ZSt19__relocate_object_aIN6openzl10visualizer20DecompressChunkTraceES2_SaIS2_EEvPT_PT0_RT1_(ptr noundef nonnull %.012.i.i.i29, ptr noundef %.0911.i.i.i30, ptr noundef nonnull align 1 dereferenceable(1) %0) #22
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 152 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 152 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.ah, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !4

_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33: ; preds = %.lr.ph.i.i.i28, %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.ag, %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.ai, %.lr.ph.i.i.i28 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !67
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.am) #21
  br label %_ZNSt12_Vector_baseIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !20
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw [152 x i8], ptr %i.o, i64 %i.k
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !67
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt19__relocate_object_aIN6openzl10visualizer20DecompressChunkTraceES2_SaIS2_EEvPT_PT0_RT1_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.c, ptr %i.f, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.a, ptr %i.k, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !48
  store ptr null, ptr %i.b, align 8, !tbaa !44
  store ptr %i.d, ptr %i.g, align 8, !tbaa !49
  store ptr %i.d, ptr %i.i, align 8, !tbaa !50
  store i64 0, ptr %i.l, align 8, !tbaa !48
  br label %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2EOS9_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.n, align 8, !tbaa !44
  br label %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2EOS9_.exit.i

_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2EOS9_.exit.i: ; preds = %bb.c, %bb.b
  %.sink6 = phi ptr [ %i.a, %bb.c ], [ %i.h, %bb.b ]
  %.sink5 = phi ptr [ %i.a, %bb.c ], [ %i.j, %bb.b ]
  %.sink = phi i64 [ 0, %bb.c ], [ %i.m, %bb.b ]
  %.sink.i.i.i.i.i = phi i32 [ 0, %bb.c ], [ %i.e, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sink6, ptr %i.o, align 8, !tbaa !49
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sink5, ptr %i.p, align 8, !tbaa !50
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sink, ptr %i.q, align 8, !tbaa !48
  store i32 %.sink.i.i.i.i.i, ptr %i.a, align 8, !tbaa !45
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !44   ; 3 uses
  %.not.i.i.i.i5.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i5.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2EOS9_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !45
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.t, ptr %i.w, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !49
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !50
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.r, ptr %i.ab, align 8, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !48
  store ptr null, ptr %i.s, align 8, !tbaa !44
  store ptr %i.u, ptr %i.x, align 8, !tbaa !49
  store ptr %i.u, ptr %i.z, align 8, !tbaa !50
  store i64 0, ptr %i.ac, align 8, !tbaa !48
  br label %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EED2Ev.exit.i

bb.e:                                             ; preds = %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2EOS9_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr null, ptr %i.ae, align 8, !tbaa !44
  br label %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EED2Ev.exit.i: ; preds = %bb.d, %bb.e
  %.sink9 = phi ptr [ %i.r, %bb.e ], [ %i.y, %bb.d ]
  %.sink8 = phi ptr [ %i.r, %bb.e ], [ %i.aa, %bb.d ]
  %.sink7 = phi i64 [ 0, %bb.e ], [ %i.ad, %bb.d ]
  %.sink.i.i.i.i6.i = phi i32 [ 0, %bb.e ], [ %i.v, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sink9, ptr %i.af, align 8, !tbaa !49
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sink8, ptr %i.ag, align 8, !tbaa !50
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sink7, ptr %i.ah, align 8, !tbaa !48
  store i32 %.sink.i.i.i.i6.i, ptr %i.r, align 8, !tbaa !45
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ak = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !91
  store <2 x ptr> %i.ak, ptr %i.ai, align 8, !tbaa !91
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !92
  store ptr %i.an, ptr %i.al, align 8, !tbaa !92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EESt10_Select1stIS9_ESt4lessImESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, ptr noundef null)
          to label %_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEED2Ev.exit.i unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EED2Ev.exit.i
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #24
  unreachable

_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EED2Ev.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !44
  invoke void @_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef %i.as)
          to label %_ZN6openzl10visualizer20DecompressChunkTraceD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEED2Ev.exit.i
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
end_hunk_0
begin_hunk_1_@_ZN6openzl10visualizer5CodecC2ERKS1_:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.s:                                             ; preds = %bb.f
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.t:                                             ; preds = %_ZNSt15__new_allocatorI9ZL_DataIDE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit

bb.u:                                             ; preds = %_ZNSt15__new_allocatorI9ZL_DataIDE8allocateEmPKv.exit.i.i.i.i21, %.noexc.i.i22
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %i.ak, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cj = load ptr, ptr %i.ax, align 8, !tbaa !106
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cm) #21
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit

_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit:         ; preds = %bb.v, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.cg, %bb.t ], [ %i.ch, %bb.u ], [ %i.ch, %bb.v ]
  call void @_ZN6openzl11LocalParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %i.ag) #22
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit ], [ %i.cf, %bb.s ] ; 2 uses
  %i.cn = load ptr, ptr %i.r, align 8, !tbaa !37  ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.t
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.w
  %i.cp = load i64, ptr %i.t, align 8, !tbaa !39
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.r ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn.pn, %bb.w ]
  %i.cr = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.c
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ct = load i64, ptr %i.c, align 8, !tbaa !39
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN6openzl11LocalParamsC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(152) ptr @_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(152) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 21 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.g, ptr %i.j, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = load <2 x ptr>, ptr %i.k, align 8, !tbaa !46
  store <2 x ptr> %i.n, ptr %i.l, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.e, ptr %i.o, align 8, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 %i.q, ptr %i.r, align 8, !tbaa !48
  store ptr null, ptr %i.f, align 8, !tbaa !44
  store ptr %i.h, ptr %i.k, align 8, !tbaa !49
  store ptr %i.h, ptr %i.m, align 8, !tbaa !50
  store i64 0, ptr %i.p, align 8, !tbaa !48
  br label %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2EOS9_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr null, ptr %i.s, align 8, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.e, ptr %i.t, align 8, !tbaa !49
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.e, ptr %i.u, align 8, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 0, ptr %i.v, align 8, !tbaa !48
  br label %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2EOS9_.exit.i

_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2EOS9_.exit.i: ; preds = %bb.d, %bb.c
  %.sink.i.i.i.i.i = phi i32 [ 0, %bb.d ], [ %i.i, %bb.c ]
  store i32 %.sink.i.i.i.i.i, ptr %i.e, align 8, !tbaa !45
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !44   ; 3 uses
  %.not.i.i.i.i5.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i5.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2EOS9_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !44
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.af = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !46
  store <2 x ptr> %i.af, ptr %i.ad, align 8, !tbaa !46
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.w, ptr %i.ag, align 8, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !48
  store ptr null, ptr %i.x, align 8, !tbaa !44
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !49
  store ptr %i.z, ptr %i.ae, align 8, !tbaa !50
  store i64 0, ptr %i.ah, align 8, !tbaa !48
  br label %_ZN6openzl10visualizer20DecompressChunkTraceC2EOS1_.exit

bb.f:                                             ; preds = %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2EOS9_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr null, ptr %i.ak, align 8, !tbaa !44
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr %i.w, ptr %i.al, align 8, !tbaa !49
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.w, ptr %i.am, align 8, !tbaa !50
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i64 0, ptr %i.an, align 8, !tbaa !48
  br label %_ZN6openzl10visualizer20DecompressChunkTraceC2EOS1_.exit

_ZN6openzl10visualizer20DecompressChunkTraceC2EOS1_.exit: ; preds = %bb.e, %bb.f
  %.sink.i.i.i.i6.i = phi i32 [ 0, %bb.f ], [ %i.aa, %bb.e ]
  store i32 %.sink.i.i.i.i6.i, ptr %i.w, align 8, !tbaa !45
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.aq = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !91
  store <2 x ptr> %i.aq, ptr %i.ao, align 8, !tbaa !91
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !92
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 152 ; 2 uses
  store ptr %i.av, ptr %i.a, align 8, !tbaa !19
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(152) %1)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !31
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN6openzl10visualizer20DecompressChunkTraceC2EOS1_.exit
  %i.aw = phi ptr [ %.pre, %bb.g ], [ %i.av, %_ZN6openzl10visualizer20DecompressChunkTraceC2EOS1_.exit ]
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -152
  ret ptr %i.ax
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(152) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !20     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775752
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #19
  unreachable

_ZNKSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 152                 ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 60680079189834051)
  %i.k = select i1 %i.i, i64 60680079189834051, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw nsw i64 %i.k, 152
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #20 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 15 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.p, ptr noundef nonnull align 8 dereferenceable(152) %2, i64 32, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !44   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE12_M_check_lenEmPKc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %i.s, ptr %i.v, align 8, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !49
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !50
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.q, ptr %i.aa, align 8, !tbaa !47
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !48
  store ptr null, ptr %i.r, align 8, !tbaa !44
  store ptr %i.t, ptr %i.w, align 8, !tbaa !49
  store ptr %i.t, ptr %i.y, align 8, !tbaa !50
  store i64 0, ptr %i.ab, align 8, !tbaa !48
  br label %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2EOS9_.exit.i

bb.d:                                             ; preds = %_ZNKSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr null, ptr %i.ad, align 8, !tbaa !44
  br label %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2EOS9_.exit.i

_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2EOS9_.exit.i: ; preds = %bb.d, %bb.c
  %.sink30 = phi ptr [ %i.q, %bb.d ], [ %i.x, %bb.c ]
  %.sink29 = phi ptr [ %i.q, %bb.d ], [ %i.z, %bb.c ]
  %.sink = phi i64 [ 0, %bb.d ], [ %i.ac, %bb.c ]
  %.sink.i.i.i.i.i = phi i32 [ 0, %bb.d ], [ %i.u, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr %.sink30, ptr %i.ae, align 8, !tbaa !49
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store ptr %.sink29, ptr %i.af, align 8, !tbaa !50
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store i64 %.sink, ptr %i.ag, align 8, !tbaa !48
  store i32 %.sink.i.i.i.i.i, ptr %i.q, align 8, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 88 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !44 ; 3 uses
  %.not.i.i.i.i5.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i5.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2EOS9_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !45
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !44
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !49
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !50
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ah, ptr %i.ar, align 8, !tbaa !47
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !48
  store ptr null, ptr %i.ai, align 8, !tbaa !44
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !49
  store ptr %i.ak, ptr %i.ap, align 8, !tbaa !50
  store i64 0, ptr %i.as, align 8, !tbaa !48
  br label %_ZN6openzl10visualizer20DecompressChunkTraceC2EOS1_.exit

bb.f:                                             ; preds = %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2EOS9_.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  store ptr null, ptr %i.au, align 8, !tbaa !44
  br label %_ZN6openzl10visualizer20DecompressChunkTraceC2EOS1_.exit

_ZN6openzl10visualizer20DecompressChunkTraceC2EOS1_.exit: ; preds = %bb.e, %bb.f
  %.sink33 = phi ptr [ %i.ah, %bb.f ], [ %i.ao, %bb.e ]
  %.sink32 = phi ptr [ %i.ah, %bb.f ], [ %i.aq, %bb.e ]
  %.sink31 = phi i64 [ 0, %bb.f ], [ %i.at, %bb.e ]
  %.sink.i.i.i.i6.i = phi i32 [ 0, %bb.f ], [ %i.al, %bb.e ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  store ptr %.sink33, ptr %i.av, align 8, !tbaa !49
  %i.aw = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  store ptr %.sink32, ptr %i.aw, align 8, !tbaa !50
  %i.ax = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  store i64 %.sink31, ptr %i.ax, align 8, !tbaa !48
  store i32 %.sink.i.i.i.i6.i, ptr %i.ah, align 8, !tbaa !45
  %i.ay = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.ba = load <2 x ptr>, ptr %i.az, align 8, !tbaa !91
  store <2 x ptr> %i.ba, ptr %i.ay, align 8, !tbaa !91
  %i.bb = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !92
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6openzl10visualizer20DecompressChunkTraceC2EOS1_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i ], [ %i.o, %_ZN6openzl10visualizer20DecompressChunkTraceC2EOS1_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i ], [ %i.c, %_ZN6openzl10visualizer20DecompressChunkTraceC2EOS1_.exit ] ; 2 uses
  tail call void @_ZSt19__relocate_object_aIN6openzl10visualizer20DecompressChunkTraceES2_SaIS2_EEvPT_PT0_RT1_(ptr noundef nonnull %.012.i.i.i, ptr noundef %.0911.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %0) #22
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 152 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 152 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.be, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !4

_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZN6openzl10visualizer20DecompressChunkTraceC2EOS1_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZN6openzl10visualizer20DecompressChunkTraceC2EOS1_.exit ], [ %i.bf, %.lr.ph.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 152 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bi, %.lr.ph.i.i.i17 ], [ %i.bg, %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.bh, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  tail call void @_ZSt19__relocate_object_aIN6openzl10visualizer20DecompressChunkTraceES2_SaIS2_EEvPT_PT0_RT1_(ptr noundef nonnull %.012.i.i.i18, ptr noundef %.0911.i.i.i19, ptr noundef nonnull align 1 dereferenceable(1) %0) #22
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 152 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 152 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.bh, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !4

_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.bg, %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bi, %.lr.ph.i.i.i17 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !67
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bm) #21
  br label %_ZNSt12_Vector_baseIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !20
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !19
  %i.bn = getelementptr inbounds nuw [152 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bn, ptr %i.bj, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE17_M_realloc_insertIJRmRbEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !20     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775752
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #19
  unreachable

_ZNKSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 152                 ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %4 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %4, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %4, i64 60680079189834051)
  %i.k = select i1 %i.i, i64 60680079189834051, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw nsw i64 %i.k, 152
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #20 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 13 uses
  %i.q = load i64, ptr %2, align 8, !tbaa !51
  %i.r = load i8, ptr %3, align 1, !tbaa !68, !range !69, !noundef !70
  store i64 %i.q, ptr %i.p, align 8, !tbaa !87
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i8 %i.r, ptr %i.s, align 8, !tbaa !88
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 3 uses
  store i32 0, ptr %i.u, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr null, ptr %i.v, align 8, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store ptr %i.u, ptr %i.w, align 8, !tbaa !49
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store ptr %i.u, ptr %i.x, align 8, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store i64 0, ptr %i.y, align 8, !tbaa !48
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 88 ; 3 uses
  store i32 0, ptr %i.z, align 8, !tbaa !45
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  store ptr null, ptr %i.aa, align 8, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !49
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !50
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i8 0, i64 32, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %i.o, %_ZNKSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @_ZSt19__relocate_object_aIN6openzl10visualizer20DecompressChunkTraceES2_SaIS2_EEvPT_PT0_RT1_(ptr noundef nonnull %.012.i.i.i, ptr noundef %.0911.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %0) #22
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 152 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 152 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !4

_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNKSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.af, %.lr.ph.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 152 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.ai, %.lr.ph.i.i.i28 ], [ %i.ag, %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  %.0911.i.i.i30 = phi ptr [ %i.ah, %.lr.ph.i.i.i28 ], [ %1, %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  tail call void @_ZSt19__relocate_object_aIN6openzl10visualizer20DecompressChunkTraceES2_SaIS2_EEvPT_PT0_RT1_(ptr noundef nonnull %.012.i.i.i29, ptr noundef %.0911.i.i.i30, ptr noundef nonnull align 1 dereferenceable(1) %0) #22
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 152 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 152 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.ah, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !4

_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33: ; preds = %.lr.ph.i.i.i28, %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.ag, %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.ai, %.lr.ph.i.i.i28 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !67
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.am) #21
  br label %_ZNSt12_Vector_baseIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !20
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw [152 x i8], ptr %i.o, i64 %i.k
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !67
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { noreturn }
attributes #20 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #21 = { builtin nounwind }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { noreturn nounwind }
attributes #25 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!5, !6, !7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !30}
!1 = distinct !{!1, !30}
!2 = distinct !{!2, !30}
!3 = distinct !{!3, !30}
!4 = distinct !{!4, !30}
!5 = !{i32 7, !"Dwarf Version", i32 5}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"p1 _ZTSN6openzl10visualizer20DecompressChunkTraceE", !16, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!19 = !{!18, !17, i64 8}
!20 = !{!18, !17, i64 0}
!21 = !{!"p1 _ZTSSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE", !16, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!23 = !{!22, !21, i64 16}
!24 = !{!22, !21, i64 0}
!25 = !{!22, !21, i64 8}
!26 = !{!"p1 _ZTSN6openzl10visualizer15StreamdumpEntryE", !16, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIN6openzl10visualizer15StreamdumpEntryESaIS2_EE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!29 = !{!28, !26, i64 16}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!17, !17, i64 0}
!32 = !{!"p1 omnipotent char", !16, i64 0}
!33 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !32, i64 0}
!34 = !{!33, !32, i64 0}
!35 = !{!"long", !12, i64 0}
!36 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !33, i64 0, !35, i64 8, !12, i64 16}
!37 = !{!36, !32, i64 0}
!38 = !{!36, !35, i64 8}
!39 = !{!12, !12, i64 0}
!40 = !{!"_ZTSSt14_Rb_tree_color", !12, i64 0}
!41 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !16, i64 0}
!42 = !{!"_ZTSSt18_Rb_tree_node_base", !40, i64 0, !41, i64 8, !41, i64 16, !41, i64 24}
!43 = !{!"_ZTSSt15_Rb_tree_header", !42, i64 0, !35, i64 32}
!44 = !{!43, !41, i64 8}
!45 = !{!43, !40, i64 0}
!46 = !{!41, !41, i64 0}
!47 = !{!42, !41, i64 8}
!48 = !{!43, !35, i64 32}
!49 = !{!43, !41, i64 16}
!50 = !{!43, !41, i64 24}
!51 = !{!35, !35, i64 0}
!52 = !{!"_ZTSN6openzl10visualizer15StreamdumpEntryE", !35, i64 0, !36, i64 8, !36, i64 40}
!53 = !{!52, !35, i64 0}
!54 = !{!28, !26, i64 8}
!55 = !{!28, !26, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE12_Vector_implE", !18, i64 0}
!57 = !{!"_ZTSSt12_Vector_baseIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE", !56, i64 0}
!58 = !{!"_ZTSSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE", !57, i64 0}
!59 = !{!"p1 _ZTS21ZL_OperationContext_s", !16, i64 0}
!60 = !{!"bool", !12, i64 0}
!61 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EE12_Vector_implE", !22, i64 0}
!62 = !{!"_ZTSSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EE", !61, i64 0}
!63 = !{!"_ZTSSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE", !62, i64 0}
!64 = !{!"_ZTSN6openzl10visualizer11TraceResultE", !36, i64 0, !63, i64 32}
!65 = !{!"_ZTSN6openzl10visualizer16DecompressTracerE", !13, i64 0, !58, i64 8, !17, i64 32, !59, i64 40, !60, i64 48, !64, i64 56}
!66 = !{!65, !13, i64 0}
!67 = !{!18, !17, i64 16}
!68 = !{!60, !60, i64 0}
!69 = !{i8 0, i8 2}
!70 = !{}
!71 = !{!"_ZTSN6openzl10visualizer25ZL_DataIDCustomComparatorE"}
!72 = !{!"_ZTSSt20_Rb_tree_key_compareIN6openzl10visualizer25ZL_DataIDCustomComparatorEE", !71, i64 0}
!73 = !{!"_ZTSNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE13_Rb_tree_implIS9_Lb1EEE", !72, i64 0, !43, i64 8}
!74 = !{!"_ZTSSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE", !73, i64 0}
!75 = !{!"_ZTSSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEE", !74, i64 0}
!76 = !{!"_ZTSSt4lessImE"}
!77 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessImEE", !76, i64 0}
!78 = !{!"_ZTSNSt8_Rb_treeImSt4pairIKmS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EESt10_Select1stIS9_ESt4lessImESaIS9_EE13_Rb_tree_implISD_Lb1EEE", !77, i64 0, !43, i64 8}
end_hunk_1
