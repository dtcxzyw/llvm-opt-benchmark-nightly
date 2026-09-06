Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/CompressionTraceHooks?download=true
inline.NumInlined: 828
inline.NumDeleted: 532
begin_hunk_0_@_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EED2Ev:bb.a
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #21
  br label %_ZSt8_DestroyISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEEvPT_.exit.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !46
  br label %_ZSt8_DestroyIPSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.aa = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EES5_EvT_S7_RSaIT0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !37
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #21
  br label %_ZNSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EES5_EvT_S7_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS5_EEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEEvPT_.exit.i
  %.05.i = phi ptr [ %i.w, %_ZSt8_DestroyISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEEvPT_.exit.i ], [ %0, %bb.a ] ; 5 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !67 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i, %_ZSt8_DestroyIN6openzl10visualizer15StreamdumpEntryEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyIN6openzl10visualizer15StreamdumpEntryEEvPT_.exit.i.i.i.i.i ], [ %i.a, %.lr.ph.i ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 56 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !25
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyIN6openzl10visualizer15StreamdumpEntryEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !25
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #21
  br label %_ZSt8_DestroyIN6openzl10visualizer15StreamdumpEntryEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6openzl10visualizer15StreamdumpEntryEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6openzl10visualizer15StreamdumpEntryEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %.05.i, align 8, !tbaa !67
  br label %_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i, %.lr.ph.i
  %i.q = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.a, %.lr.ph.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i.i, label %_ZSt8_DestroyISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !69
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #21
  br label %_ZSt8_DestroyISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEEvPT_.exit.i

_ZSt8_DestroyISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEEvPT_.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.w, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS5_EEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !2

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS5_EEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN6openzl10visualizer15StreamdumpEntryEEEvT_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN6openzl10visualizer15StreamdumpEntryEEvPT_.exit.i
  %.05.i = phi ptr [ %i.m, %_ZSt8_DestroyIN6openzl10visualizer15StreamdumpEntryEEvPT_.exit.i ], [ %0, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 56 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.e = load i64, ptr %i.c, align 8, !tbaa !25
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt8_DestroyIN6openzl10visualizer15StreamdumpEntryEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !25
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %_ZSt8_DestroyIN6openzl10visualizer15StreamdumpEntryEEvPT_.exit.i

_ZSt8_DestroyIN6openzl10visualizer15StreamdumpEntryEEvPT_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i, i64 72 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN6openzl10visualizer15StreamdumpEntryEEEvT_S6_.exit, label %.lr.ph.i, !llvm.loop !1

_ZNSt12_Destroy_auxILb0EE9__destroyIPN6openzl10visualizer15StreamdumpEntryEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyIN6openzl10visualizer15StreamdumpEntryEEvPT_.exit.i, %bb.a
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_ISt17basic_string_viewIcS3_ES9_EESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_ISt17basic_string_viewIcS3_ES9_EESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_ISt17basic_string_viewIcS3_ES9_EESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_ISt17basic_string_viewIcS3_ES9_EESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_ISt17basic_string_viewIcS3_ES9_EESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !25
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #21
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_ISt17basic_string_viewIcS3_ES9_EESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_ISt17basic_string_viewIcS3_ES9_EESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 96) #21
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !176

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_ISt17basic_string_viewIcS3_ES9_EESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

declare void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE13_M_assign_auxIPKS4_EEvT_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 7 uses
  %3 = udiv exact i64 %i.c, 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = load ptr, ptr %0, align 8, !tbaa !46     ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.c, 9223372036854775800
  br i1 %i.k, label %bb.c, label %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
  unreachable

_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit: ; preds = %bb.b
  %i.l = tail call noundef ptr @_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE20_M_allocate_and_copyIPKS4_EEPS4_mT_SB_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %3, ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !46     ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit, %_ZSt8_DestroyISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.al, %_ZSt8_DestroyISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEEvPT_.exit.i.i ], [ %i.m, %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit ] ; 5 uses
  %i.p = load ptr, ptr %.05.i.i, align 8, !tbaa !67 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !68   ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i, %_ZSt8_DestroyIN6openzl10visualizer15StreamdumpEntryEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.ae, %_ZSt8_DestroyIN6openzl10visualizer15StreamdumpEntryEEvPT_.exit.i.i.i.i.i.i ], [ %i.p, %.lr.ph.i.i ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !25
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZSt8_DestroyIN6openzl10visualizer15StreamdumpEntryEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !25
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #21
  br label %_ZSt8_DestroyIN6openzl10visualizer15StreamdumpEntryEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN6openzl10visualizer15StreamdumpEntryEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.r
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN6openzl10visualizer15StreamdumpEntryEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %.05.i.i, align 8, !tbaa !67
  br label %_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i, %.lr.ph.i.i
  %i.af = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.p, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEEvPT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !69
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #21
  br label %_ZSt8_DestroyISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEEvPT_.exit.i.i: ; preds = %bb.d, %_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, %i.o
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEEvT_S7_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEEvT_S7_.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !46
  br label %_ZSt8_DestroyIPSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEEvT_S7_.exit

_ZSt8_DestroyIPSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEEvT_S7_.exitthread-pre-split, %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit
  %i.am = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEEvT_S7_.exitthread-pre-split ], [ %i.m, %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEEvT_S7_.exit
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.aq) #21
  br label %_ZNSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEEvT_S7_.exit, %bb.e
  store ptr %i.l, ptr %0, align 8, !tbaa !46
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c ; 2 uses
  store ptr %i.ar, ptr %i.n, align 8, !tbaa !45
  store ptr %i.ar, ptr %i.d, align 8, !tbaa !37
  br label %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE15_M_erase_at_endEPS4_.exit

bb.f:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !45 ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.h                     ; 4 uses
  %.not = icmp ult i64 %i.av, %i.c
  br i1 %.not, label %_ZSt9__advanceIPKSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = icmp sgt i64 %i.c, 0
  br i1 %i.aw, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4copyIPKSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEPS5_ET0_T_SA_S9_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.ax = udiv exact i64 %i.c, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %i.ax, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i ], [ %i.f, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %1, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.ay = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0910.i.i.i.i.i) ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24 ; 2 uses
  %i.bb = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bc = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEPS5_ET0_T_SA_S9_.exit.loopexit, !llvm.loop !177

_ZSt4copyIPKSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEPS5_ET0_T_SA_S9_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.as, align 8, !tbaa !45
  br label %_ZSt4copyIPKSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEPS5_ET0_T_SA_S9_.exit

_ZSt4copyIPKSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEPS5_ET0_T_SA_S9_.exit: ; preds = %_ZSt4copyIPKSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEPS5_ET0_T_SA_S9_.exit.loopexit, %bb.g
  %i.bd = phi ptr [ %i.at, %bb.g ], [ %.pre, %_ZSt4copyIPKSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEPS5_ET0_T_SA_S9_.exit.loopexit ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.f, %bb.g ], [ %i.ba, %_ZSt4copyIPKSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEPS5_ET0_T_SA_S9_.exit.loopexit ] ; 3 uses
  %.not.i16 = icmp eq ptr %i.bd, %.08.lcssa.i.i.i.i.i
  br i1 %.not.i16, label %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE15_M_erase_at_endEPS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt4copyIPKSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEPS5_ET0_T_SA_S9_.exit, %_ZSt8_DestroyISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ca, %_ZSt8_DestroyISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEEvPT_.exit.i.i.i ], [ %.08.lcssa.i.i.i.i.i, %_ZSt4copyIPKSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEPS5_ET0_T_SA_S9_.exit ] ; 5 uses
  %i.be = load ptr, ptr %.05.i.i.i, align 8, !tbaa !67 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !68 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.be, %i.bg
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyIN6openzl10visualizer15StreamdumpEntryEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.bt, %_ZSt8_DestroyIN6openzl10visualizer15StreamdumpEntryEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.be, %.lr.ph.i.i.i ] ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !26 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !25
  %i.bm = add i64 %i.bl, 1
  tail call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !26 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZSt8_DestroyIN6openzl10visualizer15StreamdumpEntryEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !25
  %i.bs = add i64 %i.br, 1
  tail call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #21
  br label %_ZSt8_DestroyIN6openzl10visualizer15StreamdumpEntryEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIN6openzl10visualizer15StreamdumpEntryEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bt, %i.bg
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN6openzl10visualizer15StreamdumpEntryEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !67
  br label %_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i
  %i.bu = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.be, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !69
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #21
  br label %_ZSt8_DestroyISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EEEvPT_.exit.i.i.i: ; preds = %bb.h, %_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ca, %i.bd
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_:bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6openzl10visualizer15StreamdumpEntryESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.i) #20 ; 0 uses
  invoke void @_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryEEvT_S4_(ptr noundef %i.e, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_rethrow() #22
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #24
  unreachable

bb.j:                                             ; preds = %bb.g
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6openzl10visualizer15StreamdumpEntryESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN6openzl10visualizer15StreamdumpEntryEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN6openzl10visualizer15StreamdumpEntryESaIS2_EE11_M_allocateEm.exit
  ret ptr %i.e

.body:                                            ; preds = %bb.h
  %i.n = extractvalue { ptr, i32 } %i.k, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %i.n) #20 ; 0 uses
  %.not.i11 = icmp eq ptr %i.e, null
  br i1 %.not.i11, label %_ZNSt12_Vector_baseIN6openzl10visualizer15StreamdumpEntryESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.k

bb.k:                                             ; preds = %.body
  %i.p = mul i64 %1, 72
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.p) #21
  br label %_ZNSt12_Vector_baseIN6openzl10visualizer15StreamdumpEntryESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6openzl10visualizer15StreamdumpEntryESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %bb.k, %.body
  invoke void @__cxa_rethrow() #22
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIN6openzl10visualizer15StreamdumpEntryESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.q

bb.n:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #24
  unreachable

bb.o:                                             ; preds = %_ZNSt12_Vector_baseIN6openzl10visualizer15StreamdumpEntryESaIS2_EE13_M_deallocateEPS2_m.exit
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6openzl10visualizer15StreamdumpEntryC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !50
  store i64 %i.c, ptr %0, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !21
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !24   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 %i.i, ptr %i.b, align 8, !tbaa !58
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.d, align 8, !tbaa !26
  %i.l = load i64, ptr %i.b, align 8, !tbaa !58
  store i64 %i.l, ptr %i.f, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !25
  store i8 %i.n, ptr %i.m, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.o = load i64, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.p, align 8, !tbaa !24
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !21
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !26   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load i64, ptr %i.w, align 8, !tbaa !24   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.x, ptr %i.a, align 8, !tbaa !58
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i6, label %._crit_edge.i.i5

.noexc.i6:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i6
  store ptr %i.z, ptr %i.s, align 8, !tbaa !26
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !58
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !25
  br label %._crit_edge.i.i5

._crit_edge.i.i5:                                 ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ab = phi ptr [ %i.z, %.noexc ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.x, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i5
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !25
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !25
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i5
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !58  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !24
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void

bb.g:                                             ; preds = %.noexc.i6
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !26  ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.f
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ak = load i64, ptr %i.f, align 8, !tbaa !25
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ah
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !67     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN6openzl10visualizer15StreamdumpEntryEE8allocateEmPKv.exit.i.i.i, !prof !70

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

_ZNSt15__new_allocatorIN6openzl10visualizer15StreamdumpEntryEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #23
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN6openzl10visualizer15StreamdumpEntryEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN6openzl10visualizer15StreamdumpEntryEE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !67
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !68
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !69
  %i.m = load ptr, ptr %1, align 8, !tbaa !48     ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6openzl10visualizer15StreamdumpEntryESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN6openzl10visualizer15StreamdumpEntryEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN6openzl10visualizer15StreamdumpEntryEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN6openzl10visualizer15StreamdumpEntryEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN6openzl10visualizer15StreamdumpEntryC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN6openzl10visualizer15StreamdumpEntryEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN6openzl10visualizer15StreamdumpEntryEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 72 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6openzl10visualizer15StreamdumpEntryESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #20 ; 0 uses
  invoke void @_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryEEvT_S4_(ptr noundef %i.i, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #22
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #24
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6openzl10visualizer15StreamdumpEntryESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN6openzl10visualizer15StreamdumpEntryEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructIN6openzl10visualizer15StreamdumpEntryEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !68
  ret void

.body:                                            ; preds = %bb.f
  %i.w = load ptr, ptr %0, align 8, !tbaa !67     ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN6openzl10visualizer15StreamdumpEntryESaIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !69
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #21
  br label %_ZNSt12_Vector_baseIN6openzl10visualizer15StreamdumpEntryESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN6openzl10visualizer15StreamdumpEntryESaIS2_EED2Ev.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %i.t
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_ISt17basic_string_viewIcS3_ES9_EESt10_Select1stISB_ESt4lessIS5_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !44
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !24   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.h) ; 2 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.k, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.m = load ptr, ptr %2, align 8, !tbaa !26
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.o = tail call i32 @memcmp(ptr noundef %i.n, ptr noundef %i.m, i64 noundef %.sroa.speculated.i.i.i) #20 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.p = sub i64 %i.h, %i.j
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.p, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.o, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.q = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.q, label %bb.n, label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %bb.b
  %i.r = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_ISt17basic_string_viewIcS3_ES9_EESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 0
  %i.t = extractvalue { ptr, ptr } %i.r, 1
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !24   ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !24   ; 4 uses
  %.sroa.speculated.i.i.i10 = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.v) ; 3 uses
  %i.y = icmp eq i64 %.sroa.speculated.i.i.i10, 0
  br i1 %i.y, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !26  ; 2 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.ac = tail call i32 @memcmp(ptr noundef %i.ab, ptr noundef %i.aa, i64 noundef %.sroa.speculated.i.i.i10) #20 ; 2 uses
  %.not.i.i.i12 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i12, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread68, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18: ; preds = %bb.e
  %i.ad = sub i64 %i.v, %i.x
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i32

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread68: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11
  %i.af = sub i64 %i.v, %i.x
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %bb.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i29

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11
  %i.ah = icmp slt i32 %i.ac, 0
  br i1 %i.ah, label %bb.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i29

bb.f:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread68, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !51 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, %1
  br i1 %i.ak, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #25 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !24 ; 2 uses
  %.sroa.speculated.i.i.i19 = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.an) ; 2 uses
  %i.ao = icmp eq i64 %.sroa.speculated.i.i.i19, 0
  br i1 %i.ao, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i23, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i20

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i20: ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.aq = load ptr, ptr %2, align 8, !tbaa !26
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !26
  %i.as = tail call i32 @memcmp(ptr noundef %i.ar, ptr noundef %i.aq, i64 noundef %.sroa.speculated.i.i.i19) #20 ; 2 uses
  %.not.i.i.i21 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i21, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i23, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i23: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i20, %bb.g
  %i.at = sub i64 %i.an, %i.v
  %spec.select7.i.i.i.i24 = tail call i64 @llvm.smax.i64(i64 %i.at, i64 -2147483648)
  %.08.i.i.i.i25 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i24, i64 2147483647)
  %.0.i6.i.i.i26 = trunc nsw i64 %.08.i.i.i.i25 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27

end_hunk_1
