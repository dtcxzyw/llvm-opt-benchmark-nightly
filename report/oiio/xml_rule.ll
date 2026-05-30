inline.NumInlined: 424
inline.NumDeleted: 209
begin_hunk_0_@_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJRKS5_EEEvSt14_List_iteratorIS5_EDpOT_:bb.a
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !9
  %i.e = load ptr, ptr %2, align 8, !tbaa !13     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.g, ptr %i.a, align 8, !tbaa !17
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit9.i ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.i, ptr %i.c, align 8, !tbaa !13
  %i.j = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.j, ptr %i.d, align 8, !tbaa !18
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !18
  store i8 %i.l, ptr %i.k, align 1, !tbaa !18
  br label %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_.exit

_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit9.i: ; preds = %.noexc.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 48) #23
  resume { ptr, i32 } %i.m

_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.n = load i64, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.n, ptr %i.o, align 8, !tbaa !16
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef %1) #22
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !94
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8, !tbaa !94
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !77     ; 2 uses
  %.not8.i = icmp eq ptr %i.a, %0
  br i1 %.not8.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.09.i = phi ptr [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.b = load ptr, ptr %.09.i, align 8, !tbaa !77 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.09.i, i64 32 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !18
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i, i64 noundef 48) #23
  %.not.i = icmp eq ptr %i.b, %0
  br i1 %.not.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv.exit, label %.lr.ph.i, !llvm.loop !78

_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.a
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN22photos_editing_formats8image_io11XmlTerminalEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN22photos_editing_formats8image_io11XmlTerminalEEvPT_.exit
  %.05 = phi ptr [ %i.x, %_ZSt8_DestroyIN22photos_editing_formats8image_io11XmlTerminalEEvPT_.exit ], [ %0, %bb.a ] ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.05, i64 152 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph
  %i.e = load i64, ptr %i.c, align 8, !tbaa !18
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05, i64 104 ; 2 uses
  %i.j = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !13   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05, i64 48 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !18
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.s = load ptr, ptr %.05, align 8, !tbaa !13   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyIN22photos_editing_formats8image_io11XmlTerminalEEvPT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !18
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #23
  br label %_ZSt8_DestroyIN22photos_editing_formats8image_io11XmlTerminalEEvPT_.exit

_ZSt8_DestroyIN22photos_editing_formats8image_io11XmlTerminalEEvPT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05, i64 168 ; 2 uses
  %.not = icmp eq ptr %i.x, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !95

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN22photos_editing_formats8image_io11XmlTerminalEEvPT_.exit, %bb.a
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE17_M_realloc_insertIJNS1_11DataScannerEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(100) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !24     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #24
  unreachable

_ZNKSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 168                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 54901024028897475)
  %i.l = select i1 %i.j, i64 54901024028897475, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %3 = mul nuw nsw i64 %i.l, 168                  ; 2 uses
  %4 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %3) #26 ; 6 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 %i.n ; 5 uses
  invoke void @_ZN22photos_editing_formats8image_io11DataScannerC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(168) %5, ptr noundef nonnull align 8 dereferenceable(100) %2)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %_ZNKSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE12_M_check_lenEmPKc.exit
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 32, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 152 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 144
  store i64 0, ptr %i.r, align 8, !tbaa !16
  store i8 0, ptr %i.q, align 8, !tbaa !18
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io11XmlTerminalES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.br, %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io11XmlTerminalES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %4, %bb.c ] ; 15 uses
  %.0911.i.i.i = phi ptr [ %i.bq, %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io11XmlTerminalES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %bb.c ] ; 21 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.s, ptr %.012.i.i.i, align 8, !tbaa !9, !alias.scope !96, !noalias !99
  %i.t = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !13, !alias.scope !99, !noalias !96 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !16, !alias.scope !99, !noalias !96 ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false), !alias.scope !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.t, ptr %.012.i.i.i, align 8, !tbaa !13, !alias.scope !96, !noalias !99
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !18, !alias.scope !99, !noalias !96
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !18, !alias.scope !96, !noalias !99
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !16, !alias.scope !99, !noalias !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.ab = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.x, %bb.d ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !16, !alias.scope !96, !noalias !99
  store ptr %i.u, ptr %.0911.i.i.i, align 8, !tbaa !13, !alias.scope !99, !noalias !96
  store i64 0, ptr %i.ac, align 8, !tbaa !16, !alias.scope !99, !noalias !96
  store i8 0, ptr %i.u, align 8, !tbaa !18, !alias.scope !99, !noalias !96
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !9, !alias.scope !96, !noalias !99
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !13, !alias.scope !99, !noalias !96 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !16, !alias.scope !99, !noalias !96 ; 3 uses
  %i.am = icmp ult i64 %i.al, 16
  tail call void @llvm.assume(i1 %i.am)
  %i.an = add nuw nsw i64 %i.al, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.ai, i64 %i.an, i1 false), !alias.scope !101
  br label %_ZN22photos_editing_formats8image_io11DataScannerC2EOS1_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !13, !alias.scope !96, !noalias !99
  %i.ao = load i64, ptr %i.ai, align 8, !tbaa !18, !alias.scope !99, !noalias !96
  store i64 %i.ao, ptr %i.ag, align 8, !tbaa !18, !alias.scope !96, !noalias !99
  %.phi.trans.insert6.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre7.i.i.i.i = load i64, ptr %.phi.trans.insert6.i.i.i.i, align 8, !tbaa !16, !alias.scope !99, !noalias !96
  br label %_ZN22photos_editing_formats8image_io11DataScannerC2EOS1_.exit.i.i.i.i.i

_ZN22photos_editing_formats8image_io11DataScannerC2EOS1_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i, %bb.e
  %i.ap = phi i64 [ %.pre7.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i ], [ %i.al, %bb.e ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.ap, ptr %i.ar, align 8, !tbaa !16, !alias.scope !96, !noalias !99
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !13, !alias.scope !99, !noalias !96
  store i64 0, ptr %i.aq, align 8, !tbaa !16, !alias.scope !99, !noalias !96
  store i8 0, ptr %i.ai, align 8, !tbaa !18, !alias.scope !99, !noalias !96
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.as, ptr noundef nonnull align 8 dereferenceable(36) %i.at, i64 36, i1 false), !alias.scope !101
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 104 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 128
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i8 0, i64 24, i1 false), !alias.scope !96, !noalias !99
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !74, !alias.scope !99, !noalias !96
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !74, !alias.scope !96, !noalias !99
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 120 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !69, !alias.scope !99, !noalias !96 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2EOS7_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN22photos_editing_formats8image_io11DataScannerC2EOS1_.exit.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 104
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 16, i1 false), !tbaa.struct !102, !alias.scope !101
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !69, !alias.scope !96, !noalias !99
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false), !alias.scope !99, !noalias !96
  br label %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2EOS7_.exit.i.i.i.i.i

_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2EOS7_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZN22photos_editing_formats8image_io11DataScannerC2EOS1_.exit.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 136 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 136 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 152 ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !9, !alias.scope !96, !noalias !99
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !13, !alias.scope !99, !noalias !96 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 152 ; 5 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2EOS7_.exit.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 144
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !16, !alias.scope !99, !noalias !96 ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 16
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.bj, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bl, i1 false), !alias.scope !101
  br label %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io11XmlTerminalES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2EOS7_.exit.i.i.i.i.i
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !13, !alias.scope !96, !noalias !99
  %i.bm = load i64, ptr %i.bg, align 8, !tbaa !18, !alias.scope !99, !noalias !96
  store i64 %i.bm, ptr %i.be, align 8, !tbaa !18, !alias.scope !96, !noalias !99
  %.phi.trans.insert8.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 144
  %.pre9.i.i.i.i = load i64, ptr %.phi.trans.insert8.i.i.i.i, align 8, !tbaa !16, !alias.scope !99, !noalias !96
  br label %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io11XmlTerminalES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN22photos_editing_formats8image_io11XmlTerminalES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.g
  %i.bn = phi i64 [ %i.bj, %bb.g ], [ %.pre9.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 144
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 144
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !16, !alias.scope !96, !noalias !99
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !13, !alias.scope !99, !noalias !96
  store i64 0, ptr %i.bo, align 8, !tbaa !16, !alias.scope !99, !noalias !96
  store i8 0, ptr %i.bg, align 8, !tbaa !18, !alias.scope !99, !noalias !96
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 168 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !103

_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io11XmlTerminalES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi ptr [ %4, %bb.c ], [ %i.br, %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io11XmlTerminalES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 168 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit46, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io11XmlTerminalES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i43
  %.012.i.i.i28 = phi ptr [ %i.ds, %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io11XmlTerminalES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i43 ], [ %i.bs, %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 15 uses
  %.0911.i.i.i29 = phi ptr [ %i.dr, %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io11XmlTerminalES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i43 ], [ %1, %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 21 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.bt, ptr %.012.i.i.i28, align 8, !tbaa !9, !alias.scope !104, !noalias !107
  %i.bu = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !13, !alias.scope !107, !noalias !104 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i30

bb.h:                                             ; preds = %.lr.ph.i.i.i27
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !16, !alias.scope !107, !noalias !104 ; 3 uses
  %i.bz = icmp ult i64 %i.by, 16
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = add nuw nsw i64 %i.by, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bt, ptr noundef nonnull align 8 dereferenceable(1) %i.bv, i64 %i.ca, i1 false), !alias.scope !109
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.bu, ptr %.012.i.i.i28, align 8, !tbaa !13, !alias.scope !104, !noalias !107
  %i.cb = load i64, ptr %i.bv, align 8, !tbaa !18, !alias.scope !107, !noalias !104
  store i64 %i.cb, ptr %i.bt, align 8, !tbaa !18, !alias.scope !104, !noalias !107
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !16, !alias.scope !107, !noalias !104
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i30, %bb.h
  %i.cc = phi i64 [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i30 ], [ %i.by, %bb.h ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.cc, ptr %i.ce, align 8, !tbaa !16, !alias.scope !104, !noalias !107
  store ptr %i.bv, ptr %.0911.i.i.i29, align 8, !tbaa !13, !alias.scope !107, !noalias !104
  store i64 0, ptr %i.cd, align 8, !tbaa !16, !alias.scope !107, !noalias !104
  store i8 0, ptr %i.bv, align 8, !tbaa !18, !alias.scope !107, !noalias !104
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 48 ; 3 uses
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !9, !alias.scope !104, !noalias !107
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !13, !alias.scope !107, !noalias !104 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 48 ; 5 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i34

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i33
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !16, !alias.scope !107, !noalias !104 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 16
  tail call void @llvm.assume(i1 %i.cn)
  %i.co = add nuw nsw i64 %i.cm, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ch, ptr noundef nonnull align 8 dereferenceable(1) %i.cj, i64 %i.co, i1 false), !alias.scope !109
  br label %_ZN22photos_editing_formats8image_io11DataScannerC2EOS1_.exit.i.i.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i33
  store ptr %i.ci, ptr %i.cf, align 8, !tbaa !13, !alias.scope !104, !noalias !107
  %i.cp = load i64, ptr %i.cj, align 8, !tbaa !18, !alias.scope !107, !noalias !104
  store i64 %i.cp, ptr %i.ch, align 8, !tbaa !18, !alias.scope !104, !noalias !107
  %.phi.trans.insert6.i.i.i.i35 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %.pre7.i.i.i.i36 = load i64, ptr %.phi.trans.insert6.i.i.i.i35, align 8, !tbaa !16, !alias.scope !107, !noalias !104
  br label %_ZN22photos_editing_formats8image_io11DataScannerC2EOS1_.exit.i.i.i.i.i37

_ZN22photos_editing_formats8image_io11DataScannerC2EOS1_.exit.i.i.i.i.i37: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i34, %bb.i
  %i.cq = phi i64 [ %.pre7.i.i.i.i36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i34 ], [ %i.cm, %bb.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 40
  store i64 %i.cq, ptr %i.cs, align 8, !tbaa !16, !alias.scope !104, !noalias !107
  store ptr %i.cj, ptr %i.cg, align 8, !tbaa !13, !alias.scope !107, !noalias !104
  store i64 0, ptr %i.cr, align 8, !tbaa !16, !alias.scope !107, !noalias !104
  store i8 0, ptr %i.cj, align 8, !tbaa !18, !alias.scope !107, !noalias !104
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ct, ptr noundef nonnull align 8 dereferenceable(36) %i.cu, i64 36, i1 false), !alias.scope !109
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 104 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 128
  %i.cx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, i8 0, i64 24, i1 false), !alias.scope !104, !noalias !107
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !74, !alias.scope !107, !noalias !104
  store ptr %i.cy, ptr %i.cw, align 8, !tbaa !74, !alias.scope !104, !noalias !107
  %i.cz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 120 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !69, !alias.scope !107, !noalias !104 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i38 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.not.i.i.i.i.i.i38, label %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2EOS7_.exit.i.i.i.i.i39, label %bb.j

bb.j:                                             ; preds = %_ZN22photos_editing_formats8image_io11DataScannerC2EOS1_.exit.i.i.i.i.i37
  %i.db = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 104
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %i.db, i64 16, i1 false), !tbaa.struct !102, !alias.scope !109
  store ptr %i.da, ptr %i.dc, align 8, !tbaa !69, !alias.scope !104, !noalias !107
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i8 0, i64 16, i1 false), !alias.scope !107, !noalias !104
  br label %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2EOS7_.exit.i.i.i.i.i39

_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2EOS7_.exit.i.i.i.i.i39: ; preds = %bb.j, %_ZN22photos_editing_formats8image_io11DataScannerC2EOS1_.exit.i.i.i.i.i37
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 136 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 136 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 152 ; 3 uses
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !9, !alias.scope !104, !noalias !107
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !13, !alias.scope !107, !noalias !104 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 152 ; 5 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i40

bb.k:                                             ; preds = %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2EOS7_.exit.i.i.i.i.i39
  %i.dj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 144
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !16, !alias.scope !107, !noalias !104 ; 3 uses
  %i.dl = icmp ult i64 %i.dk, 16
  tail call void @llvm.assume(i1 %i.dl)
  %i.dm = add nuw nsw i64 %i.dk, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.df, ptr noundef nonnull align 8 dereferenceable(1) %i.dh, i64 %i.dm, i1 false), !alias.scope !109
  br label %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io11XmlTerminalES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i40: ; preds = %_ZNSt8functionIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEEC2EOS7_.exit.i.i.i.i.i39
  store ptr %i.dg, ptr %i.dd, align 8, !tbaa !13, !alias.scope !104, !noalias !107
  %i.dn = load i64, ptr %i.dh, align 8, !tbaa !18, !alias.scope !107, !noalias !104
  store i64 %i.dn, ptr %i.df, align 8, !tbaa !18, !alias.scope !104, !noalias !107
  %.phi.trans.insert8.i.i.i.i41 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 144
  %.pre9.i.i.i.i42 = load i64, ptr %.phi.trans.insert8.i.i.i.i41, align 8, !tbaa !16, !alias.scope !107, !noalias !104
  br label %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io11XmlTerminalES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i43

_ZSt19__relocate_object_aIN22photos_editing_formats8image_io11XmlTerminalES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i43: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i40, %bb.k
  %i.do = phi i64 [ %i.dk, %bb.k ], [ %.pre9.i.i.i.i42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i40 ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 144
  %i.dq = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 144
  store i64 %i.do, ptr %i.dq, align 8, !tbaa !16, !alias.scope !104, !noalias !107
  store ptr %i.dh, ptr %i.de, align 8, !tbaa !13, !alias.scope !107, !noalias !104
  store i64 0, ptr %i.dp, align 8, !tbaa !16, !alias.scope !107, !noalias !104
  store i8 0, ptr %i.dh, align 8, !tbaa !18, !alias.scope !107, !noalias !104
  %i.dr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 168 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 168 ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.dr, %i.b
  br i1 %.not.i.i.i44, label %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit46, label %.lr.ph.i.i.i27, !llvm.loop !103

_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit46: ; preds = %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io11XmlTerminalES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i43, %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i45 = phi ptr [ %i.bs, %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.ds, %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io11XmlTerminalES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i43 ]
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i47 = icmp eq ptr %i.c, null
  br i1 %.not.i47, label %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit46
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !22
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = sub i64 %i.dv, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.dw) #23
  br label %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit46, %bb.l
  store ptr %4, ptr %0, align 8, !tbaa !24
  store ptr %.0.lcssa.i.i.i45, ptr %i.a, align 8, !tbaa !19
  %i.dx = getelementptr inbounds nuw [168 x i8], ptr %4, i64 %i.l
  store ptr %i.dx, ptr %i.dt, align 8, !tbaa !22
  ret void

bb.m:                                             ; preds = %bb.n
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

bb.n:                                             ; preds = %_ZNKSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE12_M_check_lenEmPKc.exit
  %i.dz = landingpad { ptr, i32 }
          catch ptr null
  %i.ea = extractvalue { ptr, i32 } %i.dz, 0
  %i.eb = tail call ptr @__cxa_begin_catch(ptr %i.ea) #22 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %4, i64 noundef %3) #23
  invoke void @__cxa_rethrow() #24
          to label %bb.q unwind label %bb.m

bb.o:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.dy

bb.p:                                             ; preds = %bb.m
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  tail call void @__clang_call_terminate(ptr %i.ed) #25
  unreachable

bb.q:                                             ; preds = %bb.n
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN22photos_editing_formats8image_io11DataScannerC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !9
  %i.d = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.f, ptr %i.b, align 8, !tbaa !17
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !13
  %i.i = load i64, ptr %i.b, align 8, !tbaa !17
  store i64 %i.i, ptr %i.c, align 8, !tbaa !18
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !18
  store i8 %i.k, ptr %i.j, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !16
  %i.n = load ptr, ptr %0, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !9
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !13   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.u, ptr %i.a, align 8, !tbaa !17
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i6, label %._crit_edge.i.i5

.noexc.i6:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i6
  store ptr %i.w, ptr %i.p, align 8, !tbaa !13
  %i.x = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.x, ptr %i.r, align 8, !tbaa !18
  br label %._crit_edge.i.i5

._crit_edge.i.i5:                                 ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.u, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i5
  %i.z = load i8, ptr %i.s, align 1, !tbaa !18
  store i8 %i.z, ptr %i.y, align 1, !tbaa !18
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i5
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !16
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ae, ptr noundef nonnull align 8 dereferenceable(36) %i.af, i64 36, i1 false)
  ret void

bb.g:                                             ; preds = %.noexc.i6
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.c
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.aj = load i64, ptr %i.c, align 8, !tbaa !18
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ag
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn }
attributes #25 = { noreturn nounwind }
attributes #26 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
end_hunk_0
