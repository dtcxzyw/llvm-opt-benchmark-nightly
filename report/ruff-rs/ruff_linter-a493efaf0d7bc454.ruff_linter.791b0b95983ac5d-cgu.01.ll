Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.01?download=true
inline.NumInlined: 8879
inline.NumDeleted: 4283
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_6borrow3CoweEE6retainNCNvNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort19format_import_block0EB1f_:bb.a
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.sroa.15.0.i = phi i64 [ %.sroa.15.162.i, %.loopexit.i ], [ %.sroa.15.162.i, %.loopexit.split-lp.loopexit.i ], [ %.sroa.0.0.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %.sroa.8.0.i = phi i64 [ %.sroa.8.163.i, %.loopexit.i ], [ %.sroa.8.0.ph.ph.i, %.loopexit.split-lp.loopexit.i ], [ %i.ae, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit47.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp48.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %i.x = sub i64 %i.d, %.sroa.8.0.i               ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.8.0.i
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.15.0.i
  %i.aa = mul i64 %i.x, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.y, i64 %i.aa, i1 false), !noalias !141
  %i.ab = add i64 %i.x, %.sroa.15.0.i
  store i64 %i.ab, ptr %i.c, align 8, !alias.scope !136, !noalias !142
  resume { ptr, i32 } %lpad.phi.i

.loopexit50.i:                                    ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRNtNtCscdodAO9FK5_5alloc6string6StringNCNCNvNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort19format_import_block00E0B1X_.exit.backedge.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !139
  %i.ac = add nuw nsw i64 %.sroa.0.0.i, 1         ; 2 uses
  %i.ad = icmp eq i64 %i.ac, %i.d
  br i1 %i.ad, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_6borrow3CoweEE10retain_mutNCINvB2_6retainNCNvNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort19format_import_block0E0EB1z_.exit, label %bb.b

bb.c:                                             ; preds = %.split.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !139
  %i.ae = add nuw nsw i64 %.sroa.0.0.i, 1         ; 3 uses
  %i.af = load i64, ptr %i.j, align 8, !range !30, !alias.scope !143, !noalias !138, !noundef !28
  %i.ag = icmp eq i64 %i.af, -1
  br i1 %i.ag, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !138

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.d, %bb.c
  %i.ah = icmp samesign ult i64 %i.ae, %i.d
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter.exit33.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter.exit.i
  %.sroa.15.1.lcssa.i = phi i64 [ %.sroa.0.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter.exit.i ], [ %.sroa.15.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter.exit33.i ]
  store i64 %.sroa.15.1.lcssa.i, ptr %i.c, align 8, !alias.scope !136, !noalias !137
  br label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_6borrow3CoweEE10retain_mutNCINvB2_6retainNCNvNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort19format_import_block0E0EB1z_.exit

.lr.ph.i:                                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter.exit33.i
  %.sroa.8.163.i = phi i64 [ %.sroa.8.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter.exit33.i ], [ %i.ae, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter.exit.i ] ; 6 uses
  %.sroa.15.162.i = phi i64 [ %.sroa.15.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter.exit33.i ], [ %.sroa.0.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter.exit.i ] ; 6 uses
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.8.163.i ; 5 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %.val13.i = load ptr, ptr %i.aj, align 8, !noalias !138
  %i.ak = getelementptr i8, ptr %i.ai, i64 16
  %.val14.i = load i64, ptr %i.ak, align 8, !noalias !138 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !144
  invoke void @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMapNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCscdodAO9FK5_5alloc6string6StringNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE4iterB1b_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
          to label %.noexc28.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !138

.noexc28.i:                                       ; preds = %.lr.ph.i
  %i.al = invoke { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBS_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %.noexc29.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !138 ; 2 uses

.noexc29.i:                                       ; preds = %.noexc28.i
  %i.am = extractvalue { ptr, ptr } %i.al, 0
  %.not.i9.i.i.i16.i = icmp ne ptr %i.am, null
  %i.an = extractvalue { ptr, ptr } %i.al, 1      ; 2 uses
  %.not810.i.i.i17.i = icmp ne ptr %i.an, null
  %.not11.i.i.i18.i = select i1 %.not.i9.i.i.i16.i, i1 %.not810.i.i.i17.i, i1 false
  br i1 %.not11.i.i.i18.i, label %.lr.ph.i.i.i19.i, label %.loopexit46.i

.lr.ph.i.i.i19.i:                                 ; preds = %.noexc29.i, %.noexc30.i
  %i.ao = phi ptr [ %i.av, %.noexc30.i ], [ %i.an, %.noexc29.i ] ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  %.val7.i.i.i20.i = load i64, ptr %i.ap, align 8, !noalias !145, !noundef !28
  %i.aq = icmp eq i64 %.val14.i, %.val7.i.i.i20.i
  br i1 %i.aq, label %.split.i.i.i25.i, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRNtNtCscdodAO9FK5_5alloc6string6StringNCNCNvNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort19format_import_block00E0B1X_.exit.backedge.i.i.i21.i

.split.i.i.i25.i:                                 ; preds = %.lr.ph.i.i.i19.i
  %i.ar = getelementptr i8, ptr %i.ao, i64 8
  %.val6.i.i.i26.i = load ptr, ptr %i.ar, align 8, !noalias !145, !nonnull !28, !noundef !28
  %bcmp.i.i.i.i.i.i27.i = call i32 @bcmp(ptr nonnull readonly %.val13.i, ptr nonnull readonly %.val6.i.i.i26.i, i64 %.val14.i), !noalias !145
  %i.as = icmp eq i32 %bcmp.i.i.i.i.i.i27.i, 0
  br i1 %i.as, label %bb.e, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRNtNtCscdodAO9FK5_5alloc6string6StringNCNCNvNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort19format_import_block00E0B1X_.exit.backedge.i.i.i21.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRNtNtCscdodAO9FK5_5alloc6string6StringNCNCNvNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort19format_import_block00E0B1X_.exit.backedge.i.i.i21.i: ; preds = %.split.i.i.i25.i, %.lr.ph.i.i.i19.i
  %i.at = invoke { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBS_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %.noexc30.i unwind label %.loopexit.i, !noalias !138 ; 2 uses

.noexc30.i:                                       ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRNtNtCscdodAO9FK5_5alloc6string6StringNCNCNvNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort19format_import_block00E0B1X_.exit.backedge.i.i.i21.i
  %i.au = extractvalue { ptr, ptr } %i.at, 0
  %.not.i.i.i.i22.i = icmp ne ptr %i.au, null
  %i.av = extractvalue { ptr, ptr } %i.at, 1      ; 2 uses
  %.not8.i.i.i23.i = icmp ne ptr %i.av, null
  %.not.i.i.i24.i = select i1 %.not.i.i.i.i22.i, i1 %.not8.i.i.i23.i, i1 false
  br i1 %.not.i.i.i24.i, label %.lr.ph.i.i.i19.i, label %.loopexit46.i

bb.e:                                             ; preds = %.split.i.i.i25.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !144
  %i.aw = add nuw nsw i64 %.sroa.8.163.i, 1       ; 3 uses
  %i.ax = load i64, ptr %i.ai, align 8, !range !30, !alias.scope !146, !noalias !138, !noundef !28
  %i.ay = icmp eq i64 %i.ax, -1
  br i1 %i.ay, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter.exit33.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter.exit33.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !138

.loopexit46.i:                                    ; preds = %.noexc30.i, %.noexc29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !144
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.15.162.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !138
  %i.ba = add i64 %.sroa.15.162.i, 1
  %i.bb = add nuw nsw i64 %.sroa.8.163.i, 1
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter.exit33.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter.exit33.i: ; preds = %.loopexit46.i, %bb.f, %bb.e
  %.sroa.15.2.i = phi i64 [ %i.ba, %.loopexit46.i ], [ %.sroa.15.162.i, %bb.f ], [ %.sroa.15.162.i, %bb.e ] ; 2 uses
  %.sroa.8.2.i = phi i64 [ %i.bb, %.loopexit46.i ], [ %i.aw, %bb.f ], [ %i.aw, %bb.e ] ; 2 uses
  %i.bc = icmp samesign ult i64 %.sroa.8.2.i, %i.d
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i

_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_6borrow3CoweEE10retain_mutNCINvB2_6retainNCNvNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort19format_import_block0E0EB1z_.exit: ; preds = %.loopexit50.i, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB1k_5error10ParseErrorEE5drainINtNtNtBJ_3ops5range9RangeFromjEECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !28 ; 3 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeINtNtNtB6_3ops5range9RangeFromjEECsEhZmuQNqkz_11ruff_linter(i64 noundef %2, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.i = getelementptr inbounds nuw [104 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [104 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringE5drainINtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFromjEECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !28 ; 3 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeINtNtNtB6_3ops5range9RangeFromjEECsEhZmuQNqkz_11ruff_linter(i64 noundef %2, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeE8dedup_byNCNvMs4_B5_Bu_5dedup0ECsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !28 ; 7 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !28, !noundef !28 ; 7 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %indvar = phi i64 [ 0, %bb.b ], [ %indvar.next, %bb.e ] ; 3 uses
  %.sroa.0.023 = phi i64 [ 1, %bb.b ], [ %.sroa.5.024, %bb.e ] ; 8 uses
  %i.g = getelementptr [4 x i8], ptr %i.f, i64 %.sroa.0.023 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -4
  %.val = load i32, ptr %i.g, align 4, !noundef !28
  %.val11 = load i32, ptr %i.h, align 4, !noundef !28
  %i.i = icmp eq i32 %.val, %.val11
  %.sroa.5.024 = add nuw nsw i64 %.sroa.0.023, 1  ; 5 uses
  br i1 %i.i, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.j = icmp samesign ult i64 %.sroa.5.024, %i.b
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.k = sub i64 %i.b, %indvar
  %i.l = add nsw i64 %i.b, -3
  %xtraiter = and i64 %i.k, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.5.024
  %i.n = getelementptr [4 x i8], ptr %i.f, i64 %.sroa.0.023 ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -4
  %.val12.prol = load i32, ptr %i.m, align 4, !noundef !28 ; 2 uses
  %.val13.prol = load i32, ptr %i.o, align 4, !noundef !28
  %i.p = icmp eq i32 %.val12.prol, %.val13.prol
  br i1 %i.p, label %.lr.ph.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.prol
  store i32 %.val12.prol, ptr %i.n, align 4
  %i.q = add nuw i64 %.sroa.0.023, 1
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.d, %.lr.ph.prol
  %.sroa.11.1.prol = phi i64 [ %i.q, %bb.d ], [ %.sroa.0.023, %.lr.ph.prol ] ; 2 uses
  %.sroa.5.0.prol = add nuw nsw i64 %.sroa.0.023, 2
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.11.1.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.5.026.unr = phi i64 [ %.sroa.5.024, %.lr.ph.preheader ], [ %.sroa.5.0.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.11.025.unr = phi i64 [ %.sroa.0.023, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.r = icmp eq i64 %i.l, %indvar
  br i1 %i.r, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i64 %.sroa.5.024, %i.b
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.c

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.h, %.preheader
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.023, %.preheader ], [ %.sroa.11.1.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.sroa.11.1.1, %bb.h ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.a, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.h
  %.sroa.5.026 = phi i64 [ %.sroa.5.0.1, %bb.h ], [ %.sroa.5.026.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.sroa.11.025 = phi i64 [ %.sroa.11.1.1, %bb.h ], [ %.sroa.11.025.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.5.026
  %i.t = getelementptr [4 x i8], ptr %i.f, i64 %.sroa.11.025 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -4
  %.val12 = load i32, ptr %i.s, align 4, !noundef !28 ; 2 uses
  %.val13 = load i32, ptr %i.u, align 4, !noundef !28
  %i.v = icmp eq i32 %.val12, %.val13
  br i1 %i.v, label %.lr.ph.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  store i32 %.val12, ptr %i.t, align 4
  %i.w = add i64 %.sroa.11.025, 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.f
  %.sroa.11.1 = phi i64 [ %i.w, %bb.f ], [ %.sroa.11.025, %.lr.ph ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.5.026
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = getelementptr [4 x i8], ptr %i.f, i64 %.sroa.11.1 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -4
  %.val12.1 = load i32, ptr %i.y, align 4, !noundef !28 ; 2 uses
  %.val13.1 = load i32, ptr %i.aa, align 4, !noundef !28
  %i.ab = icmp eq i32 %.val12.1, %.val13.1
  br i1 %i.ab, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.1
  store i32 %.val12.1, ptr %i.z, align 4
  %i.ac = add i64 %.sroa.11.1, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.1
  %.sroa.11.1.1 = phi i64 [ %i.ac, %bb.g ], [ %.sroa.11.1, %.lr.ph.1 ] ; 2 uses
  %.sroa.5.0.1 = add nuw nsw i64 %.sroa.5.026, 2  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %.sroa.5.0.1, %i.b
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticE6retainNCNvNtCsEhZmuQNqkz_11ruff_linter4test17print_diagnostics0EB1G_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !166, !noundef !28 ; 8 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticE10retain_mutNCINvB2_6retainNCNvNtCsEhZmuQNqkz_11ruff_linter4test17print_diagnostics0E0EB20_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !166, !nonnull !28, !noundef !28 ; 10 uses
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.g = icmp samesign ult i64 %i.b, 4
  br i1 %i.g, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i
  %unroll_iter = and i64 %i.b, 1152921504606846972
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.preheader.i.new
  %.sroa.0.0.i = phi i64 [ 0, %.preheader.i.new ], [ %i.x, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader.i.new ], [ %niter.next.3, %bb.g ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.0.0.i
  %.val.i = load ptr, ptr %i.h, align 8, !noalias !166, !nonnull !28, !noundef !28 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.i, align 8, !noalias !166
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 2
  %i.j = or disjoint i64 %.sroa.0.0.i, 1          ; 3 uses
  br i1 %.not.i, label %.loopexit, label %bb.d, !prof !31

.loopexit.i:                                      ; preds = %bb.j
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i:                             ; preds = %bb.h
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.15.0.i = phi i64 [ %.sroa.15.137.i, %.loopexit.i ], [ %.sroa.0.0.i.lcssa, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.8.0.i = phi i64 [ %i.ae, %.loopexit.i ], [ %.lcssa22, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.k = sub i64 %i.b, %.sroa.8.0.i               ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.8.0.i
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.15.0.i
  %i.n = shl i64 %i.k, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.l, i64 %i.n, i1 false), !noalias !167
  %i.o = add i64 %i.k, %.sroa.15.0.i
  store i64 %i.o, ptr %i.a, align 8, !alias.scope !166, !noalias !168
  resume { ptr, i32 } %lpad.phi.i

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.j
  %.val.i.1 = load ptr, ptr %i.p, align 8, !noalias !166, !nonnull !28, !noundef !28 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.1, i64 16
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.q, align 8, !noalias !166
  %.not.i.1 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1, 2
  %i.r = or disjoint i64 %.sroa.0.0.i, 2          ; 3 uses
  br i1 %.not.i.1, label %.loopexit, label %bb.e, !prof !31

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.r
  %.val.i.2 = load ptr, ptr %i.s, align 8, !noalias !166, !nonnull !28, !noundef !28 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.2, i64 16
  %.sroa.0.0.copyload.i.i.i.2 = load i64, ptr %i.t, align 8, !noalias !166
  %.not.i.2 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.2, 2
  %i.u = or disjoint i64 %.sroa.0.0.i, 3          ; 3 uses
  br i1 %.not.i.2, label %.loopexit, label %bb.f, !prof !31

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.u
  %.val.i.3 = load ptr, ptr %i.v, align 8, !noalias !166, !nonnull !28, !noundef !28 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.3, i64 16
  %.sroa.0.0.copyload.i.i.i.3 = load i64, ptr %i.w, align 8, !noalias !166
  %.not.i.3 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.3, 2
  %i.x = add nuw nsw i64 %.sroa.0.0.i, 4          ; 3 uses
  br i1 %.not.i.3, label %.loopexit, label %bb.g, !prof !31

bb.g:                                             ; preds = %bb.f
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticE10retain_mutNCINvB2_6retainNCNvNtCsEhZmuQNqkz_11ruff_linter4test17print_diagnostics0E0EB20_.exit.loopexit.unr-lcssa, label %bb.b

.loopexit:                                        ; preds = %bb.l, %bb.b, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i.lcssa = phi i64 [ %i.u, %bb.f ], [ %.sroa.0.0.i, %bb.b ], [ %i.j, %bb.d ], [ %i.r, %bb.e ], [ %.sroa.0.0.i.epil, %bb.l ] ; 4 uses
  %.val.i.lcssa = phi ptr [ %.val.i.3, %bb.f ], [ %.val.i, %bb.b ], [ %.val.i.1, %bb.d ], [ %.val.i.2, %bb.e ], [ %.val.i.epil, %bb.l ]
  %.lcssa22 = phi i64 [ %i.x, %bb.f ], [ %i.j, %bb.b ], [ %i.r, %bb.d ], [ %i.u, %bb.e ], [ %i.ao, %bb.l ] ; 3 uses
  %i.y = atomicrmw sub ptr %.val.i.lcssa, i64 1 release, align 8, !noalias !169
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter.exit.i

bb.h:                                             ; preds = %.loopexit
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.0.0.i.lcssa
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %.loopexit.split-lp.i, !noalias !166

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.h, %.loopexit
  %i.ab = icmp samesign ult i64 %.lcssa22, %i.b
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter.exit13.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter.exit.i
  %.sroa.15.1.lcssa.i = phi i64 [ %.sroa.0.0.i.lcssa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter.exit.i ], [ %.sroa.15.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter.exit13.i ]
  store i64 %.sroa.15.1.lcssa.i, ptr %i.a, align 8, !alias.scope !166
  br label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticE10retain_mutNCINvB2_6retainNCNvNtCsEhZmuQNqkz_11ruff_linter4test17print_diagnostics0E0EB20_.exit

.lr.ph.i:                                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter.exit13.i
  %.sroa.8.138.i = phi i64 [ %.sroa.8.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter.exit13.i ], [ %.lcssa22, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter.exit.i ] ; 3 uses
  %.sroa.15.137.i = phi i64 [ %.sroa.15.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter.exit13.i ], [ %.sroa.0.0.i.lcssa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter.exit.i ] ; 5 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.8.138.i ; 2 uses
  %.val10.i = load ptr, ptr %i.ac, align 8, !noalias !166, !nonnull !28, !noundef !28 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %.sroa.0.0.copyload.i.i11.i = load i64, ptr %i.ad, align 8, !noalias !166
  %.not26.i = icmp eq i64 %.sroa.0.0.copyload.i.i11.i, 2
  br i1 %.not26.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw nsw i64 %.sroa.8.138.i, 1       ; 3 uses
  %i.af = atomicrmw sub ptr %.val10.i, i64 1 release, align 8, !noalias !170
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter.exit13.i

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter.exit13.i unwind label %.loopexit.i, !noalias !166

bb.k:                                             ; preds = %.lr.ph.i
  %i.ah = ptrtoint ptr %.val10.i to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.15.137.i
  store i64 %i.ah, ptr %i.ai, align 8, !noalias !166
  %i.aj = add i64 %.sroa.15.137.i, 1
  %i.ak = add nuw nsw i64 %.sroa.8.138.i, 1
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter.exit13.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter.exit13.i: ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.15.2.i = phi i64 [ %i.aj, %bb.k ], [ %.sroa.15.137.i, %bb.j ], [ %.sroa.15.137.i, %bb.i ] ; 2 uses
  %.sroa.8.2.i = phi i64 [ %i.ak, %bb.k ], [ %i.ae, %bb.j ], [ %i.ae, %bb.i ] ; 2 uses
  %i.al = icmp samesign ult i64 %.sroa.8.2.i, %i.b
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.i

_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticE10retain_mutNCINvB2_6retainNCNvNtCsEhZmuQNqkz_11ruff_linter4test17print_diagnostics0E0EB20_.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticE10retain_mutNCINvB2_6retainNCNvNtCsEhZmuQNqkz_11ruff_linter4test17print_diagnostics0E0EB20_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticE10retain_mutNCINvB2_6retainNCNvNtCsEhZmuQNqkz_11ruff_linter4test17print_diagnostics0E0EB20_.exit.loopexit.unr-lcssa, %.preheader.i
  %.sroa.0.0.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %i.x, %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticE10retain_mutNCINvB2_6retainNCNvNtCsEhZmuQNqkz_11ruff_linter4test17print_diagnostics0E0EB20_.exit.loopexit.unr-lcssa ]
  %lcmp.mod26 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod26)
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.epil.preheader
  %.sroa.0.0.i.epil = phi i64 [ %i.ao, %bb.m ], [ %.sroa.0.0.i.epil.init, %.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.m ], [ 0, %.epil.preheader ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.0.0.i.epil
  %.val.i.epil = load ptr, ptr %i.am, align 8, !noalias !166, !nonnull !28, !noundef !28 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val.i.epil, i64 16
  %.sroa.0.0.copyload.i.i.i.epil = load i64, ptr %i.an, align 8, !noalias !166
  %.not.i.epil = icmp eq i64 %.sroa.0.0.copyload.i.i.i.epil, 2
  %i.ao = add nuw nsw i64 %.sroa.0.0.i.epil, 1    ; 2 uses
  br i1 %.not.i.epil, label %.loopexit, label %bb.m, !prof !31

bb.m:                                             ; preds = %bb.l
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticE10retain_mutNCINvB2_6retainNCNvNtCsEhZmuQNqkz_11ruff_linter4test17print_diagnostics0E0EB20_.exit, label %bb.l, !llvm.loop !165

_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticE10retain_mutNCINvB2_6retainNCNvNtCsEhZmuQNqkz_11ruff_linter4test17print_diagnostics0E0EB20_.exit: ; preds = %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticE10retain_mutNCINvB2_6retainNCNvNtCsEhZmuQNqkz_11ruff_linter4test17print_diagnostics0E0EB20_.exit.loopexit.unr-lcssa, %bb.m, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE8dedup_byNCNvMs4_B5_Bu_5dedup0ECsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !28 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !28, !noundef !28 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE5dedup0CsEhZmuQNqkz_11ruff_linter.exit.thread
  %.sroa.0.034 = phi i64 [ 1, %bb.b ], [ %i.ab, %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE5dedup0CsEhZmuQNqkz_11ruff_linter.exit.thread ] ; 5 uses
  %i.g = getelementptr [24 x i8], ptr %i.f, i64 %.sroa.0.034 ; 8 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = load i32, ptr %i.i, align 8, !alias.scope !187, !noalias !188, !noundef !28
  %i.k = getelementptr i8, ptr %i.g, i64 -8
  %i.l = load i32, ptr %i.k, align 8, !alias.scope !188, !noalias !187, !noundef !28
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE5dedup0CsEhZmuQNqkz_11ruff_linter.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.o = load i32, ptr %i.n, align 4, !alias.scope !187, !noalias !188, !noundef !28
  %i.p = getelementptr i8, ptr %i.g, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !alias.scope !188, !noalias !187, !noundef !28
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.e, label %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE5dedup0CsEhZmuQNqkz_11ruff_linter.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.g, align 8, !alias.scope !187, !noalias !188, !noundef !28 ; 4 uses
  %.not.i.i = icmp eq ptr %i.s, null              ; 2 uses
  %i.t = load ptr, ptr %i.h, align 8, !alias.scope !188, !noalias !187, !noundef !28 ; 2 uses
  %i.u = icmp eq ptr %i.t, null                   ; 2 uses
  %brmerge.i.i = or i1 %.not.i.i, %i.u
  br i1 %brmerge.i.i, label %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE5dedup0CsEhZmuQNqkz_11ruff_linter.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.w = getelementptr i8, ptr %i.g, i64 -16
  %i.x = load i64, ptr %i.v, align 8, !alias.scope !187, !noalias !188, !noundef !28 ; 4 uses
  %i.y = load i64, ptr %i.w, align 8, !alias.scope !188, !noalias !187, !noundef !28
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %.split, label %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE5dedup0CsEhZmuQNqkz_11ruff_linter.exit.thread

.split:                                           ; preds = %bb.f
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.s, ptr nonnull %i.t, i64 %i.x), !noalias !189
  %i.aa = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.aa, label %split, label %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE5dedup0CsEhZmuQNqkz_11ruff_linter.exit.thread

_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE5dedup0CsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.e
  %.mux.i.i = and i1 %.not.i.i, %i.u
  br i1 %.mux.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit, label %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE5dedup0CsEhZmuQNqkz_11ruff_linter.exit.thread

_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE5dedup0CsEhZmuQNqkz_11ruff_linter.exit.thread: ; preds = %bb.c, %bb.f, %bb.d, %.split, %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE5dedup0CsEhZmuQNqkz_11ruff_linter.exit
  %i.ab = add nuw nsw i64 %.sroa.0.034, 1         ; 2 uses
  %.not = icmp eq i64 %i.ab, %i.b
  br i1 %.not, label %.loopexit, label %bb.c

split:                                            ; preds = %.split
  %i.ac = icmp eq i64 %i.x, 0
  br i1 %i.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit, label %bb.g

bb.g:                                             ; preds = %split
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef range(i64 1, 0) %i.x, i64 noundef 1) #28
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE5dedup0CsEhZmuQNqkz_11ruff_linter.exit, %split, %bb.g
  %.sroa.5.035 = add nuw nsw i64 %.sroa.0.034, 1  ; 2 uses
  %i.ad = icmp samesign ult i64 %.sroa.5.035, %i.b
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit21, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.12.0.lcssa = phi i64 [ %.sroa.0.034, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.12.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit21 ]
  store i64 %.sroa.12.0.lcssa, ptr %i.a, align 8
  br label %.loopexit

.lr.ph:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit21
  %.sroa.5.037 = phi i64 [ %.sroa.5.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit21 ], [ %.sroa.5.035, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit ] ; 2 uses
  %.sroa.12.036 = phi i64 [ %.sroa.12.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit21 ], [ %.sroa.0.034, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit ] ; 5 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.5.037 ; 5 uses
  %i.af = getelementptr [24 x i8], ptr %i.f, i64 %.sroa.12.036 ; 5 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !alias.scope !194, !noalias !195, !noundef !28
  %i.aj = getelementptr i8, ptr %i.af, i64 -8
  %i.ak = load i32, ptr %i.aj, align 8, !alias.scope !195, !noalias !194, !noundef !28
  %i.al = icmp eq i32 %i.ai, %i.ak
  br i1 %i.al, label %bb.h, label %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE5dedup0CsEhZmuQNqkz_11ruff_linter.exit19.thread

bb.h:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.an = load i32, ptr %i.am, align 4, !alias.scope !194, !noalias !195, !noundef !28
  %i.ao = getelementptr i8, ptr %i.af, i64 -4
  %i.ap = load i32, ptr %i.ao, align 4, !alias.scope !195, !noalias !194, !noundef !28
  %i.aq = icmp eq i32 %i.an, %i.ap
  br i1 %i.aq, label %bb.i, label %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE5dedup0CsEhZmuQNqkz_11ruff_linter.exit19.thread

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.ae, align 8, !alias.scope !194, !noalias !195, !noundef !28 ; 4 uses
  %.not.i.i15 = icmp eq ptr %i.ar, null           ; 2 uses
  %i.as = load ptr, ptr %i.ag, align 8, !alias.scope !195, !noalias !194, !noundef !28 ; 2 uses
  %i.at = icmp eq ptr %i.as, null                 ; 2 uses
  %brmerge.i.i16 = or i1 %.not.i.i15, %i.at
  br i1 %brmerge.i.i16, label %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE5dedup0CsEhZmuQNqkz_11ruff_linter.exit19, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.av = getelementptr i8, ptr %i.af, i64 -16
  %i.aw = load i64, ptr %i.au, align 8, !alias.scope !194, !noalias !195, !noundef !28 ; 4 uses
  %i.ax = load i64, ptr %i.av, align 8, !alias.scope !195, !noalias !194, !noundef !28
  %i.ay = icmp eq i64 %i.aw, %i.ax
  br i1 %i.ay, label %.split32, label %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE5dedup0CsEhZmuQNqkz_11ruff_linter.exit19.thread

.split32:                                         ; preds = %bb.j
  %bcmp.i.i18 = tail call i32 @bcmp(ptr nonnull %i.ar, ptr nonnull %i.as, i64 %i.aw), !noalias !196
  %i.az = icmp eq i32 %bcmp.i.i18, 0
  br i1 %i.az, label %bb.k, label %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE5dedup0CsEhZmuQNqkz_11ruff_linter.exit19.thread

.loopexit:                                        ; preds = %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE5dedup0CsEhZmuQNqkz_11ruff_linter.exit.thread, %bb.a, %._crit_edge
  ret void

_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE5dedup0CsEhZmuQNqkz_11ruff_linter.exit19: ; preds = %bb.i
  %.mux.i.i17 = and i1 %.not.i.i15, %i.at
  br i1 %.mux.i.i17, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit21, label %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE5dedup0CsEhZmuQNqkz_11ruff_linter.exit19.thread

_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE5dedup0CsEhZmuQNqkz_11ruff_linter.exit19.thread: ; preds = %.lr.ph, %bb.j, %bb.h, %.split32, %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE5dedup0CsEhZmuQNqkz_11ruff_linter.exit19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  %i.ba = add i64 %.sroa.12.036, 1
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit21

bb.k:                                             ; preds = %.split32
  %i.bb = icmp eq i64 %i.aw, 0
  br i1 %i.bb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit21, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef range(i64 1, 0) %i.aw, i64 noundef 1) #28
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit21

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit21: ; preds = %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE5dedup0CsEhZmuQNqkz_11ruff_linter.exit19, %bb.l, %bb.k, %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE5dedup0CsEhZmuQNqkz_11ruff_linter.exit19.thread
  %.sroa.12.1 = phi i64 [ %i.ba, %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE5dedup0CsEhZmuQNqkz_11ruff_linter.exit19.thread ], [ %.sroa.12.036, %bb.k ], [ %.sroa.12.036, %bb.l ], [ %.sroa.12.036, %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE5dedup0CsEhZmuQNqkz_11ruff_linter.exit19 ] ; 2 uses
  %.sroa.5.0 = add nuw nsw i64 %.sroa.5.037, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.5.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression11DictElementE6retainNCNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules8pyflakes5fixes40remove_unused_format_arguments_from_dict00EB22_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !223, !noalias !224, !noundef !28 ; 6 uses
  %i.c = icmp ult i64 %i.b, 20587884010836554
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression11DictElementE10retain_mutNCINvB2_6retainNCNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules8pyflakes5fixes40remove_unused_format_arguments_from_dict00E0EB2m_.exit, label %.preheader42.i

.preheader42.i:                                   ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !alias.scope !225, !noalias !223, !nonnull !28, !align !33, !noundef !28 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !225, !noalias !223, !noundef !28 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !225, !noalias !223, !nonnull !28, !align !33, !noundef !28 ; 6 uses
  %i.j = and i64 %i.g, 1152921504606846968        ; 5 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.j ; 4 uses
  %.promoted.i = load i64, ptr %i.i, align 8, !noalias !226
  %i.l = shl i64 %i.g, 3
  %.idx = and i64 %i.l, 56                        ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx ; 2 uses
  %i.n = add nsw i64 %.idx, -8                    ; 2 uses
  %i.o = lshr exact i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 1
  %.not.i.i.i.i41 = icmp eq i64 %i.j, 0
  %.not.not.not.i.not.not.i.i.i.i44 = icmp samesign eq i64 %.idx, 0
  %xtraiter = and i64 %i.p, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.q = icmp ult i64 %i.n, 56
  br label %bb.b

bb.b:                                             ; preds = %.preheader70.i._crit_edge, %.preheader42.i
  %i.r = phi i64 [ %i.bp, %.preheader70.i._crit_edge ], [ %.promoted.i, %.preheader42.i ] ; 19 uses
  %.sroa.0.0.i = phi i64 [ %i.bq, %.preheader70.i._crit_edge ], [ 0, %.preheader42.i ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  br i1 %.not.i.i.i.i41, label %.preheader70.i.preheader, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i

bb.c:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i43, i64 64
  %i.t = add nsw i64 %.sroa.5.0.i.i.i.i42, -8     ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i, label %.preheader70.i.preheader, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i

.preheader70.i.preheader:                         ; preds = %bb.c, %bb.b
  br i1 %.not.not.not.i.not.not.i.i.i.i44, label %.preheader70.i._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader70.i.preheader
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.preheader70.i.prol
  %i.u = phi ptr [ %i.w, %.preheader70.i.prol ], [ %i.k, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader70.i.prol ], [ 0, %.lr.ph.preheader ]
  %.val3.i.i.i.i.i.prol = load i64, ptr %i.u, align 8, !alias.scope !228, !noalias !229, !noundef !28
  %i.v = icmp eq i64 %.val3.i.i.i.i.i.prol, %i.r
  br i1 %i.v, label %.loopexit40.i, label %.preheader70.i.prol, !prof !29

.preheader70.i.prol:                              ; preds = %.lr.ph.prol
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !207

.lr.ph.prol.loopexit:                             ; preds = %.preheader70.i.prol, %.lr.ph.preheader
  %.unr = phi ptr [ %i.k, %.lr.ph.preheader ], [ %i.w, %.preheader70.i.prol ]
  br i1 %i.q, label %.preheader70.i._crit_edge, label %.lr.ph

.preheader70.i:                                   ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.val3.i.i.i.i.i.1 = load i64, ptr %i.x, align 8, !alias.scope !228, !noalias !229, !noundef !28
  %i.y = icmp eq i64 %.val3.i.i.i.i.i.1, %i.r
  br i1 %i.y, label %.loopexit40.i, label %.preheader70.i.1, !prof !29

.preheader70.i.1:                                 ; preds = %.preheader70.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.val3.i.i.i.i.i.2 = load i64, ptr %i.z, align 8, !alias.scope !228, !noalias !229, !noundef !28
  %i.aa = icmp eq i64 %.val3.i.i.i.i.i.2, %i.r
  br i1 %i.aa, label %.loopexit40.i, label %.preheader70.i.2, !prof !29

.preheader70.i.2:                                 ; preds = %.preheader70.i.1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.val3.i.i.i.i.i.3 = load i64, ptr %i.ab, align 8, !alias.scope !228, !noalias !229, !noundef !28
  %i.ac = icmp eq i64 %.val3.i.i.i.i.i.3, %i.r
  br i1 %i.ac, label %.loopexit40.i, label %.preheader70.i.3, !prof !29

.preheader70.i.3:                                 ; preds = %.preheader70.i.2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %.val3.i.i.i.i.i.4 = load i64, ptr %i.ad, align 8, !alias.scope !228, !noalias !229, !noundef !28
  %i.ae = icmp eq i64 %.val3.i.i.i.i.i.4, %i.r
  br i1 %i.ae, label %.loopexit40.i, label %.preheader70.i.4, !prof !29

.preheader70.i.4:                                 ; preds = %.preheader70.i.3
  %i.af = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %.val3.i.i.i.i.i.5 = load i64, ptr %i.af, align 8, !alias.scope !228, !noalias !229, !noundef !28
  %i.ag = icmp eq i64 %.val3.i.i.i.i.i.5, %i.r
  br i1 %i.ag, label %.loopexit40.i, label %.preheader70.i.5, !prof !29

.preheader70.i.5:                                 ; preds = %.preheader70.i.4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %.val3.i.i.i.i.i.6 = load i64, ptr %i.ah, align 8, !alias.scope !228, !noalias !229, !noundef !28
  %i.ai = icmp eq i64 %.val3.i.i.i.i.i.6, %i.r
  br i1 %i.ai, label %.loopexit40.i, label %.preheader70.i.6, !prof !29

.preheader70.i.6:                                 ; preds = %.preheader70.i.5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %.val3.i.i.i.i.i.7 = load i64, ptr %i.aj, align 8, !alias.scope !228, !noalias !229, !noundef !28
  %i.ak = icmp eq i64 %.val3.i.i.i.i.i.7, %i.r
  br i1 %i.ak, label %.loopexit40.i, label %.preheader70.i.7, !prof !29

.preheader70.i.7:                                 ; preds = %.preheader70.i.6
  %i.al = getelementptr inbounds nuw i8, ptr %i.am, i64 64 ; 2 uses
  %.not.not.not.i.not.not.i.i.i.i.7 = icmp eq ptr %i.al, %i.m
  br i1 %.not.not.not.i.not.not.i.i.i.i.7, label %.preheader70.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.preheader70.i.7
  %i.am = phi ptr [ %i.al, %.preheader70.i.7 ], [ %.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.val3.i.i.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !228, !noalias !229, !noundef !28
end_hunk_0
