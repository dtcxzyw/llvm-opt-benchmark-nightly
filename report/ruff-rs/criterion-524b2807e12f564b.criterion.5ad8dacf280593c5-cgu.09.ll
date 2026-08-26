Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/criterion-524b2807e12f564b.criterion.5ad8dacf280593c5-cgu.09?download=true
inline.NumInlined: 648
inline.NumDeleted: 354
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCs7NzLGBMhIGf_9criterion2fs24list_existing_benchmarksRNtNtCs2AWtUsOyxgP_3std4path7PathBufEB4_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 %.sroa.07.0.copyload.i, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.623.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1382)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20)
  %i.cr = load ptr, ptr %.sroa.819.0..sroa_idx20, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.cs = load i64, ptr %i.y, align 8, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !124
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.66.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !124
  invoke void @_RINvNtCs2AWtUsOyxgP_3std2fs14read_to_stringRNtNtB4_4path4PathECs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef %i.cs)
          to label %.noexc57 unwind label %.loopexit139

.noexc57:                                         ; preds = %bb.ai
  %i.ct = load i64, ptr %i.f, align 8, !range !18, !noalias !124, !noundef !4
  %i.cu = icmp eq i64 %i.ct, -1
  br i1 %i.cu, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %.noexc57
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !124, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !128
  store ptr %i.cw, ptr %i.c, align 8, !noalias !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !128
  invoke void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path11to_path_buf(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef %i.cs)
          to label %_RNCINvNtCs7NzLGBMhIGf_9criterion2fs4loadNtNtB6_6report11BenchmarkIdNtNtCs2AWtUsOyxgP_3std4path4PathE0B6_.exit.i unwind label %bb.ak, !noalias !132

bb.ak:                                            ; preds = %bb.aj
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #19
          to label %.body58 unwind label %bb.al, !noalias !132

bb.al:                                            ; preds = %bb.ak
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !132
  unreachable

_RNCINvNtCs7NzLGBMhIGf_9criterion2fs4loadNtNtB6_6report11BenchmarkIdNtNtCs2AWtUsOyxgP_3std4path4PathE0B6_.exit.i: ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.66.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.66.i, i64 24, i1 false), !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1382, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !noalias !133
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %bb.bb

bb.am:                                            ; preds = %.noexc57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.66.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.66.i, i64 24, i1 false), !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.613.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.619.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !124
  %i.cz = load ptr, ptr %i.z, align 8, !noalias !124, !nonnull !4, !noundef !4
  %i.da = load i64, ptr %i.aa, align 8, !noalias !124, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !124
  store ptr %i.cz, ptr %i.d, align 8, !noalias !124
  store i64 %i.da, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !124
  store i64 0, ptr %.sroa.535.0..sroa_idx.i, align 8, !noalias !124
  invoke void @_RINvNtCscvBHLZPbXnS_10serde_json2de10from_traitNtNtB4_4read7StrReadNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdEB17_(ptr noalias noundef nonnull sret([168 x i8]) align 8 captures(address) dereferenceable(168) %i.e, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d)
          to label %bb.ao unwind label %bb.an, !noalias !134

bb.an:                                            ; preds = %bb.am
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.aq, %bb.an
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.db, %bb.an ], [ %i.df, %bb.aq ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 dereferenceable(24) %i.g) #19
          to label %.body58 unwind label %bb.ay, !noalias !134

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !124
  %i.dc = load i64, ptr %i.e, align 8, !range !135, !noalias !124, !noundef !4 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, -2
  br i1 %i.dd, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.de = load ptr, ptr %.sroa.437.0..sroa_idx.i, align 8, !noalias !124, !nonnull !4, !align !76, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !136
  invoke void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path11to_path_buf(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef %i.cs)
          to label %bb.av unwind label %bb.aq, !noalias !141

bb.aq:                                            ; preds = %bb.ap
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscvBHLZPbXnS_10serde_json5error5ErrorECs7NzLGBMhIGf_9criterion(ptr nonnull align 8 %i.de) #19
          to label %.body.i unwind label %bb.ar, !noalias !142

bb.ar:                                            ; preds = %bb.aq
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !141
  unreachable

bb.as:                                            ; preds = %bb.ao
  %.sroa.437.sroa.0.0.copyload.i = load i64, ptr %.sroa.437.0..sroa_idx.i, align 8, !noalias !124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.619.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.437.sroa.4.0..sroa.437.0..sroa_idx.sroa_idx.i, i64 24, i1 false), !noalias !124
  %.sroa.437.sroa.5.0.copyload.i = load ptr, ptr %.sroa.437.sroa.5.0..sroa.437.0..sroa_idx.sroa_idx.i, align 8, !noalias !124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.437.sroa.6.0..sroa.437.0..sroa_idx.sroa_idx.i, i64 16, i1 false), !noalias !133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.20, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.538.0..sroa_idx.i, i64 104, i1 false), !noalias !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.613.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.619.sroa.7.i, i64 24, i1 false), !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.619.sroa.7.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1382, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.613.sroa.7.i, i64 24, i1 false), !noalias !133
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613.sroa.7.i)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit.i unwind label %bb.at, !noalias !134

bb.at:                                            ; preds = %bb.as
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body58 unwind label %bb.au, !noalias !134

bb.au:                                            ; preds = %bb.at
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !134
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit.i: ; preds = %bb.as
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.be unwind label %.loopexit139

bb.av:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.619.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.613.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.619.sroa.7.i, i64 24, i1 false), !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.619.sroa.7.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1382, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.613.sroa.7.i, i64 24, i1 false), !noalias !133
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613.sroa.7.i)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit46.i unwind label %bb.aw, !noalias !134

bb.aw:                                            ; preds = %bb.av
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body58 unwind label %bb.ax, !noalias !134

bb.ax:                                            ; preds = %bb.aw
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !134
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit46.i: ; preds = %bb.av
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.bb unwind label %.loopexit.split-lp140

bb.ay:                                            ; preds = %.body.i
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !134
  unreachable

.loopexit134:                                     ; preds = %.noexc, %.noexc53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBG_10filter_map9FilterMapNtCsesAwPL3NJIw_7walkdir8IntoIterNvMNtB4_6resultINtB2j_6ResultNtNtB1L_4dent8DirEntryNtNtB1L_5error5ErrorE2okENvNvNtCs7NzLGBMhIGf_9criterion2fs24list_existing_benchmarks12is_benchmarkEEB3A_(ptr noalias noundef align 8 dereferenceable(176) %i.n)
          to label %bb.az unwind label %bb.c

bb.az:                                            ; preds = %.loopexit134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdEEB1b_.exit, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

.loopexit139:                                     ; preds = %bb.ai, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit.i
  %lpad.loopexit141 = landingpad { ptr, i32 }
          cleanup
  br label %.body58

.loopexit.split-lp140:                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit46.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body58

.body58:                                          ; preds = %.loopexit139, %.loopexit.split-lp140, %bb.bg, %bb.ak, %.body.i, %bb.at, %bb.aw
  %eh.lpad-body59 = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.dj, %bb.aw ], [ %i.cx, %bb.ak ], [ %i.dh, %bb.at ], [ %i.ds, %bb.bg ], [ %lpad.loopexit141, %.loopexit139 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp140 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsesAwPL3NJIw_7walkdir4dent8DirEntryECs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 dereferenceable(48) %i.m) #19
          to label %.body48 unwind label %bb.bo

bb.bb:                                            ; preds = %_RNCINvNtCs7NzLGBMhIGf_9criterion2fs4loadNtNtB6_6report11BenchmarkIdNtNtCs2AWtUsOyxgP_3std4path4PathE0B6_.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit46.i
  %.sroa.16.0.ph = phi ptr [ %i.de, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit46.i ], [ %i.cw, %_RNCINvNtCs7NzLGBMhIGf_9criterion2fs4loadNtNtB6_6report11BenchmarkIdNtNtCs2AWtUsOyxgP_3std4path4PathE0B6_.exit.i ]
  %.sroa.880.0.ph = phi i64 [ -9223372036854775806, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit46.i ], [ -9223372036854775808, %_RNCINvNtCs7NzLGBMhIGf_9criterion2fs4loadNtNtB6_6report11BenchmarkIdNtNtCs2AWtUsOyxgP_3std4path4PathE0B6_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.623.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1382, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1382)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4113.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.623.sroa.7, i64 24, i1 false)
  store i64 %.sroa.880.0.ph, ptr %0, align 8
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.16.0.ph, ptr %.sroa.5114.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.623.sroa.7)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs7NzLGBMhIGf_9criterion.exit.i unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %.body48 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs7NzLGBMhIGf_9criterion.exit.i: ; preds = %bb.bb
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsesAwPL3NJIw_7walkdir4dent8DirEntryECs7NzLGBMhIGf_9criterion.exit unwind label %.loopexit.split-lp.loopexit.split-lp

bb.be:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.623.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1382, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.623.sroa.9.0..sroa.623.0..sroa_idx24.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.825.0..sroa_idx26, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.20, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1382)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  store i64 %i.dc, ptr %i.l, align 8
  store i64 %.sroa.437.sroa.0.0.copyload.i, ptr %.sroa.623.0..sroa_idx24, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.623.sroa.7.0..sroa.623.0..sroa_idx24.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.623.sroa.7, i64 24, i1 false)
  store ptr %.sroa.437.sroa.5.0.copyload.i, ptr %.sroa.623.sroa.8.0..sroa.623.0..sroa_idx24.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.623.sroa.7)
  %i.dp = load i64, ptr %i.q, align 8, !alias.scope !143, !noalias !146, !noundef !4 ; 3 uses
  %i.dq = load i64, ptr %i.o, align 8, !range !43, !alias.scope !143, !noalias !146, !noundef !4
  %i.dr = icmp eq i64 %i.dp, %i.dq
  br i1 %i.dr, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.bi unwind label %bb.bg, !noalias !146

bb.bg:                                            ; preds = %bb.bf
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdEBF_(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.l) #19
          to label %.body58 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.bi:                                            ; preds = %bb.bf, %bb.be
  %i.du = load ptr, ptr %i.p, align 8, !alias.scope !143, !noalias !146, !nonnull !4, !noundef !4
  %i.dv = getelementptr inbounds nuw [168 x i8], ptr %i.du, i64 %i.dp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.dv, ptr noundef nonnull align 8 dereferenceable(168) %i.l, i64 168, i1 false)
  %i.dw = add i64 %i.dp, 1
  store i64 %i.dw, ptr %i.q, align 8, !alias.scope !143, !noalias !146
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs7NzLGBMhIGf_9criterion.exit.i68 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %.body48 unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs7NzLGBMhIGf_9criterion.exit.i68: ; preds = %bb.bi
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsesAwPL3NJIw_7walkdir4dent8DirEntryECs7NzLGBMhIGf_9criterion.exit72 unwind label %.loopexit.split-lp.loopexit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsesAwPL3NJIw_7walkdir4dent8DirEntryECs7NzLGBMhIGf_9criterion.exit72: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs7NzLGBMhIGf_9criterion.exit.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsesAwPL3NJIw_7walkdir4dent8DirEntryECs7NzLGBMhIGf_9criterion.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs7NzLGBMhIGf_9criterion.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBG_10filter_map9FilterMapNtCsesAwPL3NJIw_7walkdir8IntoIterNvMNtB4_6resultINtB2j_6ResultNtNtB1L_4dent8DirEntryNtNtB1L_5error5ErrorE2okENvNvNtCs7NzLGBMhIGf_9criterion2fs24list_existing_benchmarks12is_benchmarkEEB3A_(ptr noalias noundef align 8 dereferenceable(176) %i.n)
          to label %bb.bl unwind label %bb.c

bb.bl:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsesAwPL3NJIw_7walkdir4dent8DirEntryECs7NzLGBMhIGf_9criterion.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdEEB1b_.exit unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume:                                    ; preds = %.body, %bb.bm
  %common.resume.op = phi { ptr, i32 } [ %i.dz, %bb.bm ], [ %.pn45, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdEEB1b_.exit: ; preds = %bb.bl
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
  br label %bb.ba

bb.bo:                                            ; preds = %.body58, %.body48, %.body
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs7NzLGBMhIGf_9criterion2fs4loadNtB4_11SavedSampleNtNtCs2AWtUsOyxgP_3std4path7PathBufEB4_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [56 x i8], align 8                ; 8 uses
  %.sroa.514.sroa.7 = alloca [24 x i8], align 8   ; 7 uses
  %.sroa.512.sroa.7 = alloca [24 x i8], align 8   ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.66 = alloca [24 x i8], align 8           ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val30 = load i64, ptr %i.i, align 8, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.66)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RINvNtCs2AWtUsOyxgP_3std2fs14read_to_stringRNtNtB4_4path4PathECs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val30)
  %i.j = load i64, ptr %i.f, align 8, !range !18, !noundef !4
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !148
  store ptr %i.m, ptr %i.c, align 8, !noalias !148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !148
  invoke void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path11to_path_buf(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val30)
          to label %_RNCINvNtCs7NzLGBMhIGf_9criterion2fs4loadNtB6_11SavedSampleNtNtCs2AWtUsOyxgP_3std4path7PathBufE0B6_.exit unwind label %bb.c, !noalias !152

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #19
          to label %common.resume unwind label %bb.d, !noalias !152

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !152
  unreachable

common.resume:                                    ; preds = %.body, %bb.p, %bb.l, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.n, %bb.c ], [ %i.ac, %bb.l ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNCINvNtCs7NzLGBMhIGf_9criterion2fs4loadNtB6_11SavedSampleNtNtCs2AWtUsOyxgP_3std4path7PathBufE0B6_.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.66, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.66, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.p, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %.sroa.523.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.n

bb.e:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_RINvXNvXsh_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitordENtBb_7Visitor9visit_seqINtNtCsdCGSpSJmIcn_8ciborium2de11BytesAccessRShEECs7NzLGBMhIGf_9criterion:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.b, %bb.f
  %.pn = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.g, %bb.b ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsdCGSpSJmIcn_8ciborium2de11BytesAccessRShEECs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 dereferenceable(32) %1) #19
          to label %common.resume unwind label %bb.m

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !163, !noundef !4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #17
          to label %bb.n unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.o = icmp samesign ule i64 %.sroa.0.0.i, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.k, ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8
  %i.r = icmp ult i64 %.val10, %.val
  br i1 %i.r, label %.lr.ph, label %_RINvYINtNtCsdCGSpSJmIcn_8ciborium2de11BytesAccessRShENtNtCs6nZeqdiIoCH_10serde_core2de9SeqAccess12next_elementdECs7NzLGBMhIGf_9criterion.exit

.lr.ph:                                           ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.g

bb.f:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 dereferenceable(24) %i.b) #19
          to label %.body unwind label %bb.m

bb.g:                                             ; preds = %.lr.ph, %bb.k
  %i.u = phi i64 [ 0, %.lr.ph ], [ %i.ai, %bb.k ] ; 3 uses
  %i.v = phi i64 [ %.val10, %.lr.ph ], [ %i.aj, %bb.k ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.w = load ptr, ptr %i.s, align 8, !alias.scope !241, !noalias !242, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  %i.y = load i8, ptr %i.x, align 1, !noalias !245, !noundef !4
  %i.z = add nuw nsw i64 %i.v, 1
  store i64 %i.z, ptr %i.d, align 8, !alias.scope !241, !noalias !242
  %i.aa = uitofp i8 %i.y to double
  %i.ab = load i64, ptr %i.b, align 8, !range !43, !alias.scope !246, !noundef !4
  %i.ac = icmp eq i64 %i.u, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdE8grow_oneCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.k unwind label %bb.f

_RINvYINtNtCsdCGSpSJmIcn_8ciborium2de11BytesAccessRShENtNtCs6nZeqdiIoCH_10serde_core2de9SeqAccess12next_elementdECs7NzLGBMhIGf_9criterion.exit: ; preds = %bb.k, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %_RINvYINtNtCsdCGSpSJmIcn_8ciborium2de11BytesAccessRShENtNtCs6nZeqdiIoCH_10serde_core2de9SeqAccess12next_elementdECs7NzLGBMhIGf_9criterion.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume:                                    ; preds = %.body, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.g, %bb.h
  %i.ag = load ptr, ptr %i.p, align 8, !alias.scope !246, !nonnull !4, !noundef !4
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.u
  store double %i.aa, ptr %i.ah, align 8
  %i.ai = add i64 %i.u, 1                         ; 2 uses
  store i64 %i.ai, ptr %i.q, align 8
  %i.aj = load i64, ptr %i.d, align 8, !alias.scope !249, !noalias !242, !noundef !4 ; 2 uses
  %i.ak = load i64, ptr %i.c, align 8, !alias.scope !249, !noalias !242, !noundef !4 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, -1
  call void @llvm.assume(i1 %i.al)
  %i.am = icmp ult i64 %i.aj, %i.ak
  br i1 %i.am, label %bb.g, label %_RINvYINtNtCsdCGSpSJmIcn_8ciborium2de11BytesAccessRShENtNtCs6nZeqdiIoCH_10serde_core2de9SeqAccess12next_elementdECs7NzLGBMhIGf_9criterion.exit

bb.l:                                             ; preds = %_RINvYINtNtCsdCGSpSJmIcn_8ciborium2de11BytesAccessRShENtNtCs6nZeqdiIoCH_10serde_core2de9SeqAccess12next_elementdECs7NzLGBMhIGf_9criterion.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.m:                                             ; preds = %bb.f, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.n:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXsh_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitordENtBb_7Visitor9visit_seqINtNtCsdCGSpSJmIcn_8ciborium2de6AccessRShEECs7NzLGBMhIGf_9criterion(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 8 uses
  %.sroa.11.i18 = alloca [6 x i8], align 2        ; 6 uses
  %i.b = alloca [10 x i8], align 1                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [9 x i8], align 1                 ; 8 uses
  %.sroa.11.i = alloca [6 x i8], align 2          ; 6 uses
  %i.e = alloca [10 x i8], align 1                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [10 x i8], align 1                ; 5 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.18 = alloca [16 x i8], align 8           ; 2 uses
  %i.m = alloca [24 x i8], align 8                ; 12 uses
  %.val = load i64, ptr %1, align 8, !range !13, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val10 = load i64, ptr %i.n, align 8
  %i.o = trunc nuw i64 %.val to i1
  %i.p = tail call range(i64 0, 131073) i64 @llvm.umin.i64(i64 %.val10, i64 131072)
  %.sroa.0.0.i = select i1 %i.o, i64 %i.p, i64 0  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.q = load i64, ptr %i.l, align 8, !range !13, !noundef !4
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !163, !noundef !4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  br i1 %i.r, label %bb.b, label %bb.c, !prof !14

common.resume:                                    ; preds = %bb.br, %.loopexit.split-lp
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.dm, %bb.br ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.v = load i64, ptr %i.u, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4
  %i.x = icmp samesign ule i64 %.sroa.0.0.i, %i.t
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.t, ptr %i.m, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store i64 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 7 uses
  %.sroa.12.1..sroa_idx.i39 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.sroa.5.sroa.5.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.7.1..sroa_idx1.i30 = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.sroa.63.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.8.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 7 uses
  %.sroa.12.1..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  %.sroa.5.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.7.1..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.e, i64 7
  %.sroa.766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.868.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %.phi.trans.insert30.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.promoted = load i64, ptr %i.n, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.bw, %bb.c
  %i.ah = phi i64 [ %i.bz, %bb.bw ], [ %.promoted, %bb.c ] ; 3 uses
  %.pre216 = phi i64 [ %.pre, %bb.bw ], [ %.val, %bb.c ]
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !258
  %i.ai = trunc nuw i64 %.pre216 to i1
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = icmp eq i64 %i.ah, 0
  br i1 %i.aj, label %bb.bv, label %bb.bp

bb.f:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr %i.aa, align 8, !alias.scope !260, !noalias !261, !nonnull !4, !align !76, !noundef !4 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !263)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i18)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 40 ; 6 uses
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !263, !noalias !266, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !268
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 4 uses
  %.sroa.0.0.copyload.i.i19 = load i8, ptr %i.ao, align 8, !alias.scope !274, !noalias !275 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i20 = getelementptr inbounds nuw i8, ptr %i.ak, i64 49
  store i8 -1, ptr %i.ao, align 8, !alias.scope !274, !noalias !275
  switch i8 %.sroa.0.0.copyload.i.i19, label %bb.h [
    i8 -1, label %bb.g
    i8 0, label %bb.m
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %bb.l
    i8 5, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  call void @llvm.experimental.noalias.scope.decl(metadata !282)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 4 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !285, !noalias !286, !noundef !4 ; 4 uses
  %i.ar = icmp eq i64 %i.aq, 0
  %i.as = load ptr, ptr %i.al, align 8, !alias.scope !285, !noalias !286, !nonnull !4, !noundef !4 ; 4 uses
  br i1 %i.ar, label %.thread87, label %bb.n

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.f
  br label %bb.m

bb.j:                                             ; preds = %bb.f
  br label %bb.m

bb.k:                                             ; preds = %bb.f
  br label %bb.m

bb.l:                                             ; preds = %bb.f
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.f, %bb.f
  %.sroa.7.0.i.i21 = phi i64 [ 1, %bb.f ], [ 2, %bb.i ], [ 3, %bb.j ], [ 5, %bb.k ], [ 9, %bb.l ], [ 1, %bb.f ]
  %i.at = add i64 %.sroa.7.0.i.i21, %i.an
  store i64 %i.at, ptr %i.am, align 8, !alias.scope !274, !noalias !275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.11.i18, ptr noundef nonnull align 1 dereferenceable(6) %.sroa.6.0..sroa_idx.i.i20, i64 6, i1 false), !noalias !266
  %.sroa.12.2..sroa.6.0..sroa_idx.i.sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %i.ak, i64 55
  %.sroa.12.2.copyload.i23 = load i24, ptr %.sroa.12.2..sroa.6.0..sroa_idx.i.sroa_idx.i22, align 1, !alias.scope !290, !noalias !266
  %.sroa.12.2.insert.ext.i24 = zext i24 %.sroa.12.2.copyload.i23 to i64
  br label %_RNvMs1_NtCs4PBppUgsNbv_11ciborium_ll3decINtB5_7DecoderRShE10pull_titleCs7NzLGBMhIGf_9criterion.exit.i25

bb.n:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 5 uses
  %i.av = add nsw i64 %i.aq, -1                   ; 5 uses
  %i.aw = load i8, ptr %i.as, align 1, !noalias !291, !noundef !4 ; 2 uses
  store ptr %i.au, ptr %i.al, align 8, !alias.scope !285, !noalias !286
  store i64 %i.av, ptr %i.ap, align 8, !alias.scope !285, !noalias !286
  %i.ax = add i64 %i.an, 1                        ; 2 uses
  store i64 %i.ax, ptr %i.am, align 8, !alias.scope !292, !noalias !293
  %i.ay = lshr i8 %i.aw, 5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !294
  %i.az = and i8 %i.aw, 31                        ; 3 uses
  %i.ba = icmp samesign ult i8 %i.az, 24
  br i1 %i.ba, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  switch i8 %i.az, label %bb.q [
    i8 24, label %.thread.i.i53
    i8 25, label %bb.s
    i8 26, label %bb.t
    i8 27, label %bb.u
    i8 31, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs7NzLGBMhIGf_9criterion.exit.i.i.i24.thread.i.i31
  ]

bb.p:                                             ; preds = %bb.n
  store i8 %i.az, ptr %i.ab, align 1, !noalias !294
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs7NzLGBMhIGf_9criterion.exit.i.i.i24.thread.i.i31

bb.q:                                             ; preds = %bb.o
  %i.bb = inttoptr i64 %i.an to ptr
  br label %bb.r

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs7NzLGBMhIGf_9criterion.exit.i.i.i24.thread.i.i31: ; preds = %bb.p, %bb.o
  %storemerge.i.i32 = phi i8 [ 0, %bb.p ], [ 5, %bb.o ]
  store i8 %storemerge.i.i32, ptr %i.a, align 1, !noalias !294
  br label %bb.w

bb.r:                                             ; preds = %bb.y, %bb.q
  %.sink60.i.i49 = phi i64 [ 2, %bb.y ], [ 3, %bb.q ]
  %.sink.i.i50 = phi ptr [ @59, %bb.y ], [ %i.bb, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !294
  br label %.thread87

bb.s:                                             ; preds = %bb.o
  store i16 0, ptr %i.ab, align 1, !noalias !294
  br label %bb.v

bb.t:                                             ; preds = %bb.o
  store i32 0, ptr %i.ab, align 1, !noalias !294
  br label %bb.v

bb.u:                                             ; preds = %bb.o
  store i64 0, ptr %i.ab, align 1, !noalias !294
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.sink62.i.i45 = phi i8 [ 2, %bb.s ], [ 3, %bb.t ], [ 4, %bb.u ]
  %.sroa.716.0.i.i47 = phi i64 [ 2, %bb.s ], [ 4, %bb.t ], [ 8, %bb.u ] ; 4 uses
  store i8 %.sink62.i.i45, ptr %i.a, align 1, !noalias !294
  call void @llvm.experimental.noalias.scope.decl(metadata !295)
  call void @llvm.experimental.noalias.scope.decl(metadata !298)
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.bc = icmp ugt i64 %.sroa.716.0.i.i47, %i.av
  br i1 %i.bc, label %bb.y, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs7NzLGBMhIGf_9criterion.exit.i.i.i24.i.i48

.thread.i.i53:                                    ; preds = %bb.o
  %i.bd = icmp eq i64 %i.av, 0
  br i1 %i.bd, label %bb.y, label %bb.x

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs7NzLGBMhIGf_9criterion.exit.i.i.i24.i.i48: ; preds = %bb.v
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 %.sroa.716.0.i.i47
  %i.bf = sub nuw nsw i64 %i.av, %.sroa.716.0.i.i47
  br label %bb.w

bb.w:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs7NzLGBMhIGf_9criterion.exit.i.i.i24.i.i48, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs7NzLGBMhIGf_9criterion.exit.i.i.i24.thread.i.i31
  %i.bg = phi i64 [ %i.av, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs7NzLGBMhIGf_9criterion.exit.i.i.i24.thread.i.i31 ], [ %i.bf, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs7NzLGBMhIGf_9criterion.exit.i.i.i24.i.i48 ]
  %i.bh = phi ptr [ %i.au, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs7NzLGBMhIGf_9criterion.exit.i.i.i24.thread.i.i31 ], [ %i.be, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs7NzLGBMhIGf_9criterion.exit.i.i.i24.i.i48 ]
  %.sroa.015.03945.i.i33 = phi ptr [ inttoptr (i64 1 to ptr), %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs7NzLGBMhIGf_9criterion.exit.i.i.i24.thread.i.i31 ], [ %i.ab, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs7NzLGBMhIGf_9criterion.exit.i.i.i24.i.i48 ]
  %.sroa.716.04043.i.i34 = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs7NzLGBMhIGf_9criterion.exit.i.i.i24.thread.i.i31 ], [ %.sroa.716.0.i.i47, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs7NzLGBMhIGf_9criterion.exit.i.i.i24.i.i48 ] ; 3 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull %.sroa.015.03945.i.i33, i64 noundef range(i64 0, 9) %.sroa.716.04043.i.i34, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef range(i64 0, 9) %.sroa.716.04043.i.i34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57)
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit

.noexc54:                                         ; preds = %bb.w
  %.sroa.8.1.copyload.pre.i35 = load i8, ptr %i.a, align 1, !noalias !310
  br label %bb.z

bb.x:                                             ; preds = %.thread.i.i53
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.bj = add nsw i64 %i.aq, -2
  %i.bk = load i8, ptr %i.au, align 1, !noalias !311, !noundef !4
  store i8 %i.bk, ptr %i.ab, align 1, !alias.scope !312, !noalias !313
  br label %bb.z

bb.y:                                             ; preds = %.thread.i.i53, %bb.v
  %i.bl = getelementptr i8, ptr %i.as, i64 %i.aq
  store ptr %i.bl, ptr %i.al, align 8, !alias.scope !314, !noalias !315
  store i64 0, ptr %i.ap, align 8, !alias.scope !314, !noalias !315
  br label %bb.r

bb.z:                                             ; preds = %bb.x, %.noexc54
  %.sroa.8.1.copyload.i36 = phi i8 [ 1, %bb.x ], [ %.sroa.8.1.copyload.pre.i35, %.noexc54 ]
  %i.bm = phi i64 [ %i.bj, %bb.x ], [ %i.bg, %.noexc54 ]
  %i.bn = phi ptr [ %i.bi, %bb.x ], [ %i.bh, %.noexc54 ]
  %.sroa.716.04044.i.i37 = phi i64 [ 1, %bb.x ], [ %.sroa.716.04043.i.i34, %.noexc54 ]
  store ptr %i.bn, ptr %i.al, align 8, !alias.scope !314, !noalias !315
  store i64 %i.bm, ptr %i.ap, align 8, !alias.scope !314, !noalias !315
  %i.bo = add i64 %.sroa.716.04044.i.i37, %i.ax
  store i64 %i.bo, ptr %i.am, align 8, !alias.scope !316, !noalias !317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.11.i18, ptr noundef nonnull align 1 dereferenceable(6) %i.ab, i64 6, i1 false), !noalias !268
  %.sroa.12.1.copyload.i40 = load i16, ptr %.sroa.12.1..sroa_idx.i39, align 1, !noalias !310
  %.sroa.12.1.insert.ext.i41 = zext i16 %.sroa.12.1.copyload.i40 to i64
  %.sroa.12.10.insert.ext.i42 = zext nneg i8 %i.ay to i64
  %.sroa.12.10.insert.shift.i43 = shl nuw nsw i64 %.sroa.12.10.insert.ext.i42, 16
  %.sroa.12.10.insert.insert.i44 = or disjoint i64 %.sroa.12.10.insert.shift.i43, %.sroa.12.1.insert.ext.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !294
  br label %_RNvMs1_NtCs4PBppUgsNbv_11ciborium_ll3decINtB5_7DecoderRShE10pull_titleCs7NzLGBMhIGf_9criterion.exit.i25

_RNvMs1_NtCs4PBppUgsNbv_11ciborium_ll3decINtB5_7DecoderRShE10pull_titleCs7NzLGBMhIGf_9criterion.exit.i25: ; preds = %bb.z, %bb.m
  %.sroa.12.0.i26 = phi i64 [ %.sroa.12.2.insert.ext.i24, %bb.m ], [ %.sroa.12.10.insert.insert.i44, %bb.z ]
  %.sroa.8.0.i27 = phi i8 [ %.sroa.0.0.copyload.i.i19, %bb.m ], [ %.sroa.8.1.copyload.i36, %bb.z ]
  %.sroa.12.8.extract.trunc.i28 = trunc nuw i64 %.sroa.12.0.i26 to i24
  store i8 %.sroa.8.0.i27, ptr %i.b, align 1, !noalias !268
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.sroa.5.sroa.5.0..sroa_idx.i29, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.11.i18, i64 6, i1 false), !noalias !268
  store i24 %.sroa.12.8.extract.trunc.i28, ptr %.sroa.7.1..sroa_idx1.i30, align 1, !noalias !268
  invoke void @_RNvXNtCs4PBppUgsNbv_11ciborium_ll3hdrNtB2_6HeaderINtNtCs4NRVxsYgnAr_4core7convert7TryFromNtB4_5TitleE8try_from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(none) dereferenceable(10) %i.b)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit

.noexc55:                                         ; preds = %_RNvMs1_NtCs4PBppUgsNbv_11ciborium_ll3decINtB5_7DecoderRShE10pull_titleCs7NzLGBMhIGf_9criterion.exit.i25
end_hunk_1
begin_hunk_2_@_RINvXNvXsh_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitordENtBb_7Visitor9visit_seqINtNtCsdCGSpSJmIcn_8ciborium2de6AccessRShEECs7NzLGBMhIGf_9criterion:bb.a

bb.az:                                            ; preds = %bb.ax, %.noexc16
  %.sroa.8.1.copyload.i = phi i8 [ 1, %bb.ax ], [ %.sroa.8.1.copyload.pre.i, %.noexc16 ]
  %i.dc = phi i64 [ %i.cz, %bb.ax ], [ %i.cw, %.noexc16 ]
  %i.dd = phi ptr [ %i.cy, %bb.ax ], [ %i.cx, %.noexc16 ]
  %.sroa.716.04044.i.i = phi i64 [ 1, %bb.ax ], [ %.sroa.716.04043.i.i, %.noexc16 ]
  store ptr %i.dd, ptr %i.cb, align 8, !alias.scope !381, !noalias !382
  store i64 %i.dc, ptr %i.ce, align 8, !alias.scope !381, !noalias !382
  %i.de = add i64 %.sroa.716.04044.i.i, %i.cn
  store i64 %i.de, ptr %i.cc, align 8, !alias.scope !383, !noalias !384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.11.i, ptr noundef nonnull align 1 dereferenceable(6) %i.ac, i64 6, i1 false), !noalias !335
  %.sroa.12.1.copyload.i = load i16, ptr %.sroa.12.1..sroa_idx.i, align 1, !noalias !377
  %.sroa.12.1.insert.ext.i = zext i16 %.sroa.12.1.copyload.i to i64
  %.sroa.12.10.insert.ext.i = zext nneg i8 %i.co to i64
  %.sroa.12.10.insert.shift.i = shl nuw nsw i64 %.sroa.12.10.insert.ext.i, 16
  %.sroa.12.10.insert.insert.i = or disjoint i64 %.sroa.12.10.insert.shift.i, %.sroa.12.1.insert.ext.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !361
  br label %_RNvMs1_NtCs4PBppUgsNbv_11ciborium_ll3decINtB5_7DecoderRShE10pull_titleCs7NzLGBMhIGf_9criterion.exit.i

_RNvMs1_NtCs4PBppUgsNbv_11ciborium_ll3decINtB5_7DecoderRShE10pull_titleCs7NzLGBMhIGf_9criterion.exit.i: ; preds = %bb.az, %bb.am
  %.sroa.12.0.i = phi i64 [ %.sroa.12.2.insert.ext.i, %bb.am ], [ %.sroa.12.10.insert.insert.i, %bb.az ]
  %.sroa.8.0.i = phi i8 [ %.sroa.0.0.copyload.i.i, %bb.am ], [ %.sroa.8.1.copyload.i, %bb.az ]
  %.sroa.12.8.extract.trunc.i = trunc nuw i64 %.sroa.12.0.i to i24
  store i8 %.sroa.8.0.i, ptr %i.e, align 1, !noalias !335
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.sroa.5.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.11.i, i64 6, i1 false), !noalias !335
  store i24 %.sroa.12.8.extract.trunc.i, ptr %.sroa.7.1..sroa_idx1.i, align 1, !noalias !335
  invoke void @_RNvXNtCs4PBppUgsNbv_11ciborium_ll3hdrNtB2_6HeaderINtNtCs4NRVxsYgnAr_4core7convert7TryFromNtB4_5TitleE8try_from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 1 captures(none) dereferenceable(10) %i.e)
          to label %.noexc17 unwind label %.loopexit

.noexc17:                                         ; preds = %_RNvMs1_NtCs4PBppUgsNbv_11ciborium_ll3decINtB5_7DecoderRShE10pull_titleCs7NzLGBMhIGf_9criterion.exit.i
  %i.df = load i8, ptr %i.f, align 8, !range !318, !noalias !335, !noundef !4 ; 3 uses
  %i.dg = icmp eq i8 %i.df, -1
  br i1 %i.dg, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.noexc17
  %i.dh = inttoptr i64 %i.cf to ptr
  br label %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatadENtB6_15DeserializeSeed11deserializeQINtNtCsdCGSpSJmIcn_8ciborium2de12DeserializerRShEECs7NzLGBMhIGf_9criterion.exit.thread20.i.i

_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatadENtB6_15DeserializeSeed11deserializeQINtNtCsdCGSpSJmIcn_8ciborium2de12DeserializerRShEECs7NzLGBMhIGf_9criterion.exit.thread20.i.i: ; preds = %bb.ag, %bb.ba, %bb.ar
  %.sroa.868.0.ph = phi i64 [ %.sink60.i.i, %bb.ar ], [ 3, %bb.ba ], [ 2, %bb.ag ]
  %.sroa.1269.0.ph = phi ptr [ %.sink.i.i, %bb.ar ], [ %i.dh, %bb.ba ], [ @59, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !335
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.di = ptrtoint ptr %.sroa.1269.0.ph to i64
  br label %.loopexit108

bb.bb:                                            ; preds = %.noexc17
  %.sroa.766.0.copyload = load i8, ptr %.sroa.766.0..sroa_idx, align 1, !noalias !330
  %.sroa.868.0.copyload = load i64, ptr %.sroa.868.0..sroa_idx, align 8, !noalias !330 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !335
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  switch i8 %i.df, label %bb.bc [
    i8 2, label %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatadENtB6_15DeserializeSeed11deserializeQINtNtCsdCGSpSJmIcn_8ciborium2de12DeserializerRShEECs7NzLGBMhIGf_9criterion.exit.thread.i.i
    i8 4, label %bb.af
  ]

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !385
  store ptr @1, ptr %i.h, align 8, !noalias !395
  store i64 5, ptr %i.ad, align 8, !noalias !395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !395
  switch i8 %i.df, label %default.unreachable1.i.i.i.i.i.i [
    i8 0, label %bb.bd
    i8 1, label %bb.be
    i8 8, label %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatadENtB6_15DeserializeSeed11deserializeQINtNtCsdCGSpSJmIcn_8ciborium2de12DeserializerRShEECs7NzLGBMhIGf_9criterion.exit.i.i
    i8 3, label %bb.bf
    i8 9, label %bb.bj
    i8 5, label %bb.bg
    i8 6, label %bb.bh
    i8 7, label %bb.bi
  ]

default.unreachable1.i.i.i.i.i.i:                 ; preds = %bb.bc
  unreachable

bb.bd:                                            ; preds = %bb.bc
  store i64 %.sroa.868.0.copyload, ptr %i.ae, align 8, !noalias !395
  br label %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatadENtB6_15DeserializeSeed11deserializeQINtNtCsdCGSpSJmIcn_8ciborium2de12DeserializerRShEECs7NzLGBMhIGf_9criterion.exit.i.i

bb.be:                                            ; preds = %bb.bc
  %i.dj = xor i64 %.sroa.868.0.copyload, -1
  store i64 %i.dj, ptr %i.ae, align 8, !noalias !395
  br label %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatadENtB6_15DeserializeSeed11deserializeQINtNtCsdCGSpSJmIcn_8ciborium2de12DeserializerRShEECs7NzLGBMhIGf_9criterion.exit.i.i

bb.bf:                                            ; preds = %bb.bc
  switch i8 %.sroa.766.0.copyload, label %bb.bk [
    i8 20, label %bb.bl
    i8 21, label %bb.bm
    i8 22, label %bb.bn
    i8 23, label %bb.bo
  ]

bb.bg:                                            ; preds = %bb.bc
  store ptr @47, ptr %i.ae, align 8, !noalias !395
  store i64 5, ptr %i.af, align 8, !noalias !395
  br label %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatadENtB6_15DeserializeSeed11deserializeQINtNtCsdCGSpSJmIcn_8ciborium2de12DeserializerRShEECs7NzLGBMhIGf_9criterion.exit.i.i

bb.bh:                                            ; preds = %bb.bc
  store ptr @48, ptr %i.ae, align 8, !noalias !395
  store i64 5, ptr %i.af, align 8, !noalias !395
  br label %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatadENtB6_15DeserializeSeed11deserializeQINtNtCsdCGSpSJmIcn_8ciborium2de12DeserializerRShEECs7NzLGBMhIGf_9criterion.exit.i.i

bb.bi:                                            ; preds = %bb.bc
  store ptr @49, ptr %i.ae, align 8, !noalias !395
  store i64 6, ptr %i.af, align 8, !noalias !395
  br label %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatadENtB6_15DeserializeSeed11deserializeQINtNtCsdCGSpSJmIcn_8ciborium2de12DeserializerRShEECs7NzLGBMhIGf_9criterion.exit.i.i

bb.bj:                                            ; preds = %bb.bc
  br label %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatadENtB6_15DeserializeSeed11deserializeQINtNtCsdCGSpSJmIcn_8ciborium2de12DeserializerRShEECs7NzLGBMhIGf_9criterion.exit.i.i

bb.bk:                                            ; preds = %bb.bf
  store ptr @46, ptr %i.ae, align 8, !noalias !395
  store i64 6, ptr %i.af, align 8, !noalias !395
  br label %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatadENtB6_15DeserializeSeed11deserializeQINtNtCsdCGSpSJmIcn_8ciborium2de12DeserializerRShEECs7NzLGBMhIGf_9criterion.exit.i.i

bb.bl:                                            ; preds = %bb.bf
  store i8 0, ptr %i.ag, align 1, !noalias !395
  br label %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatadENtB6_15DeserializeSeed11deserializeQINtNtCsdCGSpSJmIcn_8ciborium2de12DeserializerRShEECs7NzLGBMhIGf_9criterion.exit.i.i

bb.bm:                                            ; preds = %bb.bf
  store i8 1, ptr %i.ag, align 1, !noalias !395
  br label %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatadENtB6_15DeserializeSeed11deserializeQINtNtCsdCGSpSJmIcn_8ciborium2de12DeserializerRShEECs7NzLGBMhIGf_9criterion.exit.i.i

bb.bn:                                            ; preds = %bb.bf
  store ptr @9, ptr %i.ae, align 8, !noalias !395
  store i64 4, ptr %i.af, align 8, !noalias !395
  br label %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatadENtB6_15DeserializeSeed11deserializeQINtNtCsdCGSpSJmIcn_8ciborium2de12DeserializerRShEECs7NzLGBMhIGf_9criterion.exit.i.i

bb.bo:                                            ; preds = %bb.bf
  store ptr @45, ptr %i.ae, align 8, !noalias !395
  store i64 9, ptr %i.af, align 8, !noalias !395
  br label %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatadENtB6_15DeserializeSeed11deserializeQINtNtCsdCGSpSJmIcn_8ciborium2de12DeserializerRShEECs7NzLGBMhIGf_9criterion.exit.i.i

_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatadENtB6_15DeserializeSeed11deserializeQINtNtCsdCGSpSJmIcn_8ciborium2de12DeserializerRShEECs7NzLGBMhIGf_9criterion.exit.thread.i.i: ; preds = %bb.bb
  %i.dk = bitcast i64 %.sroa.868.0.copyload to double
  br label %bb.bt

_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatadENtB6_15DeserializeSeed11deserializeQINtNtCsdCGSpSJmIcn_8ciborium2de12DeserializerRShEECs7NzLGBMhIGf_9criterion.exit.i.i: ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.be, %bb.bd, %bb.bc
  %.sink.i.i.i.i.i.i = phi i8 [ 17, %bb.bo ], [ 17, %bb.bn ], [ 0, %bb.bm ], [ 0, %bb.bl ], [ 17, %bb.bk ], [ 11, %bb.bj ], [ 1, %bb.bd ], [ 17, %bb.bi ], [ 17, %bb.bh ], [ 17, %bb.bg ], [ 2, %bb.be ], [ 10, %bb.bc ]
  store i8 %.sink.i.i.i.i.i.i, ptr %i.g, align 8, !noalias !395
  invoke void @_RNvYINtNtNtCsdCGSpSJmIcn_8ciborium2de5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit

.noexc14:                                         ; preds = %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatadENtB6_15DeserializeSeed11deserializeQINtNtCsdCGSpSJmIcn_8ciborium2de12DeserializerRShEECs7NzLGBMhIGf_9criterion.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !385
  %.pr.i.i = load i64, ptr %i.j, align 8, !noalias !260 ; 2 uses
  %.not.i.i = icmp eq i64 %.pr.i.i, -1
  br i1 %.not.i.i, label %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatadENtB6_15DeserializeSeed11deserializeQINtNtCsdCGSpSJmIcn_8ciborium2de12DeserializerRShEECs7NzLGBMhIGf_9criterion.exit._crit_edge.i.i, label %.loopexit108.loopexit

_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatadENtB6_15DeserializeSeed11deserializeQINtNtCsdCGSpSJmIcn_8ciborium2de12DeserializerRShEECs7NzLGBMhIGf_9criterion.exit._crit_edge.i.i: ; preds = %.noexc14
  %.pre31.i.i = load double, ptr %.phi.trans.insert30.i.i, align 8, !noalias !319
  br label %bb.bt

bb.bp:                                            ; preds = %bb.e
  %i.dl = add i64 %i.ah, -1                       ; 2 uses
  store i64 1, ptr %1, align 8, !alias.scope !260, !noalias !261
  store i64 %i.dl, ptr %i.n, align 8, !alias.scope !260, !noalias !261
  %.pre.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !260, !noalias !261
  br label %bb.ae

.loopexit:                                        ; preds = %bb.aw, %_RNvMs1_NtCs4PBppUgsNbv_11ciborium_ll3decINtB5_7DecoderRShE10pull_titleCs7NzLGBMhIGf_9criterion.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_RNvMs1_NtCs4PBppUgsNbv_11ciborium_ll3decINtB5_7DecoderRShE10pull_titleCs7NzLGBMhIGf_9criterion.exit.i25, %bb.w, %bb.bu, %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatadENtB6_15DeserializeSeed11deserializeQINtNtCsdCGSpSJmIcn_8ciborium2de12DeserializerRShEECs7NzLGBMhIGf_9criterion.exit.i.i, %bb.ac
  %lpad.loopexit105 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ad
  %lpad.loopexit.split-lp106 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit105, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp106, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 dereferenceable(24) %i.m) #19
          to label %common.resume unwind label %bb.by

.loopexit108.loopexit:                            ; preds = %.noexc14
  %.sroa.11.0.copyload59.pre = load i64, ptr %.phi.trans.insert30.i.i, align 8, !noalias !260
  br label %.loopexit108

.loopexit108:                                     ; preds = %.loopexit108.loopexit, %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatadENtB6_15DeserializeSeed11deserializeQINtNtCsdCGSpSJmIcn_8ciborium2de12DeserializerRShEECs7NzLGBMhIGf_9criterion.exit.thread20.i.i
  %.sroa.11.0.copyload59 = phi i64 [ %i.di, %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatadENtB6_15DeserializeSeed11deserializeQINtNtCsdCGSpSJmIcn_8ciborium2de12DeserializerRShEECs7NzLGBMhIGf_9criterion.exit.thread20.i.i ], [ %.sroa.11.0.copyload59.pre, %.loopexit108.loopexit ]
  %.sroa.0.0.copyload57 = phi i64 [ %.sroa.868.0.ph, %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatadENtB6_15DeserializeSeed11deserializeQINtNtCsdCGSpSJmIcn_8ciborium2de12DeserializerRShEECs7NzLGBMhIGf_9criterion.exit.thread20.i.i ], [ %.pr.i.i, %.loopexit108.loopexit ]
  %.sroa.16.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.16.0.copyload61 = load double, ptr %.sroa.16.0..sroa_idx60, align 8, !noalias !260
  %.sroa.18.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.0..sroa_idx62, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !319
  br label %bb.bq

bb.bq:                                            ; preds = %.loopexit108, %.thread87
  %.sroa.0.194 = phi i64 [ %.sroa.8.0.ph, %.thread87 ], [ %.sroa.0.0.copyload57, %.loopexit108 ]
  %.sroa.11.193 = phi i64 [ %i.bs, %.thread87 ], [ %.sroa.11.0.copyload59, %.loopexit108 ]
  %.sroa.16.192 = phi double [ undef, %.thread87 ], [ %.sroa.16.0.copyload61, %.loopexit108 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !258
  store i64 %.sroa.0.194, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.11.193, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.16.192, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18, i64 16, i1 false)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs7NzLGBMhIGf_9criterion.exit unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs7NzLGBMhIGf_9criterion.exit: ; preds = %bb.bq
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
  br label %bb.bx

bb.bt:                                            ; preds = %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatadENtB6_15DeserializeSeed11deserializeQINtNtCsdCGSpSJmIcn_8ciborium2de12DeserializerRShEECs7NzLGBMhIGf_9criterion.exit._crit_edge.i.i, %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatadENtB6_15DeserializeSeed11deserializeQINtNtCsdCGSpSJmIcn_8ciborium2de12DeserializerRShEECs7NzLGBMhIGf_9criterion.exit.thread.i.i
  %.sroa.16.0.ph = phi double [ %i.dk, %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatadENtB6_15DeserializeSeed11deserializeQINtNtCsdCGSpSJmIcn_8ciborium2de12DeserializerRShEECs7NzLGBMhIGf_9criterion.exit.thread.i.i ], [ %.pre31.i.i, %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatadENtB6_15DeserializeSeed11deserializeQINtNtCsdCGSpSJmIcn_8ciborium2de12DeserializerRShEECs7NzLGBMhIGf_9criterion.exit._crit_edge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !258
  %i.do = load i64, ptr %i.z, align 8, !alias.scope !399, !noundef !4 ; 3 uses
  %i.dp = load i64, ptr %i.m, align 8, !range !43, !alias.scope !399, !noundef !4
  %i.dq = icmp eq i64 %i.do, %i.dp
  br i1 %i.dq, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdE8grow_oneCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.bw unwind label %.loopexit.split-lp.loopexit

bb.bv:                                            ; preds = %bb.e, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !258
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bt, %bb.bu
  %i.ds = load ptr, ptr %i.y, align 8, !alias.scope !399, !nonnull !4, !noundef !4
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.do
  store double %.sroa.16.0.ph, ptr %i.dt, align 8
  %i.du = add i64 %i.do, 1
  store i64 %i.du, ptr %i.z, align 8, !alias.scope !399
  br label %bb.d

bb.bx:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs7NzLGBMhIGf_9criterion.exit, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.by:                                            ; preds = %.loopexit.split-lp
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6nZeqdiIoCH_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCscvBHLZPbXnS_10serde_json5error5ErrorECs7NzLGBMhIGf_9criterion(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !163, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = icmp ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  store i64 %i.e, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @_RINvXs4_NtNtCscvBHLZPbXnS_10serde_json5value3serNtB6_12SerializeMapNtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !402
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !402
  %i.b = load i64, ptr %i.a, align 8, !range !13, !noalias !402, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !163, !noalias !402, !noundef !4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7NzLGBMhIGf_9criterion.exit.i.i.i, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !402
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #17, !noalias !402
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7NzLGBMhIGf_9criterion.exit.i.i.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !402, !nonnull !4, !noundef !4 ; 3 uses
  %i.i = icmp samesign ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !402
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %_RINvXNtNtCs6nZeqdiIoCH_10serde_core3ser5implseNtB5_9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser16MapKeySerializerECs7NzLGBMhIGf_9criterion.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7NzLGBMhIGf_9criterion.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !412
  br label %_RINvXNtNtCs6nZeqdiIoCH_10serde_core3ser5implseNtB5_9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser16MapKeySerializerECs7NzLGBMhIGf_9criterion.exit

_RINvXNtNtCs6nZeqdiIoCH_10serde_core3ser5implseNtB5_9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser16MapKeySerializerECs7NzLGBMhIGf_9criterion.exit: ; preds = %bb.c, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7NzLGBMhIGf_9criterion.exit.i.i.i
  %i.j = load i64, ptr %0, align 8, !range !18, !alias.scope !413, !noundef !4
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_RINvXNtNtCs6nZeqdiIoCH_10serde_core3ser5implseNtB5_9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser16MapKeySerializerECs7NzLGBMhIGf_9criterion.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.l, %bb.e ]
  store i64 %i.e, ptr %0, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.7.0..sroa_idx, align 8
  resume { ptr, i32 } %eh.lpad-body

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit.i, %_RINvXNtNtCs6nZeqdiIoCH_10serde_core3ser5implseNtB5_9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser16MapKeySerializerECs7NzLGBMhIGf_9criterion.exit
  store i64 %i.e, ptr %0, align 8
  %.sroa.65.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.65.0..sroa_idx6, align 8
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.7.0..sroa_idx8, align 8
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs6_NtNtCscvBHLZPbXnS_10serde_json5value3serNtB6_12SerializeMapNtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7NzLGBMhIGf_9criterion4html10ReportLinkEEEB3l_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  %i.e = tail call fastcc noundef align 8 ptr @_RINvXs4_NtNtCscvBHLZPbXnS_10serde_json5value3serNtB6_12SerializeMapNtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !419 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.b, label %_RINvYNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapNtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_entryeINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7NzLGBMhIGf_9criterion4html10ReportLinkEEEB3d_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !424
  %.sroa.01.0.copyload.i.i = load i64, ptr %0, align 8, !alias.scope !426, !noalias !427 ; 2 uses
  store i64 -1, ptr %0, align 8, !alias.scope !426, !noalias !427
  %.not.i.i = icmp eq i64 %.sroa.01.0.copyload.i.i, -1
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !429
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i, i64 16, i1 false), !noalias !427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !429
  store i64 %.sroa.01.0.copyload.i.i, ptr %i.c, align 8, !noalias !429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !429
  invoke void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7NzLGBMhIGf_9criterion4html10ReportLinkEEEB1W_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3)
          to label %bb.f unwind label %bb.e, !noalias !430

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #17, !noalias !431
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 dereferenceable(24) %i.c) #19
          to label %common.resume.i.i unwind label %bb.l, !noalias !430

bb.f:                                             ; preds = %bb.c
  %i.g = load i8, ptr %i.b, align 8, !range !325, !noalias !429, !noundef !4
  %i.h = icmp eq i8 %i.g, -1
  br i1 %i.h, label %bb.g, label %bb.j

end_hunk_2
