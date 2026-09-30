Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/criterion-524b2807e12f564b.criterion.5ad8dacf280593c5-cgu.10?download=true
inline.NumInlined: 666
inline.NumDeleted: 458
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvMNtCs7NzLGBMhIGf_9criterion4plotNtB2_11PlotContext11violin_path:bb.a

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 dereferenceable(24) %i.a) #20
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RINvMsr_NtCs2AWtUsOyxgP_3std4pathNtB6_7PathBuf4pushReECs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 6)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvMsr_NtCs2AWtUsOyxgP_3std4pathNtB6_7PathBuf4pushReECs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 10)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs7NzLGBMhIGf_9criterion4plotNtB2_11PlotContext20line_comparison_path(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !9, !noundef !6
  call void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !9, !noundef !6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.i = load i64, ptr %i.h, align 8, !noundef !6
  invoke void @_RINvMsr_NtCs2AWtUsOyxgP_3std4pathNtB6_7PathBuf4pushReECs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 dereferenceable(24) %i.a) #20
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RINvMsr_NtCs2AWtUsOyxgP_3std4pathNtB6_7PathBuf4pushReECs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 6)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvMsr_NtCs2AWtUsOyxgP_3std4pathNtB6_7PathBuf4pushReECs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 9)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs7NzLGBMhIGf_9criterion4plotNtB2_11PlotContext31line_throughput_comparison_path(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !9, !noundef !6
  call void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !9, !noundef !6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.i = load i64, ptr %i.h, align 8, !noundef !6
  invoke void @_RINvMsr_NtCs2AWtUsOyxgP_3std4pathNtB6_7PathBuf4pushReECs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 dereferenceable(24) %i.a) #20
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RINvMsr_NtCs2AWtUsOyxgP_3std4pathNtB6_7PathBuf4pushReECs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 6)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvMsr_NtCs2AWtUsOyxgP_3std4pathNtB6_7PathBuf4pushReECs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 20)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2AWtUsOyxgP_3std7process5ChildE8as_sliceCs7NzLGBMhIGf_9criterion(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.d = ptrtoint ptr %.val3 to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 28
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterdE32forget_allocation_drop_remainingCs7NzLGBMhIGf_9criterion(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define noundef align 8 ptr @_RNvMs1_NtCsjuSkmafxH5F_9itertools11groupbylazyINtB5_10GroupInnerRINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEINtNtNtB16_5slice4iter4IterRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtNtB1H_3vec3VecdEEENCNvNtNtNtB2N_4plot15gnuplot_backend7summary15line_comparisons3_0E13lookup_bufferB2N_(ptr noalias noundef align 8 dereferenceable(96) %0, i64 noundef %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 4 uses
  %i.e = sub i64 %1, %i.d                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !6 ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  br i1 %i.h, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !6 ; 5 uses
  %i.l = icmp ult i64 %i.e, %i.k
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.e ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !576, !nonnull !6, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !576, !nonnull !6, !noundef !6 ; 3 uses
  %i.s = icmp eq ptr %i.r, %i.p
  br i1 %i.s, label %bb.d, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterRRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtB7_3VecdEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB13_.exit

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterRRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtB7_3VecdEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB13_.exit: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.t, ptr %i.q, align 8, !alias.scope !576
  %i.u = load ptr, ptr %i.r, align 8, !noalias !576, !nonnull !6, !align !9, !noundef !6
  br label %bb.h

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.v = icmp eq i64 %1, %i.g
  br i1 %i.v, label %.preheader.preheader, label %bb.h

.preheader.preheader:                             ; preds = %bb.d
  %2 = load ptr, ptr %i.i, align 8, !nonnull !6
  %storemerge24 = add i64 %1, 1                   ; 4 uses
  store i64 %storemerge24, ptr %i.f, align 8
  %i.w = sub i64 %storemerge24, %i.d              ; 3 uses
  %i.x = icmp ult i64 %i.w, %i.k
  br i1 %i.x, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtBO_3VecdEEEE6map_orbNCNvMs1_NtCsjuSkmafxH5F_9itertools11groupbylazyINtB2R_10GroupInnerRIBw_NtNtBQ_6string6StringEINtNtNtB5_5slice4iter4IterB1x_ENCNvNtNtNtB1E_4plot15gnuplot_backend7summary15line_comparisons3_0E13lookup_buffers_0EB1E_.exit, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtBO_3VecdEEEE6map_orbNCNvMs1_NtCsjuSkmafxH5F_9itertools11groupbylazyINtB2R_10GroupInnerRIBw_NtNtBQ_6string6StringEINtNtNtB5_5slice4iter4IterB1x_ENCNvNtNtNtB1E_4plot15gnuplot_backend7summary15line_comparisons3_0E13lookup_buffers_0EB1E_.exit.thread

.preheader:                                       ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtBO_3VecdEEEE6map_orbNCNvMs1_NtCsjuSkmafxH5F_9itertools11groupbylazyINtB2R_10GroupInnerRIBw_NtNtBQ_6string6StringEINtNtNtB5_5slice4iter4IterB1x_ENCNvNtNtNtB1E_4plot15gnuplot_backend7summary15line_comparisons3_0E13lookup_buffers_0EB1E_.exit
  %storemerge = add i64 %storemerge25, 1          ; 4 uses
  store i64 %storemerge, ptr %i.f, align 8
  %i.y = sub i64 %storemerge, %i.d                ; 3 uses
  %i.z = icmp ult i64 %i.y, %i.k
  br i1 %i.z, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtBO_3VecdEEEE6map_orbNCNvMs1_NtCsjuSkmafxH5F_9itertools11groupbylazyINtB2R_10GroupInnerRIBw_NtNtBQ_6string6StringEINtNtNtB5_5slice4iter4IterB1x_ENCNvNtNtNtB1E_4plot15gnuplot_backend7summary15line_comparisons3_0E13lookup_buffers_0EB1E_.exit, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtBO_3VecdEEEE6map_orbNCNvMs1_NtCsjuSkmafxH5F_9itertools11groupbylazyINtB2R_10GroupInnerRIBw_NtNtBQ_6string6StringEINtNtNtB5_5slice4iter4IterB1x_ENCNvNtNtNtB1E_4plot15gnuplot_backend7summary15line_comparisons3_0E13lookup_buffers_0EB1E_.exit.thread

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtBO_3VecdEEEE6map_orbNCNvMs1_NtCsjuSkmafxH5F_9itertools11groupbylazyINtB2R_10GroupInnerRIBw_NtNtBQ_6string6StringEINtNtNtB5_5slice4iter4IterB1x_ENCNvNtNtNtB1E_4plot15gnuplot_backend7summary15line_comparisons3_0E13lookup_buffers_0EB1E_.exit: ; preds = %.preheader.preheader, %.preheader
  %i.aa = phi i64 [ %i.y, %.preheader ], [ %i.w, %.preheader.preheader ] ; 2 uses
  %storemerge25 = phi i64 [ %storemerge, %.preheader ], [ %storemerge24, %.preheader.preheader ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %.val.i = load ptr, ptr %i.ac, align 8, !alias.scope !577, !nonnull !6, !noundef !6
  %i.ad = getelementptr i8, ptr %i.ab, i64 24
  %.val5.i = load ptr, ptr %i.ad, align 8, !alias.scope !577, !nonnull !6, !noundef !6
  %i.ae = icmp eq ptr %.val5.i, %.val.i
  br i1 %i.ae, label %.preheader, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtBO_3VecdEEEE6map_orbNCNvMs1_NtCsjuSkmafxH5F_9itertools11groupbylazyINtB2R_10GroupInnerRIBw_NtNtBQ_6string6StringEINtNtNtB5_5slice4iter4IterB1x_ENCNvNtNtNtB1E_4plot15gnuplot_backend7summary15line_comparisons3_0E13lookup_buffers_0EB1E_.exit.thread

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtBO_3VecdEEEE6map_orbNCNvMs1_NtCsjuSkmafxH5F_9itertools11groupbylazyINtB2R_10GroupInnerRIBw_NtNtBQ_6string6StringEINtNtNtB5_5slice4iter4IterB1x_ENCNvNtNtNtB1E_4plot15gnuplot_backend7summary15line_comparisons3_0E13lookup_buffers_0EB1E_.exit.thread: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtBO_3VecdEEEE6map_orbNCNvMs1_NtCsjuSkmafxH5F_9itertools11groupbylazyINtB2R_10GroupInnerRIBw_NtNtBQ_6string6StringEINtNtNtB5_5slice4iter4IterB1x_ENCNvNtNtNtB1E_4plot15gnuplot_backend7summary15line_comparisons3_0E13lookup_buffers_0EB1E_.exit, %.preheader, %.preheader.preheader
  %storemerge.lcssa = phi i64 [ %storemerge24, %.preheader.preheader ], [ %storemerge25, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtBO_3VecdEEEE6map_orbNCNvMs1_NtCsjuSkmafxH5F_9itertools11groupbylazyINtB2R_10GroupInnerRIBw_NtNtBQ_6string6StringEINtNtNtB5_5slice4iter4IterB1x_ENCNvNtNtNtB1E_4plot15gnuplot_backend7summary15line_comparisons3_0E13lookup_buffers_0EB1E_.exit ], [ %storemerge, %.preheader ]
  %.lcssa = phi i64 [ %i.w, %.preheader.preheader ], [ %i.aa, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtBO_3VecdEEEE6map_orbNCNvMs1_NtCsjuSkmafxH5F_9itertools11groupbylazyINtB2R_10GroupInnerRIBw_NtNtBQ_6string6StringEINtNtNtB5_5slice4iter4IterB1x_ENCNvNtNtNtB1E_4plot15gnuplot_backend7summary15line_comparisons3_0E13lookup_buffers_0EB1E_.exit ], [ %i.y, %.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.lcssa, ptr %i.b, align 8
  %.not10 = icmp eq i64 %storemerge.lcssa, %i.d
  br i1 %.not10, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.f, %bb.g, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtBO_3VecdEEEE6map_orbNCNvMs1_NtCsjuSkmafxH5F_9itertools11groupbylazyINtB2R_10GroupInnerRIBw_NtNtBQ_6string6StringEINtNtNtB5_5slice4iter4IterB1x_ENCNvNtNtNtB1E_4plot15gnuplot_backend7summary15line_comparisons3_0E13lookup_buffers_0EB1E_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.f:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtBO_3VecdEEEE6map_orbNCNvMs1_NtCsjuSkmafxH5F_9itertools11groupbylazyINtB2R_10GroupInnerRIBw_NtNtBQ_6string6StringEINtNtNtB5_5slice4iter4IterB1x_ENCNvNtNtNtB1E_4plot15gnuplot_backend7summary15line_comparisons3_0E13lookup_buffers_0EB1E_.exit.thread
  %i.af = icmp ult i64 %i.k, 288230376151711744
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = lshr i64 %i.k, 1
  %.not11 = icmp ult i64 %.lcssa, %i.ag
  br i1 %.not11, label %bb.e, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  call void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB5_9into_iter8IntoIterRRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdIBv_dEEEE6retainNCNvMs1_NtCsjuSkmafxH5F_9itertools11groupbylazyINtB2j_10GroupInnerRINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_6string6StringEINtNtNtB3l_5slice4iter4IterB16_ENCNvNtNtNtB1d_4plot15gnuplot_backend7summary15line_comparisons3_0E13lookup_buffers0_0EB1d_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %i.ah = load i64, ptr %i.f, align 8, !noundef !6
  store i64 %i.ah, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.h:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterRRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtB7_3VecdEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB13_.exit, %bb.e, %bb.d, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.e ], [ %i.u, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterRRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtB7_3VecdEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB13_.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: noinline nonlazybind uwtable
define noundef align 8 ptr @_RNvMs1_NtCsjuSkmafxH5F_9itertools11groupbylazyINtB5_10GroupInnerRINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEINtNtNtB16_5slice4iter4IterRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtNtB1H_3vec3VecdEEENCNvNtNtNtB2N_4plot15gnuplot_backend7summary15line_comparisons3_0E14step_bufferingB2N_(ptr noalias noundef align 8 dereferenceable(96) %0, i64 %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !align !9, !noundef !6 ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i64, ptr %i.i, align 8, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load i64, ptr %i.k, align 8, !noundef !6
  %.not20 = icmp eq i64 %i.j, %i.l
  br i1 %.not20, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdIBv_dEEE8push_mutBM_.exit, %bb.b, %bb.a
  %i.m = phi i64 [ 1, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdIBv_dEEE8push_mutBM_.exit ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.n, align 8, !alias.scope !605, !nonnull !6, !noundef !6 ; 2 uses
  %i.q = load ptr, ptr %i.o, align 8, !alias.scope !605, !nonnull !6, !noundef !6 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  %.phi.trans.insert70 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  br i1 %i.r, label %..thread46_crit_edge, label %.lr.ph

..thread46_crit_edge:                             ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre69 = load i64, ptr %.phi.trans.insert, align 8
  %.pre71 = load i64, ptr %.phi.trans.insert70, align 8
  br label %.thread46

.lr.ph:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %.pre = load ptr, ptr %i.s, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtNtB7_3vec3VecdEEE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdIBv_dEEE8push_mutBM_.exit unwind label %bb.e

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdIBv_dEEE8push_mutBM_.exit: ; preds = %bb.d
  %i.u = load ptr, ptr %i.e, align 8, !alias.scope !606, !noalias !607, !nonnull !6, !noundef !6
  store ptr %i.h, ptr %i.u, align 8, !noalias !607
  store i64 1, ptr %i.f, align 8, !alias.scope !606, !noalias !607
  br label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.thread44:                                        ; preds = %.split, %bb.h, %bb.j
  store ptr %i.ai, ptr %i.s, align 8
  %i.w = load i64, ptr %i.t, align 8, !noundef !6 ; 3 uses
  %i.x = load i64, ptr %.phi.trans.insert70, align 8, !noundef !6
  %.not25 = icmp eq i64 %i.w, %i.x
  br i1 %.not25, label %bb.ac, label %bb.p

.thread46:                                        ; preds = %bb.m, %..thread46_crit_edge
  %i.y = phi i64 [ %.pre71, %..thread46_crit_edge ], [ %i.at, %bb.m ]
  %i.z = phi i64 [ %.pre69, %..thread46_crit_edge ], [ %i.as, %bb.m ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.not2548 = icmp eq i64 %i.z, %i.y
  br i1 %.not2548, label %.thread52, label %bb.p

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.ac = phi i64 [ %i.m, %.lr.ph ], [ %i.ax, %bb.m ] ; 4 uses
  %i.ad = phi ptr [ %.pre, %.lr.ph ], [ %i.ai, %bb.m ] ; 4 uses
  %i.ae = phi ptr [ %i.p, %.lr.ph ], [ %i.af, %bb.m ] ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  store ptr %i.af, ptr %i.n, align 8, !alias.scope !605
  %i.ag = load ptr, ptr %i.ae, align 8, !nonnull !6, !align !9, !noundef !6
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !6, !align !9, !noundef !6 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 120 ; 4 uses
  store ptr null, ptr %i.s, align 8
  %.not23 = icmp eq ptr %i.ad, null
  br i1 %.not23, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  call void @llvm.experimental.noalias.scope.decl(metadata !609)
  call void @llvm.experimental.noalias.scope.decl(metadata !610)
  call void @llvm.experimental.noalias.scope.decl(metadata !611)
  %i.aj = load i64, ptr %i.ad, align 8, !range !8, !alias.scope !612, !noalias !613, !noundef !6 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.aj, -1
  %i.ak = load i64, ptr %i.ai, align 8, !range !8, !alias.scope !613, !noalias !612, !noundef !6 ; 2 uses
  %i.al = icmp eq i64 %i.ak, -1
  %brmerge.i.i.i = or i1 %.not.i.i.i, %i.al
  br i1 %brmerge.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.val2.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !612, !noalias !613, !noundef !6 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 136
  %.val4.i.i.i = load i64, ptr %i.an, align 8, !alias.scope !613, !noalias !612, !noundef !6
  %i.ao = icmp eq i64 %.val2.i.i.i, %.val4.i.i.i
  br i1 %i.ao, label %.split, label %.thread44

.split:                                           ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  %.val3.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !613, !noalias !612, !nonnull !6, !noundef !6
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.val.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !612, !noalias !613, !nonnull !6, !noundef !6
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.val3.i.i.i, i64 %.val2.i.i.i), !noalias !614
  %i.ar = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ar, label %bb.i, label %.thread44

bb.i:                                             ; preds = %.split, %bb.j, %bb.f
  store ptr %i.ai, ptr %i.s, align 8
  %i.as = load i64, ptr %i.t, align 8, !noundef !6 ; 2 uses
  %i.at = load i64, ptr %.phi.trans.insert70, align 8, !noundef !6 ; 2 uses
  %.not24 = icmp eq i64 %i.as, %i.at
  br i1 %.not24, label %bb.m, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.au = and i64 %i.ak, %i.aj
  %.mux.i.i.i = icmp eq i64 %i.au, -1
  br i1 %.mux.i.i.i, label %bb.i, label %.thread44

bb.k:                                             ; preds = %bb.i
  %i.av = load i64, ptr %i.d, align 8, !range !10, !alias.scope !615, !noalias !616, !noundef !6
  %i.aw = icmp eq i64 %i.ac, %i.av
  br i1 %i.aw, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtNtB7_3vec3VecdEEE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.i, %bb.o
  %i.ax = phi i64 [ %i.ac, %bb.i ], [ %i.bc, %bb.o ]
  %i.ay = icmp eq ptr %i.af, %i.q
  br i1 %i.ay, label %.thread46, label %bb.f

bb.n:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.o:                                             ; preds = %bb.k, %bb.l
  %i.ba = load ptr, ptr %i.e, align 8, !alias.scope !615, !noalias !616, !nonnull !6, !noundef !6
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ac
  store ptr %i.ae, ptr %i.bb, align 8, !noalias !616
  %i.bc = add i64 %i.ac, 1                        ; 2 uses
  store i64 %i.bc, ptr %i.f, align 8, !alias.scope !615, !noalias !616
end_hunk_0
