inline.NumInlined: 2219
inline.NumDeleted: 425
begin_hunk_0_@_ZN4pugi14xpath_node_setaSERKS0_:bb.a
  %i.l = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8
  %i.m = tail call noundef ptr %i.l(i64 noundef %i.i), !inline_history !193 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #51 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #54
  unreachable

bb.e:                                             ; preds = %bb.c, %.thread.i
  %i.o = phi ptr [ %i.k, %.thread.i ], [ %i.m, %bb.c ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not14.i = icmp eq ptr %i.q, %i.r
  br i1 %.not14.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8
  tail call void %i.s(ptr noundef %i.q), !inline_history !193
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not15.i = icmp eq ptr %i.e, %i.c
  br i1 %.not15.i, label %_ZN4pugi14xpath_node_set7_assignEPKNS_10xpath_nodeES3_NS0_6type_tE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.i, i1 false)
  br label %_ZN4pugi14xpath_node_set7_assignEPKNS_10xpath_nodeES3_NS0_6type_tE.exit

_ZN4pugi14xpath_node_set7_assignEPKNS_10xpath_nodeES3_NS0_6type_tE.exit: ; preds = %bb.g, %bb.h
  store ptr %i.o, ptr %i.p, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.t, ptr %i.u, align 8
  store i32 %i.f, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN4pugi14xpath_node_set7_assignEPKNS_10xpath_nodeES3_NS0_6type_tE.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4pugi14xpath_node_setC2EOS0_(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 4)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr %0, align 8
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  invoke void @_ZN4pugi10xpath_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %.ptr)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %.ptr, ptr %i.b, align 8
  %i.c = load i32, ptr %1, align 8
  store i32 %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.ptr, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.d
  %..i = select i1 %i.g, ptr %.ptr, ptr %i.f      ; 2 uses
  store ptr %..i, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %i.e, align 8
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr inbounds i8, ptr %..i, i64 %i.m
  store ptr %i.n, ptr %i.b, align 8
  store i32 0, ptr %1, align 8
  store ptr %i.d, ptr %i.e, align 8
  store ptr %i.d, ptr %i.h, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #50
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(40) ptr @_ZN4pugi14xpath_node_setaSEOS0_(ptr noundef nonnull returned align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8
  invoke void %i.e(ptr noundef %i.c)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = load i32, ptr %1, align 8
  store i32 %i.f, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.g
  %..i = select i1 %i.j, ptr %i.d, ptr %i.i       ; 2 uses
  store ptr %..i, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.h, align 8
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = getelementptr inbounds i8, ptr %..i, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.q, ptr %i.r, align 8
  store i32 0, ptr %1, align 8
  store ptr %i.g, ptr %i.h, align 8
  store ptr %i.g, ptr %i.k, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret ptr %0

bb.f:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #50
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK4pugi14xpath_node_set4typeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i64 -576460752303423488, 576460752303423488) i64 @_ZNK4pugi14xpath_node_set4sizeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4
  ret i64 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4pugi14xpath_node_set5emptyEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4pugi14xpath_node_setixEm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %1
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK4pugi14xpath_node_set5beginEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK4pugi14xpath_node_set3endEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi14xpath_node_set4sortEb(ptr noundef nonnull align 8 captures(none) dereferenceable(40) %0, i1 noundef zeroext %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = load i32, ptr %0, align 8                ; 2 uses
  %i.f = select i1 %1, i32 2, i32 1               ; 2 uses
  %i.g = icmp eq i32 %i.e, 0
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  br i1 %i.g, label %bb.b, label %_ZN4pugi4impl12_GLOBAL__N_115xpath_get_orderEPKNS_10xpath_nodeES4_.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.k = icmp slt i64 %i.j, 17
  br i1 %i.k, label %_ZN4pugi4impl12_GLOBAL__N_110xpath_sortEPNS_10xpath_nodeES3_NS_14xpath_node_set6type_tEb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.m = tail call fastcc noundef zeroext i1 @_ZNK4pugi4impl12_GLOBAL__N_125document_order_comparatorclERKNS_10xpath_nodeES5_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.l) ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.013.i.i = phi ptr [ %i.l, %bb.c ], [ %i.n, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 16 ; 3 uses
  %.not.i.i = icmp ult ptr %i.n, %i.d
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = tail call fastcc noundef zeroext i1 @_ZNK4pugi4impl12_GLOBAL__N_125document_order_comparatorclERKNS_10xpath_nodeES5_(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
  %i.p = xor i1 %i.m, %i.o
  br i1 %i.p, label %_ZN4pugi4impl12_GLOBAL__N_115xpath_get_orderEPKNS_10xpath_nodeES4_.exit.i, label %bb.d, !llvm.loop !194

bb.f:                                             ; preds = %bb.d
  %i.q = select i1 %i.m, i32 1, i32 2
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_get_orderEPKNS_10xpath_nodeES4_.exit.thread.i

_ZN4pugi4impl12_GLOBAL__N_115xpath_get_orderEPKNS_10xpath_nodeES4_.exit.i: ; preds = %bb.e
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_14sortIPNS_10xpath_nodeENS1_25document_order_comparatorEEEvT_S6_RKT0_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.d)
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_get_orderEPKNS_10xpath_nodeES4_.exit.thread.i

_ZN4pugi4impl12_GLOBAL__N_115xpath_get_orderEPKNS_10xpath_nodeES4_.exit.thread.i: ; preds = %_ZN4pugi4impl12_GLOBAL__N_115xpath_get_orderEPKNS_10xpath_nodeES4_.exit.i, %bb.f, %bb.a
  %.1.i = phi i32 [ 1, %_ZN4pugi4impl12_GLOBAL__N_115xpath_get_orderEPKNS_10xpath_nodeES4_.exit.i ], [ %i.q, %bb.f ], [ %i.e, %bb.a ]
  %.not.i = icmp ne i32 %.1.i, %i.f
  %i.r = icmp sgt i64 %i.j, 16
  %or.cond.i = and i1 %i.r, %.not.i
  br i1 %or.cond.i, label %.lr.ph.i.i, label %_ZN4pugi4impl12_GLOBAL__N_110xpath_sortEPNS_10xpath_nodeES3_NS_14xpath_node_set6type_tEb.exit

.lr.ph.i.i:                                       ; preds = %_ZN4pugi4impl12_GLOBAL__N_115xpath_get_orderEPKNS_10xpath_nodeES4_.exit.thread.i, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.d, %_ZN4pugi4impl12_GLOBAL__N_115xpath_get_orderEPKNS_10xpath_nodeES4_.exit.thread.i ]
  %.045.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.b, %_ZN4pugi4impl12_GLOBAL__N_115xpath_get_orderEPKNS_10xpath_nodeES4_.exit.thread.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.045.i.i, i64 16 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.06.i.i, i64 -16 ; 4 uses
  %.sroa.0.0.copyload = load <16 x i8>, ptr %.045.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.045.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  store <16 x i8> %.sroa.0.0.copyload, ptr %i.t, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp sgt i64 %i.w, 16
  br i1 %i.x, label %.lr.ph.i.i, label %_ZN4pugi4impl12_GLOBAL__N_110xpath_sortEPNS_10xpath_nodeES3_NS_14xpath_node_set6type_tEb.exit, !llvm.loop !195

_ZN4pugi4impl12_GLOBAL__N_110xpath_sortEPNS_10xpath_nodeES3_NS_14xpath_node_set6type_tEb.exit: ; preds = %.lr.ph.i.i, %bb.b, %_ZN4pugi4impl12_GLOBAL__N_115xpath_get_orderEPKNS_10xpath_nodeES4_.exit.thread.i
  store i32 %i.f, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK4pugi14xpath_node_set5firstEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca %"class.pugi::xpath_node", align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = load i32, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.f = icmp eq ptr %i.b, %i.d
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pugi10xpath_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN4pugi4impl12_GLOBAL__N_111xpath_firstEPKNS_10xpath_nodeES4_NS_14xpath_node_set6type_tE.exit

bb.c:                                             ; preds = %bb.a
  switch i32 %i.e, label %bb.g [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 0, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  br label %_ZN4pugi4impl12_GLOBAL__N_111xpath_firstEPKNS_10xpath_nodeES4_NS_14xpath_node_set6type_tE.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  br label %_ZN4pugi4impl12_GLOBAL__N_111xpath_firstEPKNS_10xpath_nodeES4_NS_14xpath_node_set6type_tE.exit

bb.f:                                             ; preds = %bb.c
  %.01.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.not2.i.i = icmp eq ptr %.01.i.i, %i.d
  br i1 %.not2.i.i, label %_ZN4pugi4impl12_GLOBAL__N_111min_elementIPKNS_10xpath_nodeENS1_25document_order_comparatorEEET_S7_S7_RKT0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.04.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.01.i.i, %bb.f ] ; 3 uses
  %.0103.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i.i ], [ %i.b, %bb.f ] ; 2 uses
  %i.h = tail call fastcc noundef zeroext i1 @_ZNK4pugi4impl12_GLOBAL__N_125document_order_comparatorclERKNS_10xpath_nodeES5_(ptr noundef nonnull align 8 dereferenceable(16) %.04.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0103.i.i)
  %spec.select.i.i = select i1 %i.h, ptr %.04.i.i, ptr %.0103.i.i ; 2 uses
  %.0.i.i = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, %i.d
  br i1 %.not.i.i, label %_ZN4pugi4impl12_GLOBAL__N_111min_elementIPKNS_10xpath_nodeENS1_25document_order_comparatorEEET_S7_S7_RKT0_.exit.i, label %.lr.ph.i.i, !llvm.loop !196

_ZN4pugi4impl12_GLOBAL__N_111min_elementIPKNS_10xpath_nodeENS1_25document_order_comparatorEEET_S7_S7_RKT0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.010.lcssa.i.i = phi ptr [ %i.b, %bb.f ], [ %spec.select.i.i, %.lr.ph.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %.010.lcssa.i.i, i64 16, i1 false)
  br label %_ZN4pugi4impl12_GLOBAL__N_111xpath_firstEPKNS_10xpath_nodeES4_NS_14xpath_node_set6type_tE.exit

bb.g:                                             ; preds = %bb.c
  call void @_ZN4pugi10xpath_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN4pugi4impl12_GLOBAL__N_111xpath_firstEPKNS_10xpath_nodeES4_NS_14xpath_node_set6type_tE.exit

_ZN4pugi4impl12_GLOBAL__N_111xpath_firstEPKNS_10xpath_nodeES4_NS_14xpath_node_set6type_tE.exit: ; preds = %bb.b, %bb.d, %bb.e, %_ZN4pugi4impl12_GLOBAL__N_111min_elementIPKNS_10xpath_nodeENS1_25document_order_comparatorEEET_S7_S7_RKT0_.exit.i, %bb.g
  %.fca.0.load.i = load ptr, ptr %1, align 8
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.fca.0.load.i, 0
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.fca.1.load.i = load ptr, ptr %.fca.1.gep.i, align 8
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.fca.1.load.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  ret { ptr, ptr } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4pugi18xpath_parse_resultC2Ev(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr @.str.28, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4pugi18xpath_parse_resultcvbEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull ptr @_ZNK4pugi18xpath_parse_result11descriptionEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %spec.select = select i1 %.not, ptr @.str.2, ptr %i.a
  ret ptr %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4pugi14xpath_variableC2ENS_16xpath_value_typeE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %0, i32 noundef %1) unnamed_addr #2 align 2 {
bb.a:
  store i32 %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK4pugi14xpath_variable4nameEv(ptr noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(16) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  switch i32 %i.a, label %bb.f [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 17
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %i.e, %bb.e ], [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ %i.d, %bb.d ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK4pugi14xpath_variable4typeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4pugi14xpath_variable11get_booleanEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = icmp eq i32 %i.a, 4
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !197, !noundef !22
  %i.e = trunc nuw i8 %i.d to i1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i1 [ %i.e, %bb.b ], [ false, %bb.a ]
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZNK4pugi14xpath_variable10get_numberEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load double, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi double [ %i.d, %bb.b ], [ +qnan, %bb.a ]
  ret double %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull ptr @_ZNK4pugi14xpath_variable10get_stringEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = icmp eq i32 %i.a, 3
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK4pugi11xpath_query15evaluate_stringEPcmRKNS_10xpath_nodeE:bb.a
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ap = extractvalue { ptr, i32 } %lpad.phi.i, 0
  call void @__clang_call_terminate(ptr %i.ap) #50
  unreachable

_ZN4pugi4impl12_GLOBAL__N_116xpath_stack_dataD2Ev.exit: ; preds = %.noexc6.i, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  ret i64 %i.ad

bb.l:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4pugi11xpath_query17evaluate_node_setERKNS_10xpath_nodeE(ptr dead_on_unwind noalias writable sret(%"class.pugi::xpath_node_set") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.pugi::xpath_parse_result", align 8 ; 5 uses
  %4 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_context", align 8 ; 7 uses
  %5 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_stack_data", align 8 ; 18 uses
  %6 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_node_set_raw", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 1
  %.val.i = load i8, ptr %i.c, align 1
  %.not6.i = icmp eq i8 %.val.i, 1
  br i1 %.not6.i, label %_ZN4pugi4impl12_GLOBAL__N_125evaluate_node_set_prepareEPNS1_16xpath_query_implE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  call void @_ZN4pugi18xpath_parse_resultC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  store ptr @.str.107, ptr %3, align 8
  %i.d = call ptr @__cxa_allocate_exception(i64 24) #51 ; 3 uses
  invoke void @_ZN4pugi15xpath_exceptionC1ERKNS_18xpath_parse_resultE(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN4pugi15xpath_exceptionE, ptr nonnull @_ZNSt9exceptionD2Ev) #54
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.w, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.d) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  br label %common.resume

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN4pugi14xpath_node_setC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %bb.m

_ZN4pugi4impl12_GLOBAL__N_125evaluate_node_set_prepareEPNS1_16xpath_query_implE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 8 dereferenceable(16) %2, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8224 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8288 ; 4 uses
  store ptr %5, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8232
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8240
  store ptr %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8248 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 4112 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8256
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8264
  store ptr %i.i, ptr %i.o, align 8
  store i8 0, ptr %i.i, align 8
  store ptr null, ptr %i.m, align 8
  store ptr null, ptr %5, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 4120
  store i64 4096, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 4096, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8272 ; 2 uses
  store ptr %i.h, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8280
  store ptr %i.l, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #51
  invoke fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node13eval_node_setERKNS1_13xpath_contextERKNS1_11xpath_stackENS1_14nodeset_eval_tE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i32 noundef 0)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_125evaluate_node_set_prepareEPNS1_16xpath_query_implE.exit
  %i.t = load i8, ptr %i.i, align 8, !range !197, !noundef !22
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = call ptr @__cxa_allocate_exception(i64 8) #51 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.v, align 8
  invoke void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #54
          to label %bb.n unwind label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h, %_ZN4pugi4impl12_GLOBAL__N_125evaluate_node_set_prepareEPNS1_16xpath_query_implE.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_116xpath_stack_dataD2Ev(ptr noundef nonnull align 8 dead_on_return(8289) dereferenceable(8289) %5) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  br label %common.resume

bb.j:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val = load ptr, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val5 = load ptr, ptr %i.y, align 8
  %.val6 = load i32, ptr %6, align 8
  invoke void @_ZN4pugi14xpath_node_setC1EPKNS_10xpath_nodeES3_NS0_6type_tE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %.val, ptr noundef %.val5, i32 noundef %.val6)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  %.val1.i = load ptr, ptr %i.h, align 8          ; 2 uses
  %i.z = load ptr, ptr %.val1.i, align 8          ; 2 uses
  %.not1.i.i = icmp eq ptr %i.z, null
  br i1 %.not1.i.i, label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.noexc.i
  %i.aa = phi ptr [ %i.ac, %.noexc.i ], [ %i.z, %bb.k ] ; 2 uses
  %.02.i.i = phi ptr [ %i.aa, %.noexc.i ], [ %.val1.i, %bb.k ]
  %i.ab = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8
  invoke void %i.ab(ptr noundef nonnull %.02.i.i)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !inline_history !239

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.ac = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i, label %.lr.ph.i.i, !llvm.loop !235

_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i: ; preds = %.noexc.i, %bb.k
  %.val.i7 = load ptr, ptr %i.l, align 8          ; 2 uses
  %i.ad = load ptr, ptr %.val.i7, align 8         ; 2 uses
  %.not1.i2.i = icmp eq ptr %i.ad, null
  br i1 %.not1.i2.i, label %_ZN4pugi4impl12_GLOBAL__N_116xpath_stack_dataD2Ev.exit, label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i, %.noexc6.i
  %i.ae = phi ptr [ %i.ag, %.noexc6.i ], [ %i.ad, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i ] ; 2 uses
  %.02.i4.i = phi ptr [ %i.ae, %.noexc6.i ], [ %.val.i7, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i ]
  %i.af = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8
  invoke void %i.af(ptr noundef nonnull %.02.i4.i)
          to label %.noexc6.i unwind label %.loopexit.i, !inline_history !239

.noexc6.i:                                        ; preds = %.lr.ph.i3.i
  %i.ag = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i5.i = icmp eq ptr %i.ag, null
  br i1 %.not.i5.i, label %_ZN4pugi4impl12_GLOBAL__N_116xpath_stack_dataD2Ev.exit, label %.lr.ph.i3.i, !llvm.loop !235

.loopexit.i:                                      ; preds = %.lr.ph.i3.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ah = extractvalue { ptr, i32 } %lpad.phi.i, 0
  call void @__clang_call_terminate(ptr %i.ah) #50
  unreachable

_ZN4pugi4impl12_GLOBAL__N_116xpath_stack_dataD2Ev.exit: ; preds = %.noexc6.i, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  br label %bb.m

bb.m:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_116xpath_stack_dataD2Ev.exit, %bb.f
  ret void

bb.n:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node13eval_node_setERKNS1_13xpath_contextERKNS1_11xpath_stackENS1_14nodeset_eval_tE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, i32 noundef range(i32 0, 3) %4) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.pugi::xml_node", align 8    ; 5 uses
  %6 = alloca %"class.pugi::xml_node", align 8    ; 5 uses
  %7 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %8 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %9 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %10 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_stack", align 8 ; 6 uses
  %11 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_node_set_raw", align 8 ; 6 uses
  %12 = alloca %"class.pugi::xpath_node", align 8 ; 5 uses
  %13 = alloca %"class.pugi::xml_node", align 8   ; 4 uses
  %14 = alloca %"class.pugi::xpath_node", align 8 ; 5 uses
  %15 = alloca %"class.pugi::xml_node", align 8   ; 4 uses
  %i.a = load i8, ptr %1, align 8
  switch i8 %i.a, label %bb.ba [
    i8 15, label %bb.b
    i8 17, label %bb.k
    i8 24, label %bb.t
    i8 56, label %bb.u
    i8 57, label %bb.aj
    i8 20, label %bb.ay
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #51
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 6 uses
  store ptr %i.c, ptr %9, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #51
  store ptr %i.c, ptr %10, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.f = load ptr, ptr %3, align 8
  store ptr %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  invoke fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node13eval_node_setERKNS1_13xpath_contextERKNS1_11xpath_stackENS1_14nodeset_eval_tE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #51
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  invoke fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node13eval_node_setERKNS1_13xpath_contextERKNS1_11xpath_stackENS1_14nodeset_eval_tE(ptr dead_on_unwind noalias writable align 8 %11, ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef %4)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.val = load ptr, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.val67 = load ptr, ptr %i.l, align 8
  %i.m = load ptr, ptr %3, align 8
  invoke fastcc void @_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw6appendEPKNS_10xpath_nodeES5_PNS1_15xpath_allocatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.val, ptr noundef %.val67, ptr noundef %i.m)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.b, align 8
  invoke fastcc void @_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw17remove_duplicatesEPNS1_15xpath_allocatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.n)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #51
  %i.o = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not9.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not9.i.i, label %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.noexc.i
  %.010.i.i = phi ptr [ %i.q, %.noexc.i ], [ %i.o, %bb.f ] ; 2 uses
  %i.q = load ptr, ptr %.010.i.i, align 8         ; 2 uses
  %i.r = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8
  invoke void %i.r(ptr noundef nonnull %.010.i.i)
          to label %.noexc.i unwind label %bb.g, !inline_history !242

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.q, %i.p
  br i1 %.not.i.i, label %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit, label %.lr.ph.i.i, !llvm.loop !243

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #50
  unreachable

_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit: ; preds = %.noexc.i, %bb.f
  store ptr %i.p, ptr %i.c, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.v, ptr %i.w, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #51
  br label %bb.bb

bb.h:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #51
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.x, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #51
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #51
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = icmp eq i8 %i.ac, 3
  %i.ae = select i1 %i.ad, i32 2, i32 0
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node13eval_node_setERKNS1_13xpath_contextERKNS1_11xpath_stackENS1_14nodeset_eval_tE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %i.ae)
  %i.af = load i8, ptr %i.ab, align 1
  %.not65 = icmp eq i8 %i.af, 1
  %.val68.pre = load i32, ptr %0, align 8
  %.val68.pre.fr = freeze i32 %.val68.pre         ; 3 uses
  br i1 %.not65, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8            ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8            ; 4 uses
  %i.ak = icmp eq i32 %.val68.pre.fr, 0
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ah to i64
  %i.an = sub i64 %i.al, %i.am                    ; 2 uses
  br i1 %i.ak, label %bb.m, label %_ZN4pugi4impl12_GLOBAL__N_115xpath_get_orderEPKNS_10xpath_nodeES4_.exit.thread.i.i

bb.m:                                             ; preds = %bb.l
  %i.ao = icmp slt i64 %i.an, 17
  br i1 %i.ao, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.aq = tail call fastcc noundef zeroext i1 @_ZNK4pugi4impl12_GLOBAL__N_125document_order_comparatorclERKNS_10xpath_nodeES5_(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ap) ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.013.i.i.i = phi ptr [ %i.ap, %bb.n ], [ %i.ar, %bb.p ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16 ; 3 uses
  %.not.i.i.i = icmp ult ptr %i.ar, %i.aj
  br i1 %.not.i.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.as = tail call fastcc noundef zeroext i1 @_ZNK4pugi4impl12_GLOBAL__N_125document_order_comparatorclERKNS_10xpath_nodeES5_(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ar)
  %i.at = xor i1 %i.aq, %i.as
  br i1 %i.at, label %_ZN4pugi4impl12_GLOBAL__N_115xpath_get_orderEPKNS_10xpath_nodeES4_.exit.thread.i.thread.i, label %bb.o, !llvm.loop !194

bb.q:                                             ; preds = %bb.o
  %i.au = select i1 %i.aq, i32 1, i32 2
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_get_orderEPKNS_10xpath_nodeES4_.exit.thread.i.i

_ZN4pugi4impl12_GLOBAL__N_115xpath_get_orderEPKNS_10xpath_nodeES4_.exit.thread.i.thread.i: ; preds = %bb.p
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_14sortIPNS_10xpath_nodeENS1_25document_order_comparatorEEEvT_S6_RKT0_(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.aj)
  br label %.thread

_ZN4pugi4impl12_GLOBAL__N_115xpath_get_orderEPKNS_10xpath_nodeES4_.exit.thread.i.i: ; preds = %bb.q, %bb.l
  %.1.i.i = phi i32 [ %.val68.pre.fr, %bb.l ], [ %i.au, %bb.q ]
  %.not.i.i69 = icmp ne i32 %.1.i.i, 1
  %i.av = icmp sgt i64 %i.an, 16
  %or.cond.i.i = and i1 %i.av, %.not.i.i69
  br i1 %or.cond.i.i, label %.lr.ph.i.i.i, label %.thread

.lr.ph.i.i.i:                                     ; preds = %_ZN4pugi4impl12_GLOBAL__N_115xpath_get_orderEPKNS_10xpath_nodeES4_.exit.thread.i.i, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i ], [ %i.aj, %_ZN4pugi4impl12_GLOBAL__N_115xpath_get_orderEPKNS_10xpath_nodeES4_.exit.thread.i.i ]
  %.045.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %i.ah, %_ZN4pugi4impl12_GLOBAL__N_115xpath_get_orderEPKNS_10xpath_nodeES4_.exit.thread.i.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.045.i.i.i, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.06.i.i.i, i64 -16 ; 4 uses
  %.sroa.0.0.copyload = load <16 x i8>, ptr %.045.i.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.045.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false)
  store <16 x i8> %.sroa.0.0.copyload, ptr %i.ax, align 8
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = icmp sgt i64 %i.ba, 16
  br i1 %i.bb, label %.lr.ph.i.i.i, label %.thread, !llvm.loop !195

.thread:                                          ; preds = %.lr.ph.i.i.i, %_ZN4pugi4impl12_GLOBAL__N_115xpath_get_orderEPKNS_10xpath_nodeES4_.exit.thread.i.i, %_ZN4pugi4impl12_GLOBAL__N_115xpath_get_orderEPKNS_10xpath_nodeES4_.exit.thread.i.thread.i, %bb.m
  store i32 1, ptr %0, align 8
  %i.bc = icmp ne i32 %4, 0
  br label %bb.s

bb.r:                                             ; preds = %bb.k
  %i.bd = icmp eq i32 %.val68.pre.fr, 1
  %i.be = icmp ne i32 %4, 0
  %i.bf = icmp eq i32 %4, 1
  %spec.select = select i1 %i.bd, i1 %i.be, i1 %i.bf
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread
  %i.bg = phi i1 [ %spec.select, %bb.r ], [ %i.bc, %.thread ]
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node15apply_predicateERNS1_18xpath_node_set_rawEmRKNS1_11xpath_stackEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext %i.bg)
  br label %bb.bb

bb.t:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false)
  br label %bb.bb

bb.u:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bj = load i8, ptr %i.bi, align 2
  switch i8 %i.bj, label %bb.ai [
    i8 0, label %bb.v
    i8 1, label %bb.w
    i8 2, label %bb.x
    i8 3, label %bb.y
    i8 4, label %bb.z
    i8 5, label %bb.aa
    i8 6, label %bb.ab
    i8 7, label %bb.ac
    i8 8, label %bb.ad
    i8 9, label %bb.ae
    i8 10, label %bb.af
    i8 11, label %bb.ag
    i8 12, label %bb.ah
  ]

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node7step_doINS1_12axis_to_typeILNS1_6axis_tE0EEEEENS1_18xpath_node_set_rawERKNS1_13xpath_contextERKNS1_11xpath_stackENS1_14nodeset_eval_tET_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4)
  br label %bb.bb

bb.w:                                             ; preds = %bb.u
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node7step_doINS1_12axis_to_typeILNS1_6axis_tE1EEEEENS1_18xpath_node_set_rawERKNS1_13xpath_contextERKNS1_11xpath_stackENS1_14nodeset_eval_tET_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4)
  br label %bb.bb

bb.x:                                             ; preds = %bb.u
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node7step_doINS1_12axis_to_typeILNS1_6axis_tE2EEEEENS1_18xpath_node_set_rawERKNS1_13xpath_contextERKNS1_11xpath_stackENS1_14nodeset_eval_tET_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4)
  br label %bb.bb

bb.y:                                             ; preds = %bb.u
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node7step_doINS1_12axis_to_typeILNS1_6axis_tE3EEEEENS1_18xpath_node_set_rawERKNS1_13xpath_contextERKNS1_11xpath_stackENS1_14nodeset_eval_tET_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4)
  br label %bb.bb

bb.z:                                             ; preds = %bb.u
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node7step_doINS1_12axis_to_typeILNS1_6axis_tE4EEEEENS1_18xpath_node_set_rawERKNS1_13xpath_contextERKNS1_11xpath_stackENS1_14nodeset_eval_tET_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4)
  br label %bb.bb

bb.aa:                                            ; preds = %bb.u
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node7step_doINS1_12axis_to_typeILNS1_6axis_tE5EEEEENS1_18xpath_node_set_rawERKNS1_13xpath_contextERKNS1_11xpath_stackENS1_14nodeset_eval_tET_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4)
  br label %bb.bb

bb.ab:                                            ; preds = %bb.u
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node7step_doINS1_12axis_to_typeILNS1_6axis_tE6EEEEENS1_18xpath_node_set_rawERKNS1_13xpath_contextERKNS1_11xpath_stackENS1_14nodeset_eval_tET_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4)
  br label %bb.bb

bb.ac:                                            ; preds = %bb.u
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node7step_doINS1_12axis_to_typeILNS1_6axis_tE7EEEEENS1_18xpath_node_set_rawERKNS1_13xpath_contextERKNS1_11xpath_stackENS1_14nodeset_eval_tET_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4)
  br label %bb.bb

bb.ad:                                            ; preds = %bb.u
  store i32 0, ptr %0, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i8 0, i64 24, i1 false)
  br label %bb.bb

bb.ae:                                            ; preds = %bb.u
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node7step_doINS1_12axis_to_typeILNS1_6axis_tE9EEEEENS1_18xpath_node_set_rawERKNS1_13xpath_contextERKNS1_11xpath_stackENS1_14nodeset_eval_tET_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4)
  br label %bb.bb

bb.af:                                            ; preds = %bb.u
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node7step_doINS1_12axis_to_typeILNS1_6axis_tE10EEEEENS1_18xpath_node_set_rawERKNS1_13xpath_contextERKNS1_11xpath_stackENS1_14nodeset_eval_tET_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4)
  br label %bb.bb

bb.ag:                                            ; preds = %bb.u
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node7step_doINS1_12axis_to_typeILNS1_6axis_tE11EEEEENS1_18xpath_node_set_rawERKNS1_13xpath_contextERKNS1_11xpath_stackENS1_14nodeset_eval_tET_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4)
  br label %bb.bb

bb.ah:                                            ; preds = %bb.u
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node7step_doINS1_12axis_to_typeILNS1_6axis_tE12EEEEENS1_18xpath_node_set_rawERKNS1_13xpath_contextERKNS1_11xpath_stackENS1_14nodeset_eval_tET_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4)
  br label %bb.bb

bb.ai:                                            ; preds = %bb.u
  store i32 0, ptr %0, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 24, i1 false)
  br label %bb.bb

bb.aj:                                            ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i8 0, i64 24, i1 false)
  store i32 1, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  %.not.i.i70 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i70, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %.pre.i = load ptr, ptr %8, align 8
  br label %_ZNK4pugi10xpath_node4nodeEv.exit

bb.al:                                            ; preds = %bb.aj
  %i.bp = load i64, ptr %2, align 8
  %i.bq = inttoptr i64 %i.bp to ptr
  br label %_ZNK4pugi10xpath_node4nodeEv.exit

_ZNK4pugi10xpath_node4nodeEv.exit:                ; preds = %bb.ak, %bb.al
  %i.br = phi ptr [ %i.bq, %bb.al ], [ %.pre.i, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %bb.at, label %bb.am

bb.am:                                            ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.bs = load ptr, ptr %i.bn, align 8
  %.not.i.i71 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i71, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
  %.pre.i72 = load ptr, ptr %7, align 8
  br label %_ZNK4pugi10xpath_node4nodeEv.exit73

bb.ao:                                            ; preds = %bb.am
  %i.bt = load i64, ptr %2, align 8
  %i.bu = inttoptr i64 %i.bt to ptr
  br label %_ZNK4pugi10xpath_node4nodeEv.exit73

_ZNK4pugi10xpath_node4nodeEv.exit73:              ; preds = %bb.an, %bb.ao
  %i.bv = phi ptr [ %i.bu, %bb.ao ], [ %.pre.i72, %bb.an ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.not.i74 = icmp eq ptr %i.bv, null
  br i1 %.not.i74, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit73
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = lshr i64 %i.bw, 8
  %i.by = sub nsw i64 0, %i.bx
  %i.bz = getelementptr inbounds i8, ptr %i.bv, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !22, !noundef !22
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -64
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %i.cb)
  br label %_ZNK4pugi8xml_node4rootEv.exit

bb.aq:                                            ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit73
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %_ZNK4pugi8xml_node4rootEv.exit

_ZNK4pugi8xml_node4rootEv.exit:                   ; preds = %bb.ap, %bb.aq
  %i.cc = load ptr, ptr %6, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store ptr %i.cc, ptr %13, align 8
  call void @_ZN4pugi10xpath_nodeC1ERKNS_8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(8) %13)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8            ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  %.not.i75 = icmp eq ptr %i.ce, %i.cg
  br i1 %.not.i75, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNK4pugi8xml_node4rootEv.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store ptr %i.ch, ptr %i.cd, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull readonly align 8 dereferenceable(16) %12, i64 16, i1 false)
  br label %_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw9push_backERKNS_10xpath_nodeEPNS1_15xpath_allocatorE.exit

bb.as:                                            ; preds = %_ZNK4pugi8xml_node4rootEv.exit
  %i.ci = load ptr, ptr %3, align 8
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw14push_back_growERKNS_10xpath_nodeEPNS1_15xpath_allocatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %12, ptr noundef %i.ci)
  br label %_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw9push_backERKNS_10xpath_nodeEPNS1_15xpath_allocatorE.exit

_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw9push_backERKNS_10xpath_nodeEPNS1_15xpath_allocatorE.exit: ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #51
  br label %bb.bb

bb.at:                                            ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bn, align 8
  %.not.i76 = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i76, label %bb.bb, label %_ZNK4pugi10xpath_node6parentEv.exit

_ZNK4pugi10xpath_node6parentEv.exit:              ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #51
  %.sroa.0.0.copyload.i78 = load ptr, ptr %2, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %.not.i79 = icmp eq ptr %.sroa.0.0.copyload.i78, null
  br i1 %.not.i79, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZNK4pugi10xpath_node6parentEv.exit
  %i.cj = load i64, ptr %.sroa.0.0.copyload.i78, align 8
  %i.ck = lshr i64 %i.cj, 8
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i78, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !nonnull !22, !noundef !22
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -64
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.co)
  br label %_ZNK4pugi8xml_node4rootEv.exit80

bb.av:                                            ; preds = %_ZNK4pugi10xpath_node6parentEv.exit
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %_ZNK4pugi8xml_node4rootEv.exit80

_ZNK4pugi8xml_node4rootEv.exit80:                 ; preds = %bb.au, %bb.av
  %i.cp = load ptr, ptr %5, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store ptr %i.cp, ptr %15, align 8
  call void @_ZN4pugi10xpath_nodeC1ERKNS_8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(8) %15)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8            ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  %.not.i81 = icmp eq ptr %i.cr, %i.ct
  br i1 %.not.i81, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZNK4pugi8xml_node4rootEv.exit80
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store ptr %i.cu, ptr %i.cq, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull readonly align 8 dereferenceable(16) %14, i64 16, i1 false)
  br label %_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw9push_backERKNS_10xpath_nodeEPNS1_15xpath_allocatorE.exit82

bb.ax:                                            ; preds = %_ZNK4pugi8xml_node4rootEv.exit80
  %i.cv = load ptr, ptr %3, align 8
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw14push_back_growERKNS_10xpath_nodeEPNS1_15xpath_allocatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %14, ptr noundef %i.cv)
  br label %_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw9push_backERKNS_10xpath_nodeEPNS1_15xpath_allocatorE.exit82

_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw9push_backERKNS_10xpath_nodeEPNS1_15xpath_allocatorE.exit82: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #51
  br label %bb.bb

bb.ay:                                            ; preds = %bb.a
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = icmp eq i8 %i.cx, 1
  br i1 %i.cy, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.da = load ptr, ptr %i.cz, align 8            ; 2 uses
  %i.db = load i32, ptr %i.da, align 8
  %i.dc = icmp eq i32 %i.db, 1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.de = select i1 %i.dc, ptr %i.dd, ptr @_ZN4pugi4impl12_GLOBAL__N_114dummy_node_setE ; 3 uses
  store i32 0, ptr %0, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i8 0, i64 24, i1 false)
  %i.dg = load i32, ptr %i.de, align 8
  store i32 %i.dg, ptr %0, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = load ptr, ptr %3, align 8
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw6appendEPKNS_10xpath_nodeES5_PNS1_15xpath_allocatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.di, ptr noundef %i.dk, ptr noundef %i.dl)
  br label %bb.bb

bb.ba:                                            ; preds = %bb.a, %bb.ay
  store i32 0, ptr %0, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i8 0, i64 24, i1 false)
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw9push_backERKNS_10xpath_nodeEPNS1_15xpath_allocatorE.exit, %_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw9push_backERKNS_10xpath_nodeEPNS1_15xpath_allocatorE.exit82, %bb.at, %bb.ba, %bb.az, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.t, %bb.s, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK4pugi11xpath_query13evaluate_nodeERKNS_10xpath_nodeE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pugi::xpath_node", align 16 ; 5 uses
  %3 = alloca %"struct.pugi::xpath_parse_result", align 8 ; 5 uses
  %4 = alloca %"class.pugi::xpath_node", align 16 ; 4 uses
  %5 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_context", align 8 ; 7 uses
  %6 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_stack_data", align 8 ; 18 uses
  %7 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_node_set_raw", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 1
  %.val.i = load i8, ptr %i.c, align 1
  %.not6.i = icmp eq i8 %.val.i, 1
  br i1 %.not6.i, label %_ZN4pugi4impl12_GLOBAL__N_125evaluate_node_set_prepareEPNS1_16xpath_query_implE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  call void @_ZN4pugi18xpath_parse_resultC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  store ptr @.str.107, ptr %3, align 8
  %i.d = call ptr @__cxa_allocate_exception(i64 24) #51 ; 3 uses
  invoke void @_ZN4pugi15xpath_exceptionC1ERKNS_18xpath_parse_resultE(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN4pugi15xpath_exceptionE, ptr nonnull @_ZNSt9exceptionD2Ev) #54
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %lpad.phi, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.d) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  br label %common.resume

bb.f:                                             ; preds = %bb.a
  call void @_ZN4pugi10xpath_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %bb.p

_ZN4pugi4impl12_GLOBAL__N_125evaluate_node_set_prepareEPNS1_16xpath_query_implE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 1, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #51
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8224 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8288 ; 4 uses
  store ptr %6, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8232
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8240
  store ptr %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8248 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 4112 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8256
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8264
  store ptr %i.i, ptr %i.o, align 8
  store i8 0, ptr %i.i, align 8
  store ptr null, ptr %i.m, align 8
  store ptr null, ptr %6, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 4120
  store i64 4096, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 4096, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8272 ; 2 uses
  store ptr %i.h, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8280
  store ptr %i.l, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #51
  invoke fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node13eval_node_setERKNS1_13xpath_contextERKNS1_11xpath_stackENS1_14nodeset_eval_tE(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i32 noundef 2)
          to label %bb.g unwind label %.loopexit.split-lp

bb.g:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_125evaluate_node_set_prepareEPNS1_16xpath_query_implE.exit
  %i.t = load i8, ptr %i.i, align 8, !range !197, !noundef !22
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = call ptr @__cxa_allocate_exception(i64 8) #51 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.v, align 8
  invoke void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #54
          to label %bb.q unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %.lr.ph.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %.invoke, %_ZN4pugi4impl12_GLOBAL__N_125evaluate_node_set_prepareEPNS1_16xpath_query_implE.exit, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_116xpath_stack_dataD2Ev(ptr noundef nonnull align 8 dead_on_return(8289) dereferenceable(8289) %6) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  br label %common.resume

bb.j:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.x = load ptr, ptr %i.w, align 8              ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.z = load ptr, ptr %i.y, align 8              ; 4 uses
  %i.aa = load i32, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ab = icmp eq ptr %i.x, %i.z
  br i1 %i.ab, label %.invoke, label %bb.k

.invoke:                                          ; preds = %bb.k, %bb.j
  invoke void @_ZN4pugi10xpath_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.n unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  switch i32 %i.aa, label %.invoke [
    i32 1, label %.sink.split
    i32 2, label %bb.l
    i32 0, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -16
  br label %.sink.split

bb.m:                                             ; preds = %bb.k
  %.01.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %.not2.i.i.i = icmp eq ptr %.01.i.i.i, %i.z
  br i1 %.not2.i.i.i, label %.sink.split, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %.noexc5
  %.04.i.i.i = phi ptr [ %.0.i.i.i, %.noexc5 ], [ %.01.i.i.i, %bb.m ] ; 3 uses
  %.0103.i.i.i = phi ptr [ %spec.select.i.i.i, %.noexc5 ], [ %i.x, %bb.m ] ; 2 uses
  %i.ad = invoke fastcc noundef zeroext i1 @_ZNK4pugi4impl12_GLOBAL__N_125document_order_comparatorclERKNS_10xpath_nodeES5_(ptr noundef nonnull align 8 dereferenceable(16) %.04.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0103.i.i.i)
          to label %.noexc5 unwind label %.loopexit

.noexc5:                                          ; preds = %.lr.ph.i.i.i
  %spec.select.i.i.i = select i1 %i.ad, ptr %.04.i.i.i, ptr %.0103.i.i.i ; 2 uses
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.z
  br i1 %.not.i.i.i, label %.sink.split, label %.lr.ph.i.i.i, !llvm.loop !196

.sink.split:                                      ; preds = %.noexc5, %bb.m, %bb.k, %bb.l
  %.010.lcssa.i.i.i.sink = phi ptr [ %i.x, %bb.k ], [ %i.ac, %bb.l ], [ %i.x, %bb.m ], [ %spec.select.i.i.i, %.noexc5 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.010.lcssa.i.i.i.sink, i64 16, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %.invoke
  %i.ae = load <2 x ptr>, ptr %2, align 16
end_hunk_1
begin_hunk_2_@_ZN4pugi4impl12_GLOBAL__N_112utf8_decoder7processINS1_12utf32_writerEEENT_10value_typeEPKhmS6_S5_:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.074, i64 1 ; 3 uses
  %i.f = add i64 %.06073, -1                      ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = and i64 %i.g, 3
  %i.i = icmp eq i64 %i.h, 0
  %i.j = icmp ugt i64 %i.f, 3
  %or.cond7 = and i1 %i.j, %i.i
  br i1 %or.cond7, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.b, %bb.c
  %.164 = phi ptr [ %i.aa, %bb.c ], [ %i.d, %bb.b ] ; 6 uses
  %.161 = phi i64 [ %i.ac, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %.1 = phi ptr [ %i.ab, %bb.c ], [ %i.e, %bb.b ] ; 6 uses
  %i.k = load i32, ptr %.1, align 4               ; 2 uses
  %i.l = and i32 %i.k, -2139062144
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.preheader
  %i.n = and i32 %i.k, 127
  store i32 %i.n, ptr %.164, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %.164, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i32
  store i32 %i.r, ptr %i.o, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %.164, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.1, i64 2
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32
  store i32 %i.v, ptr %i.s, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %.164, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %.1, i64 3
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32
  store i32 %i.z, ptr %i.w, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.164, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.1, i64 4 ; 2 uses
  %i.ac = add i64 %.161, -4                       ; 3 uses
  %.old6 = icmp ugt i64 %i.ac, 3
  br i1 %.old6, label %.preheader, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.ad = and i32 %i.b, 224
  %i.ae = icmp eq i32 %i.ad, 192
  %i.af = icmp ne i64 %.06073, 1
  %or.cond = and i1 %i.af, %i.ae
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.074, i64 1
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %i.aj = and i32 %i.ai, 192
  %i.ak = icmp eq i32 %i.aj, 128
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.al = shl nuw nsw i32 %i.b, 6
  %i.am = and i32 %i.al, 1984
  %i.an = and i32 %i.ai, 63
  %i.ao = or disjoint i32 %i.an, %i.am
  store i32 %i.ao, ptr %.06372, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %.06372, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.074, i64 2
  %i.ar = add i64 %.06073, -2
  br label %.critedge

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.as = and i32 %i.b, 240
  %i.at = icmp eq i32 %i.as, 224
  %i.au = icmp ugt i64 %.06073, 2
  %or.cond3 = and i1 %i.au, %i.at
  br i1 %or.cond3, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %.074, i64 1
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i32                    ; 2 uses
  %i.ay = and i32 %i.ax, 192
  %i.az = icmp eq i32 %i.ay, 128
  br i1 %i.az, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %.074, i64 2
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i32                    ; 2 uses
  %i.bd = and i32 %i.bc, 192
  %i.be = icmp eq i32 %i.bd, 128
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bf = shl nuw nsw i32 %i.b, 12
  %i.bg = and i32 %i.bf, 61440
  %i.bh = shl nuw nsw i32 %i.ax, 6
  %i.bi = and i32 %i.bh, 4032
  %i.bj = or disjoint i32 %i.bi, %i.bg
  %i.bk = and i32 %i.bc, 63
  %i.bl = or disjoint i32 %i.bj, %i.bk
  store i32 %i.bl, ptr %.06372, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.06372, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.074, i64 3
  %i.bo = add i64 %.06073, -3
  br label %.critedge

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bp = and i32 %i.b, 248
  %i.bq = icmp eq i32 %i.bp, 240
  %i.br = icmp ugt i64 %.06073, 3
  %or.cond5 = and i1 %i.br, %i.bq
  br i1 %or.cond5, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %.074, i64 1
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = zext i8 %i.bt to i32                    ; 2 uses
  %i.bv = and i32 %i.bu, 192
  %i.bw = icmp eq i32 %i.bv, 128
  br i1 %i.bw, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %.074, i64 2
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = zext i8 %i.by to i32                    ; 2 uses
  %i.ca = and i32 %i.bz, 192
  %i.cb = icmp eq i32 %i.ca, 128
  br i1 %i.cb, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %.074, i64 3
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = zext i8 %i.cd to i32                    ; 2 uses
  %i.cf = and i32 %i.ce, 192
  %i.cg = icmp eq i32 %i.cf, 128
  br i1 %i.cg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ch = shl nuw nsw i32 %i.b, 18
  %i.ci = and i32 %i.ch, 1835008
  %i.cj = shl nuw nsw i32 %i.bu, 12
  %i.ck = and i32 %i.cj, 258048
  %i.cl = or disjoint i32 %i.ck, %i.ci
  %i.cm = shl nuw nsw i32 %i.bz, 6
  %i.cn = and i32 %i.cm, 4032
  %i.co = or disjoint i32 %i.cl, %i.cn
  %i.cp = and i32 %i.ce, 63
  %i.cq = or disjoint i32 %i.co, %i.cp
  store i32 %i.cq, ptr %.06372, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %.06372, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %.074, i64 4
  %i.ct = add i64 %.06073, -4
  br label %.critedge

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %.074, i64 1
  %i.cv = add i64 %.06073, -1
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.preheader, %bb.f, %bb.o, %bb.p, %bb.j, %bb.b
  %.265 = phi ptr [ %i.cr, %bb.o ], [ %.06372, %bb.p ], [ %i.d, %bb.b ], [ %i.ap, %bb.f ], [ %i.bm, %bb.j ], [ %.164, %.preheader ], [ %i.aa, %bb.c ] ; 2 uses
  %.262 = phi i64 [ %i.ct, %bb.o ], [ %i.cv, %bb.p ], [ %i.f, %bb.b ], [ %i.ar, %bb.f ], [ %i.bo, %bb.j ], [ %.161, %.preheader ], [ %i.ac, %bb.c ] ; 2 uses
  %.2 = phi ptr [ %i.cs, %bb.o ], [ %i.cu, %bb.p ], [ %i.e, %bb.b ], [ %i.aq, %bb.f ], [ %i.bn, %bb.j ], [ %.1, %.preheader ], [ %i.ab, %bb.c ]
  %.not = icmp eq i64 %.262, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !381

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %.063.lcssa = phi ptr [ %2, %bb.a ], [ %.265, %.critedge ]
  ret ptr %.063.lcssa
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #33

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr noundef captures(none)) local_unnamed_addr #34

declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i32 noundef signext) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_14sortIPNS_10xpath_nodeENS1_25document_order_comparatorEEEvT_S6_RKT0_(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
bb.a:
  %2 = alloca %"class.pugi::xpath_node", align 8  ; 5 uses
  %3 = alloca %"class.pugi::xpath_node", align 8  ; 5 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %i.g = phi i64 [ %i.d, %.lr.ph ], [ %i.ak, %bb.j ]
  %i.h = phi i64 [ %i.b, %.lr.ph ], [ %.pre-phi8, %bb.j ]
  %i.i = phi i64 [ %i.a, %.lr.ph ], [ %.pre-phi, %bb.j ]
  %.05 = phi ptr [ %0, %.lr.ph ], [ %.1, %bb.j ]  ; 12 uses
  %.0224 = phi ptr [ %1, %.lr.ph ], [ %.123, %bb.j ] ; 8 uses
  %i.j = lshr i64 %i.g, 1
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.05, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %.0224, i64 -16 ; 2 uses
  %i.m = tail call fastcc noundef zeroext i1 @_ZNK4pugi4impl12_GLOBAL__N_125document_order_comparatorclERKNS_10xpath_nodeES5_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(16) %.05) ; 2 uses
  %spec.select.i = select i1 %i.m, ptr %i.k, ptr %.05 ; 2 uses
  %spec.select12.i = select i1 %i.m, ptr %.05, ptr %i.k ; 2 uses
  %i.n = tail call fastcc noundef zeroext i1 @_ZNK4pugi4impl12_GLOBAL__N_125document_order_comparatorclERKNS_10xpath_nodeES5_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %spec.select12.i)
  %.1.i = select i1 %i.n, ptr %i.l, ptr %spec.select12.i ; 2 uses
  %i.o = tail call fastcc noundef zeroext i1 @_ZNK4pugi4impl12_GLOBAL__N_125document_order_comparatorclERKNS_10xpath_nodeES5_(ptr noundef nonnull align 8 dereferenceable(16) %.1.i, ptr noundef nonnull align 8 dereferenceable(16) %spec.select.i)
  %.2.i = select i1 %i.o, ptr %spec.select.i, ptr %.1.i ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %.2.i, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.2.i, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %.sroa.0.0.copyload, ptr %3, align 8
  store ptr %.sroa.2.0.copyload, ptr %i.f, align 8
  %i.p = icmp ult ptr %.05, %.0224
  br i1 %i.p, label %.lr.ph.i, label %_ZN4pugi4impl12_GLOBAL__N_110partition3INS_10xpath_nodeENS1_25document_order_comparatorEEEvPT_S6_S5_RKT0_PS6_SA_.exit

.preheader.i:                                     ; preds = %bb.g
  %.not5.i = icmp eq ptr %.05, %.129.i
  br i1 %.not5.i, label %_ZN4pugi4impl12_GLOBAL__N_110partition3INS_10xpath_nodeENS1_25document_order_comparatorEEEvPT_S6_S5_RKT0_PS6_SA_.exit, label %.lr.ph8.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.g
  %.0253.i = phi ptr [ %.1.i25, %bb.g ], [ %.0224, %bb.b ] ; 3 uses
  %.0262.i = phi ptr [ %.127.i, %bb.g ], [ %.05, %bb.b ] ; 10 uses
  %.0281.i = phi ptr [ %.129.i, %bb.g ], [ %.05, %bb.b ] ; 5 uses
  %i.q = call fastcc noundef zeroext i1 @_ZNK4pugi4impl12_GLOBAL__N_125document_order_comparatorclERKNS_10xpath_nodeES5_(ptr noundef nonnull align 8 dereferenceable(16) %.0262.i, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.0262.i, i64 16
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph.i
  %i.s = load ptr, ptr %.0262.i, align 8
  %i.t = icmp eq ptr %i.s, %.sroa.0.0.copyload
  %i.u = getelementptr inbounds nuw i8, ptr %.0262.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.v, %.sroa.2.0.copyload
  %i.x = select i1 %i.t, i1 %i.w, i1 false
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.0281.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0262.i, i64 16
  %.sroa.0.0.copyload12 = load <16 x i8>, ptr %.0281.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0281.i, ptr noundef nonnull align 8 dereferenceable(16) %.0262.i, i64 16, i1 false)
  store <16 x i8> %.sroa.0.0.copyload12, ptr %.0262.i, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds i8, ptr %.0253.i, i64 -16 ; 3 uses
  %.sroa.014.0.copyload = load <16 x i8>, ptr %.0262.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0262.i, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  store <16 x i8> %.sroa.014.0.copyload, ptr %i.aa, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.129.i = phi ptr [ %.0281.i, %bb.c ], [ %i.y, %bb.e ], [ %.0281.i, %bb.f ] ; 3 uses
  %.127.i = phi ptr [ %i.r, %bb.c ], [ %i.z, %bb.e ], [ %.0262.i, %bb.f ] ; 2 uses
  %.1.i25 = phi ptr [ %.0253.i, %bb.c ], [ %.0253.i, %bb.e ], [ %i.aa, %bb.f ] ; 6 uses
  %i.ab = icmp ult ptr %.127.i, %.1.i25
  br i1 %i.ab, label %.lr.ph.i, label %.preheader.i, !llvm.loop !382

.lr.ph8.i:                                        ; preds = %.preheader.i, %.lr.ph8.i
  %.07.i = phi ptr [ %i.ad, %.lr.ph8.i ], [ %.05, %.preheader.i ] ; 3 uses
  %.0246.i = phi ptr [ %i.ac, %.lr.ph8.i ], [ %.1.i25, %.preheader.i ]
  %i.ac = getelementptr inbounds i8, ptr %.0246.i, i64 -16 ; 4 uses
  %.sroa.016.0.copyload = load <16 x i8>, ptr %.07.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.07.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false)
  store <16 x i8> %.sroa.016.0.copyload, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.07.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, %.129.i
  br i1 %.not.i, label %_ZN4pugi4impl12_GLOBAL__N_110partition3INS_10xpath_nodeENS1_25document_order_comparatorEEEvPT_S6_S5_RKT0_PS6_SA_.exit, label %.lr.ph8.i, !llvm.loop !383

_ZN4pugi4impl12_GLOBAL__N_110partition3INS_10xpath_nodeENS1_25document_order_comparatorEEEvPT_S6_S5_RKT0_PS6_SA_.exit: ; preds = %.lr.ph8.i, %bb.b, %.preheader.i
  %.025.lcssa16.i = phi ptr [ %.1.i25, %.preheader.i ], [ %.0224, %bb.b ], [ %.1.i25, %.lr.ph8.i ] ; 3 uses
  %.024.lcssa.i = phi ptr [ %.1.i25, %.preheader.i ], [ %.0224, %bb.b ], [ %i.ac, %.lr.ph8.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ae = ptrtoint ptr %.024.lcssa.i to i64       ; 2 uses
  %i.af = sub i64 %i.ae, %i.h
  %i.ag = ptrtoint ptr %.025.lcssa16.i to i64     ; 2 uses
  %i.ah = sub i64 %i.i, %i.ag
  %i.ai = icmp sgt i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_110partition3INS_10xpath_nodeENS1_25document_order_comparatorEEEvPT_S6_S5_RKT0_PS6_SA_.exit
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_14sortIPNS_10xpath_nodeENS1_25document_order_comparatorEEEvT_S6_RKT0_(ptr noundef %.025.lcssa16.i, ptr noundef %.0224)
  %.pre7 = ptrtoint ptr %.05 to i64
  br label %bb.j

bb.i:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_110partition3INS_10xpath_nodeENS1_25document_order_comparatorEEEvPT_S6_S5_RKT0_PS6_SA_.exit
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_14sortIPNS_10xpath_nodeENS1_25document_order_comparatorEEEvT_S6_RKT0_(ptr noundef nonnull %.05, ptr noundef %.024.lcssa.i)
  %.pre = ptrtoint ptr %.0224 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi8 = phi i64 [ %i.ag, %bb.i ], [ %.pre7, %bb.h ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre, %bb.i ], [ %i.ae, %bb.h ] ; 2 uses
  %.123 = phi ptr [ %.0224, %bb.i ], [ %.024.lcssa.i, %bb.h ] ; 2 uses
  %.1 = phi ptr [ %.025.lcssa16.i, %bb.i ], [ %.05, %bb.h ] ; 2 uses
  %i.aj = sub i64 %.pre-phi, %.pre-phi8
  %i.ak = ashr exact i64 %i.aj, 4                 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 16
  br i1 %i.al, label %bb.b, label %._crit_edge, !llvm.loop !384

._crit_edge:                                      ; preds = %bb.j, %bb.a
  %.022.lcssa = phi ptr [ %1, %bb.a ], [ %.123, %bb.j ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.j ] ; 4 uses
  %i.am = icmp eq ptr %.0.lcssa, %.022.lcssa
  %.0164.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16 ; 2 uses
  %.not5.i26 = icmp eq ptr %.0164.i, %.022.lcssa
  %or.cond.i = select i1 %i.am, i1 true, i1 %.not5.i26
  br i1 %or.cond.i, label %_ZN4pugi4impl12_GLOBAL__N_114insertion_sortINS_10xpath_nodeENS1_25document_order_comparatorEEEvPT_S6_RKT0_.exit, label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge, %.critedge.i
  %.0166.i = phi ptr [ %.016.i, %.critedge.i ], [ %.0164.i, %._crit_edge ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.0166.i, i64 16, i1 false)
  %i.an = icmp ugt ptr %.0166.i, %.0.lcssa
  br i1 %i.an, label %.lr.ph.i28, label %.critedge.i

.lr.ph.i28:                                       ; preds = %.lr.ph7.i, %bb.k
  %.01.i = phi ptr [ %i.ao, %bb.k ], [ %.0166.i, %.lr.ph7.i ] ; 3 uses
  %i.ao = getelementptr inbounds i8, ptr %.01.i, i64 -16 ; 5 uses
  %i.ap = call fastcc noundef zeroext i1 @_ZNK4pugi4impl12_GLOBAL__N_125document_order_comparatorclERKNS_10xpath_nodeES5_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ao)
  br i1 %i.ap, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %.lr.ph.i28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false)
  %i.aq = icmp ugt ptr %i.ao, %.0.lcssa
  br i1 %i.aq, label %.lr.ph.i28, label %.critedge.i, !llvm.loop !385

.critedge.i:                                      ; preds = %bb.k, %.lr.ph.i28, %.lr.ph7.i
  %.0.lcssa.i = phi ptr [ %.0166.i, %.lr.ph7.i ], [ %.01.i, %.lr.ph.i28 ], [ %i.ao, %bb.k ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.lcssa.i, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  %.016.i = getelementptr inbounds nuw i8, ptr %.0166.i, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %.016.i, %.022.lcssa
  br i1 %.not.i27, label %_ZN4pugi4impl12_GLOBAL__N_114insertion_sortINS_10xpath_nodeENS1_25document_order_comparatorEEEvPT_S6_RKT0_.exit, label %.lr.ph7.i, !llvm.loop !386

_ZN4pugi4impl12_GLOBAL__N_114insertion_sortINS_10xpath_nodeENS1_25document_order_comparatorEEEvPT_S6_RKT0_.exit: ; preds = %.critedge.i, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZNK4pugi4impl12_GLOBAL__N_125document_order_comparatorclERKNS_10xpath_nodeES5_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %"class.pugi::xml_attribute", align 8 ; 4 uses
  %3 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %4 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %5 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %6 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %.pre.i.i = load ptr, ptr %6, align 8
  br label %_ZNK4pugi10xpath_node4nodeEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8
  %i.d = inttoptr i64 %i.c to ptr
  br label %_ZNK4pugi10xpath_node4nodeEv.exit.i

_ZNK4pugi10xpath_node4nodeEv.exit.i:              ; preds = %bb.c, %bb.b
  %i.e = phi ptr [ %i.d, %bb.c ], [ %.pre.i.i, %bb.b ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit.i
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = lshr i64 %i.f, 8
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !22, !noundef !22
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -64
  %i.l = load i64, ptr %i.k, align 8
  %i.m = and i64 %i.l, 64
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not22.i = icmp ne ptr %i.p, null
  %i.q = and i64 %i.f, 96
  %i.r = icmp eq i64 %i.q, 0
  %or.cond.i = and i1 %i.r, %.not22.i
  br i1 %or.cond.i, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not23.i = icmp ne ptr %i.t, null
  %i.u = and i64 %i.f, 80
  %i.v = icmp eq i64 %i.u, 0
  %or.cond27.i = and i1 %i.v, %.not23.i
  br i1 %or.cond27.i, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  br label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit

bb.h:                                             ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8 ; 5 uses
  %.not21.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not21.i, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load i64, ptr %.sroa.0.0.copyload.i.i, align 8 ; 3 uses
  %i.x = lshr i64 %i.w, 8
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !22, !noundef !22
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -64
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = and i64 %i.ac, 64
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit

bb.j:                                             ; preds = %bb.i
  %i.af = and i64 %i.w, 96
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit

bb.l:                                             ; preds = %bb.j
  %i.aj = and i64 %i.w, 80
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.m, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit

_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.k, %bb.l, %bb.m
  %.1.i = phi ptr [ %i.t, %bb.f ], [ %i.p, %bb.e ], [ null, %bb.g ], [ %i.ai, %bb.k ], [ %i.am, %bb.m ], [ null, %bb.i ], [ null, %bb.l ], [ null, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %.not.i.i.i36 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i36, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %.pre.i.i37 = load ptr, ptr %5, align 8
  br label %_ZNK4pugi10xpath_node4nodeEv.exit.i38

bb.o:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit
  %i.ap = load i64, ptr %1, align 8
  %i.aq = inttoptr i64 %i.ap to ptr
  br label %_ZNK4pugi10xpath_node4nodeEv.exit.i38

_ZNK4pugi10xpath_node4nodeEv.exit.i38:            ; preds = %bb.o, %bb.n
  %i.ar = phi ptr [ %i.aq, %bb.o ], [ %.pre.i.i37, %bb.n ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.not.i39 = icmp eq ptr %i.ar, null
  br i1 %.not.i39, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit.i38
  %i.as = load i64, ptr %i.ar, align 8            ; 3 uses
  %i.at = lshr i64 %i.as, 8
  %i.au = sub nsw i64 0, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !22, !noundef !22
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -64
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = and i64 %i.ay, 64
  %i.ba = icmp eq i64 %i.az, 0
end_hunk_2
