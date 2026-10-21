Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/httplib?download=true
inline.NumInlined: 21893
inline.NumDeleted: 6596
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_ZNK7httplib7Request9has_paramERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %.0711.i.us.i = phi i64 [ %i.m, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.i = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.0711.i.us.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !183, !noalias !1901
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE8index_ofERKS7_.exit.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i: ; preds = %.lr.ph.i.split.us.i
  %i.m = add nuw i64 %.0711.i.us.i, 1             ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.m, %.pre16.i
  br i1 %exitcond.not.i.us.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE4findERKS7_.exit, label %.lr.ph.i.split.us.i, !llvm.loop !48

.lr.ph.i.split.i:                                 ; preds = %.lr.ph.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i
  %.0711.i.i = phi i64 [ %i.t, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.0711.i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !183, !noalias !1901
  %i.q = icmp eq i64 %i.p, %.fr7.i
  br i1 %i.q, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i.i: ; preds = %.lr.ph.i.split.i
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !196, !noalias !1901
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.r, ptr %i.g, i64 %.fr7.i), !noalias !1901
  %i.s = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.s, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE8index_ofERKS7_.exit.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i.i, %.lr.ph.i.split.i
  %i.t = add nuw i64 %.0711.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.t, %.pre16.i
  br i1 %exitcond.not.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE4findERKS7_.exit, label %.lr.ph.i.split.i, !llvm.loop !48

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE8index_ofERKS7_.exit.i: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i.i, %.lr.ph.i.split.us.i
  %.us-phi.i = phi i64 [ %.0711.i.us.i, %.lr.ph.i.split.us.i ], [ %.0711.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i.i ] ; 2 uses
  %i.u = icmp eq i64 %.us-phi.i, -1
  %spec.select.i = select i1 %i.u, i64 %.pre16.i, i64 %.us-phi.i
  br label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE4findERKS7_.exit

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE4findERKS7_.exit: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i, %bb.a, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE8index_ofERKS7_.exit.i
  %.us-phi.sink28.i = phi i64 [ %.pre16.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i ], [ %spec.select.i, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE8index_ofERKS7_.exit.i ], [ 0, %bb.a ], [ %.pre16.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i ]
  %i.v = icmp ne i64 %.us-phi.sink28.i, %.pre16.i
  ret i1 %i.v
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7httplib7Request15get_param_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(776) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %3) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @_ZN7httplib6detail18get_multimap_valueINS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS8_EEEEENT_11mapped_typeERKSC_RKS8_m(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7httplib6detail18get_multimap_valueINS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS8_EEEEENT_11mapped_typeERKSC_RKS8_m(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %3) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.httplib::detail::insertion_ordered_multimap<std::__cxx11::basic_string<char>, std::equal_to<std::__cxx11::basic_string<char>>>::iterator_t", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !226, !noalias !1904 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !225, !noalias !1904 ; 5 uses
  %.not.i.i = icmp eq ptr %i.c, %i.d
  %.pre.i = ptrtoint ptr %i.c to i64
  %.pre24.i = ptrtoint ptr %i.d to i64
  %.pre26.i = sub i64 %.pre.i, %.pre24.i
  %.pre28.i = ashr exact i64 %.pre26.i, 6         ; 7 uses
  br i1 %.not.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !183, !noalias !1904
  %.fr19.i = freeze i64 %i.f                      ; 3 uses
  %i.g = load ptr, ptr %2, align 8, !noalias !1904
  %i.h = icmp eq i64 %.fr19.i, 0
  br i1 %i.h, label %.lr.ph.i.split.us.i, label %.lr.ph.i.split.i

.lr.ph.i.split.us.i:                              ; preds = %.lr.ph.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i
  %.0711.i.us.i = phi i64 [ %i.m, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.i = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.0711.i.us.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !183, !noalias !1904
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE8index_ofERKS7_.exit.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i: ; preds = %.lr.ph.i.split.us.i
  %i.m = add nuw i64 %.0711.i.us.i, 1             ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.m, %.pre28.i
  br i1 %exitcond.not.i.us.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit, label %.lr.ph.i.split.us.i, !llvm.loop !48

.lr.ph.i.split.i:                                 ; preds = %.lr.ph.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i
  %.0711.i.i = phi i64 [ %i.t, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.0711.i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !183, !noalias !1904
  %i.q = icmp eq i64 %i.p, %.fr19.i
  br i1 %i.q, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i.i: ; preds = %.lr.ph.i.split.i
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !196, !noalias !1904
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.r, ptr %i.g, i64 %.fr19.i), !noalias !1904
  %i.s = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.s, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE8index_ofERKS7_.exit.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i.i, %.lr.ph.i.split.i
  %i.t = add nuw i64 %.0711.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.t, %.pre28.i
  br i1 %exitcond.not.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit, label %.lr.ph.i.split.i, !llvm.loop !48

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE8index_ofERKS7_.exit.i: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i.i, %.lr.ph.i.split.us.i
  %.us-phi.i = phi i64 [ %.0711.i.us.i, %.lr.ph.i.split.us.i ], [ %.0711.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i.i ] ; 3 uses
  %i.u = icmp eq i64 %.us-phi.i, -1
  %spec.select.i = select i1 %i.u, i64 %.pre28.i, i64 %.us-phi.i
  br label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i, %bb.a, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE8index_ofERKS7_.exit.i
  %.us-phi.sink42.i = phi i64 [ %.pre28.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i ], [ %spec.select.i, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE8index_ofERKS7_.exit.i ], [ 0, %bb.a ], [ %.pre28.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i ]
  %.us-phi.sink.i = phi i64 [ -1, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i ], [ %.us-phi.i, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE8index_ofERKS7_.exit.i ], [ -1, %bb.a ], [ -1, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %i.d, ptr %4, align 8, !tbaa !403
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %.us-phi.sink42.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !197
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.pre28.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !197
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %.us-phi.sink.i, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !197
  call void @_ZSt9__advanceIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS8_EE10iterator_tIKSt4pairIS8_S8_EEElEvRT_T0_St26bidirectional_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %3)
  %i.v = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !527 ; 2 uses
  %.not = icmp eq i64 %i.v, %.pre28.i
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit
  %i.w = load ptr, ptr %4, align 8, !tbaa !1905
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.w, i64 %i.v ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !182
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !196 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !183 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !197
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.ae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !196
  %i.af = load i64, ptr %i.a, align 8, !tbaa !197
  store i64 %i.af, ptr %i.z, align 8, !tbaa !184
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.ag = phi ptr [ %i.ae, %.noexc.i ], [ %i.z, %bb.b ] ; 2 uses
  switch i64 %i.ac, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ah = load i8, ptr %i.aa, align 1, !tbaa !184
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !184
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.aa, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !197 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !183
  %i.ak = load ptr, ptr %0, align 8, !tbaa !196
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.f

bb.e:                                             ; preds = %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.am, ptr %0, align 8, !tbaa !182
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !183
  store i8 0, ptr %i.am, align 8, !tbaa !184
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7httplib7Request16get_param_valuesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.104") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(776) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !226, !noalias !1909 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !225, !noalias !1909 ; 12 uses
  %.not.i.i = icmp eq ptr %i.d, %i.e
  %.pre.i = ptrtoint ptr %i.d to i64
  %.pre24.i = ptrtoint ptr %i.e to i64
  %.pre26.i = sub i64 %.pre.i, %.pre24.i
  %.pre28.i = ashr exact i64 %.pre26.i, 6         ; 17 uses
  br i1 %.not.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !183, !noalias !1909
  %.fr19.i = freeze i64 %i.g                      ; 3 uses
  %i.h = load ptr, ptr %2, align 8, !noalias !1909
  %i.i = icmp eq i64 %.fr19.i, 0
  br i1 %i.i, label %.lr.ph.i.split.us.i, label %.lr.ph.i.split.i

.lr.ph.i.split.us.i:                              ; preds = %.lr.ph.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i
  %.0711.i.us.i = phi i64 [ %i.n, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %.0711.i.us.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !183, !noalias !1909
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i: ; preds = %.lr.ph.i.split.us.i
  %i.n = add nuw i64 %.0711.i.us.i, 1             ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.n, %.pre28.i
  br i1 %exitcond.not.i.us.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit.thread, label %.lr.ph.i.split.us.i, !llvm.loop !48

.lr.ph.i.split.i:                                 ; preds = %.lr.ph.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i
  %.0711.i.i = phi i64 [ %i.u, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %.0711.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !183, !noalias !1909
  %i.r = icmp eq i64 %i.q, %.fr19.i
  br i1 %i.r, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i.i: ; preds = %.lr.ph.i.split.i
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !196, !noalias !1909
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.s, ptr %i.h, i64 %.fr19.i), !noalias !1909
  %i.t = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.t, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i.i, %.lr.ph.i.split.i
  %i.u = add nuw i64 %.0711.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %.pre28.i
  br i1 %exitcond.not.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit.thread, label %.lr.ph.i.split.i, !llvm.loop !48

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit.thread: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread9.i.us.i, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZSt8distanceIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS8_EE10iterator_tIKSt4pairIS8_S8_EEEENSt15iterator_traitsIT_E15difference_typeESI_SI_.exit

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i.i, %.lr.ph.i.split.us.i
  %.us-phi.i = phi i64 [ %.0711.i.us.i, %.lr.ph.i.split.us.i ], [ %.0711.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i.i ]
  %.fr15.i = freeze i64 %.us-phi.i                ; 9 uses
  %i.v = icmp eq i64 %.fr15.i, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not6.i.a = icmp eq i64 %.fr15.i, %.pre28.i
  %.not6.i = select i1 %i.v, i1 true, i1 %.not6.i.a
  br i1 %.not6.i, label %_ZSt8distanceIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS8_EE10iterator_tIKSt4pairIS8_S8_EEEENSt15iterator_traitsIT_E15difference_typeESI_SI_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %.fr15.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i
  %.08.i = phi i64 [ %i.ax, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %.us-phi57.i = phi i64 [ %.us-phi4.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i ], [ %.fr15.i, %.lr.ph.i ] ; 4 uses
  %.not.i.i6 = icmp ult i64 %.us-phi57.i, %.pre28.i
  br i1 %.not.i.i6, label %bb.b, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i

bb.b:                                             ; preds = %.lr.ph.split.i
  %i.y = add nuw i64 %.us-phi57.i, 1              ; 5 uses
  %i.z = icmp ult i64 %i.y, %.pre28.i
  br i1 %i.z, label %.lr.ph.i.i7, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i

.lr.ph.i.i7:                                      ; preds = %bb.b
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !183
  %.fr16.i = freeze i64 %i.aa                     ; 3 uses
  %i.ab = icmp eq i64 %.fr16.i, 0
  br i1 %i.ab, label %.lr.ph.i.split.us.i10, label %.lr.ph.i.split.i8

.lr.ph.i.split.us.i10:                            ; preds = %.lr.ph.i.i7
  %i.ac = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %i.y
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !183
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.us.i.preheader

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.us.i.preheader: ; preds = %.lr.ph.i.split.us.i10
  %i.ag = add i64 %.us-phi57.i, 2                 ; 2 uses
  %exitcond.not.i.us.i11148 = icmp eq i64 %i.ag, %.pre28.i
  br i1 %exitcond.not.i.us.i11148, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i.thread, label %.lr.ph149, !llvm.loop !49

.lr.ph149:                                        ; preds = %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.us.i.preheader
  br label %bb.c, !llvm.loop !49

bb.c:                                             ; preds = %.lr.ph149, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.us.i
  %i.ah = phi i64 [ %i.ag, %.lr.ph149 ], [ %i.am, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.us.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !183
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.us.i, !llvm.loop !49

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.us.i: ; preds = %bb.c
  %i.am = add i64 %i.ah, 1                        ; 2 uses
  %exitcond.not.i.us.i11 = icmp eq i64 %i.am, %.pre28.i
  br i1 %exitcond.not.i.us.i11, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i.thread, label %bb.c, !llvm.loop !49

.lr.ph.i.split.i8:                                ; preds = %.lr.ph.i.i7, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.i
  %i.an = phi i64 [ %i.av, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.i ], [ %i.y, %.lr.ph.i.i7 ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !183
  %i.ar = icmp eq i64 %i.aq, %.fr16.i
  br i1 %i.ar, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.i

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i.i: ; preds = %.lr.ph.i.split.i8
  %i.as = load ptr, ptr %i.w, align 8, !tbaa !196
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !196
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.at, ptr %i.as, i64 %.fr16.i)
  %i.au = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.au, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.i

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.i: ; preds = %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i.i, %.lr.ph.i.split.i8
  %i.av = add i64 %i.an, 1                        ; 2 uses
  %exitcond.not.i.i9 = icmp eq i64 %i.av, %.pre28.i
  br i1 %exitcond.not.i.i9, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i.thread, label %.lr.ph.i.split.i8, !llvm.loop !49

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i.thread: ; preds = %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.us.i.preheader, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.i, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.us.i
  %i.aw = add nuw nsw i64 %.08.i, 1
  br label %_ZSt8distanceIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS8_EE10iterator_tIKSt4pairIS8_S8_EEEENSt15iterator_traitsIT_E15difference_typeESI_SI_.exit

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i: ; preds = %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i.i, %bb.c, %.lr.ph.i.split.us.i10, %bb.b, %.lr.ph.split.i
  %.us-phi4.i = phi i64 [ %i.y, %bb.b ], [ %.us-phi57.i, %.lr.ph.split.i ], [ %i.y, %.lr.ph.i.split.us.i10 ], [ %i.ah, %bb.c ], [ %i.an, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i.i ] ; 2 uses
  %i.ax = add nuw nsw i64 %.08.i, 1               ; 2 uses
  %.not.i = icmp eq i64 %.us-phi4.i, %.pre28.i
  br i1 %.not.i, label %_ZSt8distanceIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS8_EE10iterator_tIKSt4pairIS8_S8_EEEENSt15iterator_traitsIT_E15difference_typeESI_SI_.exit, label %.lr.ph.split.i, !llvm.loop !1908

_ZSt8distanceIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS8_EE10iterator_tIKSt4pairIS8_S8_EEEENSt15iterator_traitsIT_E15difference_typeESI_SI_.exit: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i.thread, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit.thread, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit
  %.us-phi.sink.i56 = phi i64 [ %.fr15.i, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit ], [ %.fr15.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i.thread ], [ -1, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit.thread ], [ %.fr15.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i ] ; 2 uses
  %.us-phi.sink42.i55 = phi i64 [ %.pre28.i, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit ], [ %.fr15.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i.thread ], [ %.pre28.i, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit.thread ], [ %.fr15.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit ], [ %i.aw, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i.thread ], [ 0, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE11equal_rangeERKS7_.exit.thread ], [ %i.ax, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit.i ]
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.0.lcssa.i)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %_ZSt8distanceIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS8_EE10iterator_tIKSt4pairIS8_S8_EEEENSt15iterator_traitsIT_E15difference_typeESI_SI_.exit
  %.not75 = icmp eq i64 %.us-phi.sink42.i55, %.pre28.i
  br i1 %.not75, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not3.i = icmp ne i64 %.us-phi.sink.i56, -1
  %i.ba = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %.us-phi.sink.i56 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.us, %.preheader
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %.noexc.i.i, %_ZSt8distanceIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS8_EE10iterator_tIKSt4pairIS8_S8_EEEENSt15iterator_traitsIT_E15difference_typeESI_SI_.exit
  %lpad.loopexit.split-lp153 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %lpad.loopexit.split-lp153

bb.d:                                             ; preds = %.lr.ph, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit
  %.sroa.6.076 = phi i64 [ %.us-phi.sink42.i55, %.lr.ph ], [ %.sroa.6.2, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %.sroa.6.076 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 2 uses
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !455 ; 8 uses
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !464
  %.not.i13 = icmp eq ptr %i.be, %i.bf
  br i1 %.not.i13, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 3 uses
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !182
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !196 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !183 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.bj, ptr %i.a, align 8, !tbaa !197
  %i.bk = icmp ugt i64 %i.bj, 15
  br i1 %i.bk, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.e
  %i.bl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.bl, ptr %i.be, align 8, !tbaa !196
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !197
  store i64 %i.bm, ptr %i.bg, align 8, !tbaa !184
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.e
  %i.bn = phi ptr [ %i.bl, %.noexc ], [ %i.bg, %bb.e ] ; 2 uses
  switch i64 %i.bj, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.bo = load i8, ptr %i.bh, align 1, !tbaa !184
  store i8 %i.bo, ptr %i.bn, align 1, !tbaa !184
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr align 1 %i.bh, i64 %i.bj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !197 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !183
  %i.br = load ptr, ptr %i.be, align 8, !tbaa !196
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp
  store i8 0, ptr %i.bs, align 1, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.bt = load ptr, ptr %i.ay, align 8, !tbaa !455
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  store ptr %i.bu, ptr %i.ay, align 8, !tbaa !455
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.h:                                             ; preds = %bb.d
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.be, ptr noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.h
  %.not.i15 = icmp ult i64 %.sroa.6.076, %.pre28.i
  br i1 %.not.i15, label %bb.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.bv = add nuw i64 %.sroa.6.076, 1             ; 4 uses
  %i.bw = icmp ult i64 %i.bv, %.pre28.i
  %or.cond.i = select i1 %.not3.i, i1 %i.bw, i1 false
  br i1 %or.cond.i, label %.lr.ph.i16, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit

.lr.ph.i16:                                       ; preds = %bb.i
  %i.bx = load i64, ptr %i.bb, align 8, !tbaa !183
  %.fr77 = freeze i64 %i.bx                       ; 3 uses
  %i.by = icmp eq i64 %.fr77, 0
  br i1 %i.by, label %.lr.ph.i16.split.us, label %.lr.ph.i16.split

.lr.ph.i16.split.us:                              ; preds = %.lr.ph.i16, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.us
  %.sroa.6.1.us = phi i64 [ %i.cd, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.us ], [ %i.bv, %.lr.ph.i16 ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %.sroa.6.1.us
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !183
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.us

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i.us: ; preds = %.lr.ph.i16.split.us
  %i.cd = add i64 %.sroa.6.1.us, 1                ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.cd, %.pre28.i
  br i1 %exitcond.not.i.us, label %._crit_edge, label %.lr.ph.i16.split.us, !llvm.loop !49

.lr.ph.i16.split:                                 ; preds = %.lr.ph.i16, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i
  %.sroa.6.1 = phi i64 [ %i.cl, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i ], [ %i.bv, %.lr.ph.i16 ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %.sroa.6.1 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !183
  %i.ch = icmp eq i64 %i.cg, %.fr77
  br i1 %i.ch, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i: ; preds = %.lr.ph.i16.split
  %i.ci = load ptr, ptr %i.ba, align 8, !tbaa !196
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !196
  %bcmp.i.i.i.i.i17 = call i32 @bcmp(ptr %i.cj, ptr %i.ci, i64 %.fr77)
  %i.ck = icmp eq i32 %bcmp.i.i.i.i.i17, 0
  br i1 %i.ck, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.thread4.i: ; preds = %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i, %.lr.ph.i16.split
  %i.cl = add i64 %.sroa.6.1, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cl, %.pre28.i
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph.i16.split, !llvm.loop !49

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EEppEv.exit: ; preds = %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i, %.lr.ph.i16.split.us, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %bb.i
  %.sroa.6.2 = phi i64 [ %.sroa.6.076, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ], [ %i.bv, %bb.i ], [ %.sroa.6.1.us, %.lr.ph.i16.split.us ], [ %.sroa.6.1, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10iterator_tIKSt4pairIS7_S7_EE7matchesEm.exit.i ] ; 2 uses
  %.not = icmp eq i64 %.sroa.6.2, %.pre28.i
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK7httplib7Request21get_param_value_countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(776) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !403  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !403  ; 3 uses
  %.not12.i = icmp eq ptr %i.b, %i.d
  br i1 %.not12.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE5countERKS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !183
  %.fr2 = freeze i64 %i.f                         ; 3 uses
  %i.g = load ptr, ptr %1, align 8
  %i.h = icmp eq i64 %.fr2, 0
  br i1 %i.h, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %.lr.ph.i.split.us
  %.014.i.us = phi i64 [ %spec.select, %.lr.ph.i.split.us ], [ 0, %.lr.ph.i ]
  %.sroa.06.013.i.us = phi ptr [ %i.m, %.lr.ph.i.split.us ], [ %i.b, %.lr.ph.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i.us, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !183
  %i.k = icmp eq i64 %i.j, 0
  %i.l = zext i1 %i.k to i64
  %spec.select = add i64 %.014.i.us, %i.l         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i.us, i64 64 ; 2 uses
  %.not.i.us = icmp eq ptr %i.m, %i.d
  br i1 %.not.i.us, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE5countERKS7_.exit, label %.lr.ph.i.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread10.i
  %.014.i = phi i64 [ %i.t, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread10.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %.sroa.06.013.i = phi ptr [ %i.u, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread10.i ], [ %i.b, %.lr.ph.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !183
  %i.p = icmp eq i64 %i.o, %.fr2
  br i1 %i.p, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread10.i

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i: ; preds = %.lr.ph.i.split
  %i.q = load ptr, ptr %.sroa.06.013.i, align 8, !tbaa !196
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.q, ptr %i.g, i64 %.fr2)
  %bcmp.i.i.i.fr.i = freeze i32 %bcmp.i.i.i.i
  %i.r = icmp eq i32 %bcmp.i.i.i.fr.i, 0
  %i.s = zext i1 %i.r to i64
  %spec.select.i = add i64 %.014.i, %i.s
  br label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread10.i

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread10.i: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i, %.lr.ph.i.split
  %i.t = phi i64 [ %.014.i, %.lr.ph.i.split ], [ %spec.select.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i, i64 64 ; 2 uses
  %.not.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE5countERKS7_.exit, label %.lr.ph.i.split

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE5countERKS7_.exit: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread10.i, %.lr.ph.i.split.us, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %spec.select, %.lr.ph.i.split.us ], [ %i.t, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread10.i ]
  ret i64 %.0.lcssa.i
}

end_hunk_0
begin_hunk_1_@_ZN7httplib3tls16get_verify_errorEPKv
define noundef i64 @_ZN7httplib3tls16get_verify_errorEPKv(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @SSL_get_verify_result(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.a, %bb.b ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7httplib2ws9WebSocket10send_frameENS0_6OpcodeEPKcmb(ptr noundef nonnull align 8 dereferenceable(1000) %0, i8 noundef zeroext %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #48
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.d = load atomic i8, ptr %i.c seq_cst, align 8, !range !198, !noundef !199
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.f = load ptr, ptr %0, align 8, !tbaa !905, !nonnull !199, !align !261
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.h = load i8, ptr %i.g, align 8, !tbaa !782, !range !198, !noundef !199
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = xor i1 %i.i, true
  %i.k = invoke noundef zeroext i1 @_ZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbb(ptr noundef nonnull align 8 dereferenceable(12) %i.f, i8 noundef zeroext %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %i.j)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 0 uses
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %bb.c, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %.0 = phi i1 [ false, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ], [ %i.k, %bb.c ]
  %i.n = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 0 uses
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7httplib2ws9WebSocket4readERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 4 uses
  %i.f = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #23 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader, label %bb.b

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 812 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 29
  br label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.f) #48
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %.sroa.7.0 = phi i8 [ %.sroa.7.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ 1, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader ] ; 17 uses
  %.022 = phi i32 [ %.426, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ undef, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader ] ; 2 uses
  %i.u = load atomic i8, ptr %i.g seq_cst, align 8, !range !198, !noundef !199
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.be, label %bb.c

bb.c:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %i.h, ptr %2, align 8, !tbaa !182
  store i64 0, ptr %i.i, align 8, !tbaa !183
  store i8 0, ptr %i.h, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.w = load ptr, ptr %0, align 8, !tbaa !905, !nonnull !199, !align !261
  %i.x = load i8, ptr %i.j, align 8, !tbaa !782, !range !198, !noundef !199
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = invoke noundef zeroext i1 @_ZN7httplib2ws4impl20read_websocket_frameERNS_6StreamERNS0_6OpcodeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbbm(ptr noundef nonnull align 8 dereferenceable(12) %i.w, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.b, i1 noundef zeroext %i.y, i64 noundef 16777216)
          to label %bb.d unwind label %.loopexit99

bb.d:                                             ; preds = %bb.c
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store atomic i8 1, ptr %i.g seq_cst, align 8
  br label %_ZN7httplib2ws4impl13is_valid_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = load i8, ptr %i.a, align 1, !tbaa !305  ; 2 uses
  switch i8 %i.aa, label %bb.bb [
    i8 9, label %bb.g
    i8 10, label %bb.j
    i8 8, label %bb.k
    i8 1, label %bb.o
    i8 2, label %bb.o
  ]

bb.g:                                             ; preds = %bb.f
  %i.ab = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %.invoke314

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.g
  %i.ac = load ptr, ptr %0, align 8, !tbaa !905, !nonnull !199, !align !261
  %i.ad = load ptr, ptr %2, align 8, !tbaa !196
  %i.ae = load i64, ptr %i.i, align 8, !tbaa !183
  %i.af = load i8, ptr %i.j, align 8, !tbaa !782, !range !198, !noundef !199
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = xor i1 %i.ag, true
  %i.ai = invoke noundef zeroext i1 @_ZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbb(ptr noundef nonnull align 8 dereferenceable(12) %i.ac, i8 noundef zeroext 10, ptr noundef %i.ad, i64 noundef %i.ae, i1 noundef zeroext true, i1 noundef zeroext %i.ah)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.aj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #23 ; 0 uses
  br label %_ZN7httplib2ws4impl13is_valid_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.i:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #23 ; 0 uses
  br label %bb.bc

bb.j:                                             ; preds = %bb.f
  %i.am = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.p) #23 ; 2 uses
  %.not.i.i41 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i41, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit43, label %.invoke314

.invoke314:                                       ; preds = %bb.l, %bb.j, %bb.g
  %i.an = phi i32 [ %i.ab, %bb.g ], [ %i.am, %bb.j ], [ %i.ar, %bb.l ]
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.an) #48
          to label %.cont315 unwind label %.loopexit.split-lp100

.cont315:                                         ; preds = %.invoke314
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit43:        ; preds = %bb.j
  store i32 0, ptr %i.q, align 4, !tbaa !785
  %i.ao = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.p) #23 ; 0 uses
  br label %_ZN7httplib2ws4impl13is_valid_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.k:                                             ; preds = %bb.f
  %i.ap = atomicrmw xchg ptr %i.g, i8 1 seq_cst, align 1
  %i.aq = trunc i8 %i.ap to i1
  br i1 %i.aq, label %_ZN7httplib2ws4impl13is_valid_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #23 ; 2 uses
  %.not.i.i44 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i44, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit46, label %.invoke314

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit46:        ; preds = %bb.l
  %i.as = load ptr, ptr %0, align 8, !tbaa !905, !nonnull !199, !align !261
  %i.at = load ptr, ptr %2, align 8, !tbaa !196
  %i.au = load i64, ptr %i.i, align 8, !tbaa !183
  %i.av = load i8, ptr %i.j, align 8, !tbaa !782, !range !198, !noundef !199
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = xor i1 %i.aw, true
  %i.ay = invoke noundef zeroext i1 @_ZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbb(ptr noundef nonnull align 8 dereferenceable(12) %i.as, i8 noundef zeroext 8, ptr noundef %i.at, i64 noundef %i.au, i1 noundef zeroext true, i1 noundef zeroext %i.ax)
          to label %bb.m unwind label %bb.n       ; 0 uses

bb.m:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit46
  %i.az = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #23 ; 0 uses
  br label %_ZN7httplib2ws4impl13is_valid_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.n:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit46
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #23 ; 0 uses
  br label %bb.bc

bb.o:                                             ; preds = %bb.f, %bb.f
  %i.bc = icmp eq i8 %i.aa, 1
  %i.bd = load ptr, ptr %1, align 8, !tbaa !196   ; 6 uses
  %i.be = icmp eq ptr %i.bd, %i.k
  %i.bf = load ptr, ptr %2, align 8, !tbaa !196   ; 5 uses
  %i.bg = icmp eq ptr %i.bf, %i.h                 ; 2 uses
  br i1 %i.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.o
  br i1 %i.bg, label %bb.p, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.o
  br i1 %i.bg, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bh = load i64, ptr %i.i, align 8, !tbaa !183 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  switch i64 %i.bh, label %bb.r [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.bj = load i8, ptr %i.bf, align 1, !tbaa !184
  store i8 %i.bj, ptr %i.bd, align 1, !tbaa !184
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.bf, i64 %i.bh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.r, %bb.q, %bb.p
  %i.bk = load i64, ptr %i.i, align 8, !tbaa !183 ; 2 uses
  store i64 %i.bk, ptr %i.l, align 8, !tbaa !183
  %i.bl = load ptr, ptr %1, align 8, !tbaa !196
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store i8 0, ptr %i.bm, align 1, !tbaa !184
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !196
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bf, ptr %1, align 8, !tbaa !196
  %i.bn = load <2 x i64>, ptr %i.i, align 8, !tbaa !184
  store <2 x i64> %i.bn, ptr %i.l, align 8, !tbaa !184
  br label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bo = load i64, ptr %i.k, align 8, !tbaa !184
  store ptr %i.bf, ptr %1, align 8, !tbaa !196
  %i.bp = load <2 x i64>, ptr %i.i, align 8, !tbaa !184
  store <2 x i64> %i.bp, ptr %i.l, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bd, ptr %2, align 8, !tbaa !196
  store i64 %i.bo, ptr %i.h, align 8, !tbaa !184
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.h, ptr %2, align 8, !tbaa !196
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.s, %bb.t
  %i.bq = phi ptr [ %i.bd, %bb.s ], [ %i.h, %bb.t ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.i, align 8, !tbaa !183
  store i8 0, ptr %i.bq, align 1, !tbaa !184
  %i.br = load i8, ptr %i.b, align 1, !tbaa !303, !range !198, !noundef !199
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %.loopexit98, label %.preheader

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.m, ptr %3, align 8, !tbaa !182
  store i64 0, ptr %i.n, align 8, !tbaa !183
  store i8 0, ptr %i.m, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.bt = load ptr, ptr %0, align 8, !tbaa !905, !nonnull !199, !align !261
  %i.bu = load i8, ptr %i.j, align 8, !tbaa !782, !range !198, !noundef !199
  %i.bv = trunc nuw i8 %i.bu to i1
  %i.bw = invoke noundef zeroext i1 @_ZN7httplib2ws4impl20read_websocket_frameERNS_6StreamERNS0_6OpcodeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbbm(ptr noundef nonnull align 8 dereferenceable(12) %i.bt, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.d, i1 noundef zeroext %i.bv, i64 noundef 16777216)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.preheader
  br i1 %i.bw, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store atomic i8 1, ptr %i.g seq_cst, align 8
  br label %bb.ak

bb.w:                                             ; preds = %bb.u
  %i.bx = load i8, ptr %i.c, align 1, !tbaa !305
  switch i8 %i.bx, label %bb.ae [
    i8 9, label %bb.x
    i8 10, label %bb.z
    i8 8, label %bb.aa
    i8 0, label %bb.af
  ]

bb.x:                                             ; preds = %bb.w
  %i.by = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #23 ; 2 uses
  %.not.i.i47 = icmp eq i32 %i.by, 0
  br i1 %.not.i.i47, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit49, label %.invoke

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit49:        ; preds = %bb.x
  %i.bz = load ptr, ptr %0, align 8, !tbaa !905, !nonnull !199, !align !261
  %i.ca = load ptr, ptr %3, align 8, !tbaa !196
  %i.cb = load i64, ptr %i.n, align 8, !tbaa !183
  %i.cc = load i8, ptr %i.j, align 8, !tbaa !782, !range !198, !noundef !199
  %i.cd = trunc nuw i8 %i.cc to i1
  %i.ce = xor i1 %i.cd, true
  %i.cf = invoke noundef zeroext i1 @_ZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbb(ptr noundef nonnull align 8 dereferenceable(12) %i.bz, i8 noundef zeroext 10, ptr noundef %i.ca, i64 noundef %i.cb, i1 noundef zeroext true, i1 noundef zeroext %i.ce)
          to label %..si.unfold.false.jt5.sink.split unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit49
  %i.cg = landingpad { ptr, i32 }
          cleanup
  %i.ch = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #23 ; 0 uses
  br label %bb.al

bb.z:                                             ; preds = %bb.w
  %i.ci = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.p) #23 ; 2 uses
  %.not.i.i50 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i50, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit52, label %.invoke

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit52:        ; preds = %bb.z
  store i32 0, ptr %i.q, align 4, !tbaa !785
  br label %..si.unfold.false.jt5.sink.split

bb.aa:                                            ; preds = %bb.w
  %i.cj = atomicrmw xchg ptr %i.g, i8 1 seq_cst, align 1
  %i.ck = trunc i8 %i.cj to i1
  br i1 %i.ck, label %bb.ak, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cl = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #23 ; 2 uses
  %.not.i.i53 = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i53, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit55, label %.invoke

.invoke:                                          ; preds = %bb.ab, %bb.z, %bb.x
  %i.cm = phi i32 [ %i.ci, %bb.z ], [ %i.by, %bb.x ], [ %i.cl, %bb.ab ]
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.cm) #48
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit55:        ; preds = %bb.ab
  %i.cn = load ptr, ptr %0, align 8, !tbaa !905, !nonnull !199, !align !261
  %i.co = load ptr, ptr %3, align 8, !tbaa !196
  %i.cp = load i64, ptr %i.n, align 8, !tbaa !183
  %i.cq = load i8, ptr %i.j, align 8, !tbaa !782, !range !198, !noundef !199
  %i.cr = trunc nuw i8 %i.cq to i1
  %i.cs = xor i1 %i.cr, true
  %i.ct = invoke noundef zeroext i1 @_ZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbb(ptr noundef nonnull align 8 dereferenceable(12) %i.cn, i8 noundef zeroext 8, ptr noundef %i.co, i64 noundef %i.cp, i1 noundef zeroext true, i1 noundef zeroext %i.cs)
          to label %bb.ac unwind label %bb.ad     ; 0 uses

bb.ac:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit55
  %i.cu = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #23 ; 0 uses
  br label %bb.ak

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.ag, %.invoke
  %lpad.loopexit.split-lp317 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ad:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit55
  %i.cv = landingpad { ptr, i32 }
          cleanup
  %i.cw = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #23 ; 0 uses
  br label %bb.al

bb.ae:                                            ; preds = %bb.w
  store atomic i8 1, ptr %i.g seq_cst, align 8
  br label %bb.ak

bb.af:                                            ; preds = %bb.w
  %i.cx = load i64, ptr %i.n, align 8, !tbaa !183 ; 2 uses
  %i.cy = load i64, ptr %i.l, align 8, !tbaa !183
  %i.cz = sub i64 4611686018427387903, %i.cy
  %i.da = icmp ult i64 %i.cz, %i.cx
  br i1 %i.da, label %bb.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.358) #48
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc56:                                         ; preds = %bb.ag
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.af
  %i.db = load ptr, ptr %3, align 8, !tbaa !196
  %i.dc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.db, i64 noundef %i.cx)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.dd = load i64, ptr %i.l, align 8, !tbaa !183
  %i.de = icmp ugt i64 %i.dd, 16777216
  br i1 %i.de, label %bb.ah, label %bb.ai

end_hunk_1
begin_hunk_2_@_ZN7httplib2ws9WebSocket4readERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %.preheader, !llvm.loop !2582

bb.al:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.ad, %bb.y
  %.pn30.pn = phi { ptr, i32 } [ %i.cv, %bb.ad ], [ %i.cg, %bb.y ], [ %lpad.loopexit.split-lp317, %.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.du = load ptr, ptr %3, align 8, !tbaa !196   ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.m
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.al
  %i.dw = load i64, ptr %i.m, align 8, !tbaa !184
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.bc

.loopexit98:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  br i1 %i.bc, label %bb.am, label %_ZN7httplib2ws4impl13is_valid_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.am:                                            ; preds = %.loopexit98
  %i.dy = load i64, ptr %i.l, align 8, !tbaa !183 ; 3 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_ZN7httplib2ws4impl13is_valid_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.am
  %i.ea = load ptr, ptr %1, align 8, !tbaa !196
  br label %bb.an

bb.an:                                            ; preds = %bb.ax, %.lr.ph.i
  %.05276.i = phi i64 [ 0, %.lr.ph.i ], [ %.153.i, %bb.ax ] ; 3 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 %.05276.i ; 4 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !184 ; 2 uses
  %i.ed = zext i8 %i.ec to i32                    ; 4 uses
  %i.ee = icmp sgt i8 %i.ec, -1
  br i1 %i.ee, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ef = add nuw i64 %.05276.i, 1
  br label %bb.ax, !llvm.loop !10

bb.ap:                                            ; preds = %bb.an
  %i.eg = and i32 %i.ed, 224
  %i.eh = icmp eq i32 %i.eg, 192                  ; 3 uses
  br i1 %i.eh, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ei = and i32 %i.ed, 240
  %i.ej = icmp eq i32 %i.ei, 224
  br i1 %i.ej, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ek = and i32 %i.ed, 248
  %i.el = icmp eq i32 %i.ek, 240
  br i1 %i.el, label %bb.as, label %.loopexit

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %.sink.i = phi i32 [ 31, %bb.ap ], [ 15, %bb.aq ], [ 7, %bb.ar ]
  %i.em = phi i1 [ false, %bb.ap ], [ true, %bb.aq ], [ false, %bb.ar ] ; 2 uses
  %i.en = phi i1 [ false, %bb.ap ], [ false, %bb.aq ], [ true, %bb.ar ]
  %.051.i = phi i64 [ 2, %bb.ap ], [ 3, %bb.aq ], [ 4, %bb.ar ]
  %i.eo = add i64 %.051.i, %.05276.i              ; 2 uses
  %i.ep = icmp ugt i64 %i.eo, %i.dy
  br i1 %i.ep, label %.loopexit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.as
  %i.eq = and i32 %.sink.i, %i.ed                 ; 2 uses
  %i.er = getelementptr i8, ptr %i.eb, i64 1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !184
  %i.et = zext i8 %i.es to i32                    ; 2 uses
  %i.eu = and i32 %i.et, 192
  %.not.i61 = icmp eq i32 %i.eu, 128
  br i1 %.not.i61, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %.preheader.i.preheader
  %i.ev = shl nuw nsw i32 %i.eq, 6                ; 2 uses
  %i.ew = and i32 %i.et, 63
  %i.ex = or disjoint i32 %i.ew, %i.ev            ; 2 uses
  br i1 %i.eh, label %bb.aw, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.at
  %i.ey = getelementptr i8, ptr %i.eb, i64 2
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !184
  %i.fa = zext i8 %i.ez to i32                    ; 2 uses
  %i.fb = and i32 %i.fa, 192
  %.not.i61.1 = icmp eq i32 %i.fb, 128
  br i1 %.not.i61.1, label %bb.au, label %.loopexit

bb.au:                                            ; preds = %.preheader.i.1
  %i.fc = shl nuw nsw i32 %i.ex, 6                ; 2 uses
  %i.fd = and i32 %i.fa, 63
  %i.fe = or disjoint i32 %i.fd, %i.fc            ; 2 uses
  br i1 %i.em, label %bb.aw, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %bb.au
  %i.ff = getelementptr i8, ptr %i.eb, i64 3
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !184
  %.not.i61.2 = icmp slt i8 %i.fg, -64
  br i1 %.not.i61.2, label %bb.av, label %.loopexit

bb.av:                                            ; preds = %.preheader.i.2
  %i.fh = shl nuw nsw i32 %i.fe, 6
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %.lcssa = phi i32 [ %i.ev, %bb.at ], [ %i.fc, %bb.au ], [ %i.fh, %bb.av ] ; 4 uses
  %.14974.i.lcssa319 = phi i32 [ %i.eq, %bb.at ], [ %i.ex, %bb.au ], [ %i.fe, %bb.av ]
  %i.fi = icmp samesign ult i32 %.lcssa, 128
  %or.cond.i = select i1 %i.eh, i1 %i.fi, i1 false
  %i.fj = icmp samesign ult i32 %.lcssa, 2048
  %or.cond4.i = select i1 %i.em, i1 %i.fj, i1 false
  %or.cond62.i = select i1 %or.cond.i, i1 true, i1 %or.cond4.i
  %i.fk = icmp samesign ult i32 %.lcssa, 65536
  %or.cond6.i = select i1 %i.en, i1 %i.fk, i1 false
  %or.cond63.i = select i1 %or.cond62.i, i1 true, i1 %or.cond6.i
  %i.fl = and i32 %.14974.i.lcssa319, 67108832
  %or.cond8.i = icmp eq i32 %i.fl, 864
  %i.fm = icmp samesign ugt i32 %.lcssa, 1114111
  %i.fn = or i1 %or.cond8.i, %i.fm
  %or.cond70.i = select i1 %or.cond63.i, i1 true, i1 %i.fn
  br i1 %or.cond70.i, label %.loopexit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.ao
  %.153.i = phi i64 [ %i.ef, %bb.ao ], [ %i.eo, %bb.aw ] ; 2 uses
  %.not83.i = icmp ult i64 %.153.i, %i.dy
  br i1 %.not83.i, label %bb.an, label %_ZN7httplib2ws4impl13is_valid_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

.loopexit:                                        ; preds = %bb.ar, %bb.as, %bb.aw, %.preheader.i.preheader, %.preheader.i.1, %.preheader.i.2
  %i.fo = trunc nuw i8 %.sroa.7.0 to i1
  br i1 %i.fo, label %._crit_edge.i.i, label %bb.ay

bb.ay:                                            ; preds = %.loopexit
  invoke void @_ZSt20__throw_system_errori(i32 noundef 1) #48
          to label %.noexc63 unwind label %.loopexit.split-lp100

.noexc63:                                         ; preds = %bb.ay
  unreachable

._crit_edge.i.i:                                  ; preds = %.loopexit
  %i.fp = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %i.r, ptr %4, align 8, !tbaa !182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.r, ptr noundef nonnull align 1 dereferenceable(13) @.str.340, i64 13, i1 false)
  store i64 13, ptr %i.s, align 8, !tbaa !183
  store i8 0, ptr %i.t, align 1, !tbaa !184
  invoke void @_ZN7httplib2ws9WebSocket5closeENS0_11CloseStatusERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1000) %0, i16 noundef zeroext 1007, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %._crit_edge.i.i
  %i.fq = load ptr, ptr %4, align 8, !tbaa !196   ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.r
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.az
  %i.fs = load i64, ptr %i.r, align 8, !tbaa !184
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZN7httplib2ws4impl13is_valid_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

.loopexit99:                                      ; preds = %bb.c
  %lpad.loopexit101 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit.split-lp100:                            ; preds = %.invoke314, %bb.ay
  %.sroa.7.0223 = phi i8 [ 0, %bb.ay ], [ %.sroa.7.0, %.invoke314 ]
  %lpad.loopexit.split-lp102 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ba:                                            ; preds = %._crit_edge.i.i
  %i.fu = landingpad { ptr, i32 }
          cleanup
  %i.fv = load ptr, ptr %4, align 8, !tbaa !196   ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.r
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.ba
  %i.fx = load i64, ptr %i.r, align 8, !tbaa !184
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.bc

bb.bb:                                            ; preds = %bb.f
  store atomic i8 1, ptr %i.g seq_cst, align 8
  br label %_ZN7httplib2ws4impl13is_valid_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN7httplib2ws4impl13is_valid_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt1, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %.loopexit98, %bb.k, %bb.m, %bb.bb, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit43, %bb.h, %bb.e
  %.sroa.7.1 = phi i8 [ %.sroa.7.0, %bb.bb ], [ %.sroa.7.0, %bb.h ], [ %.sroa.7.0, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit43 ], [ %.sroa.7.0, %bb.k ], [ %.sroa.7.0, %bb.m ], [ %.sroa.7.0, %bb.e ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %.sroa.7.0, %.loopexit98 ], [ %.sroa.7.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt1 ], [ %.sroa.7.0, %bb.am ], [ %.sroa.7.0, %bb.ax ] ; 2 uses
  %.426 = phi i32 [ 0, %bb.bb ], [ %.022, %bb.h ], [ %.022, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit43 ], [ 0, %bb.k ], [ 0, %bb.m ], [ 0, %bb.e ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ 2, %.loopexit98 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt1 ], [ 1, %bb.am ], [ 1, %bb.ax ] ; 2 uses
  %.2 = phi i1 [ false, %bb.bb ], [ true, %bb.h ], [ true, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit43 ], [ false, %bb.k ], [ false, %bb.m ], [ false, %bb.e ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ false, %.loopexit98 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt1 ], [ false, %bb.am ], [ false, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.fz = load ptr, ptr %2, align 8, !tbaa !196   ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.h
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZN7httplib2ws4impl13is_valid_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.gb = load i64, ptr %i.h, align 8, !tbaa !184
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZN7httplib2ws4impl13is_valid_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br i1 %.2, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.be

bb.bc:                                            ; preds = %.loopexit99, %.loopexit.split-lp100, %bb.n, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %.sroa.7.2 = phi i8 [ %.sroa.7.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ], [ %.sroa.7.0, %bb.n ], [ %.sroa.7.0, %bb.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %.sroa.7.0, %.loopexit99 ], [ %.sroa.7.0223, %.loopexit.split-lp100 ]
  %.pn38.pn = phi { ptr, i32 } [ %.pn30.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ], [ %i.ba, %bb.n ], [ %i.ak, %bb.i ], [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %lpad.loopexit101, %.loopexit99 ], [ %lpad.loopexit.split-lp102, %.loopexit.split-lp100 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.gd = load ptr, ptr %2, align 8, !tbaa !196   ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.h
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.bc
  %i.gf = load i64, ptr %i.h, align 8, !tbaa !184
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.gh = trunc nuw i8 %.sroa.7.2 to i1
  br i1 %i.gh, label %bb.bd, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.gi = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #23 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %bb.bd
  resume { ptr, i32 } %.pn38.pn

bb.be:                                            ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %.sroa.7.3 = phi i8 [ %.sroa.7.0, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ], [ %.sroa.7.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ]
  %.527 = phi i32 [ 0, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ], [ %.426, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ]
  %i.gj = trunc nuw i8 %.sroa.7.3 to i1
  br i1 %i.gj, label %bb.bf, label %_ZNSt11unique_lockISt5mutexED2Ev.exit79

bb.bf:                                            ; preds = %bb.be
  %i.gk = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #23 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit79

_ZNSt11unique_lockISt5mutexED2Ev.exit79:          ; preds = %bb.be, %bb.bf
  ret i32 %.527
}

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib2ws9WebSocket5closeENS0_11CloseStatusERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1000) %0, i16 noundef zeroext %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.e = atomicrmw xchg ptr %i.d, i8 1 seq_cst, align 1
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 952
  tail call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.g) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !182
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.j = lshr i16 %1, 8
  %i.k = trunc nuw i16 %i.j to i8
  store i8 %i.k, ptr %i.h, align 8, !tbaa !184
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.m = trunc i16 %1 to i8
  %.pre58 = load ptr, ptr %2, align 8, !tbaa !196, !noalias !2586 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !183, !noalias !2586 ; 2 uses
  store i8 %i.m, ptr %i.l, align 1, !tbaa !184
  store i64 2, ptr %i.i, align 8, !tbaa !183
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 0, ptr %i.n, align 2, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !2586)
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !182, !alias.scope !2586
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.pre, i64 123) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !2586
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !197, !noalias !2586
  %i.p = icmp ugt i64 %.pre, 15
  br i1 %i.p, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.b
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc24 unwind label %bb.i   ; 2 uses

.noexc24:                                         ; preds = %.noexc10.i.i
  store ptr %i.q, ptr %4, align 8, !tbaa !196, !alias.scope !2586
  %i.r = load i64, ptr %i.a, align 8, !tbaa !197, !noalias !2586
  store i64 %i.r, ptr %i.o, align 8, !tbaa !184, !alias.scope !2586
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc24, %bb.b
  %i.s = phi ptr [ %i.q, %.noexc24 ], [ %i.o, %bb.b ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.t = load i8, ptr %.pre58, align 1, !tbaa !184
  store i8 %i.t, ptr %i.s, align 1, !tbaa !184
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %.pre58, i64 %spec.select.i.i.i, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.u = load i64, ptr %i.a, align 8, !tbaa !197, !noalias !2586 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.u, ptr %i.v, align 8, !tbaa !183, !alias.scope !2586
  %i.w = load ptr, ptr %4, align 8, !tbaa !196, !alias.scope !2586
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !2586
  %i.y = load i64, ptr %i.v, align 8, !tbaa !183  ; 2 uses
  %i.z = load i64, ptr %i.i, align 8, !tbaa !183
  %i.aa = sub i64 4611686018427387903, %i.z
  %i.ab = icmp ult i64 %i.aa, %i.y
  br i1 %i.ab, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.358) #48
          to label %.noexc25 unwind label %bb.j

.noexc25:                                         ; preds = %bb.f
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.e
  %i.ac = load ptr, ptr %4, align 8, !tbaa !196
  %i.ad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.ac, i64 noundef %i.y)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.j ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ae = load ptr, ptr %4, align 8, !tbaa !196   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.o
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ag = load i64, ptr %i.o, align 8, !tbaa !184
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 3 uses
  %i.aj = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ai) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.aj) #48
          to label %.noexc29 unwind label %bb.k

.noexc29:                                         ; preds = %bb.g
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = load ptr, ptr %0, align 8, !tbaa !905, !nonnull !199, !align !261
  %i.al = load ptr, ptr %3, align 8, !tbaa !196
  %i.am = load i64, ptr %i.i, align 8, !tbaa !183
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !782, !range !198, !noundef !199
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = xor i1 %i.ap, true
  %i.ar = invoke noundef zeroext i1 @_ZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbb(ptr noundef nonnull align 8 dereferenceable(12) %i.ak, i8 noundef zeroext 8, ptr noundef %i.al, i64 noundef %i.am, i1 noundef zeroext true, i1 noundef zeroext %i.aq)
          to label %bb.h unwind label %bb.l       ; 0 uses

bb.h:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.as = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ai) #23 ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 3 uses
  %i.au = call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %i.at) #23
  %.not.i.i30 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i30, label %bb.m, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.i:                                             ; preds = %.noexc10.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
end_hunk_2
