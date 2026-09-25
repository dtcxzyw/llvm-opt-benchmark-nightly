Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BinaryContext?download=true
inline.NumInlined: 12267
inline.NumDeleted: 6290
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4llvm4bolt13BinaryContext20addDynamicRelocationEmPNS_8MCSymbolEjmmb:bb.a
; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm4bolt13BinaryContext18removeRelocationAtEm(ptr nofree noundef nonnull readonly align 8 dereferenceable(2268) %0, i64 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !373, !noalias !2073 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i.i, label %_ZNSt8multimapImPN4llvm4bolt13BinarySectionESt4lessImESaISt4pairIKmS3_EEE11upper_boundERS7_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !396, !noalias !2073
  %i.f = icmp ult i64 %1, %i.e                    ; 2 uses
  %.19.i.i.i.i = select i1 %i.f, ptr %.012.i.i.i.i, ptr %.0811.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i = select i1 %i.f, i64 16, i64 24
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !668, !noalias !2073 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8multimapImPN4llvm4bolt13BinarySectionESt4lessImESaISt4pairIKmS3_EEE11upper_boundERS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !27

_ZNSt8multimapImPN4llvm4bolt13BinarySectionESt4lessImESaISt4pairIKmS3_EEE11upper_boundERS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.08.lcssa.i.i.i.i = phi ptr [ %i.c, %bb.a ], [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !374, !noalias !2073
  %.not12.i = icmp eq ptr %.08.lcssa.i.i.i.i, %i.h
  br i1 %.not12.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt8multimapImPN4llvm4bolt13BinarySectionESt4lessImESaISt4pairIKmS3_EEE11upper_boundERS7_.exit.i
  %i.i = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.08.lcssa.i.i.i.i) #35, !noalias !2073 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !689, !noalias !2073
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !690, !noalias !2073 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.o = load i64, ptr %i.n, align 8, !tbaa !653, !noalias !2073 ; 2 uses
  %i.p = add i64 %i.o, %i.k
  %.not.i = icmp eq i64 %i.o, 0
  %i.q = zext i1 %.not.i to i64
  %spec.select.i = add i64 %i.p, %i.q
  %.not4.i = icmp ugt i64 %spec.select.i, %1
  br i1 %.not4.i, label %_ZN4llvm4bolt13BinaryContext20getSectionForAddressEm.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.b, %_ZNSt8multimapImPN4llvm4bolt13BinarySectionESt4lessImESaISt4pairIKmS3_EEE11upper_boundERS7_.exit.i
  br label %_ZN4llvm4bolt13BinaryContext20getSectionForAddressEm.exit

_ZN4llvm4bolt13BinaryContext20getSectionForAddressEm.exit: ; preds = %bb.b, %.critedge.i
  %.sroa.0.0 = phi ptr [ inttoptr (i64 14 to ptr), %.critedge.i ], [ %i.m, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !tbaa !652
  %i.t = sub i64 %1, %i.s
  %i.u = tail call noundef zeroext i1 @_ZN4llvm4bolt13BinarySection18removeRelocationAtEm(ptr noundef nonnull align 8 dereferenceable(391) %.sroa.0.0, i64 noundef %i.t)
  ret i1 %i.u
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm4bolt13BinarySection18removeRelocationAtEm(ptr noundef nonnull align 8 dereferenceable(391) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 9 uses
  %.0810.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !668 ; 4 uses
  %.not11.i.i.i.i = icmp eq ptr %.0810.i.i.i.i, null
  br i1 %.not11.i.i.i.i, label %_ZNSt8multisetIN4llvm4bolt10RelocationESt4lessIvESaIS2_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS2_ES8_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.0813.i.i.i.i = phi ptr [ %.08.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i, %bb.a ] ; 3 uses
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !667
  %i.f = icmp ult i64 %i.e, %1                    ; 2 uses
  %.19.in.v.i.i.i.i = select i1 %i.f, i64 24, i64 16
  %.19.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i, i64 %.19.in.v.i.i.i.i
  %.1.i.i.i.i = select i1 %i.f, ptr %.012.i.i.i.i, ptr %.0813.i.i.i.i ; 5 uses
  %.08.i.i.i.i = load ptr, ptr %.19.in.i.i.i.i, align 8, !tbaa !668 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN4llvm4bolt10RelocationES2_St9_IdentityIS2_ESt4lessIvESaIS2_EE17_M_lower_bound_trImvEESt23_Rb_tree_const_iteratorIS2_ERKT_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !33

_ZNKSt8_Rb_treeIN4llvm4bolt10RelocationES2_St9_IdentityIS2_ESt4lessIvESaIS2_EE17_M_lower_bound_trImvEESt23_Rb_tree_const_iteratorIS2_ERKT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i = icmp eq ptr %.1.i.i.i.i, %i.c
  br i1 %.not.i.i.i, label %_ZNSt8multisetIN4llvm4bolt10RelocationESt4lessIvESaIS2_EE4findImEEDTtlSt23_Rb_tree_const_iteratorIS2_EcldtdtdefpT4_M_t10_M_find_trfp_EEERKT_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNKSt8_Rb_treeIN4llvm4bolt10RelocationES2_St9_IdentityIS2_ESt4lessIvESaIS2_EE17_M_lower_bound_trImvEESt23_Rb_tree_const_iteratorIS2_ERKT_.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !667
  %i.i = icmp ult i64 %1, %i.h
  %spec.select.i.i.i = select i1 %i.i, ptr %i.c, ptr %.1.i.i.i.i
  br label %_ZNSt8multisetIN4llvm4bolt10RelocationESt4lessIvESaIS2_EE4findImEEDTtlSt23_Rb_tree_const_iteratorIS2_EcldtdtdefpT4_M_t10_M_find_trfp_EEERKT_.exit

_ZNSt8multisetIN4llvm4bolt10RelocationESt4lessIvESaIS2_EE4findImEEDTtlSt23_Rb_tree_const_iteratorIS2_EcldtdtdefpT4_M_t10_M_find_trfp_EEERKT_.exit: ; preds = %_ZNKSt8_Rb_treeIN4llvm4bolt10RelocationES2_St9_IdentityIS2_ESt4lessIvESaIS2_EE17_M_lower_bound_trImvEESt23_Rb_tree_const_iteratorIS2_ERKT_.exit.i.i.i, %bb.b
  %.sroa.03.0.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt8_Rb_treeIN4llvm4bolt10RelocationES2_St9_IdentityIS2_ESt4lessIvESaIS2_EE17_M_lower_bound_trImvEESt23_Rb_tree_const_iteratorIS2_ERKT_.exit.i.i.i ], [ %spec.select.i.i.i, %bb.b ] ; 4 uses
  %.not = icmp eq ptr %.sroa.03.0.i.i.i, %i.c
  br i1 %.not, label %_ZNSt8multisetIN4llvm4bolt10RelocationESt4lessIvESaIS2_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS2_ES8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt8multisetIN4llvm4bolt10RelocationESt4lessIvESaIS2_EE4findImEEDTtlSt23_Rb_tree_const_iteratorIS2_EcldtdtdefpT4_M_t10_M_find_trfp_EEERKT_.exit, %.lr.ph.i.i.i
  %.0813.i.i.i = phi ptr [ %.08.i.i.i, %.lr.ph.i.i.i ], [ %.0810.i.i.i.i, %_ZNSt8multisetIN4llvm4bolt10RelocationESt4lessIvESaIS2_EE4findImEEDTtlSt23_Rb_tree_const_iteratorIS2_EcldtdtdefpT4_M_t10_M_find_trfp_EEERKT_.exit ] ; 3 uses
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt8multisetIN4llvm4bolt10RelocationESt4lessIvESaIS2_EE4findImEEDTtlSt23_Rb_tree_const_iteratorIS2_EcldtdtdefpT4_M_t10_M_find_trfp_EEERKT_.exit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.0813.i.i.i, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !667
  %i.l = icmp ult i64 %1, %i.k                    ; 2 uses
  %.19.in.v.i.i.i = select i1 %i.l, i64 16, i64 24
  %.19.in.i.i.i = getelementptr inbounds nuw i8, ptr %.0813.i.i.i, i64 %.19.in.v.i.i.i
  %.1.i.i.i = select i1 %i.l, ptr %.0813.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.08.i.i.i = load ptr, ptr %.19.in.i.i.i, align 8, !tbaa !668 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %.08.i.i.i, null
  br i1 %.not.i.i.i5, label %_ZNSt8multisetIN4llvm4bolt10RelocationESt4lessIvESaIS2_EE11upper_boundImEEDTcvSt23_Rb_tree_const_iteratorIS2_EcldtdtdefpT4_M_t17_M_upper_bound_trfp_EERKT_.exit, label %.lr.ph.i.i.i, !llvm.loop !2074

_ZNSt8multisetIN4llvm4bolt10RelocationESt4lessIvESaIS2_EE11upper_boundImEEDTcvSt23_Rb_tree_const_iteratorIS2_EcldtdtdefpT4_M_t17_M_upper_bound_trfp_EERKT_.exit: ; preds = %.lr.ph.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !374
  %i.o = icmp eq ptr %.sroa.03.0.i.i.i, %i.n
  %i.p = icmp eq ptr %.1.i.i.i, %i.c
  %or.cond = select i1 %i.o, i1 %i.p, i1 false
  br i1 %or.cond, label %bb.c, label %.critedge.i.i.i

bb.c:                                             ; preds = %_ZNSt8multisetIN4llvm4bolt10RelocationESt4lessIvESaIS2_EE11upper_boundImEEDTcvSt23_Rb_tree_const_iteratorIS2_EcldtdtdefpT4_M_t17_M_upper_bound_trfp_EERKT_.exit
  tail call void @_ZNSt8_Rb_treeIN4llvm4bolt10RelocationES2_St9_IdentityIS2_ESt4lessIvESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull %.0810.i.i.i.i)
  store ptr null, ptr %i.b, align 8, !tbaa !373
  store ptr %i.c, ptr %i.m, align 8, !tbaa !374
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.c, ptr %i.q, align 8, !tbaa !375
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 0, ptr %i.r, align 8, !tbaa !376
  br label %_ZNSt8multisetIN4llvm4bolt10RelocationESt4lessIvESaIS2_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS2_ES8_.exit

.critedge.i.i.i:                                  ; preds = %_ZNSt8multisetIN4llvm4bolt10RelocationESt4lessIvESaIS2_EE11upper_boundImEEDTcvSt23_Rb_tree_const_iteratorIS2_EcldtdtdefpT4_M_t17_M_upper_bound_trfp_EERKT_.exit
  %.not8.i.i.i = icmp eq ptr %.sroa.03.0.i.i.i, %.1.i.i.i
  br i1 %.not8.i.i.i, label %_ZNSt8multisetIN4llvm4bolt10RelocationESt4lessIvESaIS2_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS2_ES8_.exit, label %.lr.ph.i.i.i6

.lr.ph.i.i.i6:                                    ; preds = %.critedge.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i6
  %.sroa.06.09.i.i.i = phi ptr [ %.sroa.03.0.i.i.i, %.lr.ph.i.i.i6 ], [ %i.t, %bb.d ] ; 2 uses
  %i.t = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09.i.i.i) #35 ; 2 uses
  %i.u = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 72) #32
  %i.v = load i64, ptr %i.s, align 8, !tbaa !376
  %i.w = add i64 %i.v, -1
  store i64 %i.w, ptr %i.s, align 8, !tbaa !376
  %.not.i.i.i7 = icmp eq ptr %i.t, %.1.i.i.i
  br i1 %.not.i.i.i7, label %_ZNSt8multisetIN4llvm4bolt10RelocationESt4lessIvESaIS2_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS2_ES8_.exit, label %bb.d, !llvm.loop !2075

_ZNSt8multisetIN4llvm4bolt10RelocationESt4lessIvESaIS2_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS2_ES8_.exit: ; preds = %bb.d, %bb.a, %.critedge.i.i.i, %bb.c, %_ZNSt8multisetIN4llvm4bolt10RelocationESt4lessIvESaIS2_EE4findImEEDTtlSt23_Rb_tree_const_iteratorIS2_EcldtdtdefpT4_M_t10_M_find_trfp_EEERKT_.exit
  %i.x = phi i1 [ false, %bb.a ], [ false, %_ZNSt8multisetIN4llvm4bolt10RelocationESt4lessIvESaIS2_EE4findImEEDTtlSt23_Rb_tree_const_iteratorIS2_EcldtdtdefpT4_M_t10_M_find_trfp_EEERKT_.exit ], [ true, %bb.c ], [ true, %.critedge.i.i.i ], [ true, %bb.d ]
  ret i1 %i.x
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef ptr @_ZNK4llvm4bolt13BinaryContext22getDynamicRelocationAtEm(ptr nofree noundef nonnull readonly align 8 dereferenceable(2268) %0, i64 noundef %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !373, !noalias !2081 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i.i.i, label %_ZNSt8multimapImPN4llvm4bolt13BinarySectionESt4lessImESaISt4pairIKmS3_EEE11upper_boundERS7_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !396, !noalias !2081
  %i.f = icmp ult i64 %1, %i.e                    ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.f, ptr %.012.i.i.i.i.i, ptr %.0811.i.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.f, i64 16, i64 24
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !668, !noalias !2081 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt8multimapImPN4llvm4bolt13BinarySectionESt4lessImESaISt4pairIKmS3_EEE11upper_boundERS7_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !27

_ZNSt8multimapImPN4llvm4bolt13BinarySectionESt4lessImESaISt4pairIKmS3_EEE11upper_boundERS7_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.c, %bb.a ], [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !374, !noalias !2081
  %.not12.i.i = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.h
  br i1 %.not12.i.i, label %_ZNK4llvm4bolt13BinarySection22getDynamicRelocationAtEm.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt8multimapImPN4llvm4bolt13BinarySectionESt4lessImESaISt4pairIKmS3_EEE11upper_boundERS7_.exit.i.i
  %i.i = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.08.lcssa.i.i.i.i.i) #35, !noalias !2081 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !689, !noalias !2081
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !690, !noalias !2081 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.o = load i64, ptr %i.n, align 8, !tbaa !653, !noalias !2081 ; 2 uses
  %i.p = add i64 %i.o, %i.k
  %.not.i.i = icmp eq i64 %i.o, 0
  %i.q = zext i1 %.not.i.i to i64
  %spec.select.i.i = add i64 %i.p, %i.q
  %.not4.i.i = icmp ugt i64 %spec.select.i.i, %1
  br i1 %.not4.i.i, label %bb.c, label %_ZNK4llvm4bolt13BinarySection22getDynamicRelocationAtEm.exit

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.s = load i64, ptr %i.r, align 8, !tbaa !652
  %i.t = sub i64 %1, %i.s                         ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !373  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 168 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not10.i.i.i.i, label %_ZNK4llvm4bolt13BinarySection22getDynamicRelocationAtEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.v, %bb.c ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.w, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !667
  %i.z = icmp ult i64 %i.y, %i.t                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.z, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.z, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !668 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN4llvm4bolt10RelocationES2_St9_IdentityIS2_ESt4lessIvESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2080

_ZNKSt8_Rb_treeIN4llvm4bolt10RelocationES2_St9_IdentityIS2_ESt4lessIvESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.aa = icmp eq ptr %.19.i.i.i.i, %i.w
  br i1 %i.aa, label %_ZNK4llvm4bolt13BinarySection22getDynamicRelocationAtEm.exit, label %_ZNKSt8multisetIN4llvm4bolt10RelocationESt4lessIvESaIS2_EE4findERKS2_.exit.i

_ZNKSt8multisetIN4llvm4bolt10RelocationESt4lessIvESaIS2_EE4findERKS2_.exit.i: ; preds = %_ZNKSt8_Rb_treeIN4llvm4bolt10RelocationES2_St9_IdentityIS2_ESt4lessIvESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !667
  %i.ad = icmp ult i64 %i.t, %i.ac
  %spec.select.i = select i1 %i.ad, ptr null, ptr %i.ab
  br label %_ZNK4llvm4bolt13BinarySection22getDynamicRelocationAtEm.exit

_ZNK4llvm4bolt13BinarySection22getDynamicRelocationAtEm.exit: ; preds = %bb.b, %_ZNSt8multimapImPN4llvm4bolt13BinarySectionESt4lessImESaISt4pairIKmS3_EEE11upper_boundERS7_.exit.i.i, %_ZNKSt8multisetIN4llvm4bolt10RelocationESt4lessIvESaIS2_EE4findERKS2_.exit.i, %_ZNKSt8_Rb_treeIN4llvm4bolt10RelocationES2_St9_IdentityIS2_ESt4lessIvESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ null, %_ZNKSt8_Rb_treeIN4llvm4bolt10RelocationES2_St9_IdentityIS2_ESt4lessIvESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i ], [ %spec.select.i, %_ZNKSt8multisetIN4llvm4bolt10RelocationESt4lessIvESaIS2_EE4findERKS2_.exit.i ], [ null, %_ZNSt8multimapImPN4llvm4bolt13BinarySectionESt4lessImESaISt4pairIKmS3_EEE11upper_boundERS7_.exit.i.i ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt13BinaryContext24markAmbiguousRelocationsERNS0_10BinaryDataEm(ptr nofree noundef nonnull readonly align 8 dereferenceable(2268) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !658
  %i.c = icmp eq i64 %2, %i.b
  br i1 %i.c, label %.preheader85, label %_ZN4llvm4bolt13BinaryContext30getBinaryDataContainingAddressEm.exit

.preheader85:                                     ; preds = %bb.a, %_ZNK4llvm4bolt10BinaryData8isAtomicEv.exit.i.i
  %.0.i.i = phi ptr [ %i.q, %_ZNK4llvm4bolt10BinaryData8isAtomicEv.exit.i.i ], [ %1, %bb.a ] ; 5 uses
  %i.d = load ptr, ptr %.0.i.i, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(88) %.0.i.i) #31, !inline_history !2082
  br i1 %i.g, label %bb.b, label %_ZNK4llvm4bolt10BinaryData8isAtomicEv.exit.i.i

bb.b:                                             ; preds = %.preheader85
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !660  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %"_ZZN4llvm4bolt13BinaryContext24markAmbiguousRelocationsERNS0_10BinaryDataEmENK3$_0clES3_.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !660
  %.not1.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not1.i.i.i.i, label %_ZNK4llvm4bolt10BinaryData19isTopLevelJumpTableEv.exit.i.i.i, label %_ZNK4llvm4bolt10BinaryData8isAtomicEv.exit.i.i

_ZNK4llvm4bolt10BinaryData19isTopLevelJumpTableEv.exit.i.i.i: ; preds = %bb.c
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !77
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(88) %i.i) #31, !inline_history !2082
  br i1 %i.o, label %"_ZZN4llvm4bolt13BinaryContext24markAmbiguousRelocationsERNS0_10BinaryDataEmENK3$_0clES3_.exit", label %_ZNK4llvm4bolt10BinaryData8isAtomicEv.exit.i.i

_ZNK4llvm4bolt10BinaryData8isAtomicEv.exit.i.i:   ; preds = %_ZNK4llvm4bolt10BinaryData19isTopLevelJumpTableEv.exit.i.i.i, %bb.c, %.preheader85
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !660  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %"_ZZN4llvm4bolt13BinaryContext24markAmbiguousRelocationsERNS0_10BinaryDataEmENK3$_0clES3_.exit", label %.preheader85

"_ZZN4llvm4bolt13BinaryContext24markAmbiguousRelocationsERNS0_10BinaryDataEmENK3$_0clES3_.exit": ; preds = %bb.b, %_ZNK4llvm4bolt10BinaryData19isTopLevelJumpTableEv.exit.i.i.i, %_ZNK4llvm4bolt10BinaryData8isAtomicEv.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 66
  store i8 0, ptr %i.r, align 2, !tbaa !2083
  %i.s = add i64 %2, -1                           ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !373  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 3 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not10.i.i.i.i.i, label %_ZNKSt3mapImPN4llvm4bolt10BinaryDataESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.thread.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZZN4llvm4bolt13BinaryContext24markAmbiguousRelocationsERNS0_10BinaryDataEmENK3$_0clES3_.exit", %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.u, %"_ZZN4llvm4bolt13BinaryContext24markAmbiguousRelocationsERNS0_10BinaryDataEmENK3$_0clES3_.exit" ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.v, %"_ZZN4llvm4bolt13BinaryContext24markAmbiguousRelocationsERNS0_10BinaryDataEmENK3$_0clES3_.exit" ]
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !396
  %i.y = icmp ult i64 %i.x, %i.s                  ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.y, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.y, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !668 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt3mapImPN4llvm4bolt10BinaryDataESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !24

_ZNKSt3mapImPN4llvm4bolt10BinaryDataESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.not31.i.i = icmp eq ptr %.19.i.i.i.i.i, %i.v
  br i1 %.not31.i.i, label %_ZNKSt3mapImPN4llvm4bolt10BinaryDataESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNKSt3mapImPN4llvm4bolt10BinaryDataESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !669
  %i.ab = icmp eq i64 %i.s, %i.aa
  br i1 %i.ab, label %.critedge.i.i, label %_ZNKSt3mapImPN4llvm4bolt10BinaryDataESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.thread.i.i

_ZNKSt3mapImPN4llvm4bolt10BinaryDataESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.thread.i.i: ; preds = %bb.d, %_ZNKSt3mapImPN4llvm4bolt10BinaryDataESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i.i, %"_ZZN4llvm4bolt13BinaryContext24markAmbiguousRelocationsERNS0_10BinaryDataEmENK3$_0clES3_.exit"
  %.08.lcssa.i.i.i28.i.i = phi ptr [ %.19.i.i.i.i.i, %_ZNKSt3mapImPN4llvm4bolt10BinaryDataESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i.i ], [ %.19.i.i.i.i.i, %bb.d ], [ %i.v, %"_ZZN4llvm4bolt13BinaryContext24markAmbiguousRelocationsERNS0_10BinaryDataEmENK3$_0clES3_.exit" ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !374
  %.not32.i.i = icmp eq ptr %.08.lcssa.i.i.i28.i.i, %i.ad
  br i1 %.not32.i.i, label %_ZN4llvm4bolt13BinaryContext30getBinaryDataContainingAddressEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt3mapImPN4llvm4bolt10BinaryDataESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.thread.i.i
  %i.ae = tail call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef %.08.lcssa.i.i.i28.i.i) #35
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.e, %bb.d
  %.sroa.018.0.i.i = phi ptr [ %i.ae, %bb.e ], [ %.19.i.i.i.i.i, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.018.0.i.i, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !464 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !658 ; 4 uses
  %.not.i.i.i19 = icmp ugt i64 %i.ai, %i.s
  br i1 %.not.i.i.i19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !659 ; 2 uses
  %i.al = add i64 %i.ak, %i.ai
  %i.am = icmp ult i64 %i.s, %i.al
  br i1 %i.am, label %.loopexit84, label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge.i.i
  %i.an = icmp eq i64 %i.ai, %i.s
  br i1 %i.an, label %_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit.i.i, label %_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit.thread29.i.i

_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit.i.i: ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !659
  %.not3.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not3.i.i.i, label %.loopexit84, label %_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit.thread29.i.i

_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit.thread29.i.i: ; preds = %_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit.i.i, %bb.g
  %.0.in33.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.034.i.i = load ptr, ptr %.0.in33.i.i, align 8, !tbaa !660 ; 2 uses
  %.not35.i.i = icmp eq ptr %.034.i.i, null
  br i1 %.not35.i.i, label %_ZN4llvm4bolt13BinaryContext30getBinaryDataContainingAddressEm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit.thread29.i.i, %_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit14.thread30.i.i
  %.036.i.i = phi ptr [ %.0.i.i20, %_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit14.thread30.i.i ], [ %.034.i.i, %_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit.thread29.i.i ] ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.036.i.i, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !658 ; 5 uses
  %.not.i12.i.i = icmp ugt i64 %i.ar, %i.s
  br i1 %.not.i12.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.036.i.i, i64 56
  %i.at = load i64, ptr %i.as, align 8, !tbaa !659 ; 2 uses
  %i.au = add i64 %i.at, %i.ar
  %i.av = icmp ult i64 %i.s, %i.au
  br i1 %i.av, label %.loopexit84, label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i
  %i.aw = icmp eq i64 %i.ar, %i.s
  br i1 %i.aw, label %_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit14.i.i, label %_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit14.thread30.i.i

_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit14.i.i: ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.036.i.i, i64 56
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !659
  %.not3.i13.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not3.i13.i.i, label %.loopexit84, label %_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit14.thread30.i.i

_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit14.thread30.i.i: ; preds = %_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit14.i.i, %bb.i
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.036.i.i, i64 8
  %.0.i.i20 = load ptr, ptr %.0.in.i.i, align 8, !tbaa !660 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i20, null
  br i1 %.not.i.i, label %_ZN4llvm4bolt13BinaryContext30getBinaryDataContainingAddressEm.exit, label %.lr.ph.i.i, !llvm.loop !25

.loopexit84:                                      ; preds = %bb.h, %_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit14.i.i, %_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit.i.i, %bb.f
  %i.az = phi i64 [ %i.ak, %bb.f ], [ 0, %_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit.i.i ], [ %i.at, %bb.h ], [ 0, %_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit14.i.i ]
  %i.ba = phi i64 [ %i.ai, %bb.f ], [ %i.s, %_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit.i.i ], [ %i.ar, %_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit14.i.i ], [ %i.ar, %bb.h ]
  %.1.i.i.ph = phi ptr [ %i.ag, %bb.f ], [ %i.ag, %_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit.i.i ], [ %.036.i.i, %_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit14.i.i ], [ %.036.i.i, %bb.h ]
  %i.bb = add i64 %i.az, %i.ba
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !658
  %i.bd = icmp eq i64 %i.bb, %i.bc
  br i1 %i.bd, label %.preheader83, label %_ZN4llvm4bolt13BinaryContext30getBinaryDataContainingAddressEm.exit

.preheader83:                                     ; preds = %.loopexit84, %_ZNK4llvm4bolt10BinaryData8isAtomicEv.exit.i.i22
  %.0.i.i21 = phi ptr [ %i.br, %_ZNK4llvm4bolt10BinaryData8isAtomicEv.exit.i.i22 ], [ %.1.i.i.ph, %.loopexit84 ] ; 5 uses
  %i.be = load ptr, ptr %.0.i.i21, align 8, !tbaa !77
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(88) %.0.i.i21) #31, !inline_history !2082
  br i1 %i.bh, label %bb.j, label %_ZNK4llvm4bolt10BinaryData8isAtomicEv.exit.i.i22

bb.j:                                             ; preds = %.preheader83
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i21, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !660 ; 4 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i24, label %"_ZZN4llvm4bolt13BinaryContext24markAmbiguousRelocationsERNS0_10BinaryDataEmENK3$_0clES3_.exit27", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !660
  %.not1.i.i.i.i25 = icmp eq ptr %i.bl, null
  br i1 %.not1.i.i.i.i25, label %_ZNK4llvm4bolt10BinaryData19isTopLevelJumpTableEv.exit.i.i.i26, label %_ZNK4llvm4bolt10BinaryData8isAtomicEv.exit.i.i22

_ZNK4llvm4bolt10BinaryData19isTopLevelJumpTableEv.exit.i.i.i26: ; preds = %bb.k
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !77
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(88) %i.bj) #31, !inline_history !2082
  br i1 %i.bp, label %"_ZZN4llvm4bolt13BinaryContext24markAmbiguousRelocationsERNS0_10BinaryDataEmENK3$_0clES3_.exit27", label %_ZNK4llvm4bolt10BinaryData8isAtomicEv.exit.i.i22

_ZNK4llvm4bolt10BinaryData8isAtomicEv.exit.i.i22: ; preds = %_ZNK4llvm4bolt10BinaryData19isTopLevelJumpTableEv.exit.i.i.i26, %bb.k, %.preheader83
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i21, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !660 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i23, label %"_ZZN4llvm4bolt13BinaryContext24markAmbiguousRelocationsERNS0_10BinaryDataEmENK3$_0clES3_.exit27", label %.preheader83

"_ZZN4llvm4bolt13BinaryContext24markAmbiguousRelocationsERNS0_10BinaryDataEmENK3$_0clES3_.exit27": ; preds = %bb.j, %_ZNK4llvm4bolt10BinaryData19isTopLevelJumpTableEv.exit.i.i.i26, %_ZNK4llvm4bolt10BinaryData8isAtomicEv.exit.i.i22
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i21, i64 66
  store i8 0, ptr %i.bs, align 2, !tbaa !2083
  br label %_ZN4llvm4bolt13BinaryContext30getBinaryDataContainingAddressEm.exit
end_hunk_0
