inline.NumInlined: 6572
inline.NumDeleted: 2480
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada21InputSemanticMapEntryESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_:bb.a

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada21InputSemanticMapEntryESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit, label %bb.b, !llvm.loop !170

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada21InputSemanticMapEntryESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada21InputSemanticMapEntryESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #28 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada21InputSemanticMapEntryESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada21InputSemanticMapEntryESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %1, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6Assimp7Collada21InputSemanticMapEntryEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Collada20SemanticMappingTableD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6Assimp7Collada21InputSemanticMapEntryEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada21InputSemanticMapEntryESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #33
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada21InputSemanticMapEntryESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit: ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada21InputSemanticMapEntryESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada21InputSemanticMapEntryESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Collada12MeshInstanceD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6Assimp7Collada20SemanticMappingTableEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada20SemanticMappingTableESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #33
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada20SemanticMappingTableESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit: ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada20SemanticMappingTableESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada20SemanticMappingTableESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA43_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA38_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(43) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(38) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  invoke void @_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA38_KcERA43_S7_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(43) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(38) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %4, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #28
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden void @_ZNK6Assimp13ColladaParser24CalculateResultTransformERKSt6vectorINS_7Collada9TransformESaIS3_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.aiMatrix4x4t) align 4 captures(none) initializes((0, 64)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(772) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #17 align 2 {
bb.a:
  store float 1.000000e+00, ptr %0, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 4
  %i.g = load ptr, ptr %2, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not158 = icmp eq ptr %i.g, %i.i
  br i1 %.not158, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.promoted = load float, ptr %0, align 1
  %.promoted209 = load <2 x float>, ptr %i.a, align 1
  %.promoted211 = load float, ptr %3, align 1
  %.promoted213 = load float, ptr %i.j, align 1
  %.promoted215 = load <2 x float>, ptr %i.b, align 1
  %.promoted217 = load float, ptr %4, align 1
  %.promoted219 = load float, ptr %i.k, align 1
  %.promoted221 = load <2 x float>, ptr %5, align 1
  %.promoted223 = load float, ptr %i.e, align 1
  %.promoted225 = load float, ptr %i.l, align 1
  %.promoted227 = load float, ptr %i.m, align 1
  %.promoted229 = load float, ptr %i.n, align 1
  %.promoted231 = load float, ptr %i.f, align 1
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.h
  store float %32, ptr %0, align 1
  store <2 x float> %31, ptr %i.a, align 1
  store float %30, ptr %3, align 1
  store float %i.lq, ptr %i.j, align 1
  store <2 x float> %29, ptr %i.b, align 1
  store float %i.lp, ptr %4, align 1
  store float %i.lo, ptr %i.k, align 1
  store <2 x float> %28, ptr %5, align 1
  store float %i.ln, ptr %i.e, align 1
  store float %27, ptr %i.l, align 1
  store float %26, ptr %i.m, align 1
  store float %25, ptr %i.n, align 1
  store float %24, ptr %i.f, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %6 = phi float [ %.promoted231, %.lr.ph ], [ %24, %bb.h ]
  %7 = phi float [ %.promoted229, %.lr.ph ], [ %25, %bb.h ]
  %8 = phi float [ %.promoted227, %.lr.ph ], [ %26, %bb.h ]
  %9 = phi float [ %.promoted225, %.lr.ph ], [ %27, %bb.h ]
  %i.o = phi float [ %.promoted223, %.lr.ph ], [ %i.ln, %bb.h ]
  %10 = phi <2 x float> [ %.promoted221, %.lr.ph ], [ %28, %bb.h ]
  %i.p = phi float [ %.promoted219, %.lr.ph ], [ %i.lo, %bb.h ]
  %i.q = phi float [ %.promoted217, %.lr.ph ], [ %i.lp, %bb.h ]
  %11 = phi <2 x float> [ %.promoted215, %.lr.ph ], [ %29, %bb.h ]
  %i.r = phi float [ %.promoted213, %.lr.ph ], [ %i.lq, %bb.h ]
  %12 = phi float [ %.promoted211, %.lr.ph ], [ %30, %bb.h ]
  %13 = phi <2 x float> [ %.promoted209, %.lr.ph ], [ %31, %bb.h ]
  %14 = phi float [ %.promoted, %.lr.ph ], [ %32, %bb.h ]
  %.sroa.0149.0159 = phi ptr [ %i.g, %.lr.ph ], [ %i.lv, %bb.h ] ; 33 uses
  %i.s = phi <4 x float> [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.lr.ph ], [ %i.lr, %bb.h ] ; 21 uses
  %i.t = phi <4 x float> [ <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.lr.ph ], [ %i.ls, %bb.h ] ; 21 uses
  %i.u = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %.lr.ph ], [ %i.lt, %bb.h ] ; 20 uses
  %i.v = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, %.lr.ph ], [ %i.lu, %bb.h ] ; 18 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 32
  %i.x = load i32, ptr %i.w, align 8
  switch i32 %i.x, label %bb.h [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 5, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 36
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 44
  %i.aa = load float, ptr %i.z, align 4           ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 48
  %i.ac = load <2 x float>, ptr %i.y, align 4     ; 3 uses
  %i.ad = load <2 x float>, ptr %i.ab, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 56
  %i.af = load float, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 60
  %i.ah = load float, ptr %i.ag, align 4          ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 64
  %i.aj = load <2 x float>, ptr %i.ai, align 8    ; 6 uses
  %foldExtExtBinop = fmul <2 x float> %i.aj, %i.aj
  %i.ak = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %i.ak)
  %i.am = extractelement <2 x float> %i.aj, i64 1 ; 2 uses
  %i.an = tail call noundef float @llvm.fmuladd.f32(float %i.am, float %i.am, float %i.al) ; 2 uses
  %i.ao = fcmp oeq float %i.an, 0.000000e+00
  %i.ap = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aq = insertelement <2 x float> %i.ap, float %i.ah, i64 1 ; 2 uses
  br i1 %i.ao, label %_ZN10aiVector3tIfE9NormalizeEv.exit, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.c
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.an)
  %i.ar = fdiv float 1.000000e+00, %sqrt.i.i
  %i.as = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.au = fmul <2 x float> %i.aq, %i.at
  %i.av = fmul <2 x float> %i.aj, %i.at
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZN10aiVector3tIfE9NormalizeEv.exit:              ; preds = %bb.c, %_ZN10aiVector3tIfEdVEf.exit.i
  %i.aw = phi <2 x float> [ %i.aq, %bb.c ], [ %i.au, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 4 uses
  %i.ax = phi <2 x float> [ %i.aj, %bb.c ], [ %i.av, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 3 uses
  %i.ay = fsub <2 x float> %i.ad, %i.ac           ; 5 uses
  %i.az = fsub float %i.af, %i.aa                 ; 4 uses
  %foldExtExtBinop205 = fmul <2 x float> %i.ay, %i.ay
  %i.ba = extractelement <2 x float> %foldExtExtBinop205, i64 1
  %i.bb = extractelement <2 x float> %i.ay, i64 0 ; 2 uses
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.bb, float %i.ba)
  %i.bd = tail call noundef float @llvm.fmuladd.f32(float %i.az, float %i.az, float %i.bc) ; 2 uses
  %i.be = fcmp oeq float %i.bd, 0.000000e+00
  br i1 %i.be, label %_ZN10aiVector3tIfE9NormalizeEv.exit46, label %_ZN10aiVector3tIfEdVEf.exit.i44

_ZN10aiVector3tIfEdVEf.exit.i44:                  ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit
  %sqrt.i.i45 = tail call noundef float @llvm.sqrt.f32(float %i.bd)
  %i.bf = fdiv float 1.000000e+00, %sqrt.i.i45    ; 2 uses
  %i.bg = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x float> %i.ay, %i.bh
  %i.bj = fmul float %i.az, %i.bf
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit46

_ZN10aiVector3tIfE9NormalizeEv.exit46:            ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit, %_ZN10aiVector3tIfEdVEf.exit.i44
  %.sroa.0120.0 = phi <2 x float> [ %i.ay, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %i.bi, %_ZN10aiVector3tIfEdVEf.exit.i44 ] ; 3 uses
  %.sroa.8123.0 = phi float [ %i.az, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %i.bj, %_ZN10aiVector3tIfEdVEf.exit.i44 ] ; 3 uses
  %.sroa.0124.4.vec.extract128 = extractelement <2 x float> %.sroa.0120.0, i64 1 ; 2 uses
  %i.bk = fneg <2 x float> %i.ax
  %.sroa.0124.0.vec.extract126 = extractelement <2 x float> %.sroa.0120.0, i64 0 ; 2 uses
  %i.bl = shufflevector <2 x float> %.sroa.0120.0, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bm = insertelement <2 x float> %i.bl, float %.sroa.8123.0, i64 0
  %i.bn = fmul <2 x float> %i.bm, %i.bk
  %i.bo = insertelement <2 x float> %i.bl, float %.sroa.8123.0, i64 1
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.aw, <2 x float> %i.bn) ; 5 uses
  %i.bq = extractelement <2 x float> %i.aw, i64 1
  %i.br = fneg float %i.bq
  %i.bs = fmul float %.sroa.0124.4.vec.extract128, %i.br
  %i.bt = extractelement <2 x float> %i.ax, i64 0
  %i.bu = tail call float @llvm.fmuladd.f32(float %.sroa.0124.0.vec.extract126, float %i.bt, float %i.bs) ; 4 uses
  %foldExtExtBinop207 = fmul <2 x float> %i.bp, %i.bp
  %i.bv = extractelement <2 x float> %foldExtExtBinop207, i64 1
  %i.bw = extractelement <2 x float> %i.bp, i64 0 ; 2 uses
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bw, float %i.bv)
  %i.by = tail call noundef float @llvm.fmuladd.f32(float %i.bu, float %i.bu, float %i.bx) ; 2 uses
  %i.bz = fcmp oeq float %i.by, 0.000000e+00
  br i1 %i.bz, label %_ZN10aiVector3tIfE9NormalizeEv.exit53, label %_ZN10aiVector3tIfEdVEf.exit.i51

_ZN10aiVector3tIfEdVEf.exit.i51:                  ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit46
  %sqrt.i.i52 = tail call noundef float @llvm.sqrt.f32(float %i.by)
  %i.ca = fdiv float 1.000000e+00, %sqrt.i.i52    ; 2 uses
  %i.cb = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fmul <2 x float> %i.bp, %i.cc
  %i.ce = fmul float %i.bu, %i.ca
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit53

_ZN10aiVector3tIfE9NormalizeEv.exit53:            ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit46, %_ZN10aiVector3tIfEdVEf.exit.i51
  %.sroa.0112.0 = phi <2 x float> [ %i.bp, %_ZN10aiVector3tIfE9NormalizeEv.exit46 ], [ %i.cd, %_ZN10aiVector3tIfEdVEf.exit.i51 ] ; 2 uses
  %.sroa.9119.0 = phi float [ %i.bu, %_ZN10aiVector3tIfE9NormalizeEv.exit46 ], [ %i.ce, %_ZN10aiVector3tIfEdVEf.exit.i51 ]
  %i.cf = fneg float %.sroa.0124.0.vec.extract126
  %i.cg = fneg float %.sroa.0124.4.vec.extract128
  %i.ch = fneg float %.sroa.8123.0
  %i.ci = shufflevector <2 x float> %i.ax, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cj = fmul <4 x float> %i.ci, %i.v
  %i.ck = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cl = fmul <4 x float> %i.ck, %i.v
  %i.cm = shufflevector <2 x float> %.sroa.0112.0, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cn = fmul <4 x float> %i.cm, %i.v
  %i.co = shufflevector <2 x float> %.sroa.0112.0, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.co, <4 x float> %i.u, <4 x float> %i.cn)
  %i.cq = insertelement <4 x float> poison, float %.sroa.9119.0, i64 0
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cr, <4 x float> %i.t, <4 x float> %i.cp)
  %i.ct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.s, <4 x float> zeroinitializer, <4 x float> %i.cs)
  %i.cu = shufflevector <2 x float> %i.aw, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.u, <4 x float> %i.cj)
  %i.cw = shufflevector <2 x float> %i.aw, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> %i.t, <4 x float> %i.cv)
  %i.cy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.s, <4 x float> zeroinitializer, <4 x float> %i.cx)
  %i.cz = insertelement <4 x float> poison, float %i.cg, i64 0
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.db = fmul <4 x float> %i.v, %i.da
  %i.dc = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.de = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %i.u, <4 x float> %i.db)
  %i.df = insertelement <4 x float> poison, float %i.ch, i64 0
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dg, <4 x float> %i.t, <4 x float> %i.de)
  %i.di = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> zeroinitializer
  %i.dj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.di, <4 x float> %i.u, <4 x float> %i.cl)
  %i.dk = insertelement <4 x float> poison, float %i.aa, i64 0
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.t, <4 x float> %i.dj)
  %i.dn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.s, <4 x float> zeroinitializer, <4 x float> %i.dh)
  %i.do = fadd <4 x float> %i.s, %i.dm
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 36
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 48
  %i.dr = load float, ptr %i.dq, align 8
  %i.ds = fmul float %i.dr, f0x40490FDB
  %i.dt = fdiv float %i.ds, 1.800000e+02          ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 40
  %i.dv = load <3 x float>, ptr %i.dp, align 4    ; 5 uses
  %i.dw = shufflevector <3 x float> %i.dv, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.dx = load float, ptr %i.du, align 8          ; 3 uses
  %i.dy = tail call noundef float @cosf(float noundef %i.dt) #28 ; 3 uses
  %i.dz = tail call noundef float @sinf(float noundef %i.dt) #28 ; 3 uses
  %i.ea = fsub float 1.000000e+00, %i.dy          ; 2 uses
  %i.eb = extractelement <3 x float> %i.dv, i64 0
  %i.ec = extractelement <3 x float> %i.dv, i64 2 ; 3 uses
  %i.ed = fmul float %i.ec, %i.dz                 ; 2 uses
  %i.ee = fneg float %i.ed
  %i.ef = fmul float %i.dx, %i.dz                 ; 2 uses
  %i.eg = insertelement <4 x float> poison, float %i.dy, i64 0 ; 2 uses
  %i.eh = insertelement <4 x float> %i.eg, float %i.ee, i64 1
  %i.ei = insertelement <4 x float> %i.eh, float %i.ef, i64 2
  %i.ej = insertelement <4 x float> %i.ei, float %i.ed, i64 3
  %i.ek = fmul float %i.eb, %i.dz                 ; 2 uses
  %i.el = fneg float %i.ek
  %i.em = fneg float %i.ef
  %i.en = shufflevector <3 x float> %i.dv, <3 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.eo = insertelement <2 x float> %i.en, float %i.dx, i64 0
  %i.ep = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = fmul <2 x float> %i.eo, %i.eq           ; 2 uses
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.et = shufflevector <2 x float> %i.er, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.eu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.dw, <4 x float> %i.ej) ; 4 uses
  %i.ev = shufflevector <3 x float> %i.dv, <3 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ew = insertelement <2 x float> %i.ev, float %i.dx, i64 0
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ey = insertelement <4 x float> %i.eg, float %i.el, i64 1
  %i.ez = insertelement <4 x float> %i.ey, float %i.em, i64 2
  %i.fa = insertelement <4 x float> %i.ez, float %i.ek, i64 3
  %i.fb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.es, <4 x float> %i.ex, <4 x float> %i.fa) ; 4 uses
  %i.fc = fmul float %i.ec, %i.ea
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.fc, float %i.ec, float %i.dy)
  %i.fe = fmul <4 x float> %i.v, zeroinitializer
  %i.ff = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fg = fmul <4 x float> %i.ff, %i.v
  %i.fh = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fh, <4 x float> %i.u, <4 x float> %i.fg)
  %i.fj = shufflevector <4 x float> %i.fb, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fj, <4 x float> %i.t, <4 x float> %i.fi)
  %i.fl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.s, <4 x float> zeroinitializer, <4 x float> %i.fk)
  %i.fm = shufflevector <4 x float> %i.fb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fn = fmul <4 x float> %i.v, %i.fm
  %i.fo = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fo, <4 x float> %i.u, <4 x float> %i.fn)
  %i.fq = shufflevector <4 x float> %i.fb, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fq, <4 x float> %i.t, <4 x float> %i.fp)
  %i.fs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.s, <4 x float> zeroinitializer, <4 x float> %i.fr)
  %i.ft = shufflevector <4 x float> %i.fb, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fu = fmul <4 x float> %i.v, %i.ft
  %i.fv = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fv, <4 x float> %i.u, <4 x float> %i.fu)
  %i.fx = insertelement <4 x float> poison, float %i.fd, i64 0
  %i.fy = shufflevector <4 x float> %i.fx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fy, <4 x float> %i.t, <4 x float> %i.fw)
  %i.ga = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.u, <4 x float> zeroinitializer, <4 x float> %i.fe)
  %i.gb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> zeroinitializer, <4 x float> %i.ga)
  %i.gc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.s, <4 x float> zeroinitializer, <4 x float> %i.fz)
  %i.gd = fadd <4 x float> %i.s, %i.gb
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 36
  %i.gf = load float, ptr %i.ge, align 4
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 40
  %i.gh = load float, ptr %i.gg, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 44
  %i.gj = load float, ptr %i.gi, align 4
  %i.gk = fmul <4 x float> %i.v, zeroinitializer  ; 2 uses
  %i.gl = fadd <4 x float> %i.u, %i.gk
  %i.gm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> zeroinitializer, <4 x float> %i.gl)
  %i.gn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.s, <4 x float> zeroinitializer, <4 x float> %i.gm)
  %i.go = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.u, <4 x float> zeroinitializer, <4 x float> %i.v)
  %i.gp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> zeroinitializer, <4 x float> %i.go)
  %i.gq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.s, <4 x float> zeroinitializer, <4 x float> %i.gp)
  %i.gr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.u, <4 x float> zeroinitializer, <4 x float> %i.gk)
  %i.gs = fadd <4 x float> %i.t, %i.gr
  %i.gt = insertelement <4 x float> poison, float %i.gh, i64 0
  %i.gu = shufflevector <4 x float> %i.gt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gv = fmul <4 x float> %i.gu, %i.v
  %i.gw = insertelement <4 x float> poison, float %i.gf, i64 0
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gx, <4 x float> %i.u, <4 x float> %i.gv)
  %i.gz = insertelement <4 x float> poison, float %i.gj, i64 0
  %i.ha = shufflevector <4 x float> %i.gz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ha, <4 x float> %i.t, <4 x float> %i.gy)
  %i.hc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.s, <4 x float> zeroinitializer, <4 x float> %i.gs)
  %i.hd = fadd <4 x float> %i.s, %i.hb
  br label %.sink.split

bb.f:                                             ; preds = %bb.b
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 36
  %i.hf = load float, ptr %i.he, align 4
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 40
  %i.hh = load float, ptr %i.hg, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 44
  %i.hj = load float, ptr %i.hi, align 4
  %i.hk = fmul <4 x float> %i.v, zeroinitializer  ; 2 uses
  %i.hl = insertelement <4 x float> poison, float %i.hf, i64 0
  %i.hm = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hm, <4 x float> %i.u, <4 x float> %i.hk)
  %i.ho = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> zeroinitializer, <4 x float> %i.hn)
  %i.hp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.s, <4 x float> zeroinitializer, <4 x float> %i.ho)
  %i.hq = insertelement <4 x float> poison, float %i.hh, i64 0
  %i.hr = shufflevector <4 x float> %i.hq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hs = fmul <4 x float> %i.hr, %i.v
  %i.ht = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.u, <4 x float> zeroinitializer, <4 x float> %i.hs)
  %i.hu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> zeroinitializer, <4 x float> %i.ht)
  %i.hv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.s, <4 x float> zeroinitializer, <4 x float> %i.hu)
  %i.hw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.u, <4 x float> zeroinitializer, <4 x float> %i.hk) ; 2 uses
  %i.hx = insertelement <4 x float> poison, float %i.hj, i64 0
  %i.hy = shufflevector <4 x float> %i.hx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hy, <4 x float> %i.t, <4 x float> %i.hw)
  %i.ia = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> zeroinitializer, <4 x float> %i.hw)
  %i.ib = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.s, <4 x float> zeroinitializer, <4 x float> %i.hz)
  %i.ic = fadd <4 x float> %i.s, %i.ia
  br label %.sink.split

bb.g:                                             ; preds = %bb.b
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 36
  %i.ie = load float, ptr %i.id, align 4
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 40
  %i.ig = load float, ptr %i.if, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 44
  %i.ii = load float, ptr %i.ih, align 4
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 48
  %i.ik = load float, ptr %i.ij, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 52
  %i.im = load float, ptr %i.il, align 4
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 56
  %i.io = load float, ptr %i.in, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 60
  %i.iq = load float, ptr %i.ip, align 4
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 64
  %i.is = load float, ptr %i.ir, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 68
  %i.iu = load float, ptr %i.it, align 4
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 72
  %i.iw = load float, ptr %i.iv, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 76
  %i.iy = load float, ptr %i.ix, align 4
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 80
  %i.ja = load float, ptr %i.iz, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 84
  %i.jc = load float, ptr %i.jb, align 4
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 88
  %i.je = load float, ptr %i.jd, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 92
  %i.jg = load float, ptr %i.jf, align 4
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 96
  %i.ji = load float, ptr %i.jh, align 8
  %i.jj = insertelement <4 x float> poison, float %i.im, i64 0
  %i.jk = shufflevector <4 x float> %i.jj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jl = fmul <4 x float> %i.jk, %i.v
  %i.jm = insertelement <4 x float> poison, float %i.ie, i64 0
  %i.jn = shufflevector <4 x float> %i.jm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jn, <4 x float> %i.u, <4 x float> %i.jl)
  %i.jp = insertelement <4 x float> poison, float %i.iu, i64 0
  %i.jq = shufflevector <4 x float> %i.jp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jq, <4 x float> %i.t, <4 x float> %i.jo)
  %i.js = insertelement <4 x float> poison, float %i.jc, i64 0
  %i.jt = shufflevector <4 x float> %i.js, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ju = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jt, <4 x float> %i.s, <4 x float> %i.jr)
  %i.jv = insertelement <4 x float> poison, float %i.io, i64 0
  %i.jw = shufflevector <4 x float> %i.jv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jx = fmul <4 x float> %i.jw, %i.v
  %i.jy = insertelement <4 x float> poison, float %i.ig, i64 0
  %i.jz = shufflevector <4 x float> %i.jy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ka = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jz, <4 x float> %i.u, <4 x float> %i.jx)
  %i.kb = insertelement <4 x float> poison, float %i.iw, i64 0
  %i.kc = shufflevector <4 x float> %i.kb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kc, <4 x float> %i.t, <4 x float> %i.ka)
  %i.ke = insertelement <4 x float> poison, float %i.je, i64 0
  %i.kf = shufflevector <4 x float> %i.ke, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kf, <4 x float> %i.s, <4 x float> %i.kd)
  %i.kh = insertelement <4 x float> poison, float %i.iq, i64 0
  %i.ki = shufflevector <4 x float> %i.kh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kj = fmul <4 x float> %i.ki, %i.v
  %i.kk = insertelement <4 x float> poison, float %i.ii, i64 0
  %i.kl = shufflevector <4 x float> %i.kk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.km = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kl, <4 x float> %i.u, <4 x float> %i.kj)
  %i.kn = insertelement <4 x float> poison, float %i.iy, i64 0
  %i.ko = shufflevector <4 x float> %i.kn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ko, <4 x float> %i.t, <4 x float> %i.km)
  %i.kq = insertelement <4 x float> poison, float %i.is, i64 0
  %i.kr = shufflevector <4 x float> %i.kq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ks = fmul <4 x float> %i.kr, %i.v
  %i.kt = insertelement <4 x float> poison, float %i.ik, i64 0
  %i.ku = shufflevector <4 x float> %i.kt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ku, <4 x float> %i.u, <4 x float> %i.ks)
  %i.kw = insertelement <4 x float> poison, float %i.ja, i64 0
  %i.kx = shufflevector <4 x float> %i.kw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ky = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kx, <4 x float> %i.t, <4 x float> %i.kv)
  %i.kz = insertelement <4 x float> poison, float %i.jg, i64 0
  %i.la = shufflevector <4 x float> %i.kz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.la, <4 x float> %i.s, <4 x float> %i.kp)
  %i.lc = insertelement <4 x float> poison, float %i.ji, i64 0
  %i.ld = shufflevector <4 x float> %i.lc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.le = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ld, <4 x float> %i.s, <4 x float> %i.ky)
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit53, %bb.d, %bb.e, %bb.f, %bb.g
  %i.lf = phi <4 x float> [ %i.le, %bb.g ], [ %i.ic, %bb.f ], [ %i.hd, %bb.e ], [ %i.gd, %bb.d ], [ %i.do, %_ZN10aiVector3tIfE9NormalizeEv.exit53 ] ; 5 uses
  %i.lg = phi <4 x float> [ %i.lb, %bb.g ], [ %i.ib, %bb.f ], [ %i.hc, %bb.e ], [ %i.gc, %bb.d ], [ %i.dn, %_ZN10aiVector3tIfE9NormalizeEv.exit53 ] ; 5 uses
  %i.lh = phi <4 x float> [ %i.kg, %bb.g ], [ %i.hv, %bb.f ], [ %i.gq, %bb.e ], [ %i.fs, %bb.d ], [ %i.cy, %_ZN10aiVector3tIfE9NormalizeEv.exit53 ] ; 5 uses
  %i.li = phi <4 x float> [ %i.ju, %bb.g ], [ %i.hp, %bb.f ], [ %i.gn, %bb.e ], [ %i.fl, %bb.d ], [ %i.ct, %_ZN10aiVector3tIfE9NormalizeEv.exit53 ] ; 5 uses
  %15 = extractelement <4 x float> %i.li, i64 3
  %16 = shufflevector <4 x float> %i.lh, <4 x float> %i.lg, <2 x i32> <i32 3, i32 7>
  %17 = extractelement <4 x float> %i.lf, i64 3
  %18 = extractelement <4 x float> %i.li, i64 2
  %19 = shufflevector <4 x float> %i.lh, <4 x float> %i.lg, <2 x i32> <i32 2, i32 6>
  %20 = extractelement <4 x float> %i.lf, i64 2
  %21 = extractelement <4 x float> %i.li, i64 1
  %22 = shufflevector <4 x float> %i.lh, <4 x float> %i.lg, <2 x i32> <i32 1, i32 5>
  %23 = extractelement <4 x float> %i.lf, i64 1
  %i.lj = extractelement <4 x float> %i.li, i64 0
  %i.lk = extractelement <4 x float> %i.lh, i64 0
  %i.ll = extractelement <4 x float> %i.lg, i64 0
  %i.lm = extractelement <4 x float> %i.lf, i64 0
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.b
  %24 = phi float [ %6, %bb.b ], [ %i.lm, %.sink.split ] ; 2 uses
  %25 = phi float [ %7, %bb.b ], [ %i.ll, %.sink.split ] ; 2 uses
  %26 = phi float [ %8, %bb.b ], [ %i.lk, %.sink.split ] ; 2 uses
  %27 = phi float [ %9, %bb.b ], [ %i.lj, %.sink.split ] ; 2 uses
  %i.ln = phi float [ %i.o, %bb.b ], [ %23, %.sink.split ] ; 2 uses
  %28 = phi <2 x float> [ %10, %bb.b ], [ %22, %.sink.split ] ; 2 uses
  %i.lo = phi float [ %i.p, %bb.b ], [ %21, %.sink.split ] ; 2 uses
  %i.lp = phi float [ %i.q, %bb.b ], [ %20, %.sink.split ] ; 2 uses
  %29 = phi <2 x float> [ %11, %bb.b ], [ %19, %.sink.split ] ; 2 uses
  %i.lq = phi float [ %i.r, %bb.b ], [ %18, %.sink.split ] ; 2 uses
  %30 = phi float [ %12, %bb.b ], [ %17, %.sink.split ] ; 2 uses
  %31 = phi <2 x float> [ %13, %bb.b ], [ %16, %.sink.split ] ; 2 uses
  %32 = phi float [ %14, %bb.b ], [ %15, %.sink.split ] ; 2 uses
  %i.lr = phi <4 x float> [ %i.s, %bb.b ], [ %i.lf, %.sink.split ]
  %i.ls = phi <4 x float> [ %i.t, %bb.b ], [ %i.lg, %.sink.split ]
  %i.lt = phi <4 x float> [ %i.u, %bb.b ], [ %i.li, %.sink.split ]
  %i.lu = phi <4 x float> [ %i.v, %bb.b ], [ %i.lh, %.sink.split ]
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 104 ; 2 uses
  %.not = icmp eq ptr %i.lv, %i.i
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !171
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJRA28_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(13) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(28) %1) #28
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 1 dereferenceable(28) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA28_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5) #28
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA28_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJRA13_KcERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_NS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(13) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA28_cEERKT_.exit
  %i.d = load ptr, ptr %4, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %4, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %5, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %5, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #28
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA28_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %4, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #28
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %3, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #28
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #28
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #28
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #30
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
end_hunk_0
