inline.NumInlined: 13443
inline.NumDeleted: 3890
begin_hunk_0_@_RNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtB7_16AsyncArrowWriterNtNtB7_5store19ParquetObjectWriterE8do_write0Cs14kWLkQVSKO_14deltalake_core:bb.a
    i8 3, label %bb.i
  ]

default.unreachable44:                            ; preds = %bb.a
  unreachable

.body:                                            ; preds = %bb.t, %bb.q, %bb.p, %bb.h, %bb.c
  %.pn4.pn = phi { ptr, i32 } [ %i.ai, %bb.t ], [ %i.aa, %bb.p ], [ %i.o, %bb.h ], [ %i.i, %bb.c ], [ %i.aa, %bb.q ]
  store i8 2, ptr %i.e, align 8
  resume { ptr, i32 } %.pn4.pn

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !nonnull !4, !align !18, !noundef !4 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 256 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17487)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !alias.scope !17490
  store i64 0, ptr %i.h, align 8, !alias.scope !17492, !noalias !17487
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !17492, !noalias !17487
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !17492, !noalias !17487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXsE_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.body

bb.d:                                             ; preds = %bb.b
  %i.j = invoke { ptr, ptr } @_RNvXs_NtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_writer5storeNtB4_19ParquetObjectWriterNtB6_15AsyncFileWriter5write(ptr noalias noundef nonnull align 8 dereferenceable(224) %i.g, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c)
          to label %bb.e unwind label %bb.c       ; 2 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.k = extractvalue { ptr, ptr } %i.j, 0
  %i.l = extractvalue { ptr, ptr } %i.j, 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.l, ptr %i.n, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @410) #50
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @410) #50
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val8 = load ptr, ptr %i.q, align 8
  %i.p = getelementptr i8, ptr %1, i64 16
  %.val9 = load ptr, ptr %i.p, align 8, !nonnull !4, !align !18, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val8, ptr nonnull %.val9) #46
          to label %.body unwind label %bb.x

bb.i:                                             ; preds = %bb.e, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.r = load i64, ptr %i.b, align 8, !range !1310, !noundef !4 ; 4 uses
  %i.s = icmp eq i64 %i.r, 9
  br i1 %i.s, label %bb.k, label %bb.l

common.ret:                                       ; preds = %bb.v, %bb.k
  %storemerge = phi i8 [ 1, %bb.v ], [ 3, %bb.k ]
  store i8 %storemerge, ptr %i.e, align 8
  ret void

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 9, ptr %0, align 8
  br label %common.ret

bb.l:                                             ; preds = %bb.j
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %i.q, align 8             ; 5 uses
  %i.t = getelementptr i8, ptr %1, i64 16
  %.val7 = load ptr, ptr %i.t, align 8, !nonnull !4, !align !18, !noundef !4 ; 5 uses
  %i.u = load ptr, ptr %.val7, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.u(ptr noundef nonnull %.val)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %.val7, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !16, !invariant.load !4 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = getelementptr inbounds nuw i8, ptr %.val7, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !3, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.w, i64 noundef range(i64 1, 536870913) %i.z) #40
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.p:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val7, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !16, !invariant.load !4 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ae = getelementptr inbounds nuw i8, ptr %.val7, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !3, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #40
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.o, %bb.n
  %.not.i = icmp eq i64 %i.r, 8
  br i1 %.not.i, label %bb.v, label %bb.r

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17493
  store i64 %i.r, ptr %i.a, align 8, !noalias !17497
  %.sroa.4.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx23, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, i64 24, i1 false), !noalias !17497
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !17498
  %i.ag = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 32, i64 noundef range(i64 8, 17) 8) #40, !noalias !17498 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.s, label %bb.w, !prof !52

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #48
          to label %.noexc.i.i unwind label %bb.t, !noalias !17504

.noexc.i.i:                                       ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #46
          to label %.body unwind label %bb.u, !noalias !17505

bb.u:                                             ; preds = %bb.t
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !17505
  unreachable

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit, %bb.w
  %.sroa.1019.03338 = phi ptr [ %i.ag, %bb.w ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.027.0 = phi i64 [ 5, %bb.w ], [ 8, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit ]
  store i64 %.sroa.027.0, ptr %0, align 8
  %.sroa.328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.1019.03338, ptr %.sroa.328.0..sroa_idx, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @221, ptr %.sroa.429.0..sroa_idx, align 8
  br label %common.ret

bb.w:                                             ; preds = %bb.r
  store i64 %i.r, ptr %i.ag, align 8, !noalias !17497
  %.sroa.4.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx24, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, i64 24, i1 false), !noalias !17497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17493
  br label %bb.v

bb.x:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB7_13CreateBuilder22into_table_and_actions0Bb_(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 16 captures(none) dereferenceable(576) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.3.i = alloca [88 x i8], align 8          ; 6 uses
  %i.h = alloca [96 x i8], align 16               ; 7 uses
  %i.i = alloca [16 x i8], align 1                ; 6 uses
  %i.j = alloca [576 x i8], align 16              ; 42 uses
  %i.k = alloca [568 x i8], align 8               ; 7 uses
  %.sroa.45 = alloca [256 x i8], align 8          ; 4 uses
  %.sroa.4 = alloca [56 x i8], align 8            ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [56 x i8], align 8                ; 5 uses
  %i.n = alloca [88 x i8], align 8                ; 6 uses
  %i.o = alloca [256 x i8], align 8               ; 6 uses
  %i.p = alloca [408 x i8], align 8               ; 10 uses
  %i.q = alloca [256 x i8], align 8               ; 5 uses
  %i.r = alloca [256 x i8], align 8               ; 8 uses
  %.sroa.8405 = alloca [72 x i8], align 8         ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 2 uses
  %i.t = alloca [256 x i8], align 8               ; 5 uses
  %i.u = alloca [256 x i8], align 8               ; 8 uses
  %.sroa.8396 = alloca [72 x i8], align 8         ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 2 uses
  %i.w = alloca [48 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [256 x i8], align 8               ; 8 uses
  %.sroa.8383 = alloca [72 x i8], align 8         ; 7 uses
  %i.z = alloca [256 x i8], align 8               ; 15 uses
  %i.aa = alloca [56 x i8], align 8               ; 2 uses
  %i.ab = alloca [56 x i8], align 8               ; 2 uses
  %i.ac = alloca [56 x i8], align 8               ; 5 uses
  %i.ad = alloca [72 x i8], align 8               ; 8 uses
  %.sroa.8370 = alloca [56 x i8], align 8         ; 7 uses
  %i.ae = alloca [72 x i8], align 8               ; 10 uses
  %.sroa.8363 = alloca [56 x i8], align 8         ; 7 uses
  %i.af = alloca [56 x i8], align 8               ; 9 uses
  %.sroa.5360 = alloca [32 x i8], align 16        ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 5 uses
  %i.ah = alloca [144 x i8], align 16             ; 9 uses
  %.sroa.8353 = alloca [104 x i8], align 8        ; 7 uses
  %i.ai = alloca [144 x i8], align 8              ; 14 uses
  %i.aj = alloca [56 x i8], align 8               ; 8 uses
  %.sroa.7343 = alloca [16 x i8], align 8         ; 6 uses
  %.sroa.8346 = alloca [16 x i8], align 8         ; 6 uses
  %i.ak = alloca [56 x i8], align 8               ; 17 uses
  %i.al = alloca [104 x i8], align 8              ; 12 uses
  %i.am = alloca [56 x i8], align 8               ; 10 uses
  %i.an = alloca [40 x i8], align 8               ; 5 uses
  %i.ao = alloca [40 x i8], align 8               ; 5 uses
  %i.ap = alloca [48 x i8], align 8               ; 10 uses
  %.sroa.3338 = alloca [88 x i8], align 8         ; 2 uses
  %.sroa.8335 = alloca [88 x i8], align 8         ; 7 uses
  %i.aq = alloca [48 x i8], align 8               ; 6 uses
  %i.ar = alloca [48 x i8], align 8               ; 9 uses
  %.sroa.5309 = alloca [224 x i8], align 16       ; 4 uses
  %i.as = alloca [88 x i8], align 8               ; 5 uses
  %i.at = alloca [336 x i8], align 16             ; 9 uses
  %.sroa.8302 = alloca [104 x i8], align 8        ; 7 uses
  %i.au = alloca [336 x i8], align 8              ; 10 uses
  %i.av = alloca [336 x i8], align 8              ; 6 uses
  %i.aw = alloca [128 x i8], align 16             ; 15 uses
  %.sroa.6298.sroa.0 = alloca [72 x i8], align 8  ; 7 uses
  %.sroa.6298.sroa.9 = alloca [24 x i8], align 8  ; 8 uses
  %i.ax = alloca [88 x i8], align 8               ; 9 uses
  %i.ay = alloca [24 x i8], align 8               ; 4 uses
  %i.az = alloca [24 x i8], align 8               ; 8 uses
  %i.ba = alloca [96 x i8], align 16              ; 7 uses
  %.sroa.8 = alloca [88 x i8], align 8            ; 7 uses
  %i.bb = alloca [88 x i8], align 8               ; 8 uses
  %i.bc = alloca [72 x i8], align 8               ; 5 uses
  %i.bd = alloca [16 x i8], align 8               ; 6 uses
  %i.be = alloca [88 x i8], align 8               ; 7 uses
  %i.bf = alloca [16 x i8], align 8               ; 6 uses
  %.sroa.0273 = alloca [160 x i8], align 8        ; 10 uses
  %.sroa.11 = alloca [24 x i8], align 8           ; 6 uses
  %i.bg = alloca [96 x i8], align 16              ; 5 uses
  %i.bh = alloca [96 x i8], align 16              ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 1040 ; 3 uses
  %i.bj = load i8, ptr %i.bi, align 8, !range !1165, !noundef !4
  switch i8 %i.bj, label %default.unreachable554 [
    i8 0, label %bb.b
    i8 1, label %bb.bj
    i8 2, label %bb.bk
    i8 3, label %bb.bm
  ]

default.unreachable554:                           ; preds = %bb.bm, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 1047
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 1046
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 1045 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 1041
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 1048
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 1046
  store i16 0, ptr %i.bp, align 2
  store i8 1, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.bn, i8 1, i64 5, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %i.bq, ptr noundef nonnull align 8 dereferenceable(368) %1, i64 368, i1 false)
  %i.br = getelementptr i8, ptr %1, i64 400
  %.val145 = load ptr, ptr %i.br, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bs = getelementptr i8, ptr %1, i64 408
  %.val146 = load i64, ptr %i.bs, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %.val146, 272
  %i.bt = getelementptr inbounds nuw i8, ptr %.val145, i64 %.idx
  %.not.not.not.i.not557 = icmp eq i64 %.val146, 0
  br i1 %.not.not.not.i.not557, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bv, i64 272 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.bu, %i.bt
  br i1 %.not.not.not.i.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.bv = phi ptr [ %i.bu, %bb.c ], [ %.val145, %bb.b ] ; 2 uses
  %.val.i = load i64, ptr %i.bv, align 8, !range !1310, !noalias !17506, !noundef !4 ; 2 uses
  %i.bw = icmp ne i64 %.val.i, 4
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = icmp eq i64 %.val.i, 2
  br i1 %i.bx, label %bb.d, label %bb.c

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  invoke void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtB2_11CreateErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.bh, i8 noundef 2)
          to label %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6create11CreateErrorINtB5_4IntoNtNtBE_6errors15DeltaTableErrorE4intoBE_.exit unwind label %bb.bi

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.by = getelementptr i8, ptr %1, i64 384
  %.val149 = load i64, ptr %i.by, align 8, !noundef !4 ; 2 uses
  %i.bz = icmp ult i64 %.val149, 96076792050570582
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = icmp eq i64 %.val149, 0
  br i1 %i.ca, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0273)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 696 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !noundef !4 ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  %.not = icmp eq ptr %i.cc, null
  br i1 %.not, label %bb.g, label %bb.i

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  invoke void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtB2_11CreateErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.bg, i8 noundef 1)
          to label %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6create11CreateErrorINtB5_4IntoNtNtBE_6errors15DeltaTableErrorE4intoBE_.exit152 unwind label %bb.bh

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !range !17, !alias.scope !17509, !noalias !17512, !noundef !4
  %.not.i = icmp eq i64 %i.cf, -9223372036854775808
  br i1 %.not.i, label %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ce)
          to label %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.v

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store i8 0, ptr %i.bm, align 1
  %i.cg = load ptr, ptr %i.cd, align 8, !nonnull !4, !align !18, !noundef !4 ; 5 uses
  store ptr %i.cc, ptr %i.bf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.cg, ptr %i.ch, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !range !3, !invariant.load !4
  %i.ck = add nsw i64 %i.cj, -1
  %i.cl = and i64 %i.ck, -16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 144
  %i.cp = load ptr, ptr %i.co, align 8, !invariant.load !4, !nonnull !4
  %i.cq = invoke noundef nonnull align 8 ptr %i.cp(ptr noundef nonnull %i.cn)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %.noexc153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit155

bb.k:                                             ; preds = %bb.l, %bb.i
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %i.cs = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !17514
  %i.ct = icmp eq i64 %i.cs, 1
  br i1 %i.ct, label %bb.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit155

bb.l:                                             ; preds = %bb.i
  invoke void @_RNvNtCs14kWLkQVSKO_14deltalake_core5table19normalize_table_url(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.be, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.cq)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store ptr %i.cc, ptr %i.bd, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.cg, ptr %i.cu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  invoke void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB2_16DeltaTableConfigNtNtCsbvkFyIu7lgC_4core7default7Default7default(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bc)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  %.sroa.0273.88..sroa_idx275 = getelementptr inbounds nuw i8, ptr %.sroa.0273, i64 88
end_hunk_0
begin_hunk_1_@_RNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB7_13CreateBuilder22into_table_and_actions0Bb_:bb.a
bb.eg:                                            ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBM_6string6StringEE17unwrap_or_defaultCs14kWLkQVSKO_14deltalake_core.exit
  %i.jy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8383)
  br label %.thread476

bb.eh:                                            ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBM_6string6StringEE17unwrap_or_defaultCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.experimental.noalias.scope.decl(metadata !17681)
  %i.jz = load i64, ptr %i.y, align 8, !range !1069, !alias.scope !17684, !noalias !17681, !noundef !4 ; 2 uses
  %i.ka = icmp eq i64 %i.jz, 2
  %i.kb = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8383, ptr noundef nonnull align 8 dereferenceable(72) %i.kb, i64 72, i1 false), !alias.scope !17686
  br i1 %i.ka, label %bb.gf, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %.sroa.10385.0..sroa_idx386 = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %.sroa.5393.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 80 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.5393.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.10385.0..sroa_idx386, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %.sroa.4392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4392.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8383, i64 72, i1 false)
  store i64 %i.jz, ptr %i.z, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8383)
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8, !range !17, !noundef !4
  %.not65 = icmp eq i64 %i.kd, -9223372036854775808
  br i1 %.not65, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 1042
  store i8 0, ptr %i.ke, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.kc, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8396)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.t, ptr noundef nonnull align 8 dereferenceable(256) %i.z, i64 256, i1 false)
  invoke void @_RNvXNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8MetadataNtB2_11MetadataExt9with_name(ptr noalias noundef nonnull sret([256 x i8]) align 8 captures(none) dereferenceable(256) %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(256) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.v)
          to label %bb.em unwind label %bb.el

bb.ek:                                            ; preds = %bb.en, %bb.ei
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 2 uses
  %i.kg = load i64, ptr %i.kf, align 8, !range !17, !noundef !4
  %.not68 = icmp eq i64 %i.kg, -9223372036854775808
  br i1 %.not68, label %bb.es, label %bb.er

bb.el:                                            ; preds = %bb.ej
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8396)
  br label %.thread476

bb.em:                                            ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !17687)
  %i.ki = load i64, ptr %i.u, align 8, !range !1069, !alias.scope !17690, !noalias !17687, !noundef !4 ; 2 uses
  %i.kj = icmp eq i64 %i.ki, 2
  %i.kk = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8396, ptr noundef nonnull align 8 dereferenceable(72) %i.kk, i64 72, i1 false), !alias.scope !17692
  br i1 %i.kj, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %.sroa.10398.0..sroa_idx399 = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.5393.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.10398.0..sroa_idx399, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4392.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8396, i64 72, i1 false)
  store i64 %i.ki, ptr %i.z, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8396)
  br label %bb.ek

bb.eo:                                            ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.sroa.4.0..sroa_idx.i193 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i193, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8396, i64 72, i1 false)
  %i.kl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 -9223372036854775720, ptr %i.kl, align 16, !alias.scope !17693, !noalias !17696
  store i64 1, ptr %i.j, align 16, !alias.scope !17693, !noalias !17696
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8396)
  br label %bb.ep

bb.ep:                                            ; preds = %bb.gf, %bb.ew, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.af)
          to label %bb.gi unwind label %bb.gh

bb.eq:                                            ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br i1 %.sroa.011.3, label %bb.ge, label %bb.gd

bb.er:                                            ; preds = %bb.ek
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 1041
  store i8 0, ptr %i.km, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.kf, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8405)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.q, ptr noundef nonnull align 8 dereferenceable(256) %i.z, i64 256, i1 false)
  invoke void @_RNvXNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8MetadataNtB2_11MetadataExt16with_description(ptr noalias noundef nonnull sret([256 x i8]) align 8 captures(none) dereferenceable(256) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(256) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.s)
          to label %bb.eu unwind label %bb.et

bb.es:                                            ; preds = %bb.ev, %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 729
  %i.ko = load i8, ptr %i.kn, align 1, !range !1165, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke fastcc void @_RNvXsi_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8MetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(256) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.z)
          to label %bb.ey unwind label %bb.ex

bb.et:                                            ; preds = %bb.er
  %i.kp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8405)
  br label %.thread476

bb.eu:                                            ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !17698)
  %i.kq = load i64, ptr %i.r, align 8, !range !1069, !alias.scope !17701, !noalias !17698, !noundef !4 ; 2 uses
  %i.kr = icmp eq i64 %i.kq, 2
  %i.ks = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8405, ptr noundef nonnull align 8 dereferenceable(72) %i.ks, i64 72, i1 false), !alias.scope !17703
  br i1 %i.kr, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %.sroa.10407.0..sroa_idx408 = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.5393.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.10407.0..sroa_idx408, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4392.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8405, i64 72, i1 false)
  store i64 %i.kq, ptr %i.z, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8405)
  br label %bb.es

bb.ew:                                            ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.4.0..sroa_idx.i195 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i195, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8405, i64 72, i1 false)
  %i.kt = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 -9223372036854775720, ptr %i.kt, align 16, !alias.scope !17704, !noalias !17707
  store i64 1, ptr %i.j, align 16, !alias.scope !17704, !noalias !17707
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8405)
  br label %bb.ep

bb.ex:                                            ; preds = %bb.es
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %.thread480

bb.ey:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 1047 ; 2 uses
  store i8 0, ptr %i.kv, align 1
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(88) %i.kw, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke fastcc void @_RNvXsp_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8ProtocolNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.af)
          to label %bb.fa unwind label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.kx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.n) #46
          to label %bb.gc unwind label %bb.s

bb.fa:                                            ; preds = %bb.ey
  %i.ky = getelementptr inbounds nuw i8, ptr %i.p, i64 400
  store i8 %i.ko, ptr %i.ky, align 8
  %i.kz = getelementptr inbounds nuw i8, ptr %i.p, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.kz, ptr noundef nonnull align 8 dereferenceable(88) %i.n, i64 88, i1 false)
  %i.la = getelementptr inbounds nuw i8, ptr %i.p, i64 344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.la, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.p, ptr noundef nonnull align 8 dereferenceable(256) %i.o, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.lb = invoke fastcc noundef nonnull align 8 ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 544) #49
          to label %bb.fd unwind label %bb.fc     ; 5 uses

bb.fb:                                            ; preds = %bb.fe, %bb.fc
  %.sroa.011.3 = phi i1 [ false, %bb.fe ], [ true, %bb.fc ]
  %.pn75.pn = phi { ptr, i32 } [ %i.lj, %bb.fe ], [ %i.lc, %bb.fc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol14DeltaOperationEBK_(ptr noalias noundef align 8 dereferenceable(408) %i.p) #46
          to label %bb.eq unwind label %bb.s

bb.fc:                                            ; preds = %bb.fa
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.fd:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(56) %i.af, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.45)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.45, ptr noundef nonnull align 8 dereferenceable(256) %i.z, i64 256, i1 false)
  store i64 3, ptr %i.lb, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4, i64 56, i1 false)
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 272
  store i64 2, ptr %i.ld, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lb, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.45.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.45, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.45)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  store i64 2, ptr %i.l, align 8, !alias.scope !17709, !noalias !17712
  %i.le = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.lb, ptr %i.le, align 8, !alias.scope !17709, !noalias !17712
  %i.lf = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 2, ptr %i.lf, align 8, !alias.scope !17709, !noalias !17712
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 1048 ; 2 uses
  store i8 0, ptr %i.lg, align 8
  %.sroa.0420.0.copyload = load i64, ptr %i.il, align 8
  %.sroa.5421.0.copyload = load ptr, ptr %i.im, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.6422.0.copyload = load i64, ptr %i.in, align 8 ; 2 uses
  %i.lh = icmp ult i64 %.sroa.6422.0.copyload, 33909456017848441
  call void @llvm.assume(i1 %i.lh)
  %i.li = getelementptr inbounds nuw [272 x i8], ptr %.sroa.5421.0.copyload, i64 %.sroa.6422.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17714
  store ptr %.sroa.5421.0.copyload, ptr %i.a, align 8, !alias.scope !17718, !noalias !17722
  %.sroa.5417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5421.0.copyload, ptr %.sroa.5417.0..sroa_idx, align 8, !alias.scope !17718, !noalias !17722
  %.sroa.6418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.0420.0.copyload, ptr %.sroa.6418.0..sroa_idx, align 8, !alias.scope !17718, !noalias !17722
  %.sroa.7419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.li, ptr %.sroa.7419.0..sroa_idx, align 8, !alias.scope !17718, !noalias !17722
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEINtB2_10SpecExtendBR_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterBR_ENCNCNvMs1_NtNtBX_10operations6createNtB3H_13CreateBuilder22into_table_and_actions0s3_0EE11spec_extendBX_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.ff unwind label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.lj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.l) #46
          to label %bb.fb unwind label %bb.s

bb.ff:                                            ; preds = %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17714
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 1046 ; 2 uses
  store i8 0, ptr %i.lk, align 2
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.k, ptr noundef nonnull align 8 dereferenceable(120) %i.ll, i64 120, i1 false)
  %i.lm = getelementptr inbounds nuw i8, ptr %i.k, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lm, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.ln = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %i.ln, ptr noundef nonnull align 8 dereferenceable(408) %i.p, i64 408, i1 false)
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 944
  %i.lp = getelementptr inbounds nuw i8, ptr %i.k, i64 552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lp, ptr noundef nonnull align 8 dereferenceable(16) %i.lo, i64 16, i1 false)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(568) %i.lq, ptr noundef nonnull align 8 dereferenceable(568) %i.k, i64 568, i1 false)
  store i64 0, ptr %i.j, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.ai)
          to label %bb.fh unwind label %bb.fg

bb.fg:                                            ; preds = %bb.gi, %bb.ff
  %.sroa.09.2 = phi i8 [ %.sroa.09.6, %bb.gi ], [ 0, %bb.ff ]
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

bb.fh:                                            ; preds = %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  store i8 0, ptr %i.lk, align 2
  store i8 0, ptr %i.kv, align 1
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 528
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ls)
          to label %bb.fk unwind label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.lt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 2 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !alias.scope !17723, !noundef !4
  %i.lw = icmp eq ptr %i.lv, null
  br i1 %i.lw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.lu)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.s

bb.fk:                                            ; preds = %bb.fh
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 2 uses
  %i.ly = load ptr, ptr %i.lx, align 8, !alias.scope !17726, !noundef !4
  %i.lz = icmp eq ptr %i.ly, null
  br i1 %i.lz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit199, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.lx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit199 unwind label %bb.fo

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.fi, %bb.fj, %bb.fo
  %.pn79 = phi { ptr, i32 } [ %i.mf, %bb.fo ], [ %i.lt, %bb.fj ], [ %i.lt, %bb.fi ] ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 696 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17729)
  %i.mb = load ptr, ptr %i.ma, align 8, !alias.scope !17729, !noundef !4 ; 2 uses
  %i.mc = icmp eq ptr %i.mb, null
  br i1 %i.mc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit, label %bb.fm

bb.fm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit
  %i.md = atomicrmw sub ptr %i.mb, i64 1 release, align 8, !noalias !17732
  %i.me = icmp eq i64 %i.md, 1
  br i1 %i.me, label %bb.fn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit

bb.fn:                                            ; preds = %bb.fm
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ma) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit unwind label %bb.s

bb.fo:                                            ; preds = %bb.fl
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit199: ; preds = %bb.fk, %bb.fl
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 696 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17737)
  %i.mh = load ptr, ptr %i.mg, align 8, !alias.scope !17737, !noundef !4 ; 2 uses
  %i.mi = icmp eq ptr %i.mh, null
  br i1 %i.mi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit202, label %bb.fp

bb.fp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit199
  %i.mj = atomicrmw sub ptr %i.mh, i64 1 release, align 8, !noalias !17740
  %i.mk = icmp eq i64 %i.mj, 1
  br i1 %i.mk, label %bb.fq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit202

bb.fq:                                            ; preds = %bb.fp
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.mg) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit202 unwind label %bb.fr

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit: ; preds = %bb.fm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit, %bb.fn, %bb.fr
  %.pn81 = phi { ptr, i32 } [ %i.ml, %bb.fr ], [ %.pn79, %bb.fn ], [ %.pn79, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit ], [ %.pn79, %bb.fm ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.hp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.s

bb.fr:                                            ; preds = %bb.fq
  %i.ml = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit202: ; preds = %bb.fp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit199, %bb.fq
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.hp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit205 unwind label %bb.fs

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit, %bb.fs
  %.pn83 = phi { ptr, i32 } [ %i.mn, %bb.fs ], [ %.pn81, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit ]
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 416
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16CommitPropertiesEBM_(ptr noalias noundef align 8 dereferenceable(88) %i.mm) #46
          to label %bb.ft unwind label %bb.s

bb.fs:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit202
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit205: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit202
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 416
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16CommitPropertiesEBM_(ptr noalias noundef align 8 dereferenceable(88) %i.mo)
          to label %bb.fx unwind label %bb.fw

bb.ft:                                            ; preds = %bb.fw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit
  %.pn85 = phi { ptr, i32 } [ %i.mu, %bb.fw ], [ %.pn83, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17745)
  %i.mq = load ptr, ptr %i.mp, align 8, !alias.scope !17745, !noundef !4 ; 2 uses
  %i.mr = icmp eq ptr %i.mq, null
  br i1 %i.mr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.ms = atomicrmw sub ptr %i.mq, i64 1 release, align 8, !noalias !17748
  %i.mt = icmp eq i64 %i.ms, 1
  br i1 %i.mt, label %bb.fv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit

bb.fv:                                            ; preds = %bb.fu
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.mp) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit unwind label %bb.s

bb.fw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit205
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.fx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit205
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17753)
  %i.mw = load ptr, ptr %i.mv, align 8, !alias.scope !17753, !noundef !4 ; 2 uses
  %i.mx = icmp eq ptr %i.mw, null
  br i1 %i.mx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit210, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.my = atomicrmw sub ptr %i.mw, i64 1 release, align 8, !noalias !17756
  %i.mz = icmp eq i64 %i.my, 1
  br i1 %i.mz, label %bb.fz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit210

bb.fz:                                            ; preds = %bb.fy
end_hunk_1
begin_hunk_2_@_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution23write_execution_plan_v20B9_:bb.a
  br label %common.ret

bb.ek:                                            ; preds = %bb.ei
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.g, ptr noundef nonnull align 16 dereferenceable(96) %i.i, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution15write_data_plan0EBQ_(ptr noundef nonnull align 16 %i.io)
          to label %bb.em unwind label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.em:                                            ; preds = %bb.ek, %bb.ev
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 669
  store i8 0, ptr %i.is, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 666
  store i8 0, ptr %i.it, align 2
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 632 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20915)
  call void @llvm.experimental.noalias.scope.decl(metadata !20918)
  %i.iv = load ptr, ptr %i.iu, align 8, !alias.scope !20921, !nonnull !4, !noundef !4
  %i.iw = atomicrmw sub ptr %i.iv, i64 1 release, align 8, !noalias !20921
  %i.ix = icmp eq i64 %i.iw, 1
  br i1 %i.ix, label %bb.en, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit114

bb.en:                                            ; preds = %bb.em
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.iu) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit114 unwind label %bb.e

bb.eo:                                            ; preds = %bb.eg, %bb.el, %bb.ct
  %i.iy = phi ptr [ %i.jd, %bb.ct ], [ %i.in, %bb.el ], [ %i.in, %bb.eg ]
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %bb.ct ], [ %i.ir, %bb.el ], [ %i.im, %bb.eg ] ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 669
  %i.ja = load i8, ptr %i.iz, align 1, !range !178, !noundef !4
  %i.jb = trunc nuw i8 %i.ja to i1
  br i1 %i.jb, label %bb.ew, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit116

bb.ep:                                            ; preds = %bb.eq
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0EBQ_(ptr noundef nonnull align 16 %i.je) #46
          to label %bb.ct unwind label %bb.y

bb.eq:                                            ; preds = %bb.c, %bb.cs
  %i.jd = phi ptr [ undef, %bb.c ], [ %i.gb, %bb.cs ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 3 uses
  invoke fastcc void @_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0B9_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.h, ptr noundef nonnull align 16 %i.je, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.er unwind label %bb.ep

bb.er:                                            ; preds = %bb.eq
  %i.jf = load i64, ptr %i.h, align 16, !range !1116, !noundef !4
  %i.jg = icmp eq i64 %i.jf, -9223372036854775710
  br i1 %i.jg, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 -9223372036854775710, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14239)
  br label %common.ret

bb.et:                                            ; preds = %bb.er
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.g, ptr noundef nonnull align 16 dereferenceable(96) %i.h, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0EBQ_(ptr noundef nonnull align 16 %i.je)
          to label %bb.ev unwind label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.ev:                                            ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14239)
  br label %bb.em

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit114: ; preds = %bb.em, %bb.en
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 667
  store i8 0, ptr %i.ji, align 1
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  store <4 x i8> zeroinitializer, ptr %i.jj, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 668
  store i8 0, ptr %i.jk, align 4
  br label %bb.ed

bb.ew:                                            ; preds = %bb.eo
  %i.jl = atomicrmw sub ptr %i.iy, i64 1 release, align 8, !noalias !20922
  %i.jm = icmp eq i64 %i.jl, 1
  br i1 %i.jm, label %bb.ex, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit116

bb.ex:                                            ; preds = %bb.ew
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit116 unwind label %bb.y

bb.ey:                                            ; preds = %bb.cm
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 640
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.jn) #46
          to label %bb.ad unwind label %bb.y

bb.ez:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit88
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 667
  %i.jp = load i8, ptr %i.jo, align 1, !range !178, !noundef !4
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %bb.fa, label %bb.dp

bb.fa:                                            ; preds = %bb.ez
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.cf) #46
          to label %bb.dp unwind label %bb.y

bb.fb:                                            ; preds = %bb.dp
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write7configs17WriterStatsConfigEBO_(ptr noalias noundef align 8 dereferenceable(40) %i.ag) #46
          to label %.body104 unwind label %bb.y

bb.fc:                                            ; preds = %.body104
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(248) %i.ah)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit118 unwind label %bb.y

bb.fd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit118
  call void @llvm.experimental.noalias.scope.decl(metadata !20927)
  call void @llvm.experimental.noalias.scope.decl(metadata !20930)
  %i.jr = load ptr, ptr %i.ai, align 16, !alias.scope !20933, !nonnull !4, !noundef !4
  %i.js = atomicrmw sub ptr %i.jr, i64 1 release, align 8, !noalias !20933
  %i.jt = icmp eq i64 %i.js, 1
  br i1 %i.jt, label %bb.fe, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit120

bb.fe:                                            ; preds = %bb.fd
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit120 unwind label %bb.y

bb.ff:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit120
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj) #46
          to label %.body110 unwind label %bb.y

bb.fg:                                            ; preds = %.body110
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20934)
  call void @llvm.experimental.noalias.scope.decl(metadata !20937)
  %i.jv = load ptr, ptr %i.ju, align 16, !alias.scope !20940, !nonnull !4, !noundef !4
  %i.jw = atomicrmw sub ptr %i.jv, i64 1 release, align 8, !noalias !20940
  %i.jx = icmp eq i64 %i.jw, 1
  br i1 %i.jx, label %bb.fh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit122

bb.fh:                                            ; preds = %bb.fg
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ju) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit122 unwind label %bb.y
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations18set_tbl_propertiesNtB7_25SetTablePropertiesBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0Bb_(ptr dead_on_unwind noalias noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.3.i.sroa.4 = alloca [56 x i8], align 8   ; 6 uses
  %.sroa.3.i.sroa.6 = alloca [16 x i8], align 8   ; 6 uses
  %i.f = alloca [96 x i8], align 16               ; 10 uses
  %i.g = alloca [16 x i8], align 1                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.21 = alloca [56 x i8], align 16          ; 9 uses
  %.sroa.25 = alloca [32 x i8], align 16          ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [120 x i8], align 8               ; 10 uses
  %.sroa.3279.sroa.2 = alloca [56 x i8], align 8  ; 2 uses
  %.sroa.3279.sroa.4 = alloca [16 x i8], align 8  ; 2 uses
  %i.m = alloca [96 x i8], align 16               ; 10 uses
  %i.n = alloca [16 x i8], align 1                ; 5 uses
  %.sroa.3269.sroa.3 = alloca [56 x i8], align 8  ; 3 uses
  %.sroa.5270.sroa.2 = alloca [16 x i8], align 8  ; 2 uses
  %i.o = alloca [96 x i8], align 16               ; 10 uses
  %i.p = alloca [408 x i8], align 8               ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 9 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [88 x i8], align 8                ; 5 uses
  %i.t = alloca [144 x i8], align 8               ; 6 uses
  %i.u = alloca [144 x i8], align 8               ; 6 uses
  %i.v = alloca [144 x i8], align 8               ; 5 uses
  %i.w = alloca [144 x i8], align 8               ; 7 uses
  %i.x = alloca [584 x i8], align 8               ; 6 uses
  %i.y = alloca [272 x i8], align 8               ; 6 uses
  %.sroa.4 = alloca [256 x i8], align 8           ; 4 uses
  %i.z = alloca [56 x i8], align 8                ; 5 uses
  %.sroa.8255.sroa.8 = alloca [56 x i8], align 8  ; 3 uses
  %.sroa.3261 = alloca [176 x i8], align 8        ; 2 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [256 x i8], align 8              ; 6 uses
  %i.ad = alloca [256 x i8], align 8              ; 10 uses
  %i.ae = alloca [40 x i8], align 8               ; 6 uses
  %i.af = alloca [40 x i8], align 8               ; 6 uses
  %i.ag = alloca [56 x i8], align 8               ; 8 uses
  %i.ah = alloca [72 x i8], align 8               ; 8 uses
  %.sroa.8245 = alloca [56 x i8], align 8         ; 7 uses
  %i.ai = alloca [56 x i8], align 8               ; 12 uses
  %.sroa.3240.sroa.2 = alloca [56 x i8], align 8  ; 2 uses
  %.sroa.3240.sroa.4 = alloca [16 x i8], align 8  ; 2 uses
  %.sroa.8237.sroa.6 = alloca [56 x i8], align 8  ; 7 uses
  %.sroa.8237.sroa.8 = alloca [16 x i8], align 8  ; 7 uses
  %.sroa.3.sroa.3 = alloca [24 x i8], align 8     ; 3 uses
  %.sroa.5.sroa.0291 = alloca [32 x i8], align 8  ; 2 uses
  %.sroa.5.sroa.3 = alloca [16 x i8], align 8     ; 2 uses
  %i.aj = alloca [96 x i8], align 16              ; 11 uses
  %.sroa.6217 = alloca [16 x i8], align 8         ; 5 uses
  %.sroa.8211.sroa.9 = alloca [16 x i8], align 8  ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 1048 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 8, !range !1421, !noundef !4
  switch i8 %i.al, label %default.unreachable398 [
    i8 0, label %bb.b
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.i
    i8 4, label %bb.am
    i8 5, label %bb.j
    i8 6, label %bb.k
  ]

default.unreachable398:                           ; preds = %bb.am, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 1049
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1054
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 1053
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1055
  store i32 0, ptr %i.am, align 1
  store i8 1, ptr %i.ap, align 1
  store i8 1, ptr %i.ao, align 1
  store i8 1, ptr %i.an, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8211.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6217)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20941)
  %i.ar = load i64, ptr %i.aq, align 8, !range !17, !alias.scope !20941, !noalias !20944, !noundef !4
  %.not.i = icmp eq i64 %i.ar, -9223372036854775808
  br i1 %.not.i, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20946)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !20949
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !20951, !noalias !20952, !nonnull !4, !noundef !4 ; 4 uses
  %i.au = atomicrmw add ptr %i.at, i64 1 monotonic, align 8, !noalias !20949
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.at, ptr %i.i, align 8, !noalias !20949
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !20949
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aq)
          to label %_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB5_13EagerSnapshotNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i unwind label %bb.f, !noalias !20952

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !20953
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.g, label %.body

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #45
          to label %.body unwind label %bb.h, !noalias !20952

bb.h:                                             ; preds = %bb.g
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !20952
  unreachable

_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB5_13EagerSnapshotNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.d
  %.sroa.0215.0.copyload216 = load i64, ptr %i.h, align 8, !noalias !20941
  %.sroa.6217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6217, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6217.0..sroa_idx, i64 16, i1 false), !noalias !20941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20949
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8211.sroa.9)
  br label %bb.p

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  br label %bb.ep

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  br label %bb.fn

bb.l:                                             ; preds = %_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB5_13EagerSnapshotNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %bb.b
  %.sroa.6218.0 = phi ptr [ %i.at, %_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB5_13EagerSnapshotNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %bb.b ]
  %.sroa.0215.0 = phi i64 [ %.sroa.0215.0.copyload216, %_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB5_13EagerSnapshotNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ -9223372036854775808, %bb.b ]
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8211.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6217, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6217)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 1056
  store i64 0, ptr %i.bb, align 8
  %.sroa.8211.sroa.8.0..sroa.8211.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1072
  store i64 %.sroa.0215.0, ptr %.sroa.8211.sroa.8.0..sroa.8211.0..sroa_idx.sroa_idx, align 8
  %.sroa.8211.sroa.9.0..sroa.8211.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8211.sroa.9.0..sroa.8211.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8211.sroa.9, i64 16, i1 false)
  %.sroa.8211.sroa.10.0..sroa.8211.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1096
  store ptr %.sroa.6218.0, ptr %.sroa.8211.sroa.10.0..sroa.8211.0..sroa_idx.sroa_idx, align 8
  %.sroa.9212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1104
  store ptr %i.ba, ptr %.sroa.9212.0..sroa_idx, align 8
  %.sroa.10213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1112
  store ptr @310, ptr %.sroa.10213.0..sroa_idx, align 8
  %.sroa.12214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1152
  store i8 0, ptr %.sroa.12214.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1153
  store i8 0, ptr %.sroa.13.0..sroa_idx, align 1
  br label %bb.p

.body:                                            ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6217)
  br label %.body109

.body109:                                         ; preds = %bb.ab, %bb.z, %bb.x, %bb.o, %.body
  %.pn78 = phi { ptr, i32 } [ %i.aw, %.body ], [ %i.bc, %bb.o ], [ %i.bt, %bb.ab ], [ %i.bn, %bb.x ], [ %i.bq, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8211.sroa.9)
  br label %bb.aj

bb.m:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @542) #50
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @542) #50
  unreachable

bb.o:                                             ; preds = %bb.p
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot16resolve_snapshot0EBO_(ptr noundef nonnull align 8 %i.bd) #46
          to label %.body109 unwind label %bb.ai

bb.p:                                             ; preds = %bb.i, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 1056 ; 3 uses
  invoke fastcc void @_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot16resolve_snapshot0B7_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.aj, ptr noundef nonnull align 8 %i.bd, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p
  %i.be = load i64, ptr %i.aj, align 16, !range !1116, !noundef !4 ; 3 uses
  %i.bf = icmp eq i64 %i.be, -9223372036854775710
  br i1 %i.bf, label %bb.r, label %bb.s

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16CommitPropertiesEBM_.exit, %bb.fp, %bb.er, %bb.bi, %bb.r
  %.sink = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16CommitPropertiesEBM_.exit ], [ 6, %bb.fp ], [ 5, %bb.er ], [ 4, %bb.bi ], [ 3, %bb.r ]
  store i8 %.sink, ptr %i.ak, align 8
  ret void

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  store i64 2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8211.sroa.9)
  br label %common.ret

bb.s:                                             ; preds = %bb.q
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.3.sroa.0.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.sroa.3, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, i64 24, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.0291, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, i64 32, i1 false)
  %.sroa.5.sroa.2.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %.sroa.5.sroa.2.0.copyload = load i64, ptr %.sroa.5.sroa.2.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.3.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.3, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.5.sroa.3.0..sroa.5.0..sroa_idx.sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 1153
  %i.bh = load i8, ptr %i.bg, align 1, !range !1779, !noundef !4
  switch i8 %i.bh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot16resolve_snapshot0EBO_.exit [
    i8 0, label %bb.t
    i8 3, label %bb.v
    i8 4, label %bb.w
end_hunk_2
begin_hunk_3_@_RNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations18set_tbl_propertiesNtB7_25SetTablePropertiesBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0Bb_:bb.a
  %i.fi = load ptr, ptr %i.fh, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 1160 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 1054
  store i8 0, ptr %i.fk, align 2
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 1051 ; 2 uses
  store i8 1, ptr %i.fl, align 1
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fm, ptr noundef nonnull align 8 dereferenceable(48) %i.fn, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8245)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.experimental.noalias.scope.decl(metadata !20989)
  call void @llvm.experimental.noalias.scope.decl(metadata !20992)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 1208
  %i.fp = load <2 x i32>, ptr %i.fo, align 8, !alias.scope !20992, !noalias !20989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20994
  %i.fq = load i64, ptr %i.fj, align 8, !range !17, !alias.scope !20992, !noalias !20989, !noundef !4
  %.not.i121 = icmp eq i64 %i.fq, -9223372036854775808
  br i1 %.not.i121, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fj)
          to label %.noexc123 unwind label %bb.bw

bb.br:                                            ; preds = %bb.bp
  store i64 -9223372036854775808, ptr %i.e, align 8, !noalias !20994
  br label %.noexc123

.noexc123:                                        ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fi, i64 1184 ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !range !17, !alias.scope !20992, !noalias !20989, !noundef !4
  %.not4.i = icmp eq i64 %i.fs, -9223372036854775808
  br i1 %.not4.i, label %bb.bx, label %bb.bs

bb.bs:                                            ; preds = %.noexc123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20994
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fr)
          to label %bb.bu unwind label %bb.bt, !noalias !20989

bb.bt:                                            ; preds = %bb.bs
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.e) #46
          to label %.body124 unwind label %bb.bv, !noalias !20989

bb.bu:                                            ; preds = %bb.bs
  %.sroa.0.0.copyload1.i = load i64, ptr %i.d, align 8, !noalias !20994
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i, i64 16, i1 false), !noalias !20994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20994
  br label %bb.bx

bb.bv:                                            ; preds = %bb.bt
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !20989
  unreachable

bb.bw:                                            ; preds = %bb.bq
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body124

bb.bx:                                            ; preds = %bb.bu, %.noexc123
  %.sroa.0.0.i122 = phi i64 [ %.sroa.0.0.copyload1.i, %bb.bu ], [ -9223372036854775808, %.noexc123 ]
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store <2 x i32> %i.fp, ptr %i.fw, align 8, !alias.scope !20989, !noalias !20992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !20992
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i64 %.sroa.0.0.i122, ptr %i.fx, align 8, !alias.scope !20989, !noalias !20992
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !20992
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20994
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.fz = load i8, ptr %i.fy, align 8, !range !178, !noundef !4
  %i.ga = trunc nuw i8 %i.fz to i1
  invoke void @_RNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtB4_11ProtocolExt28apply_properties_to_protocol(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ah, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fm, i1 noundef zeroext %i.ga)
          to label %bb.bz unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %.body124

bb.bz:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.experimental.noalias.scope.decl(metadata !20995)
  %i.gc = load i64, ptr %i.ah, align 8, !range !12520, !alias.scope !20998, !noalias !20995, !noundef !4 ; 2 uses
  %.not.i126 = icmp eq i64 %i.gc, -9223372036854775771
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8245, ptr noundef nonnull align 8 dereferenceable(56) %i.gd, i64 56, i1 false), !alias.scope !21000
  br i1 %.not.i126, label %bb.ca, label %bb.ej

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ai, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8245, i64 56, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 1050 ; 2 uses
  store i8 1, ptr %i.ge, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8245)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_E4iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fm)
          to label %_RNvXsx_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapRINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB14_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

_RNvXsx_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapRINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB14_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(40) %i.af, i64 40, i1 false)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.8255.0..sroa_idx256 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.8255.sroa.8.0..sroa.8255.0..sroa_idx256.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.8255.sroa.9.0..sroa.8255.0..sroa_idx256.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %.sroa.10257.0..sroa_idx258 = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %.sroa.2260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.sroa.2260.sroa.2.0..sroa.2260.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.sroa.2260.sroa.3.0..sroa.2260.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 328
  %.sroa.3261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 336
  br label %bb.cc

bb.cc:                                            ; preds = %bb.eb, %_RNvXsx_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapRINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB14_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core.exit
  %i.gi = invoke { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ae)
          to label %_RNvXsA_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringB10_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ce ; 2 uses

bb.cd:                                            ; preds = %bb.ef, %bb.ce
  %.pn62.pn = phi { ptr, i32 } [ %.pn58348, %bb.ef ], [ %i.gj, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.eh

bb.ce:                                            ; preds = %bb.cc
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

_RNvXsA_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringB10_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.cc
  %i.gk = extractvalue { ptr, ptr } %i.gi, 0      ; 2 uses
  %i.gl = extractvalue { ptr, ptr } %i.gi, 1      ; 3 uses
  %.not22 = icmp eq ptr %i.gk, null
  br i1 %.not22, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %_RNvXsA_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringB10_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gl) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i8 0, ptr %i.fg, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.ac, ptr noundef nonnull align 8 dereferenceable(256) %i.fd, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gk)
          to label %bb.dw unwind label %bb.dv

bb.cg:                                            ; preds = %_RNvXsA_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringB10_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i8 0, ptr %i.ge, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef nonnull align 8 dereferenceable(56) %i.ai, i64 56, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 3 uses
  invoke void @_RNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtB4_11ProtocolExt35move_table_properties_into_features(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.gn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gm)
          to label %bb.ci unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.dt

bb.ci:                                            ; preds = %bb.cg
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 1049 ; 2 uses
  store i8 1, ptr %i.gp, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  store i8 0, ptr %i.fl, align 1
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gr, ptr noundef nonnull align 8 dereferenceable(48) %i.fm, i64 48, i1 false)
  store i64 12, ptr %i.gq, align 8
  %i.gs = invoke fastcc noundef nonnull align 8 ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 272) #49
          to label %bb.ck unwind label %bb.cj     ; 3 uses

.body147:                                         ; preds = %bb.gc, %bb.fj, %bb.cj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitEBM_.exit
  %.pn52 = phi { ptr, i32 } [ %.pn49.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitEBM_.exit ], [ %i.ln, %bb.fj ], [ %i.gu, %bb.cj ], [ %i.mq, %bb.gc ]
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 616
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol14DeltaOperationEBK_(ptr noalias noundef align 8 dereferenceable(408) %i.gt) #46
          to label %bb.gf unwind label %bb.ai

bb.cj:                                            ; preds = %bb.gd, %bb.fk, %bb.ci
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %.body147

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  store i8 0, ptr %i.fg, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(256) %i.fd, i64 256, i1 false)
  store i64 2, ptr %i.gs, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.4, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 3 uses
  store i64 1, ptr %i.gv, align 8, !alias.scope !21001, !noalias !21004
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 1032
  store ptr %i.gs, ptr %i.gw, align 8, !alias.scope !21001, !noalias !21004
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 1040
  store i64 1, ptr %i.gx, align 8, !alias.scope !21001, !noalias !21004
  %i.gy = invoke fastcc noundef zeroext i1 @_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.gn)
          to label %bb.cm unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitEBM_.exit

bb.cm:                                            ; preds = %bb.ck
  br i1 %i.gy, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cq, %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke fastcc void @_RNvXsI_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_16CommitPropertiesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(88) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %1)
          to label %bb.cs unwind label %bb.cr

bb.co:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i8 0, ptr %i.gp, align 1
  %i.ha = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ha, ptr noundef nonnull align 8 dereferenceable(56) %i.gn, i64 56, i1 false)
  store i64 3, ptr %i.y, align 8
  invoke fastcc void @_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionE4pushBL_(ptr noalias noundef align 8 dereferenceable(24) %i.gv, ptr noalias noundef align 8 captures(address) dereferenceable(272) %i.y)
          to label %bb.cq unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.hb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitEBM_.exit

bb.cq:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.cn

bb.cr:                                            ; preds = %bb.cn
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cn
  invoke void @_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_13CommitBuilderINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_16CommitPropertiesE4from(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.t, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.s)
          to label %bb.cv unwind label %bb.cu

bb.ct:                                            ; preds = %bb.cu, %bb.cr
  %.pn25 = phi { ptr, i32 } [ %i.hd, %bb.cu ], [ %i.hc, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.dr

bb.cu:                                            ; preds = %bb.cs
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cv:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneBL_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gv)
          to label %bb.cw unwind label %bb.ds

bb.cw:                                            ; preds = %bb.cv
  invoke void @_RNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_13CommitBuilder12with_actions(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(144) %i.t, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.r)
          to label %bb.cy unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.dr

bb.cy:                                            ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.hg = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hg, ptr noundef nonnull align 8 dereferenceable(16) %i.hf, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.v, ptr noundef nonnull align 8 dereferenceable(144) %i.u, i64 144, i1 false), !alias.scope !21006, !noalias !21010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.val107 = load ptr, ptr %i.hh, align 8, !noundef !4 ; 3 uses
  %i.hi = getelementptr i8, ptr %1, i64 192
  %.val108 = load ptr, ptr %i.hi, align 8         ; 2 uses
  %.not.i130 = icmp eq ptr %.val107, null
  br i1 %.not.i130, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.hj = atomicrmw add ptr %.val107, i64 1 monotonic, align 8
  %i.hk = icmp slt i64 %i.hj, 0
  br i1 %i.hk, label %bb.da, label %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneBL_.exit.i

bb.da:                                            ; preds = %bb.cz
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneBL_.exit.i: ; preds = %bb.cz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val108) ]
  br label %bb.db

bb.db:                                            ; preds = %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneBL_.exit.i, %bb.cy
  %.sroa.3.0.i = phi ptr [ %.val108, %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneBL_.exit.i ], [ undef, %bb.cy ]
  invoke void @_RNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_13CommitBuilder29with_post_commit_hook_handler(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.w, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(144) %i.v, ptr noundef %.val107, ptr %.sroa.3.0.i)
          to label %bb.dd unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.dd:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.val99 = load ptr, ptr %i.hm, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.hn = getelementptr i8, ptr %1, i64 176
  %.val100 = load ptr, ptr %i.hn, align 8         ; 2 uses
  %i.ho = atomicrmw add ptr %.val99, i64 1 monotonic, align 8
  %i.hp = icmp slt i64 %i.ho, 0
  br i1 %i.hp, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  call void @llvm.trap()
  unreachable

bb.df:                                            ; preds = %bb.dd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val100) ]
  store ptr %.val99, ptr %i.q, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %.val100, ptr %i.hq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke fastcc void @_RNvXsx_NtCs14kWLkQVSKO_14deltalake_core8protocolNtB5_14DeltaOperationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(408) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(408) %i.gq)
          to label %bb.dg unwind label %bb.dm

bb.dg:                                            ; preds = %bb.df
  %i.hr = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  %i.hs = load ptr, ptr %i.hq, align 8, !nonnull !4, !align !18, !noundef !4
  invoke void @_RNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_13CommitBuilder5build(ptr noalias noundef nonnull sret([584 x i8]) align 8 captures(none) dereferenceable(584) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(144) %i.w, ptr noundef nonnull %i.ey, ptr nonnull @229, ptr noundef nonnull %i.hr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.hs, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(408) %i.p)
          to label %bb.dh unwind label %bb.dl

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.ht = invoke { ptr, ptr } @_RNvXs8_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_9PreCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(584) %i.x)
          to label %bb.dk unwind label %bb.dj

bb.di:                                            ; preds = %bb.do, %bb.dj
  %.pn38 = phi { ptr, i32 } [ %i.hu, %bb.dj ], [ %.pn35.pn342, %bb.do ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitEBM_.exit

bb.dj:                                            ; preds = %bb.dh
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.dk:                                            ; preds = %bb.dh
  %i.hv = extractvalue { ptr, ptr } %i.ht, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store ptr %i.hv, ptr %i.ew, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 1064
  store ptr @1226, ptr %i.hw, align 8
  br label %bb.ep

bb.dl:                                            ; preds = %bb.dg
  %i.hx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.do

bb.dm:                                            ; preds = %bb.df
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !21012)
  call void @llvm.experimental.noalias.scope.decl(metadata !21015)
  %i.hz = load ptr, ptr %i.q, align 8, !alias.scope !21018, !nonnull !4, !noundef !4
  %i.ia = atomicrmw sub ptr %i.hz, i64 1 release, align 8, !noalias !21018
  %i.ib = icmp eq i64 %i.ia, 1
  br i1 %i.ib, label %bb.dn, label %bb.dp

bb.dn:                                            ; preds = %bb.dm
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #45
          to label %bb.dp unwind label %bb.ai

bb.do:                                            ; preds = %bb.dl, %bb.dp
  %.pn35.pn342 = phi { ptr, i32 } [ %i.hy, %bb.dp ], [ %i.hx, %bb.dl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
end_hunk_3
begin_hunk_4_@_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log:bb.a
  tail call void @llvm.assume(i1 %i.l)
  %.not72 = icmp samesign ugt i64 %switch.offset, %i.k
  br i1 %.not72, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.j, %bb.n, %switch.lookup, %bb.a
  ret void

bb.c:                                             ; preds = %switch.lookup
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 3 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 3 uses
  store i64 5, ptr %i.e, align 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %.sroa.570.0..sroa_idx, align 8
  %.sroa.771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %2, ptr %.sroa.771.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !4, !nonnull !4
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e) #49
  br i1 %i.r, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %0, align 8, !range !1069, !noundef !4
  %.not73 = icmp eq i64 %i.s, 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 2 uses
  br i1 %.not73, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.u = load ptr, ptr %i.t, align 8, !noundef !4 ; 2 uses
  %.not76 = icmp eq ptr %i.u, null
  br i1 %.not76, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = load ptr, ptr %i.t, align 8, !noundef !4 ; 2 uses
  %.not74 = icmp eq ptr %i.v, null
  br i1 %.not74, label %bb.l, label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.x = load i64, ptr %i.w, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.sroa.540.sroa.5.0 = phi i64 [ %i.x, %bb.g ], [ undef, %bb.e ]
  %.sroa.039.0 = phi i64 [ 1, %bb.g ], [ 2, %bb.e ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.z = load ptr, ptr %i.y, align 8, !noundef !4 ; 2 uses
  %.not77 = icmp eq ptr %i.z, null
  br i1 %.not77, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.ab = load i64, ptr %i.aa, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.6.sroa.5.0 = phi i64 [ undef, %bb.h ], [ %i.ab, %bb.i ]
  %.sroa.031.0 = phi i64 [ 2, %bb.h ], [ 1, %bb.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !range !6418, !noundef !4
  store i64 %i.ae, ptr %i.c, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.028.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.028.sroa.3.sroa.3.0..sroa.028.sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.028.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.028.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.028.sroa.6.sroa.3.0..sroa.028.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ag = load <2 x i32>, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  store ptr @_RNvXs8_NtCsbvkFyIu7lgC_4core3fmtNtB5_9ArgumentsNtB5_7Display3fmt, ptr %.sroa.444.0..sroa_idx, align 8
  store ptr %i.c, ptr %i.af, align 8
  store ptr @_RNvXsd_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.448.0..sroa_idx, align 8
  store i64 %.sroa.039.0, ptr %i.d, align 8
  store ptr %i.u, ptr %.sroa.028.sroa.3.0..sroa_idx, align 8
  store i64 %.sroa.540.sroa.5.0, ptr %.sroa.028.sroa.3.sroa.3.0..sroa.028.sroa.3.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.031.0, ptr %.sroa.028.sroa.4.0..sroa_idx, align 8
  store ptr %i.z, ptr %.sroa.028.sroa.6.0..sroa_idx, align 8
  store i64 %.sroa.6.sroa.5.0, ptr %.sroa.028.sroa.6.sroa.3.0..sroa.028.sroa.6.0..sroa_idx.sroa_idx, align 8
  store i64 5, ptr %.sroa.530.0..sroa_idx, align 8
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 %2, ptr %.sroa.8.0..sroa_idx, align 8
  store <2 x i32> %i.ag, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr @643, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr %i.b, ptr %.sroa.15.0..sroa_idx, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !4, !nonnull !4
  call void %i.ai(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.d) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.b

bb.k:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.ak = load i64, ptr %i.aj, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.k
  %.sroa.568.sroa.5.0 = phi i64 [ %i.ak, %bb.k ], [ undef, %bb.f ]
  %.sroa.067.0 = phi i64 [ 1, %bb.k ], [ 2, %bb.f ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.am = load ptr, ptr %i.al, align 8, !noundef !4 ; 2 uses
  %.not75 = icmp eq ptr %i.am, null
  br i1 %.not75, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.ao = load i64, ptr %i.an, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.sroa.663.sroa.5.0 = phi i64 [ undef, %bb.l ], [ %i.ao, %bb.m ]
  %.sroa.058.0 = phi i64 [ 2, %bb.l ], [ 1, %bb.m ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.067.0, ptr %i.a, align 8
  %.sroa.049.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.049.sroa.3.sroa.3.0..sroa.049.sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.049.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.049.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.049.sroa.6.sroa.3.0..sroa.049.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.752.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.853.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.954.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.aq = load <2 x i32>, ptr %i.ap, align 8
  store ptr %i.v, ptr %.sroa.049.sroa.3.0..sroa_idx, align 8
  store i64 %.sroa.568.sroa.5.0, ptr %.sroa.049.sroa.3.sroa.3.0..sroa.049.sroa.3.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.058.0, ptr %.sroa.049.sroa.4.0..sroa_idx, align 8
  store ptr %i.am, ptr %.sroa.049.sroa.6.0..sroa_idx, align 8
  store i64 %.sroa.663.sroa.5.0, ptr %.sroa.049.sroa.6.sroa.3.0..sroa.049.sroa.6.0..sroa_idx.sroa_idx, align 8
  store i64 5, ptr %.sroa.551.0..sroa_idx, align 8
  store ptr %1, ptr %.sroa.752.0..sroa_idx, align 8
  store i64 %2, ptr %.sroa.853.0..sroa_idx, align 8
  store <2 x i32> %i.aq, ptr %.sroa.954.0..sroa_idx, align 8
  %.sroa.1356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %3, ptr %.sroa.1356.0..sroa_idx, align 8
  %.sroa.1557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %4, ptr %.sroa.1557.0..sroa_idx, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !4, !nonnull !4
  call void %i.as(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.a) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB2_13MetricDetails3add(ptr noalias noundef align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %.sroa.0.0.i = tail call noundef i64 @llvm.smin.i64(i64 %i.d, i64 %i.b)
  store i64 %.sroa.0.0.i, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !4
  %.sroa.0.0.i1 = tail call noundef i64 @llvm.smax.i64(i64 %i.h, i64 %i.f)
  store i64 %.sroa.0.0.i1, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load <2 x i64>, ptr %i.i, align 8
  %i.l = load <2 x i64>, ptr %i.j, align 8
  %i.m = add <2 x i64> %i.l, %i.k                 ; 3 uses
  store <2 x i64> %i.m, ptr %i.j, align 8
  %i.n = extractelement <2 x i64> %i.m, i64 1
  %i.o = sitofp i64 %i.n to double
  %i.p = extractelement <2 x i64> %i.m, i64 0
  %i.q = uitofp i64 %i.p to double
  %i.r = fdiv double %i.o, %i.q
  store double %i.r, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs14kWLkQVSKO_14deltalake_core6writer4jsonNtB2_15DataArrowWriter21new_underlying_writer(ptr dead_on_unwind noalias noundef writable sret([280 x i8]) align 8 captures(address) dereferenceable(280) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(248) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [248 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.a, ptr noundef nonnull align 8 dereferenceable(248) %3, i64 248, i1 false)
  call void @_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerINtB4_11ArrowWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE7try_newB1d_(ptr noalias noundef nonnull sret([280 x i8]) align 8 captures(address) dereferenceable(280) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(248) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write7metricsNtB2_27WriteMetricExtensionPlanner3new() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !26843
  %i.a = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 16, i64 noundef range(i64 8, 17) 8) #40, !noalias !26843 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit, !prof !52

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #48, !noalias !26843
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider9data_sinkNtB2_13DeltaDataSink3new(ptr dead_on_unwind noalias noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %3, i8 noundef range(i8 0, 4) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = invoke noundef nonnull ptr @_RNvXs2_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtNtB7_6kernel8snapshot13EagerSnapshotNtB5_16DataFusionMixins11read_schema(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3)
          to label %bb.d unwind label %bb.c       ; 3 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.h, %bb.i, %bb.c
  %.pn = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.k, %bb.i ], [ %i.k, %bb.h ]
  %.sroa.0.0 = phi i1 [ true, %bb.c ], [ false, %bb.i ], [ false, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !26846)
  call void @llvm.experimental.noalias.scope.decl(metadata !26849)
  %i.f = load ptr, ptr %i.c, align 8, !alias.scope !26852, !nonnull !4, !noundef !4
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !26852
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.j = invoke noundef nonnull ptr @_RNvMs2_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metricsNtB5_23ExecutionPlanMetricsSet3new()
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #46
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %2, ptr %i.m, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %4, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.e, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.j, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.g:                                             ; preds = %bb.i, %bb.b, %bb.k, %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.r = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !26853
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit, %bb.b
  br i1 %.sroa.0.0, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.k, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %3) #46
          to label %bb.j unwind label %bb.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE5drainNtNtNtCsbvkFyIu7lgC_4core3ops5range9RangeFullECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit5, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.b:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26858)
  call void @llvm.experimental.noalias.scope.decl(metadata !26861)
  call void @llvm.experimental.noalias.scope.decl(metadata !26864)
  call void @llvm.experimental.noalias.scope.decl(metadata !26867)
  %i.k = load ptr, ptr %i.a, align 8, !alias.scope !26870, !nonnull !4, !noundef !4
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !26870
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.j

bb.d:                                             ; preds = %.lr.ph, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit5
  %i.n = phi ptr [ %i.f, %.lr.ph ], [ %i.ae, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit5 ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.o, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.p = load i64, ptr %i.i, align 8, !noundef !4
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.r = cmpxchg ptr %i.q, i64 0, i64 %i.p acq_rel acquire, align 8
  %i.s = extractvalue { i64, i1 } %i.r, 1
  br i1 %i.s, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 2 uses
  %i.x = atomicrmw xchg ptr %i.w, i32 1 release, align 4
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = invoke noundef zeroext i1 @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.w)
          to label %bb.g unwind label %bb.b       ; 0 uses

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !26871)
  call void @llvm.experimental.noalias.scope.decl(metadata !26874)
  call void @llvm.experimental.noalias.scope.decl(metadata !26877)
  call void @llvm.experimental.noalias.scope.decl(metadata !26880)
  %i.aa = load ptr, ptr %i.a, align 8, !alias.scope !26883, !nonnull !4, !noundef !4
  %i.ab = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !26883
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit5

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit5 unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %bb.c, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.j, %bb.c ], [ %i.j, %bb.b ]
  invoke void @_RNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
end_hunk_4
begin_hunk_5_@_RNvMNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collectINtB2_10TryCollectINtNtNtB6_6stream3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1S_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB4a_5ErrorENtNtB1S_6marker4SendEL_EENCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB5y_10VacuumPlan7execute00EINtNtB2o_3vec3VecNtNtB2o_6string6StringEE3newB5C_:bb.a
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.b, align 8
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystemINtB2_15MetricsIteratorINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB2q_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB4G_5ErrorENtNtB2q_6marker4SendEL_EENCNCNvB2_14list_from_impl00ENtB8_8FileMetaE17emit_metrics_onceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(address, read_provenance) dereferenceable(160) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  store ptr null, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  store ptr %i.d, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !3, !invariant.load !4
  %i.j = add nsw i64 %i.i, -1
  %i.k = and i64 %i.j, -16
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant7elapsed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.p)
          to label %bb.f unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_EECs14kWLkQVSKO_14deltalake_core.exit4, %bb.a
  ret void

bb.d:                                             ; preds = %bb.g, %bb.f, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !26884)
  call void @llvm.experimental.noalias.scope.decl(metadata !26887)
  %i.s = load ptr, ptr %i.b, align 8, !alias.scope !26890, !nonnull !4, !noundef !4
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !26890
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.v = extractvalue { i64, i32 } %i.q, 0
  %i.w = extractvalue { i64, i32 } %i.q, 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = load i64, ptr %i.x, align 8, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aa = load i64, ptr %i.z, align 8, !noundef !4
  invoke void %i.o(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, i64 noundef %i.v, i32 noundef %i.w, i64 noundef %i.y, i64 noundef %i.aa)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !invariant.load !4, !nonnull !4
  invoke void %i.ac(ptr noundef nonnull %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.h unwind label %bb.d

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !26891)
  call void @llvm.experimental.noalias.scope.decl(metadata !26894)
  %i.ad = load ptr, ptr %i.b, align 8, !alias.scope !26897, !nonnull !4, !noundef !4
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !26897
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_EECs14kWLkQVSKO_14deltalake_core.exit4

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_EECs14kWLkQVSKO_14deltalake_core.exit4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_EECs14kWLkQVSKO_14deltalake_core.exit4: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.j:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.r
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystemINtB2_15MetricsIteratorINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8buffered8BufferedINtNtB1t_3map3MapINtNtB1v_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtB4n_3ops5range5RangeyEEEEENCNCNvB2_15read_files_impl00EENtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE17emit_metrics_onceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(address, read_provenance) dereferenceable(184) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  store ptr null, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  store ptr %i.d, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !3, !invariant.load !4
  %i.j = add nsw i64 %i.i, -1
  %i.k = and i64 %i.j, -16
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.q = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant7elapsed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.p)
          to label %bb.f unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_EECs14kWLkQVSKO_14deltalake_core.exit4, %bb.a
  ret void

bb.d:                                             ; preds = %bb.g, %bb.f, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !26898)
  call void @llvm.experimental.noalias.scope.decl(metadata !26901)
  %i.s = load ptr, ptr %i.b, align 8, !alias.scope !26904, !nonnull !4, !noundef !4
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !26904
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.v = extractvalue { i64, i32 } %i.q, 0
  %i.w = extractvalue { i64, i32 } %i.q, 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.y = load i64, ptr %i.x, align 8, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aa = load i64, ptr %i.z, align 8, !noundef !4
  invoke void %i.o(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, i64 noundef %i.v, i32 noundef %i.w, i64 noundef %i.y, i64 noundef %i.aa)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !invariant.load !4, !nonnull !4
  invoke void %i.ac(ptr noundef nonnull %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.h unwind label %bb.d

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !26905)
  call void @llvm.experimental.noalias.scope.decl(metadata !26908)
  %i.ad = load ptr, ptr %i.b, align 8, !alias.scope !26911, !nonnull !4, !noundef !4
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !26911
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_EECs14kWLkQVSKO_14deltalake_core.exit4

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_EECs14kWLkQVSKO_14deltalake_core.exit4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_EECs14kWLkQVSKO_14deltalake_core.exit4: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.j:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6updateNtB5_28UpdateMetricExtensionPlanner3new() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !26912
  %i.a = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 16, i64 noundef range(i64 8, 17) 8) #40, !noalias !26912 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit, !prof !52

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #48, !noalias !26912
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB5_7Metrics3add(ptr noalias noundef align 8 captures(none) dereferenceable(136) initializes((16, 24), (56, 64)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 8
  %i.b = load <2 x i64>, ptr %0, align 8
  %i.c = add <2 x i64> %i.b, %i.a
  store <2 x i64> %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26918)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !26915, !noalias !26918, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !26918, !noalias !26915, !noundef !4
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.smin.i64(i64 %i.h, i64 %i.f)
  store i64 %.sroa.0.0.i.i, ptr %i.e, align 8, !alias.scope !26915, !noalias !26918
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !26915, !noalias !26918, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !26918, !noalias !26915, !noundef !4
  %.sroa.0.0.i1.i = tail call noundef i64 @llvm.smax.i64(i64 %i.l, i64 %i.j)
  store i64 %.sroa.0.0.i1.i, ptr %i.i, align 8, !alias.scope !26915, !noalias !26918
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load <2 x i64>, ptr %i.m, align 8, !alias.scope !26918, !noalias !26915
  %i.p = load <2 x i64>, ptr %i.n, align 8, !alias.scope !26915, !noalias !26918
  %i.q = add <2 x i64> %i.p, %i.o                 ; 3 uses
  store <2 x i64> %i.q, ptr %i.n, align 8, !alias.scope !26915, !noalias !26918
  %i.r = extractelement <2 x i64> %i.q, i64 1
  %i.s = sitofp i64 %i.r to double
  %i.t = extractelement <2 x i64> %i.q, i64 0
  %i.u = uitofp i64 %i.t to double
  %i.v = fdiv double %i.s, %i.u
  store double %i.v, ptr %i.d, align 8, !alias.scope !26915, !noalias !26918
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26923)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !26920, !noalias !26923, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !26923, !noalias !26920, !noundef !4
  %.sroa.0.0.i.i1 = tail call noundef i64 @llvm.smin.i64(i64 %i.aa, i64 %i.y)
  store i64 %.sroa.0.0.i.i1, ptr %i.x, align 8, !alias.scope !26920, !noalias !26923
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !26920, !noalias !26923, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !26923, !noalias !26920, !noundef !4
  %.sroa.0.0.i1.i2 = tail call noundef i64 @llvm.smax.i64(i64 %i.ae, i64 %i.ac)
  store i64 %.sroa.0.0.i1.i2, ptr %i.ab, align 8, !alias.scope !26920, !noalias !26923
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ah = load <2 x i64>, ptr %i.af, align 8, !alias.scope !26923, !noalias !26920
  %i.ai = load <2 x i64>, ptr %i.ag, align 8, !alias.scope !26920, !noalias !26923
  %i.aj = add <2 x i64> %i.ai, %i.ah              ; 3 uses
  store <2 x i64> %i.aj, ptr %i.ag, align 8, !alias.scope !26920, !noalias !26923
  %i.ak = extractelement <2 x i64> %i.aj, i64 1
  %i.al = sitofp i64 %i.ak to double
  %i.am = extractelement <2 x i64> %i.aj, i64 0
  %i.an = uitofp i64 %i.am to double
  %i.ao = fdiv double %i.al, %i.an
  store double %i.ao, ptr %i.w, align 8, !alias.scope !26920, !noalias !26923
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !noundef !4
  %i.at = add i64 %i.as, %i.aq
  store i64 %i.at, ptr %i.ar, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batchNtB5_15PartitionWriter10buffer_len(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(624) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = tail call noundef i64 @_RNvMNtNtCs14kWLkQVSKO_14deltalake_core6writer5utilsNtB2_15ShareableBuffer3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = tail call noundef i64 @_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerINtB4_11ArrowWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE16in_progress_sizeB1d_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %i.c)
  %i.e = add i64 %i.d, %i.b
  ret i64 %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batchNtB5_15PartitionWriter3new(ptr dead_on_unwind noalias noundef writable writeonly sret([624 x i8]) align 8 captures(none) dereferenceable(624) %0, ptr noundef nonnull %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(248) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [248 x i8], align 8               ; 4 uses
  %i.b = alloca [248 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [280 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 9 uses
  %i.g = alloca [8 x i8], align 8                 ; 8 uses
  store ptr %1, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.h = invoke noundef nonnull ptr @_RNvXsY_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockINtNtB7_3vec3VechEEENtNtCsbvkFyIu7lgC_4core7default7Default7defaultCs14kWLkQVSKO_14deltalake_core()
          to label %bb.c unwind label %bb.b       ; 4 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferEBM_.exit28: ; preds = %.critedge, %bb.aa, %bb.b
  %.pn = phi { ptr, i32 } [ %i.i, %bb.b ], [ %i.ar, %bb.aa ], [ %i.ar, %.critedge ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(248) %3) #46
          to label %bb.n unwind label %bb.z

bb.b:                                             ; preds = %bb.l, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferEBM_.exit28

bb.c:                                             ; preds = %bb.a
  store ptr %i.h, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = atomicrmw add ptr %i.h, i64 1 monotonic, align 8
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.h, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.m = atomicrmw add ptr %i.l, i64 1 monotonic, align 8
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 3 uses
  store ptr %i.o, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @_RNvXsq_NtNtCs4tdlwR1I4n2_7parquet4file10propertiesNtB5_16WriterPropertiesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(248) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3)
          to label %bb.i unwind label %bb.x

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.critedge

bb.i:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.b, ptr noundef nonnull align 8 dereferenceable(248) %i.a, i64 248, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerINtB4_11ArrowWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE7try_newB1d_(ptr noalias noundef nonnull sret([280 x i8]) align 8 captures(address) dereferenceable(280) %i.e, ptr noundef nonnull %i.h, ptr noundef nonnull %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(248) %i.b)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = load i64, ptr %i.e, align 8, !range !17, !noundef !4 ; 2 uses
  %i.r = icmp eq i64 %i.q, -9223372036854775808
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  br i1 %i.r, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.experimental.noalias.scope.decl(metadata !26925)
  call void @llvm.experimental.noalias.scope.decl(metadata !26928)
  call void @llvm.experimental.noalias.scope.decl(metadata !26931)
  %i.u = load ptr, ptr %i.f, align 8, !alias.scope !26934, !nonnull !4, !noundef !4
  %i.v = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !26934
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferEBM_.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockINtNtB7_3vec3VechEEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferEBM_.exit unwind label %bb.b

bb.m:                                             ; preds = %bb.j
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
end_hunk_5
begin_hunk_6_@_RNvMs4_NtNtCsonPGffhQyS_5regex5regex6stringNtB5_5Regex11captures_at:_RINvMNtNtCslw7hBPHc6qc_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejEECs14kWLkQVSKO_14deltalake_core.exit

.noexc:                                           ; preds = %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.val9, i64 40 ; 2 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8, !noalias !27438 ; 2 uses
  %i.am = icmp eq i64 %i.aj, %i.al
  br i1 %i.am, label %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.thread, label %bb.e, !prof !240

bb.e:                                             ; preds = %.noexc
  invoke void @_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE8get_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %.val9, i64 noundef %i.aj, i64 noundef %i.al)
          to label %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.p

_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.thread: ; preds = %.noexc
  store atomic i64 1, ptr %i.ak release, align 8, !noalias !27438
  %i.an = inttoptr i64 %i.aj to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.val9, ptr %i.ao, align 8, !noalias !27430
  store i64 1, ptr %i.b, align 8, !noalias !27430
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.an, ptr %i.ap, align 8, !noalias !27430
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 0, ptr %i.aq, align 8, !noalias !27430
  %i.ar = load ptr, ptr %i.k, align 8, !noalias !27430, !nonnull !4, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !noalias !27430, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !3, !invariant.load !4, !noalias !27430
  %i.aw = add nsw i64 %i.av, -1
  %i.ax = and i64 %i.aw, -16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  br label %bb.f

_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e
  %.pre = load i64, ptr %i.b, align 8, !range !58, !noalias !27430
  %i.ba = trunc nuw i64 %.pre to i1
  %i.bb = load ptr, ptr %i.k, align 8, !noalias !27430, !nonnull !4, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !27430, !nonnull !4, !align !18, !noundef !4 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !range !3, !invariant.load !4, !noalias !27430
  %i.bg = add nsw i64 %i.bf, -1
  %i.bh = and i64 %i.bg, -16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.thread, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.bk = phi ptr [ %i.az, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.thread ], [ %i.bj, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.bl = phi ptr [ %i.at, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.thread ], [ %i.bd, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !27430, !nonnull !4, !align !18, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  br label %bb.h

bb.g:                                             ; preds = %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !27430, !nonnull !4, !noundef !4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.br = phi ptr [ %i.bk, %bb.f ], [ %i.bj, %bb.g ]
  %i.bs = phi ptr [ %i.bl, %bb.f ], [ %i.bd, %bb.g ]
  %i.bt = phi i1 [ true, %bb.f ], [ false, %bb.g ]
  %.sroa.01.0.i = phi ptr [ %i.bo, %bb.f ], [ %i.bq, %bb.g ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 96
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !4, !noalias !27430, !nonnull !4
  %i.bw = invoke { i32, i32 } %i.bv(ptr noundef nonnull %i.br, ptr noalias noundef nonnull align 8 dereferenceable(1400) %.sroa.01.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 %i.g, i64 noundef range(i64 0, 1152921504606846976) %i.i)
          to label %bb.i unwind label %bb.n       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !27430 ; 5 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !27430 ; 4 uses
  %.sroa.46.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.46.0.copyload.i = load i8, ptr %.sroa.46.0..sroa_idx.i10, align 8, !noalias !27430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27430
  %i.bx = ptrtoint ptr %.sroa.2.0.copyload.i to i64 ; 2 uses
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %i.bx, ptr %i.a, align 8, !noalias !27441
  %i.by = icmp eq ptr %.sroa.2.0.copyload.i, inttoptr (i64 2 to ptr)
  br i1 %i.by, label %.noexc10.i, label %.noexc11.i, !prof !52

bb.k:                                             ; preds = %bb.i
  %i.bz = trunc nuw i8 %.sroa.46.0.copyload.i to i1
  br i1 %i.bz, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i) ]
  invoke fastcc void @_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE9put_valueCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %.sroa.3.0.copyload.i, ptr noalias noundef nonnull align 8 %.sroa.2.0.copyload.i) #49
          to label %bb.q unwind label %bb.p

bb.m:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i) ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.sroa.2.0.copyload.i)
          to label %bb.q unwind label %bb.p

.noexc10.i:                                       ; preds = %bb.j
  invoke void @_RINvNtCsbvkFyIu7lgC_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_RNvNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner17THREAD_ID_DROPPED, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @690) #50
          to label %.noexc14 unwind label %bb.p

.noexc14:                                         ; preds = %.noexc10.i
  unreachable

.noexc11.i:                                       ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i) ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i, i64 40
  store atomic i64 %i.bx, ptr %i.ca release, align 8
  br label %bb.q

bb.n:                                             ; preds = %bb.h
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCslw7hBPHc6qc_14regex_automata4util4pool9PoolGuardNtNtNtBN_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1B_NtNtB4_6marker4SyncNtB3h_4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3L_10UnwindSafeEL_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.b) #46
          to label %.body unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.p:                                             ; preds = %.noexc10.i, %bb.m, %bb.l, %bb.e, %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.cc, %bb.p ], [ %lpad.thr_comm.split-lp.i, %bb.n ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4util8captures8CapturesECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.c) #46
          to label %bb.x unwind label %bb.w

.thread:                                          ; preds = %_RINvMNtNtCslw7hBPHc6qc_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejEECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.e, align 8
  br label %bb.s

bb.q:                                             ; preds = %.noexc11.i, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27430
  %i.cd = extractvalue { i32, i32 } %i.bw, 1
  %i.ce = extractvalue { i32, i32 } %i.bw, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %i.ce, ptr %i.e, align 8
  store i32 %i.cd, ptr %i.cf, align 4
  %i.cg = icmp eq i32 %i.ce, 1
  br i1 %i.cg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ch = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 168
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load i64, ptr %i.ck, align 8, !range !58, !noundef !4
  %i.cm = trunc nuw i64 %i.cl to i1
  br i1 %i.cm, label %bb.t, label %bb.u

bb.s:                                             ; preds = %.thread, %bb.q
  store i64 2, ptr %0, align 8
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4util8captures8CapturesECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.c)
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = call i64 @llvm.uadd.sat.i64(i64 %i.co, i64 1)
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.t
  %.sroa.3.0 = phi i64 [ %i.cp, %bb.t ], [ undef, %bb.r ]
  %.sroa.0.0 = phi i64 [ 1, %bb.t ], [ 0, %bb.r ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %2, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %3, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.w:                                             ; preds = %.body
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.x:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs5_NtNtCs14kWLkQVSKO_14deltalake_core10operations5mergeNtB5_27MergeMetricExtensionPlanner3new() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !27444
  %i.a = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 16, i64 noundef range(i64 8, 17) 8) #40, !noalias !27444 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit, !prof !52

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #48, !noalias !27444
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs6_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_13TableFeatures25to_reader_writer_features(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs5_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureINtNtCsbvkFyIu7lgC_4core7convert7TryFromRNtB5_13TableFeaturesE8try_from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %1)
  %i.c = load i64, ptr %i.b, align 8, !range !27447, !noundef !4 ; 4 uses
  %i.d = icmp eq i64 %i.c, -9223372036854775783
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.412.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.c, ptr %i.a, align 8
  %i.e = xor i64 %i.c, -9223372036854775808
  %i.f = icmp slt i64 %i.c, 0
  %i.g = select i1 %i.f, i64 %i.e, i64 25         ; 2 uses
  switch i64 %i.g, label %bb.e [
    i64 0, label %bb.f
    i64 1, label %bb.f
    i64 2, label %bb.f
    i64 3, label %bb.f
    i64 4, label %bb.f
    i64 5, label %bb.f
    i64 6, label %bb.f
    i64 7, label %bb.f
    i64 8, label %bb.f
    i64 9, label %bb.f
    i64 10, label %bb.f
    i64 11, label %bb.f
    i64 12, label %bb.f
    i64 13, label %switch.lookup
    i64 14, label %switch.lookup
    i64 15, label %switch.lookup
    i64 16, label %switch.lookup
    i64 17, label %switch.lookup
    i64 18, label %switch.lookup
    i64 19, label %switch.lookup
    i64 20, label %switch.lookup
    i64 21, label %switch.lookup
    i64 22, label %switch.lookup
    i64 23, label %switch.lookup
    i64 24, label %switch.lookup
    i64 25, label %bb.g
  ]

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775783, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -9223372036854775783, ptr %i.h, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  unreachable

bb.f:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i64 -9223372036854775783, ptr %0, align 8
  br label %bb.h

switch.lookup:                                    ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %switch.offset = or disjoint i64 %i.g, -9223372036854775808
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i64 %switch.offset, ptr %0, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  store i64 -9223372036854775783, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -9223372036854775783, ptr %i.k, align 8
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a)
  br label %bb.h

bb.h:                                             ; preds = %switch.lookup, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_13CommitBuilder12with_actions(ptr dead_on_unwind noalias noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(144) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1j_.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction13CommitBuilderEBM_(ptr noalias noundef align 8 dereferenceable(144) %1) #46
          to label %bb.g unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1j_.exit: ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 144, i1 false)
  ret void

bb.f:                                             ; preds = %.body
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_13CommitBuilder17with_app_metadata(ptr dead_on_unwind noalias noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(144) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction13CommitBuilderEBM_(ptr noalias noundef align 8 dereferenceable(144) %1) #46
          to label %bb.d unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 144, i1 false)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_13CommitBuilder29with_post_commit_hook_handler(ptr dead_on_unwind noalias noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(144) %1, ptr noundef %2, ptr %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27448)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !27448, !noundef !4 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !27451
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit unwind label %bb.d
end_hunk_6
begin_hunk_7_@_RNvMs_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4planNtBa_15DeltaScanConfig9map_field:bb.a
  %i.it = icmp eq i64 %i.is, 1
  br i1 %i.it, label %bb.cs, label %.body

bb.cs:                                            ; preds = %.body28.thread
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSIBx_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ap) #45
          to label %.body unwind label %bb.bk

bb.ct:                                            ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.iu = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29032)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !29034
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.iu)
          to label %.noexc101 unwind label %bb.c

.noexc101:                                        ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !29034
  invoke fastcc void @_RNvXs2_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bp)
          to label %bb.cw unwind label %bb.cv, !noalias !29029

bb.cu:                                            ; preds = %bb.cx, %bb.cv
  %.pn.i100 = phi { ptr, i32 } [ %i.jd, %bb.cx ], [ %i.iv, %bb.cv ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #46
          to label %.body unwind label %bb.cy, !noalias !29029

bb.cv:                                            ; preds = %.noexc101
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cw:                                            ; preds = %.noexc101
  %i.iw = getelementptr inbounds nuw i8, ptr %i.bo, i64 120
  %i.ix = load i8, ptr %i.iw, align 8, !range !178, !alias.scope !29032, !noalias !29029, !noundef !4
  %i.iy = getelementptr inbounds nuw i8, ptr %i.bo, i64 112
  %i.iz = load i64, ptr %i.iy, align 8, !alias.scope !29032, !noalias !29029, !noundef !4
  %i.ja = getelementptr inbounds nuw i8, ptr %i.bo, i64 121
  %i.jb = load i8, ptr %i.ja, align 1, !range !178, !alias.scope !29032, !noalias !29029, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29034
  %i.jc = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jc)
          to label %bb.cz unwind label %bb.cx, !noalias !29029

bb.cx:                                            ; preds = %bb.cw
  %i.jd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #46
          to label %bb.cu unwind label %bb.cy, !noalias !29029

bb.cy:                                            ; preds = %bb.cx, %bb.cu
  %i.je = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !29029
  unreachable

bb.cz:                                            ; preds = %bb.cw
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.jf, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !29032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29034
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !29032
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jg, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !29032
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ay, i64 104
  store i8 %i.ix, ptr %i.jh, align 8, !alias.scope !29029, !noalias !29032
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  store i64 %i.iz, ptr %i.ji, align 8, !alias.scope !29029, !noalias !29032
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ay, i64 105
  store i8 %i.jb, ptr %i.jj, align 1, !alias.scope !29029, !noalias !29032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !29034
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !29034
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.jk = load ptr, ptr %i.ba, align 8, !nonnull !4, !noundef !4
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 40
  invoke fastcc void @_RNvXs2_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.aw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jl)
          to label %bb.db unwind label %bb.di

bb.da:                                            ; preds = %bb.dc
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.db:                                            ; preds = %bb.cz
  invoke void @_RNvNtCs2xb0BKvnu80_21datafusion_datasource16file_scan_config27wrap_partition_type_in_dict(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ax, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.aw)
          to label %bb.dc unwind label %bb.di

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  invoke void @_RNvMs5_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB5_5Field14with_data_type(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.az, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.ay, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ax)
          to label %bb.dd unwind label %bb.da

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 1, ptr %i.ab, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 1, ptr %i.jm, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.jn, ptr noundef nonnull align 8 dereferenceable(112) %i.az, i64 112, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !29035
  %i.jo = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 128, i64 noundef range(i64 8, 17) 8) #40, !noalias !29035 ; 4 uses
  %i.jp = icmp eq ptr %i.jo, null
  br i1 %i.jp, label %bb.de, label %bb.dh, !prof !52

bb.de:                                            ; preds = %bb.dd
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #48
          to label %.noexc105 unwind label %bb.df

.noexc105:                                        ; preds = %bb.de
  unreachable

bb.df:                                            ; preds = %bb.de
  %i.jq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(112) %i.jn)
          to label %.body unwind label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.jr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.dh:                                            ; preds = %bb.dd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.jo, ptr noundef nonnull align 8 dereferenceable(128) %i.ab, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.experimental.noalias.scope.decl(metadata !29038)
  call void @llvm.experimental.noalias.scope.decl(metadata !29041)
  %i.js = load ptr, ptr %i.ba, align 8, !alias.scope !29044, !nonnull !4, !noundef !4
  %i.jt = atomicrmw sub ptr %i.js, i64 1 release, align 8, !noalias !29044
  %i.ju = icmp eq i64 %i.jt, 1
  br i1 %i.ju, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit72.sink.split, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit72

bb.di:                                            ; preds = %bb.db, %bb.cz
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(112) %i.ay) #46
          to label %.body unwind label %bb.bk

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index(ptr readonly captures(none) %.0.val, i64 %.8.val, i64 noundef %0) unnamed_addr #12 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.07 = and i64 %0, %.8.val               ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.07
  %.sroa.0.0.copyload.i68 = load <16 x i8>, ptr %i.a, align 1, !noalias !29045
  %i.b = icmp slt <16 x i8> %.sroa.0.0.copyload.i68, zeroinitializer
  %i.c = bitcast <16 x i1> %i.b to i16            ; 2 uses
  %.not.i9 = icmp eq i16 %i.c, 0
  br i1 %.not.i9, label %.lr.ph, label %._crit_edge, !prof !18444

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.07, %bb.a ], [ %.sroa.0.0, %.lr.ph ]
  %.lcssa = phi i16 [ %i.c, %bb.a ], [ %i.u, %.lr.ph ]
  %i.d = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.e = zext nneg i16 %i.d to i64
  %i.f = add i64 %.sroa.0.0.lcssa, %i.e
  %i.g = and i64 %i.f, %.8.val                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !noundef !4
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.b, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit, !prof !52

bb.b:                                             ; preds = %._crit_edge
  %i.k = load <16 x i8>, ptr %.0.val, align 16, !noalias !29048
  %i.l = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %.not.i6 = icmp ne i16 %i.m, 0
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.m, i1 true)
  %i.o = zext nneg i16 %i.n to i64
  tail call void @llvm.assume(i1 %.not.i6)
  br label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit

_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit: ; preds = %._crit_edge, %bb.b
  %.sroa.0.0.i5 = phi i64 [ %i.o, %bb.b ], [ %i.g, %._crit_edge ]
  ret i64 %.sroa.0.0.i5

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.010 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %.sroa.0.07, %bb.a ]
  %i.p = phi i64 [ %i.q, %.lr.ph ], [ 0, %bb.a ]
  %i.q = add i64 %i.p, 16                         ; 2 uses
  %i.r = add i64 %i.q, %.sroa.0.010
  %.sroa.0.0 = and i64 %i.r, %.8.val              ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.0
  %.sroa.0.0.copyload.i6 = load <16 x i8>, ptr %i.s, align 1, !noalias !29045
  %i.t = icmp slt <16 x i8> %.sroa.0.0.copyload.i6, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i = icmp eq i16 %i.u, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !prof !18449
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvMse_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetNtNtB7_6string6StringEE3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !29051
  %i.d = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 56, i64 noundef range(i64 8, 17) 8) #40, !noalias !29051 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetNtNtB4_6string6StringEEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !52

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #48
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 24, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetNtNtBL_6string6StringEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetNtNtBL_6string6StringEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetNtNtB4_6string6StringEEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvMse_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtCseo6ZV82fEK1_3url3UrlE3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(88) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !29054
  %i.d = tail call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 104, i64 noundef range(i64 8, 17) 8) #40, !noalias !29054 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtCseo6ZV82fEK1_3url3UrlEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !52

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #48
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.a) #46
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtCseo6ZV82fEK1_3url3UrlEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvMse_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !29057
  %i.d = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 40, i64 noundef range(i64 8, 17) 8) #40, !noalias !29057 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtB4_6string6StringEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !52

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #48
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) #46
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtB4_6string6StringEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvMse_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs5wg436RVUAP_24datafusion_physical_plan5limit14LocalLimitExecE3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(384) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [400 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.c, ptr noundef nonnull align 8 dereferenceable(384) %0, i64 384, i1 false)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !29060
  %i.d = tail call noundef align 8 dereferenceable_or_null(400) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 400, i64 noundef range(i64 8, 17) 8) #40, !noalias !29060 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs5wg436RVUAP_24datafusion_physical_plan5limit14LocalLimitExecEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !52

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 400) #48
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5wg436RVUAP_24datafusion_physical_plan5limit14LocalLimitExecECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs5wg436RVUAP_24datafusion_physical_plan5limit14LocalLimitExecEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs5wg436RVUAP_24datafusion_physical_plan5limit14LocalLimitExecEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs5wg436RVUAP_24datafusion_physical_plan5limit14LocalLimitExecEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.d, ptr noundef nonnull align 8 dereferenceable(400) %i.a, i64 400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvMse_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs5wg436RVUAP_24datafusion_physical_plan6filter10FilterExecE3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(448) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [464 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(448) %i.c, ptr noundef nonnull align 8 dereferenceable(448) %0, i64 448, i1 false)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !29063
  %i.d = tail call noundef align 8 dereferenceable_or_null(464) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 464, i64 noundef range(i64 8, 17) 8) #40, !noalias !29063 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs5wg436RVUAP_24datafusion_physical_plan6filter10FilterExecEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !52

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 464) #48
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5wg436RVUAP_24datafusion_physical_plan6filter10FilterExecECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(448) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs5wg436RVUAP_24datafusion_physical_plan6filter10FilterExecEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs5wg436RVUAP_24datafusion_physical_plan6filter10FilterExecEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs5wg436RVUAP_24datafusion_physical_plan6filter10FilterExecEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %i.d, ptr noundef nonnull align 8 dereferenceable(464) %i.a, i64 464, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvMse_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateE3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(none) dead_on_return dereferenceable(112) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.c, ptr noundef nonnull align 16 dereferenceable(112) %0, i64 112, i1 false)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !29066
  %i.d = tail call noundef align 16 dereferenceable_or_null(128) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 128, i64 noundef range(i64 8, 17) 16) #40, !noalias !29066 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !52

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 128) #48
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.d, ptr noundef nonnull align 16 dereferenceable(128) %i.a, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvMse_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(144) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.c, ptr noundef nonnull align 8 dereferenceable(144) %0, i64 144, i1 false)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !29069
  %i.d = tail call noundef align 8 dereferenceable_or_null(160) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 160, i64 noundef range(i64 8, 17) 8) #40, !noalias !29069 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !52

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 160) #48
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.d, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvMse_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !29072
  %i.d = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 80, i64 noundef range(i64 8, 17) 8) #40, !noalias !29072 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !52

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #48
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #46
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvMse_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !29075
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 72, i64 noundef range(i64 8, 17) 8) #40, !noalias !29075 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !52

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #48
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvMse_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logical14MetricObserverE3newBM_(ptr noalias noundef nonnull readonly align 16 captures(none) dead_on_return dereferenceable(352) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [368 x i8], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %i.c, ptr noundef nonnull align 16 dereferenceable(352) %0, i64 352, i1 false)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !29078
  %i.d = tail call noundef align 16 dereferenceable_or_null(368) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 368, i64 noundef range(i64 8, 17) 16) #40, !noalias !29078 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logical14MetricObserverEE3newB16_.exit, !prof !52

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 368) #48
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logical14MetricObserverEEB1p_(ptr noalias noundef nonnull align 16 dereferenceable(368) %i.a) #46
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logical14MetricObserverEE3newB16_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.d, ptr noundef nonnull align 16 dereferenceable(368) %i.a, i64 368, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvMse_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrier12MergeBarrierE3newBO_(ptr noalias noundef nonnull readonly align 16 captures(none) dead_on_return dereferenceable(448) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [464 x i8], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(448) %i.c, ptr noundef nonnull align 16 dereferenceable(448) %0, i64 448, i1 false)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !29081
  %i.d = tail call noundef align 16 dereferenceable_or_null(464) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 464, i64 noundef range(i64 8, 17) 16) #40, !noalias !29081 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrier12MergeBarrierEE3newB18_.exit, !prof !52

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 464) #48
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrier12MergeBarrierEEB1r_(ptr noalias noundef nonnull align 16 dereferenceable(464) %i.a) #46
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrier12MergeBarrierEE3newB18_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(464) %i.d, ptr noundef nonnull align 16 dereferenceable(464) %i.a, i64 464, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMse_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_15FinalizedCommit8snapshot(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29084)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !29087
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !29084, !noalias !29089, !nonnull !4, !noundef !4 ; 4 uses
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !noalias !29087
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !noalias !29087
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29087
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB5_13EagerSnapshotNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit unwind label %bb.d, !noalias !29089

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !29090
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotEEB1k_.exit.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotEEB1k_.exit.i unwind label %bb.f, !noalias !29089

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !29089
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotEEB1k_.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.g

_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB5_13EagerSnapshotNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !29087
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute0010build_case(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 16 captures(address) dereferenceable(112) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  %i.b = alloca [112 x i8], align 16              ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [112 x i8], align 16              ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [64 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs0_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnINtNtCsbvkFyIu7lgC_4core7convert4FromReE4from(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @255, i64 noundef 20)
          to label %bb.b unwind label %.thread17

.thread17:                                        ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.thread12

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.i, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  store i64 5, ptr %i.e, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !29095
  %i.j = call noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 112, i64 noundef range(i64 8, 17) 16) #40, !noalias !29095 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.f, !prof !52

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #48
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.e) #46
          to label %.thread12 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.f:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.j, ptr noundef nonnull align 16 dereferenceable(112) %i.e, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr %i.j, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7literal3litbECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.b, i1 noundef zeroext false)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.q, %bb.j ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #46
          to label %bb.p unwind label %bb.o

bb.h:                                             ; preds = %bb.f
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !29098
  %i.o = call noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 112, i64 noundef range(i64 8, 17) 16) #40, !noalias !29098 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.i, label %bb.l, !prof !52

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #48
          to label %.noexc7 unwind label %bb.j

.noexc7:                                          ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.b) #46
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.o, ptr noundef nonnull align 16 dereferenceable(112) %i.b, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.j, ptr %i.s, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
end_hunk_7
begin_hunk_8_@_RNvNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute0011update_case:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.722)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.610.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.715.sroa.8, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.715.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx70, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.610.sroa.7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.610.sroa.7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  store i64 %.sroa.715.sroa.0.0, ptr %i.at, align 8
  %i.cv = load i64, ptr %i.ac, align 8, !alias.scope !29127, !noalias !29130, !noundef !4 ; 3 uses
  %i.cw = load i64, ptr %i.p, align 8, !range !16, !alias.scope !29127, !noalias !29130, !noundef !4
  %i.cx = icmp eq i64 %i.cv, %i.cw
  br i1 %i.cx, label %bb.aw, label %bb.bd

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs14kWLkQVSKO_14deltalake_core8protocol14MergePredicateE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.bd unwind label %bb.ax, !noalias !29130

bb.ax:                                            ; preds = %bb.aw
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol14MergePredicateEBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.az:                                            ; preds = %bb.at
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

_RNCNvNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute0011update_case0Bd_.exit: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.018.0.copyload = load i64, ptr %i.b, align 16 ; 2 uses
  %.sroa.620.sroa.0.0.copyload = load i64, ptr %.sroa.620.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.620.sroa.6, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.620.sroa.6.0..sroa.620.0..sroa_idx.sroa_idx, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.722, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.722.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not86 = icmp eq i64 %.sroa.018.0.copyload, -9223372036854775711
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.715.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.620.sroa.6, i64 16, i1 false)
  br i1 %.not86, label %bb.av, label %bb.ba

bb.ba:                                            ; preds = %_RNCNvNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute0011update_case0Bd_.exit
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.482.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.722, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.722)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.610.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.715.sroa.8, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.715.sroa.8)
  %.sroa.381.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.381.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.610.sroa.7, i64 16, i1 false)
  store i64 %.sroa.018.0.copyload, ptr %0, align 16
  %.sroa.280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.620.sroa.0.0.copyload, ptr %.sroa.280.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.610.sroa.7)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.ba
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.k

bb.bd:                                            ; preds = %bb.aw, %bb.av
  %i.dd = load ptr, ptr %i.ab, align 8, !alias.scope !29127, !noalias !29130, !nonnull !4, !noundef !4
  %i.de = getelementptr inbounds nuw [48 x i8], ptr %i.dd, i64 %i.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.de, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  %i.df = add i64 %i.cv, 1
  store i64 %i.df, ptr %i.ac, align 8, !alias.scope !29127, !noalias !29130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8122)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8122)
  %i.dg = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !29132, !noalias !29104, !nonnull !4, !noundef !4
  %i.dh = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !29132, !noalias !29104, !nonnull !4, !noundef !4 ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.dg
  br i1 %i.di, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14MergeOperationENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14MergeOperationENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB12_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.al, %bb.am, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8122)
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14MergeOperationENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14MergeOperationEEB1A_.exit114 unwind label %bb.g

bb.be:                                            ; preds = %bb.as, %bb.az
  %eh.lpad-body104.ph = phi { ptr, i32 } [ %i.da, %bb.az ], [ %i.ct, %bb.as ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bf

bb.bf:                                            ; preds = %bb.bn, %bb.bm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit, %bb.bo, %bb.bl, %bb.be, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14MergeOperationEEB1A_.exit
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.bg:                                            ; preds = %bb.ag
  %i.dk = load i64, ptr %i.e, align 8, !range !58, !noundef !4
  %i.dl = trunc nuw i64 %i.dk to i1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !range !17, !noundef !4 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.dl, label %bb.bh, label %bb.bi, !prof !52

bb.bh:                                            ; preds = %bb.bg
  %i.dp = load i64, ptr %i.do, align 8
  br label %.invoke

.invoke:                                          ; preds = %bb.ap, %bb.aj, %bb.bh
  %i.dq = phi i64 [ %i.dn, %bb.bh ], [ %i.cg, %bb.aj ], [ %i.cp, %bb.ap ]
  %i.dr = phi i64 [ %i.dp, %bb.bh ], [ %i.ci, %bb.aj ], [ %i.cq, %bb.ap ]
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.dq, i64 %i.dr) #48
          to label %.cont unwind label %.thread170.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.ds = load ptr, ptr %i.do, align 8, !nonnull !4, !noundef !4
  %i.dt = icmp samesign ugt i64 %i.dn, 18
  call void @llvm.assume(i1 %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.al

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14MergeOperationEEB1A_.exit114: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs14kWLkQVSKO_14deltalake_core8protocol14MergePredicateENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs14kWLkQVSKO_14deltalake_core8protocol14MergePredicateEEB1h_.exit unwind label %bb.bj

bb.bj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14MergeOperationEEB1A_.exit114
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs14kWLkQVSKO_14deltalake_core8protocol14MergePredicateENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.thread unwind label %bb.bk

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs14kWLkQVSKO_14deltalake_core8protocol14MergePredicateEEB1h_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14MergeOperationEEB1A_.exit114
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs14kWLkQVSKO_14deltalake_core8protocol14MergePredicateENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
  br label %bb.h

bb.bk:                                            ; preds = %bb.bj
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.bl:                                            ; preds = %bb.p
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.l) #46
          to label %.thread150 unwind label %bb.bf

.thread162:                                       ; preds = %bb.bm, %.thread150
  br i1 %.sroa.032.0142, label %bb.bn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit

.thread150:                                       ; preds = %.thread170.loopexit, %.thread170.loopexit.split-lp, %bb.q, %bb.bl, %bb.aa, %bb.w, %bb.n
  %.pn144 = phi { ptr, i32 } [ %i.bx, %bb.aa ], [ %i.dw, %bb.bl ], [ %i.bo, %bb.w ], [ %i.bc, %bb.n ], [ %i.be, %bb.q ], [ %lpad.loopexit, %.thread170.loopexit ], [ %lpad.loopexit.split-lp, %.thread170.loopexit.split-lp ] ; 2 uses
  %.sroa.032.0142 = phi i1 [ false, %bb.aa ], [ true, %bb.bl ], [ true, %bb.w ], [ true, %bb.n ], [ true, %bb.q ], [ %.sroa.032.1.ph.ph, %.thread170.loopexit ], [ false, %.thread170.loopexit.split-lp ]
  %i.dx = load i64, ptr %i.n, align 16, !range !59, !alias.scope !29134, !noundef !4
  %i.dy = icmp eq i64 %i.dx, 37
  br i1 %i.dy, label %.thread162, label %bb.bm

bb.bm:                                            ; preds = %.thread150
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.n)
          to label %.thread162 unwind label %bb.bf

bb.bn:                                            ; preds = %.thread162
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.an)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bf

.thread:                                          ; preds = %bb.bj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14MergeOperationEEB1A_.exit, %bb.bo
  %.pn90126 = phi { ptr, i32 } [ %.pn.pn.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14MergeOperationEEB1A_.exit ], [ %lpad.thr_comm, %bb.bo ], [ %i.du, %bb.bj ]
  resume { ptr, i32 } %.pn90126

bb.bo:                                            ; preds = %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14MergeOperationEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %1) #46
          to label %.thread unwind label %bb.bf
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef range(i64 8, 17) %0, i64 noundef range(i64 8, 16481) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40
  %i.a = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) %1, i64 noundef range(i64 8, 17) %0) #40 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !52

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef %0, i64 noundef %1) #48
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCs9Ct3XQYJhun_5bytes5bytes11static_drop(ptr noalias readnone align 8 captures(none) %0, ptr readnone captures(none) %1, i64 %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvNtCs9Ct3XQYJhun_5bytes5bytes12static_clone(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.c, align 8
  store ptr @5, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtCs9Ct3XQYJhun_5bytes5bytes16static_is_unique(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge13modify_schema(ptr dead_on_unwind noalias noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %3, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %4, i64 noundef range(i64 0, 52405522936674863) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [128 x i8], align 8               ; 9 uses
  %i.f = alloca [128 x i8], align 8               ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.0 = alloca [96 x i8], align 8            ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 11 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 11 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [112 x i8], align 8               ; 7 uses
  %.sroa.614 = alloca [32 x i8], align 8          ; 6 uses
  %i.n = alloca [112 x i8], align 8               ; 10 uses
  %i.o = alloca [40 x i8], align 8                ; 12 uses
  %i.p = alloca [40 x i8], align 8                ; 7 uses
  %i.q = alloca [96 x i8], align 8                ; 9 uses
  %i.r = getelementptr inbounds nuw [176 x i8], ptr %4, i64 %5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %4, ptr %i.q, align 8
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.r, ptr %.sroa.227.0..sroa_idx, align 8
  %.sroa.328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  store ptr null, ptr %.sroa.328.0..sroa_idx, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 3 uses
  store ptr null, ptr %.sroa.429.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.0.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 121
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.5.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit82, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !29137)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %bb.b
  %i.y = load ptr, ptr %.sroa.328.0..sroa_idx, align 8, !alias.scope !29140, !noundef !4
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %.sroa.328.0..sroa_idx)
  %i.aa = extractvalue { ptr, ptr } %i.z, 0       ; 2 uses
  %.not4.i.i = icmp eq ptr %i.aa, null
  br i1 %.not4.i.i, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %.sroa.328.0..sroa_idx, align 8, !alias.scope !29140
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !29143)
  %i.ab = load ptr, ptr %i.q, align 8, !alias.scope !29146, !noalias !29147, !noundef !4 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.ab, null
  br i1 %.not.i2.i, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14MergeOperationENCNvB22_13modify_schema0ENCB3b_s_0EEINtB5_8FuseImplBY_E4nextB26_.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !29149)
  call void @llvm.experimental.noalias.scope.decl(metadata !29152)
  call void @llvm.experimental.noalias.scope.decl(metadata !29155)
  %i.ac = load ptr, ptr %.sroa.227.0..sroa_idx, align 8, !alias.scope !29158, !noalias !29159, !nonnull !4, !noundef !4
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.ad = phi ptr [ %i.af, %bb.i ], [ %i.ab, %bb.g ] ; 4 uses
  %i.ae = icmp eq ptr %i.ad, %i.ac
  br i1 %i.ae, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14MergeOperationENCNvB22_13modify_schema0ENCB3b_s_0EEINtB5_8FuseImplBY_E4nextB26_.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 176 ; 2 uses
  store ptr %i.af, ptr %i.q, align 8, !alias.scope !29158, !noalias !29159
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  %i.ah = load i8, ptr %i.ag, align 16, !range !1779, !noalias !29161, !noundef !4
  switch i8 %i.ah, label %bb.h [
    i8 3, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14MergeOperationENCNvB22_13modify_schema0ENCB3b_s_0EEINtB5_8FuseImplBY_E4nextB26_.exit.i
    i8 0, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14MergeOperationENCNvB22_13modify_schema0ENCB3b_s_0EEINtB5_8FuseImplBY_E4nextB26_.exit.i
  ]

_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14MergeOperationENCNvB22_13modify_schema0ENCB3b_s_0EEINtB5_8FuseImplBY_E4nextB26_.exit.i: ; preds = %bb.i, %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 112
  call void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE4iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ai)
  %.pr.i = load ptr, ptr %i.d, align 8, !noalias !29137
  %.not1.i = icmp eq ptr %.pr.i, null
  br i1 %.not1.i, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14MergeOperationENCNvB22_13modify_schema0ENCB3b_s_0EEINtB5_8FuseImplBY_E4nextB26_.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14MergeOperationENCNvB22_13modify_schema0ENCB3b_s_0EEINtB5_8FuseImplBY_E4nextB26_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.328.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  br label %bb.c

_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14MergeOperationENCNvB22_13modify_schema0ENCB3b_s_0EEINtB5_8FuseImplBY_E4nextB26_.exit.thread.i: ; preds = %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14MergeOperationENCNvB22_13modify_schema0ENCB3b_s_0EEINtB5_8FuseImplBY_E4nextB26_.exit.i, %bb.f, %bb.h
  %i.aj = load ptr, ptr %.sroa.429.0..sroa_idx, align 8, !alias.scope !29162, !noundef !4
  %.not.i3.i = icmp eq ptr %i.aj, null
  br i1 %.not.i3.i, label %.loopexit108, label %bb.k

bb.k:                                             ; preds = %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14MergeOperationENCNvB22_13modify_schema0ENCB3b_s_0EEINtB5_8FuseImplBY_E4nextB26_.exit.thread.i
  %i.ak = call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %.sroa.429.0..sroa_idx)
  %i.al = extractvalue { ptr, ptr } %i.ak, 0      ; 2 uses
  %.not4.i4.i = icmp eq ptr %i.al, null
  br i1 %.not4.i4.i, label %.loopexit108, label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.k
  %.sroa.0.0.i = phi ptr [ %i.al, %bb.k ], [ %i.aa, %bb.d ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 72
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !4
  call void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema27field_with_unqualified_name(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef %i.ap)
  %i.aq = load i64, ptr %i.p, align 8, !range !181, !noundef !4 ; 2 uses
  %.not62 = icmp eq i64 %i.aq, 20
  %i.ar = load ptr, ptr %i.s, align 8             ; 2 uses
  br i1 %.not62, label %bb.n, label %bb.m

.loopexit108:                                     ; preds = %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14MergeOperationENCNvB22_13modify_schema0ENCB3b_s_0EEINtB5_8FuseImplBY_E4nextB26_.exit.thread.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 -9223372036854775711, ptr %0, align 16
  br label %bb.l

bb.l:                                             ; preds = %bb.bj, %.loopexit108
  ret void

bb.m:                                             ; preds = %.loopexit
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.638.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i64 %i.aq, ptr %i.h, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.ar, ptr %.sroa.2.0..sroa_idx, align 8
  call void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.bj

bb.n:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 64 ; 2 uses
  %i.av = call noundef zeroext i1 @_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE12contains_keyeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.au, ptr noalias noundef nonnull readonly captures(address, read_provenance) @703, i64 noundef 26)
  br i1 %i.av, label %bb.p, label %bb.o
end_hunk_8
