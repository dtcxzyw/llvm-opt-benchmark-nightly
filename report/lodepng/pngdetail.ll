inline.NumInlined: 2280
inline.NumDeleted: 605
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4lessIS5_ESaISt4pairIKS5_bEEEixERS9_:bb.a
  store ptr %1, ptr %2, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4lessIS5_ESaISt4pairIKS5_bEEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.61", align 8     ; 4 uses
  %3 = alloca %"class.std::tuple.56", align 1     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !41   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !41   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !43
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #26 ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !122 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4lessIS5_ESaISt4pairIKS5_bEEE11lower_boundERS9_.exit, label %bb.b, !llvm.loop !123

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4lessIS5_ESaISt4pairIKS5_bEEE11lower_boundERS9_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4lessIS5_ESaISt4pairIKS5_bEEE11lower_boundERS9_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !41   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #26 ; 2 uses
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

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4lessIS5_ESaISt4pairIKS5_bEEE11lower_boundERS9_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4lessIS5_ESaISt4pairIKS5_bEEE11lower_boundERS9_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %1, ptr %2, align 8, !tbaa !83, !alias.scope !124
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4lessIS5_ESaISt4pairIKS5_bEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !93     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !43 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !34
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !113

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !114
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #27
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z8RGBtoHSLhhhPhS_S_(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %5) local_unnamed_addr #6 {
bb.a:
  %i.a = zext i8 %0 to i32                        ; 2 uses
  %i.b = zext i8 %1 to i32                        ; 2 uses
  %i.c = zext i8 %2 to i32                        ; 2 uses
  %i.d = tail call i8 @llvm.umax.i8(i8 %1, i8 %2) ; 2 uses
  %i.e = tail call i8 @llvm.umax.i8(i8 %0, i8 %i.d) ; 3 uses
  %i.f = tail call i8 @llvm.umin.i8(i8 %2, i8 %1)
  %i.g = tail call i8 @llvm.umin.i8(i8 %i.f, i8 %0) ; 2 uses
  %i.h = icmp eq i8 %i.g, %i.e
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %4, align 1, !tbaa !34
  store i8 0, ptr %3, align 1, !tbaa !34
  store i8 %0, ptr %5, align 1, !tbaa !34
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %.sroa.speculated50 = zext i8 %i.e to i32       ; 2 uses
  %.sroa.speculated = zext i8 %i.g to i32         ; 2 uses
  %i.i = add nuw nsw i32 %.sroa.speculated, %.sroa.speculated50 ; 4 uses
  %i.j = sub nsw i32 %.sroa.speculated50, %.sroa.speculated ; 4 uses
  %i.k = lshr i32 %i.i, 1
  %i.l = trunc nuw i32 %i.k to i8
  store i8 %i.l, ptr %5, align 1, !tbaa !34
  %6 = mul nsw i32 %i.j, 255
  %.not.not = icmp samesign ult i32 %i.i, 256
  %i.m = sub nuw nsw i32 512, %i.i
  %i.n = select i1 %.not.not, i32 %i.i, i32 %i.m
  %7 = sdiv i32 %6, %i.n
  %i.o = trunc i32 %7 to i8
  store i8 %i.o, ptr %4, align 1, !tbaa !34
  %.not = icmp ult i8 %0, %i.d
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i32 %i.b, %i.c
  %i.q = mul nsw i32 %i.p, 255
  %i.r = sdiv i32 %i.q, %i.j
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i8 %i.e, %1
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = sub nsw i32 %i.c, %i.a
  %i.u = mul nsw i32 %i.t, 255
  %i.v = sdiv i32 %i.u, %i.j
  %i.w = add nsw i32 %i.v, 512
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.x = sub nsw i32 %i.a, %i.b
  %i.y = mul nsw i32 %i.x, 255
  %i.z = sdiv i32 %i.y, %i.j
  %i.aa = add nsw i32 %i.z, 1024
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %i.ab = phi i32 [ %i.r, %bb.d ], [ %i.w, %bb.f ], [ %i.aa, %bb.g ]
  %i.ac = sdiv i32 %i.ab, 6
  %i.ad = trunc i32 %i.ac to i8
  store i8 %i.ad, ptr %3, align 1, !tbaa !34
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z8RGBtoHCThhhPhS_S_(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %5) local_unnamed_addr #6 {
bb.a:
  %i.a = zext i8 %0 to i32                        ; 2 uses
  %i.b = zext i8 %1 to i32                        ; 2 uses
  %i.c = zext i8 %2 to i32                        ; 2 uses
  %i.d = tail call i8 @llvm.umax.i8(i8 %1, i8 %2) ; 2 uses
  %i.e = tail call i8 @llvm.umax.i8(i8 %0, i8 %i.d) ; 3 uses
  %.sroa.speculated29 = zext i8 %i.e to i32       ; 3 uses
  %i.f = tail call i8 @llvm.umin.i8(i8 %2, i8 %1)
  %i.g = tail call i8 @llvm.umin.i8(i8 %i.f, i8 %0) ; 3 uses
  %.sroa.speculated = zext i8 %i.g to i32         ; 3 uses
  %i.h = icmp eq i8 %i.g, %i.e
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %3, align 1, !tbaa !34
  %.pre = sub nsw i32 %.sroa.speculated29, %.sroa.speculated
  br label %_Z8RGBtoHSLhhhPhS_S_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = sub nsw i32 %.sroa.speculated29, %.sroa.speculated ; 4 uses
  %.not.i = icmp ult i8 %0, %i.d
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = sub nsw i32 %i.b, %i.c
  %i.k = mul nsw i32 %i.j, 255
  %i.l = sdiv i32 %i.k, %i.i
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i8 %i.e, %1
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = sub nsw i32 %i.c, %i.a
  %i.o = mul nsw i32 %i.n, 255
  %i.p = sdiv i32 %i.o, %i.i
  %i.q = add nsw i32 %i.p, 512
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.r = sub nsw i32 %i.a, %i.b
  %i.s = mul nsw i32 %i.r, 255
  %i.t = sdiv i32 %i.s, %i.i
  %i.u = add nsw i32 %i.t, 1024
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.v = phi i32 [ %i.l, %bb.d ], [ %i.q, %bb.f ], [ %i.u, %bb.g ]
  %i.w = sdiv i32 %i.v, 6
  %i.x = trunc i32 %i.w to i8
  store i8 %i.x, ptr %3, align 1, !tbaa !34
  br label %_Z8RGBtoHSLhhhPhS_S_.exit

_Z8RGBtoHSLhhhPhS_S_.exit:                        ; preds = %bb.b, %bb.h
  %.pre-phi = phi i32 [ %.pre, %bb.b ], [ %i.i, %bb.h ] ; 2 uses
  %i.y = trunc i32 %.pre-phi to i8
  store i8 %i.y, ptr %4, align 1, !tbaa !34
  %6 = and i32 %.pre-phi, 255
  %i.z = icmp eq i32 %6, 255
  br i1 %i.z, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_Z8RGBtoHSLhhhPhS_S_.exit
  %i.aa = add nuw nsw i32 %.sroa.speculated, 255
  %i.ab = sub nuw nsw i32 %i.aa, %.sroa.speculated29
  %i.ac = zext i8 %i.g to i16
  %.lhs.trunc = mul nuw i16 %i.ac, 255
  %.rhs.trunc = trunc nuw nsw i32 %i.ab to i16
  %i.ad = udiv i16 %.lhs.trunc, %.rhs.trunc
  %i.ae = trunc i16 %i.ad to i8
  br label %bb.j

bb.j:                                             ; preds = %_Z8RGBtoHSLhhhPhS_S_.exit, %bb.i
  %i.af = phi i8 [ %i.ae, %bb.i ], [ 0, %_Z8RGBtoHSLhhhPhS_S_.exit ]
  store i8 %i.af, ptr %5, align 1, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef signext range(i8 65, 90) i8 @_Z11HueToLetteri(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = add i32 %0, -244
  %or.cond = icmp ult i32 %i.a, -233
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 32
  br i1 %i.b, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ult i32 %0, 53
  br i1 %i.c, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 74
  br i1 %i.d, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = icmp samesign ult i32 %0, 96
  br i1 %i.e, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = icmp samesign ult i32 %0, 117
  br i1 %i.f, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = icmp samesign ult i32 %0, 138
  br i1 %i.g, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = icmp samesign ult i32 %0, 159
  br i1 %i.h, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = icmp samesign ult i32 %0, 181
  br i1 %i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = icmp samesign ult i32 %0, 202
  br i1 %i.j, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = icmp samesign ult i32 %0, 223
  %spec.select = select i1 %i.k, i8 77, i8 70
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i8 [ %spec.select, %bb.k ], [ 82, %bb.a ], [ 79, %bb.b ], [ 89, %bb.c ], [ 76, %bb.d ], [ 71, %bb.e ], [ 84, %bb.f ], [ 67, %bb.g ], [ 65, %bb.h ], [ 66, %bb.i ], [ 86, %bb.j ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef signext range(i8 32, 62) i8 @_Z17lightnessToLetteri(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i32 %0, 16
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 48
  br i1 %i.b, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ult i32 %0, 80
  br i1 %i.c, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 112
  br i1 %i.d, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = icmp samesign ult i32 %0, 144
  br i1 %i.e, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = icmp samesign ult i32 %0, 176
  br i1 %i.f, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = icmp samesign ult i32 %0, 208
  br i1 %i.g, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = icmp samesign ult i32 %0, 240
  %. = select i1 %i.h, i8 61, i8 35
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i8 [ 43, %bb.g ], [ 32, %bb.a ], [ 46, %bb.b ], [ 58, %bb.c ], [ 45, %bb.d ], [ 33, %bb.e ], [ 42, %bb.f ], [ %., %bb.h ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef signext range(i8 32, 122) i8 @_Z11RGBtoLetterhhhhjjbb(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i8 %3, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext i8 %3 to i32                        ; 3 uses
  %i.b = zext i8 %0 to i32
  %i.c = mul nuw nsw i32 %i.a, %i.b
  %.lhs.trunc = trunc nuw i32 %i.c to i16
  %i.d = udiv i16 %.lhs.trunc, 255
  %i.e = trunc nuw i16 %i.d to i8
  %i.f = zext i8 %1 to i32
  %i.g = mul nuw nsw i32 %i.a, %i.f
  %.lhs.trunc102 = trunc nuw i32 %i.g to i16
  %i.h = udiv i16 %.lhs.trunc102, 255
  %i.i = trunc nuw i16 %i.h to i8
  %i.j = zext i8 %2 to i32
  %i.k = mul nuw nsw i32 %i.a, %i.j
  %.lhs.trunc104 = trunc nuw i32 %i.k to i16
  %i.l = udiv i16 %.lhs.trunc104, 255
  %i.m = trunc nuw i16 %i.l to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0101.a = phi i8 [ %1, %bb.a ], [ %i.i, %bb.b ] ; 8 uses
  %.0100.a = phi i8 [ %2, %bb.a ], [ %i.m, %bb.b ] ; 6 uses
  %.098 = phi i8 [ %0, %bb.a ], [ %i.e, %bb.b ]   ; 9 uses
  %i.n = zext i8 %.098 to i32                     ; 4 uses
  %i.o = zext i8 %.0101.a to i32                  ; 4 uses
  %i.p = zext i8 %.0100.a to i32                  ; 4 uses
  %i.q = tail call i8 @llvm.umax.i8(i8 %.0101.a, i8 %.0100.a) ; 3 uses
  %i.r = tail call i8 @llvm.umax.i8(i8 %.098, i8 %i.q) ; 6 uses
  br i1 %6, label %bb.d, label %bb.ad

bb.d:                                             ; preds = %bb.c
  %.sroa.speculated29.i = zext i8 %i.r to i32
  %i.s = tail call i8 @llvm.umin.i8(i8 %.0100.a, i8 %.0101.a)
  %i.t = tail call i8 @llvm.umin.i8(i8 %i.s, i8 %.098) ; 2 uses
  %.sroa.speculated.i = zext i8 %i.t to i32
  %i.u = icmp eq i8 %i.t, %i.r
  %.pre.i = sub nsw i32 %.sroa.speculated29.i, %.sroa.speculated.i ; 4 uses
  br i1 %i.u, label %_Z8RGBtoHSLhhhPhS_S_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp ult i8 %.098, %i.q
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = sub nsw i32 %i.o, %i.p
  %i.w = mul nsw i32 %i.v, 255
  %i.x = sdiv i32 %i.w, %.pre.i
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.y = icmp eq i8 %i.r, %.0101.a
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = sub nsw i32 %i.p, %i.n
  %i.aa = mul nsw i32 %i.z, 255
  %i.ab = sdiv i32 %i.aa, %.pre.i
  %i.ac = add nsw i32 %i.ab, 512
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ad = sub nsw i32 %i.n, %i.o
  %i.ae = mul nsw i32 %i.ad, 255
  %i.af = sdiv i32 %i.ae, %.pre.i
  %i.ag = add nsw i32 %i.af, 1024
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %i.ah = phi i32 [ %i.x, %bb.f ], [ %i.ac, %bb.h ], [ %i.ag, %bb.i ]
  %i.ai = sdiv i32 %i.ah, 6
  br label %_Z8RGBtoHSLhhhPhS_S_.exit.i

_Z8RGBtoHSLhhhPhS_S_.exit.i:                      ; preds = %bb.d, %bb.j
  %.099 = phi i32 [ %i.ai, %bb.j ], [ 0, %bb.d ]
  %.sroa.speculated75 = tail call i8 @llvm.umax.i8(i8 %.098, i8 %.0101.a)
  %.sroa.speculated60 = tail call i8 @llvm.umax.i8(i8 %.sroa.speculated75, i8 %.0100.a)
  %i.aj = zext i8 %.sroa.speculated60 to i32
  %.sroa.speculated72 = tail call i8 @llvm.umin.i8(i8 %.0101.a, i8 %.098)
  %.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %.0100.a, i8 %.sroa.speculated72)
  %i.ak = zext i8 %.sroa.speculated to i32
  %i.al = add nuw nsw i32 %i.aj, %i.ak
  %i.am = lshr i32 %i.al, 1                       ; 2 uses
  %i.an = xor i32 %i.am, 255
  %spec.select106 = select i1 %7, i32 %i.an, i32 %i.am ; 2 uses
  %8 = and i32 %.pre.i, 255
  %i.ao = and i32 %4, 3
  %i.ap = shl i32 %5, 2
  %i.aq = and i32 %i.ap, 12
  %i.ar = or disjoint i32 %i.aq, %i.ao            ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr @_ZZL11applyDitheriiiibE7pattern, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !127
  %i.av = mul nsw i32 %i.au, 17
  %i.aw = add nsw i32 %i.av, -128                 ; 3 uses
  %i.ax = mul nsw i32 %i.aw, 127
  %i.ay = sdiv i32 %i.ax, 128
  %i.az = add nsw i32 %i.ay, %8
  %i.ba = icmp sgt i32 %i.az, 127
  br i1 %i.ba, label %bb.k, label %bb.v

bb.k:                                             ; preds = %_Z8RGBtoHSLhhhPhS_S_.exit.i
  %i.bb = mul nsw i32 %i.aw, 21
  %i.bc = sdiv i32 %i.bb, 256
  %i.bd = add nsw i32 %i.bc, %.099
  %i.be = and i32 %i.bd, 255                      ; 11 uses
  %i.bf = add nsw i32 %i.be, -244
  %or.cond.i = icmp ult i32 %i.bf, -233
  br i1 %or.cond.i, label %_Z11HueToLetteri.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = icmp samesign ult i32 %i.be, 32
  br i1 %i.bg, label %_Z11HueToLetteri.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = icmp samesign ult i32 %i.be, 53
  br i1 %i.bh, label %_Z11HueToLetteri.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = icmp samesign ult i32 %i.be, 74
  br i1 %i.bi, label %_Z11HueToLetteri.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = icmp samesign ult i32 %i.be, 96
  br i1 %i.bj, label %_Z11HueToLetteri.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = icmp samesign ult i32 %i.be, 117
  br i1 %i.bk, label %_Z11HueToLetteri.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = icmp samesign ult i32 %i.be, 138
  br i1 %i.bl, label %_Z11HueToLetteri.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = icmp samesign ult i32 %i.be, 159
  br i1 %i.bm, label %_Z11HueToLetteri.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = icmp samesign ult i32 %i.be, 181
  br i1 %i.bn, label %_Z11HueToLetteri.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = icmp samesign ult i32 %i.be, 202
  br i1 %i.bo, label %_Z11HueToLetteri.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = icmp samesign ult i32 %i.be, 223
  %spec.select.i = select i1 %i.bp, i8 77, i8 70
  br label %_Z11HueToLetteri.exit

_Z11HueToLetteri.exit:                            ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u
  %.0.i = phi i8 [ %spec.select.i, %bb.u ], [ 82, %bb.k ], [ 79, %bb.l ], [ 89, %bb.m ], [ 76, %bb.n ], [ 71, %bb.o ], [ 84, %bb.p ], [ 67, %bb.q ], [ 65, %bb.r ], [ 66, %bb.s ], [ 86, %bb.t ]
  %i.bq = xor i32 %i.ar, 10
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr @_ZZL11applyDitheriiiibE7pattern, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !127
  %i.bu = mul i32 %i.bt, 1088
  %i.bv = add i32 %i.bu, -8192
  %i.bw = sdiv i32 %i.bv, 256
  %i.bx = add nsw i32 %i.bw, %spec.select106
  %i.by = icmp slt i32 %i.bx, 80
  %i.bz = select i1 %i.by, i8 32, i8 0
  %i.ca = or disjoint i8 %i.bz, %.0.i
  br label %_Z17lightnessToLetteri.exit

bb.v:                                             ; preds = %_Z8RGBtoHSLhhhPhS_S_.exit.i
  %i.cb = mul nsw i32 %i.aw, 31
  %i.cc = sdiv i32 %i.cb, 256
  %i.cd = add nsw i32 %i.cc, %spec.select106      ; 8 uses
  %i.ce = icmp slt i32 %i.cd, 16
  br i1 %i.ce, label %_Z17lightnessToLetteri.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = icmp samesign ult i32 %i.cd, 48
  br i1 %i.cf, label %_Z17lightnessToLetteri.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cg = icmp samesign ult i32 %i.cd, 80
  br i1 %i.cg, label %_Z17lightnessToLetteri.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ch = icmp samesign ult i32 %i.cd, 112
  br i1 %i.ch, label %_Z17lightnessToLetteri.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = icmp samesign ult i32 %i.cd, 144
  br i1 %i.ci, label %_Z17lightnessToLetteri.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cj = icmp samesign ult i32 %i.cd, 176
  br i1 %i.cj, label %_Z17lightnessToLetteri.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ck = icmp samesign ult i32 %i.cd, 208
  br i1 %i.ck, label %_Z17lightnessToLetteri.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cl = icmp samesign ult i32 %i.cd, 240
  %..i38 = select i1 %i.cl, i8 61, i8 35
  br label %_Z17lightnessToLetteri.exit

bb.ad:                                            ; preds = %bb.c
  %i.cm = tail call i8 @llvm.umin.i8(i8 %.0100.a, i8 %.0101.a)
  %i.cn = tail call i8 @llvm.umin.i8(i8 %i.cm, i8 %.098) ; 2 uses
  %i.co = icmp eq i8 %i.cn, %i.r
  br i1 %i.co, label %_Z11HueToLetteri.exit44.thread, label %bb.ae

_Z11HueToLetteri.exit44.thread:                   ; preds = %bb.ad
  %i.cp = sext i1 %7 to i8
  %spec.select107116 = xor i8 %.098, %i.cp
  br label %bb.at

bb.ae:                                            ; preds = %bb.ad
  %.sroa.speculated50.i = zext i8 %i.r to i32     ; 2 uses
  %.sroa.speculated.i40 = zext i8 %i.cn to i32    ; 2 uses
  %i.cq = add nuw nsw i32 %.sroa.speculated.i40, %.sroa.speculated50.i ; 4 uses
  %i.cr = sub nsw i32 %.sroa.speculated50.i, %.sroa.speculated.i40 ; 4 uses
  %i.cs = lshr i32 %i.cq, 1
  %i.ct = trunc nuw i32 %i.cs to i8
  %9 = mul nsw i32 %i.cr, 255
  %.not.not.i = icmp samesign ult i32 %i.cq, 256
  %i.cu = sub nuw nsw i32 512, %i.cq
  %i.cv = select i1 %.not.not.i, i32 %i.cq, i32 %i.cu
  %10 = sdiv i32 %9, %i.cv
  %.not.i = icmp ult i8 %.098, %i.q
  br i1 %.not.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cw = sub nsw i32 %i.o, %i.p
  %i.cx = mul nsw i32 %i.cw, 255
  %i.cy = sdiv i32 %i.cx, %i.cr
  br label %_Z8RGBtoHSLhhhPhS_S_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.cz = icmp eq i8 %i.r, %.0101.a
  br i1 %i.cz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.da = sub nsw i32 %i.p, %i.n
  %i.db = mul nsw i32 %i.da, 255
  %i.dc = sdiv i32 %i.db, %i.cr
  %i.dd = add nsw i32 %i.dc, 512
  br label %_Z8RGBtoHSLhhhPhS_S_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.de = sub nsw i32 %i.n, %i.o
  %i.df = mul nsw i32 %i.de, 255
  %i.dg = sdiv i32 %i.df, %i.cr
  %i.dh = add nsw i32 %i.dg, 1024
  br label %_Z8RGBtoHSLhhhPhS_S_.exit

_Z8RGBtoHSLhhhPhS_S_.exit:                        ; preds = %bb.af, %bb.ah, %bb.ai
  %i.di = phi i32 [ %i.cy, %bb.af ], [ %i.dd, %bb.ah ], [ %i.dh, %bb.ai ]
  %i.dj = sdiv i32 %i.di, 6
  %i.dk = and i32 %i.dj, 255                      ; 11 uses
  %11 = and i32 %10, 192
  %i.dl = icmp eq i32 %11, 0
  %i.dm = sext i1 %7 to i8
  %spec.select107 = xor i8 %i.ct, %i.dm           ; 3 uses
  %i.dn = add nsw i32 %i.dk, -244
  %or.cond.i41 = icmp ult i32 %i.dn, -233
  br i1 %or.cond.i41, label %_Z11HueToLetteri.exit44, label %bb.aj

bb.aj:                                            ; preds = %_Z8RGBtoHSLhhhPhS_S_.exit
  %i.do = icmp samesign ult i32 %i.dk, 32
  br i1 %i.do, label %_Z11HueToLetteri.exit44, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dp = icmp samesign ult i32 %i.dk, 53
  br i1 %i.dp, label %_Z11HueToLetteri.exit44, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dq = icmp samesign ult i32 %i.dk, 74
  br i1 %i.dq, label %_Z11HueToLetteri.exit44, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dr = icmp samesign ult i32 %i.dk, 96
  br i1 %i.dr, label %_Z11HueToLetteri.exit44, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ds = icmp samesign ult i32 %i.dk, 117
  br i1 %i.ds, label %_Z11HueToLetteri.exit44, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dt = icmp samesign ult i32 %i.dk, 138
  br i1 %i.dt, label %_Z11HueToLetteri.exit44, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.du = icmp samesign ult i32 %i.dk, 159
  br i1 %i.du, label %_Z11HueToLetteri.exit44, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dv = icmp samesign ult i32 %i.dk, 181
  br i1 %i.dv, label %_Z11HueToLetteri.exit44, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dw = icmp samesign ult i32 %i.dk, 202
  br i1 %i.dw, label %_Z11HueToLetteri.exit44, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dx = icmp samesign ult i32 %i.dk, 223
  %spec.select.i42 = select i1 %i.dx, i8 77, i8 70
  br label %_Z11HueToLetteri.exit44

_Z11HueToLetteri.exit44:                          ; preds = %_Z8RGBtoHSLhhhPhS_S_.exit, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as
  %.0.i43 = phi i8 [ %spec.select.i42, %bb.as ], [ 82, %_Z8RGBtoHSLhhhPhS_S_.exit ], [ 79, %bb.aj ], [ 89, %bb.ak ], [ 76, %bb.al ], [ 71, %bb.am ], [ 84, %bb.an ], [ 67, %bb.ao ], [ 65, %bb.ap ], [ 66, %bb.aq ], [ 86, %bb.ar ] ; 2 uses
  %i.dy = add i8 %spec.select107, 23
  %or.cond = icmp ult i8 %i.dy, 47
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.dl
  br i1 %or.cond5, label %bb.at, label %bb.bb

bb.at:                                            ; preds = %_Z11HueToLetteri.exit44.thread, %_Z11HueToLetteri.exit44
  %spec.select107119125 = phi i8 [ %spec.select107116, %_Z11HueToLetteri.exit44.thread ], [ %spec.select107, %_Z11HueToLetteri.exit44 ] ; 8 uses
  %i.dz = icmp ult i8 %spec.select107119125, 16
  br i1 %i.dz, label %_Z17lightnessToLetteri.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ea = icmp ult i8 %spec.select107119125, 48
  br i1 %i.ea, label %_Z17lightnessToLetteri.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eb = icmp ult i8 %spec.select107119125, 80
  br i1 %i.eb, label %_Z17lightnessToLetteri.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ec = icmp ult i8 %spec.select107119125, 112
  br i1 %i.ec, label %_Z17lightnessToLetteri.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ed = icmp ult i8 %spec.select107119125, -112
  br i1 %i.ed, label %_Z17lightnessToLetteri.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ee = icmp samesign ult i8 %spec.select107119125, -80
  br i1 %i.ee, label %_Z17lightnessToLetteri.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ef = icmp samesign ult i8 %spec.select107119125, -48
  br i1 %i.ef, label %_Z17lightnessToLetteri.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.eg = icmp samesign ult i8 %spec.select107119125, -16
  %..i45 = select i1 %i.eg, i8 61, i8 35
  br label %_Z17lightnessToLetteri.exit

bb.bb:                                            ; preds = %_Z11HueToLetteri.exit44
  %i.eh = or disjoint i8 %.0.i43, 32
  %i.ei = icmp slt i8 %spec.select107, 0
  %spec.select = select i1 %i.ei, i8 %.0.i43, i8 %i.eh
  br label %_Z17lightnessToLetteri.exit

_Z17lightnessToLetteri.exit:                      ; preds = %bb.bb, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %_Z11HueToLetteri.exit, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.1 = phi i8 [ %..i38, %bb.ac ], [ %i.ca, %_Z11HueToLetteri.exit ], [ 43, %bb.ab ], [ 32, %bb.v ], [ 46, %bb.w ], [ 58, %bb.x ], [ 45, %bb.y ], [ 33, %bb.z ], [ 42, %bb.aa ], [ %spec.select, %bb.bb ], [ 43, %bb.az ], [ 32, %bb.at ], [ 46, %bb.au ], [ 58, %bb.av ], [ 45, %bb.aw ], [ 33, %bb.ax ], [ 42, %bb.ay ], [ %..i45, %bb.ba ]
  ret i8 %.1
}

; Function Attrs: mustprogress uwtable
define void @_Z7rescaleRKSt6vectorIhSaIhEEiiiib(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.c = load ptr, ptr %1, align 8, !tbaa !117    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = mul nsw i32 %3, %2
  %i.h = sext i32 %i.g to i64
  %i.i = udiv i64 %i.f, %i.h                      ; 3 uses
  %i.j = trunc i64 %i.i to i32                    ; 17 uses
  %i.k = mul i32 %4, %i.j                         ; 2 uses
  %i.l = mul i32 %i.k, %5                         ; 3 uses
  %i.m = sext i32 %i.l to i64                     ; 3 uses
  %i.n = icmp slt i32 %i.l, 0
  br i1 %i.n, label %.noexc, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.245) #25
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i, label %.noexc175

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.c

.noexc175:                                        ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #29 ; 6 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !117
  %i.p = getelementptr i8, ptr %i.o, i64 %i.m     ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !128
  store i8 0, ptr %i.o, align 1, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %i.s = add nsw i64 %i.m, -1                     ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc175
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.r, i8 0, i64 %i.s, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.noexc175, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  %i.u = phi ptr [ null, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ], [ %i.p, %.noexc175 ], [ %i.p, %bb.b ]
  %i.v = phi ptr [ null, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ], [ %i.o, %.noexc175 ], [ %i.o, %bb.b ] ; 9 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ], [ %i.r, %.noexc175 ], [ %i.p, %bb.b ]
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.x, align 8, !tbaa !116
  br i1 %6, label %bb.d, label %.preheader191

.preheader191:                                    ; preds = %bb.c
  %i.y = icmp sgt i32 %5, 0
  br i1 %i.y, label %.lr.ph198, label %_ZNSt6vectorIhSaIhEED2Ev.exit

.lr.ph198:                                        ; preds = %.preheader191
  %i.z = sitofp i32 %3 to double
  %i.aa = uitofp nneg i32 %5 to double
  %i.ab = icmp slt i32 %4, 1
  %i.ac = sitofp i32 %2 to double
  %i.ad = sitofp i32 %4 to double
  %i.ae = icmp slt i32 %i.j, 1
  %brmerge = or i1 %i.ab, %i.ae
  br i1 %brmerge, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %.lr.ph195.preheader

.lr.ph195.preheader:                              ; preds = %.lr.ph198
  %i.af = and i64 %i.i, 2147483647                ; 6 uses
  %i.ag = zext nneg i32 %4 to i64                 ; 2 uses
  %wide.trip.count242 = zext nneg i32 %5 to i64
  %umax = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1) ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.af, 4
  %min.iters.check313 = icmp samesign ult i64 %i.af, 32
  %i.ah = and i64 %umax, 28
  %n.vec = and i64 %umax, 2147483616              ; 4 uses
  %cmp.n = icmp eq i64 %i.af, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.ah, 0
  %n.vec315 = and i64 %umax, 2147483644           ; 3 uses
  %cmp.n319 = icmp eq i64 %i.af, %n.vec315
  br label %.lr.ph195

bb.d:                                             ; preds = %bb.c
  %i.ai = mul i32 %i.k, %3                        ; 3 uses
  %i.aj = sext i32 %i.ai to i64                   ; 3 uses
  %i.ak = icmp slt i32 %i.ai, 0
  br i1 %i.ak, label %bb.e, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i176

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.245) #25
          to label %.noexc180 unwind label %bb.i

.noexc180:                                        ; preds = %bb.e
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i176: ; preds = %bb.d
  %.not.i.i.i.i177 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i177, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit182, label %bb.f
end_hunk_0
begin_hunk_1_@_Z15displayAsciiArtRKSt6vectorIhSaIhEEjjj:bb.a
bb.j:                                             ; preds = %bb.i
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.f, i64 noundef 1)
          to label %bb.s unwind label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 43)
          to label %bb.s unwind label %bb.m       ; 0 uses

bb.l:                                             ; preds = %.noexc128, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc126, %bb.f, %bb.d, %bb.c
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.m:                                             ; preds = %.invoke, %.noexc160, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i155, %.noexc158, %bb.bt, %.noexc138, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i133, %.noexc136, %bb.u, %bb.bl, %bb.bk, %bb.x, %bb.w, %bb.k, %bb.j, %bb.h, %bb.g
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.q
  %.066167 = phi i32 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %i.bl, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 45, ptr %i.e, align 1, !tbaa !34
  %i.bd = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.be = getelementptr i8, ptr %i.bd, i64 -24
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !145
  %.not.i83 = icmp eq i64 %i.bi, 0
  br i1 %.not.i83, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.e, i64 noundef 1)
          to label %bb.q unwind label %bb.r       ; 0 uses

bb.p:                                             ; preds = %bb.n
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 45)
          to label %bb.q unwind label %bb.r       ; 0 uses

bb.q:                                             ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bl = add nuw i32 %.066167, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.bl, %.057
  br i1 %exitcond.not, label %bb.i, label %bb.n, !llvm.loop !146

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.s:                                             ; preds = %bb.j, %bb.k
  %.0.i79 = phi ptr [ %i.az, %bb.j ], [ @_ZSt4cout, %bb.k ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bn = load ptr, ptr %.0.i79, align 8, !tbaa !8
  %i.bo = getelementptr i8, ptr %i.bn, i64 -24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds i8, ptr %.0.i79, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 240
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i130 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i130, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i131

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i131: ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !28
  %.not.i1.i.i132 = icmp eq i8 %i.bu, 0
  br i1 %.not.i1.i.i132, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i131
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 67
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i133

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i131
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bs)
          to label %.noexc136 unwind label %bb.m

.noexc136:                                        ; preds = %bb.u
  %i.bx = load ptr, ptr %i.bs, align 8, !tbaa !8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = invoke noundef signext i8 %i.bz(ptr noundef nonnull align 8 dereferenceable(570) %i.bs, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i133 unwind label %bb.m, !inline_history !89

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i133: ; preds = %.noexc136, %bb.t
  %.0.i.i.i134 = phi i8 [ %i.bw, %bb.t ], [ %i.ca, %.noexc136 ]
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i79, i8 noundef signext %.0.i.i.i134)
          to label %.noexc138 unwind label %bb.m

.noexc138:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i133
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cb)
          to label %_ZNSolsEPFRSoS_E.exit89.preheader.preheader unwind label %bb.m ; 0 uses

_ZNSolsEPFRSoS_E.exit89.preheader.preheader:      ; preds = %.noexc138
  %wide.trip.count = zext i32 %.057 to i64
  br label %_ZNSolsEPFRSoS_E.exit89.preheader

bb.v:                                             ; preds = %_ZNSolsEPFRSoS_E.exit107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 43, ptr %i.d, align 1, !tbaa !34
  %i.cd = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.ce = getelementptr i8, ptr %i.cd, i64 -24
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !145
  %.not.i90 = icmp eq i64 %i.ci, 0
  br i1 %.not.i90, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit94 unwind label %bb.m ; 0 uses

bb.x:                                             ; preds = %bb.v
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 43)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit94 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit94: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.bm

_ZNSolsEPFRSoS_E.exit89.preheader:                ; preds = %_ZNSolsEPFRSoS_E.exit89.preheader.preheader, %_ZNSolsEPFRSoS_E.exit107
  %.067169 = phi i32 [ %i.hu, %_ZNSolsEPFRSoS_E.exit107 ], [ 0, %_ZNSolsEPFRSoS_E.exit89.preheader.preheader ] ; 4 uses
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.25, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96: ; preds = %_ZNSolsEPFRSoS_E.exit89.preheader
  %i.cm = mul i32 %.067169, %.058
  %i.cn = udiv i32 %i.cm, %i.ak
  %i.co = mul i32 %i.cn, %.057
  %i.cp = shl nuw i32 %.067169, 2
  %i.cq = and i32 %i.cp, 12
  br label %bb.aa

bb.y:                                             ; preds = %bb.be
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.25, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98 unwind label %.loopexit ; 0 uses

bb.z:                                             ; preds = %_ZNSolsEPFRSoS_E.exit89.preheader
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.aa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96, %bb.be
  %indvars.iv = phi i64 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96 ], [ %indvars.iv.next, %bb.be ] ; 2 uses
  %i.ct = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.cu = add i32 %i.co, %i.ct
  %i.cv = shl i32 %i.cu, 3                        ; 4 uses
  %i.cw = zext i32 %i.cv to i64
  %i.cx = load ptr, ptr %.059, align 8, !tbaa !117 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cw
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !34  ; 2 uses
  %i.da = or disjoint i32 %i.cv, 2
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !34  ; 2 uses
  %i.de = or disjoint i32 %i.cv, 4
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !34  ; 2 uses
  %i.di = or disjoint i32 %i.cv, 6
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !34  ; 2 uses
  %.not.i99 = icmp eq i8 %i.dl, -1
  br i1 %.not.i99, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dm = zext i8 %i.dl to i32                    ; 3 uses
  %i.dn = zext i8 %i.cz to i32
  %i.do = mul nuw nsw i32 %i.dm, %i.dn
  %.lhs.trunc.i = trunc nuw i32 %i.do to i16
  %i.dp = udiv i16 %.lhs.trunc.i, 255
  %i.dq = trunc nuw i16 %i.dp to i8
  %i.dr = zext i8 %i.dd to i32
  %i.ds = mul nuw nsw i32 %i.dm, %i.dr
  %.lhs.trunc102.i = trunc nuw i32 %i.ds to i16
  %i.dt = udiv i16 %.lhs.trunc102.i, 255
  %i.du = trunc nuw i16 %i.dt to i8
  %i.dv = zext i8 %i.dh to i32
  %i.dw = mul nuw nsw i32 %i.dm, %i.dv
  %.lhs.trunc104.i = trunc nuw i32 %i.dw to i16
  %i.dx = udiv i16 %.lhs.trunc104.i, 255
  %i.dy = trunc nuw i16 %i.dx to i8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0101.i.a = phi i8 [ %i.dd, %bb.aa ], [ %i.du, %bb.ab ] ; 6 uses
  %.0100.i.a = phi i8 [ %i.dh, %bb.aa ], [ %i.dy, %bb.ab ] ; 5 uses
  %.098.i = phi i8 [ %i.cz, %bb.aa ], [ %i.dq, %bb.ab ] ; 6 uses
  %i.dz = zext i8 %.098.i to i32                  ; 2 uses
  %i.ea = zext i8 %.0101.i.a to i32               ; 2 uses
  %i.eb = zext i8 %.0100.i.a to i32               ; 2 uses
  %i.ec = call i8 @llvm.umax.i8(i8 %.0101.i.a, i8 %.0100.i.a) ; 2 uses
  %i.ed = call i8 @llvm.umax.i8(i8 %.098.i, i8 %i.ec) ; 3 uses
  %.sroa.speculated29.i.i = zext i8 %i.ed to i32
  %i.ee = call i8 @llvm.umin.i8(i8 %.0100.i.a, i8 %.0101.i.a)
  %i.ef = call i8 @llvm.umin.i8(i8 %i.ee, i8 %.098.i) ; 2 uses
  %.sroa.speculated.i.i = zext i8 %i.ef to i32
  %i.eg = icmp eq i8 %i.ef, %i.ed
  %.pre.i.i = sub nsw i32 %.sroa.speculated29.i.i, %.sroa.speculated.i.i ; 4 uses
  br i1 %i.eg, label %_Z8RGBtoHSLhhhPhS_S_.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not.i.i.i100 = icmp ult i8 %.098.i, %i.ec
  br i1 %.not.i.i.i100, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eh = sub nsw i32 %i.ea, %i.eb
  %i.ei = mul nsw i32 %i.eh, 255
  %i.ej = sdiv i32 %i.ei, %.pre.i.i
  br label %bb.ai

bb.af:                                            ; preds = %bb.ad
  %i.ek = icmp eq i8 %i.ed, %.0101.i.a
  br i1 %i.ek, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.el = sub nsw i32 %i.eb, %i.dz
  %i.em = mul nsw i32 %i.el, 255
  %i.en = sdiv i32 %i.em, %.pre.i.i
  %i.eo = add nsw i32 %i.en, 512
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.ep = sub nsw i32 %i.dz, %i.ea
  %i.eq = mul nsw i32 %i.ep, 255
  %i.er = sdiv i32 %i.eq, %.pre.i.i
  %i.es = add nsw i32 %i.er, 1024
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  %i.et = phi i32 [ %i.ej, %bb.ae ], [ %i.eo, %bb.ag ], [ %i.es, %bb.ah ]
  %i.eu = sdiv i32 %i.et, 6
  br label %_Z8RGBtoHSLhhhPhS_S_.exit.i.i

_Z8RGBtoHSLhhhPhS_S_.exit.i.i:                    ; preds = %bb.ai, %bb.ac
  %.099.i = phi i32 [ %i.eu, %bb.ai ], [ 0, %bb.ac ]
  %.sroa.speculated75.i = call i8 @llvm.umax.i8(i8 %.098.i, i8 %.0101.i.a)
  %.sroa.speculated60.i = call i8 @llvm.umax.i8(i8 %.sroa.speculated75.i, i8 %.0100.i.a)
  %i.ev = zext i8 %.sroa.speculated60.i to i32
  %.sroa.speculated72.i = call i8 @llvm.umin.i8(i8 %.0101.i.a, i8 %.098.i)
  %.sroa.speculated.i = call i8 @llvm.umin.i8(i8 %.0100.i.a, i8 %.sroa.speculated72.i)
  %i.ew = zext i8 %.sroa.speculated.i to i32
  %i.ex = add nuw nsw i32 %i.ev, %i.ew
  %i.ey = lshr i32 %i.ex, 1                       ; 2 uses
  %5 = and i32 %.pre.i.i, 255
  %i.ez = and i32 %i.ct, 3
  %i.fa = or disjoint i32 %i.ez, %i.cq            ; 2 uses
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr @_ZZL11applyDitheriiiibE7pattern, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !127
  %i.fe = mul nsw i32 %i.fd, 17
  %i.ff = add nsw i32 %i.fe, -128                 ; 3 uses
  %i.fg = mul nsw i32 %i.ff, 127
  %i.fh = sdiv i32 %i.fg, 128
  %i.fi = add nsw i32 %i.fh, %5
  %i.fj = icmp sgt i32 %i.fi, 127
  br i1 %i.fj, label %bb.aj, label %bb.au

bb.aj:                                            ; preds = %_Z8RGBtoHSLhhhPhS_S_.exit.i.i
  %i.fk = mul nsw i32 %i.ff, 21
  %i.fl = sdiv i32 %i.fk, 256
  %i.fm = add nsw i32 %i.fl, %.099.i
  %i.fn = and i32 %i.fm, 255                      ; 11 uses
  %i.fo = add nsw i32 %i.fn, -244
  %or.cond.i.i = icmp ult i32 %i.fo, -233
  br i1 %or.cond.i.i, label %_Z11HueToLetteri.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fp = icmp samesign ult i32 %i.fn, 32
  br i1 %i.fp, label %_Z11HueToLetteri.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fq = icmp samesign ult i32 %i.fn, 53
  br i1 %i.fq, label %_Z11HueToLetteri.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fr = icmp samesign ult i32 %i.fn, 74
  br i1 %i.fr, label %_Z11HueToLetteri.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fs = icmp samesign ult i32 %i.fn, 96
  br i1 %i.fs, label %_Z11HueToLetteri.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ft = icmp samesign ult i32 %i.fn, 117
  br i1 %i.ft, label %_Z11HueToLetteri.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fu = icmp samesign ult i32 %i.fn, 138
  br i1 %i.fu, label %_Z11HueToLetteri.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fv = icmp samesign ult i32 %i.fn, 159
  br i1 %i.fv, label %_Z11HueToLetteri.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fw = icmp samesign ult i32 %i.fn, 181
  br i1 %i.fw, label %_Z11HueToLetteri.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fx = icmp samesign ult i32 %i.fn, 202
  br i1 %i.fx, label %_Z11HueToLetteri.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fy = icmp samesign ult i32 %i.fn, 223
  %spec.select.i.i = select i1 %i.fy, i8 77, i8 70
  br label %_Z11HueToLetteri.exit.i

_Z11HueToLetteri.exit.i:                          ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj
  %.0.i.i = phi i8 [ %spec.select.i.i, %bb.at ], [ 82, %bb.aj ], [ 79, %bb.ak ], [ 89, %bb.al ], [ 76, %bb.am ], [ 71, %bb.an ], [ 84, %bb.ao ], [ 67, %bb.ap ], [ 65, %bb.aq ], [ 66, %bb.ar ], [ 86, %bb.as ]
  %i.fz = xor i32 %i.fa, 10
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr @_ZZL11applyDitheriiiibE7pattern, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !127
  %i.gd = mul i32 %i.gc, 1088
  %i.ge = add i32 %i.gd, -8192
  %i.gf = sdiv i32 %i.ge, 256
  %i.gg = add nsw i32 %i.gf, %i.ey
  %i.gh = icmp slt i32 %i.gg, 80
  %i.gi = select i1 %i.gh, i8 32, i8 0
  %i.gj = or disjoint i8 %i.gi, %.0.i.i
  br label %_Z11RGBtoLetterhhhhjjbb.exit

bb.au:                                            ; preds = %_Z8RGBtoHSLhhhPhS_S_.exit.i.i
  %i.gk = mul nsw i32 %i.ff, 31
  %i.gl = sdiv i32 %i.gk, 256
  %i.gm = add nsw i32 %i.gl, %i.ey                ; 8 uses
  %i.gn = icmp slt i32 %i.gm, 16
  br i1 %i.gn, label %_Z11RGBtoLetterhhhhjjbb.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.go = icmp samesign ult i32 %i.gm, 48
  br i1 %i.go, label %_Z11RGBtoLetterhhhhjjbb.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gp = icmp samesign ult i32 %i.gm, 80
  br i1 %i.gp, label %_Z11RGBtoLetterhhhhjjbb.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gq = icmp samesign ult i32 %i.gm, 112
  br i1 %i.gq, label %_Z11RGBtoLetterhhhhjjbb.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gr = icmp samesign ult i32 %i.gm, 144
  br i1 %i.gr, label %_Z11RGBtoLetterhhhhjjbb.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gs = icmp samesign ult i32 %i.gm, 176
  br i1 %i.gs, label %_Z11RGBtoLetterhhhhjjbb.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gt = icmp samesign ult i32 %i.gm, 208
  br i1 %i.gt, label %_Z11RGBtoLetterhhhhjjbb.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gu = icmp samesign ult i32 %i.gm, 240
  %..i38.i = select i1 %i.gu, i8 61, i8 35
  br label %_Z11RGBtoLetterhhhhjjbb.exit

_Z11RGBtoLetterhhhhjjbb.exit:                     ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %_Z11HueToLetteri.exit.i
  %.1.i = phi i8 [ %..i38.i, %bb.bb ], [ %i.gj, %_Z11HueToLetteri.exit.i ], [ 43, %bb.ba ], [ 32, %bb.au ], [ 46, %bb.av ], [ 58, %bb.aw ], [ 45, %bb.ax ], [ 33, %bb.ay ], [ 42, %bb.az ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %.1.i, ptr %i.c, align 1, !tbaa !34
  %i.gv = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.gw = getelementptr i8, ptr %i.gv, i64 -24
  %i.gx = load i64, ptr %i.gw, align 8
  %i.gy = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !145
  %.not.i101 = icmp eq i64 %i.ha, 0
  br i1 %.not.i101, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_Z11RGBtoLetterhhhhjjbb.exit
  %i.hb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %bb.be unwind label %bb.bf     ; 0 uses

bb.bd:                                            ; preds = %_Z11RGBtoLetterhhhhjjbb.exit
  %i.hc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.1.i)
          to label %bb.be unwind label %bb.bf     ; 0 uses

bb.be:                                            ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond173.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond173.not, label %bb.y, label %bb.aa, !llvm.loop !147

bb.bf:                                            ; preds = %bb.bd, %bb.bc
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98: ; preds = %bb.y
  %i.he = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.hf = getelementptr i8, ptr %i.he, i64 -24
  %i.hg = load i64, ptr %i.hf, align 8
  %i.hh = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 240
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i141 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i141, label %bb.bg, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i142

bb.bg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc146 unwind label %.loopexit.split-lp

.noexc146:                                        ; preds = %bb.bg
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i142: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 56
  %i.hl = load i8, ptr %i.hk, align 8, !tbaa !28
  %.not.i1.i.i143 = icmp eq i8 %i.hl, 0
  br i1 %.not.i1.i.i143, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i142
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 67
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i144

bb.bi:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i142
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hj)
          to label %.noexc147 unwind label %.loopexit

.noexc147:                                        ; preds = %bb.bi
  %i.ho = load ptr, ptr %i.hj, align 8, !tbaa !8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 48
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = invoke noundef signext i8 %i.hq(ptr noundef nonnull align 8 dereferenceable(570) %i.hj, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i144 unwind label %.loopexit, !inline_history !89

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i144: ; preds = %.noexc147, %bb.bh
  %.0.i.i.i145 = phi i8 [ %i.hn, %bb.bh ], [ %i.hr, %.noexc147 ]
  %i.hs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i145)
          to label %.noexc149 unwind label %.loopexit

.noexc149:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i144
  %i.ht = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hs)
          to label %_ZNSolsEPFRSoS_E.exit107 unwind label %.loopexit ; 0 uses

_ZNSolsEPFRSoS_E.exit107:                         ; preds = %.noexc149
  %i.hu = add nuw nsw i32 %.067169, 1
  %exitcond174.not = icmp eq i32 %.067169, %i.aj
  br i1 %exitcond174.not, label %bb.v, label %_ZNSolsEPFRSoS_E.exit89.preheader, !llvm.loop !148

.loopexit:                                        ; preds = %bb.y, %bb.bi, %.noexc147, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i144, %.noexc149
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.loopexit.split-lp:                               ; preds = %bb.bg
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bj:                                            ; preds = %bb.bp
end_hunk_1
begin_hunk_2_@_Z14displayPaletteR4DataRK7Options:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 320
  br label %bb.l

._crit_edge:                                      ; preds = %bb.l, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit
  %i.bd = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.be = getelementptr i8, ptr %i.bd, i64 -24    ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i32 %i.ak, ptr %i.bh, align 8, !tbaa !120
  %i.bi = load i64, ptr %i.be, align 8
  %i.bj = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 240
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i19 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i19, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i20

bb.i:                                             ; preds = %._crit_edge
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i20: ; preds = %._crit_edge
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !28
  %.not.i1.i.i21 = icmp eq i8 %i.bn, 0
  br i1 %.not.i1.i.i21, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i20
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 67
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit23

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i20
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bl)
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call noundef signext i8 %i.bs(ptr noundef nonnull align 8 dereferenceable(570) %i.bl, i8 noundef signext 10), !inline_history !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit23

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit23: ; preds = %bb.j, %bb.k
  %.0.i.i.i22 = phi i8 [ %i.bp, %bb.j ], [ %i.bt, %bb.k ]
  %i.bu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i22)
  %i.bv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bu) ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %.024 = phi i64 [ 0, %.lr.ph ], [ %i.dk, %bb.l ] ; 2 uses
  %i.bw = load ptr, ptr %i.bc, align 8, !tbaa !164
  %i.bx = shl i64 %.024, 2
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx ; 4 uses
  %i.bz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.35, i64 noundef 1) ; 0 uses
  %i.ca = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.cb = getelementptr i8, ptr %i.ca, i64 -24
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store i64 2, ptr %i.ce, align 8, !tbaa !145
  %i.cf = load i8, ptr %i.by, align 1, !tbaa !34
  %i.cg = zext i8 %i.cf to i32
  %i.ch = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.cg) ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !8
  %i.cj = getelementptr i8, ptr %i.ci, i64 -24
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds i8, ptr %i.ch, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i64 2, ptr %i.cm, align 8, !tbaa !145
  %i.cn = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !34
  %i.cp = zext i8 %i.co to i32
  %i.cq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, i32 noundef %i.cp) ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !8
  %i.cs = getelementptr i8, ptr %i.cr, i64 -24
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds i8, ptr %i.cq, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store i64 2, ptr %i.cv, align 8, !tbaa !145
  %i.cw = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !34
  %i.cy = zext i8 %i.cx to i32
  %i.cz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, i32 noundef %i.cy) ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !8
  %i.db = getelementptr i8, ptr %i.da, i64 -24
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = getelementptr inbounds i8, ptr %i.cz, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store i64 2, ptr %i.de, align 8, !tbaa !145
  %i.df = getelementptr inbounds nuw i8, ptr %i.by, i64 3
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !34
  %i.dh = zext i8 %i.dg to i32
  %i.di = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, i32 noundef %i.dh)
  %i.dj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull @.str.15, i64 noundef 1) ; 0 uses
  %i.dk = add nuw i64 %.024, 1                    ; 2 uses
  %i.dl = load i64, ptr %i.l, align 8, !tbaa !163
  %i.dm = icmp ult i64 %i.dk, %i.dl
  br i1 %i.dm, label %bb.l, label %._crit_edge, !llvm.loop !165

bb.m:                                             ; preds = %bb.a, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit23
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z20displayPalettePixelsRKSt6vectorIhSaIhEERK7Options(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(37) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %2 = alloca %"class.lodepng::State", align 8    ; 14 uses
  %3 = alloca %"class.std::vector", align 8       ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN7lodepng5StateC1Ev(ptr noundef nonnull align 8 dereferenceable(640) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.d = load i8, ptr %i.c, align 4, !tbaa !78, !range !75, !noundef !76
  %i.e = trunc nuw i8 %i.d to i1
  %_ZSt3hexRSt8ios_base._ZSt3decRSt8ios_base = select i1 %i.e, ptr @_ZSt3hexRSt8ios_base, ptr @_ZSt3decRSt8ios_base
  %i.f = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.h
  %i.j = invoke noundef nonnull align 8 dereferenceable(216) ptr %_ZSt3hexRSt8ios_base._ZSt3decRSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.i)
          to label %_ZNSolsEPFRSt8ios_baseS0_E.exit unwind label %bb.c, !inline_history !82 ; 0 uses

_ZNSolsEPFRSt8ios_baseS0_E.exit:                  ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 1, ptr %2, align 8, !tbaa !166
  store <4 x i32> <i32 1, i32 1, i32 1, i32 0>, ptr %i.k, align 8, !tbaa !127
  %i.l = invoke noundef i32 @_ZN7lodepng6decodeERSt6vectorIhSaIhEERjS4_RNS_5StateERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(640) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZNSolsEPFRSt8ios_baseS0_E.exit
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.e, label %_ZNSolsEPFRSoS_E.exit60

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.d:                                             ; preds = %.invoke, %.noexc111, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i106, %.noexc109, %bb.ad, %.noexc89, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i84, %.noexc87, %bb.t, %bb.ab, %bb.r, %_ZNSolsEPFRSt8ios_baseS0_E.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.p = load i32, ptr %i.o, align 8, !tbaa !167
  %i.q = icmp eq i32 %i.p, 3
  br i1 %i.q, label %bb.f, label %bb.ab

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.s = load i8, ptr %i.r, align 1, !tbaa !168, !range !75, !noundef !76
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.u = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znwm(i64 noundef 2048) #29
          to label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader unwind label %bb.h ; 5 uses

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.u, i8 0, i64 2048, i1 false), !tbaa !87
  %i.v = load i32, ptr %i.a, align 4, !tbaa !127
  %i.w = load i32, ptr %i.b, align 4, !tbaa !127
  %i.x = mul i32 %i.w, %i.v
  %.not126 = icmp eq i32 %i.x, 0
  br i1 %.not126, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 172
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 184
  br label %bb.i

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit._crit_edge: ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.028.lcssa = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %spec.select, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit ] ; 2 uses
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.36, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader: ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !169
  %.not127 = icmp eq i64 %i.ac, 0
  br i1 %.not127, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge, label %.lr.ph123

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.i:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %.027121 = phi i64 [ 0, %.lr.ph ], [ %i.an, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit ] ; 2 uses
  %.028120 = phi i64 [ 0, %.lr.ph ], [ %spec.select, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit ]
  %i.ae = load ptr, ptr %3, align 8, !tbaa !117
  %i.af = load i32, ptr %i.y, align 4, !tbaa !170
  %i.ag = invoke noundef i32 @_ZN7lodepng15getPaletteValueEPKhmi(ptr noundef nonnull %i.ae, i64 noundef %.027121, i32 noundef %i.af)
          to label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit unwind label %bb.j ; 2 uses

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit:            ; preds = %bb.i
  %4 = sext i32 %i.ag to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %4 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !87
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !87
  %i.ak = load i64, ptr %i.z, align 8, !tbaa !169
  %i.al = trunc i64 %i.ak to i32
  %.not35 = icmp sge i32 %i.ag, %i.al
  %i.am = zext i1 %.not35 to i64
  %spec.select = add i64 %.028120, %i.am          ; 2 uses
  %i.an = add nuw nsw i64 %.027121, 1             ; 2 uses
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !127
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !127
  %i.aq = mul i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = icmp samesign ult i64 %i.an, %i.ar
  br i1 %i.as, label %bb.i, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit._crit_edge, !llvm.loop !171

bb.j:                                             ; preds = %bb.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit48

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader
  %i.au = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.av = getelementptr i8, ptr %i.au, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 240
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i64 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i64, label %.invoke138, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !28
  %.not.i1.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i1.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 67
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.az)
          to label %.noexc66 unwind label %bb.m

.noexc66:                                         ; preds = %bb.l
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = invoke noundef signext i8 %i.bg(ptr noundef nonnull align 8 dereferenceable(570) %i.az, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.m, !inline_history !89

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc66, %bb.k
  %.0.i.i.i = phi i8 [ %i.bd, %bb.k ], [ %i.bh, %.noexc66 ]
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
          to label %.noexc68 unwind label %bb.m

.noexc68:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bi)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %.invoke138, %.noexc78, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i73, %.noexc76, %bb.q, %.noexc68, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc66, %bb.l, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42, %bb.o, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit._crit_edge
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit48

.lr.ph123:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40
  %.022122 = phi i64 [ %i.bp, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.022122
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !87
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.bm)
          to label %_ZNSolsEm.exit unwind label %bb.n

_ZNSolsEm.exit:                                   ; preds = %.lr.ph123
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40: ; preds = %_ZNSolsEm.exit
  %i.bp = add nuw i64 %.022122, 1                 ; 2 uses
  %i.bq = load i64, ptr %i.ab, align 8, !tbaa !169
  %i.br = icmp ult i64 %i.bp, %i.bq
  br i1 %i.br, label %.lr.ph123, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge, !llvm.loop !172

bb.n:                                             ; preds = %_ZNSolsEm.exit, %.lr.ph123
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit48

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc68
  %.not30 = icmp eq i64 %.028.lcssa, 0
  br i1 %.not30, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.37, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %bb.o
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %.028.lcssa)
          to label %_ZNSolsEm.exit44 unwind label %bb.m ; 3 uses

_ZNSolsEm.exit44:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !8
  %i.bw = getelementptr i8, ptr %i.bv, i64 -24
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds i8, ptr %i.bu, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 240
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i70 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i70, label %.invoke138, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i71

.invoke138:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge, %_ZNSolsEm.exit44
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.cont139 unwind label %bb.m

.cont139:                                         ; preds = %.invoke138
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i71: ; preds = %_ZNSolsEm.exit44
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !28
  %.not.i1.i.i72 = icmp eq i8 %i.cc, 0
  br i1 %.not.i1.i.i72, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i71
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 67
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i73

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i71
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ca)
          to label %.noexc76 unwind label %bb.m

.noexc76:                                         ; preds = %bb.q
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = invoke noundef signext i8 %i.ch(ptr noundef nonnull align 8 dereferenceable(570) %i.ca, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i73 unwind label %bb.m, !inline_history !89

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i73: ; preds = %.noexc76, %bb.p
  %.0.i.i.i74 = phi i8 [ %i.ce, %bb.p ], [ %i.ci, %.noexc76 ]
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, i8 noundef signext %.0.i.i.i74)
          to label %.noexc78 unwind label %bb.m

.noexc78:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i73
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cj)
          to label %_ZNSt6vectorImSaImEED2Ev.exit unwind label %bb.m ; 0 uses

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %.noexc78, %_ZNSolsEPFRSoS_E.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 2048) #27
  br label %bb.r

_ZNSt6vectorImSaImEED2Ev.exit48:                  ; preds = %bb.n, %bb.m, %bb.j
  %.pn = phi { ptr, i32 } [ %i.at, %bb.j ], [ %i.bs, %bb.n ], [ %i.bk, %bb.m ]
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 2048) #27
  br label %bb.af

bb.r:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.f
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.38, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50: ; preds = %bb.r
  %i.cm = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.cn = getelementptr i8, ptr %i.cm, i64 -24
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 240
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i81 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i81, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i82

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i82: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !28
  %.not.i1.i.i83 = icmp eq i8 %i.ct, 0
  br i1 %.not.i1.i.i83, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i82
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 67
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i84

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i82
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cr)
          to label %.noexc87 unwind label %bb.d

.noexc87:                                         ; preds = %bb.t
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = invoke noundef signext i8 %i.cy(ptr noundef nonnull align 8 dereferenceable(570) %i.cr, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i84 unwind label %bb.d, !inline_history !89

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i84: ; preds = %.noexc87, %bb.s
  %.0.i.i.i85 = phi i8 [ %i.cv, %bb.s ], [ %i.cz, %.noexc87 ]
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i85)
          to label %.noexc89 unwind label %bb.d

end_hunk_2
