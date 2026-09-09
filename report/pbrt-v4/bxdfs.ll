Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/bxdfs?download=true
inline.NumInlined: 4082
inline.NumDeleted: 875
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 81
begin_hunk_0_@_ZN4pbrt12MeasuredBxDF16BRDFDataFromFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEE:bb.a
  %i.o = sub i64 %i.j, %i.g
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.o, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.p = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.p, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.p, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !173 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4pbrt16MeasuredBxDFDataEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.e, !llvm.loop !8

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4pbrt16MeasuredBxDFDataEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.q = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN4pbrt12MeasuredBxDF16BRDFDataFromFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEEE10loadedDataB5cxx11, i64 8)
  br i1 %i.q, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4pbrt16MeasuredBxDFDataEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.g) ; 2 uses
  %i.t = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.t, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !40
  %i.w = tail call i32 @memcmp(ptr noundef %i.h, ptr noundef %i.v, i64 noundef %.sroa.speculated.i.i.i.i.i) #31 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.f
  %i.x = sub i64 %i.g, %i.s
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.x, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.w, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.y = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.y, label %select.unfold, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4pbrt16MeasuredBxDFDataESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit

select.unfold:                                    ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %bb.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4pbrt16MeasuredBxDFDataEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.z = tail call noundef ptr @_ZN4pbrt16MeasuredBxDFData6CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1)
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4pbrt16MeasuredBxDFDataESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN4pbrt12MeasuredBxDF16BRDFDataFromFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEEE10loadedDataB5cxx11, ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !551
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4pbrt16MeasuredBxDFDataESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4pbrt16MeasuredBxDFDataESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %select.unfold
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4pbrt16MeasuredBxDFDataESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN4pbrt12MeasuredBxDF16BRDFDataFromFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEEE10loadedDataB5cxx11, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !551
  ret ptr %i.ac
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4pbrt16MeasuredBxDFDataESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4pbrt16MeasuredBxDFDataEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4pbrt16MeasuredBxDFDataEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #34
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4pbrt16MeasuredBxDFDataEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4pbrt16MeasuredBxDFDataESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.81", align 8     ; 4 uses
  %3 = alloca %"class.std::tuple.84", align 1     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !39   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #31 ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !173 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4pbrt16MeasuredBxDFDataESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit, label %bb.b, !llvm.loop !8

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4pbrt16MeasuredBxDFDataESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4pbrt16MeasuredBxDFDataESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !39   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #31 ; 2 uses
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

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4pbrt16MeasuredBxDFDataESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4pbrt16MeasuredBxDFDataESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr %1, ptr %2, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4pbrt16MeasuredBxDFDataEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt12MeasuredBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, <2 x float> %1, float %2, <2 x float> %3, float %4, i32 noundef %5) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = fmul float %2, %4
  %i.b = fcmp ogt float %i.a, 0.000000e+00
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp olt float %2, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = fneg <2 x float> %1
  %i.e = fneg float %2
  %i.f = fneg <2 x float> %3
  %i.g = fneg float %4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.7.0 = phi float [ %i.g, %bb.c ], [ %4, %bb.b ] ; 2 uses
  %.sroa.0119.0 = phi <2 x float> [ %i.f, %bb.c ], [ %3, %bb.b ]
  %.sroa.0126.0 = phi <2 x float> [ %i.d, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %.sroa.8.0 = phi float [ %i.e, %bb.c ], [ %2, %bb.b ] ; 4 uses
  %i.h = fadd float %.sroa.7.0, %.sroa.8.0        ; 3 uses
  %i.i = fadd <2 x float> %.sroa.0119.0, %.sroa.0126.0 ; 4 uses
  %i.j = fmul <2 x float> %i.i, %i.i              ; 2 uses
  %shift = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.j, %shift
  %i.k = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.l = fmul float %i.h, %i.h
  %i.m = fadd float %i.l, %i.k                    ; 2 uses
  %i.n = fcmp oeq float %i.m, 0.000000e+00
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.0126.0, i64 1
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.0126.0, i64 0
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.m) ; 3 uses
  %6 = extractelement <2 x float> %i.i, i64 0
  %7 = fdiv float %6, %sqrt.i.i
  %8 = extractelement <2 x float> %i.i, i64 1
  %9 = fdiv float %8, %sqrt.i.i
  %i.o = fdiv float %i.h, %sqrt.i.i               ; 3 uses
  %i.p = fcmp olt float %.sroa.8.0, -1.000000e+00
  %i.q = fcmp ogt float %.sroa.8.0, 1.000000e+00
  %..i.i.i = select i1 %i.q, float 1.000000e+00, float %.sroa.8.0
  %.0.i.i.i = select i1 %i.p, float -1.000000e+00, float %..i.i.i
  %i.r = tail call noundef float @acosf(float noundef %.0.i.i.i) #31 ; 6 uses
  %i.s = tail call noundef float @atan2f(float noundef %.sroa.03.4.vec.extract.i, float noundef %.sroa.03.0.vec.extract.i) #31 ; 7 uses
  %i.t = fcmp olt float %i.o, -1.000000e+00
  %i.u = fcmp ogt float %i.o, 1.000000e+00
  %..i.i.i89 = select i1 %i.u, float 1.000000e+00, float %i.o
  %.0.i.i.i90 = select i1 %i.t, float -1.000000e+00, float %..i.i.i89
  %i.v = tail call noundef float @acosf(float noundef %.0.i.i.i90) #31
  %i.w = tail call noundef float @atan2f(float noundef %9, float noundef %7) #31 ; 2 uses
  %i.x = fmul float %i.r, f0x3F22F983
  %i.y = tail call noundef float @sqrtf(float noundef %i.x) #31
  %i.z = fmul float %i.v, f0x3F22F983
  %i.aa = tail call noundef float @sqrtf(float noundef %i.z) #31 ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !179   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 680
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !148, !range !56, !noundef !57
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = fsub float %i.w, %i.s
  %i.ag = select i1 %i.ae, float %i.af, float %i.w
  %i.ah = fmul float %i.ag, f0x3E22F983
  %i.ai = fadd float %i.ah, 5.000000e-01          ; 2 uses
  %.sroa.0109.0.vec.insert = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.aj = tail call noundef float @llvm.floor.f32(float %i.ai)
  %i.ak = fsub float %i.ai, %i.aj                 ; 2 uses
  %.sroa.0109.4.vec.insert116 = insertelement <2 x float> %.sroa.0109.0.vec.insert, float %i.ak, i64 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 360
  %i.am = tail call { <2 x float>, float } @_ZNK4pbrt17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(168) %i.al, <2 x float> %.sroa.0109.4.vec.insert116, float noundef %i.s, float noundef %i.r)
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.am, 0 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %0, align 8, !tbaa !179
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load float, ptr %i.an, align 8, !tbaa !20
  %i.ar = tail call noundef float @_ZNK4pbrt17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %i.ap, <2 x float> %.fca.0.extract, float noundef %i.s, float noundef %i.r, float noundef %i.aq) ; 2 uses
  %10 = fcmp ogt float %i.ar, 0.000000e+00
  %.sroa.speculated = select i1 %10, float %i.ar, float 0.000000e+00
  %i.as = load ptr, ptr %0, align 8, !tbaa !179
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.av = load float, ptr %i.au, align 4, !tbaa !20
  %i.aw = tail call noundef float @_ZNK4pbrt17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %i.at, <2 x float> %.fca.0.extract, float noundef %i.s, float noundef %i.r, float noundef %i.av) ; 2 uses
  %11 = fcmp ogt float %i.aw, 0.000000e+00
  %.sroa.speculated.1 = select i1 %11, float %i.aw, float 0.000000e+00
  %i.ax = load ptr, ptr %0, align 8, !tbaa !179
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load float, ptr %i.az, align 8, !tbaa !20
  %i.bb = tail call noundef float @_ZNK4pbrt17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %i.ay, <2 x float> %.fca.0.extract, float noundef %i.s, float noundef %i.r, float noundef %i.ba) ; 2 uses
  %12 = fcmp ogt float %i.bb, 0.000000e+00
  %.sroa.speculated.2 = select i1 %12, float %i.bb, float 0.000000e+00
  %i.bc = load ptr, ptr %0, align 8, !tbaa !179
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bf = load float, ptr %i.be, align 4, !tbaa !20
  %i.bg = tail call noundef float @_ZNK4pbrt17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %i.bd, <2 x float> %.fca.0.extract, float noundef %i.s, float noundef %i.r, float noundef %i.bf) ; 2 uses
  %13 = fcmp ogt float %i.bg, 0.000000e+00
  %.sroa.speculated.3 = select i1 %13, float %i.bg, float 0.000000e+00
  %i.bh = fmul float %i.s, f0x3E22F983
  %i.bi = fadd float %i.bh, 5.000000e-01
  %i.bj = load ptr, ptr %0, align 8, !tbaa !179   ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 208 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 224
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 272
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !150 ; 2 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.bl, align 8 ; 3 uses
  %shift151 = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop152 = fmul <2 x float> %.sroa.0.0.copyload.i, %shift151
  %14 = extractelement <2 x float> %foldExtExtBinop152, i64 0
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 528 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 544 ; 2 uses
  %i.bq = load <2 x i32>, ptr %i.bk, align 8, !tbaa !98
  %i.br = load i32, ptr %i.bk, align 8, !tbaa !158 ; 2 uses
  %i.bs = load <2 x float>, ptr %i.bp, align 8, !tbaa !20
  %i.bt = insertelement <4 x float> poison, float %i.aa, i64 0
  %i.bu = insertelement <4 x float> %i.bt, float %i.ak, i64 1
  %i.bv = insertelement <4 x float> %i.bu, float %i.y, i64 2
  %i.bw = insertelement <4 x float> %i.bv, float %i.bi, i64 3
  %i.bx = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> %i.bs, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.by = fmul <4 x float> %i.bw, %i.bx           ; 4 uses
  %i.bz = fptosi <4 x float> %i.by to <4 x i32>
  %i.ca = load <2 x i32>, ptr %i.bo, align 8, !tbaa !98
  %i.cb = load i32, ptr %i.bo, align 8, !tbaa !158 ; 2 uses
  %i.cc = shufflevector <2 x i32> %i.bq, <2 x i32> %i.ca, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cd = add nsw <4 x i32> %i.cc, splat (i32 -2)
  %i.ce = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.cd, <4 x i32> %i.bz) ; 5 uses
  %i.cf = sitofp <4 x i32> %i.ce to <4 x float>   ; 3 uses
  %foldExtExtBinop154 = fsub <4 x float> %i.by, %i.cf ; 2 uses
  %i.cg = extractelement <4 x float> %foldExtExtBinop154, i64 1
  %i.ch = fsub float 1.000000e+00, %i.cg
  %i.ci = extractelement <4 x i32> %i.ce, i64 1
  %i.cj = mul nsw i32 %i.ci, %i.br
  %i.ck = extractelement <4 x i32> %i.ce, i64 0
  %i.cl = add nsw i32 %i.cj, %i.ck
  %i.cm = zext i32 %i.cl to i64                   ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.cm
  %i.co = sext i32 %i.br to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.co
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cm
  %foldExtExtBinop156 = fsub <4 x float> %i.by, %i.cf ; 2 uses
  %i.cr = extractelement <4 x float> %foldExtExtBinop156, i64 3
  %i.cs = fsub float 1.000000e+00, %i.cr
  %i.ct = extractelement <4 x i32> %i.ce, i64 3
  %i.cu = mul nsw i32 %i.ct, %i.cb
  %i.cv = extractelement <4 x i32> %i.ce, i64 2
  %i.cw = add nsw i32 %i.cu, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bj, i64 592
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !150 ; 2 uses
  %i.cz = zext i32 %i.cw to i64                   ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.cz
  %i.db = sext i32 %i.cb to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.db
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.cz
  %i.de = load <2 x float>, ptr %i.cn, align 4, !tbaa !20 ; 2 uses
  %i.df = load <2 x float>, ptr %i.cq, align 4, !tbaa !20 ; 2 uses
  %i.dg = shufflevector <4 x float> %i.by, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.dh = shufflevector <4 x float> %i.cf, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.di = fsub <2 x float> %i.dg, %i.dh           ; 2 uses
  %i.dj = fsub <2 x float> splat (float 1.000000e+00), %i.di
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dl = load <2 x float>, ptr %i.da, align 4, !tbaa !20
  %i.dm = load <2 x float>, ptr %i.dd, align 4, !tbaa !20
  %i.dn = shufflevector <2 x float> %i.di, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.do = shufflevector <2 x float> %i.de, <2 x float> %i.df, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.dp = shufflevector <2 x float> %i.dl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dq = shufflevector <4 x float> %i.do, <4 x float> %i.dp, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.dr = shufflevector <2 x float> %i.dm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ds = shufflevector <4 x float> %i.dq, <4 x float> %i.dr, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.dt = fmul <4 x float> %i.dn, %i.ds
  %i.du = shufflevector <2 x float> %i.de, <2 x float> %i.df, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> %i.dp, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.dw = shufflevector <4 x float> %i.dv, <4 x float> %i.dr, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.dx = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.dk, <4 x float> %i.dw, <4 x float> %i.dt) ; 4 uses
  %foldExtExtBinop158 = fmul <4 x float> %foldExtExtBinop154, %i.dx
  %i.dy = extractelement <4 x float> %foldExtExtBinop158, i64 1
  %i.dz = extractelement <4 x float> %i.dx, i64 0
  %i.ea = tail call noundef float @llvm.fma.f32(float %i.ch, float %i.dz, float %i.dy)
  %i.eb = fmul float %14, %i.ea                   ; 4 uses
  %15 = fmul float %.sroa.speculated, %i.eb
  %16 = fmul float %.sroa.speculated.1, %i.eb
  %17 = fmul float %.sroa.speculated.2, %i.eb
  %18 = fmul float %.sroa.speculated.3, %i.eb
  %foldExtExtBinop160 = fmul <4 x float> %foldExtExtBinop156, %i.dx
  %19 = extractelement <4 x float> %foldExtExtBinop160, i64 3
  %20 = extractelement <4 x float> %i.dx, i64 2
  %21 = tail call noundef float @llvm.fma.f32(float %i.cs, float %20, float %19)
  %.sroa.0.0.copyload.i100 = load <2 x float>, ptr %i.bp, align 8 ; 2 uses
  %shift162 = shufflevector <2 x float> %.sroa.0.0.copyload.i100, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop163 = fmul <2 x float> %.sroa.0.0.copyload.i100, %shift162
  %i.ec = extractelement <2 x float> %foldExtExtBinop163, i64 0
  %i.ed = fmul float %i.ec, %21
  %i.ee = fmul float %i.ed, 4.000000e+00
  %22 = fmul float %.sroa.7.0, %i.ee              ; 4 uses
  %23 = fdiv float %15, %22
  %.sroa.0.0.vec.insert.i104 = insertelement <2 x float> poison, float %23, i64 0
  %24 = fdiv float %16, %22
  %.sroa.0.4.vec.insert.i106 = insertelement <2 x float> %.sroa.0.0.vec.insert.i104, float %24, i64 1
  %25 = fdiv float %17, %22
  %.sroa.8.8.vec.insert.i = insertelement <2 x float> poison, float %25, i64 0
  %26 = fdiv float %18, %22
  %.sroa.8.12.vec.insert.i = insertelement <2 x float> %.sroa.8.8.vec.insert.i, float %26, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e
  %.sroa.0134.0 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0.4.vec.insert.i106, %bb.e ], [ zeroinitializer, %bb.d ]
  %.sroa.6.0 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.8.12.vec.insert.i, %bb.e ], [ zeroinitializer, %bb.d ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0134.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.6.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZNK4pbrt17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(168) %0, <2 x float> %1, float noundef %2, float noundef %3) local_unnamed_addr #1 comdat align 2 {
_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !98   ; 3 uses
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit
  %i.f = zext i32 %i.d to i64
  %i.g = add nsw i64 %i.f, -2                     ; 2 uses
  %i.h = icmp ugt i32 %i.d, 2
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !157
  %i.i = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !150  ; 2 uses
  br i1 %i.h, label %.lr.ph.i91, label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit

.lr.ph.i91:                                       ; preds = %bb.a, %.lr.ph.i91
  %.017.i = phi i64 [ %.fr.i, %.lr.ph.i91 ], [ 1, %bb.a ] ; 2 uses
  %.01516.i = phi i64 [ %i.t, %.lr.ph.i91 ], [ %i.g, %bb.a ] ; 2 uses
  %i.k = lshr i64 %.01516.i, 1                    ; 3 uses
  %i.l = add i64 %i.k, %.017.i                    ; 2 uses
  %i.m = and i64 %i.l, 4294967295
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.m
  %i.o = load float, ptr %i.n, align 4, !tbaa !20
  %i.p = fcmp ole float %i.o, %2                  ; 2 uses
  %i.q = add i64 %i.l, 1
  %i.r = select i1 %i.p, i64 %i.q, i64 %.017.i
  %.fr.i = freeze i64 %i.r                        ; 3 uses
  %.neg.i = xor i64 %i.k, -1
  %i.s = add nsw i64 %.01516.i, %.neg.i
  %i.t = select i1 %i.p, i64 %i.s, i64 %i.k       ; 2 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %.lr.ph.i91, label %._crit_edge.i, !llvm.loop !552

._crit_edge.i:                                    ; preds = %.lr.ph.i91
  %i.v = add nsw i64 %.fr.i, -1
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.g)
  %.inv.i = icmp sgt i64 %.fr.i, 0
  %spec.select.i = select i1 %.inv.i, i64 %..i.i, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit

_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit: ; preds = %bb.a, %._crit_edge.i
  %i.w = phi i64 [ %spec.select.i, %._crit_edge.i ], [ 0, %bb.a ] ; 2 uses
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.w ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !20 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !20
  %i.ac = fsub float %2, %i.z
  %i.ad = fsub float %i.ab, %i.z
  %i.ae = fdiv float %i.ac, %i.ad                 ; 3 uses
  %i.af = fcmp olt float %i.ae, 0.000000e+00
  %i.ag = fcmp ogt float %i.ae, 1.000000e+00
  %..i = select i1 %i.ag, float 1.000000e+00, float %i.ae
  %.0.i = select i1 %i.af, float 0.000000e+00, float %..i ; 2 uses
  %i.ah = fsub float 1.000000e+00, %.0.i
  %i.ai = load i32, ptr %i.c, align 8, !tbaa !98
  %i.aj = mul i32 %i.ai, %i.x
  br label %bb.b

bb.b:                                             ; preds = %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit
  %.sroa.5.0 = phi float [ %.0.i, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit ], [ 0.000000e+00, %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit ] ; 18 uses
  %.sroa.0.0 = phi float [ %i.ah, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit ], [ 1.000000e+00, %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit ] ; 18 uses
  %.1 = phi i32 [ %i.aj, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit ], [ 0, %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !98 ; 3 uses
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = zext i32 %i.al to i64
  %i.ao = add nsw i64 %i.an, -2                   ; 2 uses
  %i.ap = icmp ugt i32 %i.al, 2
  %.pre160 = load ptr, ptr %i.b, align 8, !tbaa !157
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre160, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !150 ; 2 uses
  br i1 %i.ap, label %.lr.ph.i91.1, label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1

.lr.ph.i91.1:                                     ; preds = %bb.c, %.lr.ph.i91.1
  %.017.i.1 = phi i64 [ %.fr.i.1, %.lr.ph.i91.1 ], [ 1, %bb.c ] ; 2 uses
  %.01516.i.1 = phi i64 [ %i.bb, %.lr.ph.i91.1 ], [ %i.ao, %bb.c ] ; 2 uses
  %i.as = lshr i64 %.01516.i.1, 1                 ; 3 uses
  %i.at = add i64 %i.as, %.017.i.1                ; 2 uses
  %i.au = and i64 %i.at, 4294967295
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !20
  %i.ax = fcmp ole float %i.aw, %3                ; 2 uses
  %i.ay = add i64 %i.at, 1
  %i.az = select i1 %i.ax, i64 %i.ay, i64 %.017.i.1
  %.fr.i.1 = freeze i64 %i.az                     ; 3 uses
  %.neg.i.1 = xor i64 %i.as, -1
  %i.ba = add nsw i64 %.01516.i.1, %.neg.i.1
  %i.bb = select i1 %i.ax, i64 %i.ba, i64 %i.as   ; 2 uses
  %i.bc = icmp sgt i64 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.i91.1, label %._crit_edge.i.1, !llvm.loop !552

._crit_edge.i.1:                                  ; preds = %.lr.ph.i91.1
  %i.bd = add nsw i64 %.fr.i.1, -1
  %..i.i.1 = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 %i.ao)
  %.inv.i.1 = icmp sgt i64 %.fr.i.1, 0
  %spec.select.i.1 = select i1 %.inv.i.1, i64 %..i.i.1, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1

_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1: ; preds = %bb.c, %._crit_edge.i.1
  %i.be = phi i64 [ %spec.select.i.1, %._crit_edge.i.1 ], [ 0, %bb.c ] ; 2 uses
  %i.bf = trunc nuw i64 %i.be to i32
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.be ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !20 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !20
  %i.bk = fsub float %3, %i.bh
  %i.bl = fsub float %i.bj, %i.bh
  %i.bm = fdiv float %i.bk, %i.bl                 ; 3 uses
  %i.bn = fcmp olt float %i.bm, 0.000000e+00
  %i.bo = fcmp ogt float %i.bm, 1.000000e+00
  %..i.1 = select i1 %i.bo, float 1.000000e+00, float %i.bm
  %.0.i.1 = select i1 %i.bn, float 0.000000e+00, float %..i.1 ; 2 uses
  %i.bp = fsub float 1.000000e+00, %.0.i.1
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !98 ; 2 uses
  %i.bs = mul i32 %i.br, %i.bf
  %i.bt = add i32 %i.bs, %.1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %.phi.trans.insert164 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.pre165 = load i32, ptr %.phi.trans.insert164, align 4, !tbaa !98
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1
  %i.bu = phi i32 [ %.pre165, %bb.d ], [ %i.br, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1 ] ; 2 uses
  %.sroa.12.0 = phi float [ 0.000000e+00, %bb.d ], [ %.0.i.1, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1 ] ; 9 uses
  %.sroa.9.0 = phi float [ 1.000000e+00, %bb.d ], [ %i.bp, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1 ] ; 9 uses
  %.1.1 = phi i32 [ %.1, %bb.d ], [ %i.bt, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bw = load <2 x float>, ptr %i.bv, align 8, !tbaa !20
  %i.bx = fmul <2 x float> %1, %i.bw              ; 3 uses
  %i.by = fptosi <2 x float> %i.bx to <2 x i32>
  %i.bz = load <2 x i32>, ptr %0, align 8, !tbaa !98 ; 3 uses
  %i.ca = add nsw <2 x i32> %i.bz, splat (i32 -2)
  %i.cb = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.ca, <2 x i32> %i.by) ; 3 uses
  %i.cc = sitofp <2 x i32> %i.cb to <2 x float>   ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.bx, %i.cc
  %i.cd = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %foldExtExtBinop168 = fsub <2 x float> %i.bx, %i.cc
  %i.ce = extractelement <2 x float> %foldExtExtBinop168, i64 1 ; 7 uses
  %i.cf = extractelement <2 x i32> %i.cb, i64 1   ; 3 uses
  %i.cg = extractelement <2 x i32> %i.bz, i64 0
  %i.ch = mul nsw i32 %i.cf, %i.cg
  %i.ci = extractelement <2 x i32> %i.cb, i64 0
  %i.cj = add nsw i32 %i.ch, %i.ci
  %.sroa.023.0.copyload = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.0.0.extract.trunc.i82 = trunc i64 %.sroa.023.0.copyload to i32 ; 4 uses
  %.sroa.2.0.extract.shift.i83 = lshr i64 %.sroa.023.0.copyload, 32
  %.sroa.2.0.extract.trunc.i84 = trunc nuw i64 %.sroa.2.0.extract.shift.i83 to i32
  %i.ck = mul nsw i32 %.sroa.2.0.extract.trunc.i84, %.sroa.0.0.extract.trunc.i82 ; 3 uses
  %i.cl = mul i32 %i.ck, %.1.1                    ; 2 uses
  %i.cm = add i32 %i.cj, %i.cl                    ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !150 ; 6 uses
  %i.cp = mul i32 %i.ck, %i.bu                    ; 3 uses
  %i.cq = add i32 %i.cm, %i.cp                    ; 2 uses
  %i.cr = load i32, ptr %i.c, align 8, !tbaa !98  ; 2 uses
  %i.cs = mul i32 %i.cr, %i.ck                    ; 6 uses
  %i.ct = add i32 %i.cs, %i.cm
  %i.cu = zext i32 %i.cm to i64                   ; 6 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cu
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !20
  %i.cx = zext i32 %i.ct to i64                   ; 6 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cx
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !20
  %i.da = fmul float %.sroa.5.0, %i.cz
  %i.db = tail call noundef float @llvm.fma.f32(float %i.cw, float %.sroa.0.0, float %i.da)
  %i.dc = add i32 %i.cs, %i.cq
  %i.dd = zext i32 %i.cq to i64                   ; 6 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.dd
  %i.df = load float, ptr %i.de, align 4, !tbaa !20
  %i.dg = zext i32 %i.dc to i64                   ; 6 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.dg
  %i.di = load float, ptr %i.dh, align 4, !tbaa !20
  %i.dj = fmul float %.sroa.5.0, %i.di
  %i.dk = tail call noundef float @llvm.fma.f32(float %i.df, float %.sroa.0.0, float %i.dj)
  %i.dl = fmul float %.sroa.12.0, %i.dk
  %i.dm = tail call noundef float @llvm.fma.f32(float %i.db, float %.sroa.9.0, float %i.dl)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 4 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.cu
  %i.dp = load float, ptr %i.do, align 4, !tbaa !20
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.cx
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !20
  %i.ds = fmul float %.sroa.5.0, %i.dr
  %i.dt = tail call noundef float @llvm.fma.f32(float %i.dp, float %.sroa.0.0, float %i.ds)
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.dd
end_hunk_0
begin_hunk_1_@_ZNK4pbrt17PiecewiseLinear2DILm2EE6SampleIJffEEENS_8PLSampleENS_6Point2IfEEDpT_:_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit
  %i.nz = fmul float %i.nq, %i.nq
  %i.oa = fmul float %i.lf, 2.000000e+00
  %i.ob = fmul float %i.oa, %i.nt
  %i.oc = fsub float %i.nz, %i.ob                 ; 2 uses
  %i.od = fcmp ogt float %i.oc, 0.000000e+00
  %.sroa.speculated.i87 = select i1 %i.od, float %i.oc, float 0.000000e+00
  %sqrt.i88 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i87)
  %i.oe = fsub float %i.nq, %sqrt.i88
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.63 = phi float [ %i.nv, %bb.j ], [ %i.nt, %bb.k ]
  %i.of = phi float [ %i.ny, %bb.j ], [ %i.oe, %bb.k ]
  %i.og = fdiv float %i.of, %.63                  ; 3 uses
  %i.oh = insertelement <2 x i32> poison, i32 %i.jq, i64 0
  %i.oi = insertelement <2 x i32> %i.oh, i32 %i.ar, i64 1
  %i.oj = uitofp <2 x i32> %i.oi to <2 x float>
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ol = insertelement <2 x float> poison, float %i.og, i64 0
  %i.om = insertelement <2 x float> %i.ol, float %i.hh, i64 1
  %i.on = fadd <2 x float> %i.om, %i.oj
  %i.oo = load <2 x float>, ptr %i.ok, align 8, !tbaa !20
  %i.op = fmul <2 x float> %i.oo, %i.on
  %i.oq = fsub float 1.000000e+00, %i.og
  %i.or = fmul float %i.nq, %i.oq
  %i.os = fmul float %i.ns, %i.og
  %i.ot = fadd float %i.os, %i.or
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.ou, align 8 ; 2 uses
  %shift = shufflevector <2 x float> %.sroa.01.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %.sroa.01.0.copyload, %shift
  %i.ov = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ow = fmul float %i.ot, %i.ov
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.op, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.ow, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZNK4pbrt12MeasuredBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, <2 x float> %1, float %2, <2 x float> %3, float %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 align 2 {
bb.a:
  %.not = trunc i32 %6 to i1
  %i.a = fmul float %2, %4
  %i.b = fcmp ogt float %i.a, 0.000000e+00
  %or.cond = select i1 %.not, i1 %i.b, i1 false
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp olt float %2, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = fneg <2 x float> %1
  %i.e = fneg float %2
  %i.f = fneg <2 x float> %3
  %i.g = fneg float %4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0106.0 = phi <2 x float> [ %i.f, %bb.c ], [ %3, %bb.b ]
  %.sroa.7.0 = phi float [ %i.g, %bb.c ], [ %4, %bb.b ]
  %.sroa.0113.0 = phi <2 x float> [ %i.d, %bb.c ], [ %1, %bb.b ] ; 4 uses
  %.sroa.10.0 = phi float [ %i.e, %bb.c ], [ %2, %bb.b ] ; 5 uses
  %i.h = fadd <2 x float> %.sroa.0106.0, %.sroa.0113.0 ; 3 uses
  %i.i = fadd float %.sroa.7.0, %.sroa.10.0       ; 3 uses
  %i.j = fmul <2 x float> %i.h, %i.h              ; 2 uses
  %shift = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.j, %shift
  %i.k = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.l = fmul float %i.i, %i.i
  %i.m = fadd float %i.l, %i.k                    ; 2 uses
  %i.n = fcmp oeq float %i.m, 0.000000e+00
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.0113.0, i64 1
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.0113.0, i64 0
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.m) ; 2 uses
  %i.o = fdiv float %i.i, %sqrt.i.i               ; 4 uses
  %i.p = fcmp olt float %.sroa.10.0, -1.000000e+00
  %i.q = fcmp ogt float %.sroa.10.0, 1.000000e+00
  %..i.i.i = select i1 %i.q, float 1.000000e+00, float %.sroa.10.0
  %.0.i.i.i = select i1 %i.p, float -1.000000e+00, float %..i.i.i
  %i.r = tail call noundef float @acosf(float noundef %.0.i.i.i) #31 ; 2 uses
  %i.s = tail call noundef float @atan2f(float noundef %.sroa.03.4.vec.extract.i, float noundef %.sroa.03.0.vec.extract.i) #31 ; 3 uses
  %i.t = fcmp olt float %i.o, -1.000000e+00
  %i.u = fcmp ogt float %i.o, 1.000000e+00
  %..i.i.i97 = select i1 %i.u, float 1.000000e+00, float %i.o
  %.0.i.i.i98 = select i1 %i.t, float -1.000000e+00, float %..i.i.i97
  %i.v = tail call noundef float @acosf(float noundef %.0.i.i.i98) #31
  %i.w = fmul float %i.v, f0x3F22F983
  %i.x = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fdiv <2 x float> %i.h, %i.y              ; 5 uses
  %i.aa = extractelement <2 x float> %i.z, i64 0
  %i.ab = extractelement <2 x float> %i.z, i64 1  ; 3 uses
  %i.ac = tail call noundef float @atan2f(float noundef %i.ab, float noundef %i.aa) #31 ; 2 uses
  %i.ad = tail call noundef float @sqrtf(float noundef %i.w) #31 ; 2 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !179   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 680
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !148, !range !56, !noundef !57
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = fsub float %i.ac, %i.s
  %i.aj = select i1 %i.ah, float %i.ai, float %i.ac
  %i.ak = fmul float %i.aj, f0x3E22F983
  %i.al = fadd float %i.ak, 5.000000e-01          ; 2 uses
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.am = tail call noundef float @llvm.floor.f32(float %i.al)
  %i.an = fsub float %i.al, %i.am
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.an, i64 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 360
  %i.ap = tail call { <2 x float>, float } @_ZNK4pbrt17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(168) %i.ao, <2 x float> %.sroa.0.4.vec.insert, float noundef %i.s, float noundef %i.r) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.ap, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.ap, 1
  %i.aq = load ptr, ptr %0, align 8, !tbaa !179
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 688
  %i.as = tail call noundef float @_ZNK4pbrt17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(168) %i.ar, <2 x float> %.fca.0.extract, float noundef %i.s, float noundef %i.r)
  %foldExtExtBinop127 = fmul <2 x float> %i.z, %i.z
  %i.at = extractelement <2 x float> %foldExtExtBinop127, i64 0
  %i.au = fmul float %i.ab, %i.ab
  %i.av = fadd float %i.at, %i.au
  %sqrt = tail call float @llvm.sqrt.f32(float %i.av)
  %i.aw = fmul <2 x float> %.sroa.0113.0, %i.z    ; 2 uses
  %shift129 = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop130 = fadd <2 x float> %i.aw, %shift129
  %i.ax = extractelement <2 x float> %foldExtExtBinop130, i64 0
  %i.ay = fmul float %.sroa.10.0, %i.o
  %i.az = fadd float %i.ay, %i.ax
  %i.ba = fmul float %i.az, 4.000000e+00
  %i.bb = fmul float %i.ad, f0x419DE9E7
  %i.bc = fmul float %sqrt, %i.bb                 ; 2 uses
  %i.bd = fcmp olt float %i.bc, f0x358637BD
  %.sroa.speculated = select i1 %i.bd, float f0x358637BD, float %i.bc
  %i.be = fmul float %i.ba, %.sroa.speculated
  %i.bf = fmul float %.fca.1.extract, %i.as
  %i.bg = fdiv float %i.bf, %i.be
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %.1 = phi float [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.a ], [ %i.bg, %bb.e ]
  ret float %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZNK4pbrt17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(168) %0, <2 x float> %1, float noundef %2, float noundef %3) local_unnamed_addr #1 comdat align 2 {
_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !98   ; 3 uses
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit
  %i.f = zext i32 %i.d to i64
  %i.g = add nsw i64 %i.f, -2                     ; 2 uses
  %i.h = icmp ugt i32 %i.d, 2
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !157
  %i.i = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !150  ; 2 uses
  br i1 %i.h, label %.lr.ph.i65, label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit

.lr.ph.i65:                                       ; preds = %bb.a, %.lr.ph.i65
  %.017.i = phi i64 [ %.fr.i, %.lr.ph.i65 ], [ 1, %bb.a ] ; 2 uses
  %.01516.i = phi i64 [ %i.t, %.lr.ph.i65 ], [ %i.g, %bb.a ] ; 2 uses
  %i.k = lshr i64 %.01516.i, 1                    ; 3 uses
  %i.l = add i64 %i.k, %.017.i                    ; 2 uses
  %i.m = and i64 %i.l, 4294967295
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.m
  %i.o = load float, ptr %i.n, align 4, !tbaa !20
  %i.p = fcmp ole float %i.o, %2                  ; 2 uses
  %i.q = add i64 %i.l, 1
  %i.r = select i1 %i.p, i64 %i.q, i64 %.017.i
  %.fr.i = freeze i64 %i.r                        ; 3 uses
  %.neg.i = xor i64 %i.k, -1
  %i.s = add nsw i64 %.01516.i, %.neg.i
  %i.t = select i1 %i.p, i64 %i.s, i64 %i.k       ; 2 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %.lr.ph.i65, label %._crit_edge.i, !llvm.loop !557

._crit_edge.i:                                    ; preds = %.lr.ph.i65
  %i.v = add nsw i64 %.fr.i, -1
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.g)
  %.inv.i = icmp sgt i64 %.fr.i, 0
  %spec.select.i = select i1 %.inv.i, i64 %..i.i, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit

_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit: ; preds = %bb.a, %._crit_edge.i
  %i.w = phi i64 [ %spec.select.i, %._crit_edge.i ], [ 0, %bb.a ] ; 2 uses
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.w ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !20 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !20
  %i.ac = fsub float %2, %i.z
  %i.ad = fsub float %i.ab, %i.z
  %i.ae = fdiv float %i.ac, %i.ad                 ; 3 uses
  %i.af = fcmp olt float %i.ae, 0.000000e+00
  %i.ag = fcmp ogt float %i.ae, 1.000000e+00
  %..i = select i1 %i.ag, float 1.000000e+00, float %i.ae
  %.0.i = select i1 %i.af, float 0.000000e+00, float %..i ; 3 uses
  %i.ah = fsub float 1.000000e+00, %.0.i          ; 2 uses
  %i.ai = load i32, ptr %i.c, align 8, !tbaa !98
  %i.aj = mul i32 %i.ai, %i.x
  %4 = insertelement <2 x float> poison, float %i.ah, i64 0
  %5 = insertelement <2 x float> %4, float %.0.i, i64 1
  br label %bb.b

bb.b:                                             ; preds = %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit
  %.sroa.5.0 = phi float [ %.0.i, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit ], [ 0.000000e+00, %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit ] ; 4 uses
  %.sroa.0.0 = phi float [ %i.ah, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit ], [ 1.000000e+00, %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit ] ; 4 uses
  %.1 = phi i32 [ %i.aj, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit ], [ 0, %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit ] ; 2 uses
  %6 = phi <2 x float> [ %5, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit ], [ <float 1.000000e+00, float 0.000000e+00>, %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !98 ; 3 uses
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = zext i32 %i.al to i64
  %i.ao = add nsw i64 %i.an, -2                   ; 2 uses
  %i.ap = icmp ugt i32 %i.al, 2
  %.pre92 = load ptr, ptr %i.b, align 8, !tbaa !157
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre92, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !150 ; 2 uses
  br i1 %i.ap, label %.lr.ph.i65.1, label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1

.lr.ph.i65.1:                                     ; preds = %bb.c, %.lr.ph.i65.1
  %.017.i.1 = phi i64 [ %.fr.i.1, %.lr.ph.i65.1 ], [ 1, %bb.c ] ; 2 uses
  %.01516.i.1 = phi i64 [ %i.bb, %.lr.ph.i65.1 ], [ %i.ao, %bb.c ] ; 2 uses
  %i.as = lshr i64 %.01516.i.1, 1                 ; 3 uses
  %i.at = add i64 %i.as, %.017.i.1                ; 2 uses
  %i.au = and i64 %i.at, 4294967295
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !20
  %i.ax = fcmp ole float %i.aw, %3                ; 2 uses
  %i.ay = add i64 %i.at, 1
  %i.az = select i1 %i.ax, i64 %i.ay, i64 %.017.i.1
  %.fr.i.1 = freeze i64 %i.az                     ; 3 uses
  %.neg.i.1 = xor i64 %i.as, -1
  %i.ba = add nsw i64 %.01516.i.1, %.neg.i.1
  %i.bb = select i1 %i.ax, i64 %i.ba, i64 %i.as   ; 2 uses
  %i.bc = icmp sgt i64 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.i65.1, label %._crit_edge.i.1, !llvm.loop !557

._crit_edge.i.1:                                  ; preds = %.lr.ph.i65.1
  %i.bd = add nsw i64 %.fr.i.1, -1
  %..i.i.1 = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 %i.ao)
  %.inv.i.1 = icmp sgt i64 %.fr.i.1, 0
  %spec.select.i.1 = select i1 %.inv.i.1, i64 %..i.i.1, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1

_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1: ; preds = %bb.c, %._crit_edge.i.1
  %i.be = phi i64 [ %spec.select.i.1, %._crit_edge.i.1 ], [ 0, %bb.c ] ; 2 uses
  %i.bf = trunc nuw i64 %i.be to i32
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.be ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !20 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !20
  %i.bk = fsub float %3, %i.bh
  %i.bl = fsub float %i.bj, %i.bh
  %i.bm = fdiv float %i.bk, %i.bl                 ; 3 uses
  %i.bn = fcmp olt float %i.bm, 0.000000e+00
  %i.bo = fcmp ogt float %i.bm, 1.000000e+00
  %..i.1 = select i1 %i.bo, float 1.000000e+00, float %i.bm
  %.0.i.1 = select i1 %i.bn, float 0.000000e+00, float %..i.1 ; 2 uses
  %i.bp = fsub float 1.000000e+00, %.0.i.1
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !98 ; 2 uses
  %i.bs = mul i32 %i.br, %i.bf
  %i.bt = add i32 %i.bs, %.1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %.phi.trans.insert96 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.pre97 = load i32, ptr %.phi.trans.insert96, align 4, !tbaa !98
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1
  %i.bu = phi i32 [ %.pre97, %bb.d ], [ %i.br, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1 ]
  %.sroa.12.0 = phi float [ 0.000000e+00, %bb.d ], [ %.0.i.1, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1 ] ; 4 uses
  %.sroa.9.0 = phi float [ 1.000000e+00, %bb.d ], [ %i.bp, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1 ] ; 4 uses
  %.1.1 = phi i32 [ %.1, %bb.d ], [ %i.bt, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bw = load <2 x float>, ptr %i.bv, align 8, !tbaa !20
  %i.bx = fmul <2 x float> %1, %i.bw              ; 3 uses
  %i.by = fptosi <2 x float> %i.bx to <2 x i32>
  %i.bz = load <2 x i32>, ptr %0, align 8, !tbaa !98
  %i.ca = load i32, ptr %0, align 8, !tbaa !158
  %i.cb = add nsw <2 x i32> %i.bz, splat (i32 -2)
  %i.cc = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.cb, <2 x i32> %i.by) ; 3 uses
  %i.cd = sitofp <2 x i32> %i.cc to <2 x float>   ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.bx, %i.cd
  %i.ce = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %foldExtExtBinop100 = fsub <2 x float> %i.bx, %i.cd
  %i.cf = extractelement <2 x float> %foldExtExtBinop100, i64 1 ; 2 uses
  %i.cg = fsub float 1.000000e+00, %i.ce          ; 2 uses
  %i.ch = fsub float 1.000000e+00, %i.cf
  %i.ci = extractelement <2 x i32> %i.cc, i64 1
  %i.cj = mul nsw i32 %i.ci, %i.ca
  %i.ck = extractelement <2 x i32> %i.cc, i64 0
  %i.cl = add nsw i32 %i.cj, %i.ck
  %.sroa.04.0.copyload = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.0.0.extract.trunc.i60 = trunc i64 %.sroa.04.0.copyload to i32
  %.sroa.2.0.extract.shift.i61 = lshr i64 %.sroa.04.0.copyload, 32
  %.sroa.2.0.extract.trunc.i62 = trunc nuw i64 %.sroa.2.0.extract.shift.i61 to i32
  %i.cm = mul nsw i32 %.sroa.2.0.extract.trunc.i62, %.sroa.0.0.extract.trunc.i60 ; 3 uses
  %i.cn = mul i32 %i.cm, %.1.1
  %i.co = add i32 %i.cl, %i.cn                    ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !150 ; 5 uses
  %i.cr = mul i32 %i.cm, %i.bu
  %i.cs = add i32 %i.co, %i.cr                    ; 2 uses
  %i.ct = load i32, ptr %i.c, align 8, !tbaa !98
  %i.cu = mul i32 %i.ct, %i.cm                    ; 2 uses
  %i.cv = add i32 %i.cu, %i.co
  %i.cw = zext i32 %i.co to i64                   ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cw
  %i.cy = zext i32 %i.cv to i64                   ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cy
  %i.da = add i32 %i.cu, %i.cs
  %i.db = zext i32 %i.cs to i64                   ; 3 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.db
  %i.dd = zext i32 %i.da to i64                   ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dd
  %i.df = load <2 x float>, ptr %i.cx, align 4, !tbaa !20
  %i.dg = load <2 x float>, ptr %i.cz, align 4, !tbaa !20
  %i.dh = load <2 x float>, ptr %i.dc, align 4, !tbaa !20
  %i.di = load <2 x float>, ptr %i.de, align 4, !tbaa !20
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dj = shufflevector <2 x float> %i.dg, <2 x float> %i.di, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dk = fmul <4 x float> %7, %i.dj
  %i.dl = shufflevector <2 x float> %i.df, <2 x float> %i.dh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dm = shufflevector <2 x float> %6, <2 x float> poison, <4 x i32> zeroinitializer
  %i.dn = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.dl, <4 x float> %i.dm, <4 x float> %i.dk) ; 4 uses
  %i.do = extractelement <4 x float> %i.dn, i64 2
  %i.dp = fmul float %.sroa.12.0, %i.do
  %i.dq = extractelement <4 x float> %i.dn, i64 0
  %i.dr = tail call noundef float @llvm.fma.f32(float %i.dq, float %.sroa.9.0, float %i.dp)
  %i.ds = extractelement <4 x float> %i.dn, i64 3
  %i.dt = fmul float %.sroa.12.0, %i.ds
  %i.du = extractelement <4 x float> %i.dn, i64 1
  %i.dv = tail call noundef float @llvm.fma.f32(float %i.du, float %.sroa.9.0, float %i.dt)
  %sext = shl i64 %.sroa.04.0.copyload, 32
  %i.dw = ashr exact i64 %sext, 30
  %i.dx = getelementptr inbounds i8, ptr %i.cq, i64 %i.dw ; 5 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.cw
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !20
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.cy
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !20
  %i.ec = fmul float %.sroa.5.0, %i.eb
  %i.ed = tail call noundef float @llvm.fma.f32(float %i.dz, float %.sroa.0.0, float %i.ec)
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.db
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !20
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.dd
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !20
  %i.ei = fmul float %.sroa.5.0, %i.eh
  %i.ej = tail call noundef float @llvm.fma.f32(float %i.ef, float %.sroa.0.0, float %i.ei)
  %i.ek = fmul float %.sroa.12.0, %i.ej
  %i.el = tail call noundef float @llvm.fma.f32(float %i.ed, float %.sroa.9.0, float %i.ek)
  %i.em = getelementptr inbounds nuw i8, ptr %i.dx, i64 4 ; 4 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.cw
  %i.eo = load float, ptr %i.en, align 4, !tbaa !20
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.cy
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !20
  %i.er = fmul float %.sroa.5.0, %i.eq
  %i.es = tail call noundef float @llvm.fma.f32(float %i.eo, float %.sroa.0.0, float %i.er)
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.db
  %i.eu = load float, ptr %i.et, align 4, !tbaa !20
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.dd
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !20
  %i.ex = fmul float %.sroa.5.0, %i.ew
  %i.ey = tail call noundef float @llvm.fma.f32(float %i.eu, float %.sroa.0.0, float %i.ex)
  %i.ez = fmul float %.sroa.12.0, %i.ey
  %i.fa = tail call noundef float @llvm.fma.f32(float %i.es, float %.sroa.9.0, float %i.ez)
  %i.fb = fmul float %i.ce, %i.dv
  %i.fc = tail call noundef float @llvm.fma.f32(float %i.cg, float %i.dr, float %i.fb)
  %i.fd = fmul float %i.ce, %i.fa
  %i.fe = tail call noundef float @llvm.fma.f32(float %i.cg, float %i.el, float %i.fd)
  %i.ff = fmul float %i.cf, %i.fe
  %i.fg = tail call noundef float @llvm.fma.f32(float %i.ch, float %i.fc, float %i.ff)
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.bv, align 8 ; 2 uses
  %shift = shufflevector <2 x float> %.sroa.0.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop102 = fmul <2 x float> %.sroa.0.0.copyload, %shift
  %i.fh = extractelement <2 x float> %foldExtExtBinop102, i64 0
  %i.fi = fmul float %i.fh, %i.fg
  ret float %i.fi
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt12MeasuredBxDF8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !179
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !36, !alias.scope !560
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !39, !alias.scope !560
  store i8 0, ptr %i.b, align 8, !tbaa !21, !alias.scope !560
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_16MeasuredBxDFDataEJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.76, ptr noundef nonnull align 8 dereferenceable(888) %i.a)
          to label %_ZN4pbrt12StringPrintfIJRKNS_16MeasuredBxDFDataEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %0, align 8, !tbaa !40, !alias.scope !560 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.b, align 8, !tbaa !21, !alias.scope !560
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.d

_ZN4pbrt12StringPrintfIJRKNS_16MeasuredBxDFDataEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt21NormalizedFresnelBxDF8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !36, !alias.scope !563
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !39, !alias.scope !563
  store i8 0, ptr %i.a, align 8, !tbaa !21, !alias.scope !563
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKfJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.77, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %0, align 8, !tbaa !40, !alias.scope !563 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !21, !alias.scope !563
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.c

_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, <2 x float> %1, float %2, ptr nofree readonly captures(none) %3, i64 %4, ptr nofree readonly captures(none) %5, i64 %6) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.pbrt::Vector3", align 8     ; 5 uses
  %8 = alloca %"class.pbrt::Point2", align 8      ; 4 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %9 = alloca %class.anon.78, align 8             ; 8 uses
  %10 = alloca %"class.pstd::optional", align 8   ; 8 uses
  %i.d = fcmp oeq float %2, 0.000000e+00
  br i1 %i.d, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 28
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %.sroa.10.0.lcssa = phi <2 x float> [ zeroinitializer, %.preheader ], [ %.sroa.10.1, %bb.d ]
  %.sroa.047.0.lcssa = phi <2 x float> [ zeroinitializer, %.preheader ], [ %.sroa.047.1, %bb.d ]
  %i.k = uitofp i64 %4 to float
  %i.l = insertelement <2 x float> poison, float %i.k, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.n = fdiv <2 x float> %.sroa.047.0.lcssa, %i.m
  %i.o = fdiv <2 x float> %.sroa.10.0.lcssa, %i.m
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.071 = phi i64 [ 0, %.lr.ph ], [ %i.an, %bb.d ] ; 3 uses
  %.sroa.047.070 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.047.1, %bb.d ] ; 3 uses
  %.sroa.10.069 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.10.1, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.071
  %i.q = load float, ptr %i.p, align 4, !tbaa !20
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.071
  %.sroa.05.0.copyload = load <2 x float>, ptr %i.r, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store <2 x float> %1, ptr %7, align 8, !noalias !569
  store float %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !569
  store <2 x float> %.sroa.05.0.copyload, ptr %8, align 8, !noalias !569
  store float %i.q, ptr %i.a, align 4, !tbaa !20, !noalias !569
  store i32 0, ptr %i.b, align 4, !tbaa !181, !noalias !569
  store i32 3, ptr %i.c, align 4, !tbaa !183, !noalias !569
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31, !noalias !569
  store ptr %7, ptr %9, align 8, !tbaa !185, !noalias !569
  store ptr %i.a, ptr %i.e, align 8, !tbaa !149, !noalias !569
  store ptr %8, ptr %i.f, align 8, !tbaa !187, !noalias !569
  store ptr %i.b, ptr %i.g, align 8, !tbaa !188, !noalias !569
  store ptr %i.c, ptr %i.h, align 8, !tbaa !188, !noalias !569
  %i.s = load i64, ptr %0, align 8, !tbaa !190, !noalias !570 ; 2 uses
  %i.t = and i64 %i.s, 144115188075855871
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = lshr i64 %i.s, 57
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = add nsw i32 %i.w, -1
  call void @_ZN4pbrt6detail8DispatchIRZNKS_4BxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsEEUlT_E_N4pstd8optionalINS_10BSDFSampleEEENS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFEJNS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEvEET0_OS9_PKvi(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %10, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef %i.u, i32 noundef %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !569
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.y = load i8, ptr %i.i, align 4, !tbaa !55, !range !56, !noundef !57
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit, label %bb.d

end_hunk_1
