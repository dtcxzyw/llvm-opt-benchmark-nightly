Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/pngdetail?download=true
inline.NumInlined: 2280
inline.NumDeleted: 605
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4lessIS5_ESaISt4pairIKS5_bEEEixERS9_:bb.a
  store ptr %1, ptr %2, align 8, !tbaa !80
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !49   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !49   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4lessIS5_ESaISt4pairIKS5_bEEE11lower_boundERS9_.exit, label %bb.b, !llvm.loop !5

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4lessIS5_ESaISt4pairIKS5_bEEE11lower_boundERS9_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4lessIS5_ESaISt4pairIKS5_bEEE11lower_boundERS9_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !49   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !50
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
  store ptr %1, ptr %2, align 8, !tbaa !80, !alias.scope !173
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !85     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !50 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !42
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !4

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !85
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !97
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
  store i8 0, ptr %4, align 1, !tbaa !42
  store i8 0, ptr %3, align 1, !tbaa !42
  store i8 %0, ptr %5, align 1, !tbaa !42
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %.sroa.speculated50 = zext i8 %i.e to i32       ; 2 uses
  %.sroa.speculated = zext i8 %i.g to i32         ; 2 uses
  %i.i = add nuw nsw i32 %.sroa.speculated, %.sroa.speculated50 ; 4 uses
  %i.j = sub nsw i32 %.sroa.speculated50, %.sroa.speculated ; 4 uses
  %i.k = lshr i32 %i.i, 1
  %i.l = trunc nuw i32 %i.k to i8
  store i8 %i.l, ptr %5, align 1, !tbaa !42
  %6 = mul nsw i32 %i.j, 255
  %.not.not = icmp samesign ult i32 %i.i, 256
  %i.m = sub nuw nsw i32 512, %i.i
  %i.n = select i1 %.not.not, i32 %i.i, i32 %i.m
  %7 = sdiv i32 %6, %i.n
  %i.o = trunc i32 %7 to i8
  store i8 %i.o, ptr %4, align 1, !tbaa !42
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
  store i8 %i.ad, ptr %3, align 1, !tbaa !42
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
  store i8 0, ptr %3, align 1, !tbaa !42
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
  store i8 %i.x, ptr %3, align 1, !tbaa !42
  br label %_Z8RGBtoHSLhhhPhS_S_.exit

_Z8RGBtoHSLhhhPhS_S_.exit:                        ; preds = %bb.b, %bb.h
  %.pre-phi = phi i32 [ %.pre, %bb.b ], [ %i.i, %bb.h ] ; 2 uses
  %i.y = trunc i32 %.pre-phi to i8
  store i8 %i.y, ptr %4, align 1, !tbaa !42
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
  store i8 %i.af, ptr %5, align 1, !tbaa !42
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
  %.lhs.trunc104.a = trunc nuw i32 %i.g to i16
  %i.h = udiv i16 %.lhs.trunc104.a, 255
  %i.i = trunc nuw i16 %i.h to i8
  %i.j = zext i8 %2 to i32
  %i.k = mul nuw nsw i32 %i.a, %i.j
  %.lhs.trunc106 = trunc nuw i32 %i.k to i16
  %i.l = udiv i16 %.lhs.trunc106, 255
  %i.m = trunc nuw i16 %i.l to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0103 = phi i8 [ %0, %bb.a ], [ %i.e, %bb.b ]  ; 9 uses
  %.0102 = phi i8 [ %1, %bb.a ], [ %i.i, %bb.b ]  ; 8 uses
  %.0101 = phi i8 [ %2, %bb.a ], [ %i.m, %bb.b ]  ; 6 uses
  %i.n = zext i8 %.0103 to i32                    ; 4 uses
  %i.o = zext i8 %.0102 to i32                    ; 4 uses
  %i.p = zext i8 %.0101 to i32                    ; 4 uses
  %i.q = tail call i8 @llvm.umax.i8(i8 %.0102, i8 %.0101) ; 3 uses
  %i.r = tail call i8 @llvm.umax.i8(i8 %.0103, i8 %i.q) ; 6 uses
  br i1 %6, label %bb.d, label %bb.ad

bb.d:                                             ; preds = %bb.c
  %.sroa.speculated29.i = zext i8 %i.r to i32
  %i.s = tail call i8 @llvm.umin.i8(i8 %.0101, i8 %.0102)
  %i.t = tail call i8 @llvm.umin.i8(i8 %i.s, i8 %.0103) ; 2 uses
  %.sroa.speculated.i = zext i8 %i.t to i32
  %i.u = icmp eq i8 %i.t, %i.r
  %.pre.i = sub nsw i32 %.sroa.speculated29.i, %.sroa.speculated.i ; 4 uses
  br i1 %i.u, label %_Z8RGBtoHSLhhhPhS_S_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp ult i8 %.0103, %i.q
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = sub nsw i32 %i.o, %i.p
  %i.w = mul nsw i32 %i.v, 255
  %i.x = sdiv i32 %i.w, %.pre.i
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.y = icmp eq i8 %i.r, %.0102
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
  %.0100 = phi i32 [ %i.ai, %bb.j ], [ 0, %bb.d ]
  %.sroa.speculated77 = tail call i8 @llvm.umax.i8(i8 %.0103, i8 %.0102)
  %.sroa.speculated62 = tail call i8 @llvm.umax.i8(i8 %.sroa.speculated77, i8 %.0101)
  %i.aj = zext i8 %.sroa.speculated62 to i32
  %.sroa.speculated74 = tail call i8 @llvm.umin.i8(i8 %.0102, i8 %.0103)
  %.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %.0101, i8 %.sroa.speculated74)
  %i.ak = zext i8 %.sroa.speculated to i32
  %i.al = add nuw nsw i32 %i.aj, %i.ak
  %i.am = lshr i32 %i.al, 1                       ; 2 uses
  %i.an = xor i32 %i.am, 255
  %spec.select108 = select i1 %7, i32 %i.an, i32 %i.am ; 2 uses
  %8 = and i32 %.pre.i, 255
  %i.ao = and i32 %4, 3
  %i.ap = shl i32 %5, 2
  %i.aq = and i32 %i.ap, 12
  %i.ar = or disjoint i32 %i.aq, %i.ao            ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr @_ZZL11applyDitheriiiibE7pattern, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !106
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
  %i.bd = add nsw i32 %i.bc, %.0100
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
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !106
  %i.bu = mul i32 %i.bt, 1088
  %i.bv = add i32 %i.bu, -8192
  %i.bw = sdiv i32 %i.bv, 256
  %i.bx = add nsw i32 %i.bw, %spec.select108
  %i.by = icmp slt i32 %i.bx, 80
  %i.bz = select i1 %i.by, i8 32, i8 0
  %i.ca = or disjoint i8 %i.bz, %.0.i
  br label %_Z17lightnessToLetteri.exit

bb.v:                                             ; preds = %_Z8RGBtoHSLhhhPhS_S_.exit.i
  %i.cb = mul nsw i32 %i.aw, 31
  %i.cc = sdiv i32 %i.cb, 256
  %i.cd = add nsw i32 %i.cc, %spec.select108      ; 8 uses
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
  %i.cm = tail call i8 @llvm.umin.i8(i8 %.0101, i8 %.0102)
  %i.cn = tail call i8 @llvm.umin.i8(i8 %i.cm, i8 %.0103) ; 2 uses
  %i.co = icmp eq i8 %i.cn, %i.r
  br i1 %i.co, label %_Z11HueToLetteri.exit46.thread, label %bb.ae

_Z11HueToLetteri.exit46.thread:                   ; preds = %bb.ad
  %i.cp = sext i1 %7 to i8
  %spec.select109118 = xor i8 %.0103, %i.cp
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
  %.not.i = icmp ult i8 %.0103, %i.q
  br i1 %.not.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cw = sub nsw i32 %i.o, %i.p
  %i.cx = mul nsw i32 %i.cw, 255
  %i.cy = sdiv i32 %i.cx, %i.cr
  br label %_Z8RGBtoHSLhhhPhS_S_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.cz = icmp eq i8 %i.r, %.0102
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
  %spec.select109 = xor i8 %i.ct, %i.dm           ; 3 uses
  %i.dn = add nsw i32 %i.dk, -244
  %or.cond.i43 = icmp ult i32 %i.dn, -233
  br i1 %or.cond.i43, label %_Z11HueToLetteri.exit46, label %bb.aj

bb.aj:                                            ; preds = %_Z8RGBtoHSLhhhPhS_S_.exit
  %i.do = icmp samesign ult i32 %i.dk, 32
  br i1 %i.do, label %_Z11HueToLetteri.exit46, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dp = icmp samesign ult i32 %i.dk, 53
  br i1 %i.dp, label %_Z11HueToLetteri.exit46, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dq = icmp samesign ult i32 %i.dk, 74
  br i1 %i.dq, label %_Z11HueToLetteri.exit46, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dr = icmp samesign ult i32 %i.dk, 96
  br i1 %i.dr, label %_Z11HueToLetteri.exit46, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ds = icmp samesign ult i32 %i.dk, 117
  br i1 %i.ds, label %_Z11HueToLetteri.exit46, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dt = icmp samesign ult i32 %i.dk, 138
  br i1 %i.dt, label %_Z11HueToLetteri.exit46, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.du = icmp samesign ult i32 %i.dk, 159
  br i1 %i.du, label %_Z11HueToLetteri.exit46, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dv = icmp samesign ult i32 %i.dk, 181
  br i1 %i.dv, label %_Z11HueToLetteri.exit46, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dw = icmp samesign ult i32 %i.dk, 202
  br i1 %i.dw, label %_Z11HueToLetteri.exit46, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dx = icmp samesign ult i32 %i.dk, 223
  %spec.select.i44 = select i1 %i.dx, i8 77, i8 70
  br label %_Z11HueToLetteri.exit46

_Z11HueToLetteri.exit46:                          ; preds = %_Z8RGBtoHSLhhhPhS_S_.exit, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as
  %.0.i45 = phi i8 [ %spec.select.i44, %bb.as ], [ 82, %_Z8RGBtoHSLhhhPhS_S_.exit ], [ 79, %bb.aj ], [ 89, %bb.ak ], [ 76, %bb.al ], [ 71, %bb.am ], [ 84, %bb.an ], [ 67, %bb.ao ], [ 65, %bb.ap ], [ 66, %bb.aq ], [ 86, %bb.ar ] ; 2 uses
  %i.dy = add i8 %spec.select109, 23
  %or.cond = icmp ult i8 %i.dy, 47
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.dl
  br i1 %or.cond5, label %bb.at, label %bb.bb

bb.at:                                            ; preds = %_Z11HueToLetteri.exit46.thread, %_Z11HueToLetteri.exit46
  %spec.select109121127 = phi i8 [ %spec.select109118, %_Z11HueToLetteri.exit46.thread ], [ %spec.select109, %_Z11HueToLetteri.exit46 ] ; 8 uses
  %i.dz = icmp ult i8 %spec.select109121127, 16
  br i1 %i.dz, label %_Z17lightnessToLetteri.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ea = icmp ult i8 %spec.select109121127, 48
  br i1 %i.ea, label %_Z17lightnessToLetteri.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eb = icmp ult i8 %spec.select109121127, 80
  br i1 %i.eb, label %_Z17lightnessToLetteri.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ec = icmp ult i8 %spec.select109121127, 112
  br i1 %i.ec, label %_Z17lightnessToLetteri.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ed = icmp ult i8 %spec.select109121127, -112
  br i1 %i.ed, label %_Z17lightnessToLetteri.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ee = icmp samesign ult i8 %spec.select109121127, -80
  br i1 %i.ee, label %_Z17lightnessToLetteri.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ef = icmp samesign ult i8 %spec.select109121127, -48
  br i1 %i.ef, label %_Z17lightnessToLetteri.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.eg = icmp samesign ult i8 %spec.select109121127, -16
  %..i47 = select i1 %i.eg, i8 61, i8 35
  br label %_Z17lightnessToLetteri.exit

bb.bb:                                            ; preds = %_Z11HueToLetteri.exit46
  %i.eh = or disjoint i8 %.0.i45, 32
  %i.ei = icmp slt i8 %spec.select109, 0
  %spec.select = select i1 %i.ei, i8 %.0.i45, i8 %i.eh
  br label %_Z17lightnessToLetteri.exit

_Z17lightnessToLetteri.exit:                      ; preds = %bb.bb, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %_Z11HueToLetteri.exit, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.1 = phi i8 [ %..i38, %bb.ac ], [ %i.ca, %_Z11HueToLetteri.exit ], [ 43, %bb.ab ], [ 32, %bb.v ], [ 46, %bb.w ], [ 58, %bb.x ], [ 45, %bb.y ], [ 33, %bb.z ], [ 42, %bb.aa ], [ %spec.select, %bb.bb ], [ 43, %bb.az ], [ 32, %bb.at ], [ 46, %bb.au ], [ 58, %bb.av ], [ 45, %bb.aw ], [ 33, %bb.ax ], [ 42, %bb.ay ], [ %..i47, %bb.ba ]
  ret i8 %.1
}

; Function Attrs: mustprogress uwtable
define void @_Z7rescaleRKSt6vectorIhSaIhEEiiiib(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.c = load ptr, ptr %1, align 8, !tbaa !100
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
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
  store ptr %i.o, ptr %0, align 8, !tbaa !100
  %i.p = getelementptr i8, ptr %i.o, i64 %i.m     ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !107
  store i8 0, ptr %i.o, align 1, !tbaa !42
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
  store ptr %.0.i.i.i.i.i, ptr %i.x, align 8, !tbaa !99
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
  %.pre.pre.pre = load ptr, ptr %1, align 8, !tbaa !100 ; 2 uses
  %.pre.pre.pre313 = ptrtoaddr ptr %.pre.pre.pre to i64
  %umax = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1) ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.af, 4
  %min.iters.check314 = icmp samesign ult i64 %i.af, 32
  %i.ah = and i64 %umax, 28
  %n.vec = and i64 %umax, 2147483616              ; 4 uses
  %cmp.n = icmp eq i64 %i.af, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.ah, 0
  %n.vec316 = and i64 %umax, 2147483644           ; 3 uses
  %cmp.n320 = icmp eq i64 %i.af, %n.vec316
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
end_hunk_0
begin_hunk_1_@_ZN4DataC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !49
  %i.m = load ptr, ptr %0, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i8 0, i64 48, i1 false)
  invoke void @_ZN7lodepng5StateC1Ev(ptr noundef nonnull align 8 dereferenceable(640) %i.p)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 728
  store i64 0, ptr %i.q, align 8
  ret void

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !107
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.e, %bb.f
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIhSaIhEED2Ev.exit4, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !107
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit4

_ZNSt6vectorIhSaIhEED2Ev.exit4:                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.g
  %i.af = load ptr, ptr %0, align 8, !tbaa !50    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.b
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit4
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !42
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.r
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(736) dereferenceable(736) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN7lodepng5StateD1Ev(ptr noundef nonnull align 8 dead_on_return(640) dereferenceable(640) %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !107
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIhSaIhEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !107
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit2

_ZNSt6vectorIhSaIhEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.c
  %i.p = load ptr, ptr %0, align 8, !tbaa !50     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2
  %i.s = load i64, ptr %i.q, align 8, !tbaa !42
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_Z14readExifUint32PKhmmb(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #13 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = trunc i64 %1 to i32                      ; 2 uses
  %i.c = icmp ugt i32 %i.a, %i.b
  %i.d = sub nuw i32 %i.b, %i.a
  %i.e = icmp ult i32 %i.d, 4
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 %2         ; 2 uses
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.g, align 1
  %i.i = tail call i32 @llvm.bswap.i32(i32 %i.h)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.g, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ %i.j, %bb.d ], [ %i.i, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 65536) i32 @_Z14readExifUint16PKhmmb(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #13 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = trunc i64 %1 to i32                      ; 2 uses
  %i.c = icmp ugt i32 %i.a, %i.b
  %i.d = sub nuw i32 %i.b, %i.a
  %i.e = icmp ult i32 %i.d, 2
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 %2         ; 3 uses
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.g, align 1, !tbaa !42
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 8
  %i.k = getelementptr i8, ptr %i.g, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !42
  %i.m = zext i8 %i.l to i32
  %i.n = or disjoint i32 %i.j, %i.m
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = load i16, ptr %i.g, align 1
  %i.p = zext i16 %i.o to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ %i.p, %bb.d ], [ %i.n, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_Z11showExifIFDPKhmmb(ptr nofree noundef readonly %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 16 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::map.30", align 8       ; 12 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  store i64 %2, ptr %i.d, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store i32 0, ptr %i.f, align 8, !tbaa !91
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr null, ptr %i.g, align 8, !tbaa !92
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.f, ptr %i.h, align 8, !tbaa !93
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.f, ptr %i.i, align 8, !tbaa !94
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !95
  %i.k = trunc i64 %1 to i32                      ; 30 uses
  br label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.a
  %.0218 = phi i64 [ 0, %bb.a ], [ %i.ah, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 3 uses
  %.0216 = phi i1 [ false, %bb.a ], [ true, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 3 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29
          to label %bb.b unwind label %bb.h       ; 5 uses

bb.b:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.m = load i64, ptr %i.d, align 8, !tbaa !81
  store i64 %i.m, ptr %i.l, align 8, !tbaa !81
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.o = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapImbSt4lessImESaISt4pairIKmbEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.o, align 1, !tbaa !96
  %umax = call i64 @llvm.umax.i64(i64 %.0218, i64 16385)
  %exitcond10311355 = icmp ugt i64 %.0218, 16384
  br i1 %exitcond10311355, label %._crit_edge, label %.lr.ph1363.preheader

.lr.ph1363.preheader:                             ; preds = %bb.c
  %.str.185..str.186 = select i1 %.0216, ptr @.str.185, ptr @.str.186
  %. = select i1 %.0216, i64 22, i64 10
  br label %.lr.ph1363

bb.d:                                             ; preds = %_ZNSolsEPFRSoS_E.exit246
  %exitcond1031 = icmp eq i64 %i.ah, %umax
  br i1 %exitcond1031, label %._crit_edge, label %.lr.ph1363, !llvm.loop !326

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %.sroa.21.0877.lcssa = phi ptr [ %.sroa.21.3.lcssa, %bb.d ], [ %i.n, %bb.c ] ; 3 uses
  %.sroa.0.0875.lcssa = phi ptr [ %.sroa.0.3.lcssa, %bb.d ], [ %i.l, %bb.c ] ; 3 uses
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.177, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit664 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %._crit_edge
  %i.q = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 240
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !35   ; 6 uses
  %.not.i.i.i424 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i424, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc425 unwind label %.loopexit.split-lp665

.noexc425:                                        ; preds = %bb.e
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.x = load i8, ptr %i.w, align 8, !tbaa !41
  %.not.i1.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 67
  %i.z = load i8, ptr %i.y, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.v)
          to label %.noexc426 unwind label %.loopexit664

.noexc426:                                        ; preds = %bb.g
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef signext i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(570) %i.v, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit664, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc426, %bb.f
  %.0.i.i.i = phi i8 [ %i.z, %bb.f ], [ %i.ad, %.noexc426 ]
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
          to label %.noexc428 unwind label %.loopexit664

.noexc428:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %.loopexit1073 unwind label %.loopexit664 ; 0 uses

bb.h:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %bb.b
  %.sroa.0.1 = phi ptr [ null, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ], [ %i.l, %bb.b ]
  %.sroa.21.1 = phi ptr [ null, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ], [ %i.n, %bb.b ]
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp645

.loopexit664:                                     ; preds = %._crit_edge, %bb.g, %.noexc426, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc428
  %lpad.loopexit666 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp645

.loopexit.split-lp665:                            ; preds = %bb.e
  %lpad.loopexit.split-lp667 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp645

.lr.ph1363:                                       ; preds = %.lr.ph1363.preheader, %bb.d
  %.in = phi i64 [ %i.ah, %bb.d ], [ %.0218, %.lr.ph1363.preheader ]
  %.sroa.0.08751361 = phi ptr [ %.sroa.0.3.lcssa, %bb.d ], [ %i.l, %.lr.ph1363.preheader ] ; 7 uses
  %.sroa.11.08761360 = phi ptr [ %.sroa.11.1.lcssa, %bb.d ], [ %i.n, %.lr.ph1363.preheader ]
  %.sroa.21.08771358 = phi ptr [ %.sroa.21.3.lcssa, %bb.d ], [ %i.n, %.lr.ph1363.preheader ] ; 7 uses
  %.05558781357 = phi i64 [ %.1556, %bb.d ], [ 0, %.lr.ph1363.preheader ]
  %.02028801356 = phi i1 [ true, %bb.d ], [ false, %.lr.ph1363.preheader ] ; 2 uses
  %i.ah = add i64 %.in, 1                         ; 3 uses
  %i.ai = getelementptr inbounds i8, ptr %.sroa.11.08761360, i64 -8 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !81 ; 7 uses
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %i.al = icmp ugt i32 %i.ak, %i.k
  %i.am = sub nuw i32 %i.k, %i.ak
  %i.an = icmp ult i32 %i.am, 2
  %i.ao = select i1 %i.al, i1 true, i1 %i.an
  br i1 %i.ao, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph1363
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.178, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243 unwind label %.loopexit659 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243: ; preds = %bb.i
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.aj)
          to label %_ZNSolsEm.exit unwind label %.loopexit659 ; 3 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !17
  %i.as = getelementptr i8, ptr %i.ar, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 240
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i430 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i430, label %bb.j, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i431

bb.j:                                             ; preds = %_ZNSolsEm.exit
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc435 unwind label %.loopexit.split-lp660

.noexc435:                                        ; preds = %bb.j
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i431: ; preds = %_ZNSolsEm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !41
  %.not.i1.i.i432 = icmp eq i8 %i.ay, 0
  br i1 %.not.i1.i.i432, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i431
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 67
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i433

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i431
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aw)
          to label %.noexc436 unwind label %.loopexit659

.noexc436:                                        ; preds = %bb.l
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = invoke noundef signext i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(570) %i.aw, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i433 unwind label %.loopexit659, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i433: ; preds = %.noexc436, %bb.k
  %.0.i.i.i434 = phi i8 [ %i.ba, %bb.k ], [ %i.be, %.noexc436 ]
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i8 noundef signext %.0.i.i.i434)
          to label %.noexc438 unwind label %.loopexit659

.noexc438:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i433
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
          to label %.loopexit1073 unwind label %.loopexit659 ; 0 uses

.loopexit659:                                     ; preds = %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243, %bb.l, %.noexc436, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i433, %.noexc438
  %lpad.loopexit661 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp645

.loopexit.split-lp660:                            ; preds = %bb.j
  %lpad.loopexit.split-lp662 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp645

bb.m:                                             ; preds = %.lr.ph1363
  %i.bh = getelementptr i8, ptr %0, i64 %i.aj     ; 3 uses
  br i1 %3, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !42
  %i.bj = zext i8 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 8
  %i.bl = getelementptr i8, ptr %i.bh, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !42
  %i.bn = zext i8 %i.bm to i64
  %i.bo = or disjoint i64 %i.bk, %i.bn
  br label %_Z14readExifUint16PKhmmb.exit

bb.o:                                             ; preds = %bb.m
  %i.bp = load i16, ptr %i.bh, align 1
end_hunk_1
begin_hunk_2_@_Z11showExifIFDPKhmmb:bb.a
  %i.lg = or disjoint i64 %i.lc, %i.lf
  br label %.invoke1214

bb.bp:                                            ; preds = %bb.bn
  %i.lh = load i16, ptr %i.kz, align 1
  %i.li = zext i16 %i.lh to i64
  br label %.invoke1214

bb.bq:                                            ; preds = %bb.be
  %i.lj = icmp eq i32 %.0.i283559565579, 34665
  br i1 %i.lj, label %bb.br, label %bb.cc

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.lk = icmp ult i32 %i.is, 4
  br i1 %i.lk, label %_Z14readExifUint32PKhmmb.exit350.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ll = zext i32 %spec.select593 to i64
  %i.lm = getelementptr i8, ptr %0, i64 %i.ll     ; 2 uses
  br i1 %3, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ln = load i32, ptr %i.lm, align 1
  %i.lo = call i32 @llvm.bswap.i32(i32 %i.ln)
  br label %_Z14readExifUint32PKhmmb.exit350

bb.bu:                                            ; preds = %bb.bs
  %i.lp = load i32, ptr %i.lm, align 1
  br label %_Z14readExifUint32PKhmmb.exit350

_Z14readExifUint32PKhmmb.exit350:                 ; preds = %bb.bt, %bb.bu
  %.0.i349 = phi i32 [ %i.lp, %bb.bu ], [ %i.lo, %bb.bt ] ; 2 uses
  %i.lq = zext i32 %.0.i349 to i64                ; 4 uses
  store i64 %i.lq, ptr %i.e, align 8, !tbaa !81
  %.not225 = icmp eq i32 %.0.i349, 0
  br i1 %.not225, label %_Z14readExifUint32PKhmmb.exit350.thread, label %bb.bv

bb.bv:                                            ; preds = %_Z14readExifUint32PKhmmb.exit350
  %i.lr = load ptr, ptr %i.g, align 8, !tbaa !92  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.lr, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bv, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.lr, %bb.bv ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.f, %bb.bv ] ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !81
  %i.lu = icmp ult i64 %i.lt, %i.lq               ; 3 uses
  %.19.i.i.i = select i1 %i.lu, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.lu, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i351 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i351, label %_ZNKSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !328

_ZNKSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.lv = icmp eq ptr %.19.i.i.i, %i.f
  br i1 %i.lv, label %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit.thread, label %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit

_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.lu, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.lw = load i64, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !81
  %.not631 = icmp ugt i64 %i.lw, %i.lq
  br i1 %.not631, label %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit.thread, label %_Z14readExifUint32PKhmmb.exit350.thread

_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit.thread: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.bv, %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit
  %.not.i352 = icmp eq ptr %.sroa.11.1867, %.sroa.21.3868
  br i1 %.not.i352, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit.thread
  store i64 %i.lq, ptr %.sroa.11.1867, align 8, !tbaa !81
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit361

bb.bx:                                            ; preds = %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit.thread
  %i.lx = ptrtoint ptr %.sroa.21.3868 to i64
  %i.ly = ptrtoint ptr %.sroa.0.3866 to i64
  %i.lz = sub i64 %i.lx, %i.ly                    ; 6 uses
  %i.ma = icmp eq i64 %i.lz, 9223372036854775800
  br i1 %i.ma, label %bb.by, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i353

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.250) #25
          to label %.noexc359 unwind label %.loopexit.split-lp640

.noexc359:                                        ; preds = %bb.by
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i353: ; preds = %bb.bx
  %i.mb = ashr exact i64 %i.lz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i354 = call i64 @llvm.umax.i64(i64 %i.mb, i64 1)
  %i.mc = add nsw i64 %.sroa.speculated.i.i.i354, %i.mb ; 2 uses
  %i.md = icmp ult i64 %i.mc, %i.mb
  %i.me = call i64 @llvm.umin.i64(i64 %i.mc, i64 1152921504606846975)
  %i.mf = select i1 %i.md, i64 1152921504606846975, i64 %i.me ; 3 uses
  %.not.i.i.i355 = icmp ne i64 %i.mf, 0
  call void @llvm.assume(i1 %.not.i.i.i355)
  %i.mg = shl nuw nsw i64 %i.mf, 3
  %i.mh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mg) #29
          to label %.noexc360 unwind label %.loopexit639 ; 4 uses

.noexc360:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i353
  %i.mi = getelementptr inbounds i8, ptr %i.mh, i64 %i.lz ; 2 uses
  %i.mj = load i64, ptr %i.e, align 8, !tbaa !81
  store i64 %i.mj, ptr %i.mi, align 8, !tbaa !81
  %i.mk = icmp sgt i64 %i.lz, 0
  br i1 %i.mk, label %bb.bz, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i358

bb.bz:                                            ; preds = %.noexc360
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mh, ptr align 8 %.sroa.0.3866, i64 %i.lz, i1 false)
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i358

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i358: ; preds = %bb.bz, %.noexc360
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.3866, i64 noundef %i.lz) #27
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %i.mf
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit361

_ZNSt6vectorImSaImEE9push_backERKm.exit361:       ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i358, %bb.bw
  %.sroa.0.15 = phi ptr [ %i.mh, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i358 ], [ %.sroa.0.3866, %bb.bw ] ; 2 uses
  %.pn = phi ptr [ %i.mi, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i358 ], [ %.sroa.11.1867, %bb.bw ]
  %.sroa.21.15 = phi ptr [ %i.ml, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i358 ], [ %.sroa.21.3868, %bb.bw ] ; 2 uses
  %i.mm = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapImbSt4lessImESaISt4pairIKmbEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ca unwind label %.loopexit639

bb.ca:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit361
  %.sroa.11.8 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  store i8 1, ptr %i.mm, align 1, !tbaa !96
  br label %_Z14readExifUint32PKhmmb.exit350.thread

.loopexit639:                                     ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit361, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i353
  %.sroa.0.5.ph = phi ptr [ %.sroa.0.3866, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i353 ], [ %.sroa.0.15, %_ZNSt6vectorImSaImEE9push_backERKm.exit361 ]
  %.sroa.21.5.ph = phi ptr [ %.sroa.21.3868, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i353 ], [ %.sroa.21.15, %_ZNSt6vectorImSaImEE9push_backERKm.exit361 ]
  %lpad.loopexit641 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

.loopexit.split-lp640:                            ; preds = %bb.by
  %lpad.loopexit.split-lp642 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.cb:                                            ; preds = %.loopexit.split-lp640, %.loopexit639
  %.sroa.0.5 = phi ptr [ %.sroa.0.5.ph, %.loopexit639 ], [ %.sroa.0.3866, %.loopexit.split-lp640 ]
  %.sroa.21.5 = phi ptr [ %.sroa.21.5.ph, %.loopexit639 ], [ %.sroa.21.3868, %.loopexit.split-lp640 ]
  %lpad.phi643 = phi { ptr, i32 } [ %lpad.loopexit641, %.loopexit639 ], [ %lpad.loopexit.split-lp642, %.loopexit.split-lp640 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br label %.loopexit.split-lp645

_Z14readExifUint32PKhmmb.exit350.thread:          ; preds = %bb.br, %bb.ca, %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit, %_Z14readExifUint32PKhmmb.exit350
  %.sroa.0.6 = phi ptr [ %.sroa.0.3866, %_Z14readExifUint32PKhmmb.exit350 ], [ %.sroa.0.15, %bb.ca ], [ %.sroa.0.3866, %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit ], [ %.sroa.0.3866, %bb.br ]
  %.sroa.11.2 = phi ptr [ %.sroa.11.1867, %_Z14readExifUint32PKhmmb.exit350 ], [ %.sroa.11.8, %bb.ca ], [ %.sroa.11.1867, %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit ], [ %.sroa.11.1867, %bb.br ]
  %.sroa.21.6 = phi ptr [ %.sroa.21.3868, %_Z14readExifUint32PKhmmb.exit350 ], [ %.sroa.21.15, %bb.ca ], [ %.sroa.21.3868, %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit ], [ %.sroa.21.3868, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br label %_ZNSolsEj.exit342

bb.cc:                                            ; preds = %bb.bq
  %i.mn = icmp ult i32 %i.is, 4
  br i1 %i.mn, label %_Z14readExifUint32PKhmmb.exit363, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mo = zext i32 %spec.select593 to i64
  %i.mp = getelementptr i8, ptr %0, i64 %i.mo     ; 2 uses
  br i1 %3, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.mq = load i32, ptr %i.mp, align 1
  %i.mr = call i32 @llvm.bswap.i32(i32 %i.mq)
  br label %_Z14readExifUint32PKhmmb.exit363

bb.cf:                                            ; preds = %bb.cd
  %i.ms = load i32, ptr %i.mp, align 1
  br label %_Z14readExifUint32PKhmmb.exit363

_Z14readExifUint32PKhmmb.exit363:                 ; preds = %bb.cc, %bb.ce, %bb.cf
  %.0.i362 = phi i32 [ %i.ms, %bb.cf ], [ %i.mr, %bb.ce ], [ 0, %bb.cc ]
  %i.mt = zext i32 %.0.i362 to i64
  br label %.invoke1214

bb.cg:                                            ; preds = %bb.be
  %i.mu = icmp ult i32 %i.is, 4
  br i1 %i.mu, label %_Z14readExifUint32PKhmmb.exit367, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mv = zext i32 %spec.select593 to i64
  %i.mw = getelementptr i8, ptr %0, i64 %i.mv     ; 2 uses
  br i1 %3, label %_Z14readExifUint32PKhmmb.exit367.thread600, label %_Z14readExifUint32PKhmmb.exit367.thread

_Z14readExifUint32PKhmmb.exit367:                 ; preds = %bb.cg
  %i.mx = add i32 %spec.select593, 4              ; 3 uses
  %i.my = icmp ugt i32 %i.mx, %i.k
  %i.mz = sub nuw i32 %i.k, %i.mx
  %i.na = icmp ult i32 %i.mz, 4
  %i.nb = select i1 %i.my, i1 true, i1 %i.na
  br i1 %i.nb, label %_Z14readExifUint32PKhmmb.exit369, label %bb.ci

_Z14readExifUint32PKhmmb.exit367.thread600:       ; preds = %bb.ch
  %i.nc = load i32, ptr %i.mw, align 1
  %i.nd = call i32 @llvm.bswap.i32(i32 %i.nc)
  %i.ne = uitofp i32 %i.nd to double              ; 2 uses
  %i.nf = add nuw i32 %spec.select593, 4          ; 2 uses
  %i.ng = sub nuw i32 %i.k, %i.nf
  %i.nh = icmp ult i32 %i.ng, 4
  br i1 %i.nh, label %_Z14readExifUint32PKhmmb.exit369, label %.thread602

.thread602:                                       ; preds = %_Z14readExifUint32PKhmmb.exit367.thread600
  %i.ni = zext i32 %i.nf to i64
  %i.nj = getelementptr i8, ptr %0, i64 %i.ni
  br label %bb.cj

_Z14readExifUint32PKhmmb.exit367.thread:          ; preds = %bb.ch
  %i.nk = load i32, ptr %i.mw, align 1
  %i.nl = uitofp i32 %i.nk to double              ; 2 uses
  %i.nm = add nuw i32 %spec.select593, 4          ; 2 uses
  %i.nn = sub nuw i32 %i.k, %i.nm
  %i.no = icmp ult i32 %i.nn, 4
  br i1 %i.no, label %_Z14readExifUint32PKhmmb.exit369, label %.thread599

.thread599:                                       ; preds = %_Z14readExifUint32PKhmmb.exit367.thread
  %i.np = zext i32 %i.nm to i64
  %i.nq = getelementptr i8, ptr %0, i64 %i.np
  br label %bb.ck

bb.ci:                                            ; preds = %_Z14readExifUint32PKhmmb.exit367
  %i.nr = zext i32 %i.mx to i64
  %i.ns = getelementptr i8, ptr %0, i64 %i.nr     ; 2 uses
  br i1 %3, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.thread602, %bb.ci
  %i.nt = phi ptr [ %i.nj, %.thread602 ], [ %i.ns, %bb.ci ]
  %i.nu = phi double [ %i.ne, %.thread602 ], [ 0.000000e+00, %bb.ci ]
  %i.nv = load i32, ptr %i.nt, align 1
  %i.nw = call i32 @llvm.bswap.i32(i32 %i.nv)
  br label %_Z14readExifUint32PKhmmb.exit369

bb.ck:                                            ; preds = %.thread599, %bb.ci
  %i.nx = phi ptr [ %i.nq, %.thread599 ], [ %i.ns, %bb.ci ]
  %i.ny = phi double [ %i.nl, %.thread599 ], [ 0.000000e+00, %bb.ci ]
  %i.nz = load i32, ptr %i.nx, align 1
  br label %_Z14readExifUint32PKhmmb.exit369

_Z14readExifUint32PKhmmb.exit369:                 ; preds = %_Z14readExifUint32PKhmmb.exit367.thread600, %_Z14readExifUint32PKhmmb.exit367.thread, %_Z14readExifUint32PKhmmb.exit367, %bb.cj, %bb.ck
  %i.oa = phi double [ %i.ny, %bb.ck ], [ %i.nu, %bb.cj ], [ 0.000000e+00, %_Z14readExifUint32PKhmmb.exit367 ], [ %i.nl, %_Z14readExifUint32PKhmmb.exit367.thread ], [ %i.ne, %_Z14readExifUint32PKhmmb.exit367.thread600 ]
  %.0.i368 = phi i32 [ %i.nz, %bb.ck ], [ %i.nw, %bb.cj ], [ 0, %_Z14readExifUint32PKhmmb.exit367 ], [ 0, %_Z14readExifUint32PKhmmb.exit367.thread ], [ 0, %_Z14readExifUint32PKhmmb.exit367.thread600 ]
  %i.ob = uitofp i32 %.0.i368 to double
  %i.oc = fdiv double %i.oa, %i.ob
  %i.od = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.oc)
          to label %_ZNSolsEj.exit342 unwind label %bb.cl ; 0 uses

bb.cl:                                            ; preds = %_Z14readExifUint32PKhmmb.exit369
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp645

bb.cm:                                            ; preds = %bb.be
  %i.of = icmp eq i32 %.0.i285567577, 7           ; 2 uses
  %i.og = icmp ugt i32 %i.ig, 8
  %or.cond14 = and i1 %i.of, %i.og
  br i1 %or.cond14, label %bb.cn, label %bb.cw

bb.cn:                                            ; preds = %bb.cm
  %i.oh = zext i32 %spec.select593 to i64
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 %i.oh ; 2 uses
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !42
  %i.ok = icmp eq i8 %i.oj, 65
  br i1 %i.ok, label %bb.co, label %.thread606

bb.co:                                            ; preds = %bb.cn
  %i.ol = add nuw i32 %spec.select593, 1
  %i.om = zext i32 %i.ol to i64
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 %i.om
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !42
  %i.op = icmp eq i8 %i.oo, 83
  br i1 %i.op, label %bb.cp, label %.thread606

bb.cp:                                            ; preds = %bb.co
  %i.oq = add nuw i32 %spec.select593, 2
  %i.or = zext i32 %i.oq to i64
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 %i.or
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !42
  %i.ou = icmp eq i8 %i.ot, 67
  br i1 %i.ou, label %bb.cq, label %.thread606

bb.cq:                                            ; preds = %bb.cp
  %i.ov = add nuw i32 %spec.select593, 3
  %i.ow = zext i32 %i.ov to i64
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 %i.ow
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !42
  %i.oz = icmp eq i8 %i.oy, 73
  br i1 %i.oz, label %bb.cr, label %.thread606

bb.cr:                                            ; preds = %bb.cq
  %i.pa = add nuw i32 %spec.select593, 4
  %i.pb = zext i32 %i.pa to i64
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 %i.pb
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !42
  %i.pe = icmp eq i8 %i.pd, 73
  br i1 %i.pe, label %.lr.ph, label %.thread606

.lr.ph:                                           ; preds = %bb.cr, %bb.cu
  %.0194865 = phi i64 [ %i.po, %bb.cu ], [ 8, %bb.cr ] ; 2 uses
  %gep864 = getelementptr inbounds nuw i8, ptr %i.oi, i64 %.0194865
  %i.pf = load i8, ptr %gep864, align 1, !tbaa !42 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.pf, ptr %i.b, align 1, !tbaa !42
  %i.pg = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.ph = getelementptr i8, ptr %i.pg, i64 -24
  %i.pi = load i64, ptr %i.ph, align 8
  %i.pj = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.pi
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !109
  %.not.i.i371 = icmp eq i64 %i.pl, 0
  br i1 %.not.i.i371, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph
  %i.pm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.cu unwind label %bb.cv     ; 0 uses

bb.ct:                                            ; preds = %.lr.ph
  %i.pn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %i.pf)
          to label %bb.cu unwind label %bb.cv     ; 0 uses

bb.cu:                                            ; preds = %bb.cs, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.po = add nuw nsw i64 %.0194865, 1            ; 2 uses
  %exitcond1029.not = icmp eq i64 %i.po, %i.ih
  br i1 %exitcond1029.not, label %_ZNSolsEj.exit342, label %.lr.ph, !llvm.loop !329

bb.cv:                                            ; preds = %bb.ct, %bb.cs
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp645

bb.cw:                                            ; preds = %bb.cm
  %i.pq = icmp eq i32 %i.ig, 4
  %i.pr = icmp eq i32 %.0.i283559565579, 36864
  %i.ps = and i1 %i.pr, %i.pq
  %or.cond18 = and i1 %i.of, %i.ps
  br i1 %or.cond18, label %.preheader633, label %bb.dj

.preheader633:                                    ; preds = %bb.cw
  %i.pt = zext i32 %spec.select593 to i64
  %invariant.gep860 = getelementptr inbounds nuw i8, ptr %0, i64 %i.pt ; 4 uses
  %i.pu = load i8, ptr %invariant.gep860, align 1, !tbaa !42 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.pu, ptr %i.a, align 1, !tbaa !42
  %i.pv = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.pw = getelementptr i8, ptr %i.pv, i64 -24
  %i.px = load i64, ptr %i.pw, align 8
  %i.py = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.px
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !109
  %.not.i.i376 = icmp eq i64 %i.qa, 0
  br i1 %.not.i.i376, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %.preheader633
  %i.qb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.cz unwind label %bb.di     ; 0 uses

bb.cy:                                            ; preds = %.preheader633
  %i.qc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %i.pu)
          to label %bb.cz unwind label %bb.di     ; 0 uses

bb.cz:                                            ; preds = %bb.cx, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %gep861.1 = getelementptr inbounds nuw i8, ptr %invariant.gep860, i64 1
  %i.qd = load i8, ptr %gep861.1, align 1, !tbaa !42 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.qd, ptr %i.a, align 1, !tbaa !42
  %i.qe = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.qf = getelementptr i8, ptr %i.qe, i64 -24
  %i.qg = load i64, ptr %i.qf, align 8
  %i.qh = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.qg
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !109
  %.not.i.i376.1 = icmp eq i64 %i.qj, 0
  br i1 %.not.i.i376.1, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.qk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.dc unwind label %bb.di     ; 0 uses

bb.db:                                            ; preds = %bb.cz
  %i.ql = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %i.qd)
          to label %bb.dc unwind label %bb.di     ; 0 uses

bb.dc:                                            ; preds = %bb.db, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %gep861.2 = getelementptr inbounds nuw i8, ptr %invariant.gep860, i64 2
  %i.qm = load i8, ptr %gep861.2, align 1, !tbaa !42 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.qm, ptr %i.a, align 1, !tbaa !42
  %i.qn = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.qo = getelementptr i8, ptr %i.qn, i64 -24
  %i.qp = load i64, ptr %i.qo, align 8
  %i.qq = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.qp
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !109
  %.not.i.i376.2 = icmp eq i64 %i.qs, 0
  br i1 %.not.i.i376.2, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.qt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.df unwind label %bb.di     ; 0 uses

bb.de:                                            ; preds = %bb.dc
  %i.qu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %i.qm)
          to label %bb.df unwind label %bb.di     ; 0 uses

bb.df:                                            ; preds = %bb.de, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %gep861.3 = getelementptr inbounds nuw i8, ptr %invariant.gep860, i64 3
  %i.qv = load i8, ptr %gep861.3, align 1, !tbaa !42 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.qv, ptr %i.a, align 1, !tbaa !42
  %i.qw = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.qx = getelementptr i8, ptr %i.qw, i64 -24
  %i.qy = load i64, ptr %i.qx, align 8
  %i.qz = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.qy
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !109
  %.not.i.i376.3 = icmp eq i64 %i.rb, 0
  br i1 %.not.i.i376.3, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.rc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZNSolsEj.exit342.loopexit881 unwind label %bb.di ; 0 uses

bb.dh:                                            ; preds = %bb.df
  %i.rd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %i.qv)
          to label %_ZNSolsEj.exit342.loopexit881 unwind label %bb.di ; 0 uses

_ZNSolsEj.exit342.loopexit881:                    ; preds = %bb.dh, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNSolsEj.exit342

bb.di:                                            ; preds = %bb.dh, %bb.dg, %bb.de, %bb.dd, %bb.db, %bb.da, %bb.cy, %bb.cx
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp645

bb.dj:                                            ; preds = %bb.cw
  switch i32 %.0.i285567577, label %.thread606 [
    i32 8, label %bb.dk
    i32 9, label %bb.do
    i32 10, label %bb.ds
  ]

bb.dk:                                            ; preds = %bb.dj
  %i.rf = icmp ult i32 %i.is, 2
  br i1 %i.rf, label %_Z14readExifUint16PKhmmb.exit382, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.rg = zext i32 %spec.select593 to i64
  %i.rh = getelementptr i8, ptr %0, i64 %i.rg     ; 3 uses
  br i1 %3, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !42
  %i.rj = zext i8 %i.ri to i32
  %i.rk = shl nuw nsw i32 %i.rj, 8
  %i.rl = getelementptr i8, ptr %i.rh, i64 1
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !42
  %i.rn = zext i8 %i.rm to i32
  %i.ro = or disjoint i32 %i.rk, %i.rn
  br label %_Z14readExifUint16PKhmmb.exit382

bb.dn:                                            ; preds = %bb.dl
  %i.rp = load i16, ptr %i.rh, align 1
  %i.rq = zext i16 %i.rp to i32
  br label %_Z14readExifUint16PKhmmb.exit382

_Z14readExifUint16PKhmmb.exit382:                 ; preds = %bb.dk, %bb.dm, %bb.dn
  %.0.i381 = phi i32 [ %i.rq, %bb.dn ], [ %i.ro, %bb.dm ], [ 0, %bb.dk ]
  %i.rr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.0.i381)
          to label %_ZNSolsEj.exit342 unwind label %.loopexit ; 0 uses

bb.do:                                            ; preds = %bb.dj
  %i.rs = icmp ult i32 %i.is, 4
  br i1 %i.rs, label %_Z14readExifUint32PKhmmb.exit384, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.rt = zext i32 %spec.select593 to i64
  %i.ru = getelementptr i8, ptr %0, i64 %i.rt     ; 3 uses
  br i1 %3, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.rv = getelementptr i8, ptr %i.ru, i64 2
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !42
  %i.rx = zext i8 %i.rw to i32
  %i.ry = shl nuw nsw i32 %i.rx, 8
  %i.rz = getelementptr i8, ptr %i.ru, i64 3
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !42
  %i.sb = zext i8 %i.sa to i32
  %i.sc = or disjoint i32 %i.ry, %i.sb
  br label %_Z14readExifUint32PKhmmb.exit384

bb.dr:                                            ; preds = %bb.dp
  %i.sd = load i32, ptr %i.ru, align 1
  br label %_Z14readExifUint32PKhmmb.exit384

_Z14readExifUint32PKhmmb.exit384:                 ; preds = %bb.do, %bb.dq, %bb.dr
  %.0.i383 = phi i32 [ %i.sd, %bb.dr ], [ %i.sc, %bb.dq ], [ 0, %bb.do ]
  %i.se = trunc i32 %.0.i383 to i16
  %i.sf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i16 noundef signext %i.se)
          to label %_ZNSolsEj.exit342 unwind label %.loopexit ; 0 uses

bb.ds:                                            ; preds = %bb.dj
  %i.sg = icmp ult i32 %i.is, 4
  br i1 %i.sg, label %_Z14readExifUint32PKhmmb.exit386, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.sh = zext i32 %spec.select593 to i64
  %i.si = getelementptr i8, ptr %0, i64 %i.sh     ; 2 uses
  br i1 %3, label %_Z14readExifUint32PKhmmb.exit386.thread609, label %_Z14readExifUint32PKhmmb.exit386.thread

_Z14readExifUint32PKhmmb.exit386:                 ; preds = %bb.ds
  %i.sj = add i32 %spec.select593, 4              ; 3 uses
  %i.sk = icmp ugt i32 %i.sj, %i.k
  %i.sl = sub nuw i32 %i.k, %i.sj
  %i.sm = icmp ult i32 %i.sl, 4
  %i.sn = select i1 %i.sk, i1 true, i1 %i.sm
  br i1 %i.sn, label %_Z14readExifUint32PKhmmb.exit388, label %bb.du

_Z14readExifUint32PKhmmb.exit386.thread609:       ; preds = %bb.dt
  %i.so = load i32, ptr %i.si, align 1
  %i.sp = call i32 @llvm.bswap.i32(i32 %i.so)
  %i.sq = sitofp i32 %i.sp to double              ; 2 uses
  %i.sr = add nuw i32 %spec.select593, 4          ; 2 uses
  %i.ss = sub nuw i32 %i.k, %i.sr
  %i.st = icmp ult i32 %i.ss, 4
  br i1 %i.st, label %_Z14readExifUint32PKhmmb.exit388, label %.thread611

.thread611:                                       ; preds = %_Z14readExifUint32PKhmmb.exit386.thread609
  %i.su = zext i32 %i.sr to i64
  %i.sv = getelementptr i8, ptr %0, i64 %i.su
  br label %bb.dv

_Z14readExifUint32PKhmmb.exit386.thread:          ; preds = %bb.dt
  %i.sw = load i32, ptr %i.si, align 1
  %i.sx = sitofp i32 %i.sw to double              ; 2 uses
  %i.sy = add nuw i32 %spec.select593, 4          ; 2 uses
  %i.sz = sub nuw i32 %i.k, %i.sy
  %i.ta = icmp ult i32 %i.sz, 4
  br i1 %i.ta, label %_Z14readExifUint32PKhmmb.exit388, label %.thread608

.thread608:                                       ; preds = %_Z14readExifUint32PKhmmb.exit386.thread
  %i.tb = zext i32 %i.sy to i64
  %i.tc = getelementptr i8, ptr %0, i64 %i.tb
  br label %bb.dw

bb.du:                                            ; preds = %_Z14readExifUint32PKhmmb.exit386
  %i.td = zext i32 %i.sj to i64
  %i.te = getelementptr i8, ptr %0, i64 %i.td     ; 2 uses
  br i1 %3, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %.thread611, %bb.du
  %i.tf = phi ptr [ %i.sv, %.thread611 ], [ %i.te, %bb.du ]
  %i.tg = phi double [ %i.sq, %.thread611 ], [ 0.000000e+00, %bb.du ]
  %i.th = load i32, ptr %i.tf, align 1
  %i.ti = call i32 @llvm.bswap.i32(i32 %i.th)
  br label %_Z14readExifUint32PKhmmb.exit388

bb.dw:                                            ; preds = %.thread608, %bb.du
  %i.tj = phi ptr [ %i.tc, %.thread608 ], [ %i.te, %bb.du ]
  %i.tk = phi double [ %i.sx, %.thread608 ], [ 0.000000e+00, %bb.du ]
  %i.tl = load i32, ptr %i.tj, align 1
  br label %_Z14readExifUint32PKhmmb.exit388

_Z14readExifUint32PKhmmb.exit388:                 ; preds = %_Z14readExifUint32PKhmmb.exit386.thread609, %_Z14readExifUint32PKhmmb.exit386.thread, %_Z14readExifUint32PKhmmb.exit386, %bb.dv, %bb.dw
  %i.tm = phi double [ %i.tk, %bb.dw ], [ %i.tg, %bb.dv ], [ 0.000000e+00, %_Z14readExifUint32PKhmmb.exit386 ], [ %i.sx, %_Z14readExifUint32PKhmmb.exit386.thread ], [ %i.sq, %_Z14readExifUint32PKhmmb.exit386.thread609 ]
  %.0.i387 = phi i32 [ %i.tl, %bb.dw ], [ %i.ti, %bb.dv ], [ 0, %_Z14readExifUint32PKhmmb.exit386 ], [ 0, %_Z14readExifUint32PKhmmb.exit386.thread ], [ 0, %_Z14readExifUint32PKhmmb.exit386.thread609 ]
  %i.tn = sitofp i32 %.0.i387 to double
  %i.to = fdiv double %i.tm, %i.tn
  %i.tp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.to)
          to label %_ZNSolsEj.exit342 unwind label %bb.dx ; 0 uses

bb.dx:                                            ; preds = %_Z14readExifUint32PKhmmb.exit388
  %i.tq = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp645

.thread606:                                       ; preds = %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.dj
  %i.tr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.204, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit392 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit392: ; preds = %.thread606
  %i.ts = zext nneg i32 %.0.i285567577 to i64
  %i.tt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.ts)
          to label %_ZNSolsEj.exit394 unwind label %.loopexit ; 2 uses

_ZNSolsEj.exit394:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit392
  %i.tu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.tt, ptr noundef nonnull @.str.205, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit396 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit396: ; preds = %_ZNSolsEj.exit394
  %i.tv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.tt, i64 noundef %i.ih)
          to label %_ZNSolsEm.exit398 unwind label %.loopexit

_ZNSolsEm.exit398:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit396
  %i.tw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.tv, ptr noundef nonnull @.str.206, i64 noundef 1)
          to label %_ZNSolsEj.exit342 unwind label %.loopexit ; 0 uses

_ZNSolsEj.exit342:                                ; preds = %bb.bk, %bb.bg, %bb.cu, %.invoke1214, %_ZNSolsEj.exit342.loopexit881, %_ZNSolsEm.exit398, %_Z14readExifUint32PKhmmb.exit388, %_Z14readExifUint32PKhmmb.exit369, %_Z14readExifUint32PKhmmb.exit350.thread, %_Z14readExifUint16PKhmmb.exit382, %_Z14readExifUint32PKhmmb.exit384
  %.sroa.0.7 = phi ptr [ %.sroa.0.3866, %_ZNSolsEm.exit398 ], [ %.sroa.0.3866, %_ZNSolsEj.exit342.loopexit881 ], [ %.sroa.0.3866, %_Z14readExifUint32PKhmmb.exit388 ], [ %.sroa.0.3866, %_Z14readExifUint16PKhmmb.exit382 ], [ %.sroa.0.3866, %_Z14readExifUint32PKhmmb.exit384 ], [ %.sroa.0.3866, %_Z14readExifUint32PKhmmb.exit369 ], [ %.sroa.0.6, %_Z14readExifUint32PKhmmb.exit350.thread ], [ %.sroa.0.3866, %bb.cu ], [ %.sroa.0.3866, %.invoke1214 ], [ %.sroa.0.3866, %bb.bg ], [ %.sroa.0.3866, %bb.bk ] ; 6 uses
  %.sroa.11.3 = phi ptr [ %.sroa.11.1867, %_ZNSolsEm.exit398 ], [ %.sroa.11.1867, %_ZNSolsEj.exit342.loopexit881 ], [ %.sroa.11.1867, %_Z14readExifUint32PKhmmb.exit388 ], [ %.sroa.11.1867, %_Z14readExifUint16PKhmmb.exit382 ], [ %.sroa.11.1867, %_Z14readExifUint32PKhmmb.exit384 ], [ %.sroa.11.1867, %_Z14readExifUint32PKhmmb.exit369 ], [ %.sroa.11.2, %_Z14readExifUint32PKhmmb.exit350.thread ], [ %.sroa.11.1867, %bb.cu ], [ %.sroa.11.1867, %.invoke1214 ], [ %.sroa.11.1867, %bb.bg ], [ %.sroa.11.1867, %bb.bk ]
  %.sroa.21.7 = phi ptr [ %.sroa.21.3868, %_ZNSolsEm.exit398 ], [ %.sroa.21.3868, %_ZNSolsEj.exit342.loopexit881 ], [ %.sroa.21.3868, %_Z14readExifUint32PKhmmb.exit388 ], [ %.sroa.21.3868, %_Z14readExifUint16PKhmmb.exit382 ], [ %.sroa.21.3868, %_Z14readExifUint32PKhmmb.exit384 ], [ %.sroa.21.3868, %_Z14readExifUint32PKhmmb.exit369 ], [ %.sroa.21.6, %_Z14readExifUint32PKhmmb.exit350.thread ], [ %.sroa.21.3868, %bb.cu ], [ %.sroa.21.3868, %.invoke1214 ], [ %.sroa.21.3868, %bb.bg ], [ %.sroa.21.3868, %bb.bk ] ; 6 uses
  %i.tx = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.ty = getelementptr i8, ptr %i.tx, i64 -24
  %i.tz = load i64, ptr %i.ty, align 8
  %i.ua = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.tz
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 240
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i518 = icmp eq ptr %i.uc, null
  br i1 %.not.i.i.i518, label %bb.dy, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i519

bb.dy:                                            ; preds = %_ZNSolsEj.exit342
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc523 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc523:                                        ; preds = %bb.dy
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i519: ; preds = %_ZNSolsEj.exit342
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 56
  %i.ue = load i8, ptr %i.ud, align 8, !tbaa !41
  %.not.i1.i.i520 = icmp eq i8 %i.ue, 0
  br i1 %.not.i1.i.i520, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i519
  %i.uf = getelementptr inbounds nuw i8, ptr %i.uc, i64 67
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i521

bb.ea:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i519
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.uc)
          to label %.noexc524 unwind label %.loopexit

.noexc524:                                        ; preds = %bb.ea
  %i.uh = load ptr, ptr %i.uc, align 8, !tbaa !17
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 48
  %i.uj = load ptr, ptr %i.ui, align 8
  %i.uk = invoke noundef signext i8 %i.uj(ptr noundef nonnull align 8 dereferenceable(570) %i.uc, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i521 unwind label %.loopexit, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i521: ; preds = %.noexc524, %bb.dz
  %.0.i.i.i522 = phi i8 [ %i.ug, %bb.dz ], [ %i.uk, %.noexc524 ]
  %i.ul = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i522)
          to label %.noexc526 unwind label %.loopexit

.noexc526:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i521
  %i.um = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ul)
          to label %_ZNSolsEPFRSoS_E.exit293 unwind label %.loopexit ; 0 uses

_ZNSolsEPFRSoS_E.exit293:                         ; preds = %.noexc515, %.noexc526
  %.sroa.0.8 = phi ptr [ %.sroa.0.3866, %.noexc515 ], [ %.sroa.0.7, %.noexc526 ] ; 2 uses
  %.sroa.11.4 = phi ptr [ %.sroa.11.1867, %.noexc515 ], [ %.sroa.11.3, %.noexc526 ] ; 2 uses
  %.sroa.21.8 = phi ptr [ %.sroa.21.3868, %.noexc515 ], [ %.sroa.21.7, %.noexc526 ] ; 2 uses
  %i.un = add nuw nsw i64 %.0198870, 1            ; 2 uses
  %exitcond1030.not = icmp eq i64 %i.un, %.0.i
  br i1 %exitcond1030.not, label %_ZNSolsEPFRSoS_E.exit282, label %.lr.ph871, !llvm.loop !330

_ZNSolsEPFRSoS_E.exit282:                         ; preds = %_ZNSolsEPFRSoS_E.exit293, %_ZNSolsEPFRSoS_E.exit256
  %.sroa.0.3.lcssa = phi ptr [ %.sroa.0.08751361, %_ZNSolsEPFRSoS_E.exit256 ], [ %.sroa.0.8, %_ZNSolsEPFRSoS_E.exit293 ] ; 10 uses
  %.sroa.11.1.lcssa = phi ptr [ %i.ai, %_ZNSolsEPFRSoS_E.exit256 ], [ %.sroa.11.4, %_ZNSolsEPFRSoS_E.exit293 ] ; 2 uses
  %.sroa.21.3.lcssa = phi ptr [ %.sroa.21.08771358, %_ZNSolsEPFRSoS_E.exit256 ], [ %.sroa.21.8, %_ZNSolsEPFRSoS_E.exit293 ] ; 8 uses
  %.0199.lcssa = phi i64 [ %i.dt, %_ZNSolsEPFRSoS_E.exit256 ], [ %i.ii, %_ZNSolsEPFRSoS_E.exit293 ] ; 2 uses
  %i.uo = trunc i64 %.0199.lcssa to i32           ; 2 uses
  %i.up = icmp ugt i32 %i.uo, %i.k
  %i.uq = sub nuw i32 %i.k, %i.uo
  %i.ur = icmp ult i32 %i.uq, 4
  %i.us = select i1 %i.up, i1 true, i1 %i.ur
  br i1 %i.us, label %bb.eb, label %bb.ef

bb.eb:                                            ; preds = %_ZNSolsEPFRSoS_E.exit282
  %i.ut = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.207, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit404 unwind label %.loopexit.split-lp645.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit404: ; preds = %bb.eb
  %i.uu = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.uv = getelementptr i8, ptr %i.uu, i64 -24
  %i.uw = load i64, ptr %i.uv, align 8
  %i.ux = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.uw
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 240
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i529 = icmp eq ptr %i.uz, null
  br i1 %.not.i.i.i529, label %bb.ec, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i530

bb.ec:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit404
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc534 unwind label %.loopexit.split-lp645.loopexit.split-lp

.noexc534:                                        ; preds = %bb.ec
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i530: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit404
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 56
  %i.vb = load i8, ptr %i.va, align 8, !tbaa !41
  %.not.i1.i.i531 = icmp eq i8 %i.vb, 0
  br i1 %.not.i1.i.i531, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i530
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uz, i64 67
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i532

bb.ee:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i530
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.uz)
          to label %.noexc535 unwind label %.loopexit.split-lp645.loopexit

.noexc535:                                        ; preds = %bb.ee
  %i.ve = load ptr, ptr %i.uz, align 8, !tbaa !17
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 48
  %i.vg = load ptr, ptr %i.vf, align 8
  %i.vh = invoke noundef signext i8 %i.vg(ptr noundef nonnull align 8 dereferenceable(570) %i.uz, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i532 unwind label %.loopexit.split-lp645.loopexit, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i532: ; preds = %.noexc535, %bb.ed
  %.0.i.i.i533 = phi i8 [ %i.vd, %bb.ed ], [ %i.vh, %.noexc535 ]
  %i.vi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i533)
          to label %.noexc537 unwind label %.loopexit.split-lp645.loopexit

.noexc537:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i532
  %i.vj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.vi)
          to label %.loopexit1073 unwind label %.loopexit.split-lp645.loopexit ; 0 uses

bb.ef:                                            ; preds = %_ZNSolsEPFRSoS_E.exit282
  br i1 %.02028801356, label %_ZNSolsEPFRSoS_E.exit246, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.vk = getelementptr i8, ptr %0, i64 %.0199.lcssa ; 2 uses
  br i1 %3, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.vl = load i32, ptr %i.vk, align 1
  %i.vm = call i32 @llvm.bswap.i32(i32 %i.vl)
  br label %_Z14readExifUint32PKhmmb.exit408

bb.ei:                                            ; preds = %bb.eg
  %i.vn = load i32, ptr %i.vk, align 1
  br label %_Z14readExifUint32PKhmmb.exit408

_Z14readExifUint32PKhmmb.exit408:                 ; preds = %bb.eh, %bb.ei
  %.0.i407 = phi i32 [ %i.vn, %bb.ei ], [ %i.vm, %bb.eh ]
  %i.vo = zext i32 %.0.i407 to i64
end_hunk_2
