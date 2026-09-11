Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/markdown-fa269332a230e88d.markdown.200b78164f002d53-cgu.13?download=true
inline.NumInlined: 109
inline.NumDeleted: 47
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown:bb.a
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2KzzoC5ewhj_8markdown.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2KzzoC5ewhj_8markdown4util8edit_map7EditMapEBH_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjjIBv_NtNtCs2KzzoC5ewhj_8markdown5event5EventEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjIBC_NtNtCs2KzzoC5ewhj_8markdown5event5EventEEEEB1i_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjINtNtB7_3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTjjINtNtBG_3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEEEB1B_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTjjINtNtBG_3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEEEB1B_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjIBC_NtNtCs2KzzoC5ewhj_8markdown5event5EventEEEEB1i_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjINtNtB7_3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 115292150460684698) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %2, %1
  br i1 %i.a, label %.lr.ph.i, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip7to_impl.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.sroa.0.06.i = phi i64 [ %.sroa.05.0.i, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.0.06.i
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 73
  %i.d = tail call noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2KzzoC5ewhj_8markdown5event4NameNtB5_13SliceContains14slice_containsBG_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4)
  br i1 %i.d, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip7to_impl.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %.sroa.05.0.i = add i64 %.sroa.0.06.i, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.05.0.i, %1
  br i1 %exitcond.not, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip7to_impl.exit, label %.lr.ph.i

_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip7to_impl.exit: ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %2, %bb.a ], [ %1, %bb.b ], [ %.sroa.0.06.i, %.lr.ph.i ]
  ret i64 %.sroa.0.0.lcssa.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip3opt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 115292150460684698) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %2, %1
  br i1 %i.a, label %.lr.ph.split.us.i, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip13skip_opt_impl.exit

.lr.ph.split.us.i:                                ; preds = %bb.a, %.loopexit.split.us.us.i
  %.sroa.0.031.us.i = phi i64 [ %.lcssa, %.loopexit.split.us.us.i ], [ %2, %bb.a ] ; 5 uses
  %i.b = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.0.031.us.i ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 73 ; 2 uses
  %i.d = tail call noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2KzzoC5ewhj_8markdown5event4NameNtB5_13SliceContains14slice_containsBG_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4)
  br i1 %i.d, label %bb.b, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip13skip_opt_impl.exit

bb.b:                                             ; preds = %.lr.ph.split.us.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.f = load i8, ptr %i.e, align 8, !range !7, !alias.scope !33, !noalias !34, !noundef !4
  %.not.us.i = icmp eq i8 %i.f, 0
  br i1 %.not.us.i, label %.split.us.us.i, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip13skip_opt_impl.exit

.split.us.us.i:                                   ; preds = %bb.b
  %.sroa.021.0.us.i = add nuw nsw i64 %.sroa.0.031.us.i, 1 ; 4 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 range(i64 0, 115292150460684698) %1, i64 %.sroa.021.0.us.i) ; 3 uses
  %exitcond.not.i.peel.not = icmp ult i64 %.sroa.021.0.us.i, %1
  br i1 %exitcond.not.i.peel.not, label %bb.c, label %.split29.us.i

bb.c:                                             ; preds = %.split.us.us.i
  %i.g = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.021.0.us.i ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load i8, ptr %i.h, align 8, !range !7, !alias.scope !33, !noalias !34, !noundef !4
  %i.j = icmp ne i8 %i.i, 0                       ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.0.031.us.i, 2     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 73
  %i.m = load i8, ptr %i.l, align 1, !range !8, !alias.scope !33, !noalias !34, !noundef !4
  %i.n = load i8, ptr %i.c, align 1, !range !8, !alias.scope !33, !noalias !34, !noundef !4 ; 2 uses
  %i.o = icmp eq i8 %i.m, %i.n
  %or.cond.us.us.i.peel = and i1 %i.o, %i.j
  br i1 %or.cond.us.us.i.peel, label %.loopexit.split.us.us.i, label %.peel.next

.peel.next:                                       ; preds = %bb.c
  %exitcond.not.i16 = icmp eq i64 %1, %i.k
  br i1 %exitcond.not.i16, label %.split29.us.i, label %.lr.ph

.lr.ph:                                           ; preds = %.peel.next
  %.sroa.022.0.us.us.i.peel = select i1 %i.j, i32 0, i32 2
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %exitcond.not.i = icmp eq i64 %i.t, %umax.i
  br i1 %exitcond.not.i, label %.split29.us.i, label %bb.e, !llvm.loop !32

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.0.1.us.us.i18 = phi i64 [ %i.k, %.lr.ph ], [ %i.t, %bb.d ] ; 2 uses
  %.sroa.015.1.us.us.i17 = phi i32 [ %.sroa.022.0.us.us.i.peel, %.lr.ph ], [ %.sroa.022.0.us.us.i, %bb.d ]
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.0.1.us.us.i18 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.r = load i8, ptr %i.q, align 8, !range !7, !alias.scope !33, !noalias !34, !noundef !4
  %i.s = icmp eq i8 %i.r, 0
  %.sroa.022.0.v.us.us.i = select i1 %i.s, i32 1, i32 -1
  %.sroa.022.0.us.us.i = add i32 %.sroa.022.0.v.us.us.i, %.sroa.015.1.us.us.i17 ; 2 uses
  %i.t = add i64 %.sroa.0.1.us.us.i18, 1          ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 73
  %i.v = load i8, ptr %i.u, align 1, !range !8, !alias.scope !33, !noalias !34, !noundef !4
  %i.w = icmp eq i8 %i.v, %i.n
  %i.x = icmp eq i32 %.sroa.022.0.us.us.i, 0
  %or.cond.us.us.i = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond.us.us.i, label %.loopexit.split.us.us.i, label %bb.d, !llvm.loop !32

.loopexit.split.us.us.i:                          ; preds = %bb.e, %bb.c
  %.lcssa = phi i64 [ %i.k, %bb.c ], [ %i.t, %bb.e ] ; 3 uses
  %i.y = icmp ult i64 %.lcssa, %1
  br i1 %i.y, label %.lr.ph.split.us.i, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip13skip_opt_impl.exit

.split29.us.i:                                    ; preds = %.split.us.us.i, %.peel.next, %bb.d
  %umax.i.lcssa = phi i64 [ %umax.i, %bb.d ], [ %.sroa.021.0.us.i, %.split.us.us.i ], [ %umax.i, %.peel.next ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i.lcssa, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #18
  unreachable

_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip13skip_opt_impl.exit: ; preds = %.lr.ph.split.us.i, %bb.b, %.loopexit.split.us.us.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %2, %bb.a ], [ %.lcssa, %.loopexit.split.us.us.i ], [ %.sroa.0.031.us.i, %.lr.ph.split.us.i ], [ %.sroa.0.031.us.i, %bb.b ]
  ret i64 %.sroa.0.0.lcssa.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip7to_back(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 115292150460684698) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %2, %1
  br i1 %i.a, label %.lr.ph.i, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip7to_impl.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.sroa.0.06.i = phi i64 [ %.sroa.05.0.i, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.0.06.i
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 73
  %i.d = tail call noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2KzzoC5ewhj_8markdown5event4NameNtB5_13SliceContains14slice_containsBG_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4)
  br i1 %i.d, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip7to_impl.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %.sroa.05.0.i = add nsw i64 %.sroa.0.06.i, -1   ; 3 uses
  %i.e = icmp ult i64 %.sroa.05.0.i, %1
  br i1 %i.e, label %.lr.ph.i, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip7to_impl.exit

_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip7to_impl.exit: ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %2, %bb.a ], [ %.sroa.05.0.i, %bb.b ], [ %.sroa.0.06.i, %.lr.ph.i ]
  ret i64 %.sroa.0.0.lcssa.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip8opt_back(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 115292150460684698) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %2, %1
  br i1 %i.a, label %.lr.ph.split.i.preheader, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip13skip_opt_impl.exit

.lr.ph.split.i.preheader:                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %2
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 73 ; 2 uses
  %i.d = tail call noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2KzzoC5ewhj_8markdown5event4NameNtB5_13SliceContains14slice_containsBG_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4)
  br i1 %i.d, label %.lr.ph, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip13skip_opt_impl.exit

.loopexit.split.i:                                ; preds = %bb.d, %bb.b
  %spec.select.i.lcssa = phi i64 [ %spec.select.i.peel, %bb.b ], [ %spec.select.i, %bb.d ] ; 3 uses
  %i.e = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %spec.select.i.lcssa
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 73 ; 2 uses
  %i.g = tail call noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2KzzoC5ewhj_8markdown5event4NameNtB5_13SliceContains14slice_containsBG_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4)
  br i1 %i.g, label %.lr.ph, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip13skip_opt_impl.exit

.lr.ph:                                           ; preds = %.lr.ph.split.i.preheader, %.loopexit.split.i
  %i.h = phi ptr [ %i.f, %.loopexit.split.i ], [ %i.c, %.lr.ph.split.i.preheader ]
  %.sroa.0.031.i2 = phi i64 [ %spec.select.i.lcssa, %.loopexit.split.i ], [ %2, %.lr.ph.split.i.preheader ] ; 3 uses
  %i.i = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.0.031.i2
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.k = load i8, ptr %i.j, align 8, !range !7, !alias.scope !39, !noalias !40, !noundef !4
  %.not.i.not = icmp eq i8 %i.k, 0
  br i1 %.not.i.not, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip13skip_opt_impl.exit, label %.split.i

.split.i:                                         ; preds = %.lr.ph
  %.sroa.021.0.i = add nsw i64 %.sroa.0.031.i2, -1 ; 4 uses
  %i.l = icmp ult i64 %.sroa.021.0.i, %1
  br i1 %i.l, label %bb.b, label %.split29.us.i

bb.b:                                             ; preds = %.split.i
  %i.m = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.021.0.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = load i8, ptr %i.n, align 8, !range !7, !alias.scope !39, !noalias !40, !noundef !4
  %.not.peel = icmp eq i8 %i.o, 0                 ; 2 uses
  %spec.select.i.peel = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.021.0.i, i64 1) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 73
  %i.q = load i8, ptr %i.p, align 1, !range !8, !alias.scope !39, !noalias !40, !noundef !4
  %i.r = load i8, ptr %i.h, align 1, !range !8, !alias.scope !39, !noalias !40, !noundef !4 ; 2 uses
  %i.s = icmp eq i8 %i.q, %i.r
  %or.cond.i.peel = and i1 %i.s, %.not.peel
  br i1 %or.cond.i.peel, label %.loopexit.split.i, label %.peel.next

.peel.next:                                       ; preds = %bb.b
  %.sroa.022.0.i.peel = select i1 %.not.peel, i32 0, i32 2
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.peel.next
  %.sroa.015.1.i = phi i32 [ %.sroa.022.0.i.peel, %.peel.next ], [ %.sroa.022.0.i, %bb.d ]
  %.sroa.0.1.i = phi i64 [ %spec.select.i.peel, %.peel.next ], [ %spec.select.i, %bb.d ] ; 4 uses
  %i.t = icmp ult i64 %.sroa.0.1.i, %1
  br i1 %i.t, label %bb.d, label %.split29.us.i

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.0.1.i ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.w = load i8, ptr %i.v, align 8, !range !7, !alias.scope !39, !noalias !40, !noundef !4
  %.not = icmp eq i8 %i.w, 0
  %.sroa.022.0.v.i = select i1 %.not, i32 -1, i32 1
  %.sroa.022.0.i = add i32 %.sroa.022.0.v.i, %.sroa.015.1.i ; 2 uses
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.1.i, i64 1) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 73
  %i.y = load i8, ptr %i.x, align 1, !range !8, !alias.scope !39, !noalias !40, !noundef !4
  %i.z = icmp eq i8 %i.y, %i.r
  %i.aa = icmp eq i32 %.sroa.022.0.i, 0
  %or.cond.i = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond.i, label %.loopexit.split.i, label %bb.c, !llvm.loop !38

.split29.us.i:                                    ; preds = %.split.i, %bb.c
  %.sroa.0.1.i.lcssa = phi i64 [ %.sroa.0.1.i, %bb.c ], [ %.sroa.021.0.i, %.split.i ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.1.i.lcssa, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #18
  unreachable

_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip13skip_opt_impl.exit: ; preds = %.lr.ph, %.loopexit.split.i, %.lr.ph.split.i.preheader, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %2, %bb.a ], [ %2, %.lr.ph.split.i.preheader ], [ %.sroa.0.031.i2, %.lr.ph ], [ %spec.select.i.lcssa, %.loopexit.split.i ]
  ret i64 %.sroa.0.0.lcssa.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct14thematic_break5start(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !5, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !5, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 65
  %i.h = load i8, ptr %i.g, align 1, !range !7, !noundef !4
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5enter(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef -88)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.k = load i8, ptr %i.j, align 8, !range !7, !noundef !4
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d, %bb.e
  %.sink1 = phi i16 [ 345, %bb.e ], [ 364, %bb.d ], [ 364, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sink1, ptr %i.m, align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.sink = phi i64 [ -9223372036854775805, %bb.a ], [ -9223372036854775807, %.sink.split ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.o = load i8, ptr %i.n, align 1, !noundef !4
  switch i8 %i.o, label %.sink.split [
    i8 9, label %bb.e
    i8 32, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i16 364, ptr %i.p, align 8
  store i64 -9223372036854775808, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -9223372036854775805, ptr %i.a, align 8
  call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = load ptr, ptr %i.c, align 8, !nonnull !4, !align !5, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4, !align !5, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 37
  %i.u = load i8, ptr %i.t, align 1, !range !7, !noundef !4
  %i.v = trunc nuw i8 %i.u to i1
  %. = select i1 %i.v, i64 3, i64 -1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 404
  store i8 0, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 408
  store i8 -1, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 336
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 344
  store i64 %., ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 409
  store i8 -92, ptr %i.aa, align 1
  br label %.sink.split
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct14thematic_break6before(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(664) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.b = load i8, ptr %i.a, align 8, !range !7, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.e = load i8, ptr %i.d, align 1, !noundef !4  ; 2 uses
  switch i8 %i.e, label %bb.d [
    i8 42, label %bb.c
    i8 45, label %bb.c
    i8 95, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 416
  store i8 %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 366, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %storemerge = phi i64 [ -9223372036854775807, %bb.c ], [ -9223372036854775805, %bb.b ], [ -9223372036854775805, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct14thematic_break8at_break(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.d = load i8, ptr %i.c, align 8, !range !7, !noundef !4
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %i.h = icmp eq i8 %i.g, %i.b
  %or.cond = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  %i.k = icmp ult i64 %i.j, 3
  %i.l = icmp ne i8 %i.g, 10
  %or.cond7.not = select i1 %i.e, i1 %i.l, i1 false
  %or.cond9 = select i1 %i.k, i1 true, i1 %or.cond7.not
  store i8 0, ptr %i.a, align 8
  store i64 0, ptr %i.i, align 8
  br i1 %or.cond9, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5enter(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef -87)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 365, ptr %i.m, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef -88)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 653
  store i8 0, ptr %i.n, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.sink = phi i64 [ -9223372036854775807, %bb.c ], [ -9223372036854775806, %bb.d ], [ -9223372036854775805, %bb.b ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct14thematic_break8sequence(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 10)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.d = load i8, ptr %i.c, align 8, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.f = load i8, ptr %i.e, align 8, !range !7, !noundef !4
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.i = load i8, ptr %i.h, align 1               ; 2 uses
  %i.j = icmp eq i8 %i.i, %i.d
  %or.cond = select i1 %i.g, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7consume(ptr noalias noundef nonnull align 8 dereferenceable(664) %1)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  %i.m = add i64 %i.l, 1
end_hunk_0
