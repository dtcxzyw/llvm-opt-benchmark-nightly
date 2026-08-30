Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_lakefs-10d984d21e7865f1.deltalake_lakefs.dde20bc8cb465b21-cgu.03?download=true
inline.NumInlined: 260
inline.NumDeleted: 121
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuejENtB6_5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs:bb.a

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuemENtB6_5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !7, !align !80, !noundef !7 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  %i.d = load i64, ptr %i.c, align 8, !range !3, !alias.scope !326, !noalias !329, !noundef !7
  %.not.i = icmp eq i64 %i.d, -9223372036854775808
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !331
  store ptr %i.c, ptr %i.a, align 8, !noalias !331
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !331
  br label %_RNvXs7_NtCsjyY8HP3IvQ6_12object_store6configINtB5_11ConfigValuemENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !331
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.b, align 8, !noalias !331
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !331
  br label %_RNvXs7_NtCsjyY8HP3IvQ6_12object_store6configINtB5_11ConfigValuemENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs.exit

_RNvXs7_NtCsjyY8HP3IvQ6_12object_store6configINtB5_11ConfigValuemENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBT_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !332, !noundef !7 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_EE13drop_elementsCsj34PGqTgg0L_16deltalake_lakefs.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted = load i16, ptr %i.e, align 8, !alias.scope !335
  br label %bb.b

bb.b:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %.preheader.i
  %i.g = phi i16 [ %.promoted, %.preheader.i ], [ %i.r, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i ] ; 2 uses
  %i.h = phi i64 [ %i.c, %.preheader.i ], [ %i.u, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %.not12.i.i = icmp eq i16 %i.g, 0
  %.promoted.i.i = load ptr, ptr %i.a, align 8, !alias.scope !335 ; 2 uses
  br i1 %.not12.i.i, label %.lr.ph.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %.promoted14.i.i = load ptr, ptr %i.f, align 8, !alias.scope !335
  br label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !335
  store ptr %i.l, ptr %i.a, align 8, !alias.scope !335
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.i = phi ptr [ %.promoted14.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.j = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.l, %bb.c ]
  %.val10.i.i = load <16 x i8>, ptr %i.i, align 16, !noalias !335
  %i.k = icmp sgt <16 x i8> %.val10.i.i, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -768 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.k to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %bb.c, label %._crit_edge.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.b, %._crit_edge.i.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i.i ], [ %.promoted.i.i, %bb.b ]
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i.i                ; 2 uses
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !335
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [48 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.h, -1                         ; 3 uses
  store i64 %i.u, ptr %i.b, align 8, !alias.scope !332
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -48
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(48) %i.v), !noalias !332
  %.old3.i = icmp eq i64 %i.u, 0
  br i1 %.old3.i, label %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_EE13drop_elementsCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_EE13drop_elementsCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.a
  %i.w = load i64, ptr %0, align 8, !range !3, !noundef !7 ; 2 uses
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_EE13drop_elementsCsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noundef !7 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !7, !noundef !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) %i.w) #23
  br label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.e, %bb.d, %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_EE13drop_elementsCsj34PGqTgg0L_16deltalake_lakefs.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBT_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !339, !noundef !7 ; 2 uses
  %.not12.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !339 ; 2 uses
  br i1 %.not12.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted14.i = load ptr, ptr %i.g, align 8, !alias.scope !339
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.l, ptr %i.g, align 8, !alias.scope !339
  store ptr %i.k, ptr %i.d, align 8, !alias.scope !339
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted14.i, %.lr.ph.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.k, %bb.c ]
  %.val10.i = load <16 x i8>, ptr %i.h, align 16, !noalias !339
  %i.j = icmp sgt <16 x i8> %.val10.i, splat (i8 -1)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -768 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.j to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.b, %._crit_edge.i
  %i.m = phi ptr [ %i.k, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.n = add i16 %.lcssa.i, -1
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = and i16 %i.n, %.lcssa.i
  store i16 %i.q, ptr %i.e, align 8, !alias.scope !339
  %i.r = sub nsw i64 0, %i.p
  %i.s = getelementptr inbounds [48 x i8], ptr %i.m, i64 %i.r
  %i.t = add i64 %i.b, -1
  store i64 %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 48, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = add i64 %i.d, 1                          ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 48) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { i64, i1 } %i.g, 0         ; 3 uses
  %i.j = add i64 %i.d, 17                         ; 2 uses
  %i.k = add i64 %i.j, %i.i                       ; 5 uses
  %i.l = icmp ult i64 %i.k, %i.i
  %i.m = icmp ugt i64 %i.k, 9223372036854775792
  %or.cond.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !35

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %2 = icmp eq i64 %i.k, 0
  br i1 %2, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !342
  %i.n = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #23, !noalias !342 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !342
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.k), !noalias !342
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.q, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.n, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.i
  %i.s = icmp ult i64 %i.d, 8
  %i.t = lshr i64 %i.f, 3
  %i.u = mul nuw nsw i64 %i.t, 7
  %.sroa.07.0.i.i = select i1 %i.s, i64 %i.d, i64 %i.u
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCsj34PGqTgg0L_16deltalake_lakefs.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.j, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.r, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !357, !noalias !358, !nonnull !7, !noundef !7 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.v, i64 %.pre-phi, i1 false), !noalias !359
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !357, !noalias !358, !noundef !7 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCsj34PGqTgg0L_16deltalake_lakefs.exit
  %.val3.i.i.i = load <16 x i8>, ptr %i.v, align 16, !noalias !360
  %i.z = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ad = ptrtoint ptr %i.v to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %i.at, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1W_EEENCNvMse_B1D_B1A_15clone_from_impl0EECsj34PGqTgg0L_16deltalake_lakefs(i64 %.sroa.012.028.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #24
          to label %.body unwind label %bb.m, !noalias !357

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %.lr.ph.i.i
  %.sroa.012.028.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bb, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.013.027.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ] ; 2 uses
  %.sroa.6.026.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ] ; 2 uses
  %.sroa.814.025.i.i = phi i16 [ %i.aa, %.lr.ph.i.i ], [ %i.an, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ] ; 2 uses
  %.sroa.1015.024.i.i = phi i64 [ %i.x, %.lr.ph.i.i ], [ %i.aq, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.not12.i.i.i = icmp eq i16 %.sroa.814.025.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.af = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.sroa.6.026.i.i, %bb.j ] ; 2 uses
  %i.ag = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.sroa.013.027.i.i, %bb.j ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.af, align 16, !noalias !363
  %i.ah = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -768 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ah to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.026.i.i, %bb.j ], [ %i.aj, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.027.i.i, %bb.j ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.025.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ak = add i16 %.lcssa.i.i.i, -1
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = and i16 %i.ak, %.lcssa.i.i.i
  %i.ao = sub nsw i64 0, %i.am
  %i.ap = getelementptr inbounds [48 x i8], ptr %.sroa.013.1.i.i, i64 %i.ao ; 3 uses
  %i.aq = add i64 %.sroa.1015.024.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !359
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -48
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar)
          to label %.noexc.i.i unwind label %bb.i, !noalias !359

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 -24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i unwind label %bb.k, !noalias !359

bb.k:                                             ; preds = %.noexc.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #24
          to label %.body.i.i unwind label %bb.l, !noalias !359

bb.l:                                             ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !359
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %.noexc.i.i
  %i.av = ptrtoint ptr %i.ap to i64
  %i.aw = sub i64 %i.ad, %i.av
  %i.ax = sdiv exact i64 %i.aw, 48                ; 2 uses
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds [48 x i8], ptr %.sroa.0.0, i64 %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ba, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !359
  %i.bb = add nsw i64 %i.ax, 1
  %i.bc = icmp eq i64 %i.aq, 0
  br i1 %i.bc, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %.body.i.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !359
  unreachable

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1n_EEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %i.b) #24
          to label %bb.p unwind label %bb.o

.loopexit:                                        ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCsj34PGqTgg0L_16deltalake_lakefs.exit
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !358, !noalias !357
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !357, !noalias !358, !noundef !7
  store i64 %i.bf, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !358, !noalias !357
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.o:                                             ; preds = %.body
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEENtNtBT_5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 6 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = add i64 %i.c, 1                          ; 3 uses
  %i.f = icmp ugt i64 %i.e, 576460752303423487
  br i1 %i.f, label %bb.e, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.g = shl nuw i64 %i.e, 5                      ; 3 uses
  %i.h = add nsw i64 %i.c, 17                     ; 2 uses
  %i.i = add i64 %i.h, %i.g                       ; 5 uses
  %i.j = icmp ult i64 %i.i, %i.g
  %i.k = icmp ugt i64 %i.i, 9223372036854775792
  %or.cond.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !35

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %2 = icmp eq i64 %i.i, 0
  br i1 %2, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !366
  %i.l = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #23, !noalias !366 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !366
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.o = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.i), !noalias !366
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.o, %bb.f ], [ %i.n, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEE17new_uninitializedCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.l, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.g
  %i.q = icmp ult i64 %i.c, 8
  %i.r = lshr i64 %i.e, 3
  %i.s = mul nuw nsw i64 %i.r, 7
  %.sroa.07.0.i.i = select i1 %i.q, i64 %i.c, i64 %i.s
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEE17new_uninitializedCsj34PGqTgg0L_16deltalake_lakefs.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEE17new_uninitializedCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.h, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.c, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.p, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.t = load ptr, ptr %1, align 8, !alias.scope !381, !noalias !382, !nonnull !7, !noundef !7 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.t, i64 %.pre-phi, i1 false), !noalias !383
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !381, !noalias !382, !noundef !7 ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEE17new_uninitializedCsj34PGqTgg0L_16deltalake_lakefs.exit
  %.val3.i.i.i = load <16 x i8>, ptr %i.t, align 16, !noalias !384
  %i.x = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aa = ptrtoint ptr %i.t to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3y_4SendEL_EEEENCNvMse_B1D_B1A_15clone_from_impl0EECsj34PGqTgg0L_16deltalake_lakefs(i64 %.sroa.012.029.i.i, ptr nonnull align 8 dereferenceable(32) %i.a) #24
          to label %.body unwind label %bb.l, !noalias !381

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i
  %.sroa.012.029.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.az, %bb.k ]
  %.sroa.013.028.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.k ] ; 2 uses
  %.sroa.6.027.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.k ] ; 2 uses
  %.sroa.814.026.i.i = phi i16 [ %i.y, %.lr.ph.i.i ], [ %i.aq, %bb.k ] ; 2 uses
  %.sroa.1015.025.i.i = phi i64 [ %i.v, %.lr.ph.i.i ], [ %i.ao, %bb.k ]
  %.not12.i.i.i = icmp eq i16 %.sroa.814.026.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.ac = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.sroa.6.027.i.i, %bb.j ] ; 2 uses
  %i.ad = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.sroa.013.028.i.i, %bb.j ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.ac, align 16, !noalias !387
  %i.ae = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -512 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ae to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.027.i.i, %bb.j ], [ %i.ag, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.028.i.i, %bb.j ], [ %i.af, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.026.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i, i64 %i.aj ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !alias.scope !390, !noalias !383
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -16
  %i.an = invoke { ptr, ptr } @_RNvXs2_NtCs4j34XAPZOn0_4http10extensionsINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB5_8AnyCloneNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1s_4SendEL_ENtNtB1u_5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.am)
          to label %bb.k unwind label %bb.i, !noalias !383 ; 2 uses

bb.k:                                             ; preds = %.loopexit.i.i
  %i.ao = add i64 %.sroa.1015.025.i.i, -1         ; 2 uses
  %i.ap = add i16 %.lcssa.i.i.i, -1
  %i.aq = and i16 %i.ap, %.lcssa.i.i.i
  %i.ar = extractvalue { ptr, ptr } %i.an, 0
  %i.as = extractvalue { ptr, ptr } %i.an, 1
  %i.at = ptrtoint ptr %i.ak to i64
  %i.au = sub i64 %i.aa, %i.at
  %i.av = ashr exact i64 %i.au, 5                 ; 2 uses
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds [32 x i8], ptr %.sroa.0.0, i64 %i.aw ; 3 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, i64 16, i1 false), !noalias !383
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.ax, i64 -16
  store ptr %i.ar, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !383
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.ax, i64 -8
  store ptr %i.as, ptr %.sroa.517.0..sroa_idx.i.i, align 8, !noalias !383
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.az = add nsw i64 %i.av, 1
  %i.ba = icmp eq i64 %i.ao, 0
  br i1 %i.ba, label %.loopexit, label %bb.j

bb.l:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !383
  unreachable

bb.m:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %bb.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2Z_4SendEL_EEEECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.n

.loopexit:                                        ; preds = %bb.k, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEE17new_uninitializedCsj34PGqTgg0L_16deltalake_lakefs.exit
  store i64 %i.v, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !382, !noalias !381
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !381, !noalias !382, !noundef !7
  store i64 %i.bd, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !382, !noalias !381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.n:                                             ; preds = %.body
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2Z_4SendEL_EEEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %.body
  resume { ptr, i32 } %i.ab
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = add i64 %i.d, 1                          ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 48) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { i64, i1 } %i.g, 0         ; 3 uses
  %i.j = add i64 %i.d, 17                         ; 2 uses
  %i.k = add i64 %i.j, %i.i                       ; 5 uses
  %i.l = icmp ult i64 %i.k, %i.i
  %i.m = icmp ugt i64 %i.k, 9223372036854775792
  %or.cond.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !35

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %2 = icmp eq i64 %i.k, 0
  br i1 %2, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !397
  %i.n = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #23, !noalias !397 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !397
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.k), !noalias !397
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.q, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEE17new_uninitializedCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.n, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.i
  %i.s = icmp ult i64 %i.d, 8
  %i.t = lshr i64 %i.f, 3
  %i.u = mul nuw nsw i64 %i.t, 7
  %.sroa.07.0.i.i = select i1 %i.s, i64 %i.d, i64 %i.u
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEE17new_uninitializedCsj34PGqTgg0L_16deltalake_lakefs.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEE17new_uninitializedCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.j, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.r, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !412, !noalias !413, !nonnull !7, !noundef !7 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.v, i64 %.pre-phi, i1 false), !noalias !414
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !412, !noalias !413, !noundef !7 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEE17new_uninitializedCsj34PGqTgg0L_16deltalake_lakefs.exit
  %.val3.i.i.i = load <16 x i8>, ptr %i.v, align 16, !noalias !415
  %i.z = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ad = ptrtoint ptr %i.v to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.q
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.r, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %i.ax, %bb.r ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1Y_14AttributeValueEEENCNvMse_B1D_B1A_15clone_from_impl0EECsj34PGqTgg0L_16deltalake_lakefs(i64 %.sroa.012.029.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #24
          to label %.body unwind label %bb.t, !noalias !412

bb.j:                                             ; preds = %_RNvYTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB5_14AttributeValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %.lr.ph.i.i
  %.sroa.012.029.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bf, %_RNvYTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB5_14AttributeValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.013.028.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB5_14AttributeValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ] ; 2 uses
  %.sroa.6.027.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB5_14AttributeValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ] ; 2 uses
  %.sroa.814.026.i.i = phi i16 [ %i.aa, %.lr.ph.i.i ], [ %i.an, %_RNvYTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB5_14AttributeValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ] ; 2 uses
  %.sroa.1015.025.i.i = phi i64 [ %i.x, %.lr.ph.i.i ], [ %i.aq, %_RNvYTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB5_14AttributeValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.not12.i.i.i = icmp eq i16 %.sroa.814.026.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.af = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.sroa.6.027.i.i, %bb.j ] ; 2 uses
  %i.ag = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.sroa.013.028.i.i, %bb.j ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.af, align 16, !noalias !418
  %i.ah = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -768 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ah to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.027.i.i, %bb.j ], [ %i.aj, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.028.i.i, %bb.j ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.026.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ak = add i16 %.lcssa.i.i.i, -1
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = and i16 %i.ak, %.lcssa.i.i.i
  %i.ao = sub nsw i64 0, %i.am
  %i.ap = getelementptr inbounds [48 x i8], ptr %.sroa.013.1.i.i, i64 %i.ao ; 3 uses
  %i.aq = add i64 %.sroa.1015.025.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !414
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  %i.as = load i64, ptr %i.ar, align 8, !range !189, !alias.scope !431, !noalias !432, !noundef !7 ; 2 uses
  %i.at = add nsw i64 %i.as, 9223372036854775807
  %i.au = icmp ugt i64 %i.as, -9223372036854775808
  %i.av = select i1 %i.au, i64 %i.at, i64 6
  switch i64 %i.av, label %bb.k [
    i64 0, label %_RNvXsb_NtCsjyY8HP3IvQ6_12object_store10attributesNtB5_9AttributeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.sink.split.i.i
    i64 1, label %bb.l
    i64 2, label %bb.m
    i64 3, label %bb.n
    i64 4, label %bb.o
    i64 5, label %bb.p
    i64 6, label %bb.q
  ]

bb.k:                                             ; preds = %.loopexit.i.i
  unreachable

bb.l:                                             ; preds = %.loopexit.i.i
  br label %_RNvXsb_NtCsjyY8HP3IvQ6_12object_store10attributesNtB5_9AttributeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.sink.split.i.i

bb.m:                                             ; preds = %.loopexit.i.i
  br label %_RNvXsb_NtCsjyY8HP3IvQ6_12object_store10attributesNtB5_9AttributeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.sink.split.i.i

bb.n:                                             ; preds = %.loopexit.i.i
  br label %_RNvXsb_NtCsjyY8HP3IvQ6_12object_store10attributesNtB5_9AttributeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.sink.split.i.i

bb.o:                                             ; preds = %.loopexit.i.i
  br label %_RNvXsb_NtCsjyY8HP3IvQ6_12object_store10attributesNtB5_9AttributeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.sink.split.i.i

bb.p:                                             ; preds = %.loopexit.i.i
  br label %_RNvXsb_NtCsjyY8HP3IvQ6_12object_store10attributesNtB5_9AttributeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.sink.split.i.i

bb.q:                                             ; preds = %.loopexit.i.i
  invoke void @_RNvXs0_NtCs6Po7BT7Nknu_5alloc6borrowINtB5_3CoweENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar)
          to label %_RNvXsb_NtCsjyY8HP3IvQ6_12object_store10attributesNtB5_9AttributeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i unwind label %bb.i, !noalias !414

_RNvXsb_NtCsjyY8HP3IvQ6_12object_store10attributesNtB5_9AttributeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.sink.split.i.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %.loopexit.i.i
  %.sink.i.i = phi i64 [ -9223372036854775802, %bb.p ], [ -9223372036854775803, %bb.o ], [ -9223372036854775804, %bb.n ], [ -9223372036854775805, %bb.m ], [ -9223372036854775806, %bb.l ], [ -9223372036854775807, %.loopexit.i.i ]
  store i64 %.sink.i.i, ptr %i.a, align 8, !alias.scope !433, !noalias !434
  br label %_RNvXsb_NtCsjyY8HP3IvQ6_12object_store10attributesNtB5_9AttributeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i

_RNvXsb_NtCsjyY8HP3IvQ6_12object_store10attributesNtB5_9AttributeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i: ; preds = %_RNvXsb_NtCsjyY8HP3IvQ6_12object_store10attributesNtB5_9AttributeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.sink.split.i.i, %bb.q
  %i.aw = getelementptr inbounds i8, ptr %i.ap, i64 -24
  invoke void @_RNvXs0_NtCs6Po7BT7Nknu_5alloc6borrowINtB5_3CoweENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aw)
          to label %_RNvYTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB5_14AttributeValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i unwind label %bb.r, !noalias !414

bb.r:                                             ; preds = %_RNvXsb_NtCsjyY8HP3IvQ6_12object_store10attributesNtB5_9AttributeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #24
          to label %.body.i.i unwind label %bb.s, !noalias !414

bb.s:                                             ; preds = %bb.r
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !414
  unreachable

_RNvYTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB5_14AttributeValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %_RNvXsb_NtCsjyY8HP3IvQ6_12object_store10attributesNtB5_9AttributeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i
  %i.az = ptrtoint ptr %i.ap to i64
  %i.ba = sub i64 %i.ad, %i.az
  %i.bb = sdiv exact i64 %i.ba, 48                ; 2 uses
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = getelementptr inbounds [48 x i8], ptr %.sroa.0.0, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.be, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !414
  %i.bf = add nsw i64 %i.bb, 1
  %i.bg = icmp eq i64 %i.aq, 0
  br i1 %i.bg, label %.loopexit, label %bb.j

bb.t:                                             ; preds = %.body.i.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !414
  unreachable

bb.u:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1p_14AttributeValueEEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %i.b) #24
          to label %bb.w unwind label %bb.v

.loopexit:                                        ; preds = %_RNvYTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB5_14AttributeValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEE17new_uninitializedCsj34PGqTgg0L_16deltalake_lakefs.exit
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !413, !noalias !412
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !412, !noalias !413, !noundef !7
  store i64 %i.bj, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !413, !noalias !412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.u

bb.v:                                             ; preds = %.body
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.w:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !435, !noundef !7 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1d_ENtNtB1h_5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
