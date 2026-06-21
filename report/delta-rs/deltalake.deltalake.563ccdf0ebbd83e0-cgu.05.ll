inline.NumInlined: 6674
inline.NumDeleted: 2611
begin_hunk_0_@_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13822)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !13822, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE13drop_elementsCs7p2uQeJxui2_9deltalake.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted = load i16, ptr %i.e, align 8, !alias.scope !13825
  %.promoted2 = load ptr, ptr %i.a, align 8
  %.promoted5 = load ptr, ptr %i.f, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i, %.preheader.i
  %.promoted12.i.i7 = phi ptr [ %.promoted5, %.preheader.i ], [ %.promoted12.i.i6, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i ] ; 2 uses
  %.lcssa14 = phi ptr [ %.promoted2, %.preheader.i ], [ %.lcssa13, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i ] ; 2 uses
  %i.g = phi i16 [ %.promoted, %.preheader.i ], [ %i.r, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i ] ; 2 uses
  %i.h = phi i64 [ %i.c, %.preheader.i ], [ %i.u, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13828)
  %.not10.i.i = icmp eq i16 %i.g, 0
  br i1 %.not10.i.i, label %.lr.ph.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  store ptr %i.n, ptr %i.f, align 8, !alias.scope !13825
  store ptr %i.m, ptr %i.a, align 8, !alias.scope !13825
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %.promoted12.i.i7, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %i.m, %.lr.ph.i.i ], [ %.lcssa14, %bb.b ]
  %i.k = load <16 x i8>, ptr %i.i, align 16, !noalias !13829
  %i.l = icmp sgt <16 x i8> %i.k, splat (i8 -1)
  %i.m = getelementptr inbounds i8, ptr %i.j, i64 -1792 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %.cast.i.i = bitcast <16 x i1> %i.l to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b, %._crit_edge.i.i
  %.promoted12.i.i6 = phi ptr [ %i.n, %._crit_edge.i.i ], [ %.promoted12.i.i7, %bb.b ]
  %.lcssa13 = phi ptr [ %i.m, %._crit_edge.i.i ], [ %.lcssa14, %bb.b ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i.i                ; 2 uses
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !13825
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [112 x i8], ptr %.lcssa13, i64 %i.s
  %i.u = add i64 %i.h, -1                         ; 3 uses
  store i64 %i.u, ptr %i.b, align 8, !alias.scope !13822
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -112
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.v), !noalias !13822
  %.old3.i = icmp eq i64 %i.u, 0
  br i1 %.old3.i, label %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE13drop_elementsCs7p2uQeJxui2_9deltalake.exit, label %bb.b

_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE13drop_elementsCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i, %bb.a
  %i.w = load i64, ptr %0, align 8, !range !2051, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE13drop_elementsCs7p2uQeJxui2_9deltalake.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noundef !4 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) %i.w) #33
  br label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.d, %bb.c, %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE13drop_elementsCs7p2uQeJxui2_9deltalake.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !2051, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.a) #33
  br label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTReuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !2051, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.a) #33
  br label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTRexEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !2051, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.a) #33
  br label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtBY_6string6StringEEEuEENtNtNtNtB1y_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13832)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !13832, !noundef !4 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !13832 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB10_6string6StringEEEuEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !13832
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !13832
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !13832
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB10_6string6StringEEEuEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !13835
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -384 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB10_6string6StringEEEuEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !13832
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [24 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -24
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB10_6string6StringEEEuEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBT_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13838)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !13838, !noundef !4 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !13838 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !13838
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !13838
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !13838
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !13841
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -768 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !13838
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [48 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -48
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBT_EEENtNtNtNtB1A_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13844)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !13844, !noundef !4 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !13844 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBV_EEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !13844
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !13844
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !13844
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBV_EEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !13847
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -768 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBV_EEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !13844
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [48 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -48
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBV_EEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEENtNtNtNtB1A_4iter6traits8iterator8Iterator4nextB29_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13850)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !13850, !noundef !4 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !13850 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEE9next_implKb0_EB2b_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !13850
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !13850
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !13850
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEE9next_implKb0_EB2b_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !13853
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -1920 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEE9next_implKb0_EB2b_.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !13850
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [120 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -120
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %i.v, i64 120, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 4, ptr %i.w, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEE9next_implKb0_EB2b_.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringxEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13856)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !13856, !noundef !4 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !13856 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringxEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !13856
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !13856
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !13856
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringxEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !13859
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -512 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringxEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !13856
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -32
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringxEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13862)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !13862, !noundef !4 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !13862 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !13862
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !13862
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !13862
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !13865
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -1792 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !13862
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [112 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -112
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %i.v, i64 112, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 37, ptr %0, align 16
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13868)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !13868, !noundef !4 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !13868 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !13868
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !13868
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !13868
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !13871
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -128 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !13868
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !align !1680, !noundef !4
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit
  %.sroa.0.0 = phi ptr [ %i.w, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden { ptr, i64 } @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTReuEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13874)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !13874, !noundef !4 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !13874 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTReuEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !13874
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !13874
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !13874
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTReuEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !13877
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -256 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTReuEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !13874
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.s ; 2 uses
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.y = load i64, ptr %i.x, align 8, !noundef !4
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTReuEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit
  %.sroa.3.0 = phi i64 [ %i.y, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTReuEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.w, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTReuEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit ], [ null, %bb.a ]
  %i.z = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.aa = insertvalue { ptr, i64 } %i.z, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.aa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTRexEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13880)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !13880, !noundef !4 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !13880 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRexEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !13880
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !13880
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !13880
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRexEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !13883
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -384 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRexEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !13880
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [24 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -24
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRexEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCsbvkFyIu7lgC_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @248, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtNtCsbvkFyIu7lgC_4core3fmt3numxNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXsD_NtNtCsbvkFyIu7lgC_4core3fmt3numxNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXse_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impxNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsF_NtNtCsbvkFyIu7lgC_4core3fmt3numxNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = alloca [64 x i8], align 16               ; 4 uses
  %.sroa.6.i.i = alloca [64 x i8], align 16       ; 5 uses
  %i.d = alloca [80 x i8], align 16               ; 7 uses
  %i.e = alloca [176 x i8], align 16              ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [112 x i8], align 16              ; 4 uses
  %i.j = alloca [112 x i8], align 16              ; 4 uses
  %i.k = alloca [112 x i8], align 16              ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [112 x i8], align 16              ; 4 uses
  %.sroa.0220 = alloca [248 x i8], align 16       ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [112 x i8], align 16              ; 4 uses
  %i.u = alloca [112 x i8], align 16              ; 4 uses
  %i.v = alloca [112 x i8], align 16              ; 4 uses
  %i.w = alloca [112 x i8], align 16              ; 4 uses
  %i.x = alloca [112 x i8], align 16              ; 4 uses
  %i.y = alloca [112 x i8], align 16              ; 4 uses
  %i.z = alloca [112 x i8], align 16              ; 4 uses
  %i.aa = alloca [112 x i8], align 16             ; 4 uses
  %i.ab = alloca [112 x i8], align 16             ; 4 uses
  %i.ac = alloca [112 x i8], align 16             ; 4 uses
  %i.ad = alloca [112 x i8], align 16             ; 4 uses
  %i.ae = alloca [112 x i8], align 16             ; 4 uses
  %i.af = alloca [112 x i8], align 16             ; 4 uses
  %i.ag = alloca [112 x i8], align 16             ; 4 uses
  %i.ah = alloca [112 x i8], align 16             ; 4 uses
  %i.ai = alloca [112 x i8], align 16             ; 4 uses
  %i.aj = alloca [112 x i8], align 16             ; 4 uses
  %i.ak = alloca [112 x i8], align 16             ; 4 uses
  %i.al = alloca [112 x i8], align 16             ; 4 uses
  %i.am = alloca [112 x i8], align 16             ; 4 uses
  %i.an = alloca [112 x i8], align 16             ; 4 uses
  %i.ao = alloca [112 x i8], align 16             ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.0.i.i.i.i = alloca [56 x i8], align 8    ; 5 uses
  %i.aq = alloca [64 x i8], align 8               ; 8 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [24 x i8], align 8               ; 5 uses
  %i.at = alloca [24 x i8], align 8               ; 4 uses
  %i.au = alloca [64 x i8], align 8               ; 7 uses
  %i.av = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.425.i.i.i = alloca [112 x i8], align 8   ; 6 uses
  %i.aw = alloca [48 x i8], align 8               ; 5 uses
  %i.ax = alloca [88 x i8], align 8               ; 5 uses
  %i.ay = alloca [24 x i8], align 8               ; 5 uses
  %i.az = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.4.i.i.i = alloca [48 x i8], align 8      ; 5 uses
  %.sroa.55.i.i.i = alloca [24 x i8], align 8     ; 5 uses
  %.sroa.6.sroa.0.i.i.i = alloca [24 x i8], align 8 ; 4 uses
  %i.ba = alloca [48 x i8], align 8               ; 6 uses
  %i.bb = alloca [88 x i8], align 8               ; 6 uses
  %i.bc = alloca [64 x i8], align 8               ; 9 uses
  %i.bd = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.0.i.i = alloca [224 x i8], align 8       ; 7 uses
  %i.be = alloca [24 x i8], align 8               ; 4 uses
  %i.bf = alloca [24 x i8], align 8               ; 4 uses
  %i.bg = alloca [24 x i8], align 8               ; 5 uses
  %i.bh = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.0202 = alloca [48 x i8], align 8         ; 3 uses
  %i.bi = alloca [8 x i8], align 8                ; 4 uses
  %i.bj = alloca [24 x i8], align 8               ; 4 uses
  %i.bk = alloca [24 x i8], align 8               ; 5 uses
  %i.bl = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.0.i = alloca [48 x i8], align 8          ; 3 uses
  %i.bm = alloca [24 x i8], align 8               ; 4 uses
  %i.bn = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.0196 = alloca [48 x i8], align 8         ; 3 uses
  %i.bo = alloca [8 x i8], align 8                ; 4 uses
  %i.bp = alloca [24 x i8], align 8               ; 4 uses
  %i.bq = alloca [8 x i8], align 8                ; 4 uses
  %i.br = alloca [24 x i8], align 8               ; 4 uses
  %i.bs = alloca [8 x i8], align 8                ; 4 uses
  %i.bt = alloca [24 x i8], align 8               ; 4 uses
  %i.bu = alloca [8 x i8], align 8                ; 4 uses
  %i.bv = alloca [24 x i8], align 8               ; 5 uses
  %i.bw = alloca [8 x i8], align 8                ; 4 uses
  %i.bx = alloca [8 x i8], align 8                ; 4 uses
  %i.by = alloca [8 x i8], align 8                ; 4 uses
  %i.bz = alloca [8 x i8], align 8                ; 4 uses
  %i.ca = alloca [8 x i8], align 8                ; 4 uses
  %i.cb = alloca [8 x i8], align 8                ; 4 uses
  %i.cc = alloca [24 x i8], align 8               ; 4 uses
  %i.cd = alloca [56 x i8], align 8               ; 7 uses
  %i.ce = alloca [8 x i8], align 8                ; 4 uses
  %i.cf = alloca [104 x i8], align 8              ; 4 uses
  %i.cg = alloca [8 x i8], align 8                ; 4 uses
  %i.ch = alloca [32 x i8], align 8               ; 5 uses
  %i.ci = alloca [56 x i8], align 8               ; 7 uses
  %.sroa.0182 = alloca [48 x i8], align 8         ; 5 uses
  %i.cj = alloca [64 x i8], align 16              ; 4 uses
  %i.ck = alloca [24 x i8], align 8               ; 4 uses
  %i.cl = alloca [8 x i8], align 8                ; 4 uses
  %i.cm = alloca [104 x i8], align 8              ; 4 uses
  %.sroa.0 = alloca [80 x i8], align 8            ; 5 uses
  %i.cn = load i64, ptr %1, align 16, !range !5372, !noundef !4 ; 3 uses
  %i.co = icmp ne i64 %i.cn, 35
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = add nsw i64 %i.cn, -4
  %i.cq = icmp samesign ugt i64 %i.cn, 3
  %i.cr = select i1 %i.cq, i64 %i.cp, i64 31
  switch i64 %i.cr, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.n
    i64 2, label %bb.o
    i64 3, label %bb.p
    i64 4, label %bb.q
    i64 5, label %bb.v
    i64 6, label %bb.aa
    i64 7, label %bb.af
    i64 8, label %bb.ah
    i64 9, label %bb.aj
    i64 10, label %bb.al
    i64 11, label %bb.an
    i64 12, label %bb.ap
    i64 13, label %bb.ar
    i64 14, label %bb.at
    i64 15, label %bb.av
    i64 16, label %bb.ax
    i64 17, label %bb.az
    i64 18, label %bb.bh
    i64 19, label %bb.bq
    i64 20, label %bb.bu
    i64 21, label %bb.by
    i64 22, label %bb.ce
    i64 23, label %bb.cq
    i64 24, label %bb.dr
    i64 25, label %bb.dv
    i64 26, label %bb.ee
    i64 27, label %bb.ep
    i64 28, label %bb.ey
    i64 29, label %bb.ez
    i64 30, label %bb.fd
    i64 31, label %bb.fg
    i64 32, label %bb.fh
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

end_hunk_0
