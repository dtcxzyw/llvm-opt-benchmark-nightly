inline.NumInlined: 2539
inline.NumDeleted: 798
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN11trail_stack4pushI13set_ptr_trailIN12_GLOBAL__N_19path_treeEEEEvRKT_:bb.a
  %i.o = zext i32 %i.l to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.o
  store ptr %i.b, ptr %i.p, align 8, !tbaa !626
  %i.q = add i32 %i.l, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !588
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_18mam_impl12mk_path_treeEPNS_4pathEP10quantifierP3app(ptr noundef nonnull align 8 dereferenceable(98976) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.lr.ph:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !739
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.c
  %.01931 = phi ptr [ null, %.lr.ph ], [ %i.f, %bb.c ] ; 2 uses
  %.02130 = phi ptr [ null, %.lr.ph ], [ %spec.select, %bb.c ] ; 2 uses
  %.02229 = phi ptr [ %1, %.lr.ph ], [ %i.w, %bb.c ] ; 4 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !767, !nonnull !521, !align !522
  %i.f = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 noundef 64) ; 10 uses
  %i.g = load ptr, ptr %.02229, align 8, !tbaa !732 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !753
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.02229, i64 8
  %i.j = load <2 x i16>, ptr %i.i, align 8, !tbaa !768
  store <2 x i16> %i.j, ptr %i.h, align 8, !tbaa !768
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %.02229, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !738
  store ptr %i.m, ptr %i.k, align 8, !tbaa !756
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr null, ptr %i.n, align 8, !tbaa !759
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.val.i = load i32, ptr %i.g, align 4, !tbaa !666
  %i.p = tail call fastcc noundef zeroext i8 @_ZN12_GLOBAL__N_112label_hasherclEP9func_decl(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 %.val.i)
  %i.q = and i8 %i.p, 63
  %i.r = zext nneg i8 %i.q to i64
  %i.s = shl nuw i64 1, %i.r
  store i64 %i.s, ptr %i.o, align 8, !tbaa !714
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %.not24 = icmp eq ptr %.01931, null
  br i1 %.not24, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.01931, i64 48
  store ptr %i.f, ptr %i.u, align 8, !tbaa !758
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not25 = icmp eq ptr %.02130, null
  %spec.select = select i1 %.not25, ptr %i.f, ptr %.02130 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.02229, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !740  ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %.noexc, label %bb.a, !llvm.loop !769

.noexc:                                           ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.y = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_18compiler7mk_treeEP10quantifierP3appjb(ptr noundef nonnull align 8 dereferenceable(176) %i.x, ptr noundef %2, ptr noundef %3, i32 noundef %i.b, i1 noundef zeroext true) ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.y, ptr %i.z, align 8, !tbaa !759
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 noundef 16) ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13new_obj_trailIN12_GLOBAL__N_19code_treeEE, i64 16), ptr %i.ac, align 8, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.y, ptr %i.ad, align 8, !tbaa !761
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !625 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.noexc27, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !588 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !588
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %.noexc27, label %bb.e

.noexc27:                                         ; preds = %bb.d, %.noexc
  tail call void @_ZN6vectorIP5trailLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(56) %i.aa)
  %.pre.i.i = load ptr, ptr %i.aa, align 8, !tbaa !625 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !588
  br label %bb.e

bb.e:                                             ; preds = %.noexc27, %bb.d
  %i.al = phi i32 [ %.pre2.i.i, %.noexc27 ], [ %i.ah, %bb.d ] ; 2 uses
  %i.am = phi ptr [ %.pre.i.i, %.noexc27 ], [ %i.ae, %bb.d ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ao
  store ptr %i.ac, ptr %i.ap, align 8, !tbaa !626
  %i.aq = add i32 %i.al, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !588
  ret ptr %spec.select
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11trail_stack4pushI13set_ptr_trailIN12_GLOBAL__N_19code_treeEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 noundef 16) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !770
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13set_ptr_trailIN12_GLOBAL__N_19code_treeEE, i64 16), ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.val, ptr %i.d, align 8, !tbaa !760
  %i.e = load ptr, ptr %0, align 8, !tbaa !625    ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !588  ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !588
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN6vectorIP5trailLb0EjE9push_backEOS1_.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6vectorIP5trailLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !625 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !588
  br label %_ZN6vectorIP5trailLb0EjE9push_backEOS1_.exit

_ZN6vectorIP5trailLb0EjE9push_backEOS1_.exit:     ; preds = %bb.b, %bb.c
  %i.l = phi i32 [ %.pre2.i, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %.pre.i, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.o = zext i32 %i.l to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.o
  store ptr %i.b, ptr %i.p, align 8, !tbaa !626
  %i.q = add i32 %i.l, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !588
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11trail_stack4pushI13new_obj_trailIN12_GLOBAL__N_19code_treeEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 noundef 16) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !761
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13new_obj_trailIN12_GLOBAL__N_19code_treeEE, i64 16), ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.val, ptr %i.d, align 8, !tbaa !761
  %i.e = load ptr, ptr %0, align 8, !tbaa !625    ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !588  ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !588
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN6vectorIP5trailLb0EjE9push_backEOS1_.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6vectorIP5trailLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !625 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !588
  br label %_ZN6vectorIP5trailLb0EjE9push_backEOS1_.exit

_ZN6vectorIP5trailLb0EjE9push_backEOS1_.exit:     ; preds = %bb.b, %bb.c
  %i.l = phi i32 [ %.pre2.i, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %.pre.i, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.o = zext i32 %i.l to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.o
  store ptr %i.b, ptr %i.p, align 8, !tbaa !626
  %i.q = add i32 %i.l, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !588
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_18compiler6insertEPNS_9code_treeEP10quantifierP3appjb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::allocator.315", align 1 ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::allocator.315", align 1 ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::allocator.315", align 1 ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::allocator.315", align 1 ; 4 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %16 = alloca %"class.std::allocator.315", align 1 ; 4 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %18 = alloca %"class.std::allocator.315", align 1 ; 4 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %20 = alloca %"class.std::allocator.315", align 1 ; 4 uses
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i32, ptr %i.a, align 8, !tbaa !692
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = zext i32 %4 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !636
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !631
  %.not = icmp eq i32 %.val, %i.g
  br i1 %.not, label %bb.b, label %bb.ig

bb.b:                                             ; preds = %bb.a
  %i.h = zext i1 %5 to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 7 uses
  store i8 %i.h, ptr %i.i, align 4, !tbaa !772
  br i1 %5, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !773, !nonnull !521, !align !522
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val17 = load ptr, ptr %i.l, align 8, !tbaa !774 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !588
  %i.o = getelementptr inbounds nuw i8, ptr %.val17, i64 16
  %i.p = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 noundef 24) ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV11value_trailIjE, i64 16), ptr %i.p, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.m, ptr %i.q, align 8
  %.sroa.6.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i32 %i.n, ptr %.sroa.6.8..sroa_idx.i, align 8
  %i.r = load ptr, ptr %.val17, align 8, !tbaa !625 ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.noexc3.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !588  ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !588
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %.noexc3.i, label %_ZN12_GLOBAL__N_117code_tree_manager13save_num_regsEPNS_9code_treeE.exit

.noexc3.i:                                        ; preds = %bb.d, %bb.c
  tail call void @_ZN6vectorIP5trailLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(56) %.val17)
  %.pre.i.i.i = load ptr, ptr %.val17, align 8, !tbaa !625 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !588
  br label %_ZN12_GLOBAL__N_117code_tree_manager13save_num_regsEPNS_9code_treeE.exit

_ZN12_GLOBAL__N_117code_tree_manager13save_num_regsEPNS_9code_treeE.exit: ; preds = %bb.d, %.noexc3.i
  %i.y = phi i32 [ %.pre2.i.i.i, %.noexc3.i ], [ %i.u, %bb.d ] ; 2 uses
  %i.z = phi ptr [ %.pre.i.i.i, %.noexc3.i ], [ %i.r, %bb.d ] ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  store ptr %i.p, ptr %i.ac, align 8, !tbaa !626
  %i.ad = add i32 %i.y, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !588
  br label %bb.e

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_117code_tree_manager13save_num_regsEPNS_9code_treeE.exit, %bb.b
  tail call fastcc void @_ZN12_GLOBAL__N_18compiler4initEPNS_9code_treeEP10quantifierP3appj(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %4)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !722
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 7 uses
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !775
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !723
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 26 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 27 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 25 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_18compiler15find_best_childEPNS_6chooseE.exit.i, %bb.e
  %.0.i = phi ptr [ %i.ai, %bb.e ], [ %spec.select.i323.i, %_ZN12_GLOBAL__N_18compiler15find_best_childEPNS_6chooseE.exit.i ] ; 8 uses
  %.val99.i = load ptr, ptr %i.aj, align 8, !tbaa !621 ; 2 uses
  %.not.i.i = icmp eq ptr %.val99.i, null
  br i1 %.not.i.i, label %_ZN6vectorIPN12_GLOBAL__N_111instructionELb0EjE5resetEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds i8, ptr %.val99.i, i64 -4
  store i32 0, ptr %i.au, align 4, !tbaa !588
  br label %_ZN6vectorIPN12_GLOBAL__N_111instructionELb0EjE5resetEv.exit.i

_ZN6vectorIPN12_GLOBAL__N_111instructionELb0EjE5resetEv.exit.i: ; preds = %bb.g, %bb.f
  %.val.i = load ptr, ptr %i.ak, align 8, !tbaa !621 ; 3 uses
  %.not.i145.i = icmp eq ptr %.val.i, null
  br i1 %.not.i145.i, label %_ZN6vectorIPN12_GLOBAL__N_111instructionELb0EjE5resetEv.exit146.i, label %bb.h

bb.h:                                             ; preds = %_ZN6vectorIPN12_GLOBAL__N_111instructionELb0EjE5resetEv.exit.i
  %i.av = getelementptr inbounds i8, ptr %.val.i, i64 -4
  store i32 0, ptr %i.av, align 4, !tbaa !588
  br label %_ZN6vectorIPN12_GLOBAL__N_111instructionELb0EjE5resetEv.exit146.i

_ZN6vectorIPN12_GLOBAL__N_111instructionELb0EjE5resetEv.exit146.i: ; preds = %bb.h, %_ZN6vectorIPN12_GLOBAL__N_111instructionELb0EjE5resetEv.exit.i
  %storemerge.in592.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %storemerge593.i = load ptr, ptr %storemerge.in592.i, align 8, !tbaa !776 ; 2 uses
  %.not594.i = icmp eq ptr %storemerge593.i, null
  br i1 %.not594.i, label %.critedge.i, label %.lr.ph598.i

.lr.ph598.i:                                      ; preds = %_ZN6vectorIPN12_GLOBAL__N_111instructionELb0EjE5resetEv.exit146.i, %.loopexit.i
  %storemerge596.i = phi ptr [ %storemerge.i, %.loopexit.i ], [ %storemerge593.i, %_ZN6vectorIPN12_GLOBAL__N_111instructionELb0EjE5resetEv.exit146.i ] ; 21 uses
  %.082595.i = phi ptr [ %storemerge596.i, %.loopexit.i ], [ %.0.i, %_ZN6vectorIPN12_GLOBAL__N_111instructionELb0EjE5resetEv.exit146.i ] ; 2 uses
  %i.aw = load i32, ptr %storemerge596.i, align 8, !tbaa !778
  switch i32 %i.aw, label %bb.eq [
    i32 26, label %.critedge.loopexit.i
    i32 27, label %.critedge.loopexit.i
    i32 7, label %bb.i
    i32 8, label %bb.i
    i32 9, label %bb.i
    i32 10, label %bb.i
    i32 11, label %bb.i
    i32 12, label %bb.i
    i32 13, label %bb.i
    i32 22, label %bb.bk
    i32 21, label %bb.cs
    i32 24, label %bb.dr
    i32 23, label %bb.ea
  ]

bb.i:                                             ; preds = %.lr.ph598.i, %.lr.ph598.i, %.lr.ph598.i, %.lr.ph598.i, %.lr.ph598.i, %.lr.ph598.i, %.lr.ph598.i
  %.val107.i = load ptr, ptr %i.al, align 8, !tbaa !624
  %i.ax = getelementptr inbounds nuw i8, ptr %storemerge596.i, i64 28
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !779 ; 9 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.val107.i, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !636 ; 5 uses
  %.not.i147.i = icmp eq ptr %i.bb, null
  br i1 %.not.i147.i, label %_ZNK12_GLOBAL__N_18compiler13is_compatibleEPNS_4bindE.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = and i32 %i.bd, 65535
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %_Z9is_groundPK4expr.exit.i.i, label %_ZNK12_GLOBAL__N_18compiler13is_compatibleEPNS_4bindE.exit.thread.i

_Z9is_groundPK4expr.exit.i.i:                     ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 30
  %i.bh = load i8, ptr %i.bg, align 2
  %i.bi = trunc i8 %i.bh to i1
  br i1 %i.bi, label %_ZNK12_GLOBAL__N_18compiler13is_compatibleEPNS_4bindE.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %_Z9is_groundPK4expr.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !688
  %i.bl = getelementptr inbounds nuw i8, ptr %storemerge596.i, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !781
  %i.bn = icmp eq ptr %i.bk, %i.bm
  br i1 %i.bn, label %_ZNK12_GLOBAL__N_18compiler13is_compatibleEPNS_4bindE.exit.i, label %_ZNK12_GLOBAL__N_18compiler13is_compatibleEPNS_4bindE.exit.thread.i

_ZNK12_GLOBAL__N_18compiler13is_compatibleEPNS_4bindE.exit.i: ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !631
  %i.bq = getelementptr inbounds nuw i8, ptr %storemerge596.i, i64 24 ; 2 uses
  %i.br = load i16, ptr %i.bq, align 8, !tbaa !782
  %i.bs = zext i16 %i.br to i32
  %i.bt = icmp eq i32 %i.bp, %i.bs
  br i1 %i.bt, label %bb.l, label %_ZNK12_GLOBAL__N_18compiler13is_compatibleEPNS_4bindE.exit.thread.i

bb.l:                                             ; preds = %_ZNK12_GLOBAL__N_18compiler13is_compatibleEPNS_4bindE.exit.i
  %i.bu = load ptr, ptr %i.aq, align 8, !tbaa !620 ; 8 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN6vectorIjLb0EjE5eraseERKj.exit.i, label %_ZN6vectorIjLb0EjE3endEv.exit.i.i

_ZN6vectorIjLb0EjE3endEv.exit.i.i:                ; preds = %bb.l
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -4 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !588 ; 4 uses
  %i.by = zext i32 %i.bx to i64                   ; 3 uses
  %.idx9.i.i = shl nuw nsw i64 %i.by, 2           ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx9.i.i ; 2 uses
  %i.ca = lshr i64 %i.by, 2                       ; 2 uses
  %.not8.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN6vectorIjLb0EjE3endEv.exit.i.i
  %i.cb = and i64 %.idx9.i.i, 17179869168
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.bu, i64 %i.cb
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %.lr.ph.i.i.i.i.i
  %.047.i.i.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i ], [ %i.co, %bb.q ] ; 2 uses
  %.02946.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i ], [ %i.cn, %bb.q ] ; 9 uses
  %i.cc = load i32, ptr %.02946.i.i.i.i.i, align 4, !tbaa !588
  %i.cd = icmp eq i32 %i.cc, %i.ay
  br i1 %i.cd, label %_ZSt4findIPjjET_S1_S1_RKT0_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !588
  %i.cg = icmp eq i32 %i.cf, %i.ay
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_18compiler6insertEPNS_9code_treeEP10quantifierP3appjb:bb.a
.critedge.loopexit.i:                             ; preds = %.loopexit.i, %.lr.ph598.i, %.lr.ph598.i
  %.082.lcssa.ph.i = phi ptr [ %storemerge596.i, %.loopexit.i ], [ %.082595.i, %.lr.ph598.i ], [ %.082595.i, %.lr.ph598.i ]
  %storemerge.lcssa.ph.i = phi ptr [ null, %.loopexit.i ], [ %storemerge596.i, %.lr.ph598.i ], [ %storemerge596.i, %.lr.ph598.i ]
  %.not.lcssa.ph.i = phi i1 [ true, %.loopexit.i ], [ false, %.lr.ph598.i ], [ false, %.lr.ph598.i ]
  %.val131.pre.i = load ptr, ptr %i.ak, align 8, !tbaa !621
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %_ZN6vectorIPN12_GLOBAL__N_111instructionELb0EjE5resetEv.exit146.i
  %.val131.i = phi ptr [ %.val.i, %_ZN6vectorIPN12_GLOBAL__N_111instructionELb0EjE5resetEv.exit146.i ], [ %.val131.pre.i, %.critedge.loopexit.i ] ; 2 uses
  %.082.lcssa.i = phi ptr [ %.0.i, %_ZN6vectorIPN12_GLOBAL__N_111instructionELb0EjE5resetEv.exit146.i ], [ %.082.lcssa.ph.i, %.critedge.loopexit.i ]
  %storemerge.lcssa.i = phi ptr [ null, %_ZN6vectorIPN12_GLOBAL__N_111instructionELb0EjE5resetEv.exit146.i ], [ %storemerge.lcssa.ph.i, %.critedge.loopexit.i ] ; 4 uses
  %.not.lcssa.i = phi i1 [ true, %_ZN6vectorIPN12_GLOBAL__N_111instructionELb0EjE5resetEv.exit146.i ], [ %.not.lcssa.ph.i, %.critedge.loopexit.i ]
  %i.aee = icmp eq ptr %.val131.i, null
  br i1 %i.aee, label %_ZNK6vectorIPN12_GLOBAL__N_111instructionELb0EjE5emptyEv.exit.thread.i, label %_ZNK6vectorIPN12_GLOBAL__N_111instructionELb0EjE5emptyEv.exit.i

_ZNK6vectorIPN12_GLOBAL__N_111instructionELb0EjE5emptyEv.exit.i: ; preds = %.critedge.i
  %i.aef = getelementptr inbounds i8, ptr %.val131.i, i64 -4
  %i.aeg = load i32, ptr %i.aef, align 4, !tbaa !588
  %i.aeh = icmp eq i32 %i.aeg, 0
  br i1 %i.aeh, label %_ZNK6vectorIPN12_GLOBAL__N_111instructionELb0EjE5emptyEv.exit.thread.i, label %bb.gv

_ZNK6vectorIPN12_GLOBAL__N_111instructionELb0EjE5emptyEv.exit.thread.i: ; preds = %_ZNK6vectorIPN12_GLOBAL__N_111instructionELb0EjE5emptyEv.exit.i, %.critedge.i
  br i1 %.not.lcssa.i, label %_ZN12_GLOBAL__N_18compiler6insertEPNS_11instructionEj.exit, label %bb.et

bb.et:                                            ; preds = %_ZNK6vectorIPN12_GLOBAL__N_111instructionELb0EjE5emptyEv.exit.thread.i
  %.pre.i318.i = load ptr, ptr %i.at, align 8, !tbaa !620
  br label %bb.eu

bb.eu:                                            ; preds = %bb.gs, %bb.et
  %i.aei = phi ptr [ %.pre.i318.i, %bb.et ], [ %i.api, %bb.gs ] ; 2 uses
  %.01444.i.i = phi ptr [ %storemerge.lcssa.i, %bb.et ], [ %i.ari, %bb.gs ] ; 3 uses
  %.01643.i.i = phi i32 [ 0, %bb.et ], [ %spec.select28.i.i, %bb.gs ] ; 2 uses
  %.01942.i.i = phi ptr [ null, %bb.et ], [ %spec.select.i323.i, %bb.gs ]
  %.02241.i.i = phi i32 [ 0, %bb.et ], [ %.123.i.i, %bb.gs ] ; 3 uses
  %.not.i.i.i319.i = icmp eq ptr %i.aei, null
  br i1 %.not.i.i.i319.i, label %_ZN6vectorIjLb0EjE5resetEv.exit.i.i.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.aej = getelementptr inbounds i8, ptr %i.aei, i64 -4
  store i32 0, ptr %i.aej, align 4, !tbaa !588
  br label %_ZN6vectorIjLb0EjE5resetEv.exit.i.i.i

_ZN6vectorIjLb0EjE5resetEv.exit.i.i.i:            ; preds = %bb.ev, %bb.eu
  %.049.in117.i.i.i = getelementptr inbounds nuw i8, ptr %.01444.i.i, i64 8
  %.049118.i.i.i = load ptr, ptr %.049.in117.i.i.i, align 8, !tbaa !776 ; 2 uses
  %.not119.i.i.i = icmp eq ptr %.049118.i.i.i, null
  br i1 %.not119.i.i.i, label %.critedge.thread192.i.i.i, label %.lr.ph123.i.i.i

.lr.ph123.i.i.i:                                  ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit.i.i.i, %_ZNK12_GLOBAL__N_18compiler13is_compatibleEPNS_4bindE.exit.thread.i.i.i
  %.049122.i.i.i = phi ptr [ %.049.i.i.i, %_ZNK12_GLOBAL__N_18compiler13is_compatibleEPNS_4bindE.exit.thread.i.i.i ], [ %.049118.i.i.i, %_ZN6vectorIjLb0EjE5resetEv.exit.i.i.i ] ; 14 uses
  %.0121.i.i.i = phi i32 [ %.1.i.i.i, %_ZNK12_GLOBAL__N_18compiler13is_compatibleEPNS_4bindE.exit.thread.i.i.i ], [ 0, %_ZN6vectorIjLb0EjE5resetEv.exit.i.i.i ] ; 26 uses
  %.047120.i.i.i = phi i32 [ %i.aem, %_ZNK12_GLOBAL__N_18compiler13is_compatibleEPNS_4bindE.exit.thread.i.i.i ], [ 0, %_ZN6vectorIjLb0EjE5resetEv.exit.i.i.i ] ; 2 uses
  %i.aek = load i32, ptr %.049122.i.i.i, align 8, !tbaa !778 ; 3 uses
  %i.ael = and i32 %i.aek, -2
  %switch.i.i.i = icmp eq i32 %i.ael, 26
  br i1 %switch.i.i.i, label %.critedge.thread.i.i.i, label %bb.ew

bb.ew:                                            ; preds = %.lr.ph123.i.i.i
  %i.aem = add i32 %.047120.i.i.i, 1              ; 2 uses
  switch i32 %i.aek, label %_ZNK12_GLOBAL__N_18compiler13is_compatibleEPNS_4bindE.exit.thread.i.i.i [
    i32 7, label %bb.ex
    i32 8, label %bb.ex
    i32 9, label %bb.ex
    i32 10, label %bb.ex
    i32 11, label %bb.ex
    i32 12, label %bb.ex
    i32 13, label %bb.ex
    i32 21, label %bb.fw
    i32 22, label %bb.fx
    i32 24, label %bb.gj
    i32 23, label %bb.gn
  ]

bb.ex:                                            ; preds = %bb.ew, %bb.ew, %bb.ew, %bb.ew, %bb.ew, %bb.ew, %bb.ew
  %.val.i.i327.i = load ptr, ptr %i.al, align 8, !tbaa !624
  %i.aen = getelementptr inbounds nuw i8, ptr %.049122.i.i.i, i64 28
  %i.aeo = load i32, ptr %i.aen, align 4, !tbaa !779
  %i.aep = zext i32 %i.aeo to i64
  %i.aeq = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i327.i, i64 %i.aep
  %i.aer = load ptr, ptr %i.aeq, align 8, !tbaa !636 ; 6 uses
  %.not.i65.i.i.i = icmp eq ptr %i.aer, null
  br i1 %.not.i65.i.i.i, label %_ZNK12_GLOBAL__N_18compiler13is_compatibleEPNS_4bindE.exit.thread.i.i.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 4
  %i.aet = load i32, ptr %i.aes, align 4
  %i.aeu = and i32 %i.aet, 65535
  %i.aev = icmp eq i32 %i.aeu, 0
  br i1 %i.aev, label %_Z9is_groundPK4expr.exit.i.i.i.i, label %_ZNK12_GLOBAL__N_18compiler13is_compatibleEPNS_4bindE.exit.thread.i.i.i

_Z9is_groundPK4expr.exit.i.i.i.i:                 ; preds = %bb.ey
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aer, i64 30
  %i.aex = load i8, ptr %i.aew, align 2
  %i.aey = trunc i8 %i.aex to i1
  br i1 %i.aey, label %_ZNK12_GLOBAL__N_18compiler13is_compatibleEPNS_4bindE.exit.thread.i.i.i, label %bb.ez

bb.ez:                                            ; preds = %_Z9is_groundPK4expr.exit.i.i.i.i
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aer, i64 16
  %i.afa = load ptr, ptr %i.aez, align 8, !tbaa !688
  %i.afb = getelementptr inbounds nuw i8, ptr %.049122.i.i.i, i64 16
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !781
  %i.afd = icmp eq ptr %i.afa, %i.afc
  br i1 %i.afd, label %_ZNK12_GLOBAL__N_18compiler13is_compatibleEPNS_4bindE.exit.i.i.i, label %_ZNK12_GLOBAL__N_18compiler13is_compatibleEPNS_4bindE.exit.thread.i.i.i

_ZNK12_GLOBAL__N_18compiler13is_compatibleEPNS_4bindE.exit.i.i.i: ; preds = %bb.ez
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aer, i64 24
  %i.aff = load i32, ptr %i.afe, align 8, !tbaa !631 ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %.049122.i.i.i, i64 24
  %i.afh = load i16, ptr %i.afg, align 8, !tbaa !782 ; 2 uses
  %i.afi = zext i16 %i.afh to i32
  %i.afj = icmp eq i32 %i.aff, %i.afi
  br i1 %i.afj, label %bb.fa, label %_ZNK12_GLOBAL__N_18compiler13is_compatibleEPNS_4bindE.exit.thread.i.i.i

bb.fa:                                            ; preds = %_ZNK12_GLOBAL__N_18compiler13is_compatibleEPNS_4bindE.exit.i.i.i
  %i.afk = add i32 %.0121.i.i.i, 4                ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %.049122.i.i.i, i64 32
  %i.afm = load i32, ptr %i.afl, align 8, !tbaa !785
  %.not128.i.i.i = icmp eq i16 %i.afh, 0
  br i1 %.not128.i.i.i, label %_ZNK12_GLOBAL__N_18compiler13is_compatibleEPNS_4bindE.exit.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.fa
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aer, i64 32
  %wide.trip.count.i.i.i = zext nneg i32 %i.aff to i64
  br label %bb.fb

bb.fb:                                            ; preds = %_ZN6vectorIjLb0EjE9push_backEOj.exit.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN6vectorIjLb0EjE9push_backEOj.exit.i.i.i ] ; 3 uses
  %i.afo = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.afp = add i32 %i.afm, %i.afo                 ; 5 uses
  %i.afq = getelementptr inbounds nuw [8 x i8], ptr %i.afn, i64 %indvars.iv.i.i.i
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !636
  %i.afs = load ptr, ptr %i.al, align 8, !tbaa !624 ; 5 uses
  %i.aft = icmp eq ptr %i.afs, null
  br i1 %i.aft, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i.i.i, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i.i:   ; preds = %bb.fb
  %i.afu = getelementptr inbounds i8, ptr %i.afs, i64 -4 ; 2 uses
  %i.afv = load i32, ptr %i.afu, align 4, !tbaa !588 ; 3 uses
  %.not.i.i.i.i.i = icmp ult i32 %i.afp, %i.afv
  br i1 %.not.i.i.i.i.i, label %_ZN12_GLOBAL__N_18compiler12set_registerEjP4expr.exit.i.i.i, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i.i.i.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i.i.i: ; preds = %bb.fb
  %i.afw = add i32 %i.afp, 1                      ; 2 uses
  %.not.not.i.i.i.i.i.i = icmp ne i32 %i.afw, 0
  tail call void @llvm.assume(i1 %.not.not.i.i.i.i.i.i)
  br label %thread-pre-split.i.i.i.i.i.i.preheader

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i.i
  %i.afx = add i32 %i.afp, 1                      ; 3 uses
  %.not16.i.i.i.i.i.i = icmp ugt i32 %i.afx, %i.afv
  br i1 %.not16.i.i.i.i.i.i, label %thread-pre-split.i.i.i.i.i.i.preheader, label %bb.fc

thread-pre-split.i.i.i.i.i.i.preheader:           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i.i.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i.i.i.i.i
  %.ph = phi ptr [ %i.afs, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i.i.i.i.i ], [ null, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i.i.i ]
  %.ph459 = phi i32 [ %i.afx, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i.i.i.i.i ], [ %i.afw, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i.i.i ] ; 4 uses
  %.0.i17.i.i.i.i.i.i.ph = phi i32 [ %i.afv, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i.i.i.i.i ], [ 0, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i.i.i ] ; 2 uses
  br label %thread-pre-split.i.i.i.i.i.i

bb.fc:                                            ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i.i.i.i.i
  store i32 %i.afx, ptr %i.afu, align 4, !tbaa !588
  br label %_ZN12_GLOBAL__N_18compiler12set_registerEjP4expr.exit.i.i.i

thread-pre-split.i.i.i.i.i.i:                     ; preds = %thread-pre-split.i.i.i.i.i.i.backedge, %thread-pre-split.i.i.i.i.i.i.preheader
  %i.afy = phi ptr [ %.ph, %thread-pre-split.i.i.i.i.i.i.preheader ], [ %.be, %thread-pre-split.i.i.i.i.i.i.backedge ] ; 6 uses
  %i.afz = icmp eq ptr %i.afy, null
  br i1 %i.afz, label %bb.fd, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i.i.i.i.i

_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i.i.i.i.i: ; preds = %thread-pre-split.i.i.i.i.i.i
  %i.aga = getelementptr inbounds i8, ptr %i.afy, i64 -8 ; 2 uses
  %i.agb = load i32, ptr %i.aga, align 4, !tbaa !588 ; 4 uses
  %i.agc = icmp ugt i32 %.ph459, %i.agb
  br i1 %i.agc, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i.i.i.i.i, label %bb.fk

bb.fd:                                            ; preds = %thread-pre-split.i.i.i.i.i.i
  %i.agd = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.agd, align 4, !tbaa !588
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 4
  store i32 0, ptr %i.age, align 4, !tbaa !588
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agd, i64 8 ; 2 uses
  store ptr %i.agf, ptr %i.al, align 8, !tbaa !624
  br label %thread-pre-split.i.i.i.i.i.i.backedge

_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i.i.i.i.i
  %i.agg = mul i32 %i.agb, 3
  %i.agh = add i32 %i.agg, 1
  %i.agi = lshr i32 %i.agh, 1                     ; 3 uses
  %i.agj = shl i32 %i.agi, 3
  %i.agk = add i32 %i.agj, 8                      ; 2 uses
  %.not.i78.i.i.i = icmp ugt i32 %i.agi, %i.agb
  br i1 %.not.i78.i.i.i, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i.i.i.i.i
  %i.agl = shl i32 %i.agb, 3
  %i.agm = add i32 %i.agl, 8
  %.not27.i.i.i.i = icmp ugt i32 %i.agk, %i.agm
  br i1 %.not27.i.i.i.i, label %bb.fi, label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i.i.i.i.i
  %i.agn = tail call ptr @__cxa_allocate_exception(i64 40) #20 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %21 unwind label %bb.fh

21:                                               ; preds = %bb.ff
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.agn, align 8, !tbaa !11
  %22 = getelementptr inbounds nuw i8, ptr %i.agn, i64 8 ; 2 uses
  %23 = getelementptr inbounds nuw i8, ptr %i.agn, i64 24 ; 3 uses
  store ptr %23, ptr %22, align 8, !tbaa !641
  %24 = load ptr, ptr %19, align 8, !tbaa !643    ; 2 uses
  %25 = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

27:                                               ; preds = %21
  %28 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %29 = load i64, ptr %28, align 8, !tbaa !645    ; 3 uses
  %30 = icmp ult i64 %29, 16
  call void @llvm.assume(i1 %30)
  %31 = add nuw nsw i64 %29, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %23, ptr noundef nonnull align 8 dereferenceable(1) %25, i64 %31, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %21
  store ptr %24, ptr %22, align 8, !tbaa !643
  %32 = load i64, ptr %25, align 8, !tbaa !646
  store i64 %32, ptr %23, align 8, !tbaa !646
  %.phi.trans.insert.i79.i.i.i = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.pre.i80.i.i.i = load i64, ptr %.phi.trans.insert.i79.i.i.i, align 8, !tbaa !645
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %27
  %33 = phi i64 [ %29, %27 ], [ %.pre.i80.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ago = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agn, i64 16
  store i64 %33, ptr %i.agp, align 8, !tbaa !645
  store ptr %25, ptr %19, align 8, !tbaa !643
  store i64 0, ptr %i.ago, align 8, !tbaa !645
  store i8 0, ptr %25, align 8, !tbaa !646
  invoke void @__cxa_throw(ptr nonnull %i.agn, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #23
          to label %bb.fj unwind label %bb.fg

bb.fg:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i.i
  %i.agq = landingpad { ptr, i32 }
          cleanup
  %i.agr = load ptr, ptr %19, align 8, !tbaa !643 ; 2 uses
  %i.ags = icmp eq ptr %i.agr, %25
  br i1 %i.ags, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i.i.i.i: ; preds = %bb.fg
  %i.agt = load i64, ptr %25, align 8, !tbaa !646
  %i.agu = add i64 %i.agt, 1
  call void @_ZdlPvm(ptr noundef %i.agr, i64 noundef %i.agu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %common.resume.i

bb.fh:                                            ; preds = %bb.ff
  %i.agv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @__cxa_free_exception(ptr %i.agn) #20
  br label %common.resume.i

bb.fi:                                            ; preds = %bb.fe
  %i.agw = zext i32 %i.agk to i64
  %i.agx = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.aga, i64 noundef %i.agw) ; 2 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 8 ; 2 uses
  store ptr %i.agy, ptr %i.al, align 8, !tbaa !624
  store i32 %i.agi, ptr %i.agx, align 4, !tbaa !588
  br label %thread-pre-split.i.i.i.i.i.i.backedge

thread-pre-split.i.i.i.i.i.i.backedge:            ; preds = %bb.fi, %bb.fd
  %.be = phi ptr [ %i.agf, %bb.fd ], [ %i.agy, %bb.fi ]
  br label %thread-pre-split.i.i.i.i.i.i, !llvm.loop !786

bb.fj:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i.i
  unreachable

bb.fk:                                            ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i.i.i.i.i
  %i.agz = getelementptr inbounds i8, ptr %i.afy, i64 -4
  store i32 %.ph459, ptr %i.agz, align 4, !tbaa !588
  %.not1319.i.i.i.i.i.i = icmp eq i32 %.0.i17.i.i.i.i.i.i.ph, %.ph459
  br i1 %.not1319.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_18compiler12set_registerEjP4expr.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.fk
  %i.aha = zext i32 %.ph459 to i64
  %i.ahb = zext i32 %.0.i17.i.i.i.i.i.i.ph to i64 ; 2 uses
  %i.ahc = getelementptr [8 x i8], ptr %i.afy, i64 %i.ahb
  %i.ahd = sub nsw i64 %i.aha, %i.ahb
  %i.ahe = shl nsw i64 %i.ahd, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ahc, i8 0, i64 %i.ahe, i1 false), !tbaa !636
  br label %_ZN12_GLOBAL__N_18compiler12set_registerEjP4expr.exit.i.i.i

_ZN12_GLOBAL__N_18compiler12set_registerEjP4expr.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.fk, %bb.fc, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i.i
  %i.ahf = phi ptr [ %i.afs, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i.i ], [ %i.afy, %bb.fk ], [ %i.afs, %bb.fc ], [ %i.afy, %.lr.ph.preheader.i.i.i.i.i.i ]
  %i.ahg = zext i32 %i.afp to i64
  %i.ahh = getelementptr inbounds nuw [8 x i8], ptr %i.ahf, i64 %i.ahg
  store ptr %i.afr, ptr %i.ahh, align 8, !tbaa !636
  %i.ahi = load ptr, ptr %i.at, align 8, !tbaa !620 ; 4 uses
  %i.ahj = icmp eq ptr %i.ahi, null
  br i1 %i.ahj, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %_ZN12_GLOBAL__N_18compiler12set_registerEjP4expr.exit.i.i.i
  %i.ahk = getelementptr inbounds i8, ptr %i.ahi, i64 -4
  %i.ahl = load i32, ptr %i.ahk, align 4, !tbaa !588 ; 5 uses
  %i.ahm = getelementptr inbounds i8, ptr %i.ahi, i64 -8 ; 2 uses
  %i.ahn = load i32, ptr %i.ahm, align 4, !tbaa !588
  %i.aho = icmp eq i32 %i.ahl, %i.ahn
  br i1 %i.aho, label %bb.fn, label %_ZN6vectorIjLb0EjE9push_backEOj.exit.i.i.i

bb.fm:                                            ; preds = %_ZN12_GLOBAL__N_18compiler12set_registerEjP4expr.exit.i.i.i
  %i.ahp = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16) ; 3 uses
  store i32 2, ptr %i.ahp, align 4, !tbaa !588
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahp, i64 4
  store i32 0, ptr %i.ahq, align 4, !tbaa !588
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahp, i64 8 ; 2 uses
  store ptr %i.ahr, ptr %i.at, align 8, !tbaa !620
  br label %_ZN6vectorIjLb0EjE13expand_vectorEv.exit.i.i.i

bb.fn:                                            ; preds = %bb.fl
  %i.ahs = mul i32 %i.ahl, 3
  %i.aht = add i32 %i.ahs, 1
  %i.ahu = lshr i32 %i.aht, 1                     ; 3 uses
  %i.ahv = shl i32 %i.ahu, 2
  %i.ahw = add i32 %i.ahv, 8                      ; 2 uses
  %.not.i81.i.i.i = icmp ugt i32 %i.ahu, %i.ahl
  br i1 %.not.i81.i.i.i, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.ahx = shl i32 %i.ahl, 2
  %i.ahy = add i32 %i.ahx, 8
  %.not27.i90.i.i.i = icmp ugt i32 %i.ahw, %i.ahy
  br i1 %.not27.i90.i.i.i, label %bb.fu, label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %i.ahz = tail call ptr @__cxa_allocate_exception(i64 40) #20 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.fq unwind label %bb.ft

bb.fq:                                            ; preds = %bb.fp
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.ahz, align 8, !tbaa !11
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 8 ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahz, i64 24 ; 3 uses
  store ptr %i.aib, ptr %i.aia, align 8, !tbaa !641
  %i.aic = load ptr, ptr %17, align 8, !tbaa !643 ; 2 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  %i.aie = icmp eq ptr %i.aic, %i.aid
  br i1 %i.aie, label %bb.fr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83.i.i.i

bb.fr:                                            ; preds = %bb.fq
  %i.aif = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.aig = load i64, ptr %i.aif, align 8, !tbaa !645 ; 3 uses
  %i.aih = icmp ult i64 %i.aig, 16
  call void @llvm.assume(i1 %i.aih)
  %i.aii = add nuw nsw i64 %i.aig, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aib, ptr noundef nonnull align 8 dereferenceable(1) %i.aid, i64 %i.aii, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i86.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83.i.i.i: ; preds = %bb.fq
  store ptr %i.aic, ptr %i.aia, align 8, !tbaa !643
  %i.aij = load i64, ptr %i.aid, align 8, !tbaa !646
  store i64 %i.aij, ptr %i.aib, align 8, !tbaa !646
  %.phi.trans.insert.i84.i.i.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.pre.i85.i.i.i = load i64, ptr %.phi.trans.insert.i84.i.i.i, align 8, !tbaa !645
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i86.i.i.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i86.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83.i.i.i, %bb.fr
  %i.aik = phi i64 [ %i.aig, %bb.fr ], [ %.pre.i85.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83.i.i.i ]
  %i.ail = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16
  store i64 %i.aik, ptr %i.aim, align 8, !tbaa !645
  store ptr %i.aid, ptr %17, align 8, !tbaa !643
  store i64 0, ptr %i.ail, align 8, !tbaa !645
  store i8 0, ptr %i.aid, align 8, !tbaa !646
  invoke void @__cxa_throw(ptr nonnull %i.ahz, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #23
          to label %bb.fv unwind label %bb.fs

bb.fs:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i86.i.i.i
  %i.ain = landingpad { ptr, i32 }
          cleanup
  %i.aio = load ptr, ptr %17, align 8, !tbaa !643 ; 2 uses
  %i.aip = icmp eq ptr %i.aio, %i.aid
  br i1 %i.aip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i88.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i87.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i87.i.i.i: ; preds = %bb.fs
  %i.aiq = load i64, ptr %i.aid, align 8, !tbaa !646
  %i.air = add i64 %i.aiq, 1
  call void @_ZdlPvm(ptr noundef %i.aio, i64 noundef %i.air) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i88.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i88.i.i.i: ; preds = %bb.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i87.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %common.resume.i

bb.ft:                                            ; preds = %bb.fp
  %i.ais = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @__cxa_free_exception(ptr %i.ahz) #20
  br label %common.resume.i

bb.fu:                                            ; preds = %bb.fo
  %i.ait = zext i32 %i.ahw to i64
  %i.aiu = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.ahm, i64 noundef %i.ait) ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aiu, i64 8 ; 2 uses
  store ptr %i.aiv, ptr %i.at, align 8, !tbaa !620
  store i32 %i.ahu, ptr %i.aiu, align 4, !tbaa !588
  br label %_ZN6vectorIjLb0EjE13expand_vectorEv.exit.i.i.i

bb.fv:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i86.i.i.i
  unreachable

_ZN6vectorIjLb0EjE13expand_vectorEv.exit.i.i.i:   ; preds = %bb.fu, %bb.fm
  %.pre.i.i.i328.i = phi ptr [ %i.ahr, %bb.fm ], [ %i.aiv, %bb.fu ] ; 2 uses
  %.phi.trans.insert.i.i.i329.i = getelementptr inbounds i8, ptr %.pre.i.i.i328.i, i64 -4
  %.pre2.i.i.i330.i = load i32, ptr %.phi.trans.insert.i.i.i329.i, align 4, !tbaa !588
  br label %_ZN6vectorIjLb0EjE9push_backEOj.exit.i.i.i

_ZN6vectorIjLb0EjE9push_backEOj.exit.i.i.i:       ; preds = %_ZN6vectorIjLb0EjE13expand_vectorEv.exit.i.i.i, %bb.fl
  %i.aiw = phi i32 [ %.pre2.i.i.i330.i, %_ZN6vectorIjLb0EjE13expand_vectorEv.exit.i.i.i ], [ %i.ahl, %bb.fl ] ; 2 uses
  %i.aix = phi ptr [ %.pre.i.i.i328.i, %_ZN6vectorIjLb0EjE13expand_vectorEv.exit.i.i.i ], [ %i.ahi, %bb.fl ] ; 2 uses
  %i.aiy = getelementptr inbounds i8, ptr %i.aix, i64 -4
  %i.aiz = zext i32 %i.aiw to i64
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %i.aix, i64 %i.aiz
  store i32 %i.afp, ptr %i.aja, align 4, !tbaa !588
  %i.ajb = add i32 %i.aiw, 1
  store i32 %i.ajb, ptr %i.aiy, align 4, !tbaa !588
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZNK12_GLOBAL__N_18compiler13is_compatibleEPNS_4bindE.exit.thread.i.i.i, label %bb.fb, !llvm.loop !801

bb.fw:                                            ; preds = %bb.ew
  %.val59.i.i.i = load ptr, ptr %i.al, align 8, !tbaa !624 ; 2 uses
  %i.ajc = getelementptr i8, ptr %.049122.i.i.i, i64 16
  %.049.val60.i.i.i = load i32, ptr %i.ajc, align 8, !tbaa !797
  %i.ajd = zext i32 %.049.val60.i.i.i to i64
  %i.aje = getelementptr inbounds nuw [8 x i8], ptr %.val59.i.i.i, i64 %i.ajd
  %i.ajf = load ptr, ptr %i.aje, align 8, !tbaa !636 ; 2 uses
  %.not.i66.i.i.i = icmp eq ptr %i.ajf, null
  br i1 %.not.i66.i.i.i, label %_ZNK12_GLOBAL__N_18compiler13is_compatibleEPNS_4bindE.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_18compiler13is_compatibleEPNS_7compareE.exit.i.i.i

_ZNK12_GLOBAL__N_18compiler13is_compatibleEPNS_7compareE.exit.i.i.i: ; preds = %bb.fw
  %i.ajg = getelementptr i8, ptr %.049122.i.i.i, i64 20
  %.049.val61.i.i.i = load i32, ptr %i.ajg, align 4, !tbaa !799
  %i.ajh = zext i32 %.049.val61.i.i.i to i64
  %i.aji = getelementptr inbounds nuw [8 x i8], ptr %.val59.i.i.i, i64 %i.ajh
  %i.ajj = load ptr, ptr %i.aji, align 8, !tbaa !636
  %i.ajk = icmp eq ptr %i.ajf, %i.ajj
  %i.ajl = add i32 %.0121.i.i.i, 2
  %cond.fr.i.i.i = freeze i1 %i.ajk
  %spec.select.i.i.i = select i1 %cond.fr.i.i.i, i32 %i.ajl, i32 %.0121.i.i.i
  br label %_ZNK12_GLOBAL__N_18compiler13is_compatibleEPNS_4bindE.exit.thread.i.i.i

bb.fx:                                            ; preds = %bb.ew
  %i.ajm = getelementptr i8, ptr %.049122.i.i.i, i64 16 ; 2 uses
  %.049.val.i.i.i = load i32, ptr %i.ajm, align 8, !tbaa !788
  %i.ajn = getelementptr i8, ptr %.049122.i.i.i, i64 24 ; 4 uses
end_hunk_1
