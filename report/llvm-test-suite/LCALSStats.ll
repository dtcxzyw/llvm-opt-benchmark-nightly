inline.NumInlined: 1543
inline.NumDeleted: 476
begin_hunk_0_@_ZN8LoopStatD2Ev:bb.a
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIeSaIeEED2Ev.exit9, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit7
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #22
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit9

_ZNSt6vectorIeSaIeEED2Ev.exit9:                   ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit7, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !66   ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIeSaIeEED2Ev.exit11, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit9
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #22
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit11

_ZNSt6vectorIeSaIeEED2Ev.exit11:                  ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit9, %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !66   ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIeSaIeEED2Ev.exit13, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit11
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #22
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit13

_ZNSt6vectorIeSaIeEED2Ev.exit13:                  ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit11, %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !66   ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIeSaIeEED2Ev.exit15, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit13
  tail call void @_ZdlPv(ptr noundef nonnull %i.r) #22
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit15

_ZNSt6vectorIeSaIeEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit13, %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !62   ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit15
  tail call void @_ZdlPv(ptr noundef nonnull %i.t) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit15, %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !64   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !139  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i.i ], [ %i.v, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 2 uses
  %i.y = load ptr, ptr %.05.i.i.i, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.y) #22
  br label %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i.i:  ; preds = %bb.l, %.lr.ph.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %i.z, %i.x
  br i1 %.not.i.i.i17, label %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !140

_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.u, align 8, !tbaa !64
  br label %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorImSaImEED2Ev.exit
  %i.aa = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.v, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.aa) #22
  br label %_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exit.i, %bb.m
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !278
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !279  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !147  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  tail call void @_ZdlPv(ptr noundef %i.f) #22
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #22
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !280

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #16

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #9

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

declare { i64, i64 } @_ZNSi5tellgEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #7 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(240)) unnamed_addr #7 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #6

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i32 %2, ptr %3, i32 %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.peel.begin:
  %i.a = alloca i64, align 8                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 15, ptr %i.a, align 8, !tbaa !63
  %i.b = icmp eq i32 %4, -1                       ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %.not.i.i.i.i.peel = icmp ne ptr %1, null
  %i.d = icmp eq i32 %2, -1                       ; 2 uses
  %or.cond.i.i.i.i.peel = select i1 %.not.i.i.i.i.peel, i1 %i.d, i1 false
  br i1 %or.cond.i.i.i.i.peel, label %bb.a, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel

bb.a:                                             ; preds = %.peel.begin
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !281  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !283
  %i.i = icmp ult ptr %i.f, %i.h
  br i1 %i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel, !prof !224

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel: ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(64) %1), !inline_history !284 ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  %spec.select.peel = select i1 %i.n, ptr null, ptr %1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel: ; preds = %bb.a
  %i.o = load i8, ptr %i.f, align 1, !tbaa !34
  %i.p = zext i8 %i.o to i32
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel, %.peel.begin
  %.sroa.045.2.peel = phi ptr [ %1, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel ], [ %1, %.peel.begin ], [ %spec.select.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel ] ; 12 uses
  %.0.i.i.i.i.peel = phi i32 [ %i.p, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel ], [ %2, %.peel.begin ], [ %i.m, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel ] ; 2 uses
  %.not.i.i2.i.i.peel = icmp ne ptr %3, null
  %or.cond.i.i3.i.i.peel = select i1 %.not.i.i2.i.i.peel, i1 %i.b, i1 false
  br i1 %or.cond.i.i3.i.i.peel, label %bb.b, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel

bb.b:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !281
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !283
  %i.u = icmp ult ptr %i.r, %i.t
  br i1 %i.u, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel, !prof !224

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel: ; preds = %bb.b
  %i.v = load ptr, ptr %3, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i32 %i.x(ptr noundef nonnull align 8 dereferenceable(64) %3), !inline_history !284 ; 2 uses
  %i.z = icmp eq i32 %i.y, -1
  %spec.select56.peel = select i1 %i.z, ptr null, ptr %3
  br label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel: ; preds = %bb.b
  %i.aa = icmp eq i32 %.0.i.i.i.i.peel, -1
  br i1 %i.aa, label %bb.c, label %.preheader

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel
  %.sroa.042.2.peel = phi ptr [ %spec.select56.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel ], [ %3, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel ] ; 2 uses
  %.0.i.i4.i.i.peel = phi i32 [ %i.y, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel ], [ %4, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.peel, -1
  %i.ac = icmp eq i32 %.0.i.i4.i.i.peel, -1
  %i.ad = xor i1 %i.ab, %i.ac
  br i1 %i.ad, label %bb.c, label %.preheader

bb.c:                                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel
  %.sroa.042.2.peel105 = phi ptr [ %3, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel ], [ %.sroa.042.2.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel ]
  %.not.i.i.peel = icmp ne ptr %.sroa.045.2.peel, null
  %or.cond.i.i.peel = select i1 %.not.i.i.peel, i1 %i.d, i1 false
  br i1 %or.cond.i.i.peel, label %bb.d, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.045.2.peel, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !281 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.045.2.peel, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !283
  %i.ai = icmp ult ptr %i.af, %i.ah
  br i1 %i.ai, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.peel, !prof !224

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.peel: ; preds = %bb.d
  %i.aj = load ptr, ptr %.sroa.045.2.peel, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef i32 %i.al(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.2.peel), !inline_history !285 ; 2 uses
  %5 = icmp ne i32 %i.am, -1
  tail call void @llvm.assume(i1 %5)
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel: ; preds = %bb.d
  %i.an = load i8, ptr %i.af, align 1, !tbaa !34
  %i.ao = zext i8 %i.an to i32
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.peel, %bb.c
  %.0.i.i.peel = phi i32 [ %2, %bb.c ], [ %i.am, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.peel ], [ %i.ao, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel ]
  %i.ap = trunc i32 %.0.i.i.peel to i8
  store i8 %i.ap, ptr %i.c, align 8, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.045.2.peel, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !281 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.045.2.peel, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !283
  %i.au = icmp ult ptr %i.ar, %i.at
  br i1 %i.au, label %bb.f, label %bb.e, !prof !224

bb.e:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel
  %i.av = load ptr, ptr %.sroa.045.2.peel, align 8, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef i32 %i.ax(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.2.peel), !inline_history !286 ; 0 uses
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader

bb.f:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store ptr %i.az, ptr %i.aq, align 8, !tbaa !281
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader: ; preds = %bb.f, %bb.e
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader
  %.sroa.045.0 = phi ptr [ %.sroa.045.2.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader ], [ %.sroa.045.2, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge ] ; 6 uses
  %.sroa.042.0 = phi ptr [ %.sroa.042.2.peel105, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader ], [ %.sroa.042.2, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge ] ; 8 uses
  %.0 = phi i64 [ 1, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader ], [ %i.et, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.045.0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !281
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.045.0, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !283
  %i.be = icmp ult ptr %i.bb, %i.bd
  br i1 %i.be, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i, !prof !224

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel
  %i.bf = load ptr, ptr %.sroa.045.0, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call noundef i32 %i.bh(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.0), !inline_history !284 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, -1
  %spec.select = select i1 %i.bj, ptr null, ptr %.sroa.045.0
  %i.bk = icmp eq i32 %i.bi, -1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i
  %.sroa.045.2 = phi ptr [ %spec.select, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i ], [ %.sroa.045.0, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel ] ; 11 uses
  %.0.i.i.i.i = phi i1 [ %i.bk, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel ]
  %.not.i.i2.i.i = icmp ne ptr %.sroa.042.0, null
  %or.cond.i.i3.i.i = select i1 %.not.i.i2.i.i, i1 %i.b, i1 false
  br i1 %or.cond.i.i3.i.i, label %bb.g, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

bb.g:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.042.0, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !281 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.042.0, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !283
  %i.bp = icmp ult ptr %i.bm, %i.bo
  br i1 %i.bp, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i, !prof !224

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i: ; preds = %bb.g
  %i.bq = load i8, ptr %i.bm, align 1, !tbaa !34
  %i.br = zext i8 %i.bq to i32
  br label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i: ; preds = %bb.g
  %i.bs = load ptr, ptr %.sroa.042.0, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef i32 %i.bu(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.042.0), !inline_history !284 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, -1
  %spec.select56 = select i1 %i.bw, ptr null, ptr %.sroa.042.0
  br label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i
  %.sroa.042.2 = phi ptr [ %.sroa.042.0, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i ], [ %.sroa.042.0, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i ], [ %spec.select56, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i ] ; 2 uses
  %.0.i.i4.i.i = phi i32 [ %i.br, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i ], [ %4, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i ], [ %i.bv, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i ]
  %i.bx = icmp eq i32 %.0.i.i4.i.i, -1
  %i.by = xor i1 %.0.i.i.i.i, %i.bx
  %i.bz = icmp samesign ult i64 %.0, 15
  %i.ca = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %i.ca, label %bb.v, label %.preheader

.preheader:                                       ; preds = %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel
  %.sroa.042.2.lcssa = phi ptr [ %.sroa.042.2.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel ], [ %3, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel ], [ %.sroa.042.2, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ] ; 7 uses
  %.sroa.045.2.lcssa = phi ptr [ %.sroa.045.2.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel ], [ %.sroa.045.2.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel ], [ %.sroa.045.2, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ] ; 8 uses
  %.sroa.11.0.lcssa = phi i32 [ %2, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel ], [ %2, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel ], [ -1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ] ; 3 uses
  %.0.lcssa = phi i64 [ 0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel ], [ 0, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel ], [ %.0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ] ; 10 uses
  %.not.i.i.i.i15.peel = icmp ne ptr %.sroa.045.2.lcssa, null
  %i.cb = icmp eq i32 %.sroa.11.0.lcssa, -1       ; 2 uses
  %or.cond.i.i.i.i16.peel = select i1 %.not.i.i.i.i15.peel, i1 %i.cb, i1 false
  br i1 %or.cond.i.i.i.i16.peel, label %bb.h, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17.peel

bb.h:                                             ; preds = %.preheader
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.045.2.lcssa, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !281 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.045.2.lcssa, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !283
  %i.cg = icmp ult ptr %i.cd, %i.cf
  br i1 %i.cg, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i25.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24.peel, !prof !224

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24.peel: ; preds = %bb.h
  %i.ch = load ptr, ptr %.sroa.045.2.lcssa, align 8, !tbaa !8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = invoke noundef i32 %i.cj(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.2.lcssa)
          to label %.noexc.peel unwind label %.loopexit.split-lp, !inline_history !287 ; 2 uses

.noexc.peel:                                      ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24.peel
  %i.cl = icmp eq i32 %i.ck, -1
  %spec.select60.peel = select i1 %i.cl, ptr null, ptr %.sroa.045.2.lcssa
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17.peel

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i25.peel: ; preds = %bb.h
  %i.cm = load i8, ptr %i.cd, align 1, !tbaa !34
  %i.cn = zext i8 %i.cm to i32
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17.peel

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i25.peel, %.noexc.peel, %.preheader
  %.sroa.045.4.peel = phi ptr [ %.sroa.045.2.lcssa, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i25.peel ], [ %.sroa.045.2.lcssa, %.preheader ], [ %spec.select60.peel, %.noexc.peel ] ; 10 uses
  %.0.i.i.i.i18.peel = phi i32 [ %i.cn, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i25.peel ], [ %.sroa.11.0.lcssa, %.preheader ], [ %i.ck, %.noexc.peel ] ; 3 uses
  %.not.i.i2.i.i19.peel = icmp ne ptr %.sroa.042.2.lcssa, null
  %or.cond.i.i3.i.i20.peel = select i1 %.not.i.i2.i.i19.peel, i1 %i.b, i1 false
  br i1 %or.cond.i.i3.i.i20.peel, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17.peel
  %i.co = icmp eq i32 %.0.i.i.i.i18.peel, -1
  %i.cp = xor i1 %i.b, %i.co
  br i1 %i.cp, label %bb.l, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit

bb.j:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17.peel
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.042.2.lcssa, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !281
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.042.2.lcssa, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !283
  %i.cu = icmp ult ptr %i.cr, %i.ct
  br i1 %i.cu, label %.thr_comm.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22.peel, !prof !224

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22.peel: ; preds = %bb.j
  %i.cv = load ptr, ptr %.sroa.042.2.lcssa, align 8, !tbaa !8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = invoke noundef i32 %i.cx(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.042.2.lcssa)
          to label %.noexc26.peel unwind label %.loopexit.split-lp, !inline_history !287

.noexc26.peel:                                    ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22.peel
  %i.cz = icmp eq i32 %i.cy, -1
  br i1 %i.cz, label %bb.k, label %.thr_comm.peel

bb.k:                                             ; preds = %.noexc26.peel
  %.not.peel = icmp eq i32 %.0.i.i.i.i18.peel, -1
  br i1 %.not.peel, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit, label %bb.l

.thr_comm.peel:                                   ; preds = %.noexc26.peel, %bb.j
  %i.da = icmp eq i32 %.0.i.i.i.i18.peel, -1
  br i1 %i.da, label %bb.l, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit

bb.l:                                             ; preds = %.thr_comm.peel, %bb.k, %bb.i
  %.sroa.042.354.peel = phi ptr [ %.sroa.042.2.lcssa, %.thr_comm.peel ], [ %.sroa.042.2.lcssa, %bb.i ], [ null, %bb.k ]
  %i.db = load i64, ptr %i.a, align 8, !tbaa !63
  %i.dc = icmp eq i64 %.0.lcssa, %i.db
  br i1 %i.dc, label %bb.m, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l
  %.pre = load ptr, ptr %0, align 8, !tbaa !147
  br label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.dd = add nuw nsw i64 %.0.lcssa, 1
  store i64 %i.dd, ptr %i.a, align 8, !tbaa !63
  %i.de = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %.0.lcssa)
          to label %bb.n unwind label %.loopexit.split-lp75 ; 4 uses

bb.n:                                             ; preds = %bb.m
  %i.df = load ptr, ptr %0, align 8, !tbaa !147   ; 2 uses
  switch i64 %.0.lcssa, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel
  ]

bb.o:                                             ; preds = %bb.n
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !34
  store i8 %i.dg, ptr %i.de, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.de, ptr align 1 %i.df, i64 %.0.lcssa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel: ; preds = %bb.p, %bb.o, %bb.n
  %i.dh = load ptr, ptr %0, align 8, !tbaa !147   ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.c
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel
  call void @_ZdlPv(ptr noundef %i.dh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.peel
  store ptr %i.de, ptr %0, align 8, !tbaa !147
  %i.dj = load i64, ptr %i.a, align 8, !tbaa !63
  store i64 %i.dj, ptr %i.c, align 8, !tbaa !34
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel
  %i.dk = phi ptr [ %.pre, %._crit_edge ], [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel ]
  %.not.i.i28.peel = icmp ne ptr %.sroa.045.4.peel, null
  %or.cond.i.i29.peel = select i1 %.not.i.i28.peel, i1 %i.cb, i1 false
  br i1 %or.cond.i.i29.peel, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.045.4.peel, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !281 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.045.4.peel, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !283
  %i.dp = icmp ult ptr %i.dm, %i.do
  br i1 %i.dp, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31.peel, !prof !224

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31.peel: ; preds = %bb.r
  %i.dq = load ptr, ptr %.sroa.045.4.peel, align 8, !tbaa !8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = invoke noundef i32 %i.ds(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.4.peel)
          to label %.noexc33.peel unwind label %.loopexit.split-lp80, !inline_history !288 ; 2 uses

.noexc33.peel:                                    ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31.peel
  %6 = icmp ne i32 %i.dt, -1
  call void @llvm.assume(i1 %6)
  br label %bb.s

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32.peel: ; preds = %bb.r
  %i.du = load i8, ptr %i.dm, align 1, !tbaa !34
  %i.dv = zext i8 %i.du to i32
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32.peel, %.noexc33.peel, %bb.q
  %.0.i.i30.peel = phi i32 [ %.sroa.11.0.lcssa, %bb.q ], [ %i.dt, %.noexc33.peel ], [ %i.dv, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32.peel ]
  %i.dw = trunc i32 %.0.i.i30.peel to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.0.lcssa
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !34
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.045.4.peel, i64 16 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !281 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.045.4.peel, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !283
  %i.ec = icmp ult ptr %i.dz, %i.eb
  br i1 %i.ec, label %bb.u, label %bb.t, !prof !224

bb.t:                                             ; preds = %bb.s
  %i.ed = load ptr, ptr %.sroa.045.4.peel, align 8, !tbaa !8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 80
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = invoke noundef i32 %i.ef(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.4.peel)
          to label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader unwind label %.loopexit.split-lp, !inline_history !289 ; 0 uses

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader: ; preds = %bb.u, %bb.t
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel

bb.u:                                             ; preds = %bb.s
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  store ptr %i.eh, ptr %i.dy, align 8, !tbaa !281
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader

bb.v:                                             ; preds = %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.not.i.i.not = icmp eq ptr %.sroa.045.2, null
  br i1 %.not.i.i.not, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.045.2, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !281 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.045.2, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !283
  %i.em = icmp ult ptr %i.ej, %i.el
  br i1 %i.em, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i, !prof !224

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i: ; preds = %bb.w
  %i.en = load i8, ptr %i.ej, align 1, !tbaa !34
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i: ; preds = %bb.w
  %i.eo = load ptr, ptr %.sroa.045.2, align 8, !tbaa !8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 72
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = tail call noundef i32 %i.eq(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.2), !inline_history !285 ; 2 uses
  %7 = icmp ne i32 %i.er, -1
  tail call void @llvm.assume(i1 %7)
  %i.es = trunc i32 %i.er to i8
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i, %bb.v, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i
  %.0.i.i = phi i8 [ -1, %bb.v ], [ %i.es, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i ], [ %i.en, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i ]
  %i.et = add nuw nsw i64 %.0, 1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0
  store i8 %.0.i.i, ptr %i.eu, align 1, !tbaa !34
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.045.2, i64 16 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !281 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.045.2, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !283
  %i.ez = icmp ult ptr %i.ew, %i.ey
  br i1 %i.ez, label %bb.x, label %bb.y, !prof !224

bb.x:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  store ptr %i.fa, ptr %i.ev, align 8, !tbaa !281
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge: ; preds = %bb.x, %bb.y
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel, !llvm.loop !290

bb.y:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit
  %i.fb = load ptr, ptr %.sroa.045.2, align 8, !tbaa !8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 80
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = tail call noundef i32 %i.fd(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.2), !inline_history !286 ; 0 uses
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader
  %.sroa.045.1 = phi ptr [ %.sroa.045.4.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader ], [ %.sroa.045.4, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge ] ; 6 uses
  %.sroa.042.1 = phi ptr [ %.sroa.042.354.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader ], [ %.sroa.042.354, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge ] ; 7 uses
  %.1.in = phi i64 [ %.0.lcssa, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader ], [ %.1, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge ] ; 2 uses
  %.1 = add i64 %.1.in, 1                         ; 9 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.045.1, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !281
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.045.1, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !283
  %i.fj = icmp ult ptr %i.fg, %i.fi
  br i1 %i.fj, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24, !prof !224

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel
  %i.fk = load ptr, ptr %.sroa.045.1, align 8, !tbaa !8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 72
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = invoke noundef i32 %i.fm(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.1)
          to label %.noexc unwind label %.loopexit, !inline_history !287 ; 2 uses

.noexc:                                           ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24
  %i.fo = icmp eq i32 %i.fn, -1
  %spec.select60 = select i1 %i.fo, ptr null, ptr %.sroa.045.1
  %i.fp = icmp eq i32 %i.fn, -1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel, %.noexc
  %.sroa.045.4 = phi ptr [ %spec.select60, %.noexc ], [ %.sroa.045.1, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel ] ; 10 uses
  %.0.i.i.i.i18 = phi i1 [ %i.fp, %.noexc ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel ] ; 3 uses
  %.not.i.i2.i.i19 = icmp ne ptr %.sroa.042.1, null
  %or.cond.i.i3.i.i20 = select i1 %.not.i.i2.i.i19, i1 %i.b, i1 false
  br i1 %or.cond.i.i3.i.i20, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.042.1, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !281
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.042.1, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !283
  %i.fu = icmp ult ptr %i.fr, %i.ft
  br i1 %i.fu, label %.thr_comm, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22, !prof !224

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22: ; preds = %bb.z
  %i.fv = load ptr, ptr %.sroa.042.1, align 8, !tbaa !8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 72
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = invoke noundef i32 %i.fx(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.042.1)
          to label %.noexc26 unwind label %.loopexit, !inline_history !287

.noexc26:                                         ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22
  %i.fz = icmp eq i32 %i.fy, -1
  br i1 %i.fz, label %bb.aa, label %.thr_comm

bb.aa:                                            ; preds = %.noexc26
  br i1 %.0.i.i.i.i18, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit, label %bb.ac

.thr_comm:                                        ; preds = %bb.z, %.noexc26
  br i1 %.0.i.i.i.i18, label %bb.ac, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit

bb.ab:                                            ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17
  %i.ga = xor i1 %i.b, %.0.i.i.i.i18
  br i1 %i.ga, label %bb.ac, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit

bb.ac:                                            ; preds = %bb.aa, %.thr_comm, %bb.ab
  %.sroa.042.354 = phi ptr [ %.sroa.042.1, %.thr_comm ], [ %.sroa.042.1, %bb.ab ], [ null, %bb.aa ]
  %i.gb = load i64, ptr %i.a, align 8, !tbaa !63
  %i.gc = icmp eq i64 %.1, %i.gb
  br i1 %i.gc, label %bb.ad, label %._crit_edge84

._crit_edge84:                                    ; preds = %bb.ac
  %.pre85 = load ptr, ptr %0, align 8, !tbaa !147
  br label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.gd = add i64 %.1.in, 2
  store i64 %i.gd, ptr %i.a, align 8, !tbaa !63
  %i.ge = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %.1)
          to label %bb.ae unwind label %.loopexit74 ; 4 uses

bb.ae:                                            ; preds = %bb.ad
  %i.gf = load ptr, ptr %0, align 8, !tbaa !147   ; 2 uses
  switch i64 %.1, label %bb.ag [
    i64 1, label %bb.af
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.af:                                            ; preds = %bb.ae
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !34
  store i8 %i.gg, ptr %i.ge, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ge, ptr align 1 %i.gf, i64 %.1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.ag, %bb.af, %bb.ae
  %i.gh = load ptr, ptr %0, align 8, !tbaa !147   ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.c
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  call void @_ZdlPv(ptr noundef %i.gh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ge, ptr %0, align 8, !tbaa !147
  %i.gj = load i64, ptr %i.a, align 8, !tbaa !63
  store i64 %i.gj, ptr %i.c, align 8, !tbaa !34
  br label %bb.ah

.loopexit:                                        ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22, %bb.al
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp:                               ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22.peel, %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit74:                                      ; preds = %bb.ad
  %lpad.loopexit76 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp75:                             ; preds = %bb.m
  %lpad.loopexit.split-lp77 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ah:                                            ; preds = %._crit_edge84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
  %i.gk = phi ptr [ %.pre85, %._crit_edge84 ], [ %i.ge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit ]
  %.not.i.i28.not = icmp eq ptr %.sroa.045.4, null
  br i1 %.not.i.i28.not, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.045.4, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !281 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.045.4, i64 24
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !283
  %i.gp = icmp ult ptr %i.gm, %i.go
  br i1 %i.gp, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31, !prof !224

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32: ; preds = %bb.ai
  %i.gq = load i8, ptr %i.gm, align 1, !tbaa !34
  br label %bb.aj

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31: ; preds = %bb.ai
  %i.gr = load ptr, ptr %.sroa.045.4, align 8, !tbaa !8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 72
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = invoke noundef i32 %i.gt(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.4)
          to label %.noexc33 unwind label %.loopexit79, !inline_history !288 ; 2 uses

.noexc33:                                         ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31
  %8 = icmp ne i32 %i.gu, -1
  call void @llvm.assume(i1 %8)
  %i.gv = trunc i32 %i.gu to i8
  br label %bb.aj

bb.aj:                                            ; preds = %.noexc33, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32, %bb.ah
  %.0.i.i30 = phi i8 [ -1, %bb.ah ], [ %i.gv, %.noexc33 ], [ %i.gq, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32 ]
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.1
  store i8 %.0.i.i30, ptr %i.gw, align 1, !tbaa !34
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.045.4, i64 16 ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !281 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.045.4, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !283
  %i.hb = icmp ult ptr %i.gy, %i.ha
  br i1 %i.hb, label %bb.ak, label %bb.al, !prof !224

bb.ak:                                            ; preds = %bb.aj
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 1
  store ptr %i.hc, ptr %i.gx, align 8, !tbaa !281
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge

bb.al:                                            ; preds = %bb.aj
  %i.hd = load ptr, ptr %.sroa.045.4, align 8, !tbaa !8
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 80
  %i.hf = load ptr, ptr %i.he, align 8
  %i.hg = invoke noundef i32 %i.hf(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.4)
          to label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge unwind label %.loopexit, !inline_history !289 ; 0 uses

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge: ; preds = %bb.al, %bb.ak
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel, !llvm.loop !292

.loopexit79:                                      ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31
  %lpad.loopexit81 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp80:                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31.peel
  %lpad.loopexit.split-lp82 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit: ; preds = %bb.aa, %.thr_comm, %bb.ab, %.thr_comm.peel, %bb.k, %bb.i
  %.1.lcssa67 = phi i64 [ %.0.lcssa, %bb.i ], [ %.0.lcssa, %bb.k ], [ %.0.lcssa, %.thr_comm.peel ], [ %.1, %bb.ab ], [ %.1, %.thr_comm ], [ %.1, %bb.aa ] ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.1.lcssa67, ptr %i.hh, align 8, !tbaa !78
  %i.hi = load ptr, ptr %0, align 8, !tbaa !147
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.1.lcssa67
  store i8 0, ptr %i.hj, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

bb.am:                                            ; preds = %.loopexit79, %.loopexit.split-lp80, %.loopexit74, %.loopexit.split-lp75, %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp77, %.loopexit.split-lp75 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit76, %.loopexit74 ], [ %lpad.loopexit81, %.loopexit79 ], [ %lpad.loopexit.split-lp82, %.loopexit.split-lp80 ]
  %i.hk = load ptr, ptr %0, align 8, !tbaa !147   ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.c
  br i1 %i.hl, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.am
  call void @_ZdlPv(ptr noundef %i.hk) #22
  br label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit40

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit40: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #12

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIeEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), x86_fp80 noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !126  ; 2 uses
  %.not = icmp eq ptr %i.b, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
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
  %.sroa.515.023.i.i.i.i.i = phi i32 [ %spec.select19.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.f, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.012.022.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.b, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %.sroa.59.021.i.i.i.i.i = phi i32 [ %.sroa.59.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.r, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.07.020.i.i.i.i.i = phi ptr [ %.sroa.07.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.t, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %i.u = add i32 %.sroa.515.023.i.i.i.i.i, -1
  %i.v = icmp eq i32 %.sroa.515.023.i.i.i.i.i, 0  ; 2 uses
  %spec.select.idx.i.i.i.i.i = select i1 %i.v, i64 -8, i64 0
  %spec.select.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.012.022.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i ; 2 uses
  %spec.select19.i.i.i.i.i = select i1 %i.v, i32 63, i32 %i.u ; 2 uses
  %i.w = zext nneg i32 %spec.select19.i.i.i.i.i to i64
  %i.x = shl nuw i64 1, %i.w
  %i.y = add i32 %.sroa.59.021.i.i.i.i.i, -1
  %i.z = icmp eq i32 %.sroa.59.021.i.i.i.i.i, 0   ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i = select i1 %i.z, i64 -8, i64 0
  %.sroa.07.1.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.020.i.i.i.i.i, i64 %.sroa.07.1.idx.i.i.i.i.i ; 4 uses
  %.sroa.59.1.i.i.i.i.i = select i1 %i.z, i32 63, i32 %i.y ; 2 uses
  %i.aa = zext nneg i32 %.sroa.59.1.i.i.i.i.i to i64
  %i.ab = shl nuw i64 1, %i.aa                    ; 2 uses
  %i.ac = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !63
  %i.ad = and i64 %i.ac, %i.x
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.ae = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !63
  %i.af = or i64 %i.ae, %i.ab
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

bb.d:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.ag = xor i64 %i.ab, -1
  %i.ah = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !63
  %i.ai = and i64 %i.ah, %i.ag
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i:      ; preds = %bb.d, %bb.c
  %storemerge.i.i.i.i.i = phi i64 [ %i.af, %bb.c ], [ %i.ai, %bb.d ]
  store i64 %storemerge.i.i.i.i.i, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !63
  %i.aj = add nsw i64 %.024.i.i.i.i.i, -1
  %i.ak = icmp sgt i64 %.024.i.i.i.i.i, 1
  br i1 %i.ak, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !293

_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit: ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i, %bb.b
  %i.al = shl nuw i64 1, %i.l                     ; 2 uses
  br i1 %3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.am = load i64, ptr %1, align 8, !tbaa !63
  %i.an = or i64 %i.am, %i.al
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.f:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.ao = xor i64 %i.al, -1
  %i.ap = load i64, ptr %1, align 8, !tbaa !63
  %i.aq = and i64 %i.ap, %i.ao
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.e, %bb.f
  %storemerge = phi i64 [ %i.aq, %bb.f ], [ %i.an, %bb.e ]
  store i64 %storemerge, ptr %1, align 8, !tbaa !63
  %i.ar = add i32 %i.f, 1
  store i32 %i.ar, ptr %i.e, align 8, !tbaa !113
  %i.as = icmp eq i32 %i.f, 63
  br i1 %i.as, label %bb.g, label %_ZNSt13_Bit_iteratorppEv.exit

bb.g:                                             ; preds = %_ZNSt14_Bit_referenceaSEb.exit
  store i32 0, ptr %i.e, align 8, !tbaa !113
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.at, ptr %i.a, align 8, !tbaa !112
  br label %_ZNSt13_Bit_iteratorppEv.exit

bb.h:                                             ; preds = %bb.a
  %i.au = load ptr, ptr %0, align 8, !tbaa !112   ; 4 uses
  %i.av = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.aw = sub i64 %i.g, %i.av                     ; 2 uses
  %i.ax = shl nsw i64 %i.aw, 3
  %i.ay = zext i32 %i.f to i64                    ; 2 uses
  %i.az = add nsw i64 %i.ax, %i.ay                ; 4 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775744
  br i1 %i.ba, label %bb.i, label %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #19
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
  %i.bi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #20 ; 5 uses
  %i.bj = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bk = sub i64 %i.bj, %i.av                    ; 4 uses
  %i.bl = icmp sgt i64 %i.bk, 8
  br i1 %i.bl, label %bb.j, label %bb.k, !prof !224

bb.j:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr align 8 %i.au, i64 %i.bk, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.k:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  %i.bm = icmp eq i64 %i.bk, 8
  br i1 %i.bm, label %bb.l, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bn = load i64, ptr %i.au, align 8, !tbaa !63
end_hunk_0
