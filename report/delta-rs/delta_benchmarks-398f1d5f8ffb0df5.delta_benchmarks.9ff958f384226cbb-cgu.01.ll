inline.NumInlined: 8088
inline.NumDeleted: 2392
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs3_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEE11extend_withCsdJxlLsGgtXr_16delta_benchmarks:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sink18.i.sroa.gep1.i, i64 48, i1 false), !noalias !9132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9137
  br label %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.s:                                             ; preds = %._crit_edge
  store i64 %i.j, ptr %i.b, align 8
  %i.aq = load i64, ptr %2, align 8, !range !37, !alias.scope !9147, !noundef !3
  %i.ar = icmp eq i64 %i.aq, 3
  br i1 %i.ar, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %2)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.t, %bb.s, %._crit_edge.thread
  ret void

._crit_edge.thread:                               ; preds = %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit, %._crit_edge
  %.sroa.0.0.lcssa47 = phi ptr [ %i.n, %._crit_edge ], [ %i.au, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit ]
  %storemerge.lcssa46 = phi i64 [ %i.j, %._crit_edge ], [ %i.w, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit ]
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.lcssa47, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.as = add i64 %storemerge.lcssa46, 1
  store i64 %i.as, ptr %i.b, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %bb.d
  %i.at = add nuw i64 %.sroa.03.037, 1            ; 2 uses
  store i64 %i.x, ptr %.sroa.0.038, align 8
  %.sroa.5.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.038, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa.0.0.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.038, i64 56 ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %1
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.d

bb.u:                                             ; preds = %bb.v
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

.noexc14:                                         ; preds = %bb.v, %bb.c
  resume { ptr, i32 } %i.g

bb.v:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %2)
          to label %.noexc14 unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionjEE11extend_withCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9150, !noundef !3 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !9, !alias.scope !9150, !noundef !3
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionjEE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 16)
  %.pre = load i64, ptr %i.a, align 8
  br label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionjEE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionjEE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3
  %i.i = icmp ult i64 %i.f, 576460752303423488
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.f ; 3 uses
  %i.k = icmp ugt i64 %1, 1
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionjEE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.l = trunc nuw i64 %2 to i1
  %spec.select.i = select i1 %i.l, i64 %3, i64 undef ; 9 uses
  %i.m = add i64 %1, -1                           ; 2 uses
  %i.n = add i64 %1, -2
  %xtraiter = and i64 %i.m, 7                     ; 3 uses
  %i.o = icmp ult i64 %i.n, 7
  br i1 %i.o, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.m, -8
  br label %bb.f

._crit_edge.thread.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.thread.unr-lcssa, %.lr.ph
  %.sroa.0.023.epil.init = phi ptr [ %i.j, %.lr.ph ], [ %i.ak, %._crit_edge.thread.unr-lcssa ]
  %lcmp.mod32 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.sroa.0.023.epil = phi ptr [ %.sroa.0.023.epil.init, %.epil.preheader ], [ %i.q, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  store i64 %2, ptr %.sroa.0.023.epil, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.023.epil, i64 8
  store i64 %spec.select.i, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.023.epil, i64 16 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread, label %bb.c, !llvm.loop !9153

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge.thread.unr-lcssa
  %.lcssa = phi ptr [ %i.ak, %._crit_edge.thread.unr-lcssa ], [ %i.q, %bb.c ]
  %i.r = add i64 %i.f, %1
  %i.s = add i64 %i.r, -1
  br label %bb.d

._crit_edge:                                      ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionjEE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.sroa.0.0.lcssa30 = phi ptr [ %.lcssa, %._crit_edge.thread ], [ %i.j, %._crit_edge ] ; 2 uses
  %storemerge.lcssa29 = phi i64 [ %i.s, %._crit_edge.thread ], [ %i.f, %._crit_edge ]
  store i64 %2, ptr %.sroa.0.0.lcssa30, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa30, i64 8
  store i64 %3, ptr %i.t, align 8
  %i.u = add i64 %storemerge.lcssa29, 1
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %storemerge20 = phi i64 [ %i.u, %bb.d ], [ %i.f, %._crit_edge ]
  store i64 %storemerge20, ptr %i.a, align 8
  ret void

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %.sroa.0.023 = phi ptr [ %i.j, %.lr.ph.new ], [ %i.ak, %bb.f ] ; 17 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.f ]
  store i64 %2, ptr %.sroa.0.023, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 8
  store i64 %spec.select.i, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 16
  store i64 %2, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 24
  store i64 %spec.select.i, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 32
  store i64 %2, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 40
  store i64 %spec.select.i, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 48
  store i64 %2, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 56
  store i64 %spec.select.i, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 64
  store i64 %2, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 72
  store i64 %spec.select.i, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 80
  store i64 %2, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 88
  store i64 %spec.select.i, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 96
  store i64 %2, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 104
  store i64 %spec.select.i, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 112
  store i64 %2, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 120
  store i64 %spec.select.i, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 128 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.thread.unr-lcssa, label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source27TableProviderFilterPushDownE11extend_withCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i8 noundef range(i8 0, 3) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9155, !noundef !3 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !9, !alias.scope !9155, !noundef !3
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source27TableProviderFilterPushDownE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  %.pre = load i64, ptr %i.a, align 8
  br label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source27TableProviderFilterPushDownE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source27TableProviderFilterPushDownE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr i8, ptr %i.h, i64 %i.f     ; 2 uses
  %i.k = icmp ugt i64 %1, 1
  br i1 %i.k, label %._crit_edge.thread, label %._crit_edge

._crit_edge.thread:                               ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source27TableProviderFilterPushDownE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.l = add i64 %1, -1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.j, i8 %2, i64 %i.l, i1 false)
  %i.m = add i64 %i.f, %1                         ; 2 uses
  %i.n = add i64 %i.m, -1
  %3 = getelementptr i8, ptr %i.h, i64 %i.m
  %scevgep = getelementptr i8, ptr %3, i64 -1
  br label %bb.c

._crit_edge:                                      ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source27TableProviderFilterPushDownE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.sroa.0.0.lcssa29 = phi ptr [ %scevgep, %._crit_edge.thread ], [ %i.j, %._crit_edge ]
  %storemerge.lcssa28 = phi i64 [ %i.n, %._crit_edge.thread ], [ %i.f, %._crit_edge ]
  store i8 %2, ptr %.sroa.0.0.lcssa29, align 1
  %i.o = add i64 %storemerge.lcssa28, 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %storemerge19 = phi i64 [ %i.o, %bb.c ], [ %i.f, %._crit_edge ]
  store i64 %storemerge19, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecyE11extend_withCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9158, !noundef !3 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !9, !alias.scope !9158, !noundef !3
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecyE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 8)
  %.pre = load i64, ptr %i.a, align 8
  br label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecyE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecyE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3
  %i.i = icmp ult i64 %i.f, 1152921504606846976
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.f ; 4 uses
  %i.k = icmp ugt i64 %1, 1
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecyE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.l = add i64 %1, -1                           ; 2 uses
  %min.iters.check = icmp ult i64 %1, 5
  br i1 %min.iters.check, label %.lr.ph.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.l, -4                       ; 4 uses
  %i.m = shl i64 %n.vec, 3
  %i.n = getelementptr i8, ptr %i.j, i64 %i.m     ; 2 uses
  %i.o = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8
  store <2 x i64> %broadcast.splat, ptr %i.q, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !9161

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread, label %.lr.ph.preheader30

.lr.ph.preheader30:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.0.021.ph = phi ptr [ %i.j, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  %.sroa.03.020.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph

._crit_edge.thread:                               ; preds = %.lr.ph, %middle.block
  %.lcssa = phi ptr [ %i.n, %middle.block ], [ %i.w, %.lr.ph ]
  %i.s = add i64 %i.f, %1
  %i.t = add i64 %i.s, -1
  br label %bb.c

._crit_edge:                                      ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecyE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.sroa.0.0.lcssa28 = phi ptr [ %.lcssa, %._crit_edge.thread ], [ %i.j, %._crit_edge ]
  %storemerge.lcssa27 = phi i64 [ %i.t, %._crit_edge.thread ], [ %i.f, %._crit_edge ]
  store i64 %2, ptr %.sroa.0.0.lcssa28, align 8
  %i.u = add i64 %storemerge.lcssa27, 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %storemerge18 = phi i64 [ %i.u, %bb.c ], [ %i.f, %._crit_edge ]
  store i64 %storemerge18, ptr %i.a, align 8
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader30, %.lr.ph
  %.sroa.0.021 = phi ptr [ %i.w, %.lr.ph ], [ %.sroa.0.021.ph, %.lr.ph.preheader30 ] ; 2 uses
  %.sroa.03.020 = phi i64 [ %i.v, %.lr.ph ], [ %.sroa.03.020.ph, %.lr.ph.preheader30 ]
  %i.v = add nuw i64 %.sroa.03.020, 1             ; 2 uses
  store i64 %2, ptr %.sroa.0.021, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.021, i64 8 ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %1
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !9164
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE6removeCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([640 x i8]) align 8 captures(none) dereferenceable(640) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  %.sroa.6 = alloca [632 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9165)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9165, !noalias !9168, !noundef !3 ; 5 uses
  %i.c = icmp ult i64 %i.b, 14411518807585588
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE10try_removeCsdJxlLsGgtXr_16delta_benchmarks.exit, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE10try_removeCsdJxlLsGgtXr_16delta_benchmarks.exit.thread

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE10try_removeCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !9165, !noalias !9168, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [640 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load i64, ptr %i.f, align 8, !noalias !9165 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(632) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(632) %.sroa.6.0..sroa_idx2, i64 632, i1 false), !noalias !9165
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 640
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nsw i64 %i.i, 640
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !9170
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !9165, !noalias !9168
  %.not = icmp eq i64 %.sroa.0.0.copyload1, 15
  br i1 %.not, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE10try_removeCsdJxlLsGgtXr_16delta_benchmarks.exit.thread, label %bb.b, !prof !9171

bb.b:                                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE10try_removeCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(632) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(632) %.sroa.6, i64 632, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE10try_removeCsdJxlLsGgtXr_16delta_benchmarks.exit.thread: ; preds = %bb.a, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE10try_removeCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE10try_removeCsdJxlLsGgtXr_16delta_benchmarks.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 14411518807585588
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !9, !noundef !3
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecIBL_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEEINtB2_12SpecFromIterBU_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB29_3map3MapINtNtNtB2d_5slice4iter4IterIBL_NtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4K_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14build_order_by0EINtNtB2d_6result6ResultNtNtB2d_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE9from_iterCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9172)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9175
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB3a_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14build_order_by0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(48) %1), !noalias !9172
  %i.j = load i64, ptr %i.f, align 8, !range !43, !noalias !9175, !noundef !3
  %.not.i = icmp eq i64 %i.j, -9223372036854775808
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !9175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !9175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !9175
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB3a_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14build_order_by0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.e unwind label %bb.d, !noalias !9172

end_hunk_0
begin_hunk_1_@_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB2c_6filter6FilterIB28_INtNtNtB2g_5slice4iter4IterINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4Y_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins0_0ENCB4R_s1_0EINvMs_BW_BU_9from_nameRNtNtB6_6string6StringEEE9from_iterCsdJxlLsGgtXr_16delta_benchmarks:bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.g) #23
          to label %bb.k unwind label %bb.j, !noalias !9873

.loopexit11.i:                                    ; preds = %.noexc9.i, %.noexc8.i, %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !9881
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB2q_6filter6FilterIB2m_INtNtNtB2u_5slice4iter4IterINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB5c_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins0_0ENCB55_s1_0EINvMs_B13_B11_9from_nameRNtNtB6_6string6StringEEE9from_iterCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.j:                                             ; preds = %.body.i, %bb.b
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !9873
  unreachable

bb.k:                                             ; preds = %.body.i, %bb.b
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.l, %bb.b ]
  resume { ptr, i32 } %.pn.i

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB2q_6filter6FilterIB2m_INtNtNtB2u_5slice4iter4IterINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB5c_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins0_0ENCB55_s1_0EINvMs_B13_B11_9from_nameRNtNtB6_6string6StringEEE9from_iterCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBN_INtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB3d_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins0_0ENCB36_s1_0EINvMs_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6d_6Column9from_nameRNtNtB1R_6string6StringEENtNtNtB9_6traits8iterator8Iterator4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i, %.loopexit11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecRINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB2_12SpecFromIterBU_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2m_3map3MapINtNtNtB2q_5slice4iter4IterNtNtB6_6string6StringENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4m_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans_0EINtNtB2q_6result6ResultNtNtB2q_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE9from_iterCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9894)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9897
  %i.f = tail call noundef align 8 ptr @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2n_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %1), !noalias !9894 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9897
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2n_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1), !noalias !9894
  %i.g = load i64, ptr %i.d, align 8, !noalias !9897, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9897
  %i.h = tail call i64 @llvm.uadd.sat.i64(i64 %i.g, i64 1)
  %.sroa.0.0.i.i = tail call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.h, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9897
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !9894
  %i.i = load i64, ptr %i.b, align 8, !range !4, !noalias !9897, !noundef !3
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !43, !noalias !9897, !noundef !3 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.c, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.m, align 8, !noalias !9897
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #21, !noalias !9894
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.b
  %i.o = load ptr, ptr %i.m, align 8, !noalias !9897, !nonnull !3, !noundef !3 ; 2 uses
  %i.p = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9897
  store ptr %i.f, ptr %i.o, align 8, !noalias !9894
  store i64 %i.l, ptr %i.e, align 8, !noalias !9897
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !9897
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !9897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9897
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !9894
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9902)
  %i.q = invoke noundef align 8 ptr @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2n_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !9894 ; 2 uses

.noexc.i:                                         ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %.not6.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not6.i.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecRINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2h_3map3MapINtNtNtB2l_5slice4iter4IterNtNtB6_6string6StringENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4h_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans_0EINtNtB2l_6result6ResultNtNtB2l_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE11spec_extendCsdJxlLsGgtXr_16delta_benchmarks.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc9.i
  %i.r = phi ptr [ %i.af, %.noexc9.i ], [ %i.q, %.noexc.i ]
  %i.s = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !9905, !noalias !9906, !noundef !3 ; 4 uses
  %i.t = icmp ult i64 %i.s, 1152921504606846976
  call void @llvm.assume(i1 %i.t)
  %i.u = load i64, ptr %i.e, align 8, !range !9, !alias.scope !9905, !noalias !9906, !noundef !3
  %i.v = icmp eq i64 %i.s, %i.u
  br i1 %i.v, label %bb.d, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9909
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2n_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c)
          to label %.noexc7.i unwind label %.loopexit.i, !noalias !9894

.noexc7.i:                                        ; preds = %bb.d
  %i.w = load i64, ptr %i.a, align 8, !noalias !9909, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9909
  %i.x = call i64 @llvm.uadd.sat.i64(i64 %i.w, i64 1) ; 2 uses
  %i.y = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !9910, !noalias !9906, !noundef !3 ; 2 uses
  %i.z = load i64, ptr %i.e, align 8, !range !9, !alias.scope !9910, !noalias !9906, !noundef !3
  %i.aa = sub i64 %i.z, %i.y
  %i.ab = icmp ugt i64 %i.x, %i.aa
  br i1 %i.ab, label %bb.e, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i, !prof !10

bb.e:                                             ; preds = %.noexc7.i
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.y, i64 noundef range(i64 1, 0) %i.x, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i unwind label %.loopexit.i, !noalias !9894

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i: ; preds = %bb.e, %.noexc7.i, %.lr.ph.i.i.i
  %i.ac = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !9905, !noalias !9906, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.s
  store ptr %i.r, ptr %i.ad, align 8, !noalias !9894
  %i.ae = add nuw nsw i64 %i.s, 1
  store i64 %i.ae, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !9905, !noalias !9906
  %i.af = invoke noundef align 8 ptr @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2n_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.noexc9.i unwind label %.loopexit.i, !noalias !9894 ; 2 uses

.noexc9.i:                                        ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecRINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2h_3map3MapINtNtNtB2l_5slice4iter4IterNtNtB6_6string6StringENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4h_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans_0EINtNtB2l_6result6ResultNtNtB2l_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE11spec_extendCsdJxlLsGgtXr_16delta_benchmarks.exit.i, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !9894, !noalias !9913
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ag, align 8, !alias.scope !9894, !noalias !9913
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ah, align 8, !alias.scope !9894, !noalias !9913
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecRINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB2_18SpecFromIterNestedB11_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2A_3map3MapINtNtNtB2E_5slice4iter4IterNtNtB6_6string6StringENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4A_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans_0EINtNtB2E_6result6ResultNtNtB2E_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE9from_iterCsdJxlLsGgtXr_16delta_benchmarks.exit

.loopexit.i:                                      ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i, %bb.e, %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp.i:                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.h, !noalias !9894

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecRINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2h_3map3MapINtNtNtB2l_5slice4iter4IterNtNtB6_6string6StringENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4h_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans_0EINtNtB2l_6result6ResultNtNtB2l_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE11spec_extendCsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %.noexc9.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9897
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !9913
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecRINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB2_18SpecFromIterNestedB11_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2A_3map3MapINtNtNtB2E_5slice4iter4IterNtNtB6_6string6StringENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4A_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans_0EINtNtB2E_6result6ResultNtNtB2E_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE9from_iterCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.h:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !9894
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.g
  resume { ptr, i32 } %lpad.phi.i

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecRINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB2_18SpecFromIterNestedB11_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2A_3map3MapINtNtNtB2E_5slice4iter4IterNtNtB6_6string6StringENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4A_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans_0EINtNtB2E_6result6ResultNtNtB2E_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE9from_iterCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.f, %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecRINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2h_3map3MapINtNtNtB2l_5slice4iter4IterNtNtB6_6string6StringENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4h_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans_0EINtNtB2l_6result6ResultNtNtB2l_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE11spec_extendCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9897
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecReEINtB2_12SpecFromIterBU_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE9from_iterCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9917)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9919
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9923)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !2711, !alias.scope !9926, !noalias !9914, !noundef !3
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !9926, !noalias !9914, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !9926, !noalias !9914, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9927)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !9930, !noalias !9931, !noundef !3 ; 5 uses
  %.promoted.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !9930, !noalias !9931 ; 2 uses
  %i.l = icmp ult i64 %i.k, %.promoted.i.i.i.i
  br i1 %i.l, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %.not.i.i.i.i = icmp ugt i64 %i.k, %.val1.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load i8, ptr %i.n, align 8, !alias.scope !9930, !noalias !9931 ; 2 uses
  %i.p = zext nneg i8 %i.o to i64                 ; 4 uses
  %2 = add i8 %i.o, -1
  %i.q = icmp ult i8 %2, 4
  br i1 %.not.i.i.i.i, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i, label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i
  %i.r = getelementptr i8, ptr %i.m, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  tail call void @llvm.assume(i1 %i.q)
  %.pre.i.i.i.i = load i8, ptr %i.s, align 1, !alias.scope !9930, !noalias !9931 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.split.i.i.i.i
  %i.t = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.split.i.i.i.i ], [ %i.ai, %bb.h ] ; 3 uses
  %i.u = sub nuw i64 %i.k, %i.t                   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.t ; 2 uses
  %i.w = icmp samesign ult i64 %i.u, 16
  br i1 %i.w, label %.preheader.i.i.i.i.i, label %bb.d

.preheader.i.i.i.i.i:                             ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.x = tail call { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef range(i64 0, -9223372036854775808) %i.u), !noalias !9933
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ %i.u, %bb.e ], [ %.sroa.01.05.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ 0, %bb.e ], [ 1, %.lr.ph.i.i.i.i.i ]
  %i.y = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i, 0
  %i.z = insertvalue { i64, i64 } %i.y, i64 %.sroa.01.0.lcssa.i.i.i.i.i, 1
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.e
  %.sroa.01.05.i.i.i.i.i = phi i64 [ %i.ad, %bb.e ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.01.05.i.i.i.i.i
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !9934, !noalias !9933, !noundef !3
  %i.ac = icmp eq i8 %i.ab, %.pre.i.i.i.i
  br i1 %i.ac, label %._crit_edge.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ad, %i.u
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.d
  %.merged.i.i.i.i.i = phi { i64, i64 } [ %i.z, %._crit_edge.i.i.i.i.i ], [ %i.x, %bb.d ] ; 2 uses
  %i.ae = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 0
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i
  %i.ag = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 1
  %i.ah = add i64 %i.t, 1
  %i.ai = add i64 %i.ah, %i.ag                    ; 7 uses
  store i64 %i.ai, ptr %i.i, align 8, !alias.scope !9930, !noalias !9931
  %.not12.i.i.i.i = icmp ult i64 %i.ai, %i.p
  %.not13.i.i.i.i = icmp ugt i64 %i.ai, %.val1.i.i.i
  %or.cond.i.i.i.i = or i1 %.not12.i.i.i.i, %.not13.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i
  store i64 %i.k, ptr %i.i, align 8, !alias.scope !9930, !noalias !9931
  br label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i

bb.h:                                             ; preds = %bb.i, %bb.f
  %i.aj = icmp ult i64 %i.k, %i.ai
  br i1 %i.aj, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i, label %bb.c

bb.i:                                             ; preds = %bb.f
  %i.ak = sub nuw i64 %i.ai, %i.p                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ak
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.al, ptr nonnull %i.m, i64 %i.p), !noalias !9931
  %i.am = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.am, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i, label %bb.h

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i: ; preds = %bb.i
  %i.an = load i64, ptr %1, align 8, !alias.scope !9926, !noalias !9914, !noundef !3 ; 2 uses
  %i.ao = sub nuw i64 %i.ak, %i.an
  store i64 %i.ai, ptr %1, align 8, !alias.scope !9926, !noalias !9914
  br label %select.unfold.i

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i: ; preds = %bb.h, %bb.g, %.lr.ph.i.i.i.i, %bb.b
  store i8 1, ptr %i.d, align 1, !alias.scope !9937, !noalias !9914
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aq = load i8, ptr %i.ap, align 8, !range !2711, !alias.scope !9937, !noalias !9914, !noundef !3
  %i.ar = trunc nuw i8 %i.aq to i1
  %.pre.i2.i.i.i = load i64, ptr %1, align 8, !alias.scope !9937, !noalias !9914 ; 3 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre2.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !9937, !noalias !9914 ; 2 uses
  %.not.i3.i.i.i = icmp ne i64 %.pre2.i.i.i.i, %.pre.i2.i.i.i
  %or.cond.not.i.i.i.i = select i1 %i.ar, i1 true, i1 %.not.i3.i.i.i
  %i.as = sub nuw i64 %.pre2.i.i.i.i, %.pre.i2.i.i.i
  br i1 %or.cond.not.i.i.i.i, label %select.unfold.i, label %bb.q

select.unfold.i:                                  ; preds = %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i
  %.sroa.4.1.i.i.i = phi i64 [ %i.ao, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i ], [ %i.as, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i ]
  %.pn.i = phi i64 [ %i.an, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i ], [ %.pre.i2.i.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9919
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !9919
  %i.at = load i64, ptr %i.a, align 8, !range !4, !noalias !9919, !noundef !3
  %i.au = trunc nuw i64 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !range !43, !noalias !9919, !noundef !3 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.au, label %bb.j, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i, !prof !10

bb.j:                                             ; preds = %select.unfold.i
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !9919
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.aw, i64 %i.ay) #21, !noalias !9919
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %select.unfold.i
  %.sroa.0.1.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.pn.i
  %i.az = load ptr, ptr %i.ax, align 8, !noalias !9919, !nonnull !3, !noundef !3 ; 5 uses
  %i.ba = icmp ugt i64 %i.aw, 3
  tail call void @llvm.assume(i1 %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9919
  store ptr %.sroa.0.1.i.i.i, ptr %i.az, align 8, !noalias !9919
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %.sroa.4.1.i.i.i, ptr %i.bb, align 8, !noalias !9919
  store i64 %i.aw, ptr %i.c, align 8, !noalias !9919
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.az, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !9919
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !9919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9919
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false), !noalias !9914
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9940)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9948)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 2 uses
  %.promoted.i.i.i = load i8, ptr %i.bc, align 1, !alias.scope !9950, !noalias !9955
  %.promoted13.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !9956, !noalias !9955 ; 4 uses
  %i.bd = trunc nuw i8 %.promoted.i.i.i to i1
  br i1 %i.bd, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCsdJxlLsGgtXr_16delta_benchmarks.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.be, align 8, !alias.scope !9950, !noalias !9955, !nonnull !3, !noundef !3 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val1.i.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !9950, !noalias !9955, !noundef !3 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !9957, !noalias !9960, !noundef !3 ; 5 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.bh, %.val1.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bk = load i8, ptr %i.bj, align 8, !alias.scope !9956, !noalias !9955 ; 2 uses
  %i.bl = zext nneg i8 %i.bk to i64               ; 4 uses
  %3 = add i8 %i.bk, -1
  %i.bm = icmp ult i8 %3, 4
  %i.bn = getelementptr i8, ptr %i.bi, i64 %i.bl
  %i.bo = getelementptr i8, ptr %i.bn, i64 -1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bq = load i8, ptr %i.bp, align 8, !range !2711, !alias.scope !9956, !noalias !9955
  %i.br = trunc nuw i8 %i.bq to i1                ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre2.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !9956, !noalias !9955 ; 4 uses
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i.preheader

.lr.ph.split.i.i.i.preheader:                     ; preds = %.lr.ph.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.promoted17.i.i.i = load i64, ptr %i.bs, align 8, !alias.scope !9957, !noalias !9960
  br label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  %.not.i3.i.i.us.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.promoted13.i.i.i
  %or.cond.not.i.i.i.us.i.i.i = select i1 %i.br, i1 true, i1 %.not.i3.i.i.us.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9964)
  br i1 %or.cond.not.i.i.i.us.i.i.i, label %.lr.ph.split.us.split.us.i.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCsdJxlLsGgtXr_16delta_benchmarks.exit.i

.lr.ph.split.us.split.us.i.i.i:                   ; preds = %.lr.ph.split.us.i.i.i
  %.sroa.0.1.i.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.promoted13.i.i.i
  %i.bt = sub nuw i64 %.pre2.i.i.i.i.i.i, %.promoted13.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %.sroa.0.1.i.i.us.i.i.i, ptr %i.bu, align 8, !noalias !9965
  %i.bv = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i64 %i.bt, ptr %i.bv, align 8, !noalias !9965
  store i64 2, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !9966, !noalias !9965
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCsdJxlLsGgtXr_16delta_benchmarks.exit.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.split.i.i.i.preheader, %.noexc12.i
  %i.bw = phi i64 [ %i.ct, %.noexc12.i ], [ %.promoted17.i.i.i, %.lr.ph.split.i.i.i.preheader ] ; 3 uses
  %.lcssa111516.i.i.i = phi i64 [ %.lcssa1114.i.i.i, %.noexc12.i ], [ %.promoted13.i.i.i, %.lr.ph.split.i.i.i.preheader ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9962)
  call void @llvm.experimental.noalias.scope.decl(metadata !9963)
  call void @llvm.experimental.noalias.scope.decl(metadata !9964)
  %i.bx = icmp ult i64 %i.bh, %i.bw
  br i1 %i.bx, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  call void @llvm.assume(i1 %i.bm)
  %.pre.i.i.i.i.i.i = load i8, ptr %i.bo, align 1, !alias.scope !9957, !noalias !9960 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i
  %i.by = phi i64 [ %i.bw, %.lr.ph.i.i.i.i.i.i ], [ %i.cn, %bb.o ] ; 3 uses
  %i.bz = sub nuw i64 %i.bh, %i.by                ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.by ; 2 uses
  %i.cb = icmp samesign ult i64 %i.bz, 16
  br i1 %i.cb, label %.preheader.i.i.i.i.i.i.i, label %bb.l

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.k
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.cc = invoke { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ca, i64 noundef range(i64 0, -9223372036854775808) %i.bz)
          to label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i unwind label %.loopexit.i, !noalias !9919

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ %i.bz, %bb.m ], [ %.sroa.01.05.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ 0, %bb.m ], [ 1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cd = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i.i, 0
  %i.ce = insertvalue { i64, i64 } %i.cd, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i.i, 1
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.m
  %.sroa.01.05.i.i.i.i.i.i.i = phi i64 [ %i.ci, %bb.m ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.01.05.i.i.i.i.i.i.i
  %i.cg = load i8, ptr %i.cf, align 1, !alias.scope !9967, !noalias !9970, !noundef !3
  %i.ch = icmp eq i8 %i.cg, %.pre.i.i.i.i.i.i
  br i1 %i.ch, label %._crit_edge.i.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ci = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.ci, %i.bz
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.l
  %.merged.i.i.i.i.i.i.i = phi { i64, i64 } [ %i.ce, %._crit_edge.i.i.i.i.i.i.i ], [ %i.cc, %bb.l ] ; 2 uses
  %i.cj = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 0
  %i.ck = trunc nuw i64 %i.cj to i1
  br i1 %i.ck, label %bb.n, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i

bb.n:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i
  %i.cl = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 1
  %i.cm = add i64 %i.by, 1
  %i.cn = add i64 %i.cm, %i.cl                    ; 8 uses
  %.not12.i.i.i.i.i.i = icmp ult i64 %i.cn, %i.bl
  %.not13.i.i.i.i.i.i = icmp ugt i64 %i.cn, %.val1.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = or i1 %.not12.i.i.i.i.i.i, %.not13.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.co = icmp ult i64 %i.bh, %i.cn
  br i1 %i.co, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i, label %bb.k

bb.p:                                             ; preds = %bb.n
  %i.cp = sub nuw i64 %i.cn, %i.bl                ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.cp
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.cq, ptr nonnull %i.bi, i64 %i.bl), !noalias !9971
  %i.cr = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.cr, label %select.unfold.i.i.i, label %bb.o

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i: ; preds = %bb.o, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i, %.lr.ph.split.i.i.i
  %i.cs = phi i64 [ %i.bw, %.lr.ph.split.i.i.i ], [ %i.cn, %bb.o ], [ %i.bh, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i ]
  store i8 1, ptr %i.bc, align 1, !alias.scope !9972, !noalias !9955
  %.not.i3.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.lcssa111516.i.i.i
  %or.cond.not.i.i.i.i.i.i = select i1 %i.br, i1 true, i1 %.not.i3.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i, label %select.unfold.i.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCsdJxlLsGgtXr_16delta_benchmarks.exit.i

select.unfold.i.i.i:                              ; preds = %bb.p, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i
  %i.ct = phi i64 [ %i.cs, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i ], [ %i.cn, %bb.p ]
  %.lcssa1114.i.i.i = phi i64 [ %.lcssa111516.i.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i ], [ %i.cn, %bb.p ]
  %i.cu = phi i1 [ true, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i ], [ false, %bb.p ]
  %.pn.i.i.i = phi i64 [ %.pre2.i.i.i.i.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i ], [ %i.cp, %bb.p ]
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn.i.i.i, %.lcssa111516.i.i.i
  %.sroa.0.1.i.i.i.i9.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.lcssa111516.i.i.i
  %i.cv = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !9966, !noalias !9965, !noundef !3 ; 5 uses
  %i.cw = icmp ult i64 %i.cv, 576460752303423488
  call void @llvm.assume(i1 %i.cw)
  %i.cx = load i64, ptr %i.c, align 8, !range !9, !alias.scope !9966, !noalias !9965, !noundef !3
  %i.cy = icmp eq i64 %i.cv, %i.cx
  br i1 %i.cy, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i, label %.noexc12.i

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i: ; preds = %select.unfold.i.i.i
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.cv, i64 noundef 1, i64 noundef 8, i64 noundef 16)
          to label %.noexc12.i unwind label %.loopexit.split-lp.i, !noalias !9919

.noexc12.i:                                       ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i, %select.unfold.i.i.i
  %i.cz = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !9966, !noalias !9965, !nonnull !3, !noundef !3
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.cv ; 2 uses
  store ptr %.sroa.0.1.i.i.i.i9.i, ptr %i.da, align 8, !noalias !9965
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i64 %.sroa.4.1.i.i.i.i.i, ptr %i.db, align 8, !noalias !9965
  %i.dc = add nuw nsw i64 %i.cv, 1
  store i64 %i.dc, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !9966, !noalias !9965
  br i1 %i.cu, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCsdJxlLsGgtXr_16delta_benchmarks.exit.i, label %.lr.ph.split.i.i.i

bb.q:                                             ; preds = %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i, %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !9914, !noalias !9917
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dd, align 8, !alias.scope !9914, !noalias !9917
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.de, align 8, !alias.scope !9914, !noalias !9917
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE9from_iterCsdJxlLsGgtXr_16delta_benchmarks.exit

.loopexit.i:                                      ; preds = %bb.l
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp.i:                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.s, !noalias !9919

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %.noexc12.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i, %.lr.ph.split.us.split.us.i.i.i, %.lr.ph.split.us.i.i.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9919
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !9917
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE9from_iterCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.s:                                             ; preds = %bb.r
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !9919
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.r
  resume { ptr, i32 } %lpad.phi.i

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE9from_iterCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.q, %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9919
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecTINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEINtB2_12SpecFromIterBU_INtNtNtNtB10_4iter8adapters3map3MapINtNtNtB10_5slice4iter4IterjENCNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5i_9TableScan7try_newB1x_E00EE9from_iterCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9975)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9978
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !9975, !noalias !9980, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load ptr, ptr %i.d, align 8, !alias.scope !9975, !noalias !9980, !nonnull !3, !noundef !3
  %i.e = ptrtoint ptr %.val3.i to i64
  %i.f = ptrtoint ptr %.val.i to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9978
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 64), !noalias !9978
end_hunk_1
