Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_table-a9a6f7d3980ea30b.lance_table.71a0d83425f78a62-cgu.0?download=true
inline.NumInlined: 28246
inline.NumDeleted: 13059
loop-unroll.NumCompletelyUnrolled: 101
loop-unroll.NumRuntimeUnrolled: 190
loop-unroll.NumUnrolled: 295
begin_hunk_0_@_RNvNtNtCs9KQ7US1M400_11lance_table2io6commit26make_staging_manifest_path:bb.a
  %.val.i = load i64, ptr %i.j, align 8, !alias.scope !64098 ; 2 uses
  %i.s = icmp eq i64 %.val.i, 0
  br i1 %i.s, label %common.resume, label %bb.g

bb.g:                                             ; preds = %.body
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val1.i = load ptr, ptr %i.t, align 8, !alias.scope !64098, !nonnull !99, !noundef !99
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !64098
  br label %common.resume

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit: ; preds = %_RNvXsC_NtCs40k4W9msRzi_5alloc6stringNtCs8d5NHFTTVL0_4uuid4UuidNtB5_12SpecToString14spec_to_stringCs9KQ7US1M400_11lance_table.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !64099)
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val.i17 = load ptr, ptr %i.u, align 8, !alias.scope !64099, !nonnull !99, !noundef !99 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val79.i = load i64, ptr %i.v, align 8, !alias.scope !64099, !noundef !99 ; 16 uses
  %.not.i.i = icmp eq i64 %.val79.i, 0
  br i1 %.not.i.i, label %.thread207.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs9KQ7US1M400_11lance_table.exit.i

.body.i:                                          ; preds = %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %bb.cl, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.lv, %bb.cl ], [ %i.lv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i ], [ %lpad.loopexit.split-lp, %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !64100)
  %.val.i.i18 = load i64, ptr %i.h, align 8, !alias.scope !64101 ; 2 uses
  %i.w = icmp eq i64 %.val.i.i18, 0
  br i1 %i.w, label %.body, label %bb.h

bb.h:                                             ; preds = %.body.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i17, i64 noundef %.val.i.i18, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !64102
  br label %.body

_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs9KQ7US1M400_11lance_table.exit.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit
  %rhsc.i.i = load i8, ptr %.val.i17, align 1, !alias.scope !64103, !noalias !64104
  %rhsc.i.fr.i = freeze i8 %rhsc.i.i
  %i.x = icmp eq i8 %rhsc.i.fr.i, 47
  br i1 %i.x, label %.split.i, label %.thread208.i

.split.i:                                         ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs9KQ7US1M400_11lance_table.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i17, i64 1
  %i.z = add i64 %.val79.i, -1                    ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.thread207.i, label %.thread208.i

.thread207.i:                                     ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit, %.split.i, %_RNCINvMNtCs3PfUT229lOd_12object_store4pathNtB5_4Path5parseNtNtCs40k4W9msRzi_5alloc6string6StringE0Cs9KQ7US1M400_11lance_table.exit.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit98.thread256.i
  %.sroa.25.0 = phi i64 [ %.sroa.8192.0.copyload.i, %_RNCINvMNtCs3PfUT229lOd_12object_store4pathNtB5_4Path5parseNtNtCs40k4W9msRzi_5alloc6string6StringE0Cs9KQ7US1M400_11lance_table.exit.i ], [ undef, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit98.thread256.i ], [ undef, %.split.i ], [ undef, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit ] ; 2 uses
  %.sroa.24.0 = phi ptr [ %.sroa.7191.0.copyload.i, %_RNCINvMNtCs3PfUT229lOd_12object_store4pathNtB5_4Path5parseNtNtCs40k4W9msRzi_5alloc6string6StringE0Cs9KQ7US1M400_11lance_table.exit.i ], [ undef, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit98.thread256.i ], [ undef, %.split.i ], [ undef, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit ] ; 2 uses
  %.sroa.21.0 = phi ptr [ %.sroa.4188.0.copyload.i, %_RNCINvMNtCs3PfUT229lOd_12object_store4pathNtB5_4Path5parseNtNtCs40k4W9msRzi_5alloc6string6StringE0Cs9KQ7US1M400_11lance_table.exit.i ], [ undef, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit98.thread256.i ], [ undef, %.split.i ], [ undef, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit ] ; 2 uses
  %.sroa.17.0 = phi i64 [ %.us-phi336.i, %_RNCINvMNtCs3PfUT229lOd_12object_store4pathNtB5_4Path5parseNtNtCs40k4W9msRzi_5alloc6string6StringE0Cs9KQ7US1M400_11lance_table.exit.i ], [ %.val79.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit98.thread256.i ], [ 0, %.split.i ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit ] ; 2 uses
  %.sroa.13.0 = phi ptr [ %i.lz, %_RNCINvMNtCs3PfUT229lOd_12object_store4pathNtB5_4Path5parseNtNtCs40k4W9msRzi_5alloc6string6StringE0Cs9KQ7US1M400_11lance_table.exit.i ], [ %i.ln, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit98.thread256.i ], [ inttoptr (i64 1 to ptr), %.split.i ], [ inttoptr (i64 1 to ptr), %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit ] ; 2 uses
  %.sroa.8.0 = phi i64 [ %i.ly, %_RNCINvMNtCs3PfUT229lOd_12object_store4pathNtB5_4Path5parseNtNtCs40k4W9msRzi_5alloc6string6StringE0Cs9KQ7US1M400_11lance_table.exit.i ], [ %.val79.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit98.thread256.i ], [ 0, %.split.i ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %.val79.i, %_RNCINvMNtCs3PfUT229lOd_12object_store4pathNtB5_4Path5parseNtNtCs40k4W9msRzi_5alloc6string6StringE0Cs9KQ7US1M400_11lance_table.exit.i ], [ -9223372036854775808, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit98.thread256.i ], [ -1, %.split.i ], [ -1, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit ] ; 2 uses
  %i.ab = phi <2 x i64> [ %i.ls, %_RNCINvMNtCs3PfUT229lOd_12object_store4pathNtB5_4Path5parseNtNtCs40k4W9msRzi_5alloc6string6StringE0Cs9KQ7US1M400_11lance_table.exit.i ], [ undef, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit98.thread256.i ], [ undef, %.split.i ], [ undef, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit ] ; 2 uses
  %.val.i84.i = load i64, ptr %i.h, align 8, !alias.scope !64105 ; 2 uses
  %i.ac = icmp eq i64 %.val.i84.i, 0
  br i1 %i.ac, label %_RINvMNtCs3PfUT229lOd_12object_store4pathNtB3_4Path5parseNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit86.sink.split.i

.thread208.i:                                     ; preds = %.split.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs9KQ7US1M400_11lance_table.exit.i
  %i.ad = phi ptr [ %i.y, %.split.i ], [ %.val.i17, %_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs9KQ7US1M400_11lance_table.exit.i ] ; 3 uses
  %i.ae = phi i64 [ %i.z, %.split.i ], [ %.val79.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs9KQ7US1M400_11lance_table.exit.i ] ; 2 uses
  %i.af = getelementptr i8, ptr %i.ad, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -1
  %rhsc.i = load i8, ptr %i.ag, align 1, !noalias !64104
  %i.ah = icmp eq i8 %rhsc.i, 47
  %i.ai = sext i1 %i.ah to i64
  %spec.select.i = add i64 %i.ae, %i.ai           ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !64104
  invoke void @_RNvMsu_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %spec.select.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 1)
          to label %bb.i unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !64104

bb.i:                                             ; preds = %.thread208.i
  %.sroa.038.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !noalias !64104
  %.sroa.038.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.038.sroa.4.0.copyload.i = load i64, ptr %.sroa.038.sroa.4.0..sroa_idx.i, align 8, !noalias !64104 ; 33 uses
  %.sroa.038.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.038.sroa.6.0.copyload.i = load i64, ptr %.sroa.038.sroa.6.0..sroa_idx.i, align 8, !noalias !64104 ; 5 uses
  %.sroa.038.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.038.sroa.7.0.copyload.i = load i64, ptr %.sroa.038.sroa.7.0..sroa_idx.i, align 8, !noalias !64104 ; 2 uses
  %.sroa.038.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.038.sroa.8.0.copyload.i = load i64, ptr %.sroa.038.sroa.8.0..sroa_idx.i, align 8, !noalias !64104
  %.sroa.038.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.038.sroa.10.0.copyload.i = load i64, ptr %.sroa.038.sroa.10.0..sroa_idx.i, align 8, !noalias !64104
  %.sroa.038.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.038.sroa.12.0.copyload.i = load ptr, ptr %.sroa.038.sroa.12.0..sroa_idx.i, align 8, !noalias !64104, !nonnull !99, !noundef !99 ; 23 uses
  %.sroa.038.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.038.sroa.13.0.copyload.i = load i64, ptr %.sroa.038.sroa.13.0..sroa_idx.i, align 8, !noalias !64104 ; 69 uses
  %.sroa.038.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.038.sroa.14.0.copyload.i = load ptr, ptr %.sroa.038.sroa.14.0..sroa_idx.i, align 8, !noalias !64104 ; 5 uses
  %.sroa.038.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.038.sroa.15.0.copyload.i = load i64, ptr %.sroa.038.sroa.15.0..sroa_idx.i, align 8, !noalias !64104 ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !64104
  %i.aj = trunc nuw i64 %.sroa.038.sroa.0.0.copyload.i to i1
  %i.ak = add nsw i64 %.sroa.038.sroa.15.0.copyload.i, -1 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %.sroa.4180.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  br i1 %i.aj, label %.split311.us.i, label %.preheader.i.i.preheader.i

.preheader.i.i.preheader.i:                       ; preds = %bb.i
  %i.am = and i64 %.sroa.038.sroa.6.0.copyload.i, 65536
  %.sroa.9124.sroa.10141.0.extract.trunc.i.not = icmp eq i64 %i.am, 0
  %.sroa.9124.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.038.sroa.6.0.copyload.i to i1 ; 3 uses
  br i1 %.sroa.9124.sroa.10141.0.extract.trunc.i.not, label %.lr.ph.i.i.i.peel, label %.loopexit19.thread.i.i.peel

.lr.ph.i.i.i.peel:                                ; preds = %.preheader.i.i.preheader.i
  %i.an = icmp eq i64 %.sroa.038.sroa.4.0.copyload.i, 0
  br i1 %i.an, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.peel
  %.not.i.i.i.peel.i.i.peel = icmp ult i64 %.sroa.038.sroa.4.0.copyload.i, %.sroa.038.sroa.13.0.copyload.i
  br i1 %.not.i.i.i.peel.i.i.peel, label %bb.k, label %.split.i.i.i.peel.i.i.peel

.split.i.i.i.peel.i.i.peel:                       ; preds = %bb.j
  %i.ao = icmp eq i64 %.sroa.038.sroa.4.0.copyload.i, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.ao, label %bb.l, label %.loopexit.i.i

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %.sroa.038.sroa.4.0.copyload.i
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !64106, !noalias !64107, !noundef !99
  %i.ar = icmp sgt i8 %i.aq, -65
  br i1 %i.ar, label %bb.l, label %.loopexit.i.i

bb.l:                                             ; preds = %bb.k, %.split.i.i.i.peel.i.i.peel, %.lr.ph.i.i.i.peel
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %.sroa.038.sroa.4.0.copyload.i ; 4 uses
  %i.at = icmp samesign eq i64 %.sroa.038.sroa.4.0.copyload.i, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.at, label %.loopexit19.i.i.peel, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = load i8, ptr %i.as, align 1, !noalias !64108, !noundef !99 ; 5 uses
  %i.av = icmp sgt i8 %i.au, -1
  br i1 %i.av, label %bb.n, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i.peel: ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.ax = and i8 %i.au, 31
  %i.ay = zext nneg i8 %i.ax to i32               ; 3 uses
  %i.az = add nuw nsw i64 %.sroa.038.sroa.4.0.copyload.i, 1
  %i.ba = icmp samesign ne i64 %i.az, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.ba)
  %i.bb = load i8, ptr %i.aw, align 1, !noalias !64108, !noundef !99
  %i.bc = shl nuw nsw i32 %i.ay, 6
  %i.bd = and i8 %i.bb, 63
  %i.be = zext nneg i8 %i.bd to i32               ; 2 uses
  %i.bf = or disjoint i32 %i.bc, %i.be
  %i.bg = icmp samesign ugt i8 %i.au, -33
  br i1 %i.bg, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i.peel, label %bb.o

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i.peel
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.bi = add nuw nsw i64 %.sroa.038.sroa.4.0.copyload.i, 2
  %i.bj = icmp samesign ne i64 %i.bi, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.bj)
  %i.bk = load i8, ptr %i.bh, align 1, !noalias !64108, !noundef !99
  %i.bl = shl nuw nsw i32 %i.be, 6
  %i.bm = and i8 %i.bk, 63
  %i.bn = zext nneg i8 %i.bm to i32
  %i.bo = or disjoint i32 %i.bl, %i.bn            ; 2 uses
  %i.bp = shl nuw nsw i32 %i.ay, 12
  %i.bq = or disjoint i32 %i.bo, %i.bp
  %i.br = icmp samesign ugt i8 %i.au, -17
  br i1 %i.br, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.peel.i.i.peel, label %bb.o

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.peel.i.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i.peel
  %i.bs = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  %i.bt = add nuw nsw i64 %.sroa.038.sroa.4.0.copyload.i, 3
  %i.bu = icmp samesign ne i64 %i.bt, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.bu)
  %i.bv = load i8, ptr %i.bs, align 1, !noalias !64108, !noundef !99
  %i.bw = shl nuw nsw i32 %i.ay, 18
  %i.bx = and i32 %i.bw, 1835008
  %i.by = shl nuw nsw i32 %i.bo, 6
  %i.bz = and i8 %i.bv, 63
  %i.ca = zext nneg i8 %i.bz to i32
  %i.cb = or disjoint i32 %i.by, %i.ca
  %i.cc = or disjoint i32 %i.cb, %i.bx
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cd = zext nneg i8 %i.au to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.peel.i.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel.i.i.peel = phi i32 [ %i.bq, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i.peel ], [ %i.cc, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.peel.i.i.peel ], [ %i.bf, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i.peel ], [ %i.cd, %bb.n ] ; 4 uses
  %i.ce = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.peel, 1114112
  call void @llvm.assume(i1 %i.ce)
  br i1 %.sroa.9124.sroa.0.0.extract.trunc.i, label %.loopexit19.thread.i.i.peel, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.peel, 128
  br i1 %i.cf, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.peel, 2048
  br i1 %i.cg, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.peel, 65536
  %..i.i.peel.i.i.peel = select i1 %i.ch, i64 3, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.sroa.01.0.i.i.peel.i.i.peel = phi i64 [ 2, %bb.q ], [ %..i.i.peel.i.i.peel, %bb.r ], [ 1, %bb.p ]
  %i.ci = add i64 %.sroa.01.0.i.i.peel.i.i.peel, %.sroa.038.sroa.4.0.copyload.i ; 14 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i.i.i.peel = icmp ult i64 %i.ci, %.sroa.038.sroa.13.0.copyload.i
  br i1 %.not.i.i.i.i.i.peel, label %bb.u, label %.split.i.i.i.i.i.peel

.split.i.i.i.i.i.peel:                            ; preds = %bb.t
  %i.ck = icmp eq i64 %i.ci, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.ck, label %bb.v, label %.loopexit.i.i

bb.u:                                             ; preds = %bb.t
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %i.ci
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !64106, !noalias !64109, !noundef !99
  %i.cn = icmp sgt i8 %i.cm, -65
  br i1 %i.cn, label %bb.v, label %.loopexit.i.i

bb.v:                                             ; preds = %bb.u, %.split.i.i.i.i.i.peel, %bb.s
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %i.ci ; 4 uses
  %i.co = icmp samesign eq i64 %i.ci, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.co, label %.loopexit19.thread.i.i.peel, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cp = load i8, ptr %2, align 1, !noalias !64110, !noundef !99 ; 5 uses
  %i.cq = icmp sgt i8 %i.cp, -1
  br i1 %i.cq, label %28, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel: ; preds = %bb.w
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = and i8 %i.cp, 31
  %5 = zext nneg i8 %4 to i32                     ; 3 uses
  %i.cr = add nuw nsw i64 %i.ci, 1
  %i.cs = icmp samesign ne i64 %i.cr, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.cs)
  %6 = load i8, ptr %3, align 1, !noalias !64110, !noundef !99
  %7 = shl nuw nsw i32 %5, 6
  %8 = and i8 %6, 63
  %9 = zext nneg i8 %8 to i32                     ; 2 uses
  %10 = or disjoint i32 %7, %9
  %i.ct = icmp samesign ugt i8 %i.cp, -33
  br i1 %i.ct, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel, label %.loopexit.i.loopexit.i.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.cu = add nuw nsw i64 %i.ci, 2
  %i.cv = icmp samesign ne i64 %i.cu, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.cv)
  %12 = load i8, ptr %11, align 1, !noalias !64110, !noundef !99
  %13 = shl nuw nsw i32 %9, 6
  %14 = and i8 %12, 63
  %15 = zext nneg i8 %14 to i32
  %16 = or disjoint i32 %13, %15                  ; 2 uses
  %17 = shl nuw nsw i32 %5, 12
  %18 = or disjoint i32 %16, %17
  %i.cw = icmp samesign ugt i8 %i.cp, -17
  br i1 %i.cw, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel, label %.loopexit.i.loopexit.i.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.cx = add nuw nsw i64 %i.ci, 3
  %i.cy = icmp samesign ne i64 %i.cx, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.cy)
  %20 = load i8, ptr %19, align 1, !noalias !64110, !noundef !99
  %21 = shl nuw nsw i32 %5, 18
  %22 = and i32 %21, 1835008
  %23 = shl nuw nsw i32 %16, 6
  %24 = and i8 %20, 63
  %25 = zext nneg i8 %24 to i32
  %26 = or disjoint i32 %23, %25
  %27 = or disjoint i32 %26, %22
  br label %.loopexit.i.loopexit.i.i.peel

28:                                               ; preds = %bb.w
  %29 = zext nneg i8 %i.cp to i32
  br label %.loopexit.i.loopexit.i.i.peel

.loopexit.i.loopexit.i.i.peel:                    ; preds = %28, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.i.i.peel = phi i32 [ %18, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel ], [ %27, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel ], [ %10, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel ], [ %29, %28 ]
  %30 = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.peel, 1114112
  call void @llvm.assume(i1 %30)
  br label %.loopexit19.thread.i.i.peel

.loopexit19.i.i.peel:                             ; preds = %bb.l
  br i1 %.sroa.9124.sroa.0.0.extract.trunc.i, label %.loopexit19.thread.i.i.peel, label %bb.x

bb.x:                                             ; preds = %.loopexit19.i.i.peel
  br label %.loopexit19.thread.i.i.peel

.loopexit19.thread.i.i.peel:                      ; preds = %bb.x, %.loopexit19.i.i.peel, %.loopexit.i.loopexit.i.i.peel, %bb.v, %bb.o, %.preheader.i.i.preheader.i
  %.sroa.9124.sroa.0.4.i.peel = phi i1 [ true, %bb.x ], [ false, %.loopexit19.i.i.peel ], [ false, %bb.o ], [ false, %.loopexit.i.loopexit.i.i.peel ], [ false, %bb.v ], [ %.sroa.9124.sroa.0.0.extract.trunc.i, %.preheader.i.i.preheader.i ] ; 2 uses
  %.sroa.51.2.i.peel = phi i1 [ true, %bb.x ], [ false, %.loopexit19.i.i.peel ], [ false, %bb.o ], [ false, %.loopexit.i.loopexit.i.i.peel ], [ false, %bb.v ], [ true, %.preheader.i.i.preheader.i ]
  %.sroa.41.2.i.peel = phi i64 [ 0, %bb.x ], [ %.sroa.038.sroa.4.0.copyload.i, %.loopexit19.i.i.peel ], [ %.sroa.038.sroa.4.0.copyload.i, %bb.o ], [ %i.ci, %.loopexit.i.loopexit.i.i.peel ], [ %.sroa.038.sroa.13.0.copyload.i, %bb.v ], [ 0, %.preheader.i.i.preheader.i ] ; 4 uses
  %.sroa.5.5.i.peel = phi i64 [ %.sroa.038.sroa.4.0.copyload.i, %bb.x ], [ %.sroa.038.sroa.4.0.copyload.i, %.loopexit19.i.i.peel ], [ %.sroa.038.sroa.4.0.copyload.i, %bb.o ], [ %i.ci, %.loopexit.i.loopexit.i.i.peel ], [ %.sroa.038.sroa.13.0.copyload.i, %bb.v ], [ %.sroa.038.sroa.4.0.copyload.i, %.preheader.i.i.preheader.i ] ; 15 uses
  %spec.select.pn.i.peel = phi i64 [ %spec.select.i, %bb.x ], [ %.sroa.038.sroa.4.0.copyload.i, %.loopexit19.i.i.peel ], [ %.sroa.038.sroa.4.0.copyload.i, %bb.o ], [ %i.ci, %.loopexit.i.loopexit.i.i.peel ], [ %.sroa.038.sroa.13.0.copyload.i, %bb.v ], [ %spec.select.i, %.preheader.i.i.preheader.i ] ; 2 uses
  %i.cz = icmp eq i64 %spec.select.pn.i.peel, 0
  br i1 %i.cz, label %.split332.us.i, label %bb.y

bb.y:                                             ; preds = %.loopexit19.thread.i.i.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !64104
  invoke void @_RNvMNtNtCs3PfUT229lOd_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.038.sroa.12.0.copyload.i, i64 noundef %spec.select.pn.i.peel)
          to label %bb.z unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !64104

bb.z:                                             ; preds = %bb.y
  %i.da = load i64, ptr %i.c, align 8, !range !101, !noalias !64104, !noundef !99 ; 2 uses
  %.not77.i.peel = icmp eq i64 %i.da, -1
  br i1 %.not77.i.peel, label %bb.aa, label %.split335.us.i

bb.aa:                                            ; preds = %bb.z
  %.sroa.0179.0.copyload.i.peel = load ptr, ptr %i.al, align 8, !noalias !64104
  %.sroa.4180.0.copyload.i.peel = load i64, ptr %.sroa.4180.0..sroa_idx.i, align 8, !noalias !64104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !64104
  %i.db = ptrtoint ptr %.sroa.0179.0.copyload.i.peel to i64 ; 2 uses
  %.0.val.off.i.i.i.peel = add i64 %i.db, -1
  %switch.i.i.i.peel = icmp ult i64 %.0.val.off.i.i.i.peel, -2
  br i1 %switch.i.i.i.peel, label %bb.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs9KQ7US1M400_11lance_table.exit.i.peel

bb.ab:                                            ; preds = %bb.aa
  %i.dc = inttoptr i64 %.sroa.4180.0.copyload.i.peel to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dc) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dc, i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !64111
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs9KQ7US1M400_11lance_table.exit.i.peel

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs9KQ7US1M400_11lance_table.exit.i.peel: ; preds = %bb.ab, %bb.aa
  br i1 %.sroa.51.2.i.peel, label %.thread229.i, label %.lr.ph.i.i.i.peel257

.lr.ph.i.i.i.peel257:                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs9KQ7US1M400_11lance_table.exit.i.peel
  %i.dd = icmp eq i64 %.sroa.5.5.i.peel, 0
  br i1 %i.dd, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i.peel257
  %.not.i.i.i.peel.i.i.peel258 = icmp ult i64 %.sroa.5.5.i.peel, %.sroa.038.sroa.13.0.copyload.i
  br i1 %.not.i.i.i.peel.i.i.peel258, label %bb.ad, label %.split.i.i.i.peel.i.i.peel259

.split.i.i.i.peel.i.i.peel259:                    ; preds = %bb.ac
  %i.de = icmp eq i64 %.sroa.5.5.i.peel, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.de, label %bb.ae, label %.loopexit.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %.sroa.5.5.i.peel
  %i.dg = load i8, ptr %i.df, align 1, !alias.scope !64106, !noalias !64107, !noundef !99
  %i.dh = icmp sgt i8 %i.dg, -65
  br i1 %i.dh, label %bb.ae, label %.loopexit.i.i

bb.ae:                                            ; preds = %bb.ad, %.split.i.i.i.peel.i.i.peel259, %.lr.ph.i.i.i.peel257
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %.sroa.5.5.i.peel ; 4 uses
  %i.dj = icmp samesign eq i64 %.sroa.5.5.i.peel, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.dj, label %.loopexit19.i.i.peel271, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dk = load i8, ptr %i.di, align 1, !noalias !64108, !noundef !99 ; 5 uses
  %i.dl = icmp sgt i8 %i.dk, -1
  br i1 %i.dl, label %bb.ag, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i.peel260

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i.peel260: ; preds = %bb.af
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  %i.dn = and i8 %i.dk, 31
  %i.do = zext nneg i8 %i.dn to i32               ; 3 uses
  %i.dp = add nuw nsw i64 %.sroa.5.5.i.peel, 1
  %i.dq = icmp samesign ne i64 %i.dp, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.dq)
  %i.dr = load i8, ptr %i.dm, align 1, !noalias !64108, !noundef !99
  %i.ds = shl nuw nsw i32 %i.do, 6
  %i.dt = and i8 %i.dr, 63
  %i.du = zext nneg i8 %i.dt to i32               ; 2 uses
  %i.dv = or disjoint i32 %i.ds, %i.du
  %i.dw = icmp samesign ugt i8 %i.dk, -33
  br i1 %i.dw, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i.peel261, label %bb.ah

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i.peel261: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i.peel260
  %i.dx = getelementptr inbounds nuw i8, ptr %i.di, i64 2
  %i.dy = add nuw nsw i64 %.sroa.5.5.i.peel, 2
  %i.dz = icmp samesign ne i64 %i.dy, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.dz)
  %i.ea = load i8, ptr %i.dx, align 1, !noalias !64108, !noundef !99
  %i.eb = shl nuw nsw i32 %i.du, 6
  %i.ec = and i8 %i.ea, 63
  %i.ed = zext nneg i8 %i.ec to i32
  %i.ee = or disjoint i32 %i.eb, %i.ed            ; 2 uses
  %i.ef = shl nuw nsw i32 %i.do, 12
  %i.eg = or disjoint i32 %i.ee, %i.ef
  %i.eh = icmp samesign ugt i8 %i.dk, -17
  br i1 %i.eh, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.peel.i.i.peel262, label %bb.ah

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.peel.i.i.peel262: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i.peel261
  %i.ei = getelementptr inbounds nuw i8, ptr %i.di, i64 3
  %i.ej = add nuw nsw i64 %.sroa.5.5.i.peel, 3
  %i.ek = icmp samesign ne i64 %i.ej, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.ek)
  %i.el = load i8, ptr %i.ei, align 1, !noalias !64108, !noundef !99
  %i.em = shl nuw nsw i32 %i.do, 18
  %i.en = and i32 %i.em, 1835008
  %i.eo = shl nuw nsw i32 %i.ee, 6
  %i.ep = and i8 %i.el, 63
  %i.eq = zext nneg i8 %i.ep to i32
  %i.er = or disjoint i32 %i.eo, %i.eq
  %i.es = or disjoint i32 %i.er, %i.en
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.et = zext nneg i8 %i.dk to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.peel.i.i.peel262, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i.peel261, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i.peel260
  %.sroa.4.0.i.ph.i.i.peel.i.i.peel263 = phi i32 [ %i.eg, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i.peel261 ], [ %i.es, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.peel.i.i.peel262 ], [ %i.dv, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i.peel260 ], [ %i.et, %bb.ag ] ; 4 uses
  %i.eu = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.peel263, 1114112
  call void @llvm.assume(i1 %i.eu)
  br i1 %.sroa.9124.sroa.0.4.i.peel, label %.loopexit19.thread.i.i.peel272, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ev = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.peel263, 128
  br i1 %i.ev, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ew = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.peel263, 2048
  br i1 %i.ew, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ex = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.peel263, 65536
  %..i.i.peel.i.i.peel264 = select i1 %i.ex, i64 3, i64 4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %.sroa.01.0.i.i.peel.i.i.peel265 = phi i64 [ 2, %bb.aj ], [ %..i.i.peel.i.i.peel264, %bb.ak ], [ 1, %bb.ai ]
  %i.ey = add i64 %.sroa.01.0.i.i.peel.i.i.peel265, %.sroa.5.5.i.peel ; 23 uses
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.not.i.i.i.i.i.peel266 = icmp ult i64 %i.ey, %.sroa.038.sroa.13.0.copyload.i
  br i1 %.not.i.i.i.i.i.peel266, label %bb.an, label %.split.i.i.i.i.i.peel267

.split.i.i.i.i.i.peel267:                         ; preds = %bb.am
  %i.fa = icmp eq i64 %i.ey, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.fa, label %bb.ao, label %.loopexit.i.i

bb.an:                                            ; preds = %bb.am
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %i.ey
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !64106, !noalias !64109, !noundef !99
  %i.fd = icmp sgt i8 %i.fc, -65
  br i1 %i.fd, label %bb.ao, label %.loopexit.i.i

bb.ao:                                            ; preds = %bb.an, %.split.i.i.i.i.i.peel267, %bb.al
  %i.fe = icmp samesign eq i64 %i.ey, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.fe, label %.loopexit19.thread.i.i.peel272, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %i.ey
  %i.fg = load i8, ptr %i.ff, align 1, !noalias !64110, !noundef !99 ; 3 uses
  %i.fh = icmp sgt i8 %i.fg, -1
  br i1 %i.fh, label %.loopexit19.thread.i.i.peel272, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel268

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel268: ; preds = %bb.ap
  %i.fi = add nuw nsw i64 %i.ey, 1
  %i.fj = icmp samesign ne i64 %i.fi, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.fj)
  %i.fk = icmp samesign ugt i8 %i.fg, -33
  br i1 %i.fk, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel269, label %.loopexit19.thread.i.i.peel272

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel269: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel268
  %i.fl = add nuw nsw i64 %i.ey, 2
  %i.fm = icmp samesign ne i64 %i.fl, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.fm)
  %i.fn = icmp samesign ugt i8 %i.fg, -17
  br i1 %i.fn, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel270, label %.loopexit19.thread.i.i.peel272

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel270: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel269
  %i.fo = add nuw nsw i64 %i.ey, 3
  %i.fp = icmp samesign ne i64 %i.fo, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.fp)
  br label %.loopexit19.thread.i.i.peel272

.loopexit19.i.i.peel271:                          ; preds = %bb.ae
  br i1 %.sroa.9124.sroa.0.4.i.peel, label %.loopexit19.thread.i.i.peel272, label %bb.aq

bb.aq:                                            ; preds = %.loopexit19.i.i.peel271
  br label %.loopexit19.thread.i.i.peel272

.loopexit19.thread.i.i.peel272:                   ; preds = %bb.aq, %.loopexit19.i.i.peel271, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel270, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel269, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel268, %bb.ap, %bb.ao, %bb.ah
  %.sroa.9124.sroa.0.4.i.peel273 = phi i1 [ true, %bb.aq ], [ false, %.loopexit19.i.i.peel271 ], [ false, %bb.ah ], [ false, %bb.ao ], [ false, %bb.ap ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel270 ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel269 ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel268 ]
  %.sroa.41.2.i.peel274 = phi i64 [ %.sroa.41.2.i.peel, %bb.aq ], [ %.sroa.038.sroa.13.0.copyload.i, %.loopexit19.i.i.peel271 ], [ %.sroa.5.5.i.peel, %bb.ah ], [ %.sroa.038.sroa.13.0.copyload.i, %bb.ao ], [ %i.ey, %bb.ap ], [ %i.ey, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel270 ], [ %i.ey, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel269 ], [ %i.ey, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel268 ]
  %.sroa.5.5.i.peel275 = phi i64 [ %.sroa.038.sroa.13.0.copyload.i, %bb.aq ], [ %.sroa.038.sroa.13.0.copyload.i, %.loopexit19.i.i.peel271 ], [ %.sroa.5.5.i.peel, %bb.ah ], [ %.sroa.038.sroa.13.0.copyload.i, %bb.ao ], [ %i.ey, %bb.ap ], [ %i.ey, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel270 ], [ %i.ey, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel269 ], [ %i.ey, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel268 ]
  %spec.select.pn.i.peel276 = phi i64 [ %spec.select.i, %bb.aq ], [ %.sroa.038.sroa.13.0.copyload.i, %.loopexit19.i.i.peel271 ], [ %.sroa.5.5.i.peel, %bb.ah ], [ %.sroa.038.sroa.13.0.copyload.i, %bb.ao ], [ %i.ey, %bb.ap ], [ %i.ey, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel270 ], [ %i.ey, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel269 ], [ %i.ey, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel268 ] ; 2 uses
  %i.fq = icmp eq i64 %spec.select.pn.i.peel276, %.sroa.41.2.i.peel
  br i1 %i.fq, label %.split332.us.i, label %bb.ar

bb.ar:                                            ; preds = %.loopexit19.thread.i.i.peel272
  %.sroa.4.1.i.i.peel = sub nuw i64 %spec.select.pn.i.peel276, %.sroa.41.2.i.peel
  %.sroa.0.1.i.i.peel = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %.sroa.41.2.i.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !64104
  invoke void @_RNvMNtNtCs3PfUT229lOd_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.peel, i64 noundef %.sroa.4.1.i.i.peel)
          to label %bb.as unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !64104

bb.as:                                            ; preds = %bb.ar
  %i.fr = load i64, ptr %i.c, align 8, !range !101, !noalias !64104, !noundef !99 ; 2 uses
end_hunk_0
