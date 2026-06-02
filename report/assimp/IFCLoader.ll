inline.NumInlined: 2494
inline.NumDeleted: 1209
begin_hunk_0_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFPN6Assimp4STEP6ObjectERKNS9_2DBERKNS9_7EXPRESS4LISTEEESt10_Select1stISL_ESt4lessIS5_ESaISL_EE8_M_eraseEPSt13_Rb_tree_nodeISL_E:bb.a
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFPN6Assimp4STEP6ObjectERKNS9_2DBERKNS9_7EXPRESS4LISTEEESt10_Select1stISL_ESt4lessIS5_ESaISL_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISL_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFPN6Assimp4STEP6ObjectERKNS9_2DBERKNS9_7EXPRESS4LISTEEESt10_Select1stISL_ESt4lessIS5_ESaISL_EE8_M_eraseEPSt13_Rb_tree_nodeISL_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFPN6Assimp4STEP6ObjectERKNS9_2DBERKNS9_7EXPRESS4LISTEEESt10_Select1stISL_ESt4lessIS5_ESaISL_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISL_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #32
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFPN6Assimp4STEP6ObjectERKNS9_2DBERKNS9_7EXPRESS4LISTEEESt10_Select1stISL_ESt4lessIS5_ESaISL_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISL_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFPN6Assimp4STEP6ObjectERKNS9_2DBERKNS9_7EXPRESS4LISTEEESt10_Select1stISL_ESt4lessIS5_ESaISL_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISL_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #32
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !65

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFPN6Assimp4STEP6ObjectERKNS9_2DBERKNS9_7EXPRESS4LISTEEESt10_Select1stISL_ESt4lessIS5_ESaISL_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISL_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcUnitAssignmentEEcvPKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.j unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0, label %bb.f, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #28
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.h, label %_ZNK6Assimp4STEP10LazyObject5ToPtrINS_3IFC10Schema_2x317IfcUnitAssignmentEEEPKT_v.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %.pre.i.i = load ptr, ptr %i.k, align 8
  br label %_ZNK6Assimp4STEP10LazyObject5ToPtrINS_3IFC10Schema_2x317IfcUnitAssignmentEEEPKT_v.exit

_ZNK6Assimp4STEP10LazyObject5ToPtrINS_3IFC10Schema_2x317IfcUnitAssignmentEEEPKT_v.exit: ; preds = %bb.g, %bb.h
  %i.m = phi ptr [ %.pre.i.i, %bb.h ], [ %i.l, %bb.g ]
  %i.n = tail call noundef ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x317IfcUnitAssignmentE, i64 -1) #28
  ret ptr %i.n

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcUnitAssignmentEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.k unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0, label %bb.f, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #28
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.h, label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %.pre.i.i = load ptr, ptr %i.k, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i:          ; preds = %bb.h, %bb.g
  %i.m = phi ptr [ %.pre.i.i, %bb.h ], [ %i.l, %bb.g ]
  %i.n = tail call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x317IfcUnitAssignmentE, i64 -1) #28 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x317IfcUnitAssignmentEEERKT_v.exit

bb.i:                                             ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  tail call void @__cxa_bad_cast() #30
  unreachable

_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x317IfcUnitAssignmentEEERKT_v.exit: ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  ret ptr %i.n

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.k:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_111ConvertUnitERKN6Assimp4STEP7EXPRESS8DataTypeERNS0_3IFC14ConversionDataE(ptr noundef nonnull readonly align 8 captures(address) dereferenceable(8) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(392) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = tail call ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %0, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS6ENTITYE, i64 0) #28 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_ZNK6Assimp4STEP7EXPRESS8DataType2ToINS1_6ENTITYEEERKT_v.exit

bb.b:                                             ; preds = %bb.a
  invoke void @__cxa_bad_cast() #30
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNK6Assimp4STEP7EXPRESS8DataType2ToINS1_6ENTITYEEERKT_v.exit: ; preds = %bb.a
  %i.f = tail call ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.d, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS6ENTITYE, i64 0) #28 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.invoke, label %_ZNK6Assimp4STEP7EXPRESS8DataType2ToINS1_6ENTITYEEERKT_v.exit.i

_ZNK6Assimp4STEP7EXPRESS8DataType2ToINS1_6ENTITYEEERKT_v.exit.i: ; preds = %_ZNK6Assimp4STEP7EXPRESS8DataType2ToINS1_6ENTITYEEERKT_v.exit
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !19, !align !30
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNK6Assimp4STEP2DB13MustGetObjectEm(ptr noundef nonnull align 8 dereferenceable(392) %i.i, i64 noundef %i.k)
          to label %.noexc14 unwind label %bb.e   ; 2 uses

.noexc14:                                         ; preds = %_ZNK6Assimp4STEP7EXPRESS8DataType2ToINS1_6ENTITYEEERKT_v.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK6Assimp4STEP10LazyObjectptEv.exit.i

bb.c:                                             ; preds = %.noexc14
  invoke void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %.noexc15 unwind label %bb.e

.noexc15:                                         ; preds = %bb.c
  %.pre.i.i.i = load ptr, ptr %i.m, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectptEv.exit.i

_ZNK6Assimp4STEP10LazyObjectptEv.exit.i:          ; preds = %.noexc15, %.noexc14
  %i.o = phi ptr [ %.pre.i.i.i, %.noexc15 ], [ %i.n, %.noexc14 ]
  %i.p = tail call ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.o, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x312IfcNamedUnitE, i64 -1) #28 ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.invoke, label %_ZNK6Assimp4STEP7EXPRESS8DataType13ResolveSelectINS_3IFC10Schema_2x312IfcNamedUnitEEERKT_RKNS0_2DBE.exit

.invoke:                                          ; preds = %_ZNK6Assimp4STEP10LazyObjectptEv.exit.i, %_ZNK6Assimp4STEP7EXPRESS8DataType2ToINS1_6ENTITYEEERKT_v.exit
  invoke void @__cxa_bad_cast() #30
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

_ZNK6Assimp4STEP7EXPRESS8DataType13ResolveSelectINS_3IFC10Schema_2x312IfcNamedUnitEEERKT_RKNS0_2DBE.exit: ; preds = %_ZNK6Assimp4STEP10LazyObjectptEv.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.t = load i64, ptr %i.s, align 8
  switch i64 %i.t, label %_ZN12_GLOBAL__N_111ConvertUnitERKN6Assimp3IFC10Schema_2x312IfcNamedUnitERNS1_14ConversionDataE.exit [
    i64 10, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 14, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNK6Assimp4STEP7EXPRESS8DataType13ResolveSelectINS_3IFC10Schema_2x312IfcNamedUnitEEERKT_RKNS0_2DBE.exit
  %i.u = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.v = load i64, ptr %i.u, align 1
  %i.w = xor i64 %i.v, 5644497234789549388
  %i.x = getelementptr i8, ptr %i.u, i64 8
  %i.y = load i16, ptr %i.x, align 1
  %i.z = zext i16 %i.y to i64
  %i.aa = xor i64 %i.z, 21577
  %i.ab = or i64 %i.w, %i.aa
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread40, label %_ZN12_GLOBAL__N_111ConvertUnitERKN6Assimp3IFC10Schema_2x312IfcNamedUnitERNS1_14ConversionDataE.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18: ; preds = %_ZNK6Assimp4STEP7EXPRESS8DataType13ResolveSelectINS_3IFC10Schema_2x312IfcNamedUnitEEERKT_RKNS0_2DBE.exit
  %i.ae = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.af = load i64, ptr %i.ae, align 1
  %i.ag = xor i64 %i.af, 5138115990797765712
  %i.ah = getelementptr i8, ptr %i.ae, i64 6
  %i.ai = load i64, ptr %i.ah, align 1
  %i.aj = xor i64 %i.ai, 6073471700627638094
  %i.ak = or i64 %i.ag, %i.aj
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %.not46 = icmp eq i32 %i.am, 0
  br i1 %.not46, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread40, label %_ZN12_GLOBAL__N_111ConvertUnitERKN6Assimp3IFC10Schema_2x312IfcNamedUnitERNS1_14ConversionDataE.exit

bb.d:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt8bad_cast
  br label %.body

bb.e:                                             ; preds = %.invoke, %.noexc36, %bb.g, %.noexc20, %.noexc29, %bb.h, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread, %bb.r, %.noexc19, %bb.c, %_ZNK6Assimp4STEP7EXPRESS8DataType2ToINS1_6ENTITYEEERKT_v.exit.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt8bad_cast
  br label %.body

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread40: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ap = load ptr, ptr %i.p, align 8
  %i.aq = getelementptr i8, ptr %i.ap, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %i.p, i64 %i.ar ; 2 uses
  %i.at = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.as, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x39IfcSIUnitE, i64 -1) #28 ; 7 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread40
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 10
  br i1 %i.ax, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39, label %.noexc21

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39: ; preds = %bb.f
  %i.ay = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.az = load i64, ptr %i.ay, align 1
  %i.ba = xor i64 %i.az, 5644497234789549388
  %i.bb = getelementptr i8, ptr %i.ay, i64 8
  %i.bc = load i16, ptr %i.bb, align 1
  %i.bd = zext i16 %i.bc to i64
  %i.be = xor i64 %i.bd, 21577
  %i.bf = or i64 %i.ba, %i.be
  %i.bg = icmp ne i64 %i.bf, 0
  %i.bh = zext i1 %i.bg to i32
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39.thread, label %.noexc21thread-pre-split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 104
  %i.bk = load i8, ptr %i.bj, align 8, !range !32, !noundef !19
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %.noexc19, label %.noexc20

.noexc19:                                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39.thread
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  %i.bn = invoke noundef double @_ZN6Assimp3IFC15ConvertSIPrefixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.bm)
          to label %.noexc20 unwind label %bb.e, !inline_history !66

.noexc20:                                         ; preds = %.noexc19, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39.thread
  %i.bo = phi double [ 1.000000e+00, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39.thread ], [ %i.bn, %.noexc19 ]
  store double %i.bo, ptr %1, align 8
  %i.bp = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc35 unwind label %bb.e

.noexc35:                                         ; preds = %.noexc20
  br i1 %i.bp, label %.noexc21thread-pre-split, label %bb.g

bb.g:                                             ; preds = %.noexc35
  %i.bq = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc36 unwind label %bb.e

.noexc36:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr @.str, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger5debugIJPKcRA27_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(27) @.str.43)
          to label %.noexc37 unwind label %bb.e

.noexc37:                                         ; preds = %.noexc36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.noexc21thread-pre-split

.noexc21thread-pre-split:                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39, %.noexc37, %.noexc35
  %.pr = load i64, ptr %i.av, align 8
  br label %.noexc21

.noexc21:                                         ; preds = %bb.f, %.noexc21thread-pre-split
  %i.br = phi i64 [ %.pr, %.noexc21thread-pre-split ], [ %i.aw, %bb.f ]
  %i.bs = icmp eq i64 %i.br, 14
  br i1 %i.bs, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34, label %_ZN12_GLOBAL__N_111ConvertUnitERKN6Assimp3IFC10Schema_2x312IfcNamedUnitERNS1_14ConversionDataE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34: ; preds = %.noexc21
  %i.bt = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 1
  %i.bv = xor i64 %i.bu, 5138115990797765712
  %i.bw = getelementptr i8, ptr %i.bt, i64 6
  %i.bx = load i64, ptr %i.bw, align 1
  %i.by = xor i64 %i.bx, 6073471700627638094
  %i.bz = or i64 %i.bv, %i.by
  %i.ca = icmp ne i64 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread, label %_ZN12_GLOBAL__N_111ConvertUnitERKN6Assimp3IFC10Schema_2x312IfcNamedUnitERNS1_14ConversionDataE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34
  %i.cd = getelementptr inbounds nuw i8, ptr %i.at, i64 120
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = icmp eq i64 %i.ce, 6
  br i1 %i.cf, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread
  %i.cg = getelementptr inbounds nuw i8, ptr %i.at, i64 112
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 1
  %i.cj = xor i32 %i.ci, 1229209938
end_hunk_0
begin_hunk_1_@_ZN6Assimp6Logger5debugIJPKcRA28_S2_EEEvDpOT_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.r, ptr %4, align 8
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.t = getelementptr i8, ptr %i.r, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %4, i64 %i.u
  store ptr %i.s, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #32
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.w, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ad) #28
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ae) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.g:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.h:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %3, align 8               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.h
  %i.ak = load i64, ptr %i.ai, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.g
  %.pn = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.ag, %bb.h ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERA28_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(28) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(28) %3) #28
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(28) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !167
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !167
  store i8 0, ptr %i.c, align 8, !alias.scope !167
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !167 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !167 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !167 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !167 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !167
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #32
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #32
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #28
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #28
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(392) %2, ptr noundef %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %14 = alloca %"class.std::unique_ptr.268", align 8 ; 9 uses
  %15 = alloca %class.aiMatrix4x4t, align 16      ; 21 uses
  %16 = alloca %class.aiMatrix4x4t, align 8       ; 19 uses
  %17 = alloca %"class.std::set.131", align 8     ; 12 uses
  %18 = alloca %class.aiMatrix4x4t, align 8       ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::allocator", align 1   ; 5 uses
  %22 = alloca %"class.std::set.131", align 8     ; 12 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %33 = alloca %"class.std::map.231", align 8     ; 12 uses
  %34 = alloca %struct.aiString, align 4          ; 6 uses
  %35 = alloca %"class.std::vector.240", align 8  ; 13 uses
  %36 = alloca %"class.std::unique_ptr.268", align 8 ; 9 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::vector.240", align 8  ; 12 uses
  %39 = alloca %class.aiMatrix4x4t.76, align 4    ; 5 uses
  %40 = alloca %class.aiMatrix4x4t, align 16      ; 12 uses
  %41 = alloca %"class.std::unique_ptr.268", align 8 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !19, !align !30 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 192 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !19, !align !168
  %i.m = load i8, ptr %i.l, align 4, !range !32, !noundef !19
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.b, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA50_KcEEEvDpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %1, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q
  %i.s = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.r, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x38IfcSpaceE, i64 -1) #28
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA50_KcEEEvDpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = tail call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.t, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA50_KcEEEvDpOT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  store ptr @.str, ptr %i.g, align 8
  call void @_ZN6Assimp6Logger12verboseDebugIJPKcRA50_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(50) @.str.60)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA50_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA50_KcEEEvDpOT_.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0116 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ true, %bb.d ]
  %i.v = load ptr, ptr %i.k, align 8, !nonnull !19, !align !168
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = load i8, ptr %i.w, align 2, !range !32, !noundef !19
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA50_KcEEEvDpOT_.exit
  %i.z = load ptr, ptr %1, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %1, i64 %i.ab
  %i.ad = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.ac, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x313IfcAnnotationE, i64 -1) #28
  %.not148 = icmp eq ptr %i.ad, null
  br i1 %.not148, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.ae, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA55_KcEEEvDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  store ptr @.str, ptr %i.f, align 8
  call void @_ZN6Assimp6Logger12verboseDebugIJPKcRA55_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 1 dereferenceable(55) @.str.61)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA55_KcEEEvDpOT_.exit

bb.h:                                             ; preds = %bb.e, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA50_KcEEEvDpOT_.exit
  %i.ag = call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #29 ; 33 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.ag)
          to label %bb.i unwind label %bb.ar

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #28
  %i.ah = load ptr, ptr %1, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %1, i64 %i.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !noalias !169 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 7 uses
  store ptr %i.an, ptr %31, align 8, !alias.scope !169
  %i.ao = icmp eq ptr %i.am, null
  br i1 %i.ao, label %.noexc.i, label %bb.j

.noexc.i:                                         ; preds = %bb.i
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #30
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ap = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.am) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28, !noalias !169
  store i64 %i.ap, ptr %i.e, align 8, !noalias !169
  %i.aq = icmp ugt i64 %i.ap, 15
  br i1 %i.aq, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.j
  %i.ar = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.ar, ptr %31, align 8, !alias.scope !169
  %i.as = load i64, ptr %i.e, align 8, !noalias !169
  store i64 %i.as, ptr %i.an, align 8, !alias.scope !169
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.j
  %i.at = phi ptr [ %i.ar, %.noexc.i.i ], [ %i.an, %bb.j ] ; 2 uses
  switch i64 %i.ap, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev.exit
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.au = load i8, ptr %i.am, align 1
  store i8 %i.au, ptr %i.at, align 1
  br label %_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev.exit

bb.l:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 1 %i.am, i64 %i.ap, i1 false)
  br label %_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev.exit

_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.i, %bb.k, %bb.l
  %i.av = load i64, ptr %i.e, align 8, !noalias !169 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  store i64 %i.av, ptr %i.aw, align 8, !alias.scope !169
  %i.ax = load ptr, ptr %31, align 8, !alias.scope !169
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28, !noalias !169
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.az = load i64, ptr %i.aw, align 8, !noalias !172
  %i.ba = icmp eq i64 %i.az, 4611686018427387903
  br i1 %i.ba, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.m:                                             ; preds = %_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #30
          to label %.noexc unwind label %bb.as

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev.exit
  %i.bb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @.str.62, i64 noundef 1)
          to label %.noexc179 unwind label %bb.as ; 6 uses

.noexc179:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 7 uses
  store ptr %i.bc, ptr %30, align 8, !alias.scope !172
  %i.bd = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 5 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.n:                                             ; preds = %.noexc179
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bh = load i64, ptr %i.bg, align 8            ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.bj, i1 false)
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc179
  store ptr %i.bd, ptr %30, align 8, !alias.scope !172
  %i.bk = load i64, ptr %i.be, align 8
  store i64 %i.bk, ptr %i.bc, align 8, !alias.scope !172
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %i.bl = phi i64 [ %i.bh, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  store i64 %i.bl, ptr %i.bn, align 8, !alias.scope !172
  store ptr %i.be, ptr %i.bb, align 8
  store i64 0, ptr %i.bm, align 8
  store i8 0, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #28
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bp = load i8, ptr %i.bo, align 8, !range !32, !noundef !19
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.p, label %._crit_edge.i.i182

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bs = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 3 uses
  store ptr %i.bs, ptr %32, align 8
  %i.bt = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bv = load i64, ptr %i.bu, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 %i.bv, ptr %i.d, align 8
  %i.bw = icmp ugt i64 %i.bv, 15
  br i1 %i.bw, label %.noexc.i180, label %._crit_edge.i.i

.noexc.i180:                                      ; preds = %bb.p
  %i.bx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc181 unwind label %bb.at ; 2 uses

.noexc181:                                        ; preds = %.noexc.i180
  store ptr %i.bx, ptr %32, align 8
  %i.by = load i64, ptr %i.d, align 8
  store i64 %i.by, ptr %i.bs, align 8
  br label %._crit_edge.i.i
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE:bb.a

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit: ; preds = %bb.dx, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.de
  %.sroa.38.4 = phi ptr [ %.sroa.38.0962, %bb.de ], [ %i.wt, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.38.0962, %bb.dx ]
  %.sroa.18449.4 = phi ptr [ %.sroa.18449.0963, %bb.de ], [ %i.ws, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.we, %bb.dx ]
  %.sroa.0439.4 = phi ptr [ %.sroa.0439.0964, %bb.de ], [ %i.wp, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0439.0964, %bb.dx ]
  %.3137 = phi i1 [ %.0134981, %bb.de ], [ %.2136, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.2136, %bb.dx ]
  %i.wu = phi <16 x double> [ %i.oa, %bb.de ], [ %i.wd, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.wd, %bb.dx ]
  %i.wv = load ptr, ptr %38, align 8              ; 3 uses
  %i.ww = load ptr, ptr %i.nv, align 8            ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.wv, %i.ww
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp3IFC11TempOpeningES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i299

.lr.ph.i.i.i299:                                  ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit, %.lr.ph.i.i.i299
  %.05.i.i.i = phi ptr [ %i.wx, %.lr.ph.i.i.i299 ], [ %i.wv, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  call void @_ZN6Assimp3IFC11TempOpeningD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.05.i.i.i) #28
  %i.wx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i300 = icmp eq ptr %i.wx, %i.ww
  br i1 %.not.i.i.i300, label %_ZSt8_DestroyIPN6Assimp3IFC11TempOpeningES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i299, !llvm.loop !195

_ZSt8_DestroyIPN6Assimp3IFC11TempOpeningES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i299
  %.pr.i = load ptr, ptr %38, align 8
  br label %_ZSt8_DestroyIPN6Assimp3IFC11TempOpeningES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp3IFC11TempOpeningES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp3IFC11TempOpeningES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit
  %i.wy = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6Assimp3IFC11TempOpeningES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.wv, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.wy, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EED2Ev.exit, label %bb.ec

bb.ec:                                            ; preds = %_ZSt8_DestroyIPN6Assimp3IFC11TempOpeningES2_EvT_S4_RSaIT0_E.exit.i
  %i.wz = load ptr, ptr %i.ny, align 8
  %i.xa = ptrtoint ptr %i.wz to i64
  %i.xb = ptrtoint ptr %i.wy to i64
  %i.xc = sub i64 %i.xa, %i.xb
  call void @_ZdlPvm(ptr noundef nonnull %i.wy, i64 noundef %i.xc) #32
  br label %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3IFC11TempOpeningES2_EvT_S4_RSaIT0_E.exit.i, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  %i.xd = load ptr, ptr %36, align 8              ; 3 uses
  %.not.i301 = icmp eq ptr %i.xd, null
  br i1 %.not.i301, label %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i

_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i:    ; preds = %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EED2Ev.exit
  call void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144) %i.xd) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.xd, i64 noundef 1144) #32
  br label %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EED2Ev.exit, %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  br label %.loopexit525

bb.ed:                                            ; preds = %.loopexit536, %.loopexit.split-lp537, %bb.dv, %bb.dw, %bb.dq, %bb.dp
  %.sroa.38.09621338 = phi ptr [ %.sroa.38.0962, %bb.dp ], [ %.sroa.38.0962, %bb.dv ], [ %.sroa.38.0962, %bb.dq ], [ %.sroa.38.0962, %bb.dw ], [ %.sroa.18449.0963, %.loopexit536 ], [ %.sroa.18449.0963, %.loopexit.split-lp537 ]
  %.pn168.pn = phi { ptr, i32 } [ %i.ss, %bb.dp ], [ %i.wa, %bb.dv ], [ %i.st, %bb.dq ], [ %i.wb, %bb.dw ], [ %lpad.loopexit538, %.loopexit536 ], [ %lpad.loopexit.split-lp539, %.loopexit.split-lp537 ]
  call void @_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %38) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.do
  %.sroa.38.09621337 = phi ptr [ %.sroa.38.09621338, %bb.ed ], [ %.sroa.38.0962, %bb.do ]
  %.pn168.pn.pn = phi { ptr, i32 } [ %.pn168.pn, %bb.ed ], [ %i.sr, %bb.do ]
  call void @_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #28
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.dn, %bb.dm
  %.sroa.38.09621336 = phi ptr [ %.sroa.38.09621337, %bb.ee ], [ %.sroa.38.0962, %bb.dn ], [ %.sroa.38.0962, %bb.dm ]
  %.pn168.pn.pn.pn = phi { ptr, i32 } [ %.pn168.pn.pn, %bb.ee ], [ %i.sq, %bb.dn ], [ %i.sp, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  br label %.body

.loopexit525:                                     ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit, %bb.cg, %bb.cd, %_ZNK6Assimp4STEP10LazyObjectptEv.exit283, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit, %bb.cz, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit
  %.sroa.38.5 = phi ptr [ %.sroa.38.0962, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %.sroa.38.0962, %_ZNK6Assimp4STEP10LazyObjectptEv.exit283 ], [ %.sroa.38.4, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit ], [ %.sroa.38.0962, %bb.cz ], [ %.sroa.38.0962, %bb.cd ], [ %.sroa.38.0962, %bb.cg ], [ %.sroa.38.3, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.18449.5 = phi ptr [ %.sroa.18449.0963, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %.sroa.18449.0963, %_ZNK6Assimp4STEP10LazyObjectptEv.exit283 ], [ %.sroa.18449.4, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit ], [ %.sroa.18449.0963, %bb.cz ], [ %.sroa.18449.0963, %bb.cd ], [ %.sroa.18449.0963, %bb.cg ], [ %.sroa.18449.3, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.0439.5 = phi ptr [ %.sroa.0439.0964, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %.sroa.0439.0964, %_ZNK6Assimp4STEP10LazyObjectptEv.exit283 ], [ %.sroa.0439.4, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit ], [ %.sroa.0439.0964, %bb.cz ], [ %.sroa.0439.0964, %bb.cd ], [ %.sroa.0439.0964, %bb.cg ], [ %.sroa.0439.3, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.7141 = phi i1 [ %.0134981, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %.0134981, %_ZNK6Assimp4STEP10LazyObjectptEv.exit283 ], [ %.3137, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit ], [ %.0134981, %bb.cz ], [ %.0134981, %bb.cd ], [ %.0134981, %bb.cg ], [ %.0134981, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ]
  %i.xe = phi <16 x double> [ %i.oa, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %i.oa, %_ZNK6Assimp4STEP10LazyObjectptEv.exit283 ], [ %i.wu, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit ], [ %i.oa, %bb.cz ], [ %i.oa, %bb.cd ], [ %i.oa, %bb.cg ], [ %i.oa, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ]
  %i.xf = load ptr, ptr %.sroa.0426.0961, align 8 ; 2 uses
  %.not508 = icmp eq ptr %i.xf, %.sroa.03.0.i.i261
  br i1 %.not508, label %.lr.ph997, label %bb.bz, !llvm.loop !196

bb.eg:                                            ; preds = %.lr.ph997, %bb.fn
  %.sroa.0439.7996 = phi ptr [ %.sroa.0439.5, %.lr.ph997 ], [ %.sroa.0439.8, %bb.fn ] ; 10 uses
  %.sroa.18449.7995 = phi ptr [ %.sroa.18449.5, %.lr.ph997 ], [ %.sroa.18449.8, %bb.fn ] ; 11 uses
  %.sroa.38.7994 = phi ptr [ %.sroa.38.5, %.lr.ph997 ], [ %.sroa.38.8, %bb.fn ] ; 15 uses
  %.sroa.0433.0993 = phi ptr [ %.sroa.06.1.i.i.i259, %.lr.ph997 ], [ %i.abg, %bb.fn ] ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %.sroa.0433.0993, i64 16
  %i.xh = load ptr, ptr %i.fu, align 8            ; 2 uses
  %.not10.i.i.i302 = icmp eq ptr %i.xh, null
  %.pre1403 = load i64, ptr %i.xg, align 8        ; 4 uses
  br i1 %.not10.i.i.i302, label %_ZNSt3setImSt4lessImESaImEE4findERKm.exit314.thread, label %.lr.ph.i.i.i303

.lr.ph.i.i.i303:                                  ; preds = %bb.eg, %.lr.ph.i.i.i303
  %.012.i.i.i304 = phi ptr [ %.1.i.i.i309, %.lr.ph.i.i.i303 ], [ %i.xh, %bb.eg ] ; 3 uses
  %.0811.i.i.i305 = phi ptr [ %.19.i.i.i306, %.lr.ph.i.i.i303 ], [ %i.fv, %bb.eg ]
  %i.xi = getelementptr inbounds nuw i8, ptr %.012.i.i.i304, i64 32
  %i.xj = load i64, ptr %i.xi, align 8
  %i.xk = icmp ult i64 %i.xj, %.pre1403           ; 2 uses
  %.19.i.i.i306 = select i1 %i.xk, ptr %.0811.i.i.i305, ptr %.012.i.i.i304 ; 3 uses
  %.1.in.v.i.i.i307 = select i1 %i.xk, i64 24, i64 16
  %.1.in.i.i.i308 = getelementptr inbounds nuw i8, ptr %.012.i.i.i304, i64 %.1.in.v.i.i.i307
  %.1.i.i.i309 = load ptr, ptr %.1.in.i.i.i308, align 8 ; 2 uses
  %.not.i.i.i310 = icmp eq ptr %.1.i.i.i309, null
  br i1 %.not.i.i.i310, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i311, label %.lr.ph.i.i.i303, !llvm.loop !188

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i311: ; preds = %.lr.ph.i.i.i303
  %i.xl = icmp eq ptr %.19.i.i.i306, %i.fv
  br i1 %i.xl, label %_ZNSt3setImSt4lessImESaImEE4findERKm.exit314.thread, label %_ZNSt3setImSt4lessImESaImEE4findERKm.exit314

_ZNSt3setImSt4lessImESaImEE4findERKm.exit314:     ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i311
  %i.xm = getelementptr inbounds nuw i8, ptr %.19.i.i.i306, i64 32
  %i.xn = load i64, ptr %i.xm, align 8
  %i.xo = icmp ult i64 %.pre1403, %i.xn
  br i1 %i.xo, label %_ZNSt3setImSt4lessImESaImEE4findERKm.exit314.thread, label %bb.fn

_ZNSt3setImSt4lessImESaImEE4findERKm.exit314.thread: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i311, %bb.eg, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit314
  %i.xp = load ptr, ptr %i.h, align 8, !nonnull !19, !align !30 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 112
  %i.xr = load ptr, ptr %i.xq, align 8            ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xp, i64 104 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.xr, null
  br i1 %.not10.i.i.i.i, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3setImSt4lessImESaImEE4findERKm.exit314.thread, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.xr, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit314.thread ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.xs, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit314.thread ]
  %i.xt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.xu = load i64, ptr %i.xt, align 8
  %i.xv = icmp ult i64 %i.xu, %.pre1403           ; 2 uses
  %.19.i.i.i.i = select i1 %i.xv, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.xv, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i315 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i315, label %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !42

_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.xw = icmp eq ptr %.19.i.i.i.i, %i.xs
  br i1 %i.xw, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i

_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.xx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.xy = load i64, ptr %i.xx, align 8
  %i.xz = icmp ult i64 %.pre1403, %i.xy
  br i1 %i.xz, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit, label %bb.eh

bb.eh:                                            ; preds = %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i
  %i.ya = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.yb = load ptr, ptr %i.ya, align 8
  br label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit

_ZNK6Assimp4STEP2DB9GetObjectEm.exit:             ; preds = %bb.eh, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit314.thread
  %.0.i316 = phi ptr [ %i.yb, %bb.eh ], [ null, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i ], [ null, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit314.thread ], [ null, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i ] ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %.0.i316, i64 32 ; 2 uses
  %i.yd = load ptr, ptr %i.yc, align 8            ; 2 uses
  %.not.i.i317 = icmp eq ptr %i.yd, null
  br i1 %.not.i.i317, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %_ZNK6Assimp4STEP2DB9GetObjectEm.exit
  invoke void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %.0.i316)
          to label %.noexc319 unwind label %bb.em

.noexc319:                                        ; preds = %bb.ei
  %.pre.i.i318 = load ptr, ptr %i.yc, align 8
  br label %bb.ej

bb.ej:                                            ; preds = %.noexc319, %_ZNK6Assimp4STEP2DB9GetObjectEm.exit
  %i.ye = phi ptr [ %.pre.i.i318, %.noexc319 ], [ %i.yd, %_ZNK6Assimp4STEP2DB9GetObjectEm.exit ]
  %i.yf = call noundef ptr @__dynamic_cast(ptr nonnull %i.ye, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x316IfcRelAggregatesE, i64 -1) #28 ; 4 uses
  %.not159 = icmp eq ptr %i.yf, null
  br i1 %.not159, label %bb.fn, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 168
  %i.yh = invoke noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.yg)
          to label %bb.el unwind label %bb.em     ; 2 uses

bb.el:                                            ; preds = %bb.ek
  %i.yi = load ptr, ptr %i.yh, align 8
  %i.yj = getelementptr i8, ptr %i.yi, i64 -24
  %i.yk = load i64, ptr %i.yj, align 8
  %i.yl = getelementptr inbounds i8, ptr %i.yh, i64 %i.yk
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 8
  %i.yn = load i64, ptr %i.ym, align 8
  %i.yo = load ptr, ptr %1, align 8
  %i.yp = getelementptr i8, ptr %i.yo, i64 -24
  %i.yq = load i64, ptr %i.yp, align 8
  %i.yr = getelementptr inbounds i8, ptr %1, i64 %i.yq
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 8
  %i.yt = load i64, ptr %i.ys, align 8
  %.not160 = icmp eq i64 %i.yn, %i.yt
  br i1 %.not160, label %bb.en, label %bb.fn

bb.em:                                            ; preds = %bb.ei, %bb.ek
  %i.yu = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

bb.en:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #28
  %i.yv = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #29
          to label %bb.eo unwind label %bb.ev     ; 10 uses

bb.eo:                                            ; preds = %bb.en
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.yv)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327 unwind label %bb.ew

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327: ; preds = %bb.eo
  store ptr %i.yv, ptr %41, align 8
  store i32 14, ptr %i.yv, align 4
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %i.yw, ptr noundef nonnull align 1 dereferenceable(14) @.str.65, i64 14, i1 false)
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yv, i64 18
  store i8 0, ptr %i.yx, align 2
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yv, i64 1096
  store ptr %i.ag, ptr %i.yy, align 8
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yv, i64 1028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.yz, ptr noundef nonnull align 4 dereferenceable(64) %i.nz, i64 64, i1 false)
  %i.za = getelementptr inbounds nuw i8, ptr %i.yf, i64 176 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yf, i64 184 ; 2 uses
  %i.zc = load ptr, ptr %i.zb, align 8
  %i.zd = load ptr, ptr %i.za, align 8
  %i.ze = ptrtoint ptr %i.zc to i64
  %i.zf = ptrtoint ptr %i.zd to i64
  %i.zg = sub i64 %i.ze, %i.zf
  %i.zh = call i64 @llvm.smax.i64(i64 %i.zg, i64 -1) ; 2 uses
  %i.zi = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.zh) #29
          to label %bb.ep unwind label %bb.ex     ; 2 uses

bb.ep:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.zi, i8 0, i64 %i.zh, i1 false)
  %i.zj = getelementptr inbounds nuw i8, ptr %i.yv, i64 1112
  store ptr %i.zi, ptr %i.zj, align 8
  %i.zk = load ptr, ptr %i.za, align 8            ; 2 uses
  %i.zl = load ptr, ptr %i.zb, align 8            ; 2 uses
  %.not512987 = icmp eq ptr %i.zk, %i.zl
  br i1 %.not512987, label %._crit_edge991, label %.lr.ph990

.lr.ph990.preheader:                              ; preds = %bb.fl
  %.pre1404 = load ptr, ptr %41, align 8
  br label %._crit_edge991

._crit_edge991:                                   ; preds = %.lr.ph990.preheader, %bb.ep
  %42 = phi ptr [ %.pre1404, %.lr.ph990.preheader ], [ %i.yv, %bb.ep ] ; 2 uses
  store ptr null, ptr %41, align 8
  %.not.i.i328 = icmp eq ptr %.sroa.18449.7995, %.sroa.38.7994
  br i1 %.not.i.i328, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %._crit_edge991
  store ptr %42, ptr %.sroa.18449.7995, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit337

bb.er:                                            ; preds = %._crit_edge991
  %i.zm = ptrtoint ptr %.sroa.18449.7995 to i64
  %i.zn = ptrtoint ptr %.sroa.0439.7996 to i64
  %i.zo = sub i64 %i.zm, %i.zn                    ; 6 uses
  %i.zp = icmp eq i64 %i.zo, 9223372036854775800
  br i1 %i.zp, label %bb.es, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i329

bb.es:                                            ; preds = %bb.er
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #30
          to label %.noexc335 unwind label %.loopexit.split-lp520

.noexc335:                                        ; preds = %bb.es
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i329: ; preds = %bb.er
  %i.zq = ashr exact i64 %i.zo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i330 = call i64 @llvm.umax.i64(i64 %i.zq, i64 1)
  %i.zr = add nsw i64 %.sroa.speculated.i.i.i.i330, %i.zq ; 2 uses
  %i.zs = icmp ult i64 %i.zr, %i.zq
  %i.zt = call i64 @llvm.umin.i64(i64 %i.zr, i64 1152921504606846975)
  %i.zu = select i1 %i.zs, i64 1152921504606846975, i64 %i.zt ; 3 uses
  %.not.i.i.i.i331 = icmp ne i64 %i.zu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i331)
  %i.zv = shl nuw nsw i64 %i.zu, 3
  %i.zw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zv) #29
          to label %.noexc336 unwind label %.loopexit519 ; 4 uses

.noexc336:                                        ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i329
  %i.zx = getelementptr inbounds i8, ptr %i.zw, i64 %i.zo ; 2 uses
  store ptr %42, ptr %i.zx, align 8
  %i.zy = icmp sgt i64 %i.zo, 0
  br i1 %i.zy, label %bb.et, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i332

bb.et:                                            ; preds = %.noexc336
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.zw, ptr align 8 %.sroa.0439.7996, i64 %i.zo, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i332

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i332: ; preds = %bb.et, %.noexc336
  %.not.i17.i.i.i333 = icmp eq ptr %.sroa.0439.7996, null
  br i1 %.not.i17.i.i.i333, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i334, label %bb.eu

bb.eu:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i332
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0439.7996, i64 noundef %i.zo) #32
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i334

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i334: ; preds = %bb.eu, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i332
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %i.zw, i64 %i.zu
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit337

bb.ev:                                            ; preds = %bb.en
  %i.aaa = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.fm

bb.ew:                                            ; preds = %bb.eo
  %i.aab = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZdlPvm(ptr noundef nonnull %i.yv, i64 noundef 1144) #32
  br label %bb.fm

bb.ex:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327
  %i.aac = landingpad { ptr, i32 }
          catch ptr null
  br label %.body349

.lr.ph990:                                        ; preds = %bb.ep, %bb.fl
  %.sroa.0395.0988 = phi ptr [ %i.abe, %bb.fl ], [ %i.zk, %bb.ep ] ; 2 uses
  %i.aad = load ptr, ptr %.sroa.0395.0988, align 8 ; 3 uses
  %i.aae = icmp eq ptr %i.aad, null
  br i1 %i.aae, label %bb.ey, label %bb.fd

bb.ey:                                            ; preds = %.lr.ph990
  %i.aaf = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.ez unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i341

bb.ez:                                            ; preds = %bb.ey
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.aaf, ptr noundef nonnull align 8 dereferenceable(32) %23, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.fa unwind label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  invoke void @__cxa_throw(ptr nonnull %i.aaf, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.fg unwind label %bb.fb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i341: ; preds = %bb.ey
  %i.aag = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br label %bb.fc

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %.0.i344 = phi i1 [ false, %bb.fa ], [ true, %bb.ez ] ; 2 uses
  %i.aah = landingpad { ptr, i32 }
          catch ptr null                          ; 4 uses
  %i.aai = load ptr, ptr %23, align 8             ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.aak = icmp eq ptr %i.aai, %i.aaj
  br i1 %i.aak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i345: ; preds = %bb.fb
  %i.aal = load i64, ptr %i.aaj, align 8
  %i.aam = add i64 %i.aal, 1
  call void @_ZdlPvm(ptr noundef %i.aai, i64 noundef %i.aam) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br i1 %.0.i344, label %bb.fc, label %.body349

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i346: ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br i1 %.0.i344, label %bb.fc, label %.body349

bb.fc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i346, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i345, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i341
  %.pn10.i342 = phi { ptr, i32 } [ %i.aag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i341 ], [ %i.aah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i346 ], [ %i.aah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i345 ]
  call void @__cxa_free_exception(ptr %i.aaf) #28
  br label %.body349

bb.fd:                                            ; preds = %.lr.ph990
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aad, i64 32 ; 2 uses
  %i.aao = load ptr, ptr %i.aan, align 8          ; 2 uses
  %.not.i.i.i338 = icmp eq ptr %i.aao, null
  br i1 %.not.i.i.i338, label %bb.fe, label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i339

bb.fe:                                            ; preds = %bb.fd
  invoke void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.aad)
          to label %.noexc347 unwind label %.loopexit518

.noexc347:                                        ; preds = %bb.fe
  %.pre.i.i.i340 = load ptr, ptr %i.aan, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i339

_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i339:     ; preds = %.noexc347, %bb.fd
  %i.aap = phi ptr [ %.pre.i.i.i340, %.noexc347 ], [ %i.aao, %bb.fd ]
  %i.aaq = call ptr @__dynamic_cast(ptr nonnull %i.aap, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x319IfcObjectDefinitionE, i64 -1) #28 ; 3 uses
  %i.aar = icmp eq ptr %i.aaq, null
  br i1 %i.aar, label %bb.ff, label %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEcvRKS4_Ev.exit

bb.ff:                                            ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i339
  invoke void @__cxa_bad_cast() #30
          to label %.noexc348 unwind label %.loopexit.split-lp

.noexc348:                                        ; preds = %bb.ff
  unreachable

bb.fg:                                            ; preds = %bb.fa
  unreachable

_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEcvRKS4_Ev.exit: ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i339
  %i.aas = load ptr, ptr %i.aaq, align 8
  %i.aat = getelementptr i8, ptr %i.aas, i64 -24
  %i.aau = load i64, ptr %i.aat, align 8
  %i.aav = getelementptr inbounds i8, ptr %i.aaq, i64 %i.aau
  %i.aaw = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.aav, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x310IfcProductE, i64 -1) #28 ; 2 uses
  %.not161 = icmp eq ptr %i.aaw, null
  br i1 %.not161, label %bb.fl, label %bb.fh

bb.fh:                                            ; preds = %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEcvRKS4_Ev.exit
  %43 = load ptr, ptr %41, align 8
  %i.aax = invoke fastcc noundef ptr @_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE(ptr noundef %43, ptr noundef nonnull align 8 dereferenceable(256) %i.aaw, ptr noundef nonnull align 8 dereferenceable(392) %2, ptr noundef null)
          to label %bb.fi unwind label %bb.fk     ; 2 uses

bb.fi:                                            ; preds = %bb.fh
  %.not163 = icmp eq ptr %i.aax, null
  br i1 %.not163, label %bb.fl, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %44 = load ptr, ptr %41, align 8                ; 2 uses
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 1112
  %i.aay = load ptr, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %44, i64 1104 ; 2 uses
  %i.aaz = load i32, ptr %46, align 8             ; 2 uses
  %i.aba = add i32 %i.aaz, 1
  store i32 %i.aba, ptr %46, align 8
  %i.abb = zext i32 %i.aaz to i64
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %i.aay, i64 %i.abb
  store ptr %i.aax, ptr %i.abc, align 8
  br label %bb.fl

.loopexit518:                                     ; preds = %bb.fe
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.body349

.loopexit.split-lp:                               ; preds = %bb.ff
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.body349

bb.fk:                                            ; preds = %bb.fh
  %i.abd = landingpad { ptr, i32 }
          catch ptr null
  br label %.body349

bb.fl:                                            ; preds = %bb.fi, %bb.fj, %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEcvRKS4_Ev.exit
  %i.abe = getelementptr inbounds nuw i8, ptr %.sroa.0395.0988, i64 8 ; 2 uses
  %.not512 = icmp eq ptr %i.abe, %i.zl
  br i1 %.not512, label %.lr.ph990.preheader, label %.lr.ph990

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit337: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i334, %bb.eq
  %.sroa.38.14 = phi ptr [ %i.zz, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i334 ], [ %.sroa.38.7994, %bb.eq ]
  %.pn513 = phi ptr [ %i.zx, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i334 ], [ %.sroa.18449.7995, %bb.eq ]
  %.sroa.0439.14 = phi ptr [ %i.zw, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i334 ], [ %.sroa.0439.7996, %bb.eq ]
  %.sroa.18449.14 = getelementptr inbounds nuw i8, ptr %.pn513, i64 8
  %i.abf = load ptr, ptr %41, align 8             ; 3 uses
  %.not.i351 = icmp eq ptr %i.abf, null
  br i1 %.not.i351, label %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit353, label %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i352

_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i352: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit337
  call void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144) %i.abf) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.abf, i64 noundef 1144) #32
  br label %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit353

_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit353: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit337, %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i352
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  br label %bb.fn

.loopexit519:                                     ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i329
  %lpad.loopexit521 = landingpad { ptr, i32 }
          catch ptr null
  br label %.body349

.loopexit.split-lp520:                            ; preds = %bb.es
  %lpad.loopexit.split-lp522 = landingpad { ptr, i32 }
          catch ptr null
  br label %.body349

.body349:                                         ; preds = %.loopexit519, %.loopexit.split-lp520, %.loopexit518, %.loopexit.split-lp, %bb.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i345, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i346, %bb.fc, %bb.ex
  %.sroa.38.79941270 = phi ptr [ %.sroa.38.7994, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i345 ], [ %.sroa.38.7994, %.loopexit.split-lp ], [ %.sroa.38.7994, %bb.ex ], [ %.sroa.38.7994, %bb.fk ], [ %.sroa.38.7994, %bb.fc ], [ %.sroa.38.7994, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i346 ], [ %.sroa.38.7994, %.loopexit518 ], [ %.sroa.18449.7995, %.loopexit519 ], [ %.sroa.18449.7995, %.loopexit.split-lp520 ]
  %.pn162.pn = phi { ptr, i32 } [ %i.aah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i345 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.aac, %bb.ex ], [ %i.abd, %bb.fk ], [ %.pn10.i342, %bb.fc ], [ %i.aah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i346 ], [ %lpad.loopexit, %.loopexit518 ], [ %lpad.loopexit521, %.loopexit519 ], [ %lpad.loopexit.split-lp522, %.loopexit.split-lp520 ]
  call void @_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %41) #28
  br label %bb.fm

bb.fm:                                            ; preds = %.body349, %bb.ew, %bb.ev
  %.sroa.38.79941269 = phi ptr [ %.sroa.38.79941270, %.body349 ], [ %.sroa.38.7994, %bb.ew ], [ %.sroa.38.7994, %bb.ev ]
  %.pn162.pn.pn = phi { ptr, i32 } [ %.pn162.pn, %.body349 ], [ %i.aab, %bb.ew ], [ %i.aaa, %bb.ev ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  br label %.body

bb.fn:                                            ; preds = %bb.el, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit353, %bb.ej, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit314
  %.sroa.38.8 = phi ptr [ %.sroa.38.7994, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit314 ], [ %.sroa.38.7994, %bb.ej ], [ %.sroa.38.14, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit353 ], [ %.sroa.38.7994, %bb.el ] ; 2 uses
  %.sroa.18449.8 = phi ptr [ %.sroa.18449.7995, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit314 ], [ %.sroa.18449.7995, %bb.ej ], [ %.sroa.18449.14, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit353 ], [ %.sroa.18449.7995, %bb.el ] ; 2 uses
  %.sroa.0439.8 = phi ptr [ %.sroa.0439.7996, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit314 ], [ %.sroa.0439.7996, %bb.ej ], [ %.sroa.0439.14, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit353 ], [ %.sroa.0439.7996, %bb.el ] ; 2 uses
  %i.abg = load ptr, ptr %.sroa.0433.0993, align 8 ; 2 uses
  %.not509 = icmp eq ptr %i.abg, %.sroa.03.0.i.i261
  br i1 %.not509, label %._crit_edge998, label %bb.eg, !llvm.loop !197

._crit_edge998:                                   ; preds = %.lr.ph.i.i.i.i.i249, %bb.br, %bb.fn, %bb.bt, %..loopexit_crit_edge21.i.i.i.i.i253, %.loopexit541
  %.sroa.38.7.lcssa = phi ptr [ %.sroa.38.8, %bb.fn ], [ null, %bb.bt ], [ null, %.loopexit541 ], [ null, %..loopexit_crit_edge21.i.i.i.i.i253 ], [ null, %bb.br ], [ null, %.lr.ph.i.i.i.i.i249 ] ; 13 uses
  %.sroa.18449.7.lcssa = phi ptr [ %.sroa.18449.8, %bb.fn ], [ null, %bb.bt ], [ null, %.loopexit541 ], [ null, %..loopexit_crit_edge21.i.i.i.i.i253 ], [ null, %bb.br ], [ null, %.lr.ph.i.i.i.i.i249 ] ; 13 uses
  %.sroa.0439.7.lcssa = phi ptr [ %.sroa.0439.8, %bb.fn ], [ null, %bb.bt ], [ null, %.loopexit541 ], [ null, %..loopexit_crit_edge21.i.i.i.i.i253 ], [ null, %bb.br ], [ null, %.lr.ph.i.i.i.i.i249 ] ; 13 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 4 uses
  store ptr %3, ptr %i.abh, align 8
  %.not157 = icmp eq ptr %3, null
  br i1 %.not157, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %._crit_edge998
  %i.abi = getelementptr inbounds nuw i8, ptr %2, i64 328
  store ptr %35, ptr %i.abi, align 8
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %._crit_edge998
  br i1 %.0116, label %bb.jv, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.abj = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.abk = load i8, ptr %i.abj, align 8, !range !32, !noundef !19
  %i.abl = trunc nuw i8 %i.abk to i1
  br i1 %i.abl, label %bb.fr, label %_ZN12_GLOBAL__N_128ProcessProductRepresentationERKN6Assimp3IFC10Schema_2x310IfcProductEP6aiNodeRSt6vectorIS7_SaIS7_EERNS1_14ConversionDataE.exit

bb.fr:                                            ; preds = %bb.fq
  %i.abm = load ptr, ptr %1, align 8
  %i.abn = getelementptr i8, ptr %i.abm, i64 -24
  %i.abo = load i64, ptr %i.abn, align 8
  %i.abp = getelementptr inbounds i8, ptr %1, i64 %i.abo
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 8
  %i.abr = load i64, ptr %i.abq, align 8
  %i.abs = invoke noundef i32 @_ZN6Assimp3IFC16ProcessMaterialsEmjRNS0_14ConversionDataEb(i64 noundef %i.abr, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(392) %2, i1 noundef zeroext false)
          to label %.noexc362 unwind label %bb.ju ; 2 uses

.noexc362:                                        ; preds = %bb.fr
  %i.abt = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  %i.abu = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  store i32 0, ptr %i.abu, align 8
  %i.abv = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  store ptr null, ptr %i.abv, align 8
  %i.abw = getelementptr inbounds nuw i8, ptr %22, i64 24
  store ptr %i.abu, ptr %i.abw, align 8
  %i.abx = getelementptr inbounds nuw i8, ptr %22, i64 32
  store ptr %i.abu, ptr %i.abx, align 8
  %i.aby = getelementptr inbounds nuw i8, ptr %22, i64 40
  store i64 0, ptr %i.aby, align 8
  %i.abz = invoke noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x324IfcProductRepresentationEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.abt)
          to label %bb.fs unwind label %bb.fy     ; 2 uses

bb.fs:                                            ; preds = %.noexc362
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 96 ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abz, i64 104 ; 2 uses
  %i.acc = load ptr, ptr %i.acb, align 8          ; 2 uses
  %i.acd = load ptr, ptr %i.aca, align 8          ; 2 uses
  %i.ace = ptrtoint ptr %i.acc to i64
  %i.acf = ptrtoint ptr %i.acd to i64
  %i.acg = sub i64 %i.ace, %i.acf                 ; 3 uses
  %i.ach = ashr exact i64 %i.acg, 3               ; 2 uses
  %i.aci = icmp ugt i64 %i.ach, 1152921504606846975
  br i1 %i.aci, label %bb.ft, label %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i

bb.ft:                                            ; preds = %bb.fs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #30
          to label %.noexc.i361 unwind label %bb.fz

.noexc.i361:                                      ; preds = %bb.ft
  unreachable

_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i: ; preds = %bb.fs
  %.not.i.i.i.i.i354 = icmp eq ptr %i.acc, %i.acd
  br i1 %.not.i.i.i.i.i354, label %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i, label %bb.fu

bb.fu:                                            ; preds = %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.acj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acg) #29
          to label %.noexc48.i unwind label %bb.fz ; 5 uses

.noexc48.i:                                       ; preds = %bb.fu
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 %i.acg ; 2 uses
  store ptr null, ptr %i.acj, align 8
  %i.acl = getelementptr i8, ptr %i.acj, i64 8    ; 3 uses
  %i.acm = add nsw i64 %i.ach, -1                 ; 2 uses
  %i.acn = icmp eq i64 %i.acm, 0
  br i1 %i.acn, label %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i, label %_ZSt6fill_nIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationEmS5_ET_S7_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationEmS5_ET_S7_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc48.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.acm, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.acl, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false)
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acl, i64 %.idx.i.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i

_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZSt6fill_nIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationEmS5_ET_S7_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc48.i, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %.sroa.14.0.i = phi ptr [ %i.ack, %_ZSt6fill_nIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationEmS5_ET_S7_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.ack, %.noexc48.i ], [ null, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i ] ; 2 uses
  %.sroa.0145.0.i = phi ptr [ %i.acj, %_ZSt6fill_nIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationEmS5_ET_S7_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.acj, %.noexc48.i ], [ null, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i ] ; 13 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.aco, %_ZSt6fill_nIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationEmS5_ET_S7_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.acl, %.noexc48.i ], [ null, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i ] ; 8 uses
  %i.acp = load ptr, ptr %i.aca, align 8          ; 2 uses
  %i.acq = load ptr, ptr %i.acb, align 8
  %i.acr = ptrtoint ptr %i.acq to i64
  %i.acs = ptrtoint ptr %i.acp to i64
  %i.act = sub i64 %i.acr, %i.acs
  %i.acu = ashr exact i64 %i.act, 3               ; 2 uses
  %i.acv = icmp sgt i64 %i.acu, 0
  br i1 %i.acv, label %.lr.ph.i.i.i.i.i.i, label %.loopexit194.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i, %.noexc49.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.acz, %.noexc49.i ], [ %i.acu, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.acy, %.noexc49.i ], [ %.sroa.0145.0.i, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i ] ; 2 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.acx, %.noexc49.i ], [ %i.acp, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i ] ; 2 uses
  %i.acw = invoke noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcRepresentationEEcvPKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %.0910.i.i.i.i.i.i)
          to label %.noexc49.i unwind label %.loopexit.split-lp184.loopexit.split-lp.loopexit.i

.noexc49.i:                                       ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.acw, ptr %.0811.i.i.i.i.i.i, align 8
  %i.acx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.acy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  %i.acz = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ada = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ada, label %.lr.ph.i.i.i.i.i.i, label %.loopexit194.i, !llvm.loop !198

.loopexit194.i:                                   ; preds = %.noexc49.i, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i
  %i.adb = ptrtoint ptr %.sroa.0145.0.i to i64    ; 2 uses
  %.not.i.i.i355 = icmp eq ptr %.sroa.0145.0.i, %.0.i.i.i.i.i.i
  br i1 %.not.i.i.i355, label %._crit_edge291.i, label %bb.fv

bb.fv:                                            ; preds = %.loopexit194.i
  %i.adc = ptrtoint ptr %.0.i.i.i.i.i.i to i64
  %i.add = sub i64 %i.adc, %i.adb                 ; 2 uses
  %i.ade = ashr exact i64 %i.add, 3
  %i.adf = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ade, i1 true)
  %i.adg = shl nuw nsw i64 %i.adf, 1
  %i.adh = xor i64 %i.adg, 126
  invoke fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_SI_T0_T1_(ptr %.sroa.0145.0.i, ptr %.0.i.i.i.i.i.i, i64 noundef %i.adh)
          to label %.noexc52.i unwind label %.loopexit.split-lp184.loopexit.split-lp.loopexit.split-lp.i

.noexc52.i:                                       ; preds = %bb.fv
  %i.adi = icmp sgt i64 %i.add, 128
  br i1 %i.adi, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %.noexc52.i
  %i.adj = getelementptr inbounds nuw i8, ptr %.sroa.0145.0.i, i64 128 ; 3 uses
  invoke fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_SI_T0_(ptr %.sroa.0145.0.i, ptr nonnull %i.adj)
          to label %.noexc53.i unwind label %.loopexit.split-lp184.loopexit.split-lp.loopexit.split-lp.i

.noexc53.i:                                       ; preds = %bb.fw
  %.not6.i.i.i.i.i = icmp eq ptr %i.adj, %.0.i.i.i.i.i.i
  br i1 %.not6.i.i.i.i.i, label %.lr.ph290.i, label %.lr.ph.i.i.i.i.i360

.lr.ph.i.i.i.i.i360:                              ; preds = %.noexc53.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_T0_.exit.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.adu, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_T0_.exit.i.i.i.i.i ], [ %i.adj, %.noexc53.i ] ; 5 uses
  %i.adk = load ptr, ptr %.sroa.0.07.i.i.i.i.i, align 8 ; 3 uses
  %.sroa.0.06.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i.i, i64 -8 ; 2 uses
  %i.adl = load ptr, ptr %.sroa.0.06.i.i.i.i.i.i, align 8
end_hunk_2
