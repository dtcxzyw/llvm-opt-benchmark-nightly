Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_lazy-a1f6b829fbfe5eb7.polars_lazy.597454fe6890bcc2-cgu.15?download=true
inline.NumInlined: 914
inline.NumDeleted: 371
begin_hunk_0_@_RNvXsX_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCs7Ga9Brpi21q_11polars_lazy5frame13cached_arenas11CachedArenaEEENtNtB1A_7default7Default7defaultB2d_:bb.a
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 88, i64 noundef 8) #17, !dbg !10836
  resume { ptr, i32 } %i.d, !dbg !10843
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXsX_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEENtNtB1A_7default7Default7defaultCs7Ga9Brpi21q_11polars_lazy() unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10844 {
bb.a:
  %i.a = alloca [384 x i8], align 16              ; 4 uses
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !dbg !10845
  %i.b = tail call noundef align 16 dereferenceable_or_null(400) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef 400, i64 noundef range(i64 1, -9223372036854775807) 16) #17, !dbg !10853 ; 6 uses
  %i.c = icmp eq ptr %i.b, null, !dbg !10854
  br i1 %i.c, label %bb.b, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, !dbg !10855, !prof !72

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 400) #18, !dbg !10856
  unreachable, !dbg !10856

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10857
  invoke void @_RNvXs7_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREENtNtB12_7default7Default7defaultCs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef nonnull sret([384 x i8]) align 16 captures(none) dereferenceable(384) %i.a)
          to label %bb.c unwind label %bb.d, !dbg !10857

bb.c:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !10858
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(384) %.sroa.511.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(384) %i.a, i64 384, i1 false), !dbg !10863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10864
  store i64 1, ptr %i.b, align 16, !dbg !10858
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !10858
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !10858
  ret ptr %i.b, !dbg !10865

bb.d:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 400, i64 noundef 16) #17, !dbg !10866
  resume { ptr, i32 } %i.d, !dbg !10877
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs7Ga9Brpi21q_11polars_lazy4scan3csvNtB4_13LazyCsvReaderNtNtB6_16file_list_reader18LazyFileListReader11concat_impl(ptr dead_on_unwind noalias noundef writable sret([384 x i8]) align 16 captures(none) dereferenceable(384) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(464) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10878 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 248, !dbg !10880
  %i.b = load i8, ptr %i.a, align 8, !dbg !10880, !range !10883, !noundef !14
  %.sroa.01.1.insert.ext = zext nneg i8 %i.b to i56, !dbg !10884
  %.sroa.01.1.insert.shift = shl nuw nsw i56 %.sroa.01.1.insert.ext, 8, !dbg !10884
  %.sroa.01.6.insert.insert = or disjoint i56 %.sroa.01.1.insert.shift, 282574488338432, !dbg !10884
  invoke void @_RINvNtNtCs7Ga9Brpi21q_11polars_lazy3dsl9functions11concat_implRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB6_5frame9LazyFrameEEB6_(ptr noalias noundef nonnull sret([384 x i8]) align 16 captures(none) dereferenceable(384) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, i56 noundef %.sroa.01.6.insert.insert)
          to label %bb.c unwind label %bb.b, !dbg !10884

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEEB1h_(ptr noalias noundef align 8 dereferenceable(24) %2) #20
          to label %common.resume unwind label %bb.f, !dbg !10886

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEEB1h_.exit unwind label %bb.d, !dbg !10887

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.e, !dbg !10889

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #19, !dbg !10887
  unreachable, !dbg !10887

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op, !dbg !10891

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEEB1h_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !dbg !10892
  ret void, !dbg !10894

bb.f:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #19, !dbg !10895
  unreachable, !dbg !10895
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs7Ga9Brpi21q_11polars_lazy4scan3csvNtB4_13LazyCsvReaderNtNtB6_16file_list_reader18LazyFileListReader12with_sources(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([464 x i8]) align 8 captures(none) dereferenceable(464) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(464) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10896 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256, !dbg !10897 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10898), !dbg !10897
  %i.b = load i64, ptr %i.a, align 8, !dbg !10901, !range !392, !alias.scope !10898, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 264, !dbg !10901 ; 5 uses
  switch i64 %i.b, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.e
  ], !dbg !10901

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10903), !dbg !10901
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10906), !dbg !10909
  %i.d = load ptr, ptr %i.c, align 8, !dbg !10911, !alias.scope !10915, !nonnull !14, !noundef !14
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !dbg !10916, !noalias !10915
  %i.f = icmp eq i64 %i.e, 1, !dbg !10919
  br i1 %i.f, label %bb.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECs7Ga9Brpi21q_11polars_lazy.exit, !dbg !10919

bb.c:                                             ; preds = %bb.b
  fence acquire, !dbg !10920
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE9drop_slowCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #21
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECs7Ga9Brpi21q_11polars_lazy.exit unwind label %bb.g, !dbg !10922

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECs7Ga9Brpi21q_11polars_lazy.exit unwind label %bb.g, !dbg !10923

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10926), !dbg !10901
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10929), !dbg !10932
  %i.g = load ptr, ptr %i.c, align 8, !dbg !10934, !alias.scope !10938, !nonnull !14, !noundef !14
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !dbg !10939, !noalias !10938
  %i.i = icmp eq i64 %i.h, 1, !dbg !10942
  br i1 %i.i, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECs7Ga9Brpi21q_11polars_lazy.exit, !dbg !10942

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !10943
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCsh8eZTKRCwoO_3std2fs4FileE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #21
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECs7Ga9Brpi21q_11polars_lazy.exit unwind label %bb.g, !dbg !10945

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !10897
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs7Ga9Brpi21q_11polars_lazy4scan3csv13LazyCsvReaderEBM_(ptr noalias noundef align 8 dereferenceable(464) %1) #20
          to label %bb.i unwind label %bb.h, !dbg !10946

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECs7Ga9Brpi21q_11polars_lazy.exit: ; preds = %bb.e, %bb.b, %bb.c, %bb.d, %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !10897
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(464) %1, i64 464, i1 false), !dbg !10947
  ret void, !dbg !10948

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #19, !dbg !10949
  unreachable, !dbg !10949

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.j, !dbg !10949
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @_RNvXs_NtNtCs7Ga9Brpi21q_11polars_lazy4scan3csvNtB4_13LazyCsvReaderNtNtB6_16file_list_reader18LazyFileListReader14finish_no_glob(ptr dead_on_unwind noalias nofree noundef readnone sret([384 x i8]) align 16 captures(none) dereferenceable(384) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(464) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !10950 {
bb.a:
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #18
          to label %bb.c unwind label %bb.b, !dbg !10951

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs7Ga9Brpi21q_11polars_lazy4scan3csv13LazyCsvReaderEBM_(ptr noalias noundef align 8 dereferenceable(464) %1) #20
          to label %bb.e unwind label %bb.d, !dbg !10952

bb.c:                                             ; preds = %bb.a
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #19, !dbg !10953
  unreachable, !dbg !10953

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !10953
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs7Ga9Brpi21q_11polars_lazy4scan3csvNtB4_13LazyCsvReaderNtNtB6_16file_list_reader18LazyFileListReader6finish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([384 x i8]) align 16 captures(none) dereferenceable(384) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(464) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10954 {
bb.a:
  %i.a = alloca [368 x i8], align 16              ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [376 x i8], align 8               ; 25 uses
  %i.d = alloca [256 x i8], align 8               ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [368 x i8], align 16              ; 7 uses
  %.sroa.6 = alloca [72 x i8], align 8            ; 5 uses
  %.sroa.0 = alloca [23 x i8], align 8            ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 248, !dbg !10955
  %i.h = load i8, ptr %i.g, align 8, !dbg !10955, !range !10883, !noundef !14
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !10958 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 119, !dbg !10958
  %i.k = load i8, ptr %i.j, align 1, !dbg !10958, !range !2039, !noundef !14 ; 2 uses
  %.not = icmp eq i8 %i.k, -38, !dbg !10958
  br i1 %.not, label %bb.c, label %bb.b, !dbg !10964

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10965
  %i.l = icmp eq i8 %i.k, -40, !dbg !10983
  br i1 %i.l, label %bb.d, label %bb.e, !dbg !10983

bb.c:                                             ; preds = %bb.a, %bb.f
  %.sroa.3.0 = phi i64 [ %.sroa.530.24.insert.ext, %bb.f ], [ undef, %bb.a ]
  %.sroa.2.0 = phi i8 [ %.sroa.434.0.copyload, %bb.f ], [ -38, %bb.a ], !dbg !10986
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10987
  %i.n = load i64, ptr %i.m, align 8, !dbg !10987, !range !10991, !noundef !14
  %i.o = trunc nuw i64 %i.n to i1, !dbg !10992
  br i1 %i.o, label %bb.g, label %bb.h, !dbg !10992

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %bb.f unwind label %bb.l, !dbg !10995

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !10996
  br label %bb.f, !dbg !10999

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(23) %i.b, i64 23, i1 false), !dbg !11000
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 23, !dbg !11000
  %.sroa.434.0.copyload = load i8, ptr %.sroa.434.0..sroa_idx, align 1, !dbg !11000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11001
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !10969
  %i.q = load i32, ptr %i.p, align 8, !dbg !10969, !noundef !14
  %.sroa.530.24.insert.ext = zext i32 %i.q to i64, !dbg !10969
  br label %bb.c, !dbg !11002

bb.g:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !10987
  %i.s = load i64, ptr %i.r, align 8, !dbg !10987
  br label %bb.h, !dbg !11003

bb.h:                                             ; preds = %bb.c, %bb.g
  %.sroa.38.sroa.2.0 = phi i64 [ %i.s, %bb.g ], [ undef, %bb.c ]
  %.sroa.06.0 = phi i64 [ 0, %bb.g ], [ 2, %bb.c ], !dbg !11004
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 458, !dbg !11005
  %i.u = load i8, ptr %i.t, align 2, !dbg !11005, !range !11007, !noundef !14 ; 2 uses
  %.not44 = icmp eq i8 %i.u, 2, !dbg !11008
  %. = select i1 %.not44, i8 0, i8 %i.u, !dbg !11011
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !11012
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !11012
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !11014
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 256, !dbg !11014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !dbg !11014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !11015
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.d, ptr noundef nonnull align 8 dereferenceable(256) %1, i64 256, i1 false), !dbg !11015
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11016
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !11017
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !11016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.x, ptr noundef nonnull align 8 dereferenceable(144) %i.w, i64 144, i1 false), !dbg !11017
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 457, !dbg !11018
  %i.z = load i8, ptr %i.y, align 1, !dbg !11018, !range !10883, !noundef !14
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 456, !dbg !11019
  %i.ab = load i8, ptr %i.aa, align 8, !dbg !11019, !range !10883, !noundef !14
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 432, !dbg !11020
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 264, !dbg !11016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !dbg !11020
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 288, !dbg !11016
  store ptr null, ptr %i.ae, align 8, !dbg !11016
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 208, !dbg !11016
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 352, !dbg !11016
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.af, i8 0, i64 18, i1 false), !dbg !11016
  store i8 %i.h, ptr %i.ag, align 8, !dbg !11016
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 353, !dbg !11016
  store i8 %i.z, ptr %i.ah, align 1, !dbg !11016
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 354, !dbg !11016
  store i8 %i.ab, ptr %i.ai, align 2, !dbg !11016
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 296, !dbg !11016
  store ptr null, ptr %i.aj, align 8, !dbg !11016
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 312, !dbg !11016
  store ptr null, ptr %i.ak, align 8, !dbg !11016
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 328, !dbg !11016
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 232, !dbg !11016
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false), !dbg !11016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.am, ptr noundef nonnull align 8 dereferenceable(23) %.sroa.0, i64 23, i1 false), !dbg !11016
  %.sroa.2.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.c, i64 255, !dbg !11016
  store i8 %.sroa.2.0, ptr %.sroa.2.0..sroa_idx1, align 1, !dbg !11016
  %.sroa.3.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.c, i64 256, !dbg !11016
  store i64 %.sroa.3.0, ptr %.sroa.3.0..sroa_idx3, align 8, !dbg !11016
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 168, !dbg !11016
  store i64 %.sroa.06.0, ptr %i.an, align 8, !dbg !11016
  %.sroa.38.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.c, i64 176, !dbg !11016
  store i64 0, ptr %.sroa.38.0..sroa_idx9, align 8, !dbg !11016
  %.sroa.38.sroa.2.0..sroa.38.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 184, !dbg !11016
  store i64 %.sroa.38.sroa.2.0, ptr %.sroa.38.sroa.2.0..sroa.38.0..sroa_idx9.sroa_idx, align 8, !dbg !11016
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 355, !dbg !11016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.ao, ptr noundef nonnull align 1 dereferenceable(13) @7, i64 13, i1 false), !dbg !11016
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 368, !dbg !11016
  store i8 %., ptr %i.ap, align 8, !dbg !11016
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 369, !dbg !11016
  store i8 0, ptr %i.aq, align 1, !dbg !11016
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 192, !dbg !11016
  store i64 2, ptr %i.ar, align 8, !dbg !11016
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 344, !dbg !11016
  store ptr null, ptr %i.as, align 8, !dbg !11016
  store i64 0, ptr %i.c, align 8, !dbg !11016
  call void @_RINvMs_NtNtCsfcROwRM8ZtH_11polars_plan3dsl11builder_dslNtB5_10DslBuilder8scan_csvNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7options14CsvReadOptionsECs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef nonnull sret([368 x i8]) align 16 captures(none) dereferenceable(368) %i.f, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(256) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(376) %i.c), !dbg !11012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11021
  %i.at = load i64, ptr %i.f, align 16, !dbg !11022, !range !11025, !noundef !14 ; 2 uses
  %i.au = icmp eq i64 %i.at, -9223372036854775778, !dbg !11022
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !11026
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(72) %i.av, i64 72, i1 false), !dbg !11026
  br i1 %i.au, label %bb.i, label %bb.j, !dbg !11027

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11028
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11029
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aw, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6, i64 72, i1 false), !dbg !11028
  store i64 -9223372036854775778, ptr %0, align 16, !dbg !11029
  br label %bb.k, !dbg !11037

bb.j:                                             ; preds = %bb.h
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 80, !dbg !11038
  %.sroa.8.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.a, i64 80, !dbg !11012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.8.0..sroa_idx18, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.640.0..sroa_idx, i64 288, i1 false), !dbg !11038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11028
  store i64 %i.at, ptr %i.a, align 16, !dbg !11012
  %.sroa.6.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.0..sroa_idx17, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6, i64 72, i1 false), !dbg !11012
  call void @_RNvXs0_NtCs7Ga9Brpi21q_11polars_lazy5frameNtB5_9LazyFrameINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE4from(ptr noalias noundef nonnull sret([384 x i8]) align 16 captures(none) dereferenceable(384) %0, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(368) %i.a), !dbg !11039
  br label %bb.k, !dbg !11037

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !11042
  ret void, !dbg !11043

bb.l:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 256, !dbg !11037
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef align 8 dereferenceable(32) %i.ax) #20
          to label %bb.n unwind label %bb.m, !dbg !11037

bb.m:                                             ; preds = %bb.o, %.critedge, %bb.n, %bb.l
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #19, !dbg !11044
  unreachable, !dbg !11044

bb.n:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7options14CsvReadOptionsECs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef align 8 dereferenceable(256) %1) #20
          to label %.critedge unwind label %bb.m, !dbg !11037

.critedge:                                        ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !11037
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCslpwjCj2YNBy_9polars_io5cloud7options12CloudOptionsEECs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef align 8 dereferenceable(144) %i.az) #20
          to label %.critedge45 unwind label %bb.m, !dbg !11037

.critedge46:                                      ; preds = %.critedge45, %bb.o
  resume { ptr, i32 } %lpad.thr_comm.split-lp, !dbg !11044

.critedge45:                                      ; preds = %.critedge
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 455, !dbg !11045
  %i.bb = load i8, ptr %i.ba, align 1, !dbg !11045, !range !2039, !alias.scope !11047, !noundef !14
  %cond.i = icmp eq i8 %i.bb, -40, !dbg !11045
  br i1 %cond.i, label %bb.o, label %.critedge46, !dbg !11045, !prof !2043

bb.o:                                             ; preds = %.critedge45
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 432, !dbg !11037
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %.critedge46 unwind label %bb.m, !dbg !11050
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs7Ga9Brpi21q_11polars_lazy4scan6ndjsonNtB4_18LazyJsonLineReaderNtNtB6_16file_list_reader18LazyFileListReader12with_sources(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([288 x i8]) align 8 captures(none) dereferenceable(288) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(288) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11055 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11057 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11058), !dbg !11057
  %i.b = load i64, ptr %i.a, align 8, !dbg !11061, !range !392, !alias.scope !11058, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !11061 ; 5 uses
  switch i64 %i.b, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.e
  ], !dbg !11061

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11063), !dbg !11061
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11066), !dbg !11069
  %i.d = load ptr, ptr %i.c, align 8, !dbg !11071, !alias.scope !11075, !nonnull !14, !noundef !14
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !dbg !11076, !noalias !11075
  %i.f = icmp eq i64 %i.e, 1, !dbg !11079
  br i1 %i.f, label %bb.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECs7Ga9Brpi21q_11polars_lazy.exit, !dbg !11079

bb.c:                                             ; preds = %bb.b
  fence acquire, !dbg !11080
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE9drop_slowCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #21
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECs7Ga9Brpi21q_11polars_lazy.exit unwind label %bb.g, !dbg !11082

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECs7Ga9Brpi21q_11polars_lazy.exit unwind label %bb.g, !dbg !11083

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11086), !dbg !11061
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11089), !dbg !11092
  %i.g = load ptr, ptr %i.c, align 8, !dbg !11094, !alias.scope !11098, !nonnull !14, !noundef !14
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !dbg !11099, !noalias !11098
  %i.i = icmp eq i64 %i.h, 1, !dbg !11102
  br i1 %i.i, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECs7Ga9Brpi21q_11polars_lazy.exit, !dbg !11102

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !11103
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCsh8eZTKRCwoO_3std2fs4FileE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #21
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECs7Ga9Brpi21q_11polars_lazy.exit unwind label %bb.g, !dbg !11105

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !11057
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs7Ga9Brpi21q_11polars_lazy4scan6ndjson18LazyJsonLineReaderEBM_(ptr noalias noundef align 8 dereferenceable(288) %1) #20
          to label %bb.i unwind label %bb.h, !dbg !11106

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECs7Ga9Brpi21q_11polars_lazy.exit: ; preds = %bb.e, %bb.b, %bb.c, %bb.d, %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !11057
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(288) %1, i64 288, i1 false), !dbg !11107
  ret void, !dbg !11108

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #19, !dbg !11109
  unreachable, !dbg !11109

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.j, !dbg !11109
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @_RNvXs_NtNtCs7Ga9Brpi21q_11polars_lazy4scan6ndjsonNtB4_18LazyJsonLineReaderNtNtB6_16file_list_reader18LazyFileListReader14finish_no_glob(ptr dead_on_unwind noalias nofree noundef readnone sret([384 x i8]) align 16 captures(none) dereferenceable(384) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(288) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !11110 {
bb.a:
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #18
          to label %bb.c unwind label %bb.b, !dbg !11111

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs7Ga9Brpi21q_11polars_lazy4scan6ndjson18LazyJsonLineReaderEBM_(ptr noalias noundef align 8 dereferenceable(288) %1) #20
          to label %bb.e unwind label %bb.d, !dbg !11112

bb.c:                                             ; preds = %bb.a
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #19, !dbg !11113
  unreachable, !dbg !11113

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !11113
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs7Ga9Brpi21q_11polars_lazy4scan6ndjsonNtB4_18LazyJsonLineReaderNtNtB6_16file_list_reader18LazyFileListReader6finish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([384 x i8]) align 16 captures(none) dereferenceable(384) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(288) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11114 {
bb.a:
  %i.a = alloca [384 x i8], align 16              ; 4 uses
  %i.b = alloca [376 x i8], align 8               ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [368 x i8], align 16              ; 8 uses
  %i.e = alloca [72 x i8], align 8                ; 11 uses
  %i.f = alloca [376 x i8], align 8               ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !11115
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !11116
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !11117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.h, ptr noundef nonnull align 8 dereferenceable(144) %i.g, i64 144, i1 false), !dbg !11116
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 281, !dbg !11118
  %i.j = load i8, ptr %i.i, align 1, !dbg !11118, !range !10883, !noundef !14
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !11119
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 232, !dbg !11117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !dbg !11119
  %i.m = load i64, ptr %1, align 8, !dbg !11120, !range !10991, !noundef !14
  %i.n = trunc nuw i64 %i.m to i1, !dbg !11121    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11121
  %i.p = load i64, ptr %i.o, align 8, !dbg !11121
  %.sroa.53.sroa.4.0 = select i1 %i.n, i64 %i.p, i64 undef, !dbg !11121
  %.sroa.01.0 = select i1 %i.n, i64 0, i64 2, !dbg !11121
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 224, !dbg !11124
end_hunk_0
