Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.14?download=true
inline.NumInlined: 7854
inline.NumDeleted: 3329
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvCsgsNUVCRJO2f_13influxdb3_lib7startup:bb.a
          to label %.noexc102 unwind label %.body121

.noexc102:                                        ; preds = %bb.i
  %i.gy = load i64, ptr %i.ed, align 8, !range !50, !noundef !14
  switch i64 %i.gy, label %bb.l [
    i64 -1, label %.thread.i
    i64 -9223372036854775808, label %bb.k
  ]

bb.j:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  %.pr.i = load i64, ptr %i.ed, align 8
  switch i64 %.pr.i, label %bb.q [
    i64 -1, label %.thread.i
    i64 -9223372036854775808, label %bb.y
  ]

bb.k:                                             ; preds = %.noexc102
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.val.i = load ptr, ptr %i.gz, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.ha = call fastcc noundef i8 @_RNvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5Error4kind(ptr nonnull %.val.i)
  %i.hb = icmp eq i8 %i.ha, 0
  br i1 %i.hb, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k, %.noexc102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eb, ptr noundef nonnull align 8 dereferenceable(32) %i.ed, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  store ptr %i.eb, ptr %i.ea, align 8
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr @_RNvXs0_NtCskjjdgtxHS4z_7dotenvy6errorsNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.44.0..sroa_idx.i, align 8
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio7__eprint(ptr noundef nonnull @164, ptr noundef nonnull %i.ea)
          to label %bb.s unwind label %bb.r

bb.m:                                             ; preds = %bb.n
  %i.hc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.hd = load i64, ptr %i.ed, align 8, !range !50, !noundef !14
  switch i64 %i.hd, label %bb.x [
    i64 -1, label %bb.w
    i64 -9223372036854775808, label %.body
  ]

.thread9.i:                                       ; preds = %bb.r
  %i.he = load i64, ptr %i.ed, align 8, !range !50, !noundef !14
  %.not713.i = icmp eq i64 %i.he, -1
  br i1 %.not713.i, label %bb.w, label %.body

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  store ptr %.val.i, ptr %i.ec, align 8
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ec)
          to label %bb.j unwind label %bb.m

.thread.i:                                        ; preds = %bb.j, %.noexc102
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hf)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCskjjdgtxHS4z_7dotenvy6errors5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.o

bb.o:                                             ; preds = %.thread.i
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hf)
          to label %.body unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCskjjdgtxHS4z_7dotenvy6errors5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %.thread.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hf)
          to label %bb.y unwind label %.body121

bb.q:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskjjdgtxHS4z_7dotenvy6errors5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(32) %i.ed)
          to label %bb.y unwind label %.body121

bb.r:                                             ; preds = %bb.t, %bb.s, %bb.l
  %i.hi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskjjdgtxHS4z_7dotenvy6errors5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(32) %i.eb) #45
          to label %.thread9.i unwind label %bb.v

bb.s:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio7__eprint(ptr noundef nonnull @165, ptr noundef nonnull inttoptr (i64 19 to ptr))
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCs2AWtUsOyxgP_3std7process4exit(i32 noundef 1) #44
          to label %bb.u unwind label %bb.r

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.x, %bb.w, %bb.r
  %i.hj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.w:                                             ; preds = %.thread9.i, %bb.m
  %.pn16.i = phi { ptr, i32 } [ %i.hi, %.thread9.i ], [ %i.hc, %bb.m ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCskjjdgtxHS4z_7dotenvy6errors5ErrorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(32) %i.ed) #45
          to label %.body unwind label %bb.v

bb.x:                                             ; preds = %bb.m
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskjjdgtxHS4z_7dotenvy6errors5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(32) %i.ed) #45
          to label %.body unwind label %bb.v

bb.y:                                             ; preds = %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCskjjdgtxHS4z_7dotenvy6errors5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  invoke void @_RNvNtCsk3PbTroECA4_17influxdb3_startup10env_compat16copy_env_aliases(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @357, i64 noundef 36)
          to label %bb.z unwind label %.body121

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  invoke void @_RNvNtCs2AWtUsOyxgP_3std3env7args_os(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.dz)
          to label %.noexc105 unwind label %.body121

.noexc105:                                        ; preds = %bb.z
  %i.hk = getelementptr inbounds nuw i8, ptr %i.dz, i64 24 ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %i.hm = load ptr, ptr %i.hk, align 8, !alias.scope !15885, !nonnull !14, !noundef !14
  %i.hn = load ptr, ptr %i.hl, align 8, !alias.scope !15885, !nonnull !14, !noundef !14 ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.hm
  br i1 %i.ho, label %.thread430.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.lr.ph.lr.ph.i

.thread430.i:                                     ; preds = %.noexc105
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dz)
          to label %.noexc106 unwind label %.body121

.noexc106:                                        ; preds = %.thread430.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  br label %_RNvCsgsNUVCRJO2f_13influxdb3_lib16maybe_print_help.exit

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.lr.ph.lr.ph.i: ; preds = %.noexc105
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 9 uses
  %.sroa.4345.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %.sroa.5346.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 24 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 4 uses
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.lr.ph.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.lr.ph.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit314.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.lr.ph.lr.ph.i
  %i.hr = phi ptr [ %i.hn, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.lr.ph.lr.ph.i ], [ %i.qs, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit314.i ] ; 2 uses
  %.sroa.0.0.ph390.i = phi i1 [ false, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.lr.ph.lr.ph.i ], [ %.us-phi340, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit314.i ] ; 17 uses
  %.sroa.01.0.ph389.i = phi i1 [ false, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.lr.ph.lr.ph.i ], [ %.us-phi339, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit314.i ] ; 19 uses
  %.sroa.02.0.ph388.i = phi i8 [ -1, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.lr.ph.lr.ph.i ], [ %.us-phi338, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit314.i ] ; 6 uses
  %.not287.i = icmp eq i8 %.sroa.02.0.ph388.i, -1
  br i1 %.not287.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i.us, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i.us: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.lr.ph.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.us
  %i.hs = phi ptr [ %i.ms, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.us ], [ %i.hr, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.lr.ph.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15886)
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  store ptr %i.ht, ptr %i.hl, align 8, !alias.scope !15886
  %.sroa.0.0.copyload315.i.us = load i64, ptr %i.hs, align 8, !noalias !15886 ; 3 uses
  %.sroa.8.0..sroa_idx316.i.us = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx316.i.us, i64 16, i1 false), !noalias !15886
  %.not.i.us = icmp eq i64 %.sroa.0.0.copyload315.i.us, -1
  br i1 %.not.i.us, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, label %bb.aa

bb.aa:                                            ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i64 %.sroa.0.0.copyload315.i.us, ptr %i.z, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  call void @llvm.experimental.noalias.scope.decl(metadata !15887)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !15888
  %i.hu = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !15887, !nonnull !14, !noundef !14 ; 2 uses
  %i.hv = load i64, ptr %i.hp, align 8, !alias.scope !15887, !noundef !14 ; 2 uses
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hu, i64 noundef %i.hv)
          to label %bb.ab unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15888

bb.ab:                                            ; preds = %bb.aa
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = load i64, ptr %i.y, align 8, !range !17, !noalias !15888, !noundef !14
  %i.hy = trunc nuw i64 %i.hx to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !15888
  store i64 %.sroa.0.0.copyload315.i.us, ptr %i.hq, align 8
  store i64 %i.hw, ptr %.sroa.4345.0..sroa_idx.i, align 8
  store i64 %i.hv, ptr %.sroa.5346.0..sroa_idx.i, align 8
  br i1 %i.hy, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !15889)
  call void @llvm.experimental.noalias.scope.decl(metadata !15890)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %i.hq, i64 24, i1 false), !alias.scope !15891
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE17unwrap_or_defaultCsgsNUVCRJO2f_13influxdb3_lib.exit.i.us

bb.ad:                                            ; preds = %bb.ab
  store i64 1, ptr %i.dx, align 8
  store i64 0, ptr %i.dy, align 8, !alias.scope !15892
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !15892
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !15892
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.us unwind label %.split333.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15889

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.us: ; preds = %bb.ad
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hq)
          to label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE17unwrap_or_defaultCsgsNUVCRJO2f_13influxdb3_lib.exit.i.us unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE17unwrap_or_defaultCsgsNUVCRJO2f_13influxdb3_lib.exit.i.us: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.us, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  %i.hz = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !nonnull !14, !noundef !14 ; 25 uses
  %i.ia = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noundef !14
  switch i64 %i.ia, label %bb.as [
    i64 2, label %bb.ar
    i64 6, label %bb.an
    i64 10, label %bb.am
    i64 7, label %bb.ak
    i64 5, label %bb.ag
    i64 4, label %bb.ae
  ]

bb.ae:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE17unwrap_or_defaultCsgsNUVCRJO2f_13influxdb3_lib.exit.i.us
  %i.ib = load i32, ptr %i.hz, align 1
  %i.ic = icmp ne i32 %i.ib, 2003789939
  %i.id = zext i1 %i.ic to i32
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %.split337.us, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.if = load i32, ptr %i.hz, align 1
  %i.ig = icmp ne i32 %i.if, 1953719668
  %i.ih = zext i1 %i.ig to i32
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %.split337.us, label %bb.as

bb.ag:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE17unwrap_or_defaultCsgsNUVCRJO2f_13influxdb3_lib.exit.i.us
  %i.ij = load i32, ptr %i.hz, align 1
  %i.ik = xor i32 %i.ij, 1919251825
  %i.il = getelementptr i8, ptr %i.hz, i64 4
  %i.im = load i8, ptr %i.il, align 1
  %i.in = zext i8 %i.im to i32
  %i.io = xor i32 %i.in, 121
  %i.ip = or i32 %i.ik, %i.io
  %i.iq = icmp ne i32 %i.ip, 0
  %i.ir = zext i1 %i.iq to i32
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %.split337.us, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.it = load i32, ptr %i.hz, align 1
  %i.iu = xor i32 %i.it, 1987208563
  %i.iv = getelementptr i8, ptr %i.hz, i64 4
  %i.iw = load i8, ptr %i.iv, align 1
  %i.ix = zext i8 %i.iw to i32
  %i.iy = xor i32 %i.ix, 101
  %i.iz = or i32 %i.iu, %i.iy
  %i.ja = icmp ne i32 %i.iz, 0
  %i.jb = zext i1 %i.ja to i32
  %i.jc = icmp eq i32 %i.jb, 0
  br i1 %i.jc, label %.split337.us, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jd = load i32, ptr %i.hz, align 1
  %i.je = xor i32 %i.jd, 1969382756
  %i.jf = getelementptr i8, ptr %i.hz, i64 4
  %i.jg = load i8, ptr %i.jf, align 1
  %i.jh = zext i8 %i.jg to i32
  %i.ji = xor i32 %i.jh, 103
  %i.jj = or i32 %i.je, %i.ji
  %i.jk = icmp ne i32 %i.jj, 0
  %i.jl = zext i1 %i.jk to i32
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %.split337.us, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jn = load i32, ptr %i.hz, align 1
  %i.jo = xor i32 %i.jn, 1953067639
  %i.jp = getelementptr i8, ptr %i.hz, i64 4
  %i.jq = load i8, ptr %i.jp, align 1
  %i.jr = zext i8 %i.jq to i32
  %i.js = xor i32 %i.jr, 101
  %i.jt = or i32 %i.jo, %i.js
  %i.ju = icmp ne i32 %i.jt, 0
  %i.jv = zext i1 %i.ju to i32
  %i.jw = icmp eq i32 %i.jv, 0
  br i1 %i.jw, label %.split337.us, label %bb.as

bb.ak:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE17unwrap_or_defaultCsgsNUVCRJO2f_13influxdb3_lib.exit.i.us
  %i.jx = load i32, ptr %i.hz, align 1
  %i.jy = xor i32 %i.jx, 1634953572
  %i.jz = getelementptr i8, ptr %i.hz, i64 3
  %i.ka = load i32, ptr %i.jz, align 1
  %i.kb = xor i32 %i.ka, 1701601889
  %i.kc = or i32 %i.jy, %i.kb
  %i.kd = icmp ne i32 %i.kc, 0
  %i.ke = zext i1 %i.kd to i32
  %i.kf = icmp eq i32 %i.ke, 0
  br i1 %i.kf, label %.split337.us, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.kg = load i32, ptr %i.hz, align 1
  %i.kh = xor i32 %i.kg, 1953721961
  %i.ki = getelementptr i8, ptr %i.hz, i64 3
  %i.kj = load i32, ptr %i.ki, align 1
  %i.kk = xor i32 %i.kj, 1819042164
  %i.kl = or i32 %i.kh, %i.kk
  %i.km = icmp ne i32 %i.kl, 0
  %i.kn = zext i1 %i.km to i32
  %i.ko = icmp eq i32 %i.kn, 0
  br i1 %i.ko, label %.split337.us, label %bb.as

bb.am:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE17unwrap_or_defaultCsgsNUVCRJO2f_13influxdb3_lib.exit.i.us
  %i.kp = load i64, ptr %i.hz, align 1
  %i.kq = xor i64 %i.kp, 7002376606491094317
  %i.kr = getelementptr i8, ptr %i.hz, i64 8
  %i.ks = load i16, ptr %i.kr, align 1
  %i.kt = zext i16 %i.ks to i64
  %i.ku = xor i64 %i.kt, 27756
  %i.kv = or i64 %i.kq, %i.ku
  %i.kw = icmp ne i64 %i.kv, 0
  %i.kx = zext i1 %i.kw to i32
  %i.ky = icmp eq i32 %i.kx, 0
  br i1 %i.ky, label %.split337.us, label %bb.as

bb.an:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE17unwrap_or_defaultCsgsNUVCRJO2f_13influxdb3_lib.exit.i.us
  %i.kz = load i32, ptr %i.hz, align 1
  %i.la = xor i32 %i.kz, 1701326125
  %i.lb = getelementptr i8, ptr %i.hz, i64 4
  %i.lc = load i16, ptr %i.lb, align 1
  %i.ld = zext i16 %i.lc to i32
  %i.le = xor i32 %i.ld, 28780
  %i.lf = or i32 %i.la, %i.le
  %i.lg = icmp ne i32 %i.lf, 0
  %i.lh = zext i1 %i.lg to i32
  %i.li = icmp eq i32 %i.lh, 0
  br i1 %i.li, label %.split337.us, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.lj = load i32, ptr %i.hz, align 1
  %i.lk = xor i32 %i.lj, 1650552421
  %i.ll = getelementptr i8, ptr %i.hz, i64 4
  %i.lm = load i16, ptr %i.ll, align 1
  %i.ln = zext i16 %i.lm to i32
  %i.lo = xor i32 %i.ln, 25964
  %i.lp = or i32 %i.lk, %i.lo
  %i.lq = icmp ne i32 %i.lp, 0
  %i.lr = zext i1 %i.lq to i32
  %i.ls = icmp eq i32 %i.lr, 0
  br i1 %i.ls, label %.split337.us, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.lt = load i32, ptr %i.hz, align 1
  %i.lu = xor i32 %i.lt, 1634038371
  %i.lv = getelementptr i8, ptr %i.hz, i64 4
  %i.lw = load i16, ptr %i.lv, align 1
  %i.lx = zext i16 %i.lw to i32
  %i.ly = xor i32 %i.lx, 25972
  %i.lz = or i32 %i.lu, %i.ly
  %i.ma = icmp ne i32 %i.lz, 0
  %i.mb = zext i1 %i.ma to i32
  %i.mc = icmp eq i32 %i.mb, 0
  br i1 %i.mc, label %.split337.us, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.md = load i32, ptr %i.hz, align 1
  %i.me = xor i32 %i.md, 1701602660
  %i.mf = getelementptr i8, ptr %i.hz, i64 4
  %i.mg = load i16, ptr %i.mf, align 1
  %i.mh = zext i16 %i.mg to i32
  %i.mi = xor i32 %i.mh, 25972
  %i.mj = or i32 %i.me, %i.mi
  %i.mk = icmp ne i32 %i.mj, 0
  %i.ml = zext i1 %i.mk to i32
  %i.mm = icmp eq i32 %i.ml, 0
  br i1 %i.mm, label %.split337.us, label %bb.as

bb.ar:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE17unwrap_or_defaultCsgsNUVCRJO2f_13influxdb3_lib.exit.i.us
  %i.mn = load i16, ptr %i.hz, align 1
  %i.mo = icmp ne i16 %i.mn, 26669
  %i.mp = zext i1 %i.mo to i32
  %i.mq = icmp eq i32 %i.mp, 0
  br i1 %i.mq, label %.split337.us, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.am, %bb.al, %bb.aj, %bb.af, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE17unwrap_or_defaultCsgsNUVCRJO2f_13influxdb3_lib.exit.i.us
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.us unwind label %.split342.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.us: ; preds = %bb.as
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.us unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.us: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %i.mr = load ptr, ptr %i.hk, align 8, !alias.scope !15893, !nonnull !14, !noundef !14
  %i.ms = load ptr, ptr %i.hl, align 8, !alias.scope !15893, !nonnull !14, !noundef !14 ; 2 uses
  %i.mt = icmp eq ptr %i.ms, %i.mr
  br i1 %i.mt, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i.us

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.us, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.us, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i310.i
  %lpad.loopexit.split-lp571 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bl, %.split342.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split333.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp567, %.split342.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp559, %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp562, %.split333.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.qm, %bb.bl ], [ %lpad.loopexit.split-lp571, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dz)
          to label %.body unwind label %bb.bn

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.lr.ph.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.mu = phi ptr [ %i.qp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %i.hr, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.lr.ph.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15886)
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 24
  store ptr %i.mv, ptr %i.hl, align 8, !alias.scope !15886
  %.sroa.0.0.copyload315.i = load i64, ptr %i.mu, align 8, !noalias !15886 ; 3 uses
  %.sroa.8.0..sroa_idx316.i = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx316.i, i64 16, i1 false), !noalias !15886
  %.not.i = icmp eq i64 %.sroa.0.0.copyload315.i, -1
  br i1 %.not.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, label %bb.at

bb.at:                                            ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i64 %.sroa.0.0.copyload315.i, ptr %i.z, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  call void @llvm.experimental.noalias.scope.decl(metadata !15887)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !15888
  %i.mw = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !15887, !nonnull !14, !noundef !14 ; 2 uses
  %i.mx = load i64, ptr %i.hp, align 8, !alias.scope !15887, !noundef !14 ; 2 uses
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.mw, i64 noundef %i.mx)
          to label %bb.au unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15888

.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aa, %bb.at
  %lpad.loopexit.split-lp559 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z) #45
          to label %.body.i unwind label %bb.av, !noalias !15894

bb.au:                                            ; preds = %bb.at
  %i.my = ptrtoint ptr %i.mw to i64
  %i.mz = load i64, ptr %i.y, align 8, !range !17, !noalias !15888, !noundef !14
  %i.na = trunc nuw i64 %i.mz to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !15888
  store i64 %.sroa.0.0.copyload315.i, ptr %i.hq, align 8
  store i64 %i.my, ptr %.sroa.4345.0..sroa_idx.i, align 8
  store i64 %i.mx, ptr %.sroa.5346.0..sroa_idx.i, align 8
  br i1 %i.na, label %bb.be, label %bb.bd

bb.av:                                            ; preds = %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.nb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46, !noalias !15894
  unreachable

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit314.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.us, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i.us
  %.sroa.02.0.ph.lcssa.i = phi i8 [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.us ], [ %.sroa.02.0.ph388.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ -1, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i.us ], [ %.sroa.02.0.ph388.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %.us-phi338, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit314.i ] ; 2 uses
  %.sroa.01.0.ph.lcssa.i = phi i1 [ %.sroa.01.0.ph389.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.us ], [ %.sroa.01.0.ph389.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %.sroa.01.0.ph389.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i.us ], [ %.sroa.01.0.ph389.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %.us-phi339, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit314.i ]
  %.sroa.0.0.ph.lcssa.i = phi i1 [ %.sroa.0.0.ph390.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.us ], [ %.sroa.0.0.ph390.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %.sroa.0.0.ph390.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i.us ], [ %.sroa.0.0.ph390.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %.us-phi340, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit314.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dz)
          to label %.noexc107 unwind label %.body121

.noexc107:                                        ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  br i1 %.sroa.0.0.ph.lcssa.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.noexc107
  br i1 %.sroa.01.0.ph.lcssa.i, label %bb.ay, label %_RNvCsgsNUVCRJO2f_13influxdb3_lib16maybe_print_help.exit

bb.ax:                                            ; preds = %.noexc107
  switch i8 %.sroa.02.0.ph.lcssa.i, label %_RNvCsgsNUVCRJO2f_13influxdb3_lib16maybe_print_help.exit [
    i8 -1, label %bb.bb
    i8 5, label %bb.bc
  ]

bb.ay:                                            ; preds = %bb.aw
  switch i8 %.sroa.02.0.ph.lcssa.i, label %_RNvCsgsNUVCRJO2f_13influxdb3_lib16maybe_print_help.exit [
    i8 -1, label %bb.az
    i8 5, label %bb.ba
  ]

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  store ptr @168, ptr %i.ce, align 8
  store ptr %i.ce, ptr %i.cf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  store ptr @170, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  store ptr @172, ptr %i.cb, align 8
  store ptr %i.cb, ptr %i.cc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  store ptr @174, ptr %i.ca, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  store ptr @176, ptr %i.bz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  store ptr @178, ptr %i.by, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  store ptr @180, ptr %i.bx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  store ptr @182, ptr %i.bv, align 8
  store ptr %i.bv, ptr %i.bw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  store ptr @184, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  store ptr @186, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  store ptr @188, ptr %i.bs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  store ptr @190, ptr %i.br, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  store ptr @192, ptr %i.bq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  store ptr @194, ptr %i.bo, align 8
  store ptr %i.bo, ptr %i.bp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  store ptr @196, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  store ptr @198, ptr %i.bm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  store ptr @200, ptr %i.bk, align 8
  store ptr %i.bk, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  store ptr @202, ptr %i.bi, align 8
  store ptr %i.bi, ptr %i.bj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  store ptr %i.cf, ptr %i.bh, align 8
  %.sroa.4119.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr @_RNvXsy_NtCshybWrl4lygw_10owo_colors6stylesINtB5_16UnderlineDisplayINtB5_11BoldDisplayReEENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.4119.0..sroa_idx.i, align 8
  %i.nc = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store ptr %i.cd, ptr %i.nc, align 8
  %.sroa.4123.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store ptr @_RNvXs7_NtCshybWrl4lygw_10owo_colors6stylesINtB5_11BoldDisplayReENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.4123.0..sroa_idx.i, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  store ptr %i.cc, ptr %i.nd, align 8
  %.sroa.4127.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  store ptr @_RNvXsy_NtCshybWrl4lygw_10owo_colors6stylesINtB5_16UnderlineDisplayINtB5_11BoldDisplayReEENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.4127.0..sroa_idx.i, align 8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store ptr %i.ca, ptr %i.ne, align 8
  %.sroa.4131.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  store ptr @_RNvXs7_NtCshybWrl4lygw_10owo_colors6stylesINtB5_11BoldDisplayReENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.4131.0..sroa_idx.i, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  store ptr %i.bz, ptr %i.nf, align 8
  %.sroa.4135.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  store ptr @_RNvXs7_NtCshybWrl4lygw_10owo_colors6stylesINtB5_11BoldDisplayReENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.4135.0..sroa_idx.i, align 8
  %i.ng = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  store ptr %i.by, ptr %i.ng, align 8
  %.sroa.4139.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 88
  store ptr @_RNvXs7_NtCshybWrl4lygw_10owo_colors6stylesINtB5_11BoldDisplayReENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.4139.0..sroa_idx.i, align 8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.bh, i64 96
  store ptr %i.bx, ptr %i.nh, align 8
  %.sroa.4143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 104
  store ptr @_RNvXs7_NtCshybWrl4lygw_10owo_colors6stylesINtB5_11BoldDisplayReENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.4143.0..sroa_idx.i, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.bh, i64 112
  store ptr %i.bw, ptr %i.ni, align 8
  %.sroa.4147.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 120
  store ptr @_RNvXsy_NtCshybWrl4lygw_10owo_colors6stylesINtB5_16UnderlineDisplayINtB5_11BoldDisplayReEENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.4147.0..sroa_idx.i, align 8
  %i.nj = getelementptr inbounds nuw i8, ptr %i.bh, i64 128
  store ptr %i.bu, ptr %i.nj, align 8
  %.sroa.4151.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 136
  store ptr @_RNvXs7_NtCshybWrl4lygw_10owo_colors6stylesINtB5_11BoldDisplayReENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.4151.0..sroa_idx.i, align 8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.bh, i64 144
  store ptr %i.bt, ptr %i.nk, align 8
  %.sroa.4155.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 152
  store ptr @_RNvXs7_NtCshybWrl4lygw_10owo_colors6stylesINtB5_11BoldDisplayReENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.4155.0..sroa_idx.i, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %i.bh, i64 160
  store ptr %i.bs, ptr %i.nl, align 8
  %.sroa.4159.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 168
  store ptr @_RNvXs7_NtCshybWrl4lygw_10owo_colors6stylesINtB5_11BoldDisplayReENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.4159.0..sroa_idx.i, align 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.bh, i64 176
  store ptr %i.br, ptr %i.nm, align 8
  %.sroa.4163.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 184
  store ptr @_RNvXs7_NtCshybWrl4lygw_10owo_colors6stylesINtB5_11BoldDisplayReENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.4163.0..sroa_idx.i, align 8
  %i.nn = getelementptr inbounds nuw i8, ptr %i.bh, i64 192
  store ptr %i.bq, ptr %i.nn, align 8
  %.sroa.4167.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 200
  store ptr @_RNvXs7_NtCshybWrl4lygw_10owo_colors6stylesINtB5_11BoldDisplayReENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.4167.0..sroa_idx.i, align 8
  %i.no = getelementptr inbounds nuw i8, ptr %i.bh, i64 208
  store ptr %i.bp, ptr %i.no, align 8
  %.sroa.4171.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 216
  store ptr @_RNvXsy_NtCshybWrl4lygw_10owo_colors6stylesINtB5_16UnderlineDisplayINtB5_11BoldDisplayReEENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.4171.0..sroa_idx.i, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.bh, i64 224
  store ptr %i.bn, ptr %i.np, align 8
  %.sroa.4175.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 232
  store ptr @_RNvXs7_NtCshybWrl4lygw_10owo_colors6stylesINtB5_11BoldDisplayReENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.4175.0..sroa_idx.i, align 8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.bh, i64 240
  store ptr %i.bm, ptr %i.nq, align 8
  %.sroa.4179.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 248
  store ptr @_RNvXs7_NtCshybWrl4lygw_10owo_colors6stylesINtB5_11BoldDisplayReENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.4179.0..sroa_idx.i, align 8
  %i.nr = getelementptr inbounds nuw i8, ptr %i.bh, i64 256
  store ptr %i.bl, ptr %i.nr, align 8
  %.sroa.4183.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 264
  store ptr @_RNvXsy_NtCshybWrl4lygw_10owo_colors6stylesINtB5_16UnderlineDisplayINtB5_11BoldDisplayReEENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.4183.0..sroa_idx.i, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %i.bh, i64 272
  store ptr %i.bj, ptr %i.ns, align 8
  %.sroa.4187.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 280
  store ptr @_RNvXsy_NtCshybWrl4lygw_10owo_colors6stylesINtB5_16UnderlineDisplayINtB5_11BoldDisplayReEENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.4187.0..sroa_idx.i, align 8
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr noundef nonnull @203, ptr noundef nonnull %i.bh)
          to label %.noexc108 unwind label %.body121

.noexc108:                                        ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  br label %.noexc108.invoke

.noexc108.invoke:                                 ; preds = %.noexc114, %.noexc112, %.noexc110, %.noexc108
  invoke void @_RNvNtCs2AWtUsOyxgP_3std7process4exit(i32 noundef 0) #44
          to label %.noexc108.cont unwind label %.body121

.noexc108.cont:                                   ; preds = %.noexc108.invoke
  unreachable

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  store ptr @205, ptr %i.bg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store ptr @207, ptr %i.bf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
end_hunk_0
begin_hunk_1_@_RNvCsgsNUVCRJO2f_13influxdb3_lib7startup:bb.a
  store ptr %i.cz, ptr %i.da, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  store ptr %i.dw, ptr %i.cy, align 8
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr @_RNvXsy_NtCshybWrl4lygw_10owo_colors6stylesINtB5_16UnderlineDisplayINtB5_11BoldDisplayReEENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.411.0..sroa_idx.i, align 8
  %i.ol = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store ptr %i.du, ptr %i.ol, align 8
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store ptr @_RNvXs7_NtCshybWrl4lygw_10owo_colors6stylesINtB5_11BoldDisplayReENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.415.0..sroa_idx.i, align 8
  %i.om = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store ptr %i.dt, ptr %i.om, align 8
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  store ptr @_RNvXsy_NtCshybWrl4lygw_10owo_colors6stylesINtB5_16UnderlineDisplayINtB5_11BoldDisplayReEENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.419.0..sroa_idx.i, align 8
  %i.on = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  store ptr %i.dr, ptr %i.on, align 8
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  store ptr @_RNvXs7_NtCshybWrl4lygw_10owo_colors6stylesINtB5_11BoldDisplayReENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.423.0..sroa_idx.i, align 8
  %i.oo = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  store ptr %i.dq, ptr %i.oo, align 8
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  store ptr @_RNvXs7_NtCshybWrl4lygw_10owo_colors6stylesINtB5_11BoldDisplayReENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.427.0..sroa_idx.i, align 8
  %i.op = getelementptr inbounds nuw i8, ptr %i.cy, i64 80
  store ptr %i.dp, ptr %i.op, align 8
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 88
  store ptr @_RNvXs7_NtCshybWrl4lygw_10owo_colors6stylesINtB5_11BoldDisplayReENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.431.0..sroa_idx.i, align 8
  %i.oq = getelementptr inbounds nuw i8, ptr %i.cy, i64 96
  store ptr %i.do, ptr %i.oq, align 8
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 104
  store ptr @_RNvXs7_NtCshybWrl4lygw_10owo_colors6stylesINtB5_11BoldDisplayReENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.435.0..sroa_idx.i, align 8
  %i.or = getelementptr inbounds nuw i8, ptr %i.cy, i64 112
  store ptr %i.dn, ptr %i.or, align 8
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 120
  store ptr @_RNvXsy_NtCshybWrl4lygw_10owo_colors6stylesINtB5_16UnderlineDisplayINtB5_11BoldDisplayReEENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.439.0..sroa_idx.i, align 8
  %i.os = getelementptr inbounds nuw i8, ptr %i.cy, i64 128
  store ptr %i.dl, ptr %i.os, align 8
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 136
  store ptr @_RNvXs7_NtCshybWrl4lygw_10owo_colors6stylesINtB5_11BoldDisplayReENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.443.0..sroa_idx.i, align 8
  %i.ot = getelementptr inbounds nuw i8, ptr %i.cy, i64 144
  store ptr %i.dk, ptr %i.ot, align 8
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 152
  store ptr @_RNvXs7_NtCshybWrl4lygw_10owo_colors6stylesINtB5_11BoldDisplayReENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.447.0..sroa_idx.i, align 8
  %i.ou = getelementptr inbounds nuw i8, ptr %i.cy, i64 160
  store ptr %i.dj, ptr %i.ou, align 8
  %.sroa.451.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 168
  store ptr @_RNvXs7_NtCshybWrl4lygw_10owo_colors6stylesINtB5_11BoldDisplayReENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.451.0..sroa_idx.i, align 8
  %i.ov = getelementptr inbounds nuw i8, ptr %i.cy, i64 176
  store ptr %i.di, ptr %i.ov, align 8
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 184
  store ptr @_RNvXs7_NtCshybWrl4lygw_10owo_colors6stylesINtB5_11BoldDisplayReENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.455.0..sroa_idx.i, align 8
  %i.ow = getelementptr inbounds nuw i8, ptr %i.cy, i64 192
  store ptr %i.dh, ptr %i.ow, align 8
  %.sroa.459.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 200
  store ptr @_RNvXs7_NtCshybWrl4lygw_10owo_colors6stylesINtB5_11BoldDisplayReENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.459.0..sroa_idx.i, align 8
  %i.ox = getelementptr inbounds nuw i8, ptr %i.cy, i64 208
  store ptr %i.dg, ptr %i.ox, align 8
  %.sroa.463.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 216
  store ptr @_RNvXsy_NtCshybWrl4lygw_10owo_colors6stylesINtB5_16UnderlineDisplayINtB5_11BoldDisplayReEENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.463.0..sroa_idx.i, align 8
  %i.oy = getelementptr inbounds nuw i8, ptr %i.cy, i64 224
  store ptr %i.de, ptr %i.oy, align 8
  %.sroa.467.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 232
  store ptr @_RNvXs7_NtCshybWrl4lygw_10owo_colors6stylesINtB5_11BoldDisplayReENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.467.0..sroa_idx.i, align 8
  %i.oz = getelementptr inbounds nuw i8, ptr %i.cy, i64 240
  store ptr %i.dd, ptr %i.oz, align 8
  %.sroa.471.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 248
  store ptr @_RNvXs7_NtCshybWrl4lygw_10owo_colors6stylesINtB5_11BoldDisplayReENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.471.0..sroa_idx.i, align 8
  %i.pa = getelementptr inbounds nuw i8, ptr %i.cy, i64 256
  store ptr %i.dc, ptr %i.pa, align 8
  %.sroa.475.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 264
  store ptr @_RNvXsy_NtCshybWrl4lygw_10owo_colors6stylesINtB5_16UnderlineDisplayINtB5_11BoldDisplayReEENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.475.0..sroa_idx.i, align 8
  %i.pb = getelementptr inbounds nuw i8, ptr %i.cy, i64 272
  store ptr %i.da, ptr %i.pb, align 8
  %.sroa.479.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 280
  store ptr @_RNvXsy_NtCshybWrl4lygw_10owo_colors6stylesINtB5_16UnderlineDisplayINtB5_11BoldDisplayReEENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.479.0..sroa_idx.i, align 8
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr noundef nonnull @245, ptr noundef nonnull %i.cy)
          to label %.noexc112 unwind label %.body121

.noexc112:                                        ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  br label %.noexc108.invoke

bb.bc:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  store ptr @207, ptr %i.cx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  store ptr @209, ptr %i.cv, align 8
  store ptr %i.cv, ptr %i.cw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  store ptr @242, ptr %i.ct, align 8
  store ptr %i.ct, ptr %i.cu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  store ptr @247, ptr %i.cr, align 8
  store ptr %i.cr, ptr %i.cs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  store ptr @249, ptr %i.cp, align 8
  store ptr %i.cp, ptr %i.cq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  store ptr @251, ptr %i.cn, align 8
  store ptr %i.cn, ptr %i.co, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  store ptr @253, ptr %i.cl, align 8
  store ptr %i.cl, ptr %i.cm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  store ptr @255, ptr %i.cj, align 8
  store ptr %i.cj, ptr %i.ck, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  store ptr @202, ptr %i.ch, align 8
  store ptr %i.ch, ptr %i.ci, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  store ptr %i.cx, ptr %i.cg, align 8
  %.sroa.483.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr @_RNvXs7_NtCshybWrl4lygw_10owo_colors6stylesINtB5_11BoldDisplayReENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.483.0..sroa_idx.i, align 8
  %i.pc = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store ptr %i.cw, ptr %i.pc, align 8
  %.sroa.487.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store ptr @_RNvXsy_NtCshybWrl4lygw_10owo_colors6stylesINtB5_16UnderlineDisplayINtB5_11BoldDisplayReEENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.487.0..sroa_idx.i, align 8
  %i.pd = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  store ptr %i.cu, ptr %i.pd, align 8
  %.sroa.491.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  store ptr @_RNvXsy_NtCshybWrl4lygw_10owo_colors6stylesINtB5_16UnderlineDisplayINtB5_11BoldDisplayReEENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.491.0..sroa_idx.i, align 8
  %i.pe = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  store ptr %i.cs, ptr %i.pe, align 8
  %.sroa.495.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  store ptr @_RNvXsy_NtCshybWrl4lygw_10owo_colors6stylesINtB5_16UnderlineDisplayINtB5_11BoldDisplayReEENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.495.0..sroa_idx.i, align 8
  %i.pf = getelementptr inbounds nuw i8, ptr %i.cg, i64 64
  store ptr %i.cq, ptr %i.pf, align 8
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 72
  store ptr @_RNvXsy_NtCshybWrl4lygw_10owo_colors6stylesINtB5_16UnderlineDisplayINtB5_11BoldDisplayReEENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.499.0..sroa_idx.i, align 8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.cg, i64 80
  store ptr %i.co, ptr %i.pg, align 8
  %.sroa.4103.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 88
  store ptr @_RNvXsy_NtCshybWrl4lygw_10owo_colors6stylesINtB5_16UnderlineDisplayINtB5_11BoldDisplayReEENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.4103.0..sroa_idx.i, align 8
  %i.ph = getelementptr inbounds nuw i8, ptr %i.cg, i64 96
  store ptr %i.cm, ptr %i.ph, align 8
  %.sroa.4107.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 104
  store ptr @_RNvXsy_NtCshybWrl4lygw_10owo_colors6stylesINtB5_16UnderlineDisplayINtB5_11BoldDisplayReEENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.4107.0..sroa_idx.i, align 8
  %i.pi = getelementptr inbounds nuw i8, ptr %i.cg, i64 112
  store ptr %i.ck, ptr %i.pi, align 8
  %.sroa.4111.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 120
  store ptr @_RNvXsy_NtCshybWrl4lygw_10owo_colors6stylesINtB5_16UnderlineDisplayINtB5_11BoldDisplayReEENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.4111.0..sroa_idx.i, align 8
  %i.pj = getelementptr inbounds nuw i8, ptr %i.cg, i64 128
  store ptr %i.ci, ptr %i.pj, align 8
  %.sroa.4115.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 136
  store ptr @_RNvXsy_NtCshybWrl4lygw_10owo_colors6stylesINtB5_16UnderlineDisplayINtB5_11BoldDisplayReEENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.4115.0..sroa_idx.i, align 8
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr noundef nonnull @256, ptr noundef nonnull %i.cg)
          to label %.noexc114 unwind label %.body121

.noexc114:                                        ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  br label %.noexc108.invoke

bb.bd:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !15889)
  call void @llvm.experimental.noalias.scope.decl(metadata !15890)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %i.hq, i64 24, i1 false), !alias.scope !15891
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE17unwrap_or_defaultCsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.be:                                            ; preds = %bb.au
  store i64 1, ptr %i.dx, align 8
  store i64 0, ptr %i.dy, align 8, !alias.scope !15892
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !15892
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !15892
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %.split333.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15889

.split333.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %bb.be
  %lpad.loopexit.split-lp562 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hq)
          to label %.body.i unwind label %bb.bf, !noalias !15889

bb.bf:                                            ; preds = %.split333.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.pk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46, !noalias !15889
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %bb.be
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hq)
          to label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE17unwrap_or_defaultCsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE17unwrap_or_defaultCsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  %i.pl = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !nonnull !14, !noundef !14 ; 5 uses
  %i.pm = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noundef !14
  switch i64 %i.pm, label %bb.bj [
    i64 2, label %bb.bg
    i64 6, label %bb.bh
    i64 10, label %bb.bi
  ]

bb.bg:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE17unwrap_or_defaultCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.pn = load i16, ptr %i.pl, align 1
  %i.po = icmp ne i16 %i.pn, 26669
  %i.pp = zext i1 %i.po to i32
  %i.pq = icmp eq i32 %i.pp, 0
  br i1 %i.pq, label %.split337.us, label %bb.bj

bb.bh:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE17unwrap_or_defaultCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.pr = load i32, ptr %i.pl, align 1
  %i.ps = xor i32 %i.pr, 1701326125
  %i.pt = getelementptr i8, ptr %i.pl, i64 4
  %i.pu = load i16, ptr %i.pt, align 1
  %i.pv = zext i16 %i.pu to i32
  %i.pw = xor i32 %i.pv, 28780
  %i.px = or i32 %i.ps, %i.pw
  %i.py = icmp ne i32 %i.px, 0
  %i.pz = zext i1 %i.py to i32
  %i.qa = icmp eq i32 %i.pz, 0
  br i1 %i.qa, label %.split337.us, label %bb.bj

bb.bi:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE17unwrap_or_defaultCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.qb = load i64, ptr %i.pl, align 1
  %i.qc = xor i64 %i.qb, 7002376606491094317
  %i.qd = getelementptr i8, ptr %i.pl, i64 8
  %i.qe = load i16, ptr %i.qd, align 1
  %i.qf = zext i16 %i.qe to i64
  %i.qg = xor i64 %i.qf, 27756
  %i.qh = or i64 %i.qc, %i.qg
  %i.qi = icmp ne i64 %i.qh, 0
  %i.qj = zext i1 %i.qi to i32
  %i.qk = icmp eq i32 %i.qj, 0
  br i1 %i.qk, label %.split337.us, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE17unwrap_or_defaultCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %.split342.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split342.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.as, %bb.bj
  %lpad.loopexit.split-lp567 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %.body.i unwind label %bb.bk

bb.bk:                                            ; preds = %.split342.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ql = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %bb.bj
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split337.us:                                     ; preds = %bb.bg, %bb.bh, %bb.bi, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar
  %.us-phi338 = phi i8 [ 8, %bb.ae ], [ 9, %bb.af ], [ -1, %bb.an ], [ 10, %bb.aj ], [ -1, %bb.ar ], [ -1, %bb.am ], [ 0, %bb.ao ], [ 1, %bb.ap ], [ 2, %bb.ak ], [ 3, %bb.aq ], [ 4, %bb.ag ], [ 5, %bb.ah ], [ 6, %bb.al ], [ 7, %bb.ai ], [ %.sroa.02.0.ph388.i, %bb.bi ], [ %.sroa.02.0.ph388.i, %bb.bh ], [ %.sroa.02.0.ph388.i, %bb.bg ] ; 2 uses
  %.us-phi339 = phi i1 [ %.sroa.01.0.ph389.i, %bb.ae ], [ %.sroa.01.0.ph389.i, %bb.af ], [ %.sroa.01.0.ph389.i, %bb.an ], [ %.sroa.01.0.ph389.i, %bb.aj ], [ %.sroa.01.0.ph389.i, %bb.ar ], [ true, %bb.am ], [ %.sroa.01.0.ph389.i, %bb.ao ], [ %.sroa.01.0.ph389.i, %bb.ap ], [ %.sroa.01.0.ph389.i, %bb.ak ], [ %.sroa.01.0.ph389.i, %bb.aq ], [ %.sroa.01.0.ph389.i, %bb.ag ], [ %.sroa.01.0.ph389.i, %bb.ah ], [ %.sroa.01.0.ph389.i, %bb.al ], [ %.sroa.01.0.ph389.i, %bb.ai ], [ true, %bb.bi ], [ %.sroa.01.0.ph389.i, %bb.bg ], [ %.sroa.01.0.ph389.i, %bb.bh ] ; 2 uses
  %.us-phi340 = phi i1 [ %.sroa.0.0.ph390.i, %bb.ae ], [ %.sroa.0.0.ph390.i, %bb.af ], [ true, %bb.an ], [ %.sroa.0.0.ph390.i, %bb.aj ], [ true, %bb.ar ], [ %.sroa.0.0.ph390.i, %bb.am ], [ %.sroa.0.0.ph390.i, %bb.ao ], [ %.sroa.0.0.ph390.i, %bb.ap ], [ %.sroa.0.0.ph390.i, %bb.ak ], [ %.sroa.0.0.ph390.i, %bb.aq ], [ %.sroa.0.0.ph390.i, %bb.ag ], [ %.sroa.0.0.ph390.i, %bb.ah ], [ %.sroa.0.0.ph390.i, %bb.al ], [ %.sroa.0.0.ph390.i, %bb.ai ], [ %.sroa.0.0.ph390.i, %bb.bi ], [ true, %bb.bg ], [ true, %bb.bh ] ; 2 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i310.i unwind label %bb.bl

bb.bl:                                            ; preds = %.split337.us
  %i.qm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %.body.i unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.qn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i310.i: ; preds = %.split337.us
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit314.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %i.qo = load ptr, ptr %i.hk, align 8, !alias.scope !15893, !nonnull !14, !noundef !14
  %i.qp = load ptr, ptr %i.hl, align 8, !alias.scope !15893, !nonnull !14, !noundef !14 ; 2 uses
  %i.qq = icmp eq ptr %i.qp, %i.qo
  br i1 %i.qq, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit314.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i310.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %i.qr = load ptr, ptr %i.hk, align 8, !alias.scope !15895, !nonnull !14, !noundef !14
  %i.qs = load ptr, ptr %i.hl, align 8, !alias.scope !15895, !nonnull !14, !noundef !14 ; 2 uses
  %i.qt = icmp eq ptr %i.qs, %i.qr
  br i1 %i.qt, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.lr.ph.i

bb.bn:                                            ; preds = %.body.i
  %i.qu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

_RNvCsgsNUVCRJO2f_13influxdb3_lib16maybe_print_help.exit: ; preds = %bb.ay, %bb.ax, %bb.aw, %.noexc106
  invoke void @_RNvMs4_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks5tokioNtB5_13TokioIoConfig27copy_deprecated_env_aliases()
          to label %bb.bo unwind label %.body121

bb.bo:                                            ; preds = %_RNvCsgsNUVCRJO2f_13influxdb3_lib16maybe_print_help.exit
  invoke void @_RNvMsb_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks5tokioNtB5_21TokioDatafusionConfig27copy_deprecated_env_aliases()
          to label %bb.bp unwind label %.body121

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !15896
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !15896
  store i64 0, ptr %i.w, align 8, !noalias !15896
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @169, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !15896
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 9, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !15896
  invoke void @_RNvNvMNtNtCsbyItyepKEh3_12clap_builder7builder7commandNtB4_7Command3new9new_inner(ptr noalias noundef nonnull sret([776 x i8]) align 8 captures(none) dereferenceable(776) %i.x, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w)
          to label %.noexc118 unwind label %.body121

.noexc118:                                        ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !15896
  invoke void @_RNvXs7_CsgsNUVCRJO2f_13influxdb3_libNtB5_6ConfigNtNtCsbyItyepKEh3_12clap_builder6derive4Args12augment_args(ptr noalias noundef nonnull sret([776 x i8]) align 8 captures(address) dereferenceable(776) %i.gb, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(776) %i.x)
          to label %bb.bq unwind label %.body121

bb.bq:                                            ; preds = %.noexc118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !15896
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ga)
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ga, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
          to label %bb.br unwind label %bb.jb

.body121:                                         ; preds = %.noexc108.invoke, %bb.a, %bb.b, %bb.y, %_RNvCsgsNUVCRJO2f_13influxdb3_lib16maybe_print_help.exit, %bb.bo, %bb.gr, %bb.e, %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCskjjdgtxHS4z_7dotenvy6errors5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %bb.q, %bb.z, %.thread430.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bp, %.noexc118, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMNtNtCsbyItyepKEh3_12clap_builder7builder7commandNtBH_7Command16get_matches_fromINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB23_6string6StringEB2u_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.qv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !15897
  invoke fastcc void @_RINvMNtNtCsbyItyepKEh3_12clap_builder7builder7commandNtB3_7Command24try_get_matches_from_mutINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1x_6string6StringEB1Y_ECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(776) %i.gb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ga)
          to label %bb.bs unwind label %bb.by, !noalias !15898

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !15897
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %i.u, ptr noundef nonnull align 8 dereferenceable(776) %i.gb, i64 776, i1 false), !noalias !15899
  %i.qw = load i64, ptr %i.v, align 8, !range !28, !noalias !15897, !noundef !14
  %i.qx = icmp eq i64 %i.qw, -1
  br i1 %i.qx, label %bb.bt, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMNtNtCsbyItyepKEh3_12clap_builder7builder7commandNtBH_7Command16get_matches_fromINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB23_6string6StringEB2u_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.bt:                                            ; preds = %bb.bs
  %i.qy = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.qz = load ptr, ptr %i.qy, align 8, !noalias !15897, !nonnull !14, !align !24, !noundef !14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !15900
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %i.s, ptr noundef nonnull align 8 dereferenceable(776) %i.gb, i64 776, i1 false), !noalias !15899
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !15897
  store ptr %i.qz, ptr %i.t, align 8, !noalias !15900
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbyItyepKEh3_12clap_builder7builder7command7CommandECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(776) %i.s)
          to label %bb.bv unwind label %bb.bu, !noalias !15901

bb.bu:                                            ; preds = %bb.bv, %bb.bt
  %i.ra = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbyItyepKEh3_12clap_builder5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull align 8 %i.qz) #45
          to label %.body unwind label %bb.bx, !noalias !15901

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !15900
  invoke void @_RNvMNtCsbyItyepKEh3_12clap_builder5errorNtB2_5Error4exitCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t) #44
          to label %bb.bw unwind label %bb.bu, !noalias !15901

bb.bw:                                            ; preds = %bb.bv
  unreachable

bb.bx:                                            ; preds = %bb.bu
  %i.rb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46, !noalias !15901
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMNtNtCsbyItyepKEh3_12clap_builder7builder7commandNtBH_7Command16get_matches_fromINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB23_6string6StringEB2u_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gc, ptr noundef nonnull align 8 dereferenceable(56) %i.v, i64 56, i1 false), !noalias !15902
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbyItyepKEh3_12clap_builder7builder7command7CommandECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(776) %i.u)
          to label %bb.ca unwind label %.body121

bb.by:                                            ; preds = %bb.br
  %i.rc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbyItyepKEh3_12clap_builder7builder7command7CommandECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(776) %i.gb) #45
          to label %.body unwind label %bb.bz, !noalias !15899
end_hunk_1
begin_hunk_2_@_RNvMs2_NtNtCs3tYbhKVn990_6flate22gz7bufreadINtB5_9GzDecoderINtNtB9_9bufreader9BufReaderRShEE3newCsgsNUVCRJO2f_13influxdb3_lib:bb.a
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [104 x i8], align 8               ; 10 uses
  %i.g = alloca [104 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 82
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.58.0..sroa_idx, i8 0, i64 10, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  store i8 0, ptr %i.h, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 81
  store i8 0, ptr %.sroa.47.0..sroa_idx, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store i8 0, ptr %i.i, align 8
  store i64 -1, ptr %i.g, align 8
  %.sroa.010.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 -1, ptr %.sroa.010.sroa.5.0..sroa_idx, align 8
  %.sroa.010.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 -1, ptr %.sroa.010.sroa.7.0..sroa_idx, align 8
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store i32 0, ptr %.sroa.611.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 76
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.j = invoke fastcc noundef ptr @_RINvMs_NtCs3tYbhKVn990_6flate22gzNtB5_14GzHeaderParser5parseINtNtB7_9bufreader9BufReaderRShEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(104) %i.g, ptr noalias noundef align 8 dereferenceable(48) %1)
          to label %bb.c unwind label %.thread    ; 4 uses

bb.b:                                             ; preds = %.body
  br i1 %.sroa.01.3, label %.thread52, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs3tYbhKVn990_6flate29bufreader9BufReaderRShEECsgsNUVCRJO2f_13influxdb3_lib.exit

.thread:                                          ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.thread52

bb.c:                                             ; preds = %bb.a
  store ptr %i.j, ptr %i.e, align 8
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call fastcc noundef i8 @_RNvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5Error4kind(ptr nonnull %i.j)
  %i.m = icmp eq i8 %i.l, 13
  br i1 %i.m, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %i.g, i64 104, i1 false)
  invoke void @_RNvXs0_NtCs3tYbhKVn990_6flate22gzNtB5_8GzHeaderINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_14GzHeaderParserE4from(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.c)
          to label %.thread36 unwind label %.thread34

.thread34:                                        ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.thread56

.thread36:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 80, i1 false)
  store i64 -9223372036854775808, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.j, ptr %i.p, align 8
  store i64 -9223372036854775806, ptr %i.f, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.f, ptr noundef nonnull align 8 dereferenceable(104) %i.g, i64 104, i1 false)
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.h unwind label %bb.t

bb.h:                                             ; preds = %.thread36, %bb.f, %bb.g
  %.sroa.01.3 = phi i1 [ false, %bb.g ], [ false, %.thread36 ], [ true, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.f, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.628)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.426.0.copyload = load ptr, ptr %.sroa.426.0..sroa_idx, align 8 ; 3 uses
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.527.0.copyload = load i64, ptr %.sroa.527.0..sroa_idx, align 8 ; 3 uses
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.628, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.628.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15979
  invoke void @_RNvMs0_NtCs3tYbhKVn990_6flate23memNtB5_10Decompress3new(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.a, i1 noundef zeroext false)
          to label %bb.k unwind label %bb.i, !noalias !15979

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = icmp eq i64 %.sroa.527.0.copyload, 0
  br i1 %i.r, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.426.0.copyload) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.426.0.copyload, i64 noundef range(i64 1, 0) %.sroa.527.0.copyload, i64 noundef 1) #47, !noalias !15979
  br label %.body

.body:                                            ; preds = %bb.i, %bb.j
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs3tYbhKVn990_6flate22gz7bufread7GzStateECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(104) %i.b) #45
          to label %bb.b unwind label %bb.s

bb.k:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.628, i64 16, i1 false)
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.0.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15979
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.628)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.f, i64 104, i1 false)
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %.sroa.426.0.copyload, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %.sroa.527.0.copyload, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i8 0, ptr %i.t, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %.sroa.01.3, label %bb.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3tYbhKVn990_6flate22gz14GzHeaderParserECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3tYbhKVn990_6flate22gz14GzHeaderParserECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3tYbhKVn990_6flate22gz13GzHeaderStateECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !15980)
  %.val.i = load i8, ptr %i.h, align 8, !range !36, !alias.scope !15980, !noundef !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %.val1.i = load ptr, ptr %i.u, align 8, !alias.scope !15980 ; 6 uses
  switch i8 %.val.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3tYbhKVn990_6flate22gz13GzHeaderStateECsgsNUVCRJO2f_13influxdb3_lib.exit.i [
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
    i8 4, label %bb.p
    i8 5, label %bb.q
  ]

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs3tYbhKVn990_6flate23crc12impl_zlib_rs3CrcEEECsgsNUVCRJO2f_13influxdb3_lib.exit.sink.split.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef 16, i64 noundef 8) #47, !noalias !15980
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3tYbhKVn990_6flate22gz13GzHeaderStateECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.m:                                             ; preds = %bb.l
  %i.v = icmp eq ptr %.val1.i, null
  br i1 %i.v, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3tYbhKVn990_6flate22gz13GzHeaderStateECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs3tYbhKVn990_6flate23crc12impl_zlib_rs3CrcEEECsgsNUVCRJO2f_13influxdb3_lib.exit.sink.split.i.i

bb.n:                                             ; preds = %bb.l
  %i.w = icmp eq ptr %.val1.i, null
  br i1 %i.w, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3tYbhKVn990_6flate22gz13GzHeaderStateECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs3tYbhKVn990_6flate23crc12impl_zlib_rs3CrcEEECsgsNUVCRJO2f_13influxdb3_lib.exit.sink.split.i.i

bb.o:                                             ; preds = %bb.l
  %i.x = icmp eq ptr %.val1.i, null
  br i1 %i.x, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3tYbhKVn990_6flate22gz13GzHeaderStateECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs3tYbhKVn990_6flate23crc12impl_zlib_rs3CrcEEECsgsNUVCRJO2f_13influxdb3_lib.exit.sink.split.i.i

bb.p:                                             ; preds = %bb.l
  %i.y = icmp eq ptr %.val1.i, null
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3tYbhKVn990_6flate22gz13GzHeaderStateECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs3tYbhKVn990_6flate23crc12impl_zlib_rs3CrcEEECsgsNUVCRJO2f_13influxdb3_lib.exit.sink.split.i.i

bb.q:                                             ; preds = %bb.l
  %i.z = icmp eq ptr %.val1.i, null
  br i1 %i.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3tYbhKVn990_6flate22gz13GzHeaderStateECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs3tYbhKVn990_6flate23crc12impl_zlib_rs3CrcEEECsgsNUVCRJO2f_13influxdb3_lib.exit.sink.split.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3tYbhKVn990_6flate22gz13GzHeaderStateECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs3tYbhKVn990_6flate23crc12impl_zlib_rs3CrcEEECsgsNUVCRJO2f_13influxdb3_lib.exit.sink.split.i.i, %bb.l
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3tYbhKVn990_6flate22gz8GzHeaderECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.g)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3tYbhKVn990_6flate22gz14GzHeaderParserECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.r:                                             ; preds = %.thread52
  br i1 %.sroa.04.033, label %.thread56, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs3tYbhKVn990_6flate29bufreader9BufReaderRShEECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.s:                                             ; preds = %.thread52, %bb.t, %.body
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.t:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs3tYbhKVn990_6flate22gz7bufread7GzStateECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(104) %i.f) #45
          to label %.thread56 unwind label %bb.s

.thread52:                                        ; preds = %.thread, %bb.b
  %.sroa.04.033 = phi i1 [ true, %.thread ], [ false, %bb.b ]
  %.pn.pn32 = phi { ptr, i32 } [ %i.k, %.thread ], [ %i.q, %bb.b ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3tYbhKVn990_6flate22gz14GzHeaderParserECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(104) %i.g) #45
          to label %bb.r unwind label %bb.s

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs3tYbhKVn990_6flate29bufreader9BufReaderRShEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.b, %bb.u, %.thread56, %bb.r
  %.pn2147 = phi { ptr, i32 } [ %.pn2159, %bb.u ], [ %.pn.pn32, %bb.r ], [ %.pn2159, %.thread56 ], [ %i.q, %bb.b ]
  resume { ptr, i32 } %.pn2147

.thread56:                                        ; preds = %bb.t, %.thread34, %bb.r
  %.pn2159 = phi { ptr, i32 } [ %.pn.pn32, %bb.r ], [ %i.n, %.thread34 ], [ %i.ab, %bb.t ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val24 = load i64, ptr %i.ac, align 8, !noundef !14 ; 2 uses
  %i.ad = icmp eq i64 %.val24, 0
  br i1 %i.ad, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs3tYbhKVn990_6flate29bufreader9BufReaderRShEECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.u

bb.u:                                             ; preds = %.thread56
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val23 = load ptr, ptr %i.ae, align 8, !nonnull !14, !noundef !14
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23, i64 noundef range(i64 1, 0) %.val24, i64 noundef 1) #47
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs3tYbhKVn990_6flate29bufreader9BufReaderRShEECsgsNUVCRJO2f_13influxdb3_lib.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsc96bKABWO34_9hashbrown3mapINtB5_7HashMapNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIduE6insertCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 13 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16026)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16027
  invoke void @_RNvXs1_NtCs4NRVxsYgnAr_4core4hashINtB5_18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherENtB5_11BuildHasher12build_hasherCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !16028)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !16029, !nonnull !14, !noundef !14
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !16029, !noundef !14 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16030)
  call void @llvm.experimental.noalias.scope.decl(metadata !16031)
  call void @llvm.experimental.noalias.scope.decl(metadata !16032), !noalias !16028
  call void @llvm.experimental.noalias.scope.decl(metadata !16033), !noalias !16028
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !16034, !noalias !16035, !noundef !14
  %i.j = add i64 %i.i, %i.f
  %i.k = mul i64 %i.j, 6364136223846793005        ; 3 uses
  %i.l = icmp samesign ugt i64 %i.f, 8
  br i1 %i.l, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.m = icmp samesign ugt i64 %i.f, 1
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %i.f, 1
  br i1 %i.n, label %bb.e, label %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.o = icmp samesign ugt i64 %i.f, 3
  %i.p = getelementptr i8, ptr %i.g, i64 %i.f     ; 2 uses
  br i1 %i.o, label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i, label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr %i.g, align 1, !alias.scope !16036, !noalias !16029, !noundef !14
  %i.r = zext i8 %i.q to i64                      ; 2 uses
  br label %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i

_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i: ; preds = %bb.d
  %.sroa.0.0.copyload.i29.i.i.i = load i16, ptr %i.g, align 1, !alias.scope !16037, !noalias !16038
  %i.s = zext i16 %.sroa.0.0.copyload.i29.i.i.i to i64
  %i.t = getelementptr i8, ptr %i.p, i64 -1
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !16036, !noalias !16029, !noundef !14
  %i.v = zext i8 %i.u to i64
  br label %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i

_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i: ; preds = %bb.d
  %.sroa.0.0.copyload.i31.i.i.i = load i32, ptr %i.g, align 1, !alias.scope !16037, !noalias !16039
  %i.w = zext i32 %.sroa.0.0.copyload.i31.i.i.i to i64
  %i.x = getelementptr i8, ptr %i.p, i64 -4
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.x, align 1, !alias.scope !16037, !noalias !16040
  %i.y = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  br label %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i

_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i: ; preds = %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i, %bb.e, %bb.c
  %.sroa.7.0.i.i.i = phi i64 [ %i.y, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i ], [ %i.v, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i ], [ %i.r, %bb.e ], [ 0, %bb.c ]
  %.sroa.068.0.i.i.i = phi i64 [ %i.w, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i ], [ %i.s, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i ], [ %i.r, %bb.e ], [ 0, %bb.c ]
  %i.z = load i64, ptr %i.a, align 8, !alias.scope !16034, !noalias !16035, !noundef !14
  %i.aa = xor i64 %i.z, %.sroa.068.0.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !16034, !noalias !16035, !noundef !14
  %i.ad = xor i64 %i.ac, %.sroa.7.0.i.i.i
  %i.ae = zext i64 %i.aa to i128
  %i.af = zext i64 %i.ad to i128
  %i.ag = mul nuw i128 %i.af, %i.ae               ; 2 uses
  %i.ah = lshr i128 %i.ag, 64
  %i.ai = xor i128 %i.ah, %i.ag
  %i.aj = trunc i128 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !16034, !noalias !16035, !noundef !14 ; 2 uses
  %i.am = add i64 %i.al, %i.k
  %i.an = xor i64 %i.am, %i.aj                    ; 2 uses
  %i.ao = call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 23)
  br label %.loopexit14

bb.f:                                             ; preds = %.noexc
  %i.ap = icmp samesign ugt i64 %i.f, 16
  br i1 %i.ap, label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i, label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64.exit.i.i.i

_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64.exit.i.i.i: ; preds = %bb.f
  %.sroa.0.0.copyload.i33.i.i.i = load i64, ptr %i.g, align 1, !alias.scope !16037, !noalias !16041
  %i.aq = getelementptr i8, ptr %i.g, i64 %i.f
  %i.ar = getelementptr i8, ptr %i.aq, i64 -8
  %.sroa.0.0.copyload.i25.i.i.i = load i64, ptr %i.ar, align 1, !alias.scope !16037, !noalias !16029
  %i.as = load i64, ptr %i.a, align 8, !alias.scope !16034, !noalias !16035, !noundef !14
  %i.at = xor i64 %i.as, %.sroa.0.0.copyload.i33.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !16034, !noalias !16035, !noundef !14
  %i.aw = xor i64 %i.av, %.sroa.0.0.copyload.i25.i.i.i
  %i.ax = zext i64 %i.at to i128
  %i.ay = zext i64 %i.aw to i128
  %i.az = mul nuw i128 %i.ay, %i.ax               ; 2 uses
  %i.ba = lshr i128 %i.az, 64
  %i.bb = xor i128 %i.ba, %i.az
  %i.bc = trunc i128 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !16034, !noalias !16035, !noundef !14 ; 2 uses
  %i.bf = add i64 %i.be, %i.k
  %i.bg = xor i64 %i.bf, %i.bc                    ; 2 uses
  %i.bh = call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 23)
  br label %.loopexit14

_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i: ; preds = %bb.f
  %i.bi = getelementptr i8, ptr %i.g, i64 %i.f
  %i.bj = getelementptr i8, ptr %i.bi, i64 -16
  %.sroa.0.0.copyload.i27.i.i.i = load i128, ptr %i.bj, align 1, !alias.scope !16037, !noalias !16029 ; 2 uses
  %.sroa.017.0.extract.trunc.i.i.i = trunc i128 %.sroa.0.0.copyload.i27.i.i.i to i64
  %.sroa.4.0.extract.shift.i.i.i = lshr i128 %.sroa.0.0.copyload.i27.i.i.i, 64
  %i.bk = load i64, ptr %i.a, align 8, !alias.scope !16034, !noalias !16035, !noundef !14 ; 2 uses
  %i.bl = xor i64 %i.bk, %.sroa.017.0.extract.trunc.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !16034, !noalias !16035, !noundef !14
  %i.bo = zext i64 %i.bl to i128
  %i.bp = zext i64 %i.bn to i128                  ; 2 uses
  %i.bq = xor i128 %.sroa.4.0.extract.shift.i.i.i, %i.bp
  %i.br = mul nuw i128 %i.bq, %i.bo               ; 2 uses
  %i.bs = lshr i128 %i.br, 64
  %i.bt = xor i128 %i.bs, %i.br
  %i.bu = trunc i128 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !16034, !noalias !16035, !noundef !14 ; 3 uses
  %i.bx = add i64 %i.bw, %i.k
  %i.by = xor i64 %i.bx, %i.bu                    ; 2 uses
  %i.bz = call noundef i64 @llvm.fshl.i64(i64 %i.by, i64 %i.by, i64 23)
  br label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i

_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i: ; preds = %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i
  %.sroa.0.0105.i.i.i = phi ptr [ %i.g, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i ], [ %i.ca, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i ] ; 2 uses
  %.sroa.11.0104.i.i.i = phi i64 [ %i.f, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i ], [ %i.cb, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i ]
  %storemerge103.i.i.i = phi i64 [ %i.bz, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i ], [ %i.cl, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0105.i.i.i, i64 16
  %i.cb = add nsw i64 %.sroa.11.0104.i.i.i, -16   ; 2 uses
  %.sroa.0.0.copyload.i35.i.i.i = load i128, ptr %.sroa.0.0105.i.i.i, align 1, !alias.scope !16037, !noalias !16042 ; 2 uses
  %.sroa.018.0.extract.trunc.i.i.i = trunc i128 %.sroa.0.0.copyload.i35.i.i.i to i64
  %.sroa.419.0.extract.shift.i.i.i = lshr i128 %.sroa.0.0.copyload.i35.i.i.i, 64
  %i.cc = xor i64 %i.bk, %.sroa.018.0.extract.trunc.i.i.i
  %i.cd = zext i64 %i.cc to i128
  %i.ce = xor i128 %.sroa.419.0.extract.shift.i.i.i, %i.bp
  %i.cf = mul nuw i128 %i.ce, %i.cd               ; 2 uses
  %i.cg = lshr i128 %i.cf, 64
  %i.ch = xor i128 %i.cg, %i.cf
  %i.ci = trunc i128 %i.ch to i64
  %i.cj = add i64 %storemerge103.i.i.i, %i.bw
  %i.ck = xor i64 %i.cj, %i.ci                    ; 2 uses
  %i.cl = call noundef i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 23) ; 2 uses
  %i.cm = icmp ugt i64 %i.cb, 16
  br i1 %i.cm, label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i, label %.loopexit14

.loopexit14:                                      ; preds = %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64.exit.i.i.i, %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i
  %.val1.i = phi i64 [ %i.al, %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i ], [ %i.be, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64.exit.i.i.i ], [ %i.bw, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i ]
  %.lcssa.sink.i.i.i = phi i64 [ %i.ao, %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i ], [ %i.bh, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64.exit.i.i.i ], [ %i.cl, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i ]
  %i.cn = xor i64 %.lcssa.sink.i.i.i, 255
  %i.co = zext i64 %i.cn to i128
  %i.cp = mul nuw nsw i128 %i.co, 6364136223846793005 ; 2 uses
  %i.cq = lshr i128 %i.cp, 64
  %i.cr = xor i128 %i.cq, %i.cp
  %i.cs = trunc i128 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cu = load i32, ptr %i.ct, align 8, !alias.scope !16029, !noundef !14
  %i.cv = zext i32 %i.cu to i64
  %i.cw = xor i64 %i.cs, %i.cv
  %i.cx = zext i64 %i.cw to i128
  %i.cy = mul nuw nsw i128 %i.cx, 6364136223846793005 ; 2 uses
  %i.cz = lshr i128 %i.cy, 64
  %i.da = xor i128 %i.cz, %i.cy
  %i.db = trunc i128 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dd = load i32, ptr %i.dc, align 4, !alias.scope !16029, !noundef !14
  %i.de = zext i32 %i.dd to i64
  %i.df = xor i64 %i.db, %i.de
  %i.dg = zext i64 %i.df to i128
  %i.dh = mul nuw nsw i128 %i.dg, 6364136223846793005 ; 2 uses
  %i.di = lshr i128 %i.dh, 64
  %i.dj = xor i128 %i.di, %i.dh                   ; 2 uses
  %i.dk = trunc i128 %i.dj to i64
  %i.dl = and i128 %i.dj, 18446744073709551615
end_hunk_2
