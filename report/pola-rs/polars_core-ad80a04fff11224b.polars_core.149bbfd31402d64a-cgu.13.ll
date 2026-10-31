Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.13?download=true
inline.NumInlined: 13797
inline.NumDeleted: 4345
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB8_9datatypes10UInt16TypeEB8_:bb.a

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.s
  %.sroa.23.2.i = phi i64 [ 0, %bb.s ], [ %.sroa.23.1.i, %._crit_edge.i.i.i.i.i ], !dbg !61203 ; 2 uses
  %.sroa.21.1.i = phi i64 [ 0, %bb.s ], [ %i.do, %._crit_edge.i.i.i.i.i ], !dbg !61203 ; 2 uses
  %.sroa.19.1.i = phi i64 [ %.sroa.19.0.i, %bb.s ], [ %i.dn, %._crit_edge.i.i.i.i.i ], !dbg !61203 ; 2 uses
  %.sroa.12.2.i = phi ptr [ %.sroa.12.0.i, %bb.s ], [ %.sroa.12.1.i, %._crit_edge.i.i.i.i.i ], !dbg !61203 ; 2 uses
  %.sroa.0.0.i8.i.i.i.i = phi i8 [ 2, %bb.s ], [ %i.dp, %._crit_edge.i.i.i.i.i ], !dbg !61221
  %i.dq = invoke { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRtECs1LHh8CLbVkQ_11polars_core(i8 noundef %.sroa.0.0.i8.i.i.i.i, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable_or_null(2) %spec.select48.i)
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61222 ; 2 uses

.noexc25:                                         ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %i.dr = extractvalue { i8, ptr } %i.dq, 0, !dbg !61223 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.dr, 2, !dbg !61224
  br i1 %.not.i.i.i.i, label %bb.w, label %bb.t, !dbg !61225

bb.t:                                             ; preds = %.noexc25
  %i.ds = extractvalue { i8, ptr } %i.dq, 1, !dbg !61223 ; 2 uses
  %i.dt = trunc nuw i8 %i.dr to i1, !dbg !61226
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ds) ]
  br i1 %i.dt, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRtINtNtNtBb_5slice4iter4ItertENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes10UInt16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRtINtNtNtBb_5slice4iter4ItertENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes10UInt16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.thread50.i, !dbg !61227

bb.u:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0.i) ]
  %i.du = icmp eq ptr %.sroa.8.0.i, %.sroa.12.0.i, !dbg !61228
  br i1 %i.du, label %bb.w, label %bb.v, !dbg !61229

bb.v:                                             ; preds = %bb.u
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.8.0.i, i64 2, !dbg !61230
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRtINtNtNtBb_5slice4iter4ItertENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes10UInt16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i, !dbg !61231

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRtINtNtNtBb_5slice4iter4ItertENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes10UInt16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i: ; preds = %bb.v, %bb.t
  %.sroa.23.4.i = phi i64 [ %.sroa.23.0.i, %bb.v ], [ %.sroa.23.2.i, %bb.t ], !dbg !61203
  %.sroa.21.3.i = phi i64 [ %.sroa.21.0.i, %bb.v ], [ %.sroa.21.1.i, %bb.t ], !dbg !61203
  %.sroa.19.3.i = phi i64 [ %.sroa.19.0.i, %bb.v ], [ %.sroa.19.1.i, %bb.t ], !dbg !61203
  %.sroa.12.4.i = phi ptr [ %.sroa.12.0.i, %bb.v ], [ %.sroa.12.2.i, %bb.t ], !dbg !61203
  %.sroa.8.2.i = phi ptr [ %i.dv, %bb.v ], [ %.sroa.8.0.i, %bb.t ], !dbg !61203
  %.sroa.534.3.i = phi ptr [ null, %bb.v ], [ %spec.select.i, %bb.t ], !dbg !61203
  %.sroa.3.0.i.pn.i.ph.ph.i.i = phi ptr [ %.sroa.8.0.i, %bb.v ], [ %i.ds, %bb.t ]
  %i.dw = load i16, ptr %.sroa.3.0.i.pn.i.ph.ph.i.i, align 2, !dbg !61232, !alias.scope !61099, !noalias !61100, !noundef !3467
  %i.dx = zext i16 %i.dw to i64, !dbg !61233
  %i.dy = shl nuw i64 %i.dx, 48, !dbg !61233
  %i.dz = or disjoint i64 %i.dy, 4294967296, !dbg !61234
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRtINtNtNtBb_5slice4iter4ItertENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes10UInt16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.thread50.i, !dbg !61235

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRtINtNtNtBb_5slice4iter4ItertENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes10UInt16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.thread50.i: ; preds = %bb.t, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRtINtNtNtBb_5slice4iter4ItertENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes10UInt16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i
  %.sroa.2.0.insert.insert.i.i65.i = phi i64 [ %i.dz, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRtINtNtNtBb_5slice4iter4ItertENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes10UInt16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i ], [ 0, %bb.t ] ; 2 uses
  %.sroa.534.264.i = phi ptr [ %.sroa.534.3.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRtINtNtNtBb_5slice4iter4ItertENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes10UInt16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i ], [ %spec.select.i, %bb.t ]
  %.sroa.8.163.i = phi ptr [ %.sroa.8.2.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRtINtNtNtBb_5slice4iter4ItertENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes10UInt16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i ], [ %.sroa.8.0.i, %bb.t ]
  %.sroa.12.362.i = phi ptr [ %.sroa.12.4.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRtINtNtNtBb_5slice4iter4ItertENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes10UInt16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i ], [ %.sroa.12.2.i, %bb.t ]
  %.sroa.19.261.i = phi i64 [ %.sroa.19.3.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRtINtNtNtBb_5slice4iter4ItertENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes10UInt16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i ], [ %.sroa.19.1.i, %bb.t ]
  %.sroa.21.260.i = phi i64 [ %.sroa.21.3.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRtINtNtNtBb_5slice4iter4ItertENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes10UInt16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i ], [ %.sroa.21.1.i, %bb.t ]
  %.sroa.23.359.i = phi i64 [ %.sroa.23.4.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRtINtNtNtBb_5slice4iter4ItertENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes10UInt16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i ], [ %.sroa.23.2.i, %bb.t ]
  %i.ea = add i32 %.promoted39, 1, !dbg !61236
  %i.eb = trunc i64 %.sroa.2.0.insert.insert.i.i65.i to i32, !dbg !61235
  %.sroa.014.0.extract.trunc.i = or i32 %.promoted39, %i.eb, !dbg !61235
  store i32 %.sroa.014.0.extract.trunc.i, ptr %.sroa.02.0.i, align 4, !dbg !61237, !noalias !61101
  %.sroa.2.0..sroa.02.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 4, !dbg !61237
  %i.ec = lshr i64 %.sroa.2.0.insert.insert.i.i65.i, 32, !dbg !61237
  %i.ed = trunc nuw i64 %i.ec to i32, !dbg !61237
  store i32 %i.ed, ptr %.sroa.2.0..sroa.02.0..sroa_idx.i, align 4, !dbg !61237, !noalias !61101
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 8, !dbg !61238
  br label %bb.r, !dbg !61202

bb.w:                                             ; preds = %bb.u, %.noexc25
  %i.ef = load i64, ptr %i.cl, align 8, !dbg !61239, !alias.scope !61097, !noundef !3467 ; 2 uses
  %i.eg = icmp ult i64 %i.ef, 1152921504606846976, !dbg !61240
  call void @llvm.assume(i1 %i.eg), !dbg !61241
  %i.eh = add nuw i64 %i.ef, %.sink4.i.i.i, !dbg !61242
  store i64 %i.eh, ptr %i.cl, align 8, !dbg !61243, !alias.scope !61097
  %i.ei = icmp eq ptr %i.cq, %i.co, !dbg !61176
  br i1 %i.ei, label %._crit_edge, label %bb.p, !dbg !61177

bb.x:                                             ; preds = %._crit_edge52, %._crit_edge, %bb.d, %bb.b
  ret void, !dbg !61244

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i, %bb.p, %bb.q
  %lpad.loopexit.split-lp64 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmINtNtB4_6option6OptiontEEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.e) #44
          to label %bb.k unwind label %bb.m, !dbg !61181
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB8_9datatypes10UInt32TypeEB8_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 16 %2, i64 noundef range(i64 0, 57646075230342349) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !61245 {
bb.a:
  %.sroa.529.i = alloca i32, align 4              ; 7 uses
  %.sroa.9.i = alloca i32, align 4                ; 5 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [72 x i8], align 8                ; 6 uses
  %i.i = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !61442
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8, !dbg !61521
  %i.k = load ptr, ptr %i.j, align 8, !dbg !61521, !nonnull !3467, !noundef !3467
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !61522
  %i.m = load i64, ptr %i.l, align 8, !dbg !61522, !noundef !3467
  call void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort17arg_sort_multiple13args_validateNtNtBa_9datatypes10UInt32TypeEBa_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 16 %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 10), !dbg !61442
  %i.n = load i64, ptr %i.i, align 8, !dbg !61523, !range !3693, !noundef !3467
  %.not = icmp eq i64 %i.n, 18, !dbg !61523
  br i1 %.not, label %bb.c, label %bb.b, !dbg !61524

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !dbg !61525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !61526
  br label %bb.y, !dbg !61527

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !61526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !61455
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32, !dbg !61528
  %i.p = load ptr, ptr %i.o, align 8, !dbg !61528, !nonnull !3467, !noundef !3467
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40, !dbg !61529
  %i.r = load i64, ptr %i.q, align 8, !dbg !61529, !noundef !3467
  call void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort17arg_sort_multiple13args_validateNtNtBa_9datatypes10UInt32TypeEBa_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 16 %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 10), !dbg !61455
  %i.s = load i64, ptr %i.h, align 8, !dbg !61530, !range !3693, !noundef !3467
  %.not13 = icmp eq i64 %i.s, 18, !dbg !61530
  br i1 %.not13, label %bb.e, label %bb.d, !dbg !61531

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false), !dbg !61532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !61533
  br label %bb.y, !dbg !61527

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !61533
  %i.t = getelementptr i8, ptr %1, i64 40, !dbg !61534
  %.val = load i64, ptr %i.t, align 8, !dbg !61534, !noundef !3467
  %i.u = icmp eq i64 %.val, 0, !dbg !61535
  %i.v = getelementptr i8, ptr %1, i64 32, !dbg !61536 ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g, !dbg !61535

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !61537
  %.val17 = load i64, ptr %i.v, align 8, !dbg !61538, !noundef !3467 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !61539
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val17, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8), !dbg !61539
  %i.w = load i64, ptr %i.b, align 8, !dbg !61539, !range !3512, !noundef !3467
  %i.x = trunc nuw i64 %i.w to i1, !dbg !61540
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !61541
  %i.z = load i64, ptr %i.y, align 8, !dbg !61541, !range !3513, !noundef !3467 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !61541 ; 2 uses
  br i1 %i.x, label %bb.h, label %bb.i, !dbg !61540, !prof !3514

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !61542
  %.val16 = load i64, ptr %i.v, align 8, !dbg !61543, !noundef !3467 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !61544
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val16, i1 noundef zeroext false, i64 noundef 4, i64 noundef 12), !dbg !61544
  %i.ab = load i64, ptr %i.a, align 8, !dbg !61544, !range !3512, !noundef !3467
  %i.ac = trunc nuw i64 %i.ab to i1, !dbg !61545
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !61546
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !61546, !range !3513, !noundef !3467 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !61546 ; 2 uses
  br i1 %i.ac, label %bb.n, label %bb.o, !dbg !61545, !prof !3514

bb.h:                                             ; preds = %bb.f
  %i.ag = load i64, ptr %i.aa, align 8, !dbg !61547
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.z, i64 %i.ag) #43, !dbg !61548
  unreachable, !dbg !61548

bb.i:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.aa, align 8, !dbg !61549, !nonnull !3467, !noundef !3467
  %i.ai = icmp ule i64 %.val17, %i.z, !dbg !61550
  tail call void @llvm.assume(i1 %i.ai), !dbg !61551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !61552
  store i64 %i.z, ptr %i.g, align 8, !dbg !61553
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !61553 ; 2 uses
  store ptr %i.ah, ptr %i.aj, align 8, !dbg !61553
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !61553 ; 4 uses
  store i64 0, ptr %i.ak, align 8, !dbg !61553
  %i.al = getelementptr i8, ptr %1, i64 8, !dbg !61554
  %.val20 = load ptr, ptr %i.al, align 8, !dbg !61554, !nonnull !3467, !noundef !3467 ; 2 uses
  %i.am = getelementptr i8, ptr %1, i64 16, !dbg !61554
  %.val21 = load i64, ptr %i.am, align 8, !dbg !61554, !noundef !3467 ; 2 uses
  %.idx55 = shl nuw nsw i64 %.val21, 4, !dbg !61555
  %i.an = getelementptr inbounds nuw i8, ptr %.val20, i64 %.idx55, !dbg !61555
  %i.ao = icmp eq i64 %.val21, 0, !dbg !61556
  br i1 %i.ao, label %._crit_edge53, label %.lr.ph52, !dbg !61472

._crit_edge53:                                    ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !61557
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !61557
  call void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort17arg_sort_multiple22arg_sort_multiple_implINtNtB6_13compare_inner7NonNullmEEBa_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 16 %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %4), !dbg !61558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !61559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !61560
  br label %bb.y, !dbg !61561

.lr.ph52:                                         ; preds = %bb.i, %bb.j
  %.sroa.0.050 = phi ptr [ %i.ap, %bb.j ], [ %.val20, %bb.i ] ; 2 uses
  %.lcssa4749 = phi i32 [ %.lcssa46, %bb.j ], [ 0, %bb.i ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.050, i64 16, !dbg !61562 ; 2 uses
  %.val23 = load ptr, ptr %.sroa.0.050, align 8, !dbg !61563, !nonnull !3467, !noundef !3467 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val23, i64 40, !dbg !61564
  %i.ar = load ptr, ptr %i.aq, align 8, !dbg !61564, !nonnull !3467, !noundef !3467 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val23, i64 48, !dbg !61565
  %i.at = load i64, ptr %i.as, align 8, !dbg !61565, !noundef !3467 ; 4 uses
  %.idx = shl i64 %i.at, 2, !dbg !61566           ; 2 uses
  %i.au = getelementptr i8, ptr %i.ar, i64 %.idx, !dbg !61566 ; 2 uses
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNullmEEE7reserveBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.at)
          to label %.noexc unwind label %bb.l, !dbg !61567

.noexc:                                           ; preds = %.lr.ph52
  %i.av = load i64, ptr %i.ak, align 8, !dbg !61568, !alias.scope !61481, !noundef !3467 ; 4 uses
  %i.aw = icmp ult i64 %i.av, 1152921504606846976, !dbg !61569
  call void @llvm.assume(i1 %i.aw), !dbg !61570
  %i.ax = icmp eq i64 %i.at, 0, !dbg !61571
  br i1 %i.ax, label %bb.j, label %.lr.ph.i, !dbg !61572

.lr.ph.i:                                         ; preds = %.noexc
  %i.ay = load ptr, ptr %i.aj, align 8, !dbg !61573, !alias.scope !61481, !nonnull !3467, !noundef !3467 ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.av, !dbg !61574 ; 6 uses
  %i.ba = add i64 %.idx, -4, !dbg !61572          ; 3 uses
  %i.bb = lshr exact i64 %i.ba, 2, !dbg !61572
  %i.bc = add nuw nsw i64 %i.bb, 1, !dbg !61572   ; 2 uses
  %min.iters.check = icmp ult i64 %i.ba, 28, !dbg !61572
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !61572

vector.memcheck:                                  ; preds = %.lr.ph.i
  %5 = shl nuw nsw i64 %i.av, 3, !dbg !61572
  %i.bd = shl i64 %i.ba, 1, !dbg !61572
  %6 = getelementptr i8, ptr %i.ay, i64 %5, !dbg !61572
  %7 = getelementptr i8, ptr %6, i64 %i.bd, !dbg !61572
  %scevgep62 = getelementptr i8, ptr %7, i64 8, !dbg !61572
  %bound0 = icmp ult ptr %i.az, %i.au, !dbg !61572
  %bound1 = icmp ult ptr %i.ar, %scevgep62, !dbg !61572
  %found.conflict = and i1 %bound0, %bound1, !dbg !61572
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bc, 9223372036854775804     ; 5 uses
  %i.be = trunc i64 %n.vec to i32
  %i.bf = add i32 %.lcssa4749, %i.be              ; 2 uses
  %i.bg = shl i64 %n.vec, 3
  %i.bh = getelementptr i8, ptr %i.az, i64 %i.bg
  %i.bi = shl i64 %n.vec, 2
  %i.bj = getelementptr i8, ptr %i.ar, i64 %i.bi
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.lcssa4749, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction = add <2 x i32> %broadcast.splat, <i32 0, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ], !dbg !61575 ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2), !dbg !61575
  %i.bk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.az, i64 %i.bk
  %i.bl = getelementptr i8, ptr %i.az, i64 %i.bk
  %next.gep63 = getelementptr i8, ptr %i.bl, i64 16
  %i.bm = shl i64 %index, 2
  %next.gep64 = getelementptr i8, ptr %i.ar, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep64, i64 8, !dbg !61576
  %wide.load = load <2 x i32>, ptr %next.gep64, align 4, !dbg !61576, !alias.scope !61482, !noalias !61483
  %wide.load65 = load <2 x i32>, ptr %i.bn, align 4, !dbg !61576, !alias.scope !61482, !noalias !61483
  %interleaved.vec = shufflevector <2 x i32> %vec.ind, <2 x i32> %wide.load, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !61577
  store <4 x i32> %interleaved.vec, ptr %next.gep, align 4, !dbg !61577, !alias.scope !61484, !noalias !61485
  %interleaved.vec66 = shufflevector <2 x i32> %step.add, <2 x i32> %wide.load65, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !61577
  store <4 x i32> %interleaved.vec66, ptr %next.gep63, align 4, !dbg !61577, !alias.scope !61484, !noalias !61485
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4), !dbg !61575
  %i.bo = icmp eq i64 %index.next, %n.vec, !dbg !61572
  br i1 %i.bo, label %middle.block, label %vector.body, !dbg !61572, !llvm.loop !61330

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, %n.vec, !dbg !61572
  br i1 %cmp.n, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB1z_9datatypes10UInt32TypeE0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.loopexit.i, label %scalar.ph.preheader, !dbg !61572

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.ph = phi i32 [ %.lcssa4749, %vector.memcheck ], [ %.lcssa4749, %.lr.ph.i ], [ %i.bf, %middle.block ]
  %.sroa.02.030.i.ph = phi ptr [ %i.az, %vector.memcheck ], [ %i.az, %.lr.ph.i ], [ %i.bh, %middle.block ]
  %.sroa.017.029.i.ph = phi ptr [ %i.ar, %vector.memcheck ], [ %i.ar, %.lr.ph.i ], [ %i.bj, %middle.block ]
  br label %scalar.ph, !dbg !61572

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.bp = phi i32 [ %i.br, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !61575 ; 2 uses
  %.sroa.02.030.i = phi ptr [ %i.bt, %scalar.ph ], [ %.sroa.02.030.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.sroa.017.029.i = phi ptr [ %i.bq, %scalar.ph ], [ %.sroa.017.029.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.017.029.i, i64 4, !dbg !61575 ; 2 uses
  %.val2.i.i = load i32, ptr %.sroa.017.029.i, align 4, !dbg !61576, !noalias !61483, !noundef !3467
  %i.br = add i32 %i.bp, 1, !dbg !61578           ; 2 uses
  store i32 %i.bp, ptr %.sroa.02.030.i, align 4, !dbg !61577, !noalias !61485
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.02.030.i, i64 4, !dbg !61577
  store i32 %.val2.i.i, ptr %i.bs, align 4, !dbg !61577, !noalias !61485
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.02.030.i, i64 8, !dbg !61579
  %i.bu = icmp eq ptr %i.bq, %i.au, !dbg !61571
  br i1 %i.bu, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB1z_9datatypes10UInt32TypeE0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.loopexit.i, label %scalar.ph, !dbg !61572, !llvm.loop !61335

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB1z_9datatypes10UInt32TypeE0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.loopexit.i: ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.bf, %middle.block ], [ %i.br, %scalar.ph ], !dbg !61578
  %.pre.i = load i64, ptr %i.ak, align 8, !dbg !61580, !alias.scope !61481
  br label %bb.j, !dbg !61580

bb.j:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB1z_9datatypes10UInt32TypeE0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.loopexit.i, %.noexc
  %.lcssa46 = phi i32 [ %.lcssa, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB1z_9datatypes10UInt32TypeE0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.loopexit.i ], [ %.lcssa4749, %.noexc ]
  %i.bv = phi i64 [ %.pre.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB1z_9datatypes10UInt32TypeE0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.loopexit.i ], [ %i.av, %.noexc ], !dbg !61580 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, 1152921504606846976, !dbg !61581
  call void @llvm.assume(i1 %i.bw), !dbg !61582
  %i.bx = add nuw nsw i64 %i.bv, %i.at, !dbg !61583
  store i64 %i.bx, ptr %i.ak, align 8, !dbg !61584, !alias.scope !61481
  %i.by = icmp eq ptr %i.ap, %i.an, !dbg !61556
  br i1 %i.by, label %._crit_edge53, label %.lr.ph52, !dbg !61472

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.l ], [ %lpad.loopexit.split-lp70, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %.pn, !dbg !61585

bb.l:                                             ; preds = %.lr.ph52
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNullmEEEEB1o_(ptr noalias noundef align 8 dereferenceable(24) %i.g) #44
          to label %bb.k unwind label %bb.m, !dbg !61560

bb.m:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.l
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !61585
  unreachable, !dbg !61585

bb.n:                                             ; preds = %bb.g
  %i.cb = load i64, ptr %i.af, align 8, !dbg !61586
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ae, i64 %i.cb) #43, !dbg !61587
  unreachable, !dbg !61587

bb.o:                                             ; preds = %bb.g
  %i.cc = load ptr, ptr %i.af, align 8, !dbg !61588, !nonnull !3467, !noundef !3467
  %i.cd = icmp ule i64 %.val16, %i.ae, !dbg !61589
  tail call void @llvm.assume(i1 %i.cd), !dbg !61590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !61591
  store i64 %i.ae, ptr %i.e, align 8, !dbg !61592
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !61592 ; 2 uses
  store ptr %i.cc, ptr %i.ce, align 8, !dbg !61592
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !61592 ; 4 uses
  store i64 0, ptr %i.cf, align 8, !dbg !61592
  %i.cg = getelementptr i8, ptr %1, i64 8, !dbg !61593
  %.val18 = load ptr, ptr %i.cg, align 8, !dbg !61593, !nonnull !3467, !noundef !3467 ; 2 uses
  %i.ch = getelementptr i8, ptr %1, i64 16, !dbg !61593
  %.val19 = load i64, ptr %i.ch, align 8, !dbg !61593, !noundef !3467 ; 2 uses
  %.idx54 = shl nuw nsw i64 %.val19, 4, !dbg !61594
  %i.ci = getelementptr inbounds nuw i8, ptr %.val18, i64 %.idx54, !dbg !61594
  %i.cj = icmp eq i64 %.val19, 0, !dbg !61595
  br i1 %i.cj, label %._crit_edge, label %.lr.ph, !dbg !61596

.lr.ph:                                           ; preds = %bb.o
  %.sroa.632.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.833.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  br label %bb.p, !dbg !61596

._crit_edge:                                      ; preds = %bb.x, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !61597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !61597
  call void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort17arg_sort_multiple22arg_sort_multiple_implINtNtCscgRAwXFJnXP_4core6option6OptionmEEBa_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 16 %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %4), !dbg !61598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !61599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !61600
  br label %bb.y, !dbg !61561

bb.p:                                             ; preds = %.lr.ph, %bb.x
  %.sroa.028.044 = phi ptr [ %.val18, %.lr.ph ], [ %i.ck, %bb.x ] ; 2 uses
  %.promoted4243 = phi i32 [ 0, %.lr.ph ], [ %.promoted40, %bb.x ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.028.044, i64 16, !dbg !61601 ; 2 uses
  %.val22 = load ptr, ptr %.sroa.028.044, align 8, !dbg !61602, !nonnull !3467, !noundef !3467 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !61603
  %i.cl = getelementptr inbounds nuw i8, ptr %.val22, i64 40, !dbg !61604
  %i.cm = load ptr, ptr %i.cl, align 8, !dbg !61604, !nonnull !3467, !noundef !3467 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.val22, i64 48, !dbg !61605
  %i.co = load i64, ptr %i.cn, align 8, !dbg !61605, !noundef !3467
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.co, !dbg !61606
  %i.cq = getelementptr inbounds nuw i8, ptr %.val22, i64 56, !dbg !61607 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !dbg !61607, !noundef !3467
  %.not14 = icmp eq ptr %i.cr, null, !dbg !61607
  %. = select i1 %.not14, ptr null, ptr %i.cq, !dbg !61608
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRmINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtB7_8iterator10BitmapIterE17new_with_validityCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cp, ptr noundef align 8 %.)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61609

bb.q:                                             ; preds = %bb.p
  %.sroa.431.8.copyload = load ptr, ptr %i.d, align 8, !dbg !61610 ; 3 uses
  %.sroa.632.8.copyload = load ptr, ptr %.sroa.632.8..sroa_idx, align 8, !dbg !61610, !nonnull !3467, !noundef !3467 ; 3 uses
  %.sroa.7.8.copyload = load ptr, ptr %.sroa.7.8..sroa_idx, align 8, !dbg !61610 ; 2 uses
  %.sroa.833.8.copyload = load i64, ptr %.sroa.833.8..sroa_idx, align 8, !dbg !61610
  %.sroa.9.8.copyload = load i64, ptr %.sroa.9.8..sroa_idx, align 8, !dbg !61610
  %.sroa.10.8.copyload = load i64, ptr %.sroa.10.8..sroa_idx, align 8, !dbg !61610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !61611
  call void @llvm.experimental.noalias.scope.decl(metadata !61513), !dbg !61612
  %.not.i.i.i = icmp eq ptr %.sroa.431.8.copyload, null, !dbg !61613 ; 2 uses
  %.val1.sink.i.i.i = select i1 %.not.i.i.i, ptr %.sroa.7.8.copyload, ptr %.sroa.632.8.copyload, !dbg !61614
  %.val.sink.i.i.i = select i1 %.not.i.i.i, ptr %.sroa.632.8.copyload, ptr %.sroa.431.8.copyload, !dbg !61614
  %i.cs = ptrtoint ptr %.val1.sink.i.i.i to i64, !dbg !61615
  %i.ct = ptrtoint ptr %.val.sink.i.i.i to i64, !dbg !61615
  %i.cu = sub nuw i64 %i.cs, %i.ct, !dbg !61615
  %.sink4.i.i.i = lshr exact i64 %i.cu, 2, !dbg !61615 ; 2 uses
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTmINtNtCscgRAwXFJnXP_4core6option6OptionmEEE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %.sink4.i.i.i)
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61616

.noexc25:                                         ; preds = %bb.q
  %i.cv = load ptr, ptr %i.ce, align 8, !dbg !61617, !alias.scope !61513, !nonnull !3467, !noundef !3467
  %i.cw = load i64, ptr %i.cf, align 8, !dbg !61618, !alias.scope !61513, !noundef !3467 ; 2 uses
  %i.cx = icmp ult i64 %i.cw, 768614336404564651, !dbg !61619
  call void @llvm.assume(i1 %i.cx), !dbg !61620
  %i.cy = getelementptr inbounds nuw [12 x i8], ptr %i.cv, i64 %i.cw, !dbg !61621
  br label %bb.r, !dbg !61622

bb.r:                                             ; preds = %bb.w, %.noexc25
  %.promoted41 = phi i32 [ %.promoted4243, %.noexc25 ], [ %.promoted40, %bb.w ] ; 2 uses
  %i.cz = phi i32 [ %.promoted4243, %.noexc25 ], [ %i.dt, %bb.w ] ; 4 uses
  %.sroa.23.0.i = phi i64 [ %.sroa.10.8.copyload, %.noexc25 ], [ %.sroa.23.5.i, %bb.w ], !dbg !61623 ; 6 uses
  %.sroa.21.0.i = phi i64 [ %.sroa.9.8.copyload, %.noexc25 ], [ %.sroa.21.4.i, %bb.w ], !dbg !61623 ; 4 uses
  %.sroa.19.0.i = phi i64 [ %.sroa.833.8.copyload, %.noexc25 ], [ %.sroa.19.4.i, %bb.w ], !dbg !61623 ; 4 uses
  %.sroa.12.0.i = phi ptr [ %.sroa.7.8.copyload, %.noexc25 ], [ %.sroa.12.5.i, %bb.w ], !dbg !61623 ; 9 uses
  %.sroa.8.0.i = phi ptr [ %.sroa.632.8.copyload, %.noexc25 ], [ %.sroa.8.3.i, %bb.w ], !dbg !61623 ; 9 uses
  %.sroa.523.0.i = phi ptr [ %.sroa.431.8.copyload, %.noexc25 ], [ %.sroa.523.4.i, %bb.w ], !dbg !61623 ; 4 uses
  %.sroa.02.0.i = phi ptr [ %i.cy, %.noexc25 ], [ %i.du, %bb.w ], !dbg !61624 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.529.i), !dbg !61625
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i), !dbg !61625
  call void @llvm.experimental.noalias.scope.decl(metadata !61515), !dbg !61625
  %.not.i.i7.i = icmp eq ptr %.sroa.523.0.i, null, !dbg !61626
  br i1 %.not.i.i7.i, label %bb.u, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, !dbg !61627

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i: ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.i) ]
  %i.da = icmp eq ptr %.sroa.523.0.i, %.sroa.8.0.i, !dbg !61628 ; 2 uses
  %spec.select.idx.i = select i1 %i.da, i64 0, i64 4, !dbg !61629
end_hunk_0
begin_hunk_1_@_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB8_9datatypes11Float16TypeEB8_:bb.a
  %i.dp = and i8 %i.dm, 1, !dbg !62502
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i, !dbg !62503

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.s
  %.sroa.23.2.i = phi i64 [ 0, %bb.s ], [ %.sroa.23.1.i, %._crit_edge.i.i.i.i.i ], !dbg !62486 ; 2 uses
  %.sroa.21.1.i = phi i64 [ 0, %bb.s ], [ %i.do, %._crit_edge.i.i.i.i.i ], !dbg !62486 ; 2 uses
  %.sroa.19.1.i = phi i64 [ %.sroa.19.0.i, %bb.s ], [ %i.dn, %._crit_edge.i.i.i.i.i ], !dbg !62486 ; 2 uses
  %.sroa.12.2.i = phi ptr [ %.sroa.12.0.i, %bb.s ], [ %.sroa.12.1.i, %._crit_edge.i.i.i.i.i ], !dbg !62486 ; 2 uses
  %.sroa.0.0.i8.i.i.i.i = phi i8 [ 2, %bb.s ], [ %i.dp, %._crit_edge.i.i.i.i.i ], !dbg !62504
  %i.dq = invoke { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core(i8 noundef %.sroa.0.0.i8.i.i.i.i, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable_or_null(2) %spec.select48.i)
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !62505 ; 2 uses

.noexc25:                                         ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %i.dr = extractvalue { i8, ptr } %i.dq, 0, !dbg !62506 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.dr, 2, !dbg !62507
  br i1 %.not.i.i.i.i, label %bb.w, label %bb.t, !dbg !62508

bb.t:                                             ; preds = %.noexc25
  %i.ds = extractvalue { i8, ptr } %i.dq, 1, !dbg !62506 ; 2 uses
  %i.dt = trunc nuw i8 %i.dr to i1, !dbg !62509
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ds) ]
  br i1 %i.dt, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2c_ENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB45_9datatypes11Float16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB45_.exit.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2c_ENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB45_9datatypes11Float16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB45_.exit.thread50.i, !dbg !62510

bb.u:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0.i) ]
  %i.du = icmp eq ptr %.sroa.8.0.i, %.sroa.12.0.i, !dbg !62511
  br i1 %i.du, label %bb.w, label %bb.v, !dbg !62512

bb.v:                                             ; preds = %bb.u
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.8.0.i, i64 2, !dbg !62513
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2c_ENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB45_9datatypes11Float16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB45_.exit.i, !dbg !62514

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2c_ENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB45_9datatypes11Float16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB45_.exit.i: ; preds = %bb.v, %bb.t
  %.sroa.23.4.i = phi i64 [ %.sroa.23.0.i, %bb.v ], [ %.sroa.23.2.i, %bb.t ], !dbg !62486
  %.sroa.21.3.i = phi i64 [ %.sroa.21.0.i, %bb.v ], [ %.sroa.21.1.i, %bb.t ], !dbg !62486
  %.sroa.19.3.i = phi i64 [ %.sroa.19.0.i, %bb.v ], [ %.sroa.19.1.i, %bb.t ], !dbg !62486
  %.sroa.12.4.i = phi ptr [ %.sroa.12.0.i, %bb.v ], [ %.sroa.12.2.i, %bb.t ], !dbg !62486
  %.sroa.8.2.i = phi ptr [ %i.dv, %bb.v ], [ %.sroa.8.0.i, %bb.t ], !dbg !62486
  %.sroa.534.3.i = phi ptr [ null, %bb.v ], [ %spec.select.i, %bb.t ], !dbg !62486
  %.sroa.3.0.i.pn.i.ph.ph.i.i = phi ptr [ %.sroa.8.0.i, %bb.v ], [ %i.ds, %bb.t ]
  %i.dw = load i16, ptr %.sroa.3.0.i.pn.i.ph.ph.i.i, align 2, !dbg !62515, !alias.scope !62382, !noalias !62383, !noundef !3467
  %i.dx = zext i16 %i.dw to i64, !dbg !62516
  %i.dy = shl nuw i64 %i.dx, 48, !dbg !62516
  %i.dz = or disjoint i64 %i.dy, 4294967296, !dbg !62517
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2c_ENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB45_9datatypes11Float16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB45_.exit.thread50.i, !dbg !62518

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2c_ENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB45_9datatypes11Float16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB45_.exit.thread50.i: ; preds = %bb.t, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2c_ENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB45_9datatypes11Float16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB45_.exit.i
  %.sroa.2.0.insert.insert.i.i65.i = phi i64 [ %i.dz, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2c_ENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB45_9datatypes11Float16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB45_.exit.i ], [ 0, %bb.t ] ; 2 uses
  %.sroa.534.264.i = phi ptr [ %.sroa.534.3.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2c_ENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB45_9datatypes11Float16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB45_.exit.i ], [ %spec.select.i, %bb.t ]
  %.sroa.8.163.i = phi ptr [ %.sroa.8.2.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2c_ENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB45_9datatypes11Float16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB45_.exit.i ], [ %.sroa.8.0.i, %bb.t ]
  %.sroa.12.362.i = phi ptr [ %.sroa.12.4.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2c_ENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB45_9datatypes11Float16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB45_.exit.i ], [ %.sroa.12.2.i, %bb.t ]
  %.sroa.19.261.i = phi i64 [ %.sroa.19.3.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2c_ENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB45_9datatypes11Float16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB45_.exit.i ], [ %.sroa.19.1.i, %bb.t ]
  %.sroa.21.260.i = phi i64 [ %.sroa.21.3.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2c_ENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB45_9datatypes11Float16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB45_.exit.i ], [ %.sroa.21.1.i, %bb.t ]
  %.sroa.23.359.i = phi i64 [ %.sroa.23.4.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2c_ENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB45_9datatypes11Float16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB45_.exit.i ], [ %.sroa.23.2.i, %bb.t ]
  %i.ea = add i32 %.promoted39, 1, !dbg !62519
  %i.eb = trunc i64 %.sroa.2.0.insert.insert.i.i65.i to i32, !dbg !62518
  %.sroa.014.0.extract.trunc.i = or i32 %.promoted39, %i.eb, !dbg !62518
  store i32 %.sroa.014.0.extract.trunc.i, ptr %.sroa.02.0.i, align 4, !dbg !62520, !noalias !62384
  %.sroa.2.0..sroa.02.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 4, !dbg !62520
  %i.ec = lshr i64 %.sroa.2.0.insert.insert.i.i65.i, 32, !dbg !62520
  %i.ed = trunc nuw i64 %i.ec to i32, !dbg !62520
  store i32 %i.ed, ptr %.sroa.2.0..sroa.02.0..sroa_idx.i, align 4, !dbg !62520, !noalias !62384
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 8, !dbg !62521
  br label %bb.r, !dbg !62485

bb.w:                                             ; preds = %bb.u, %.noexc25
  %i.ef = load i64, ptr %i.cl, align 8, !dbg !62522, !alias.scope !62380, !noundef !3467 ; 2 uses
  %i.eg = icmp ult i64 %i.ef, 1152921504606846976, !dbg !62523
  call void @llvm.assume(i1 %i.eg), !dbg !62524
  %i.eh = add nuw i64 %i.ef, %.sink4.i.i.i, !dbg !62525
  store i64 %i.eh, ptr %i.cl, align 8, !dbg !62526, !alias.scope !62380
  %i.ei = icmp eq ptr %i.cq, %i.co, !dbg !62459
  br i1 %i.ei, label %._crit_edge, label %bb.p, !dbg !62460

bb.x:                                             ; preds = %._crit_edge52, %._crit_edge, %bb.d, %bb.b
  ret void, !dbg !62527

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i, %bb.p, %bb.q
  %lpad.loopexit.split-lp64 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils7float164pf16EEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.e) #44
          to label %bb.k unwind label %bb.m, !dbg !62464
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB8_9datatypes11Float32TypeEB8_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 16 %2, i64 noundef range(i64 0, 57646075230342349) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !62528 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [72 x i8], align 8                ; 6 uses
  %i.i = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !62739
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8, !dbg !62816
  %i.k = load ptr, ptr %i.j, align 8, !dbg !62816, !nonnull !3467, !noundef !3467
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !62817
  %i.m = load i64, ptr %i.l, align 8, !dbg !62817, !noundef !3467
  call void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort17arg_sort_multiple13args_validateNtNtBa_9datatypes11Float32TypeEBa_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 16 %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 10), !dbg !62739
  %i.n = load i64, ptr %i.i, align 8, !dbg !62818, !range !3693, !noundef !3467
  %.not = icmp eq i64 %i.n, 18, !dbg !62818
  br i1 %.not, label %bb.c, label %bb.b, !dbg !62819

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !dbg !62820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !62821
  br label %bb.x, !dbg !62822

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !62821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !62752
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32, !dbg !62823
  %i.p = load ptr, ptr %i.o, align 8, !dbg !62823, !nonnull !3467, !noundef !3467
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40, !dbg !62824
  %i.r = load i64, ptr %i.q, align 8, !dbg !62824, !noundef !3467
  call void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort17arg_sort_multiple13args_validateNtNtBa_9datatypes11Float32TypeEBa_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 16 %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 10), !dbg !62752
  %i.s = load i64, ptr %i.h, align 8, !dbg !62825, !range !3693, !noundef !3467
  %.not13 = icmp eq i64 %i.s, 18, !dbg !62825
  br i1 %.not13, label %bb.e, label %bb.d, !dbg !62826

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false), !dbg !62827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !62828
  br label %bb.x, !dbg !62822

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !62828
  %i.t = getelementptr i8, ptr %1, i64 40, !dbg !62829
  %.val19 = load i64, ptr %i.t, align 8, !dbg !62829, !noundef !3467
  %i.u = icmp eq i64 %.val19, 0, !dbg !62830
  %i.v = getelementptr i8, ptr %1, i64 32, !dbg !62831 ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g, !dbg !62830

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !62832
  %.val21 = load i64, ptr %i.v, align 8, !dbg !62833, !noundef !3467 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !62834
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val21, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8), !dbg !62834
  %i.w = load i64, ptr %i.b, align 8, !dbg !62834, !range !3512, !noundef !3467
  %i.x = trunc nuw i64 %i.w to i1, !dbg !62835
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !62836
  %i.z = load i64, ptr %i.y, align 8, !dbg !62836, !range !3513, !noundef !3467 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !62836 ; 2 uses
  br i1 %i.x, label %bb.h, label %bb.i, !dbg !62835, !prof !3514

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !62837
  %.val20 = load i64, ptr %i.v, align 8, !dbg !62838, !noundef !3467 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !62839
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val20, i1 noundef zeroext false, i64 noundef 4, i64 noundef 12), !dbg !62839
  %i.ab = load i64, ptr %i.a, align 8, !dbg !62839, !range !3512, !noundef !3467
  %i.ac = trunc nuw i64 %i.ab to i1, !dbg !62840
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !62841
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !62841, !range !3513, !noundef !3467 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !62841 ; 2 uses
  br i1 %i.ac, label %bb.n, label %bb.o, !dbg !62840, !prof !3514

bb.h:                                             ; preds = %bb.f
  %i.ag = load i64, ptr %i.aa, align 8, !dbg !62842
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.z, i64 %i.ag) #43, !dbg !62843
  unreachable, !dbg !62843

bb.i:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.aa, align 8, !dbg !62844, !nonnull !3467, !noundef !3467
  %i.ai = icmp ule i64 %.val21, %i.z, !dbg !62845
  tail call void @llvm.assume(i1 %i.ai), !dbg !62846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !62847
  store i64 %i.z, ptr %i.g, align 8, !dbg !62848
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !62848 ; 2 uses
  store ptr %i.ah, ptr %i.aj, align 8, !dbg !62848
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !62848 ; 4 uses
  store i64 0, ptr %i.ak, align 8, !dbg !62848
  %i.al = getelementptr i8, ptr %1, i64 8, !dbg !62849
  %.val17 = load ptr, ptr %i.al, align 8, !dbg !62849, !nonnull !3467, !noundef !3467 ; 2 uses
  %i.am = getelementptr i8, ptr %1, i64 16, !dbg !62849
  %.val18 = load i64, ptr %i.am, align 8, !dbg !62849, !noundef !3467 ; 2 uses
  %.idx55 = shl nuw nsw i64 %.val18, 4, !dbg !62850
  %i.an = getelementptr inbounds nuw i8, ptr %.val17, i64 %.idx55, !dbg !62850
  %i.ao = icmp eq i64 %.val18, 0, !dbg !62851
  br i1 %i.ao, label %._crit_edge53, label %.lr.ph52, !dbg !62769

._crit_edge53:                                    ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !62852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !62852
  call void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort17arg_sort_multiple22arg_sort_multiple_implINtNtB6_13compare_inner7NonNullfEEBa_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 16 %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %4), !dbg !62853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !62854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !62855
  br label %bb.x, !dbg !62856

.lr.ph52:                                         ; preds = %bb.i, %bb.j
  %.sroa.0.050 = phi ptr [ %i.ap, %bb.j ], [ %.val17, %bb.i ] ; 2 uses
  %.lcssa4749 = phi i32 [ %.lcssa46, %bb.j ], [ 0, %bb.i ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.050, i64 16, !dbg !62857 ; 2 uses
  %.val23 = load ptr, ptr %.sroa.0.050, align 8, !dbg !62858, !nonnull !3467, !noundef !3467 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val23, i64 40, !dbg !62859
  %i.ar = load ptr, ptr %i.aq, align 8, !dbg !62859, !nonnull !3467, !noundef !3467 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val23, i64 48, !dbg !62860
  %i.at = load i64, ptr %i.as, align 8, !dbg !62860, !noundef !3467 ; 4 uses
  %.idx = shl i64 %i.at, 2, !dbg !62861           ; 2 uses
  %i.au = getelementptr i8, ptr %i.ar, i64 %.idx, !dbg !62861 ; 2 uses
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNullfEEE7reserveBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.at)
          to label %.noexc unwind label %bb.l, !dbg !62862

.noexc:                                           ; preds = %.lr.ph52
  %i.av = load i64, ptr %i.ak, align 8, !dbg !62863, !alias.scope !62778, !noundef !3467 ; 4 uses
  %i.aw = icmp ult i64 %i.av, 1152921504606846976, !dbg !62864
  call void @llvm.assume(i1 %i.aw), !dbg !62865
  %i.ax = icmp eq i64 %i.at, 0, !dbg !62866
  br i1 %i.ax, label %bb.j, label %.lr.ph.i, !dbg !62867

.lr.ph.i:                                         ; preds = %.noexc
  %i.ay = load ptr, ptr %i.aj, align 8, !dbg !62868, !alias.scope !62778, !nonnull !3467, !noundef !3467 ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.av, !dbg !62869 ; 6 uses
  %i.ba = add i64 %.idx, -4, !dbg !62867          ; 3 uses
  %i.bb = lshr exact i64 %i.ba, 2, !dbg !62867
  %i.bc = add nuw nsw i64 %i.bb, 1, !dbg !62867   ; 2 uses
  %min.iters.check = icmp ult i64 %i.ba, 28, !dbg !62867
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !62867

vector.memcheck:                                  ; preds = %.lr.ph.i
  %5 = shl nuw nsw i64 %i.av, 3, !dbg !62867
  %i.bd = shl i64 %i.ba, 1, !dbg !62867
  %6 = getelementptr i8, ptr %i.ay, i64 %5, !dbg !62867
  %7 = getelementptr i8, ptr %6, i64 %i.bd, !dbg !62867
  %scevgep65 = getelementptr i8, ptr %7, i64 8, !dbg !62867
  %bound0 = icmp ult ptr %i.az, %i.au, !dbg !62867
  %bound1 = icmp ult ptr %i.ar, %scevgep65, !dbg !62867
  %found.conflict = and i1 %bound0, %bound1, !dbg !62867
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bc, 9223372036854775804     ; 5 uses
  %i.be = trunc i64 %n.vec to i32
  %i.bf = add i32 %.lcssa4749, %i.be              ; 2 uses
  %i.bg = shl i64 %n.vec, 3
  %i.bh = getelementptr i8, ptr %i.az, i64 %i.bg
  %i.bi = shl i64 %n.vec, 2
  %i.bj = getelementptr i8, ptr %i.ar, i64 %i.bi
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.lcssa4749, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction = add <2 x i32> %broadcast.splat, <i32 0, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ], !dbg !62870 ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2), !dbg !62870
  %i.bk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.az, i64 %i.bk
  %i.bl = getelementptr i8, ptr %i.az, i64 %i.bk
  %next.gep66 = getelementptr i8, ptr %i.bl, i64 16
  %i.bm = shl i64 %index, 2
  %next.gep67 = getelementptr i8, ptr %i.ar, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep67, i64 8, !dbg !62871
  %wide.load = load <2 x float>, ptr %next.gep67, align 4, !dbg !62871, !alias.scope !62779, !noalias !62780
  %wide.load68 = load <2 x float>, ptr %i.bn, align 4, !dbg !62871, !alias.scope !62779, !noalias !62780
  %i.bo = bitcast <2 x i32> %vec.ind to <2 x float>, !dbg !62872
  %interleaved.vec = shufflevector <2 x float> %i.bo, <2 x float> %wide.load, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !62872
  store <4 x float> %interleaved.vec, ptr %next.gep, align 4, !dbg !62872, !alias.scope !62781, !noalias !62782
  %i.bp = bitcast <2 x i32> %step.add to <2 x float>, !dbg !62872
  %interleaved.vec69 = shufflevector <2 x float> %i.bp, <2 x float> %wide.load68, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !62872
  store <4 x float> %interleaved.vec69, ptr %next.gep66, align 4, !dbg !62872, !alias.scope !62781, !noalias !62782
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4), !dbg !62870
  %i.bq = icmp eq i64 %index.next, %n.vec, !dbg !62867
  br i1 %i.bq, label %middle.block, label %vector.body, !dbg !62867, !llvm.loop !62618

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, %n.vec, !dbg !62867
  br i1 %cmp.n, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterfENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB1z_9datatypes11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.loopexit.i, label %scalar.ph.preheader, !dbg !62867

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.ph = phi i32 [ %.lcssa4749, %vector.memcheck ], [ %.lcssa4749, %.lr.ph.i ], [ %i.bf, %middle.block ]
  %.sroa.02.030.i.ph = phi ptr [ %i.az, %vector.memcheck ], [ %i.az, %.lr.ph.i ], [ %i.bh, %middle.block ]
  %.sroa.017.029.i.ph = phi ptr [ %i.ar, %vector.memcheck ], [ %i.ar, %.lr.ph.i ], [ %i.bj, %middle.block ]
  br label %scalar.ph, !dbg !62867

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.br = phi i32 [ %i.bt, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !62870 ; 2 uses
  %.sroa.02.030.i = phi ptr [ %i.bv, %scalar.ph ], [ %.sroa.02.030.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.sroa.017.029.i = phi ptr [ %i.bs, %scalar.ph ], [ %.sroa.017.029.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.017.029.i, i64 4, !dbg !62870 ; 2 uses
  %.val2.i.i = load float, ptr %.sroa.017.029.i, align 4, !dbg !62871, !noalias !62780, !noundef !3467
  %i.bt = add i32 %i.br, 1, !dbg !62873           ; 2 uses
  store i32 %i.br, ptr %.sroa.02.030.i, align 4, !dbg !62872, !noalias !62782
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.02.030.i, i64 4, !dbg !62872
  store float %.val2.i.i, ptr %i.bu, align 4, !dbg !62872, !noalias !62782
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.02.030.i, i64 8, !dbg !62874
  %i.bw = icmp eq ptr %i.bs, %i.au, !dbg !62866
  br i1 %i.bw, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterfENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB1z_9datatypes11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.loopexit.i, label %scalar.ph, !dbg !62867, !llvm.loop !62623

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterfENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB1z_9datatypes11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.loopexit.i: ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.bf, %middle.block ], [ %i.bt, %scalar.ph ], !dbg !62873
  %.pre.i = load i64, ptr %i.ak, align 8, !dbg !62875, !alias.scope !62778
  br label %bb.j, !dbg !62875

bb.j:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterfENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB1z_9datatypes11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.loopexit.i, %.noexc
  %.lcssa46 = phi i32 [ %.lcssa, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterfENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB1z_9datatypes11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.loopexit.i ], [ %.lcssa4749, %.noexc ]
  %i.bx = phi i64 [ %.pre.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterfENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB1z_9datatypes11Float32TypeE0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.loopexit.i ], [ %i.av, %.noexc ], !dbg !62875 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 1152921504606846976, !dbg !62876
  call void @llvm.assume(i1 %i.by), !dbg !62877
  %i.bz = add nuw nsw i64 %i.bx, %i.at, !dbg !62878
  store i64 %i.bz, ptr %i.ak, align 8, !dbg !62879, !alias.scope !62778
  %i.ca = icmp eq ptr %i.ap, %i.an, !dbg !62851
  br i1 %i.ca, label %._crit_edge53, label %.lr.ph52, !dbg !62769

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.l
  %.pn = phi { ptr, i32 } [ %i.cb, %bb.l ], [ %lpad.loopexit.split-lp73, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %.pn, !dbg !62880

bb.l:                                             ; preds = %.lr.ph52
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNullfEEEEB1o_(ptr noalias noundef align 8 dereferenceable(24) %i.g) #44
          to label %bb.k unwind label %bb.m, !dbg !62855

bb.m:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.l
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !62880
  unreachable, !dbg !62880

bb.n:                                             ; preds = %bb.g
  %i.cd = load i64, ptr %i.af, align 8, !dbg !62881
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ae, i64 %i.cd) #43, !dbg !62882
  unreachable, !dbg !62882

bb.o:                                             ; preds = %bb.g
  %i.ce = load ptr, ptr %i.af, align 8, !dbg !62883, !nonnull !3467, !noundef !3467
  %i.cf = icmp ule i64 %.val20, %i.ae, !dbg !62884
  tail call void @llvm.assume(i1 %i.cf), !dbg !62885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !62886
  store i64 %i.ae, ptr %i.e, align 8, !dbg !62887
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !62887 ; 2 uses
  store ptr %i.ce, ptr %i.cg, align 8, !dbg !62887
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !62887 ; 4 uses
  store i64 0, ptr %i.ch, align 8, !dbg !62887
  %i.ci = getelementptr i8, ptr %1, i64 8, !dbg !62888
  %.val = load ptr, ptr %i.ci, align 8, !dbg !62888, !nonnull !3467, !noundef !3467 ; 2 uses
  %i.cj = getelementptr i8, ptr %1, i64 16, !dbg !62888
  %.val16 = load i64, ptr %i.cj, align 8, !dbg !62888, !noundef !3467 ; 2 uses
  %.idx54 = shl nuw nsw i64 %.val16, 4, !dbg !62889
  %i.ck = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx54, !dbg !62889
  %i.cl = icmp eq i64 %.val16, 0, !dbg !62890
  br i1 %i.cl, label %._crit_edge, label %.lr.ph, !dbg !62891

.lr.ph:                                           ; preds = %bb.o
  %.sroa.632.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.833.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  br label %bb.p, !dbg !62891

._crit_edge:                                      ; preds = %bb.w, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !62892
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !62892
  call void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort17arg_sort_multiple22arg_sort_multiple_implINtNtCscgRAwXFJnXP_4core6option6OptionfEEBa_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 16 %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %4), !dbg !62893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !62894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !62895
  br label %bb.x, !dbg !62856

bb.p:                                             ; preds = %.lr.ph, %bb.w
  %.sroa.028.044 = phi ptr [ %.val, %.lr.ph ], [ %i.cm, %bb.w ] ; 2 uses
  %.promoted4143 = phi i32 [ 0, %.lr.ph ], [ %.promoted40, %bb.w ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.028.044, i64 16, !dbg !62896 ; 2 uses
  %.val22 = load ptr, ptr %.sroa.028.044, align 8, !dbg !62897, !nonnull !3467, !noundef !3467 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !62898
  %i.cn = getelementptr inbounds nuw i8, ptr %.val22, i64 40, !dbg !62899
  %i.co = load ptr, ptr %i.cn, align 8, !dbg !62899, !nonnull !3467, !noundef !3467 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.val22, i64 48, !dbg !62900
  %i.cq = load i64, ptr %i.cp, align 8, !dbg !62900, !noundef !3467
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cq, !dbg !62901
  %i.cs = getelementptr inbounds nuw i8, ptr %.val22, i64 56, !dbg !62902 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !dbg !62902, !noundef !3467
  %.not14 = icmp eq ptr %i.ct, null, !dbg !62902
  %. = select i1 %.not14, ptr null, ptr %i.cs, !dbg !62903
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRfINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterfENtNtB7_8iterator10BitmapIterE17new_with_validityCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noundef nonnull %i.co, ptr noundef nonnull %i.cr, ptr noundef align 8 %.)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !62904

bb.q:                                             ; preds = %bb.p
  %.sroa.431.8.copyload = load ptr, ptr %i.d, align 8, !dbg !62905 ; 3 uses
  %.sroa.632.8.copyload = load ptr, ptr %.sroa.632.8..sroa_idx, align 8, !dbg !62905, !nonnull !3467, !noundef !3467 ; 3 uses
  %.sroa.7.8.copyload = load ptr, ptr %.sroa.7.8..sroa_idx, align 8, !dbg !62905 ; 2 uses
  %.sroa.833.8.copyload = load i64, ptr %.sroa.833.8..sroa_idx, align 8, !dbg !62905
  %.sroa.9.8.copyload = load i64, ptr %.sroa.9.8..sroa_idx, align 8, !dbg !62905
  %.sroa.10.8.copyload = load i64, ptr %.sroa.10.8..sroa_idx, align 8, !dbg !62905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !62906
  %.not.i.i.i = icmp eq ptr %.sroa.431.8.copyload, null, !dbg !62907 ; 2 uses
  %.val1.sink.i.i.i = select i1 %.not.i.i.i, ptr %.sroa.7.8.copyload, ptr %.sroa.632.8.copyload, !dbg !62908
  %.val.sink.i.i.i = select i1 %.not.i.i.i, ptr %.sroa.632.8.copyload, ptr %.sroa.431.8.copyload, !dbg !62908
  %i.cu = ptrtoint ptr %.val1.sink.i.i.i to i64, !dbg !62909
  %i.cv = ptrtoint ptr %.val.sink.i.i.i to i64, !dbg !62909
  %i.cw = sub nuw i64 %i.cu, %i.cv, !dbg !62909
  %.sink4.i.i.i = lshr exact i64 %i.cw, 2, !dbg !62909 ; 2 uses
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTmINtNtCscgRAwXFJnXP_4core6option6OptionfEEE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %.sink4.i.i.i)
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !62910

.noexc25:                                         ; preds = %bb.q
  %i.cx = load ptr, ptr %i.cg, align 8, !dbg !62911, !alias.scope !62811, !nonnull !3467, !noundef !3467
  %i.cy = load i64, ptr %i.ch, align 8, !dbg !62912, !alias.scope !62811, !noundef !3467 ; 2 uses
  %i.cz = icmp ult i64 %i.cy, 768614336404564651, !dbg !62913
  call void @llvm.assume(i1 %i.cz), !dbg !62914
  %i.da = getelementptr inbounds nuw [12 x i8], ptr %i.cx, i64 %i.cy, !dbg !62915
  br label %bb.r, !dbg !62916

bb.r:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBb_5slice4iter4IterfENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes11Float32TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i, %.noexc25
  %.promoted40 = phi i32 [ %.promoted4143, %.noexc25 ], [ %i.dt, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBb_5slice4iter4IterfENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes11Float32TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i ] ; 3 uses
  %.sroa.23.0.i = phi i64 [ %.sroa.10.8.copyload, %.noexc25 ], [ %.sroa.23.6.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBb_5slice4iter4IterfENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes11Float32TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i ], !dbg !62917 ; 5 uses
  %.sroa.21.0.i = phi i64 [ %.sroa.9.8.copyload, %.noexc25 ], [ %.sroa.21.5.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBb_5slice4iter4IterfENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes11Float32TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i ], !dbg !62917 ; 3 uses
  %.sroa.19.0.i = phi i64 [ %.sroa.833.8.copyload, %.noexc25 ], [ %.sroa.19.5.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBb_5slice4iter4IterfENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes11Float32TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i ], !dbg !62917 ; 3 uses
  %.sroa.12.0.i = phi ptr [ %.sroa.7.8.copyload, %.noexc25 ], [ %.sroa.12.6.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBb_5slice4iter4IterfENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes11Float32TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i ], !dbg !62917 ; 8 uses
  %.sroa.8.0.i = phi ptr [ %.sroa.632.8.copyload, %.noexc25 ], [ %.sroa.8.3.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBb_5slice4iter4IterfENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes11Float32TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i ], !dbg !62917 ; 6 uses
  %.sroa.523.0.i = phi ptr [ %.sroa.431.8.copyload, %.noexc25 ], [ %.sroa.523.5.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBb_5slice4iter4IterfENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes11Float32TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i ], !dbg !62917 ; 4 uses
  %.sroa.02.0.i = phi ptr [ %i.da, %.noexc25 ], [ %i.du, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBb_5slice4iter4IterfENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes11Float32TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i ], !dbg !62918 ; 4 uses
  %.not.i.i7.i = icmp eq ptr %.sroa.523.0.i, null, !dbg !62919
  br i1 %.not.i.i7.i, label %bb.u, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, !dbg !62920

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i: ; preds = %bb.r
  %i.db = icmp eq ptr %.sroa.523.0.i, %.sroa.8.0.i, !dbg !62921 ; 2 uses
  %spec.select.idx.i = select i1 %i.db, i64 0, i64 4, !dbg !62922
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.sroa.523.0.i, i64 %spec.select.idx.i, !dbg !62922 ; 2 uses
  %spec.select43.i = select i1 %i.db, ptr null, ptr %.sroa.523.0.i, !dbg !62922
  %i.dc = icmp eq i64 %.sroa.21.0.i, 0, !dbg !62923
  br i1 %i.dc, label %bb.s, label %._crit_edge.i.i.i.i.i, !dbg !62923
end_hunk_1
begin_hunk_2_@_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB8_9datatypes9Int16TypeEB8_:bb.a

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.s
  %.sroa.23.2.i = phi i64 [ 0, %bb.s ], [ %.sroa.23.1.i, %._crit_edge.i.i.i.i.i ], !dbg !64622 ; 2 uses
  %.sroa.21.1.i = phi i64 [ 0, %bb.s ], [ %i.do, %._crit_edge.i.i.i.i.i ], !dbg !64622 ; 2 uses
  %.sroa.19.1.i = phi i64 [ %.sroa.19.0.i, %bb.s ], [ %i.dn, %._crit_edge.i.i.i.i.i ], !dbg !64622 ; 2 uses
  %.sroa.12.2.i = phi ptr [ %.sroa.12.0.i, %bb.s ], [ %.sroa.12.1.i, %._crit_edge.i.i.i.i.i ], !dbg !64622 ; 2 uses
  %.sroa.0.0.i8.i.i.i.i = phi i8 [ 2, %bb.s ], [ %i.dp, %._crit_edge.i.i.i.i.i ], !dbg !64640
  %i.dq = invoke { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRsECs1LHh8CLbVkQ_11polars_core(i8 noundef %.sroa.0.0.i8.i.i.i.i, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable_or_null(2) %spec.select48.i)
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !64641 ; 2 uses

.noexc25:                                         ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %i.dr = extractvalue { i8, ptr } %i.dq, 0, !dbg !64642 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.dr, 2, !dbg !64643
  br i1 %.not.i.i.i.i, label %bb.w, label %bb.t, !dbg !64644

bb.t:                                             ; preds = %.noexc25
  %i.ds = extractvalue { i8, ptr } %i.dq, 1, !dbg !64642 ; 2 uses
  %i.dt = trunc nuw i8 %i.dr to i1, !dbg !64645
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ds) ]
  br i1 %i.dt, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRsINtNtNtBb_5slice4iter4ItersENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes9Int16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRsINtNtNtBb_5slice4iter4ItersENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes9Int16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.thread50.i, !dbg !64646

bb.u:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0.i) ]
  %i.du = icmp eq ptr %.sroa.8.0.i, %.sroa.12.0.i, !dbg !64647
  br i1 %i.du, label %bb.w, label %bb.v, !dbg !64648

bb.v:                                             ; preds = %bb.u
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.8.0.i, i64 2, !dbg !64649
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRsINtNtNtBb_5slice4iter4ItersENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes9Int16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i, !dbg !64650

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRsINtNtNtBb_5slice4iter4ItersENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes9Int16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i: ; preds = %bb.v, %bb.t
  %.sroa.23.4.i = phi i64 [ %.sroa.23.0.i, %bb.v ], [ %.sroa.23.2.i, %bb.t ], !dbg !64622
  %.sroa.21.3.i = phi i64 [ %.sroa.21.0.i, %bb.v ], [ %.sroa.21.1.i, %bb.t ], !dbg !64622
  %.sroa.19.3.i = phi i64 [ %.sroa.19.0.i, %bb.v ], [ %.sroa.19.1.i, %bb.t ], !dbg !64622
  %.sroa.12.4.i = phi ptr [ %.sroa.12.0.i, %bb.v ], [ %.sroa.12.2.i, %bb.t ], !dbg !64622
  %.sroa.8.2.i = phi ptr [ %i.dv, %bb.v ], [ %.sroa.8.0.i, %bb.t ], !dbg !64622
  %.sroa.534.3.i = phi ptr [ null, %bb.v ], [ %spec.select.i, %bb.t ], !dbg !64622
  %.sroa.3.0.i.pn.i.ph.ph.i.i = phi ptr [ %.sroa.8.0.i, %bb.v ], [ %i.ds, %bb.t ]
  %i.dw = load i16, ptr %.sroa.3.0.i.pn.i.ph.ph.i.i, align 2, !dbg !64651, !alias.scope !64518, !noalias !64519, !noundef !3467
  %i.dx = zext i16 %i.dw to i64, !dbg !64652
  %i.dy = shl nuw i64 %i.dx, 48, !dbg !64652
  %i.dz = or disjoint i64 %i.dy, 4294967296, !dbg !64653
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRsINtNtNtBb_5slice4iter4ItersENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes9Int16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.thread50.i, !dbg !64654

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRsINtNtNtBb_5slice4iter4ItersENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes9Int16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.thread50.i: ; preds = %bb.t, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRsINtNtNtBb_5slice4iter4ItersENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes9Int16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i
  %.sroa.2.0.insert.insert.i.i65.i = phi i64 [ %i.dz, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRsINtNtNtBb_5slice4iter4ItersENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes9Int16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i ], [ 0, %bb.t ] ; 2 uses
  %.sroa.534.264.i = phi ptr [ %.sroa.534.3.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRsINtNtNtBb_5slice4iter4ItersENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes9Int16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i ], [ %spec.select.i, %bb.t ]
  %.sroa.8.163.i = phi ptr [ %.sroa.8.2.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRsINtNtNtBb_5slice4iter4ItersENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes9Int16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i ], [ %.sroa.8.0.i, %bb.t ]
  %.sroa.12.362.i = phi ptr [ %.sroa.12.4.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRsINtNtNtBb_5slice4iter4ItersENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes9Int16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i ], [ %.sroa.12.2.i, %bb.t ]
  %.sroa.19.261.i = phi i64 [ %.sroa.19.3.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRsINtNtNtBb_5slice4iter4ItersENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes9Int16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i ], [ %.sroa.19.1.i, %bb.t ]
  %.sroa.21.260.i = phi i64 [ %.sroa.21.3.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRsINtNtNtBb_5slice4iter4ItersENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes9Int16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i ], [ %.sroa.21.1.i, %bb.t ]
  %.sroa.23.359.i = phi i64 [ %.sroa.23.4.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRsINtNtNtBb_5slice4iter4ItersENtNtB11_8iterator10BitmapIterENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB3k_9datatypes9Int16TypeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i ], [ %.sroa.23.2.i, %bb.t ]
  %i.ea = add i32 %.promoted39, 1, !dbg !64655
  %i.eb = trunc i64 %.sroa.2.0.insert.insert.i.i65.i to i32, !dbg !64654
  %.sroa.014.0.extract.trunc.i = or i32 %.promoted39, %i.eb, !dbg !64654
  store i32 %.sroa.014.0.extract.trunc.i, ptr %.sroa.02.0.i, align 4, !dbg !64656, !noalias !64520
  %.sroa.2.0..sroa.02.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 4, !dbg !64656
  %i.ec = lshr i64 %.sroa.2.0.insert.insert.i.i65.i, 32, !dbg !64656
  %i.ed = trunc nuw i64 %i.ec to i32, !dbg !64656
  store i32 %i.ed, ptr %.sroa.2.0..sroa.02.0..sroa_idx.i, align 4, !dbg !64656, !noalias !64520
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 8, !dbg !64657
  br label %bb.r, !dbg !64621

bb.w:                                             ; preds = %bb.u, %.noexc25
  %i.ef = load i64, ptr %i.cl, align 8, !dbg !64658, !alias.scope !64516, !noundef !3467 ; 2 uses
  %i.eg = icmp ult i64 %i.ef, 1152921504606846976, !dbg !64659
  call void @llvm.assume(i1 %i.eg), !dbg !64660
  %i.eh = add nuw i64 %i.ef, %.sink4.i.i.i, !dbg !64661
  store i64 %i.eh, ptr %i.cl, align 8, !dbg !64662, !alias.scope !64516
  %i.ei = icmp eq ptr %i.cq, %i.co, !dbg !64595
  br i1 %i.ei, label %._crit_edge, label %bb.p, !dbg !64596

bb.x:                                             ; preds = %._crit_edge52, %._crit_edge, %bb.d, %bb.b
  ret void, !dbg !64663

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i, %bb.p, %bb.q
  %lpad.loopexit.split-lp64 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmINtNtB4_6option6OptionsEEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.e) #44
          to label %bb.k unwind label %bb.m, !dbg !64600
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB8_9datatypes9Int32TypeEB8_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 16 %2, i64 noundef range(i64 0, 57646075230342349) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !64664 {
bb.a:
  %.sroa.529.i = alloca i32, align 4              ; 7 uses
  %.sroa.9.i = alloca i32, align 4                ; 5 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [72 x i8], align 8                ; 6 uses
  %i.i = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !64874
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8, !dbg !64953
  %i.k = load ptr, ptr %i.j, align 8, !dbg !64953, !nonnull !3467, !noundef !3467
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !64954
  %i.m = load i64, ptr %i.l, align 8, !dbg !64954, !noundef !3467
  call void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort17arg_sort_multiple13args_validateNtNtBa_9datatypes9Int32TypeEBa_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 16 %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 10), !dbg !64874
  %i.n = load i64, ptr %i.i, align 8, !dbg !64955, !range !3693, !noundef !3467
  %.not = icmp eq i64 %i.n, 18, !dbg !64955
  br i1 %.not, label %bb.c, label %bb.b, !dbg !64956

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !dbg !64957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !64958
  br label %bb.y, !dbg !64959

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !64958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !64887
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32, !dbg !64960
  %i.p = load ptr, ptr %i.o, align 8, !dbg !64960, !nonnull !3467, !noundef !3467
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40, !dbg !64961
  %i.r = load i64, ptr %i.q, align 8, !dbg !64961, !noundef !3467
  call void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort17arg_sort_multiple13args_validateNtNtBa_9datatypes9Int32TypeEBa_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 16 %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 10), !dbg !64887
  %i.s = load i64, ptr %i.h, align 8, !dbg !64962, !range !3693, !noundef !3467
  %.not13 = icmp eq i64 %i.s, 18, !dbg !64962
  br i1 %.not13, label %bb.e, label %bb.d, !dbg !64963

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false), !dbg !64964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !64965
  br label %bb.y, !dbg !64959

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !64965
  %i.t = getelementptr i8, ptr %1, i64 40, !dbg !64966
  %.val = load i64, ptr %i.t, align 8, !dbg !64966, !noundef !3467
  %i.u = icmp eq i64 %.val, 0, !dbg !64967
  %i.v = getelementptr i8, ptr %1, i64 32, !dbg !64968 ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g, !dbg !64967

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !64969
  %.val17 = load i64, ptr %i.v, align 8, !dbg !64970, !noundef !3467 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !64971
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val17, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8), !dbg !64971
  %i.w = load i64, ptr %i.b, align 8, !dbg !64971, !range !3512, !noundef !3467
  %i.x = trunc nuw i64 %i.w to i1, !dbg !64972
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !64973
  %i.z = load i64, ptr %i.y, align 8, !dbg !64973, !range !3513, !noundef !3467 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !64973 ; 2 uses
  br i1 %i.x, label %bb.h, label %bb.i, !dbg !64972, !prof !3514

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !64974
  %.val16 = load i64, ptr %i.v, align 8, !dbg !64975, !noundef !3467 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !64976
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val16, i1 noundef zeroext false, i64 noundef 4, i64 noundef 12), !dbg !64976
  %i.ab = load i64, ptr %i.a, align 8, !dbg !64976, !range !3512, !noundef !3467
  %i.ac = trunc nuw i64 %i.ab to i1, !dbg !64977
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !64978
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !64978, !range !3513, !noundef !3467 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !64978 ; 2 uses
  br i1 %i.ac, label %bb.n, label %bb.o, !dbg !64977, !prof !3514

bb.h:                                             ; preds = %bb.f
  %i.ag = load i64, ptr %i.aa, align 8, !dbg !64979
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.z, i64 %i.ag) #43, !dbg !64980
  unreachable, !dbg !64980

bb.i:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.aa, align 8, !dbg !64981, !nonnull !3467, !noundef !3467
  %i.ai = icmp ule i64 %.val17, %i.z, !dbg !64982
  tail call void @llvm.assume(i1 %i.ai), !dbg !64983
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !64984
  store i64 %i.z, ptr %i.g, align 8, !dbg !64985
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !64985 ; 2 uses
  store ptr %i.ah, ptr %i.aj, align 8, !dbg !64985
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !64985 ; 4 uses
  store i64 0, ptr %i.ak, align 8, !dbg !64985
  %i.al = getelementptr i8, ptr %1, i64 8, !dbg !64986
  %.val20 = load ptr, ptr %i.al, align 8, !dbg !64986, !nonnull !3467, !noundef !3467 ; 2 uses
  %i.am = getelementptr i8, ptr %1, i64 16, !dbg !64986
  %.val21 = load i64, ptr %i.am, align 8, !dbg !64986, !noundef !3467 ; 2 uses
  %.idx55 = shl nuw nsw i64 %.val21, 4, !dbg !64987
  %i.an = getelementptr inbounds nuw i8, ptr %.val20, i64 %.idx55, !dbg !64987
  %i.ao = icmp eq i64 %.val21, 0, !dbg !64988
  br i1 %i.ao, label %._crit_edge53, label %.lr.ph52, !dbg !64904

._crit_edge53:                                    ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !64989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !64989
  call void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort17arg_sort_multiple22arg_sort_multiple_implINtNtB6_13compare_inner7NonNulllEEBa_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 16 %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %4), !dbg !64990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !64991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !64992
  br label %bb.y, !dbg !64993

.lr.ph52:                                         ; preds = %bb.i, %bb.j
  %.sroa.0.050 = phi ptr [ %i.ap, %bb.j ], [ %.val20, %bb.i ] ; 2 uses
  %.lcssa4749 = phi i32 [ %.lcssa46, %bb.j ], [ 0, %bb.i ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.050, i64 16, !dbg !64994 ; 2 uses
  %.val23 = load ptr, ptr %.sroa.0.050, align 8, !dbg !64995, !nonnull !3467, !noundef !3467 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val23, i64 40, !dbg !64996
  %i.ar = load ptr, ptr %i.aq, align 8, !dbg !64996, !nonnull !3467, !noundef !3467 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val23, i64 48, !dbg !64997
  %i.at = load i64, ptr %i.as, align 8, !dbg !64997, !noundef !3467 ; 4 uses
  %.idx = shl i64 %i.at, 2, !dbg !64998           ; 2 uses
  %i.au = getelementptr i8, ptr %i.ar, i64 %.idx, !dbg !64998 ; 2 uses
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNulllEEE7reserveBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.at)
          to label %.noexc unwind label %bb.l, !dbg !64999

.noexc:                                           ; preds = %.lr.ph52
  %i.av = load i64, ptr %i.ak, align 8, !dbg !65000, !alias.scope !64913, !noundef !3467 ; 4 uses
  %i.aw = icmp ult i64 %i.av, 1152921504606846976, !dbg !65001
  call void @llvm.assume(i1 %i.aw), !dbg !65002
  %i.ax = icmp eq i64 %i.at, 0, !dbg !65003
  br i1 %i.ax, label %bb.j, label %.lr.ph.i, !dbg !65004

.lr.ph.i:                                         ; preds = %.noexc
  %i.ay = load ptr, ptr %i.aj, align 8, !dbg !65005, !alias.scope !64913, !nonnull !3467, !noundef !3467 ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.av, !dbg !65006 ; 6 uses
  %i.ba = add i64 %.idx, -4, !dbg !65004          ; 3 uses
  %i.bb = lshr exact i64 %i.ba, 2, !dbg !65004
  %i.bc = add nuw nsw i64 %i.bb, 1, !dbg !65004   ; 2 uses
  %min.iters.check = icmp ult i64 %i.ba, 28, !dbg !65004
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !65004

vector.memcheck:                                  ; preds = %.lr.ph.i
  %5 = shl nuw nsw i64 %i.av, 3, !dbg !65004
  %i.bd = shl i64 %i.ba, 1, !dbg !65004
  %6 = getelementptr i8, ptr %i.ay, i64 %5, !dbg !65004
  %7 = getelementptr i8, ptr %6, i64 %i.bd, !dbg !65004
  %scevgep62 = getelementptr i8, ptr %7, i64 8, !dbg !65004
  %bound0 = icmp ult ptr %i.az, %i.au, !dbg !65004
  %bound1 = icmp ult ptr %i.ar, %scevgep62, !dbg !65004
  %found.conflict = and i1 %bound0, %bound1, !dbg !65004
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bc, 9223372036854775804     ; 5 uses
  %i.be = trunc i64 %n.vec to i32
  %i.bf = add i32 %.lcssa4749, %i.be              ; 2 uses
  %i.bg = shl i64 %n.vec, 3
  %i.bh = getelementptr i8, ptr %i.az, i64 %i.bg
  %i.bi = shl i64 %n.vec, 2
  %i.bj = getelementptr i8, ptr %i.ar, i64 %i.bi
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.lcssa4749, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction = add <2 x i32> %broadcast.splat, <i32 0, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ], !dbg !65007 ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2), !dbg !65007
  %i.bk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.az, i64 %i.bk
  %i.bl = getelementptr i8, ptr %i.az, i64 %i.bk
  %next.gep63 = getelementptr i8, ptr %i.bl, i64 16
  %i.bm = shl i64 %index, 2
  %next.gep64 = getelementptr i8, ptr %i.ar, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep64, i64 8, !dbg !65008
  %wide.load = load <2 x i32>, ptr %next.gep64, align 4, !dbg !65008, !alias.scope !64914, !noalias !64915
  %wide.load65 = load <2 x i32>, ptr %i.bn, align 4, !dbg !65008, !alias.scope !64914, !noalias !64915
  %interleaved.vec = shufflevector <2 x i32> %vec.ind, <2 x i32> %wide.load, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !65009
  store <4 x i32> %interleaved.vec, ptr %next.gep, align 4, !dbg !65009, !alias.scope !64916, !noalias !64917
  %interleaved.vec66 = shufflevector <2 x i32> %step.add, <2 x i32> %wide.load65, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !65009
  store <4 x i32> %interleaved.vec66, ptr %next.gep63, align 4, !dbg !65009, !alias.scope !64916, !noalias !64917
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4), !dbg !65007
  %i.bo = icmp eq i64 %index.next, %n.vec, !dbg !65004
  br i1 %i.bo, label %middle.block, label %vector.body, !dbg !65004, !llvm.loop !64754

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, %n.vec, !dbg !65004
  br i1 %cmp.n, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterlENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB1z_9datatypes9Int32TypeE0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.loopexit.i, label %scalar.ph.preheader, !dbg !65004

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.ph = phi i32 [ %.lcssa4749, %vector.memcheck ], [ %.lcssa4749, %.lr.ph.i ], [ %i.bf, %middle.block ]
  %.sroa.02.030.i.ph = phi ptr [ %i.az, %vector.memcheck ], [ %i.az, %.lr.ph.i ], [ %i.bh, %middle.block ]
  %.sroa.017.029.i.ph = phi ptr [ %i.ar, %vector.memcheck ], [ %i.ar, %.lr.ph.i ], [ %i.bj, %middle.block ]
  br label %scalar.ph, !dbg !65004

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.bp = phi i32 [ %i.br, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !65007 ; 2 uses
  %.sroa.02.030.i = phi ptr [ %i.bt, %scalar.ph ], [ %.sroa.02.030.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.sroa.017.029.i = phi ptr [ %i.bq, %scalar.ph ], [ %.sroa.017.029.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.017.029.i, i64 4, !dbg !65007 ; 2 uses
  %.val2.i.i = load i32, ptr %.sroa.017.029.i, align 4, !dbg !65008, !noalias !64915, !noundef !3467
  %i.br = add i32 %i.bp, 1, !dbg !65010           ; 2 uses
  store i32 %i.bp, ptr %.sroa.02.030.i, align 4, !dbg !65009, !noalias !64917
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.02.030.i, i64 4, !dbg !65009
  store i32 %.val2.i.i, ptr %i.bs, align 4, !dbg !65009, !noalias !64917
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.02.030.i, i64 8, !dbg !65011
  %i.bu = icmp eq ptr %i.bq, %i.au, !dbg !65003
  br i1 %i.bu, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterlENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB1z_9datatypes9Int32TypeE0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.loopexit.i, label %scalar.ph, !dbg !65004, !llvm.loop !64759

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterlENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB1z_9datatypes9Int32TypeE0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.loopexit.i: ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.bf, %middle.block ], [ %i.br, %scalar.ph ], !dbg !65010
  %.pre.i = load i64, ptr %i.ak, align 8, !dbg !65012, !alias.scope !64913
  br label %bb.j, !dbg !65012

bb.j:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterlENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB1z_9datatypes9Int32TypeE0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.loopexit.i, %.noexc
  %.lcssa46 = phi i32 [ %.lcssa, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterlENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB1z_9datatypes9Int32TypeE0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.loopexit.i ], [ %.lcssa4749, %.noexc ]
  %i.bv = phi i64 [ %.pre.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterlENCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort25arg_sort_multiple_numericNtNtB1z_9datatypes9Int32TypeE0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.loopexit.i ], [ %i.av, %.noexc ], !dbg !65012 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, 1152921504606846976, !dbg !65013
  call void @llvm.assume(i1 %i.bw), !dbg !65014
  %i.bx = add nuw nsw i64 %i.bv, %i.at, !dbg !65015
  store i64 %i.bx, ptr %i.ak, align 8, !dbg !65016, !alias.scope !64913
  %i.by = icmp eq ptr %i.ap, %i.an, !dbg !64988
  br i1 %i.by, label %._crit_edge53, label %.lr.ph52, !dbg !64904

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.l ], [ %lpad.loopexit.split-lp70, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %.pn, !dbg !65017

bb.l:                                             ; preds = %.lr.ph52
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNulllEEEEB1o_(ptr noalias noundef align 8 dereferenceable(24) %i.g) #44
          to label %bb.k unwind label %bb.m, !dbg !64992

bb.m:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.l
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !65017
  unreachable, !dbg !65017

bb.n:                                             ; preds = %bb.g
  %i.cb = load i64, ptr %i.af, align 8, !dbg !65018
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ae, i64 %i.cb) #43, !dbg !65019
  unreachable, !dbg !65019

bb.o:                                             ; preds = %bb.g
  %i.cc = load ptr, ptr %i.af, align 8, !dbg !65020, !nonnull !3467, !noundef !3467
  %i.cd = icmp ule i64 %.val16, %i.ae, !dbg !65021
  tail call void @llvm.assume(i1 %i.cd), !dbg !65022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !65023
  store i64 %i.ae, ptr %i.e, align 8, !dbg !65024
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !65024 ; 2 uses
  store ptr %i.cc, ptr %i.ce, align 8, !dbg !65024
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !65024 ; 4 uses
  store i64 0, ptr %i.cf, align 8, !dbg !65024
  %i.cg = getelementptr i8, ptr %1, i64 8, !dbg !65025
  %.val18 = load ptr, ptr %i.cg, align 8, !dbg !65025, !nonnull !3467, !noundef !3467 ; 2 uses
  %i.ch = getelementptr i8, ptr %1, i64 16, !dbg !65025
  %.val19 = load i64, ptr %i.ch, align 8, !dbg !65025, !noundef !3467 ; 2 uses
  %.idx54 = shl nuw nsw i64 %.val19, 4, !dbg !65026
  %i.ci = getelementptr inbounds nuw i8, ptr %.val18, i64 %.idx54, !dbg !65026
  %i.cj = icmp eq i64 %.val19, 0, !dbg !65027
  br i1 %i.cj, label %._crit_edge, label %.lr.ph, !dbg !65028

.lr.ph:                                           ; preds = %bb.o
  %.sroa.632.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.833.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  br label %bb.p, !dbg !65028

._crit_edge:                                      ; preds = %bb.x, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !65029
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !65029
  call void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort17arg_sort_multiple22arg_sort_multiple_implINtNtCscgRAwXFJnXP_4core6option6OptionlEEBa_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 16 %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %4), !dbg !65030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !65031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !65032
  br label %bb.y, !dbg !64993

bb.p:                                             ; preds = %.lr.ph, %bb.x
  %.sroa.028.044 = phi ptr [ %.val18, %.lr.ph ], [ %i.ck, %bb.x ] ; 2 uses
  %.promoted4243 = phi i32 [ 0, %.lr.ph ], [ %.promoted40, %bb.x ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.028.044, i64 16, !dbg !65033 ; 2 uses
  %.val22 = load ptr, ptr %.sroa.028.044, align 8, !dbg !65034, !nonnull !3467, !noundef !3467 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !65035
  %i.cl = getelementptr inbounds nuw i8, ptr %.val22, i64 40, !dbg !65036
  %i.cm = load ptr, ptr %i.cl, align 8, !dbg !65036, !nonnull !3467, !noundef !3467 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.val22, i64 48, !dbg !65037
  %i.co = load i64, ptr %i.cn, align 8, !dbg !65037, !noundef !3467
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.co, !dbg !65038
  %i.cq = getelementptr inbounds nuw i8, ptr %.val22, i64 56, !dbg !65039 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !dbg !65039, !noundef !3467
  %.not14 = icmp eq ptr %i.cr, null, !dbg !65039
  %. = select i1 %.not14, ptr null, ptr %i.cq, !dbg !65040
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRlINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterlENtNtB7_8iterator10BitmapIterE17new_with_validityCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cp, ptr noundef align 8 %.)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !65041

bb.q:                                             ; preds = %bb.p
  %.sroa.431.8.copyload = load ptr, ptr %i.d, align 8, !dbg !65042 ; 3 uses
  %.sroa.632.8.copyload = load ptr, ptr %.sroa.632.8..sroa_idx, align 8, !dbg !65042, !nonnull !3467, !noundef !3467 ; 3 uses
  %.sroa.7.8.copyload = load ptr, ptr %.sroa.7.8..sroa_idx, align 8, !dbg !65042 ; 2 uses
  %.sroa.833.8.copyload = load i64, ptr %.sroa.833.8..sroa_idx, align 8, !dbg !65042
  %.sroa.9.8.copyload = load i64, ptr %.sroa.9.8..sroa_idx, align 8, !dbg !65042
  %.sroa.10.8.copyload = load i64, ptr %.sroa.10.8..sroa_idx, align 8, !dbg !65042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !65043
  call void @llvm.experimental.noalias.scope.decl(metadata !64945), !dbg !65044
  %.not.i.i.i = icmp eq ptr %.sroa.431.8.copyload, null, !dbg !65045 ; 2 uses
  %.val1.sink.i.i.i = select i1 %.not.i.i.i, ptr %.sroa.7.8.copyload, ptr %.sroa.632.8.copyload, !dbg !65046
  %.val.sink.i.i.i = select i1 %.not.i.i.i, ptr %.sroa.632.8.copyload, ptr %.sroa.431.8.copyload, !dbg !65046
  %i.cs = ptrtoint ptr %.val1.sink.i.i.i to i64, !dbg !65047
  %i.ct = ptrtoint ptr %.val.sink.i.i.i to i64, !dbg !65047
  %i.cu = sub nuw i64 %i.cs, %i.ct, !dbg !65047
  %.sink4.i.i.i = lshr exact i64 %i.cu, 2, !dbg !65047 ; 2 uses
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTmINtNtCscgRAwXFJnXP_4core6option6OptionlEEE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %.sink4.i.i.i)
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !65048

.noexc25:                                         ; preds = %bb.q
  %i.cv = load ptr, ptr %i.ce, align 8, !dbg !65049, !alias.scope !64945, !nonnull !3467, !noundef !3467
  %i.cw = load i64, ptr %i.cf, align 8, !dbg !65050, !alias.scope !64945, !noundef !3467 ; 2 uses
  %i.cx = icmp ult i64 %i.cw, 768614336404564651, !dbg !65051
  call void @llvm.assume(i1 %i.cx), !dbg !65052
  %i.cy = getelementptr inbounds nuw [12 x i8], ptr %i.cv, i64 %i.cw, !dbg !65053
  br label %bb.r, !dbg !65054

bb.r:                                             ; preds = %bb.w, %.noexc25
  %.promoted41 = phi i32 [ %.promoted4243, %.noexc25 ], [ %.promoted40, %bb.w ] ; 2 uses
  %i.cz = phi i32 [ %.promoted4243, %.noexc25 ], [ %i.dt, %bb.w ] ; 4 uses
  %.sroa.23.0.i = phi i64 [ %.sroa.10.8.copyload, %.noexc25 ], [ %.sroa.23.5.i, %bb.w ], !dbg !65055 ; 6 uses
  %.sroa.21.0.i = phi i64 [ %.sroa.9.8.copyload, %.noexc25 ], [ %.sroa.21.4.i, %bb.w ], !dbg !65055 ; 4 uses
  %.sroa.19.0.i = phi i64 [ %.sroa.833.8.copyload, %.noexc25 ], [ %.sroa.19.4.i, %bb.w ], !dbg !65055 ; 4 uses
  %.sroa.12.0.i = phi ptr [ %.sroa.7.8.copyload, %.noexc25 ], [ %.sroa.12.5.i, %bb.w ], !dbg !65055 ; 9 uses
  %.sroa.8.0.i = phi ptr [ %.sroa.632.8.copyload, %.noexc25 ], [ %.sroa.8.3.i, %bb.w ], !dbg !65055 ; 9 uses
  %.sroa.523.0.i = phi ptr [ %.sroa.431.8.copyload, %.noexc25 ], [ %.sroa.523.4.i, %bb.w ], !dbg !65055 ; 4 uses
  %.sroa.02.0.i = phi ptr [ %i.cy, %.noexc25 ], [ %i.du, %bb.w ], !dbg !65056 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.529.i), !dbg !65057
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i), !dbg !65057
  call void @llvm.experimental.noalias.scope.decl(metadata !64947), !dbg !65057
  %.not.i.i7.i = icmp eq ptr %.sroa.523.0.i, null, !dbg !65058
  br i1 %.not.i.i7.i, label %bb.u, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, !dbg !65059

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i: ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.i) ]
  %i.da = icmp eq ptr %.sroa.523.0.i, %.sroa.8.0.i, !dbg !65060 ; 2 uses
  %spec.select.idx.i = select i1 %i.da, i64 0, i64 4, !dbg !65061
end_hunk_2
