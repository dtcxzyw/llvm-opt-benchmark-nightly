Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.14?download=true
inline.NumInlined: 393
inline.NumDeleted: 225
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs0_NtCs5yXxDE1DkoT_4tera5testsNvB5_13is_containingINtB5_4TestRNtNtB7_5value5ValueINtNtCsf3Ta7LF998c_4core6result6ResultbNtNtB7_6errors5ErrorEE4callB7_:bb.a
    #dbg_value(ptr %4, !14775, !DIExpression(), !14811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14812), !dbg !15461
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14813), !dbg !15461
    #dbg_value(ptr %2, !14805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14001)
    #dbg_value(ptr %3, !14805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14001)
    #dbg_value(ptr poison, !14805, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14001)
    #dbg_value(ptr poison, !14804, !DIExpression(), !14001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14814), !dbg !15462
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14815), !dbg !15462
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !14816
    #dbg_value(ptr %2, !14785, !DIExpression(), !14005)
    #dbg_value(ptr %2, !14817, !DIExpression(), !14008)
    #dbg_value(ptr %2, !14819, !DIExpression(), !14017)
    #dbg_value(ptr %2, !14837, !DIExpression(), !14025)
  store ptr %2, ptr %i.l, align 8, !noalias !14852
  store ptr %3, ptr %i.k, align 8, !noalias !14852
    #dbg_declare(ptr %i.k, !14786, !DIExpression(), !14026)
    #dbg_value(ptr poison, !14798, !DIExpression(), !14005)
    #dbg_declare(ptr %i.j, !14853, !DIExpression(), !14039)
    #dbg_declare(ptr %i.i, !14881, !DIExpression(), !14044)
    #dbg_declare(ptr %i.g, !14793, !DIExpression(), !14045)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !15463, !noalias !14852
  invoke void @_RINvMsa_NtCs5yXxDE1DkoT_4tera4argsNtB6_6Kwargs8must_getRNtNtB8_5value5ValueEB8_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 3)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !dbg !15464, !noalias !14885

.loopexit.split-lp.i.i:                           ; preds = %bb.bv, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyEBH_.exit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit2.i.i
  %.pn94.i.i = phi { ptr, i32 } [ %i.kg, %bb.bv ], [ %i.kg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyEBH_.exit.i.i ], [ %lpad.loopexit.i.i, %.loopexit2.i.i ], [ %lpad.loopexit3.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit6.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ]
    #dbg_value(ptr %i.k, !4120, !DIExpression(), !14047)
    #dbg_value(ptr %i.k, !4127, !DIExpression(), !14049)
    #dbg_value(ptr %i.k, !4133, !DIExpression(), !14051)
    #dbg_value(i64 1, !4135, !DIExpression(), !14053)
    #dbg_value(i8 1, !4137, !DIExpression(), !14053)
    #dbg_value(i64 1, !4139, !DIExpression(), !14055)
    #dbg_value(i8 1, !4141, !DIExpression(), !14055)
    #dbg_value(ptr %3, !4136, !DIExpression(), !14056)
    #dbg_value(ptr %3, !4140, !DIExpression(), !14055)
  %i.m = atomicrmw sub ptr %3, i64 1 release, align 8, !dbg !15465, !noalias !14886
  %i.n = icmp eq i64 %i.m, 1, !dbg !15466
  br i1 %i.n, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_.exit.i.i, !dbg !15466

bb.b:                                             ; preds = %.loopexit.split-lp.i.i
    #dbg_value(i8 2, !3541, !DIExpression(), !14064)
  fence acquire, !dbg !15467
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1F_5ValueEE9drop_slowB1H_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.k) #30
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_.exit.i.i unwind label %bb.bu, !dbg !15468, !noalias !14885

.loopexit2.i.i:                                   ; preds = %bb.ba
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %bb.ay, %bb.aw, %bb.av, %bb.au
  %lpad.loopexit3.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %.preheader.i.i.i.i
  %lpad.loopexit6.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit.i.i, %bb.bw, %bb.bh, %.invoke.i.i, %bb.bc, %.split56.us.i.i.i.invoke.i.i, %bb.aa, %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.i.i.i, %bb.u, %bb.m, %bb.j, %bb.i, %bb.g, %bb.a
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

bb.c:                                             ; preds = %bb.a
  %i.o = load i8, ptr %i.j, align 8, !dbg !15469, !range !4219, !noalias !14852, !noundef !1191 ; 2 uses
  %.not.i.i = icmp eq i8 %i.o, -1, !dbg !15469
  br i1 %.not.i.i, label %bb.e, label %bb.d, !dbg !15470

bb.d:                                             ; preds = %bb.c
  %.sroa.438.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1, !dbg !15471
  %.sroa.442.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !15472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.442.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.438.0..sroa_idx.i.i, i64 7, i1 false), !dbg !15471, !noalias !14887
  %.sroa.539.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !15471
  %.sroa.539.0.copyload.i.i = load ptr, ptr %.sroa.539.0..sroa_idx.i.i, align 8, !dbg !15471, !noalias !14852
  %.sroa.640.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !15471
  %.sroa.644.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.644.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.640.0..sroa_idx.i.i, i64 56, i1 false), !dbg !15471, !noalias !14887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !15473, !noalias !14852
    #dbg_value(i8 %i.o, !14780, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14065)
    #dbg_value(i8 %i.o, !14788, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14066)
    #dbg_value(ptr %.sroa.539.0.copyload.i.i, !14780, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14065)
    #dbg_value(ptr %.sroa.539.0.copyload.i.i, !14788, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14066)
    #dbg_value(i8 %i.o, !14781, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14067)
    #dbg_value(ptr %.sroa.539.0.copyload.i.i, !14781, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14067)
  store i8 %i.o, ptr %0, align 8, !dbg !15472, !alias.scope !14885, !noalias !14887
  %.sroa.543.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15472
  store ptr %.sroa.539.0.copyload.i.i, ptr %.sroa.543.0..sroa_idx.i.i, align 8, !dbg !15472, !alias.scope !14885, !noalias !14887
  br label %bb.bg, !dbg !15474

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !15475
  %i.q = load ptr, ptr %i.p, align 8, !dbg !15475, !noalias !14852, !nonnull !1191, !align !4259, !noundef !1191 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !15473, !noalias !14852
    #dbg_value(ptr %i.q, !14889, !DIExpression(), !14070)
    #dbg_value(ptr %i.q, !14787, !DIExpression(), !14071)
    #dbg_value(ptr %2, !14837, !DIExpression(), !14025)
    #dbg_value(ptr %2, !14819, !DIExpression(), !14017)
    #dbg_value(ptr %2, !14817, !DIExpression(), !14008)
    #dbg_value(ptr %2, !14785, !DIExpression(), !14005)
  %i.r = load i8, ptr %2, align 8, !dbg !15476, !range !4609, !alias.scope !14887, !noalias !14885, !noundef !1191 ; 5 uses
  %i.s = icmp ne i8 %i.r, 10, !dbg !15476
  call void @llvm.assume(i1 %i.s), !dbg !15476
  %i.t = add nsw i8 %i.r, -2, !dbg !15476
  %i.u = icmp samesign ugt i8 %i.r, 1, !dbg !15476
  %narrow.i.i = select i1 %i.u, i8 %i.t, i8 8, !dbg !15476
  switch i8 %narrow.i.i, label %bb.f [
    i8 0, label %bb.j
    i8 1, label %bb.j
    i8 2, label %bb.j
    i8 3, label %bb.j
    i8 4, label %bb.j
    i8 5, label %bb.j
    i8 6, label %bb.j
    i8 7, label %bb.j
    i8 8, label %bb.g
    i8 9, label %bb.h
    i8 10, label %bb.i
    i8 11, label %bb.j
  ], !dbg !15477

bb.f:                                             ; preds = %bb.e
  unreachable, !dbg !15474

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !15478, !noalias !14852
  invoke void @_RNvXs1_NtCs5yXxDE1DkoT_4tera4argsReNtB5_12ArgFromValue10from_value(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !dbg !15478, !noalias !14885

bb.h:                                             ; preds = %bb.e
    #dbg_value(ptr %2, !14837, !DIExpression(), !14025)
    #dbg_value(ptr %2, !14819, !DIExpression(), !14017)
    #dbg_value(ptr %2, !14817, !DIExpression(), !14008)
    #dbg_value(ptr %2, !14785, !DIExpression(), !14005)
  %i.v = icmp eq i8 %i.r, 11, !dbg !15479
  br i1 %i.v, label %bb.bh, label %.invoke.i.i, !dbg !15479, !prof !3734

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !15480, !noalias !14852
  invoke void @_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value6as_key(ptr noalias nofree noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q)
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !dbg !15481, !noalias !14885

bb.j:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !15482, !noalias !14852
    #dbg_value(ptr %i.l, !14795, !DIExpression(), !14072)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !15483, !noalias !14852
  store ptr %i.l, ptr %i.d, align 8, !dbg !15483, !noalias !14852
  %.sroa.448.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !15483
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCs5yXxDE1DkoT_4tera5value5ValueNtB6_7Display3fmtBA_, ptr %.sroa.448.0..sroa_idx.i.i, align 8, !dbg !15483, !noalias !14852
    #dbg_value(ptr @15, !14894, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14075)
    #dbg_value(ptr %i.d, !14894, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14075)
    #dbg_value(ptr null, !4164, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14077)
    #dbg_value(i64 undef, !4164, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14077)
    #dbg_value(ptr poison, !4180, !DIExpression(), !14077)
    #dbg_declare(ptr poison, !4181, !DIExpression(), !14078)
    #dbg_value(ptr poison, !4185, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !14080)
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @15, ptr noundef nonnull %i.d)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !dbg !15484, !noalias !14885

bb.k:                                             ; preds = %bb.g
  %i.w = load i8, ptr %i.i, align 8, !dbg !15485, !range !4219, !noalias !14852, !noundef !1191 ; 2 uses
  %.not92.i.i = icmp eq i8 %i.w, -1, !dbg !15485
  br i1 %.not92.i.i, label %bb.m, label %bb.l, !dbg !15486

bb.l:                                             ; preds = %bb.k
  %.sroa.455.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1, !dbg !15487
  %.sroa.460.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !15488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.460.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.455.0..sroa_idx.i.i, i64 7, i1 false), !dbg !15487, !noalias !14887
  %.sroa.556.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !15487
  %.sroa.556.0.copyload.i.i = load ptr, ptr %.sroa.556.0..sroa_idx.i.i, align 8, !dbg !15487, !noalias !14852
  %.sroa.657.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !15487
  %.sroa.657.0.copyload.i.i = load i64, ptr %.sroa.657.0..sroa_idx.i.i, align 8, !dbg !15487, !noalias !14852
  %.sroa.758.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !15487
  %.sroa.763.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !15488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.763.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.758.0..sroa_idx.i.i, i64 48, i1 false), !dbg !15487, !noalias !14887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !15489, !noalias !14852
    #dbg_value(i8 %i.w, !14780, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14081)
    #dbg_value(i8 %i.w, !14791, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14082)
    #dbg_value(ptr %.sroa.556.0.copyload.i.i, !14780, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14081)
    #dbg_value(ptr %.sroa.556.0.copyload.i.i, !14791, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14082)
    #dbg_value(i64 %.sroa.657.0.copyload.i.i, !14780, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14081)
    #dbg_value(i64 %.sroa.657.0.copyload.i.i, !14791, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14082)
    #dbg_value(i8 %i.w, !14779, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14083)
    #dbg_value(ptr %.sroa.556.0.copyload.i.i, !14779, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14083)
    #dbg_value(i64 %.sroa.657.0.copyload.i.i, !14779, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14083)
  store i8 %i.w, ptr %0, align 8, !dbg !15488, !alias.scope !14885, !noalias !14887
  %.sroa.561.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15488
  store ptr %.sroa.556.0.copyload.i.i, ptr %.sroa.561.0..sroa_idx.i.i, align 8, !dbg !15488, !alias.scope !14885, !noalias !14887
  %.sroa.662.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15488
  store i64 %.sroa.657.0.copyload.i.i, ptr %.sroa.662.0..sroa_idx.i.i, align 8, !dbg !15488, !alias.scope !14885, !noalias !14887
  br label %bb.bg, !dbg !15490

bb.m:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !15491
  %i.y = load ptr, ptr %i.x, align 8, !dbg !15491, !noalias !14852, !nonnull !1191, !noundef !1191 ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !15491
  %i.aa = load i64, ptr %i.z, align 8, !dbg !15491, !noalias !14852, !noundef !1191 ; 20 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !15489, !noalias !14852
    #dbg_value(ptr %i.y, !14898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14086)
    #dbg_value(ptr %i.y, !14790, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14087)
    #dbg_value(i64 %i.aa, !14898, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14086)
    #dbg_value(i64 %i.aa, !14790, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14087)
    #dbg_value(ptr %2, !14837, !DIExpression(), !14025)
    #dbg_value(ptr %2, !14819, !DIExpression(), !14017)
    #dbg_value(ptr %2, !14817, !DIExpression(), !14008)
    #dbg_value(ptr %2, !14785, !DIExpression(), !14005)
  %i.ab = invoke { ptr, i64 } @_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value6as_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !dbg !15492, !noalias !14885 ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0, !dbg !15493 ; 11 uses
    #dbg_value(ptr %i.ac, !14901, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14091)
    #dbg_value(i64 poison, !14901, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14091)
  %.not93.i.i = icmp eq ptr %i.ac, null, !dbg !15494
  br i1 %.not93.i.i, label %.invoke.i.i, label %bb.o, !dbg !15495, !prof !3422

bb.o:                                             ; preds = %bb.n
  %i.ad = extractvalue { ptr, i64 } %i.ab, 1, !dbg !15493 ; 16 uses
    #dbg_value(i64 %i.ad, !14901, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14091)
    #dbg_value(ptr %i.ac, !14899, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14086)
    #dbg_value(i64 %i.ad, !14899, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14086)
  call void @llvm.experimental.noalias.scope.decl(metadata !14907), !dbg !15496
  call void @llvm.experimental.noalias.scope.decl(metadata !14908), !dbg !15496
    #dbg_value(ptr %i.y, !14909, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14100)
    #dbg_value(ptr %i.y, !14912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14101)
    #dbg_value(ptr %i.y, !14916, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14106)
    #dbg_value(i64 %i.aa, !14909, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14100)
    #dbg_value(i64 %i.aa, !14912, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14101)
    #dbg_value(i64 %i.aa, !14916, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14106)
    #dbg_value(ptr %i.ac, !14910, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14100)
    #dbg_value(ptr %i.ac, !14913, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14101)
    #dbg_value(ptr %i.ac, !14918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14106)
    #dbg_value(i64 %i.ad, !14910, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14100)
    #dbg_value(i64 %i.ad, !14913, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14101)
    #dbg_value(i64 %i.ad, !14918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14106)
    #dbg_value(ptr %i.y, !14925, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14112)
    #dbg_value(i64 %i.aa, !14925, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14112)
    #dbg_value(i64 %i.aa, !14933, !DIExpression(), !14116)
    #dbg_value(i64 %i.aa, !14927, !DIExpression(), !14117)
    #dbg_value(i64 %i.aa, !14936, !DIExpression(), !14118)
  %i.ae = icmp eq i64 %i.aa, 0, !dbg !15497
  br i1 %i.ae, label %.loopexit.i.i, label %bb.p, !dbg !15497

bb.p:                                             ; preds = %bb.o
    #dbg_value(ptr %i.ac, !14938, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14121)
    #dbg_value(ptr %i.ac, !14926, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14112)
    #dbg_value(i64 %i.ad, !14938, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14121)
    #dbg_value(i64 %i.ad, !14926, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14112)
  %i.af = icmp ult i64 %i.aa, %i.ad, !dbg !15498
  br i1 %i.af, label %bb.q, label %bb.r, !dbg !15498

bb.q:                                             ; preds = %bb.p
  %i.ag = icmp eq i64 %i.aa, 1, !dbg !15499
  br i1 %i.ag, label %bb.t, label %bb.s, !dbg !15499

bb.r:                                             ; preds = %bb.p
    #dbg_value(ptr poison, !14922, !DIExpression(), !14122)
    #dbg_value(ptr poison, !14923, !DIExpression(), !14123)
    #dbg_value(ptr poison, !14930, !DIExpression(), !14124)
    #dbg_value(ptr poison, !14931, !DIExpression(), !14125)
  %i.ah = icmp eq i64 %i.aa, %i.ad, !dbg !15500
  br i1 %i.ah, label %bb.bd, label %.loopexit.i.i, !dbg !15500

bb.s:                                             ; preds = %bb.q
  %i.ai = icmp ult i64 %i.aa, 33, !dbg !15501
  br i1 %i.ai, label %bb.ao, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.i.i.i, !dbg !15501

bb.t:                                             ; preds = %bb.q
    #dbg_value(ptr %i.y, !14941, !DIExpression(), !14121)
  %.val.i.i.i = load i8, ptr %i.y, align 1, !dbg !15502, !alias.scope !14907, !noalias !14943, !noundef !1191 ; 2 uses
    #dbg_value(ptr poison, !14944, !DIExpression(), !14129)
    #dbg_value(ptr %i.ac, !14948, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14129)
    #dbg_value(i64 %i.ad, !14948, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14129)
    #dbg_value(i8 %.val.i.i.i, !14949, !DIExpression(), !14130)
    #dbg_value(ptr %i.ac, !14950, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14130)
    #dbg_value(i64 %i.ad, !14950, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14130)
    #dbg_value(i8 %.val.i.i.i, !14953, !DIExpression(), !14138)
    #dbg_value(i8 %.val.i.i.i, !14960, !DIExpression(), !14139)
    #dbg_value(ptr %i.ac, !14957, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14138)
    #dbg_value(ptr %i.ac, !14961, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14139)
    #dbg_value(i64 %i.ad, !14957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14138)
    #dbg_value(i64 %i.ad, !14961, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14139)
  %i.aj = icmp samesign ult i64 %i.ad, 16, !dbg !15503
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %bb.u, !dbg !15503

bb.u:                                             ; preds = %bb.t
  %i.ak = invoke { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %.val.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef range(i64 0, -9223372036854775808) %i.ad)
          to label %.noexc98.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !dbg !15504, !noalias !14885 ; 2 uses

.noexc98.i.i:                                     ; preds = %bb.u
  %i.al = extractvalue { i64, i64 } %i.ak, 0, !dbg !15504
  %i.am = extractvalue { i64, i64 } %i.ak, 1, !dbg !15504
    #dbg_value(i64 %i.al, !14962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14140)
    #dbg_value(i64 %i.am, !14962, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14140)
  %i.an = trunc nuw i64 %i.al to i1, !dbg !15505
  br i1 %i.an, label %.loopexit13.i.i.i.i.i, label %.loopexit.i.i, !dbg !15505

.loopexit13.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %.noexc98.i.i
  %.sroa.5.0.i.i.i.i.i = phi i64 [ %i.am, %.noexc98.i.i ], [ %.sroa.04.015.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], !dbg !15506
    #dbg_value(i64 1, !14962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14140)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i.i, !14962, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14140)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i.i, !14963, !DIExpression(), !14141)
  %i.ao = icmp ult i64 %.sroa.5.0.i.i.i.i.i, %i.ad, !dbg !15507
    #dbg_value(i1 true, !14965, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14144)
  call void @llvm.assume(i1 %i.ao), !dbg !15508
  br label %.loopexit.i.i, !dbg !15509

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.t, %bb.v
  %.sroa.04.015.i.i.i.i.i = phi i64 [ %i.as, %bb.v ], [ 0, %bb.t ] ; 3 uses
    #dbg_value(i64 %.sroa.04.015.i.i.i.i.i, !14958, !DIExpression(), !14145)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.04.015.i.i.i.i.i, !dbg !15510
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !15510, !alias.scope !14967, !noalias !14968, !noundef !1191
  %i.ar = icmp eq i8 %i.aq, %.val.i.i.i, !dbg !15510
  br i1 %i.ar, label %.loopexit13.i.i.i.i.i, label %bb.v, !dbg !15510

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.as = add nuw nsw i64 %.sroa.04.015.i.i.i.i.i, 1, !dbg !15511 ; 2 uses
    #dbg_value(i64 %i.as, !14958, !DIExpression(), !14145)
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.as, %i.ad, !dbg !15512
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i, !dbg !15512

_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.i.i.i: ; preds = %bb.aq, %bb.ap, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15513, !noalias !14969
  invoke void @_RNvMsu_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.aa)
          to label %.noexc99.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !dbg !15514, !noalias !14885

.noexc99.i.i:                                     ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !14970), !dbg !15515
    #dbg_value(ptr %i.c, !14971, !DIExpression(), !14161)
  %i.at = load i64, ptr %i.c, align 8, !dbg !15516, !range !3234, !alias.scope !14970, !noalias !14981, !noundef !1191
  switch i64 %i.at, label %default.unreachable [
    i64 0, label %.preheader.i.i.i.i
    i64 1, label %bb.w
    i64 2, label %bb.x
  ], !dbg !15517

default.unreachable:                              ; preds = %.noexc100.i.i, %.noexc99.i.i
  unreachable

.preheader.i.i.i.i:                               ; preds = %.noexc99.i.i, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15518, !noalias !14982
  invoke fastcc void @_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.c) #27
          to label %.noexc100.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !dbg !15519, !noalias !14885

.noexc100.i.i:                                    ; preds = %.preheader.i.i.i.i
  %i.au = load i64, ptr %i.b, align 8, !dbg !15518, !range !3234, !noalias !14982, !noundef !1191
  switch i64 %i.au, label %default.unreachable [
    i64 0, label %.loopexit.i.i.i.i.loopexit
    i64 1, label %bb.y
    i64 2, label %.loopexit.i.i.i.i
  ], !dbg !15520

bb.w:                                             ; preds = %.noexc99.i.i
    #dbg_value(ptr %i.c, !14974, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !14163)
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 80, !dbg !15521
  %i.aw = load i64, ptr %i.av, align 8, !dbg !15521, !alias.scope !14970, !noalias !14981, !noundef !1191 ; 2 uses
    #dbg_value(ptr poison, !14983, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14171)
    #dbg_value(ptr poison, !14975, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14172)
    #dbg_value(ptr poison, !14991, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14173)
    #dbg_value(ptr poison, !14988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14174)
    #dbg_value(i64 %i.aw, !14983, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14171)
    #dbg_value(i64 %i.aw, !14975, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14172)
    #dbg_value(i64 %i.aw, !14991, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14173)
    #dbg_value(i64 %i.aw, !14988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14174)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15522
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !15522, !alias.scope !14970, !noalias !14981, !noundef !1191 ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.ay, %i.aw, !dbg !15522
  br i1 %.not.i.i.i.i, label %bb.z, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i, !dbg !15522

bb.x:                                             ; preds = %.noexc99.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15523 ; 2 uses
    #dbg_value(ptr %i.az, !14978, !DIExpression(), !14175)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 56, !dbg !15524
  %i.bb = load i64, ptr %i.ba, align 8, !dbg !15524, !alias.scope !14970, !noalias !14981, !noundef !1191 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, -1, !dbg !15524
    #dbg_value(i1 %i.bc, !14979, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14176)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 72, !dbg !15525
  %i.be = load ptr, ptr %i.bd, align 8, !dbg !15525, !alias.scope !14970, !noalias !14981, !nonnull !1191, !noundef !1191 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 80, !dbg !15525
  %i.bg = load i64, ptr %i.bf, align 8, !dbg !15525, !alias.scope !14970, !noalias !14981, !noundef !1191 ; 8 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 88, !dbg !15525
  %i.bi = load ptr, ptr %i.bh, align 8, !dbg !15525, !alias.scope !14970, !noalias !14981, !nonnull !1191, !noundef !1191 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 96, !dbg !15525
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !15525, !alias.scope !14970, !noalias !14981, !noundef !1191 ; 12 uses
    #dbg_value(ptr poison, !14994, !DIExpression(), !14200)
    #dbg_value(ptr poison, !14994, !DIExpression(), !14206)
    #dbg_value(ptr poison, !14997, !DIExpression(), !14207)
    #dbg_value(ptr poison, !14997, !DIExpression(), !14208)
    #dbg_value(ptr poison, !14999, !DIExpression(), !14209)
    #dbg_value(ptr poison, !14999, !DIExpression(), !14210)
    #dbg_value(ptr poison, !15001, !DIExpression(), !14211)
    #dbg_value(ptr poison, !15001, !DIExpression(), !14212)
    #dbg_value(ptr poison, !14994, !DIExpression(), !14219)
    #dbg_value(ptr poison, !14994, !DIExpression(), !14223)
    #dbg_value(ptr poison, !15026, !DIExpression(), !14224)
    #dbg_value(ptr poison, !15026, !DIExpression(), !14225)
    #dbg_value(ptr poison, !15029, !DIExpression(), !14226)
    #dbg_value(ptr poison, !15029, !DIExpression(), !14227)
    #dbg_value(ptr %i.az, !15032, !DIExpression(), !14230)
    #dbg_value(ptr %i.az, !15032, !DIExpression(), !14232)
    #dbg_value(ptr %i.az, !15010, !DIExpression(), !14233)
    #dbg_value(ptr %i.az, !15010, !DIExpression(), !14234)
    #dbg_value(ptr %i.be, !15011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14233)
    #dbg_value(ptr %i.be, !15011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14234)
    #dbg_value(ptr %i.be, !15035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14237)
    #dbg_value(ptr %i.be, !15035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14239)
    #dbg_value(ptr %i.be, !15038, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14242)
    #dbg_value(ptr %i.be, !15038, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14244)
    #dbg_value(ptr %i.be, !15041, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14247)
    #dbg_value(ptr %i.be, !15041, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14249)
    #dbg_value(ptr %i.be, !15044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14252)
    #dbg_value(ptr %i.be, !15044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14254)
    #dbg_value(ptr %i.be, !15041, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14256)
    #dbg_value(ptr %i.be, !15041, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14258)
    #dbg_value(ptr %i.be, !15044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14260)
    #dbg_value(ptr %i.be, !15044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14262)
    #dbg_value(i64 %i.bg, !15011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14233)
    #dbg_value(i64 %i.bg, !15011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14234)
    #dbg_value(i64 %i.bg, !15035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14237)
    #dbg_value(i64 %i.bg, !15035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14239)
    #dbg_value(i64 %i.bg, !15038, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14242)
    #dbg_value(i64 %i.bg, !15038, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14244)
    #dbg_value(i64 %i.bg, !15041, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14247)
    #dbg_value(i64 %i.bg, !15041, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14249)
    #dbg_value(i64 %i.bg, !15044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14252)
    #dbg_value(i64 %i.bg, !15044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14254)
    #dbg_value(i64 %i.bg, !15041, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14256)
    #dbg_value(i64 %i.bg, !15041, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14258)
    #dbg_value(i64 %i.bg, !15044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14260)
    #dbg_value(i64 %i.bg, !15044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14262)
    #dbg_value(ptr %i.bi, !15012, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14233)
    #dbg_value(ptr %i.bi, !15012, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14234)
    #dbg_value(i64 %i.bk, !15012, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14233)
    #dbg_value(i64 %i.bk, !15012, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14234)
    #dbg_value(i64 1, !15048, !DIExpression(), !14265)
    #dbg_value(i64 1, !15048, !DIExpression(), !14267)
    #dbg_value(i64 1, !15051, !DIExpression(), !14270)
    #dbg_value(i64 1, !15051, !DIExpression(), !14272)
    #dbg_value(i64 1, !15054, !DIExpression(), !14275)
    #dbg_value(i64 1, !15054, !DIExpression(), !14277)
    #dbg_value(i64 1, !15057, !DIExpression(), !14280)
    #dbg_value(i64 1, !15057, !DIExpression(), !14282)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !15526 ; 2 uses
    #dbg_value(i64 poison, !15014, !DIExpression(), !14284)
    #dbg_value(i64 poison, !15014, !DIExpression(), !14285)
  %i.bm = add nsw i64 %i.bk, -1, !dbg !15527      ; 4 uses
  br i1 %i.bc, label %bb.ak, label %bb.ac, !dbg !15528

bb.y:                                             ; preds = %.noexc100.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15529, !noalias !14982
  br label %.preheader.i.i.i.i, !dbg !15530

.loopexit.i.i.i.i.loopexit:                       ; preds = %.noexc100.i.i
  br label %.loopexit.i.i.i.i, !dbg !15529

.loopexit.i.i.i.i:                                ; preds = %.noexc100.i.i, %.loopexit.i.i.i.i.loopexit
  %storemerge23.i.i.i.i = phi i8 [ 1, %.loopexit.i.i.i.i.loopexit ], [ 0, %.noexc100.i.i ], !dbg !15531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15529, !noalias !14982
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i, !dbg !15532

bb.z:                                             ; preds = %bb.w
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 72, !dbg !15521
  %i.bo = load ptr, ptr %i.bn, align 8, !dbg !15521, !alias.scope !14970, !noalias !14981, !nonnull !1191, !noundef !1191
    #dbg_value(ptr %i.bo, !14983, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14171)
    #dbg_value(ptr %i.bo, !14975, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14172)
    #dbg_value(ptr %i.bo, !14991, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14173)
    #dbg_value(ptr %i.bo, !14988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14174)
    #dbg_value(i64 %i.ay, !14984, !DIExpression(), !14171)
    #dbg_value(i64 %i.ay, !14992, !DIExpression(), !14173)
    #dbg_value(i64 %i.ay, !14987, !DIExpression(), !14174)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !15533
  %i.bq = load i8, ptr %i.bp, align 8, !dbg !15533, !alias.scope !14970, !noalias !14981, !noundef !1191 ; 2 uses
  %i.br = sub nuw i64 %i.aw, %i.ay, !dbg !15534   ; 4 uses
    #dbg_value(i64 %i.br, !14985, !DIExpression(), !14171)
    #dbg_value(i64 %i.br, !14989, !DIExpression(), !14286)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.ay, !dbg !15535 ; 2 uses
    #dbg_value(i8 %i.bq, !14953, !DIExpression(), !14289)
    #dbg_value(i8 %i.bq, !14960, !DIExpression(), !14290)
    #dbg_value(ptr %i.bs, !14957, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14289)
    #dbg_value(ptr %i.bs, !14961, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14290)
    #dbg_value(i64 %i.br, !14957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14289)
    #dbg_value(i64 %i.br, !14961, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14290)
  %i.bt = icmp samesign ult i64 %i.br, 16, !dbg !15536
  br i1 %i.bt, label %.lr.ph.i.i15.i.i.i, label %bb.aa, !dbg !15536

bb.aa:                                            ; preds = %bb.z
  %i.bu = invoke { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %i.bq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bs, i64 noundef range(i64 0, -9223372036854775808) %i.br)
          to label %.noexc101.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !dbg !15537, !noalias !14885 ; 2 uses

.noexc101.i.i:                                    ; preds = %bb.aa
  %i.bv = extractvalue { i64, i64 } %i.bu, 0, !dbg !15537
  %i.bw = extractvalue { i64, i64 } %i.bu, 1, !dbg !15537
    #dbg_value(i64 %i.bv, !14962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14291)
    #dbg_value(i64 %i.bw, !14962, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14291)
  %i.bx = trunc nuw i64 %i.bv to i1, !dbg !15538
  br i1 %i.bx, label %.loopexit38.i.i.i.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i, !dbg !15538

.lr.ph.i.i15.i.i.i:                               ; preds = %bb.z, %bb.ab
  %.sroa.04.015.i.i16.i.i.i = phi i64 [ %i.cb, %bb.ab ], [ 0, %bb.z ] ; 3 uses
    #dbg_value(i64 %.sroa.04.015.i.i16.i.i.i, !14958, !DIExpression(), !14292)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.04.015.i.i16.i.i.i, !dbg !15539
  %i.bz = load i8, ptr %i.by, align 1, !dbg !15539, !alias.scope !15061, !noalias !15062, !noundef !1191
  %i.ca = icmp eq i8 %i.bz, %i.bq, !dbg !15539
  br i1 %i.ca, label %.loopexit38.i.i.i.i, label %bb.ab, !dbg !15539

bb.ab:                                            ; preds = %.lr.ph.i.i15.i.i.i
  %i.cb = add nuw nsw i64 %.sroa.04.015.i.i16.i.i.i, 1, !dbg !15540 ; 2 uses
    #dbg_value(i64 %i.cb, !14958, !DIExpression(), !14292)
  %exitcond.not.i.i17.i.i.i = icmp eq i64 %i.cb, %i.br, !dbg !15541
  br i1 %exitcond.not.i.i17.i.i.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i, label %.lr.ph.i.i15.i.i.i, !dbg !15541

.loopexit38.i.i.i.i:                              ; preds = %.lr.ph.i.i15.i.i.i, %.noexc101.i.i
  %.sroa.5.0.i.i14.i.i.i = phi i64 [ %i.bw, %.noexc101.i.i ], [ %.sroa.04.015.i.i16.i.i.i, %.lr.ph.i.i15.i.i.i ], !dbg !15542
    #dbg_value(i64 1, !14962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14291)
    #dbg_value(i64 %.sroa.5.0.i.i14.i.i.i, !14962, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14291)
    #dbg_value(i64 %.sroa.5.0.i.i14.i.i.i, !14963, !DIExpression(), !14295)
  %i.cc = icmp ult i64 %.sroa.5.0.i.i14.i.i.i, %i.br, !dbg !15543
    #dbg_value(i1 true, !14965, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14297)
  call void @llvm.assume(i1 %i.cc), !dbg !15544
    #dbg_value(i64 1, !14962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14291)
    #dbg_value(i64 %.sroa.5.0.i.i14.i.i.i, !14962, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14291)
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i, !dbg !15545
end_hunk_0
begin_hunk_1_@_RNvXs0_NtCs5yXxDE1DkoT_4tera5testsNvB5_13is_containingINtB5_4TestRNtNtB7_5value5ValueINtNtCsf3Ta7LF998c_4core6result6ResultbNtNtB7_6errors5ErrorEE4callB7_:bb.a
    #dbg_value(i64 %i.bm, !15015, !DIExpression(), !14323)
  %.promoted.i26.i.i.i.i = load i64, ptr %i.bl, align 8, !alias.scope !15079, !noalias !15080 ; 2 uses
  %i.du = add i64 %.promoted.i26.i.i.i.i, %i.bm, !dbg !15582 ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.bg, !dbg !15583
  br i1 %i.dv, label %.lr.ph.i29.i.i.i.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i, !dbg !15583

.lr.ph.i29.i.i.i.i:                               ; preds = %bb.ak
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !15079, !noalias !15080, !noundef !1191
  %i.dy = load i64, ptr %i.az, align 8, !alias.scope !15079, !noalias !15080
  %.fr55.i.i.i.i = freeze i64 %i.dy, !dbg !15584  ; 7 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !15079, !noalias !15080
  %umax.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %.fr55.i.i.i.i, i64 range(i64 0, -9223372036854775808) %i.bk), !dbg !15584
  %i.eb = add i64 %.fr55.i.i.i.i, -1, !dbg !15584 ; 2 uses
  %.first_iter.i.i.i.i.i = icmp ult i64 %i.eb, %i.bk
  %exitcond.not.i30.i.i.i.i112.not = icmp ult i64 %.fr55.i.i.i.i, %i.bk
  %invariant.op153 = sub i64 1, %.fr55.i.i.i.i, !dbg !15584
  %.not58.i.us.i.i.i.i115 = icmp eq i64 %.fr55.i.i.i.i, 0 ; 2 uses
  br label %.lr.ph.split.us.i.i.i.i.i, !dbg !15584

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %bb.an, %.lr.ph.i29.i.i.i.i
  %.sink.i.i49.i.i.i = phi i64 [ %.sink.i.i.i.i.i, %bb.an ], [ %.promoted.i26.i.i.i.i, %.lr.ph.i29.i.i.i.i ] ; 5 uses
  %i.ec = phi i64 [ %i.fa, %bb.an ], [ %i.du, %.lr.ph.i29.i.i.i.i ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ec, !dbg !15585
  %i.ee = load i8, ptr %i.ed, align 1, !dbg !15586, !alias.scope !15077, !noalias !15081, !noundef !1191
    #dbg_value(i8 %i.ee, !15033, !DIExpression(), !14230)
    #dbg_value(i8 %i.ee, !15016, !DIExpression(), !14325)
  %i.ef = and i8 %i.ee, 63, !dbg !15587
  %i.eg = zext nneg i8 %i.ef to i64, !dbg !15588
  %i.eh = shl nuw i64 1, %i.eg, !dbg !15589
  %i.ei = and i64 %i.eh, %i.dx, !dbg !15589
  %.not.us.i.i.i.i.i = icmp eq i64 %i.ei, 0, !dbg !15589
  br i1 %.not.us.i.i.i.i.i, label %bb.am, label %.preheader59.i.i.i.i.i.preheader, !dbg !15584

.preheader59.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.split.us.i.i.i.i.i
    #dbg_value(i64 %.fr55.i.i.i.i, !15019, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14326)
    #dbg_value(ptr undef, !15029, !DIExpression(), !14226)
    #dbg_value(ptr undef, !15026, !DIExpression(), !14224)
    #dbg_value(ptr undef, !14994, !DIExpression(), !14219)
    #dbg_value(ptr undef, !14995, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !14327)
  br i1 %exitcond.not.i30.i.i.i.i112.not, label %.lr.ph114, label %.preheader.i31.preheader.i.i.i.i, !dbg !15590

.preheader59.i.i.i.i.i:                           ; preds = %.lr.ph114
  %i.ej = add i64 %.sroa.04.0.us.i.i.i.i.i113, 1, !dbg !15591 ; 2 uses
    #dbg_value(i64 %i.ej, !15019, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14326)
    #dbg_value(i64 %i.ej, !15019, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14326)
    #dbg_value(ptr undef, !15029, !DIExpression(), !14226)
    #dbg_value(ptr undef, !15026, !DIExpression(), !14224)
    #dbg_value(ptr undef, !14994, !DIExpression(), !14219)
    #dbg_value(ptr undef, !14995, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !14327)
  %exitcond.not.i30.i.i.i.i = icmp eq i64 %i.ej, %umax.i.i.i.i.i, !dbg !15592
  br i1 %exitcond.not.i30.i.i.i.i, label %.preheader.i31.preheader.i.i.i.i, label %.lr.ph114, !dbg !15590

.preheader.i31.preheader.i.i.i.i:                 ; preds = %.preheader59.i.i.i.i.i, %.preheader59.i.i.i.i.i.preheader
    #dbg_value(ptr undef, !15001, !DIExpression(), !14211)
    #dbg_value(ptr undef, !15001, !DIExpression(), !14211)
    #dbg_value(ptr undef, !14999, !DIExpression(), !14209)
    #dbg_value(ptr undef, !14999, !DIExpression(), !14209)
    #dbg_value(ptr undef, !14997, !DIExpression(), !14207)
    #dbg_value(ptr undef, !14997, !DIExpression(), !14207)
    #dbg_value(ptr undef, !14994, !DIExpression(), !14200)
    #dbg_value(ptr undef, !14994, !DIExpression(), !14200)
    #dbg_value(ptr undef, !14995, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !14328)
    #dbg_value(ptr undef, !14995, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !14328)
  br i1 %.first_iter.i.i.i.i.i, label %.preheader.i31.us.i.i.i.i.preheader, label %.preheader.i31.i.i.i.i

.preheader.i31.us.i.i.i.i.preheader:              ; preds = %.preheader.i31.preheader.i.i.i.i
    #dbg_value(i64 %.fr55.i.i.i.i, !15022, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14329)
  br i1 %.not58.i.us.i.i.i.i115, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i, label %.lr.ph117, !dbg !15593

.preheader.i31.us.i.i.i.i:                        ; preds = %.lr.ph117
    #dbg_value(i64 %i.ek, !15022, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14329)
    #dbg_value(ptr undef, !15001, !DIExpression(), !14211)
    #dbg_value(ptr undef, !14999, !DIExpression(), !14209)
    #dbg_value(ptr undef, !14997, !DIExpression(), !14207)
    #dbg_value(ptr undef, !14994, !DIExpression(), !14200)
    #dbg_value(ptr undef, !14995, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !14328)
  %.not58.i.us.i.i.i.i = icmp eq i64 %i.ek, 0, !dbg !15594
  br i1 %.not58.i.us.i.i.i.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i, label %.lr.ph117, !dbg !15593

.lr.ph117:                                        ; preds = %.preheader.i31.us.i.i.i.i.preheader, %.preheader.i31.us.i.i.i.i
  %.sroa.2.0.us.i.us.i.i.i.i116 = phi i64 [ %i.ek, %.preheader.i31.us.i.i.i.i ], [ %.fr55.i.i.i.i, %.preheader.i31.us.i.i.i.i.preheader ]
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i.i.i116, !15022, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14329)
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i.i.i116, !15058, !DIExpression(), !14280)
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i.i.i116, !15055, !DIExpression(), !14275)
  %i.ek = add i64 %.sroa.2.0.us.i.us.i.i.i.i116, -1, !dbg !15595 ; 4 uses
    #dbg_value(i64 %i.ek, !15022, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14329)
    #dbg_value(i64 %i.ek, !15023, !DIExpression(), !14330)
  %i.el = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ek, !dbg !15596
  %i.em = load i8, ptr %i.el, align 1, !dbg !15596, !alias.scope !15078, !noalias !15082, !noundef !1191
  %i.en = add i64 %i.ek, %.sink.i.i49.i.i.i, !dbg !15597 ; 2 uses
    #dbg_value(i64 %i.en, !15045, !DIExpression(), !14260)
    #dbg_value(i64 %i.en, !15042, !DIExpression(), !14256)
  %i.eo = icmp ult i64 %i.en, %i.bg, !dbg !15598
  call void @llvm.assume(i1 %i.eo), !dbg !15599
  %i.ep = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.en, !dbg !15600
  %i.eq = load i8, ptr %i.ep, align 1, !dbg !15601, !alias.scope !15077, !noalias !15081, !noundef !1191
  %.not44.us.i.us.i.i.i.i = icmp eq i8 %i.em, %i.eq, !dbg !15596
  br i1 %.not44.us.i.us.i.i.i.i, label %.preheader.i31.us.i.i.i.i, label %.split.us.i.i.i.i, !dbg !15596

.split.us.i.i.i.i:                                ; preds = %.lr.ph117
  %i.er = add i64 %.sink.i.i49.i.i.i, %i.ea, !dbg !15602
  br label %bb.an, !dbg !15603

.lr.ph114:                                        ; preds = %.preheader59.i.i.i.i.i.preheader, %.preheader59.i.i.i.i.i
  %.sroa.04.0.us.i.i.i.i.i113 = phi i64 [ %i.ej, %.preheader59.i.i.i.i.i ], [ %.fr55.i.i.i.i, %.preheader59.i.i.i.i.i.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i.i113, !15019, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14326)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i.i113, !15052, !DIExpression(), !14270)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i.i113, !15027, !DIExpression(), !14331)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i.i113, !15049, !DIExpression(), !14265)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i.i113, !15019, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14326)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i.i113, !15020, !DIExpression(), !14332)
  %i.es = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sroa.04.0.us.i.i.i.i.i113, !dbg !15604
  %i.et = load i8, ptr %i.es, align 1, !dbg !15604, !alias.scope !15078, !noalias !15082, !noundef !1191
  %i.eu = add i64 %.sroa.04.0.us.i.i.i.i.i113, %.sink.i.i49.i.i.i, !dbg !15605 ; 2 uses
    #dbg_value(i64 %i.eu, !15045, !DIExpression(), !14252)
    #dbg_value(i64 %i.eu, !15042, !DIExpression(), !14247)
  %i.ev = icmp ult i64 %i.eu, %i.bg, !dbg !15606
  call void @llvm.assume(i1 %i.ev), !dbg !15607
  %i.ew = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.eu, !dbg !15608
  %i.ex = load i8, ptr %i.ew, align 1, !dbg !15609, !alias.scope !15077, !noalias !15081, !noundef !1191
  %.not45.us.i.i.i.i.i = icmp eq i8 %i.et, %i.ex, !dbg !15604
  br i1 %.not45.us.i.i.i.i.i, label %.preheader59.i.i.i.i.i, label %bb.al, !dbg !15604

.preheader.i31.i.i.i.i:                           ; preds = %.preheader.i31.preheader.i.i.i.i
    #dbg_value(i64 %i.dy, !15022, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14329)
  br i1 %.not58.i.us.i.i.i.i115, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i, label %.split56.us.i.i.i.invoke.i.i, !dbg !15593

bb.al:                                            ; preds = %.lr.ph114
  %.reass94.i.reass.i.reass.i.reass.i.reass.reass = add i64 %.sink.i.i49.i.i.i, %invariant.op153
  %i.ey = add i64 %.reass94.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.04.0.us.i.i.i.i.i113, !dbg !15610
  br label %bb.an, !dbg !15611

bb.am:                                            ; preds = %.lr.ph.split.us.i.i.i.i.i
  %i.ez = add i64 %.sink.i.i49.i.i.i, %i.bk, !dbg !15612
  br label %bb.an, !dbg !15613

bb.an:                                            ; preds = %bb.am, %bb.al, %.split.us.i.i.i.i
  %.sink.i.i.i.i.i = phi i64 [ %i.ez, %bb.am ], [ %i.ey, %bb.al ], [ %i.er, %.split.us.i.i.i.i ] ; 2 uses
  %i.fa = add i64 %.sink.i.i.i.i.i, %i.bm, !dbg !15582 ; 2 uses
    #dbg_value(i64 %i.fa, !15039, !DIExpression(), !14242)
    #dbg_value(i64 %i.fa, !15036, !DIExpression(), !14237)
  %i.fb = icmp ult i64 %i.fa, %i.bg, !dbg !15583
  br i1 %i.fb, label %.lr.ph.split.us.i.i.i.i.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i, !dbg !15583

_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i: ; preds = %bb.af, %.preheader60.i.i.i.i.i.preheader, %.preheader60.i.i.i.i.i, %bb.an, %.preheader.i31.us.i.i.i.i.preheader, %.preheader.i31.us.i.i.i.i, %bb.ab, %.preheader.i31.i.i.i.i, %bb.ak, %bb.ac, %.loopexit38.i.i.i.i, %.noexc101.i.i, %.loopexit.i.i.i.i, %bb.w
  %.sroa.0.023.i.i.i = phi i8 [ %storemerge23.i.i.i.i, %.loopexit.i.i.i.i ], [ 0, %bb.w ], [ 1, %.loopexit38.i.i.i.i ], [ 0, %bb.ac ], [ 0, %bb.ak ], [ 0, %.noexc101.i.i ], [ 1, %.preheader60.i.i.i.i.i ], [ 1, %.preheader.i31.i.i.i.i ], [ 0, %bb.an ], [ 1, %.preheader.i31.us.i.i.i.i ], [ 0, %bb.ab ], [ 1, %.preheader.i31.us.i.i.i.i.preheader ], [ 0, %bb.af ], [ 1, %.preheader60.i.i.i.i.i.preheader ], !dbg !15531
    #dbg_value(i8 %.sroa.0.023.i.i.i, !14914, !DIExpression(), !14333)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15614, !noalias !14969
  br label %.loopexit.i.i, !dbg !15614

bb.ao:                                            ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !15083), !dbg !15615
  call void @llvm.experimental.noalias.scope.decl(metadata !15084), !dbg !15615
    #dbg_value(ptr poison, !15085, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14367)
    #dbg_value(ptr poison, !15085, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14367)
    #dbg_value(ptr poison, !4429, !DIExpression(), !14387)
    #dbg_value(ptr poison, !15151, !DIExpression(), !14388)
    #dbg_value(ptr poison, !15173, !DIExpression(), !14389)
    #dbg_value(ptr poison, !15178, !DIExpression(), !14406)
    #dbg_value(ptr poison, !15181, !DIExpression(), !14407)
    #dbg_value(ptr poison, !15183, !DIExpression(), !14408)
    #dbg_value(ptr poison, !15197, !DIExpression(), !14409)
    #dbg_value(ptr poison, !15210, !DIExpression(), !14410)
    #dbg_value(ptr poison, !15085, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14367)
    #dbg_value(ptr poison, !15199, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !14411)
    #dbg_value(ptr poison, !15211, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !14410)
    #dbg_value(ptr poison, !15216, !DIExpression(), !14418)
    #dbg_value(ptr poison, !15153, !DIExpression(), !14388)
    #dbg_value(ptr poison, !15174, !DIExpression(), !14389)
    #dbg_value(ptr %i.y, !15108, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14419)
    #dbg_value(i64 %i.aa, !15108, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14419)
    #dbg_value(ptr %i.ac, !15109, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14419)
    #dbg_value(i64 %i.ad, !15109, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14419)
    #dbg_declare(ptr %i.a, !15119, !DIExpression(), !14420)
    #dbg_value(i64 4, !15234, !DIExpression(), !14423)
    #dbg_value(i64 1, !15237, !DIExpression(), !14426)
    #dbg_value(i64 1, !15240, !DIExpression(), !14430)
    #dbg_value(i64 1, !15244, !DIExpression(), !14433)
    #dbg_value(ptr %i.y, !15245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14433)
    #dbg_value(ptr %i.y, !15110, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14434)
    #dbg_value(ptr %i.y, !15238, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14426)
    #dbg_value(ptr %i.y, !15241, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14430)
    #dbg_value(i64 %i.aa, !15245, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14433)
    #dbg_value(i64 %i.aa, !15110, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14434)
    #dbg_value(i64 %i.aa, !15238, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14426)
    #dbg_value(i64 %i.aa, !15241, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14430)
    #dbg_value(ptr %i.ac, !15111, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14435)
    #dbg_value(i64 %i.ad, !15111, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14435)
    #dbg_value(i64 %i.aa, !15235, !DIExpression(), !14423)
  %i.fc = load i8, ptr %i.y, align 1, !dbg !15616, !alias.scope !15248, !noalias !15249, !noundef !1191 ; 3 uses
    #dbg_value(i8 %i.fc, !15112, !DIExpression(), !14436)
    #dbg_value(i8 %i.fc, !15251, !DIExpression(), !14439)
  %i.fd = add nsw i64 %i.aa, -1, !dbg !15617      ; 2 uses
    #dbg_value(i64 %i.fd, !15113, !DIExpression(), !14440)
  %i.fe = icmp eq i64 %i.aa, 2, !dbg !15618
  br i1 %i.fe, label %.thread.i.i.i.i, label %bb.ap, !dbg !15618

bb.ap:                                            ; preds = %bb.ao
  %i.ff = call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %i.aa, i64 4), !dbg !15619 ; 2 uses
    #dbg_value(ptr undef, !15210, !DIExpression(), !14410)
    #dbg_value(ptr %i.y, !15211, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14410)
    #dbg_value(i64 %i.aa, !15211, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14410)
    #dbg_value(ptr undef, !15211, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14410)
    #dbg_value(ptr %i.y, !15199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14411)
    #dbg_value(i64 %i.aa, !15199, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14411)
    #dbg_value(ptr undef, !15199, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14411)
    #dbg_value(ptr undef, !15197, !DIExpression(), !14409)
    #dbg_declare(ptr poison, !15198, !DIExpression(), !14441)
    #dbg_declare(ptr poison, !15200, !DIExpression(), !14442)
    #dbg_value(ptr undef, !15183, !DIExpression(), !14408)
    #dbg_value(ptr undef, !15181, !DIExpression(), !14407)
    #dbg_value(ptr undef, !15178, !DIExpression(), !14406)
    #dbg_value(ptr undef, !15179, !DIExpression(), !14406)
  %5 = icmp ult i64 %i.ff, %i.aa, !dbg !15620
  br i1 %5, label %.lr.ph, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.i.i.i, !dbg !15621

bb.aq:                                            ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs5yXxDE1DkoT_4tera.exit.i.i.i.i.i
    #dbg_value(ptr undef, !15183, !DIExpression(), !14408)
    #dbg_value(ptr undef, !15181, !DIExpression(), !14407)
    #dbg_value(ptr undef, !15178, !DIExpression(), !14406)
    #dbg_value(ptr undef, !15179, !DIExpression(), !14406)
  %i.fg = icmp ult i64 %i.ff, %i.fi, !dbg !15620
  br i1 %i.fg, label %.lr.ph, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.i.i.i, !dbg !15621

.lr.ph:                                           ; preds = %bb.ap, %bb.aq
  %i.fh = phi i64 [ %i.fi, %bb.aq ], [ %i.aa, %bb.ap ]
    #dbg_value(i64 %i.fh, !15256, !DIExpression(), !14447)
    #dbg_value(i64 %i.fh, !15259, !DIExpression(), !14448)
    #dbg_value(i64 1, !15257, !DIExpression(), !14447)
    #dbg_value(i64 1, !15260, !DIExpression(), !14448)
  %i.fi = add nsw i64 %i.fh, -1, !dbg !15622      ; 6 uses
    #dbg_value(i64 %i.fi, !15201, !DIExpression(), !14449)
    #dbg_value(ptr poison, !15262, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !14452)
    #dbg_declare(ptr poison, !15267, !DIExpression(), !14453)
    #dbg_value(ptr undef, !15266, !DIExpression(DW_OP_deref), !14452)
    #dbg_value(ptr poison, !15272, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !14457)
    #dbg_value(ptr poison, !15278, !DIExpression(), !14457)
    #dbg_value(i64 %i.fi, !15277, !DIExpression(), !14458)
  %i.fj = icmp ult i64 %i.fi, %i.aa, !dbg !15623
  br i1 %i.fj, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs5yXxDE1DkoT_4tera.exit.i.i.i.i.i, label %.split56.us.i.i.i.invoke.i.i, !dbg !15623

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs5yXxDE1DkoT_4tera.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.fk = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.fi, !dbg !15623
  %i.fl = load i8, ptr %i.fk, align 1, !dbg !15623, !alias.scope !15248, !noalias !15280, !noundef !1191 ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i8 %i.fl, %i.fc, !dbg !15623
  br i1 %.not.i.not.i.i.i.i.i, label %bb.aq, label %bb.ar, !dbg !15624

bb.ar:                                            ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs5yXxDE1DkoT_4tera.exit.i.i.i.i.i
  %i.fm = add nuw nsw i64 %i.aa, 15, !dbg !15625
  %i.fn = icmp ult i64 %i.ad, %i.fm, !dbg !15626
  br i1 %i.fn, label %.lr.ph.split.us.i.i21.i.i.i, label %bb.as, !dbg !15626

.thread.i.i.i.i:                                  ; preds = %bb.ao
  %i.fo = icmp ult i64 %i.ad, 17, !dbg !15626
  br i1 %i.fo, label %.lr.ph.split.us.i.i21.i.i.i, label %.thread136.i.i.i.i, !dbg !15626

.thread136.i.i.i.i:                               ; preds = %.thread.i.i.i.i
    #dbg_value(i8 %i.fc, !15251, !DIExpression(), !14439)
    #dbg_value(i8 %i.fc, !15112, !DIExpression(), !14436)
  %i.fp = insertelement <16 x i8> poison, i8 %i.fc, i64 0, !dbg !15627
  %i.fq = shufflevector <16 x i8> %i.fp, <16 x i8> poison, <16 x i32> zeroinitializer, !dbg !15627
    #dbg_value(<16 x i8> %i.fq, !15116, !DIExpression(), !14466)
    #dbg_value(i64 1, !15114, !DIExpression(), !14467)
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 1, !dbg !15628, !alias.scope !15248, !noalias !15249
  br label %bb.at, !dbg !15628

bb.as:                                            ; preds = %bb.ar
    #dbg_value(i8 %i.fc, !15251, !DIExpression(), !14439)
    #dbg_value(i8 %i.fc, !15112, !DIExpression(), !14436)
  %i.fr = insertelement <16 x i8> poison, i8 %i.fc, i64 0, !dbg !15627
  %i.fs = shufflevector <16 x i8> %i.fr, <16 x i8> poison, <16 x i32> zeroinitializer, !dbg !15627
    #dbg_value(<16 x i8> %i.fs, !15116, !DIExpression(), !14466)
    #dbg_value(i64 %i.fi, !15114, !DIExpression(), !14467)
  br label %bb.at, !dbg !15628

.lr.ph.split.us.i.i21.i.i.i:                      ; preds = %.thread.i.i.i.i, %bb.ar
    #dbg_value(ptr undef, !15173, !DIExpression(), !14389)
    #dbg_value(ptr undef, !15174, !DIExpression(), !14389)
    #dbg_value(ptr undef, !15153, !DIExpression(), !14388)
    #dbg_value(ptr undef, !15151, !DIExpression(), !14388)
    #dbg_declare(ptr poison, !15152, !DIExpression(), !14468)
    #dbg_declare(ptr poison, !15154, !DIExpression(), !14469)
    #dbg_value(ptr undef, !4429, !DIExpression(), !14387)
    #dbg_value(i64 0, !4449, !DIExpression(), !14474)
    #dbg_value(i64 1, !4468, !DIExpression(), !14476)
    #dbg_value(i64 1, !4471, !DIExpression(), !14478)
    #dbg_value(i64 1, !4449, !DIExpression(), !14480)
    #dbg_value(ptr %i.ac, !4450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14474)
    #dbg_value(i64 %i.ad, !4450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14474)
    #dbg_value(i64 %i.aa, !4451, !DIExpression(), !14474)
    #dbg_value(ptr %i.ac, !4442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14481)
    #dbg_value(i64 %i.aa, !4442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14481)
    #dbg_value(ptr %i.ac, !4450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14480)
    #dbg_value(ptr %i.ac, !4469, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14476)
    #dbg_value(ptr %i.ac, !4474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14478)
    #dbg_value(i64 %i.ad, !4450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14480)
    #dbg_value(i64 %i.ad, !4469, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14476)
    #dbg_value(i64 %i.ad, !4474, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14478)
  %bcmp.i.i.us24.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ac, ptr noundef nonnull readonly dereferenceable(1) %i.y, i64 range(i64 2, 33) %i.aa), !dbg !15629, !alias.scope !15281, !noalias !15282
  %i.ft = icmp eq i32 %bcmp.i.i.us24.i.i.i.i.i, 0, !dbg !15629
  br i1 %i.ft, label %.loopexit.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs5yXxDE1DkoT_4tera.exit.backedge.us.i.i.i.i.i, !dbg !15630

.split.us.i.i22.i.i.i:                            ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs5yXxDE1DkoT_4tera.exit.backedge.us.i.i.i.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 1, !dbg !15631 ; 2 uses
    #dbg_value(ptr %i.fu, !4450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14474)
    #dbg_value(i64 %i.fw, !4450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14474)
    #dbg_value(i64 %i.aa, !4451, !DIExpression(), !14474)
    #dbg_value(ptr %i.fu, !4450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14480)
    #dbg_value(ptr %i.fu, !4469, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14476)
    #dbg_value(ptr %i.fu, !4474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14478)
    #dbg_value(i64 %i.fw, !4450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14480)
    #dbg_value(i64 %i.fw, !4469, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14476)
    #dbg_value(i64 %i.fw, !4474, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14478)
    #dbg_value(i64 %i.fw, !4451, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !14480)
    #dbg_value(i64 %i.fw, !4475, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !14490)
    #dbg_value(ptr %i.fu, !4442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14481)
    #dbg_value(i64 %i.aa, !4442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14481)
    #dbg_value(ptr %i.fu, !15155, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14491)
    #dbg_value(i64 %i.aa, !15155, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14491)
    #dbg_value(ptr poison, !15229, !DIExpression(DW_OP_deref), !14492)
    #dbg_declare(ptr poison, !15230, !DIExpression(), !14493)
    #dbg_value(ptr %i.fu, !15228, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14492)
    #dbg_value(i64 %i.aa, !15228, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14492)
    #dbg_value(ptr poison, !15223, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !14494)
    #dbg_value(ptr %i.fu, !15222, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14494)
    #dbg_value(ptr %i.fu, !15288, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14495)
    #dbg_value(i64 %i.aa, !15222, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14494)
    #dbg_value(i64 %i.aa, !15288, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14495)
    #dbg_value(ptr poison, !15217, !DIExpression(), !14496)
    #dbg_value(ptr undef, !15216, !DIExpression(), !14418)
    #dbg_value(i64 %i.aa, !15289, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14495)
    #dbg_value(i64 %i.aa, !15286, !DIExpression(), !14497)
    #dbg_value(i64 %i.aa, !15290, !DIExpression(), !14498)
    #dbg_value(i64 %i.aa, !15285, !DIExpression(), !14499)
    #dbg_value(ptr %i.y, !15289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14495)
    #dbg_value(ptr %i.fu, !15283, !DIExpression(), !14499)
    #dbg_value(ptr %i.y, !15284, !DIExpression(), !14499)
  %bcmp.i.i.us.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.fu, ptr noundef nonnull readonly dereferenceable(1) %i.y, i64 range(i64 2, 33) %i.aa), !dbg !15629, !alias.scope !15281, !noalias !15282
  %i.fv = icmp eq i32 %bcmp.i.i.us.i.i.i.i.i, 0, !dbg !15629
  br i1 %i.fv, label %.loopexit.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs5yXxDE1DkoT_4tera.exit.backedge.us.i.i.i.i.i, !dbg !15630

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs5yXxDE1DkoT_4tera.exit.backedge.us.i.i.i.i.i: ; preds = %.lr.ph.split.us.i.i21.i.i.i, %.split.us.i.i22.i.i.i
  %.pn.i.i.i.i = phi ptr [ %i.fu, %.split.us.i.i22.i.i.i ], [ %i.ac, %.lr.ph.split.us.i.i21.i.i.i ]
  %.in.i.i.i.i = phi i64 [ %i.fw, %.split.us.i.i22.i.i.i ], [ %i.ad, %.lr.ph.split.us.i.i21.i.i.i ]
  %i.fw = add i64 %.in.i.i.i.i, -1, !dbg !15632   ; 2 uses
    #dbg_value(ptr undef, !4429, !DIExpression(), !14387)
    #dbg_value(i64 0, !4449, !DIExpression(), !14474)
    #dbg_value(i64 1, !4468, !DIExpression(), !14476)
    #dbg_value(i64 1, !4471, !DIExpression(), !14478)
    #dbg_value(i64 1, !4449, !DIExpression(), !14480)
  %.not29.i.i.i.i.i = icmp ugt i64 %i.aa, %i.fw, !dbg !15633
  br i1 %.not29.i.i.i.i.i, label %.loopexit.i.i, label %.split.us.i.i22.i.i.i, !dbg !15633

bb.at:                                            ; preds = %bb.as, %.thread136.i.i.i.i
  %i.fx = phi i8 [ %.pre.i.i.i.i, %.thread136.i.i.i.i ], [ %i.fl, %bb.as ], !dbg !15628
  %i.fy = phi <16 x i8> [ %i.fq, %.thread136.i.i.i.i ], [ %i.fs, %bb.as ] ; 6 uses
  %storemerge135138.i.i.i.i = phi i64 [ 1, %.thread136.i.i.i.i ], [ %i.fi, %bb.as ] ; 6 uses
    #dbg_value(i8 %i.fx, !15251, !DIExpression(), !14501)
  %i.fz = insertelement <16 x i8> poison, i8 %i.fx, i64 0, !dbg !15634
  %i.ga = shufflevector <16 x i8> %i.fz, <16 x i8> poison, <16 x i32> zeroinitializer, !dbg !15634 ; 6 uses
    #dbg_value(<16 x i8> %i.ga, !15117, !DIExpression(), !14502)
    #dbg_value(i64 %i.fd, !15246, !DIExpression(), !14433)
    #dbg_value(i64 %i.fd, !15242, !DIExpression(), !14503)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.y, i64 1, !dbg !15635
    #dbg_value(ptr %i.gb, !15118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14504)
    #dbg_value(i64 %i.fd, !15118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14504)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15636, !noalias !15292
  store ptr %i.ac, ptr %i.a, align 8, !dbg !15637, !noalias !15292
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !15637
  store i64 %i.ad, ptr %i.gc, align 8, !dbg !15637, !noalias !15292
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !15637
  store ptr %i.gb, ptr %i.gd, align 8, !dbg !15637, !noalias !15292
  %i.ge = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !15637
  store i64 %i.fd, ptr %i.ge, align 8, !dbg !15637, !noalias !15292
    #dbg_value(ptr %i.ac, !15085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14367)
    #dbg_value(i64 %i.ad, !15085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14367)
    #dbg_value(ptr undef, !15085, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14367)
    #dbg_value(ptr undef, !15085, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14367)
    #dbg_value(ptr undef, !15085, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14367)
    #dbg_value(i64 0, !15120, !DIExpression(), !14505)
    #dbg_value(i8 0, !15121, !DIExpression(), !14506)
  %i.gf = add nuw nsw i64 %i.aa, 63               ; 2 uses
  %.not.i18.i.i.i = icmp ult i64 %i.gf, %i.ad, !dbg !15638
  br i1 %.not.i18.i.i.i, label %.lr.ph.i.i.i.i, label %.preheader.i19.i.i.i, !dbg !15638

.preheader.i19.i.i.i:                             ; preds = %bb.ax, %bb.at
  %.sroa.014.0.lcssa.i.i.i.i = phi i8 [ 0, %bb.at ], [ %.sroa.014.2.3.i.i.i.i, %bb.ax ], !dbg !15639 ; 2 uses
  %.sroa.06.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.at ], [ %i.ib, %bb.ax ], !dbg !15640 ; 2 uses
  %i.gg = add nuw nsw i64 %i.aa, 15               ; 2 uses
    #dbg_value(i64 %.sroa.06.0.lcssa.i.i.i.i, !15120, !DIExpression(), !14505)
    #dbg_value(i8 %.sroa.014.0.lcssa.i.i.i.i, !15121, !DIExpression(), !14506)
  %i.gh = add i64 %.sroa.06.0.lcssa.i.i.i.i, %i.gg, !dbg !15641
  %i.gi = icmp uge i64 %i.gh, %i.ad, !dbg !15641
  %i.gj = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i.i to i1 ; 2 uses
  %or.cond3148.i.i.i.i = select i1 %i.gi, i1 true, i1 %i.gj, !dbg !15641
  br i1 %or.cond3148.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph150.i.i.i.i, !dbg !15641

.lr.ph.i.i.i.i:                                   ; preds = %bb.at, %bb.ax
  %.sroa.06.0146.i.i.i.i = phi i64 [ %i.ib, %bb.ax ], [ 0, %bb.at ] ; 6 uses
    #dbg_value(i64 %.sroa.06.0146.i.i.i.i, !15120, !DIExpression(), !14505)
    #dbg_value(i16 0, !15123, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !14507)
    #dbg_value(i16 0, !15123, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !14507)
    #dbg_value(i16 0, !15123, !DIExpression(DW_OP_LLVM_fragment, 32, 16), !14507)
    #dbg_value(i16 0, !15123, !DIExpression(DW_OP_LLVM_fragment, 48, 16), !14507)
    #dbg_value(i64 0, !15124, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14508)
    #dbg_value(i64 4, !15124, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14508)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.06.0146.i.i.i.i ; 5 uses
    #dbg_value(i64 0, !15124, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14508)
    #dbg_value(i64 0, !15125, !DIExpression(), !14509)
    #dbg_value(ptr poison, !15298, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !14519)
    #dbg_value(ptr poison, !15304, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !14519)
    #dbg_value(ptr poison, !15305, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !14519)
    #dbg_value(!DIArgList(i64 %.sroa.06.0146.i.i.i.i, i64 0), !15322, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !14522)
    #dbg_value(!DIArgList(i64 %.sroa.06.0146.i.i.i.i, i64 0), !15302, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !14519)
    #dbg_value(!DIArgList(i64 %.sroa.06.0146.i.i.i.i, i64 0), !15322, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !14524)
    #dbg_value(ptr %i.ac, !15323, !DIExpression(), !14524)
    #dbg_value(ptr %i.gk, !15326, !DIExpression(), !14527)
    #dbg_value(ptr %i.gk, !15332, !DIExpression(), !14530)
  %.sroa.0.0.copyload.i.i.i.i.i = load <16 x i8>, ptr %i.gk, align 1, !dbg !15642, !alias.scope !15334, !noalias !15335
    #dbg_value(<16 x i8> %.sroa.0.0.copyload.i.i.i.i.i, !15344, !DIExpression(), !14538)
    #dbg_value(<16 x i8> %.sroa.0.0.copyload.i.i.i.i.i, !15306, !DIExpression(), !14539)
    #dbg_value(ptr %i.ac, !15323, !DIExpression(), !14522)
    #dbg_value(ptr %i.gk, !15323, !DIExpression(), !14541)
    #dbg_value(i64 %storemerge135138.i.i.i.i, !15322, !DIExpression(), !14541)
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %storemerge135138.i.i.i.i, !dbg !15643
end_hunk_1
begin_hunk_2_@llvm.memmove.p0.p0.i64
!15420 = !DISubroutineType(types: !15419)
!15421 = !DISubprogram(name: "ptr<tera::value::Value, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5yXxDE1DkoT_4tera5value5ValueE3ptrBQ_", scope: !171, file: !4099, line: 304, type: !15420, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1855)
!15422 = !DILocalVariable(name: "self", arg: 1, scope: !14703, file: !3356, line: 2572, type: !4632)
!15423 = !{!15422}
!15424 = !DILocalVariable(name: "self", arg: 1, scope: !14706, file: !3356, line: 2232, type: !4632)
!15425 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::sync::ArcInner<std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>>", baseType: !165, size: 64, align: 64, dwarfAddressSpace: 0)
!15426 = !{!15425, !4632}
!15427 = !DISubroutineType(types: !15426)
!15428 = !DISubprogram(name: "inner<std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1F_5ValueEE5innerB1H_", scope: !168, file: !3356, line: 2232, type: !15427, scopeLine: 2232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1834)
!15429 = !{!15424}
!15430 = !DILexicalBlockFile(scope: !14703, file: !3356, discriminator: 2)
!15431 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::ptr::non_null::NonNull<alloc::sync::ArcInner<std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>>>", baseType: !167, size: 64, align: 64, dwarfAddressSpace: 0)
!15432 = !{!15425, !15431}
!15433 = !DISubroutineType(types: !15432)
!15434 = !DISubprogram(name: "as_ref<alloc::sync::ArcInner<std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>>>", linkageName: "_RNvMs1_NtNtCsf3Ta7LF998c_4core3ptr8non_nullINtB5_7NonNullINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB2v_5ValueEEE6as_refB2x_", scope: !167, file: !2880, line: 450, type: !15433, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1788)
!15435 = !DILexicalBlockFile(scope: !14706, file: !3356, discriminator: 2)
!15436 = !DILocalVariable(name: "self", arg: 1, scope: !14712, file: !3021, line: 1013, type: !14021)
!15437 = !{!4631, !14021, !2812}
!15438 = !DISubroutineType(types: !15437)
!15439 = !DISubprogram(name: "unwrap<&std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>>", linkageName: "_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionRINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1H_5ValueEE6unwrapB1J_", scope: !14021, file: !3021, line: 1013, type: !15438, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !14847)
!15440 = !DILocalVariable(name: "val", scope: !14711, file: !3021, line: 1015, type: !4631, align: 64)
!15441 = !{!15436, !15440}
!15442 = !DIFile(filename: "library/std/src/collections/hash/map.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "81fd45bd90b0f94a5cedec658c45684d")
!15443 = !DILocalVariable(name: "self", arg: 1, scope: !14715, file: !15442, line: 1268, type: !4631)
!15444 = !{!1421, !4631, !3664}
!15445 = !DISubroutineType(types: !15444)
!15446 = !DITemplateTypeParameter(name: "Q", type: !102)
!15447 = !{!1825, !1826, !1827, !1379, !15446}
!15448 = !DISubprogram(name: "contains_key<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global, tera::value::key::Key>", linkageName: "_RINvMs2_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB6_7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB18_5ValueE12contains_keyB14_EB1a_", scope: !164, file: !15442, line: 1268, type: !15445, scopeLine: 1268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !15447)
!15449 = !DILocalVariable(name: "k", arg: 2, scope: !14715, file: !15442, line: 1268, type: !3664)
!15450 = !{!15443, !15449}
!15451 = !{!14719}
!15452 = !{!14723}
!15453 = !{!14727}
!15454 = !{!14727, !14723, !14719}
!15455 = !{!14727, !14723, !14719, !14003, !13999}
!15456 = !{!14741}
!15457 = !{!14745}
!15458 = !{!14749}
!15459 = !{!14749, !14745, !14741}
!15460 = !{!14749, !14745, !14741, !14003, !13999}
!15461 = !DILocation(line: 41, column: 9, scope: !13972)
!15462 = !DILocation(line: 79, column: 5, scope: !13987, inlinedAt: !13988)
!15463 = !DILocation(line: 158, column: 15, scope: !13984, inlinedAt: !13989)
!15464 = !DILocation(line: 158, column: 22, scope: !13984, inlinedAt: !13989)
!15465 = !DILocation(line: 4374, column: 24, scope: !832, inlinedAt: !14054)
!15466 = !DILocation(line: 2989, column: 12, scope: !830, inlinedAt: !14050)
!15467 = !DILocation(line: 4818, column: 24, scope: !686, inlinedAt: !14063)
!15468 = !DILocation(line: 3033, column: 18, scope: !830, inlinedAt: !14050)
!15469 = !DILocation(line: 2176, column: 15, scope: !14037, inlinedAt: !14038)
!15470 = !DILocation(line: 2176, column: 9, scope: !14037, inlinedAt: !14038)
!15471 = !DILocation(line: 2178, column: 17, scope: !14037, inlinedAt: !14038)
!15472 = !DILocation(line: 2190, column: 23, scope: !13973, inlinedAt: !13992)
!15473 = !DILocation(line: 158, column: 47, scope: !13984, inlinedAt: !13989)
!15474 = !DILocation(line: 0, scope: !14888, inlinedAt: !13989)
!15475 = !DILocation(line: 2177, column: 16, scope: !14037, inlinedAt: !14038)
!15476 = !DILocation(line: 410, column: 15, scope: !14006, inlinedAt: !14007)
!15477 = !DILocation(line: 410, column: 9, scope: !14006, inlinedAt: !14007)
!15478 = !DILocation(line: 161, column: 21, scope: !13985, inlinedAt: !13989)
!15479 = !DILocation(line: 705, column: 9, scope: !14015, inlinedAt: !14016)
!15480 = !DILocation(line: 165, column: 36, scope: !13985, inlinedAt: !13989)
!15481 = !DILocation(line: 165, column: 40, scope: !13985, inlinedAt: !13989)
!15482 = !DILocation(line: 169, column: 18, scope: !13985, inlinedAt: !13989)
!15483 = !DILocation(line: 169, column: 33, scope: !14794, inlinedAt: !13989)
!15484 = !DILocation(line: 661, column: 34, scope: !838, inlinedAt: !14079)
!15485 = !DILocation(line: 2176, column: 15, scope: !14042, inlinedAt: !14043)
!15486 = !DILocation(line: 2176, column: 9, scope: !14042, inlinedAt: !14043)
!15487 = !DILocation(line: 2178, column: 17, scope: !14042, inlinedAt: !14043)
!15488 = !DILocation(line: 2190, column: 23, scope: !13975, inlinedAt: !13990)
!15489 = !DILocation(line: 161, column: 60, scope: !13985, inlinedAt: !13989)
!15490 = !DILocation(line: 0, scope: !14897, inlinedAt: !13989)
!15491 = !DILocation(line: 2177, column: 16, scope: !14042, inlinedAt: !14043)
!15492 = !DILocation(line: 162, column: 20, scope: !13981, inlinedAt: !13989)
!15493 = !DILocation(line: 162, column: 16, scope: !13981, inlinedAt: !13989)
!15494 = !DILocation(line: 1014, column: 15, scope: !14089, inlinedAt: !14090)
!15495 = !DILocation(line: 1014, column: 9, scope: !14089, inlinedAt: !14090)
!15496 = !DILocation(line: 1383, column: 13, scope: !14084, inlinedAt: !14085)
!15497 = !DILocation(line: 990, column: 12, scope: !14097, inlinedAt: !14098)
!15498 = !DILocation(line: 994, column: 9, scope: !14097, inlinedAt: !14098)
!15499 = !DILocation(line: 996, column: 20, scope: !14097, inlinedAt: !14098)
!15500 = !DILocation(line: 21, column: 12, scope: !14107, inlinedAt: !14111)
!15501 = !DILocation(line: 1005, column: 20, scope: !14097, inlinedAt: !14098)
!15502 = !DILocation(line: 2606, column: 9, scope: !14119, inlinedAt: !14120)
!15503 = !DILocation(line: 28, column: 12, scope: !14135, inlinedAt: !14136)
!15504 = !DILocation(line: 28, column: 74, scope: !14135, inlinedAt: !14136)
!15505 = !DILocation(line: 29, column: 12, scope: !14133, inlinedAt: !14136)
!15506 = !DILocation(line: 28, scope: !14135, inlinedAt: !14136)
!15507 = !DILocation(line: 31, column: 48, scope: !14133, inlinedAt: !14136)
!15508 = !DILocation(line: 210, column: 9, scope: !14142, inlinedAt: !14143)
!15509 = !DILocation(line: 29, column: 5, scope: !14134, inlinedAt: !14136)
!15510 = !DILocation(line: 42, column: 12, scope: !14131, inlinedAt: !14137)
!15511 = !DILocation(line: 46, column: 9, scope: !14131, inlinedAt: !14137)
!15512 = !DILocation(line: 41, column: 11, scope: !14131, inlinedAt: !14137)
!15513 = !DILocation(line: 1011, column: 17, scope: !14097, inlinedAt: !14098)
!15514 = !DILocation(line: 978, column: 9, scope: !14095, inlinedAt: !14099)
!15515 = !DILocation(line: 1011, column: 46, scope: !14097, inlinedAt: !14098)
!15516 = !DILocation(line: 1206, column: 15, scope: !14159, inlinedAt: !14160)
!15517 = !DILocation(line: 1206, column: 9, scope: !14159, inlinedAt: !14160)
!15518 = !DILocation(line: 1208, column: 23, scope: !14159, inlinedAt: !14160)
!15519 = !DILocation(line: 1208, column: 28, scope: !14159, inlinedAt: !14160)
!15520 = !DILocation(line: 1208, column: 17, scope: !14159, inlinedAt: !14160)
!15521 = !DILocation(line: 1215, column: 29, scope: !14157, inlinedAt: !14160)
!15522 = !DILocation(line: 1216, column: 20, scope: !14156, inlinedAt: !14160)
!15523 = !DILocation(line: 1231, column: 37, scope: !14159, inlinedAt: !14160)
!15524 = !DILocation(line: 1232, column: 31, scope: !14153, inlinedAt: !14160)
!15525 = !DILocation(line: 0, scope: !14152, inlinedAt: !14160)
!15526 = !DILocation(line: 1546, column: 23, scope: !14188, inlinedAt: !14283)
!15527 = !DILocation(line: 1547, column: 27, scope: !14189, inlinedAt: !14283)
!15528 = !DILocation(line: 1235, column: 20, scope: !14152, inlinedAt: !14160)
!15529 = !DILocation(line: 1212, column: 17, scope: !14159, inlinedAt: !14160)
!15530 = !DILocation(line: 1207, column: 43, scope: !14159, inlinedAt: !14160)
!15531 = !DILocation(line: 0, scope: !14159, inlinedAt: !14160)
!15532 = !DILocation(line: 0, scope: !15060, inlinedAt: !14160)
!15533 = !DILocation(line: 1219, column: 38, scope: !14156, inlinedAt: !14160)
!15534 = !DILocation(line: 549, column: 27, scope: !14165, inlinedAt: !14169)
!15535 = !DILocation(line: 90, column: 24, scope: !14164, inlinedAt: !14170)
!15536 = !DILocation(line: 28, column: 12, scope: !14135, inlinedAt: !14287)
!15537 = !DILocation(line: 28, column: 74, scope: !14135, inlinedAt: !14287)
!15538 = !DILocation(line: 29, column: 12, scope: !14133, inlinedAt: !14287)
!15539 = !DILocation(line: 42, column: 12, scope: !14131, inlinedAt: !14288)
!15540 = !DILocation(line: 46, column: 9, scope: !14131, inlinedAt: !14288)
!15541 = !DILocation(line: 41, column: 11, scope: !14131, inlinedAt: !14288)
!15542 = !DILocation(line: 28, scope: !14135, inlinedAt: !14287)
!15543 = !DILocation(line: 31, column: 48, scope: !14133, inlinedAt: !14287)
!15544 = !DILocation(line: 210, column: 9, scope: !14142, inlinedAt: !14296)
!15545 = !DILocation(line: 1224, column: 21, scope: !14156, inlinedAt: !14160)
!15546 = !DILocation(line: 1242, column: 30, scope: !14152, inlinedAt: !14160)
!15547 = !DILocation(line: 1552, column: 48, scope: !14190, inlinedAt: !14201)
!15548 = !DILocation(line: 184, column: 12, scope: !14240, inlinedAt: !14243)
!15549 = !DILocation(line: 1565, column: 17, scope: !14191, inlinedAt: !14201)
!15550 = !DILocation(line: 186, column: 27, scope: !14240, inlinedAt: !14243)
!15551 = !DILocation(line: 1553, column: 23, scope: !14190, inlinedAt: !14201)
!15552 = !DILocation(line: 1532, column: 27, scope: !14228, inlinedAt: !14231)
!15553 = !DILocation(line: 1532, column: 26, scope: !14228, inlinedAt: !14231)
!15554 = !DILocation(line: 1532, column: 9, scope: !14228, inlinedAt: !14231)
!15555 = !DILocation(line: 1566, column: 17, scope: !14191, inlinedAt: !14201)
!15556 = !DILocation(line: 1567, column: 17, scope: !14191, inlinedAt: !14201)
!15557 = !DILocation(line: 2325, column: 17, scope: !14305, inlinedAt: !14308)
!15558 = !DILocation(line: 2224, column: 50, scope: !14177, inlinedAt: !14222)
!15559 = !DILocation(line: 1100, column: 12, scope: !14214, inlinedAt: !14221)
!15560 = !DILocation(line: 1043, column: 17, scope: !14268, inlinedAt: !14271)
!15561 = !DILocation(line: 2224, column: 50, scope: !14177, inlinedAt: !14205)
!15562 = !DILocation(line: 1142, column: 12, scope: !14178, inlinedAt: !14204)
!15563 = !DILocation(line: 1583, column: 20, scope: !14185, inlinedAt: !14201)
!15564 = !DILocation(line: 1583, column: 66, scope: !14185, inlinedAt: !14201)
!15565 = !DILocation(line: 218, column: 39, scope: !14250, inlinedAt: !14253)
!15566 = !DILocation(line: 218, column: 13, scope: !14250, inlinedAt: !14253)
!15567 = !DILocation(line: 219, column: 13, scope: !14250, inlinedAt: !14253)
!15568 = !DILocation(line: 1583, column: 42, scope: !14185, inlinedAt: !14201)
!15569 = !DILocation(line: 1222, column: 17, scope: !14278, inlinedAt: !14281)
!15570 = !DILocation(line: 1601, column: 20, scope: !14184, inlinedAt: !14201)
!15571 = !DILocation(line: 1601, column: 66, scope: !14184, inlinedAt: !14201)
!15572 = !DILocation(line: 218, column: 39, scope: !14250, inlinedAt: !14261)
!15573 = !DILocation(line: 218, column: 13, scope: !14250, inlinedAt: !14261)
!15574 = !DILocation(line: 219, column: 13, scope: !14250, inlinedAt: !14261)
!15575 = !DILocation(line: 1601, column: 42, scope: !14184, inlinedAt: !14201)
!15576 = !DILocation(line: 0, scope: !14097, inlinedAt: !14098)
!15577 = !DILocation(line: 1602, column: 21, scope: !14184, inlinedAt: !14201)
!15578 = !DILocation(line: 1603, column: 21, scope: !14184, inlinedAt: !14201)
!15579 = !DILocation(line: 1584, column: 21, scope: !14185, inlinedAt: !14201)
!15580 = !DILocation(line: 1585, column: 21, scope: !14185, inlinedAt: !14201)
!15581 = !DILocation(line: 1236, column: 30, scope: !14152, inlinedAt: !14160)
!15582 = !DILocation(line: 1552, column: 48, scope: !14190, inlinedAt: !14195)
!15583 = !DILocation(line: 184, column: 12, scope: !14240, inlinedAt: !14241)
!15584 = !DILocation(line: 1565, column: 17, scope: !14191, inlinedAt: !14195)
!15585 = !DILocation(line: 186, column: 27, scope: !14240, inlinedAt: !14241)
!15586 = !DILocation(line: 1553, column: 23, scope: !14190, inlinedAt: !14195)
!15587 = !DILocation(line: 1532, column: 27, scope: !14228, inlinedAt: !14229)
!15588 = !DILocation(line: 1532, column: 26, scope: !14228, inlinedAt: !14229)
!15589 = !DILocation(line: 1532, column: 9, scope: !14228, inlinedAt: !14229)
!15590 = !DILocation(line: 1100, column: 12, scope: !14214, inlinedAt: !14217)
!15591 = !DILocation(line: 1043, column: 17, scope: !14268, inlinedAt: !14269)
!15592 = !DILocation(line: 2224, column: 50, scope: !14177, inlinedAt: !14218)
!15593 = !DILocation(line: 1142, column: 12, scope: !14178, inlinedAt: !14198)
!15594 = !DILocation(line: 2224, column: 50, scope: !14177, inlinedAt: !14199)
!15595 = !DILocation(line: 1222, column: 17, scope: !14278, inlinedAt: !14279)
!15596 = !DILocation(line: 1601, column: 20, scope: !14184, inlinedAt: !14195)
!15597 = !DILocation(line: 1601, column: 66, scope: !14184, inlinedAt: !14195)
!15598 = !DILocation(line: 218, column: 39, scope: !14250, inlinedAt: !14259)
!15599 = !DILocation(line: 218, column: 13, scope: !14250, inlinedAt: !14259)
!15600 = !DILocation(line: 219, column: 13, scope: !14250, inlinedAt: !14259)
!15601 = !DILocation(line: 1601, column: 42, scope: !14184, inlinedAt: !14195)
!15602 = !DILocation(line: 1602, column: 21, scope: !14184, inlinedAt: !14195)
!15603 = !DILocation(line: 1603, column: 25, scope: !14184, inlinedAt: !14195)
!15604 = !DILocation(line: 1583, column: 20, scope: !14185, inlinedAt: !14195)
!15605 = !DILocation(line: 1583, column: 66, scope: !14185, inlinedAt: !14195)
!15606 = !DILocation(line: 218, column: 39, scope: !14250, inlinedAt: !14251)
!15607 = !DILocation(line: 218, column: 13, scope: !14250, inlinedAt: !14251)
!15608 = !DILocation(line: 219, column: 13, scope: !14250, inlinedAt: !14251)
!15609 = !DILocation(line: 1583, column: 42, scope: !14185, inlinedAt: !14195)
!15610 = !DILocation(line: 1584, column: 21, scope: !14185, inlinedAt: !14195)
!15611 = !DILocation(line: 1585, column: 25, scope: !14185, inlinedAt: !14195)
!15612 = !DILocation(line: 1566, column: 17, scope: !14191, inlinedAt: !14195)
!15613 = !DILocation(line: 1567, column: 21, scope: !14191, inlinedAt: !14195)
!15614 = !DILocation(line: 1011, column: 67, scope: !14097, inlinedAt: !14098)
!15615 = !DILocation(line: 1006, column: 43, scope: !14096, inlinedAt: !14098)
!15616 = !DILocation(line: 1904, column: 23, scope: !14357, inlinedAt: !14366)
!15617 = !DILocation(line: 1905, column: 28, scope: !14358, inlinedAt: !14366)
!15618 = !DILocation(line: 1908, column: 34, scope: !14359, inlinedAt: !14366)
!15619 = !DILocation(line: 2570, column: 13, scope: !14421, inlinedAt: !14422)
!15620 = !DILocation(line: 2224, column: 50, scope: !14390, inlinedAt: !14405)
!15621 = !DILocation(line: 1142, column: 12, scope: !14391, inlinedAt: !14404)
!15622 = !DILocation(line: 1222, column: 17, scope: !14443, inlinedAt: !14446)
!15623 = !DILocation(line: 1915, column: 73, scope: !14454, inlinedAt: !14456)
!15624 = !DILocation(line: 290, column: 21, scope: !14399, inlinedAt: !14402)
!15625 = !DILocation(line: 1925, column: 25, scope: !14360, inlinedAt: !14366)
!15626 = !DILocation(line: 1925, column: 8, scope: !14360, inlinedAt: !14366)
!15627 = !DILocation(line: 153, column: 18, scope: !14437, inlinedAt: !14438)
!15628 = !DILocation(line: 1930, column: 44, scope: !14361, inlinedAt: !14366)
!15629 = !DILocation(line: 157, column: 13, scope: !14485, inlinedAt: !14489)
!15630 = !DILocation(line: 2490, column: 21, scope: !14382, inlinedAt: !14385)
!15631 = !DILocation(line: 90, column: 24, scope: !899, inlinedAt: !14479)
!15632 = !DILocation(line: 549, column: 27, scope: !905, inlinedAt: !14477)
!15633 = !DILocation(line: 1355, column: 12, scope: !898, inlinedAt: !14386)
!15634 = !DILocation(line: 153, column: 18, scope: !14437, inlinedAt: !14500)
!15635 = !DILocation(line: 90, column: 24, scope: !14431, inlinedAt: !14432)
!15636 = !DILocation(line: 1936, column: 9, scope: !14363, inlinedAt: !14366)
!15637 = !DILocation(line: 1937, column: 5, scope: !14363, inlinedAt: !14366)
!15638 = !DILocation(line: 1980, column: 11, scope: !14352, inlinedAt: !14366)
!15639 = !DILocation(line: 1976, column: 22, scope: !14353, inlinedAt: !14366)
!15640 = !DILocation(line: 0, scope: !14365, inlinedAt: !14366)
!15641 = !DILocation(line: 1993, column: 11, scope: !14352, inlinedAt: !14366)
!15642 = !DILocation(line: 1758, column: 9, scope: !14534, inlinedAt: !14535)
!15643 = !DILocation(line: 872, column: 18, scope: !14520, inlinedAt: !14540)
!15644 = !DILocation(line: 1758, column: 9, scope: !14534, inlinedAt: !14546)
!15645 = !DILocation(line: 31, column: 52, scope: !14536, inlinedAt: !14537)
!15646 = !DILocation(line: 31, column: 52, scope: !14536, inlinedAt: !14547)
!15647 = !DILocation(line: 549, column: 23, scope: !14550, inlinedAt: !14551)
!15648 = !DILocation(line: 1983, column: 13, scope: !14349, inlinedAt: !14366)
!15649 = !DILocation(line: 872, column: 18, scope: !14520, inlinedAt: !14523)
!15650 = !DILocation(line: 1987, column: 16, scope: !14346, inlinedAt: !14366)
!15651 = !DILocation(line: 0, scope: !14353, inlinedAt: !14366)
!15652 = !DILocation(line: 1988, column: 38, scope: !14346, inlinedAt: !14366)
!15653 = !DILocation(line: 1988, column: 64, scope: !14346, inlinedAt: !14366)
!15654 = !DILocation(line: 1988, column: 27, scope: !14346, inlinedAt: !14366)
!15655 = !DILocation(line: 1988, column: 17, scope: !14346, inlinedAt: !14366)
!15656 = !DILocation(line: 1987, column: 13, scope: !14346, inlinedAt: !14366)
!15657 = !DILocation(line: 1991, column: 9, scope: !14351, inlinedAt: !14366)
!15658 = !DILocation(line: 2005, column: 13, scope: !14352, inlinedAt: !14366)
!15659 = !DILocation(line: 872, column: 18, scope: !14520, inlinedAt: !14573)
!15660 = !DILocation(line: 1758, column: 9, scope: !14534, inlinedAt: !14581)
!15661 = !DILocation(line: 872, column: 18, scope: !14520, inlinedAt: !14585)
!15662 = !DILocation(line: 1758, column: 9, scope: !14534, inlinedAt: !14591)
!15663 = !DILocation(line: 31, column: 52, scope: !14536, inlinedAt: !14582)
!15664 = !DILocation(line: 31, column: 52, scope: !14536, inlinedAt: !14592)
!15665 = !DILocation(line: 549, column: 23, scope: !14550, inlinedAt: !14595)
!15666 = !DILocation(line: 317, column: 39, scope: !14560, inlinedAt: !14602)
!15667 = !DILocation(line: 2007, column: 8, scope: !14343, inlinedAt: !14366)
!15668 = !DILocation(line: 872, column: 18, scope: !14520, inlinedAt: !14610)
!15669 = !DILocation(line: 1758, column: 9, scope: !14534, inlinedAt: !14618)
!15670 = !DILocation(line: 872, column: 18, scope: !14520, inlinedAt: !14622)
!15671 = !DILocation(line: 1758, column: 9, scope: !14534, inlinedAt: !14628)
!15672 = !DILocation(line: 31, column: 52, scope: !14536, inlinedAt: !14619)
!15673 = !DILocation(line: 31, column: 52, scope: !14536, inlinedAt: !14629)
!15674 = !DILocation(line: 549, column: 23, scope: !14550, inlinedAt: !14632)
!15675 = !DILocation(line: 317, column: 39, scope: !14560, inlinedAt: !14639)
!15676 = !DILocation(line: 1995, column: 12, scope: !14345, inlinedAt: !14366)
!15677 = !DILocation(line: 1998, column: 9, scope: !14345, inlinedAt: !14366)
!15678 = !DILocation(line: 1996, column: 23, scope: !14345, inlinedAt: !14366)
!15679 = !DILocation(line: 1996, column: 13, scope: !14345, inlinedAt: !14366)
!15680 = !DILocation(line: 1995, column: 9, scope: !14345, inlinedAt: !14366)
!15681 = !DILocation(line: 2012, column: 1, scope: !14363, inlinedAt: !14366)
!15682 = !DILocation(line: 2012, column: 2, scope: !14355, inlinedAt: !14366)
!15683 = !DILocation(line: 2008, column: 19, scope: !14343, inlinedAt: !14366)
!15684 = !DILocation(line: 2008, column: 9, scope: !14343, inlinedAt: !14366)
!15685 = !DILocation(line: 2007, column: 5, scope: !14343, inlinedAt: !14366)
!15686 = !DILocation(line: 157, column: 13, scope: !14114, inlinedAt: !14115)
!15687 = !DILocation(line: 21, column: 9, scope: !14107, inlinedAt: !14111)
!15688 = !DILocation(line: 0, scope: !13985, inlinedAt: !13989)
!15689 = !DILocation(line: 162, column: 13, scope: !13981, inlinedAt: !13989)
!15690 = !DILocation(line: 163, column: 9, scope: !13985, inlinedAt: !13989)
!15691 = !DILocation(line: 4374, column: 24, scope: !832, inlinedAt: !14651)
!15692 = !DILocation(line: 2989, column: 12, scope: !830, inlinedAt: !14647)
!15693 = !DILocation(line: 4374, column: 24, scope: !832, inlinedAt: !14668)
!15694 = !DILocation(line: 2989, column: 12, scope: !830, inlinedAt: !14664)
!15695 = !DILocation(line: 454, column: 20, scope: !14684, inlinedAt: !14685)
!15696 = !DILocation(line: 627, column: 9, scope: !14696, inlinedAt: !14701)
!15697 = !DILocation(line: 1873, column: 86, scope: !14689, inlinedAt: !14690)
!15698 = !DILocation(line: 2606, column: 9, scope: !14068, inlinedAt: !14069)
!15699 = !DILocation(line: 164, column: 29, scope: !13985, inlinedAt: !13989)
!15700 = !DILocation(line: 164, column: 69, scope: !13985, inlinedAt: !13989)
!15701 = !DILocation(line: 165, column: 30, scope: !13985, inlinedAt: !13989)
!15702 = !DILocation(line: 165, column: 27, scope: !13985, inlinedAt: !13989)
!15703 = !DILocation(line: 168, column: 10, scope: !13985, inlinedAt: !13989)
!15704 = !DILocation(line: 166, column: 16, scope: !13985, inlinedAt: !13989)
!15705 = !DILocation(line: 697, column: 9, scope: !14023, inlinedAt: !14024)
!15706 = !DILocation(line: 454, column: 20, scope: !14709, inlinedAt: !14710)
!15707 = !DILocation(line: 2573, column: 9, scope: !14703, inlinedAt: !14704)
!15708 = !DILocation(line: 1273, column: 19, scope: !14715, inlinedAt: !14716)
!15709 = !DILocation(line: 1016, column: 21, scope: !14712, inlinedAt: !14713)
!15710 = !DILocation(line: 166, column: 63, scope: !13985, inlinedAt: !13989)
!15711 = !DILocation(line: 848, column: 1, scope: !678, inlinedAt: !14720)
!15712 = !DILocation(line: 848, column: 1, scope: !679, inlinedAt: !14724)
!15713 = !DILocation(line: 454, column: 20, scope: !685, inlinedAt: !14736)
!15714 = !DILocation(line: 4374, column: 24, scope: !684, inlinedAt: !14734)
!15715 = !DILocation(line: 2989, column: 12, scope: !682, inlinedAt: !14728)
!15716 = !DILocation(line: 4818, column: 24, scope: !686, inlinedAt: !14738)
!15717 = !DILocation(line: 3033, column: 18, scope: !682, inlinedAt: !14728)
!15718 = !DILocation(line: 848, column: 1, scope: !678, inlinedAt: !14742)
!15719 = !DILocation(line: 848, column: 1, scope: !679, inlinedAt: !14746)
!15720 = !DILocation(line: 454, column: 20, scope: !685, inlinedAt: !14758)
!15721 = !DILocation(line: 4374, column: 24, scope: !684, inlinedAt: !14756)
!15722 = !DILocation(line: 2989, column: 12, scope: !682, inlinedAt: !14750)
!15723 = !DILocation(line: 4818, column: 24, scope: !686, inlinedAt: !14760)
!15724 = !DILocation(line: 3033, column: 18, scope: !682, inlinedAt: !14750)
!15725 = !DILocation(line: 1273, column: 9, scope: !14715, inlinedAt: !14716)
!15726 = !DILocation(line: 157, column: 1, scope: !13984, inlinedAt: !13989)
!15727 = !DILocation(line: 169, column: 33, scope: !13985, inlinedAt: !13989)
!15728 = !DILocation(line: 169, column: 14, scope: !13985, inlinedAt: !13989)
!15729 = !DILocation(line: 171, column: 11, scope: !13985, inlinedAt: !13989)
!15730 = !DILocation(line: 4818, column: 24, scope: !686, inlinedAt: !14765)
!15731 = !DILocation(line: 3033, column: 18, scope: !830, inlinedAt: !14764)
!15732 = !DILocation(line: 173, column: 2, scope: !13984, inlinedAt: !13989)
!15733 = !DILocation(line: 42, column: 6, scope: !13972)
!15734 = distinct !DISubprogram(name: "call<fn(&str, tera::args::Kwargs, &tera::vm::state::State) -> core::result::Result<bool, tera::errors::Error>, &str, core::result::Result<bool, tera::errors::Error>>", linkageName: "_RNvXs0_NtCs5yXxDE1DkoT_4tera5testsNvB5_14is_ending_withINtB5_4TestReINtNtCsf3Ta7LF998c_4core6result6ResultbNtNtB7_6errors5ErrorEE4callB7_", scope: !4598, file: !4250, line: 40, type: !4643, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !465, templateParams: !4646, retainedNodes: !15833)
!15735 = distinct !{!15735, !"_RNvYNvNtCs5yXxDE1DkoT_4tera5tests14is_ending_withINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTReNtNtB6_4args6KwargsRNtNtNtB6_2vm5state5StateEE4callB6_"}
!15736 = distinct !{!15736, !15735, !"_RNvYNvNtCs5yXxDE1DkoT_4tera5tests14is_ending_withINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTReNtNtB6_4args6KwargsRNtNtNtB6_2vm5state5StateEE4callB6_: argument 0"}
!15737 = distinct !DISubprogram(name: "call<fn(&str, tera::args::Kwargs, &tera::vm::state::State) -> core::result::Result<bool, tera::errors::Error>, (&str, tera::args::Kwargs, &tera::vm::state::State)>", linkageName: "_RNvYNvNtCs5yXxDE1DkoT_4tera5tests14is_ending_withINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTReNtNtB6_4args6KwargsRNtNtNtB6_2vm5state5StateEE4callB6_", scope: !4066, file: !3060, line: 79, type: !4651, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !465, templateParams: !4654, retainedNodes: !15838)
!15738 = distinct !DILocation(line: 41, column: 9, scope: !15734)
!15739 = distinct !DILocation(line: 0, scope: !15737, inlinedAt: !15738)
!15740 = distinct !{!15740, !"_RNvNtCs5yXxDE1DkoT_4tera5tests14is_ending_with"}
!15741 = distinct !{!15741, !15740, !"_RNvNtCs5yXxDE1DkoT_4tera5tests14is_ending_with: argument 0"}
!15742 = distinct !{!15742, !15735, !"_RNvYNvNtCs5yXxDE1DkoT_4tera5tests14is_ending_withINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTReNtNtB6_4args6KwargsRNtNtNtB6_2vm5state5StateEE4callB6_: argument 1"}
!15743 = distinct !DISubprogram(name: "from_residual<bool, tera::errors::Error, tera::errors::Error>", linkageName: "_RNvXsq_NtCsf3Ta7LF998c_4core6resultINtB5_6ResultbNtNtCs5yXxDE1DkoT_4tera6errors5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualBP_", scope: !4000, file: !3999, line: 2188, type: !4194, scopeLine: 2188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !465, templateParams: !4195, retainedNodes: !15843)
!15744 = distinct !DILexicalBlock(scope: !15743, file: !3999, line: 2190, column: 13)
!15745 = distinct !DILexicalBlock(scope: !15747, file: !4250, line: 153, column: 45)
!15746 = distinct !DILexicalBlock(scope: !15747, file: !4250, line: 153, column: 5)
!15747 = distinct !DISubprogram(name: "is_ending_with", linkageName: "_RNvNtCs5yXxDE1DkoT_4tera5tests14is_ending_with", scope: !4251, file: !4250, line: 152, type: !4655, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !465, templateParams: !1191, retainedNodes: !15851)
!15748 = distinct !DILexicalBlock(scope: !15747, file: !4250, line: 153, column: 45)
!15749 = distinct !DILocation(line: 79, column: 5, scope: !15737, inlinedAt: !15738)
!15750 = distinct !DILocation(line: 153, column: 15, scope: !15844, inlinedAt: !15749)
!15751 = distinct !DILocation(line: 2190, column: 17, scope: !15744, inlinedAt: !15750)
!15752 = distinct !DILocation(line: 153, column: 45, scope: !15748, inlinedAt: !15749)
!15753 = distinct !DILocation(line: 2188, column: 22, scope: !15743, inlinedAt: !15750)
!15754 = distinct !{!15754, !15740, !"_RNvNtCs5yXxDE1DkoT_4tera5tests14is_ending_with: argument 1"}
!15755 = distinct !DILocation(line: 0, scope: !15747, inlinedAt: !15749)
!15756 = distinct !DISubprogram(name: "ends_with<&str>", linkageName: "_RINvMNtCsf3Ta7LF998c_4core3stre9ends_withReECs5yXxDE1DkoT_4tera", scope: !2704, file: !2702, line: 1445, type: !4497, scopeLine: 1445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !465, templateParams: !3222, retainedNodes: !15855)
!15757 = distinct !DILocation(line: 154, column: 12, scope: !15746, inlinedAt: !15749)
!15758 = distinct !DILocation(line: 0, scope: !15756, inlinedAt: !15757)
!15759 = distinct !DISubprogram(name: "is_suffix_of", linkageName: "_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern12is_suffix_of", scope: !3224, file: !2738, line: 1030, type: !4497, scopeLine: 1030, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !465, templateParams: !1191, retainedNodes: !15858)
!15760 = distinct !DILocation(line: 1449, column: 13, scope: !15756, inlinedAt: !15757)
!15761 = distinct !DILocation(line: 0, scope: !15759, inlinedAt: !15760)
!15762 = distinct !DILocation(line: 152, column: 41, scope: !15747, inlinedAt: !15749)
!15763 = distinct !DILexicalBlock(scope: !15765, file: !3999, line: 2178, column: 13)
!15764 = distinct !DILexicalBlock(scope: !15765, file: !3999, line: 2177, column: 13)
!15765 = distinct !DISubprogram(name: "branch<&str, tera::errors::Error>", linkageName: "_RNvXsp_NtCsf3Ta7LF998c_4core6resultINtB5_6ResultReNtNtCs5yXxDE1DkoT_4tera6errors5ErrorENtNtNtB7_3ops9try_trait3Try6branchBQ_", scope: !4082, file: !3999, line: 2175, type: !4207, scopeLine: 2175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !465, templateParams: !4202, retainedNodes: !15862)
!15766 = distinct !DILocation(line: 153, column: 15, scope: !15747, inlinedAt: !15749)
!15767 = distinct !DILocation(line: 2175, column: 15, scope: !15765, inlinedAt: !15766)
!15768 = distinct !DILocation(line: 155, column: 1, scope: !15747, inlinedAt: !15749)
!15769 = distinct !DILocation(line: 0, scope: !828, inlinedAt: !15768)
!15770 = distinct !DILocation(line: 848, column: 1, scope: !828, inlinedAt: !15768)
!15771 = distinct !DILocation(line: 0, scope: !829, inlinedAt: !15770)
!15772 = distinct !DILocation(line: 848, column: 1, scope: !829, inlinedAt: !15770)
!15773 = distinct !DILocation(line: 0, scope: !830, inlinedAt: !15772)
!15774 = distinct !DILocation(line: 2989, column: 32, scope: !830, inlinedAt: !15772)
!15775 = distinct !DILocation(line: 0, scope: !831, inlinedAt: !15774)
!15776 = distinct !DILocation(line: 3576, column: 26, scope: !831, inlinedAt: !15774)
!15777 = distinct !DILocation(line: 0, scope: !832, inlinedAt: !15776)
!15778 = distinct !DILocation(line: 3574, column: 36, scope: !831, inlinedAt: !15774)
!15779 = distinct !{!15779, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_"}
!15780 = distinct !{!15780, !15779, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_: argument 0"}
!15781 = distinct !{!15781, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB28_5ValueEEEB2a_"}
!15782 = distinct !{!15782, !15781, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB28_5ValueEEEB2a_: argument 0"}
!15783 = distinct !{!15783, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1F_5ValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1H_"}
!15784 = distinct !{!15784, !15783, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1F_5ValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1H_: argument 0"}
!15785 = distinct !DILocation(line: 69, column: 9, scope: !830, inlinedAt: !15772)
!15786 = distinct !DILocation(line: 0, scope: !686, inlinedAt: !15785)
!15787 = distinct !DILocation(line: 0, scope: !15743, inlinedAt: !15750)
!15788 = distinct !DILocation(line: 0, scope: !15748, inlinedAt: !15749)
!15789 = distinct !DILocation(line: 0, scope: !15744, inlinedAt: !15750)
!15790 = distinct !DILocation(line: 155, column: 1, scope: !15747, inlinedAt: !15749)
!15791 = distinct !DILocation(line: 0, scope: !828, inlinedAt: !15790)
!15792 = distinct !DILocation(line: 848, column: 1, scope: !828, inlinedAt: !15790)
!15793 = distinct !DILocation(line: 0, scope: !829, inlinedAt: !15792)
!15794 = distinct !DILocation(line: 848, column: 1, scope: !829, inlinedAt: !15792)
!15795 = distinct !DILocation(line: 0, scope: !830, inlinedAt: !15794)
!15796 = distinct !DILocation(line: 2989, column: 32, scope: !830, inlinedAt: !15794)
!15797 = distinct !DILocation(line: 0, scope: !831, inlinedAt: !15796)
!15798 = distinct !DILocation(line: 3576, column: 26, scope: !831, inlinedAt: !15796)
!15799 = distinct !DILocation(line: 0, scope: !832, inlinedAt: !15798)
!15800 = distinct !DILocation(line: 3574, column: 36, scope: !831, inlinedAt: !15796)
!15801 = distinct !{!15801, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_"}
!15802 = distinct !{!15802, !15801, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_: argument 0"}
!15803 = distinct !{!15803, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB28_5ValueEEEB2a_"}
!15804 = distinct !{!15804, !15803, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB28_5ValueEEEB2a_: argument 0"}
!15805 = distinct !{!15805, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1F_5ValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1H_"}
!15806 = distinct !{!15806, !15805, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1F_5ValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1H_: argument 0"}
!15807 = distinct !DILocation(line: 0, scope: !15746, inlinedAt: !15749)
!15808 = distinct !DILocation(line: 155, column: 1, scope: !15747, inlinedAt: !15749)
!15809 = distinct !DILocation(line: 0, scope: !828, inlinedAt: !15808)
!15810 = distinct !DILocation(line: 848, column: 1, scope: !828, inlinedAt: !15808)
!15811 = distinct !DILocation(line: 0, scope: !829, inlinedAt: !15810)
!15812 = distinct !DILocation(line: 848, column: 1, scope: !829, inlinedAt: !15810)
!15813 = distinct !DILocation(line: 0, scope: !830, inlinedAt: !15812)
!15814 = distinct !DILocation(line: 2989, column: 32, scope: !830, inlinedAt: !15812)
!15815 = distinct !DILocation(line: 0, scope: !831, inlinedAt: !15814)
!15816 = distinct !DILocation(line: 3576, column: 26, scope: !831, inlinedAt: !15814)
!15817 = distinct !DILocation(line: 0, scope: !832, inlinedAt: !15816)
!15818 = distinct !DILocation(line: 3574, column: 36, scope: !831, inlinedAt: !15814)
!15819 = distinct !{!15819, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_"}
!15820 = distinct !{!15820, !15819, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_: argument 0"}
!15821 = distinct !{!15821, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB28_5ValueEEEB2a_"}
end_hunk_2
