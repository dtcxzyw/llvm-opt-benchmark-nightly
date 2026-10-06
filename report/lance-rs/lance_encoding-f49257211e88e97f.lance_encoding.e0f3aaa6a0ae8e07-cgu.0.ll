Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 125
loop-unroll.NumUnrolled: 159
begin_hunk_0_@_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputReECsjjpCCFGI3ul_14lance_encoding:bb.a

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  br i1 %i.a, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.i.i, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !1374
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.f

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %_RNvXs1_NtCscI6d9CVNmLh_4core7convertReINtB5_4IntoNtNtCs40k4W9msRzi_5alloc6string6StringE4intoCsjjpCCFGI3ul_14lance_encoding.exit
  store i64 %2, ptr %i.d, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.5.0.i.i, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %2, ptr %.sroa.7.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @83, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.i, align 8
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error18corrupt_file_namedNtNtCs40k4W9msRzi_5alloc6string6StringECsjjpCCFGI3ul_14lance_encoding(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 4, 26) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs0_NtCs3PfUT229lOd_12object_store4pathNtB5_4PathINtNtCscI6d9CVNmLh_4core7convert4FromReE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %3, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !alias.scope !1403, !noalias !1404 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1403, !noalias !1404 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1403, !noalias !1404
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !1405
  %i.b = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !1405 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.g, !prof !77

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #66
          to label %.noexc.i unwind label %bb.d, !noalias !1406

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.e, label %.body.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !1407
  br label %.body.thread.i

.body.thread.i:                                   ; preds = %bb.e, %bb.d
  %i.f = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.f, label %.body, label %bb.f

bb.f:                                             ; preds = %.body.thread.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !1408
  br label %.body

bb.g:                                             ; preds = %bb.b
  store i64 %.sroa.0.0.copyload, ptr %i.b, align 8, !noalias !1406
  %.sroa.510.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.510.0..sroa_idx11.i, align 8, !noalias !1406
  %.sroa.613.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.613.0..sroa_idx14.i, align 8, !noalias !1406
  call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0.0.copyload.i, ptr %i.g, align 8, !alias.scope !1410, !noalias !1411
  %.sroa.5.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx4.i, align 8, !alias.scope !1410, !noalias !1411
  %.sroa.6.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx6.i, align 8, !alias.scope !1410, !noalias !1411
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.h, align 8, !alias.scope !1412, !noalias !1413
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @83, ptr %i.i, align 8, !alias.scope !1412, !noalias !1413
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.j, align 8, !alias.scope !1412, !noalias !1413
  store i8 4, ptr %0, align 8, !alias.scope !1412, !noalias !1413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.body:                                            ; preds = %bb.i, %bb.h, %bb.f, %.body.thread.i
  %eh.lpad-body4 = phi { ptr, i32 } [ %i.d, %bb.f ], [ %i.d, %.body.thread.i ], [ %i.k, %bb.h ], [ %i.k, %bb.i ]
  resume { ptr, i32 } %eh.lpad-body4

bb.h:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  %.val.i.i = load i64, ptr %3, align 8, !alias.scope !1416 ; 2 uses
  %i.l = icmp eq i64 %.val.i.i, 0
  br i1 %i.l, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val1.i.i = load ptr, ptr %i.m, align 8, !alias.scope !1416, !nonnull !75, !noundef !75
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !1416
  br label %.body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvMs4_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_13RepDefBuilder11add_offsetslEB8_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.522.i = alloca [32 x i8], align 8        ; 4 uses
  %i.a = alloca [80 x i8], align 8                ; 11 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 15 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !75 ; 2 uses
  %i.i = lshr i64 %i.h, 2                         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  invoke fastcc void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferlE3newCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, i64 noundef 0, i64 noundef %i.i)
          to label %bb.b unwind label %bb.aq

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noundef !75 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !75 ; 3 uses
  %i.n = lshr i64 %i.m, 2                         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1499)
  call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.522.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1501
  %i.o = shl i64 %i.i, 3                          ; 4 uses
  %i.p = icmp slt i64 %i.h, 0
  %.not.i.i = icmp ugt i64 %i.o, 9223372036854775800
  %or.cond.i.i = or i1 %i.p, %.not.i.i
  br i1 %or.cond.i.i, label %bb.e, label %bb.c, !prof !80

bb.c:                                             ; preds = %bb.b
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread79.i, label %bb.d

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread79.i: ; preds = %bb.c
  %i.r = icmp eq i64 %i.i, 0
  call void @llvm.assume(i1 %i.r)
  store i64 0, ptr %i.c, align 8, !noalias !1501
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !noalias !1501
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.t, align 8, !noalias !1501
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs56ggtDZRYpd_10arrow_data(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread79._crit_edge.i unwind label %.thread94.i, !noalias !1502

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread79._crit_edge.i: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread79.i
  %.pre.i = load ptr, ptr %i.s, align 8, !alias.scope !1503, !noalias !1501
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !1504
  %i.u = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !1504 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.e, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i

.thread.i:                                        ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.466.0.ph.i = phi i64 [ 8, %bb.d ], [ 0, %bb.b ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.466.0.ph.i, i64 %i.o) #66
          to label %bb.aj unwind label %.thread.i, !noalias !1502

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.d
  store i64 %i.i, ptr %i.c, align 8, !noalias !1501
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.x, align 8, !noalias !1501
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.f

.thread94.i:                                      ; preds = %bb.v, %bb.u, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread79.i
  %.ph.i = phi ptr [ %i.ab, %bb.u ], [ %i.s, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread79.i ], [ %i.ab, %bb.v ]
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread83.i

.thread89.thread.i:                               ; preds = %bb.z, %bb.w
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.f:                                             ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread79._crit_edge.i
  %i.z = phi ptr [ %i.u, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %.pre.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread79._crit_edge.i ]
  %i.aa = phi ptr [ %i.y, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.t, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread79._crit_edge.i ] ; 5 uses
  %i.ab = phi ptr [ %i.x, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.s, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread79._crit_edge.i ] ; 8 uses
  store i64 0, ptr %i.z, align 8, !noalias !1502
  store i64 1, ptr %i.aa, align 8, !alias.scope !1503, !noalias !1501
  %i.ac = load ptr, ptr %i.e, align 8, !alias.scope !1500, !noalias !1502, !noundef !75
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1501
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer4iter(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e)
          to label %bb.k unwind label %bb.j, !noalias !1502

bb.h:                                             ; preds = %bb.f
  %i.ad = icmp ult i64 %i.m, 8
  br i1 %i.ad, label %.thread98thread-pre-split.i, label %.lr.ph155.split.us.i

.lr.ph155.split.us.i:                             ; preds = %bb.h, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit48.us.i
  %i.ae = phi i64 [ %i.ar, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit48.us.i ], [ 1, %bb.h ] ; 3 uses
  %.sroa.02.3154.us.i = phi i32 [ %spec.select39.us.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit48.us.i ], [ 0, %bb.h ]
  %.sroa.06.3153.us.i = phi i8 [ %spec.select.us.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit48.us.i ], [ 0, %bb.h ]
  %.sroa.07.2152.us.i = phi i64 [ %i.am, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit48.us.i ], [ 0, %bb.h ]
  %.sroa.059.0151.us.i = phi ptr [ %i.af, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit48.us.i ], [ %i.k, %bb.h ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.059.0151.us.i) ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.059.0151.us.i, i64 4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !alias.scope !1505, !noalias !1506, !noundef !75 ; 2 uses
  %i.ah = load i32, ptr %.sroa.059.0151.us.i, align 4, !alias.scope !1505, !noalias !1506, !noundef !75 ; 2 uses
  %i.ai = sub i32 %i.ag, %i.ah
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp eq i32 %i.ag, %i.ah                ; 2 uses
  %spec.select.us.i = select i1 %i.ak, i8 1, i8 %.sroa.06.3153.us.i ; 2 uses
  %i.al = zext i1 %i.ak to i32
  %spec.select39.us.i = add i32 %.sroa.02.3154.us.i, %i.al ; 2 uses
  %i.am = add i64 %.sroa.07.2152.us.i, %i.aj      ; 2 uses
  %i.an = load i64, ptr %i.c, align 8, !range !76, !alias.scope !1507, !noalias !1501, !noundef !75
  %i.ao = icmp eq i64 %i.ae, %i.an
  br i1 %i.ao, label %bb.i, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit48.us.i

bb.i:                                             ; preds = %.lr.ph155.split.us.i
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs56ggtDZRYpd_10arrow_data(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit48.us.i unwind label %.loopexit.split.us.i, !noalias !1502

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit48.us.i: ; preds = %bb.i, %.lr.ph155.split.us.i
  %i.ap = load ptr, ptr %i.ab, align 8, !alias.scope !1507, !noalias !1501, !nonnull !75, !noundef !75
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ae
  store i64 %i.am, ptr %i.aq, align 8, !noalias !1502
  %i.ar = add i64 %i.ae, 1                        ; 3 uses
  store i64 %i.ar, ptr %i.aa, align 8, !alias.scope !1507, !noalias !1501
  %exitcond = icmp eq i64 %i.ar, %i.n
  br i1 %exitcond, label %.thread98.i, label %.lr.ph155.split.us.i

.loopexit.split.us.i:                             ; preds = %bb.i
  %lpad.loopexit.us.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread83.i

bb.j:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.thread83.i

bb.k:                                             ; preds = %bb.g
  %.sroa.4.24.copyload.i = load ptr, ptr %i.b, align 8, !alias.scope !1508, !noalias !1509 ; 2 uses
  %.sroa.756.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.756.24.copyload.i = load i64, ptr %.sroa.756.24..sroa_idx.i, align 8, !alias.scope !1508, !noalias !1509
  %.sroa.857.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.857.24.copyload.i = load i64, ptr %.sroa.857.24..sroa_idx.i, align 8, !alias.scope !1508, !noalias !1509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1501
  %i.at = icmp ult i64 %i.m, 8
  br i1 %i.at, label %.thread98thread-pre-split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.k, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i
  %.sroa.0.0137.us.i = phi i1 [ %.sroa.0.2.us.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i ], [ false, %bb.k ] ; 4 uses
  %.sroa.02.0136.us.i = phi i32 [ %.sroa.02.2.us.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i ], [ 0, %bb.k ] ; 4 uses
  %.sroa.06.0135.us.i = phi i8 [ %.sroa.06.2.us.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i ], [ 0, %bb.k ] ; 3 uses
  %.sroa.07.0134.us.i = phi i64 [ %.sroa.07.1.us.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i ], [ 0, %bb.k ] ; 3 uses
  %.sroa.0.068133.us.i = phi ptr [ %i.av, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i ], [ %i.k, %bb.k ] ; 3 uses
  %.sroa.5.0132.us.i = phi i64 [ %i.au, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i ], [ %i.n, %bb.k ]
  %.sroa.954.0131.us.i = phi i64 [ %i.bg, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i ], [ %.sroa.756.24.copyload.i, %bb.k ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.068133.us.i) ]
  %i.au = add i64 %.sroa.5.0132.us.i, -1          ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.068133.us.i, i64 4 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !alias.scope !1510, !noalias !1511, !noundef !75 ; 2 uses
  %i.ax = load i32, ptr %.sroa.0.068133.us.i, align 4, !alias.scope !1510, !noalias !1511, !noundef !75 ; 2 uses
  %i.ay = sub i32 %i.aw, %i.ax
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp eq i64 %.sroa.954.0131.us.i, %.sroa.857.24.copyload.i
  br i1 %i.ba, label %.thread98thread-pre-split.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.us.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.24.copyload.i) ]
  %i.bb = lshr i64 %.sroa.954.0131.us.i, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.4.24.copyload.i, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !1512, !noundef !75
  %i.be = trunc i64 %.sroa.954.0131.us.i to i8
  %i.bf = and i8 %i.be, 7
  %i.bg = add i64 %.sroa.954.0131.us.i, 1
  %i.bh = lshr i8 %i.bd, %i.bf
  %i.bi = trunc i8 %i.bh to i1
  %i.bj = icmp ne i32 %i.aw, %i.ax                ; 2 uses
  br i1 %i.bi, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = add i32 %.sroa.02.0136.us.i, 1
  %i.bl = or i1 %.sroa.0.0137.us.i, %i.bj
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  br i1 %i.bj, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = add i32 %.sroa.02.0136.us.i, 1
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bn = add i64 %.sroa.07.0134.us.i, %i.az
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m
  %.sroa.07.1.us.i = phi i64 [ %.sroa.07.0134.us.i, %bb.o ], [ %i.bn, %bb.p ], [ %.sroa.07.0134.us.i, %bb.m ] ; 2 uses
  %.sroa.06.2.us.i = phi i8 [ 1, %bb.o ], [ %.sroa.06.0135.us.i, %bb.p ], [ %.sroa.06.0135.us.i, %bb.m ] ; 2 uses
  %.sroa.02.2.us.i = phi i32 [ %i.bm, %bb.o ], [ %.sroa.02.0136.us.i, %bb.p ], [ %i.bk, %bb.m ] ; 2 uses
  %.sroa.0.2.us.i = phi i1 [ %.sroa.0.0137.us.i, %bb.o ], [ %.sroa.0.0137.us.i, %bb.p ], [ %i.bl, %bb.m ] ; 2 uses
  %i.bo = load i64, ptr %i.aa, align 8, !alias.scope !1513, !noalias !1501, !noundef !75 ; 3 uses
  %i.bp = load i64, ptr %i.c, align 8, !range !76, !alias.scope !1513, !noalias !1501, !noundef !75
  %i.bq = icmp eq i64 %i.bo, %i.bp
  br i1 %i.bq, label %bb.r, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs56ggtDZRYpd_10arrow_data(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i unwind label %.loopexit116.split.us.i, !noalias !1502

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i: ; preds = %bb.r, %bb.q
  %i.br = load ptr, ptr %i.ab, align 8, !alias.scope !1513, !noalias !1501, !nonnull !75, !noundef !75
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bo
  store i64 %.sroa.07.1.us.i, ptr %i.bs, align 8, !noalias !1502
  %i.bt = add i64 %i.bo, 1                        ; 2 uses
  store i64 %i.bt, ptr %i.aa, align 8, !alias.scope !1513, !noalias !1501
  %i.bu = icmp ult i64 %i.au, 2
  br i1 %i.bu, label %.thread98.i, label %.lr.ph.split.us.i

.loopexit116.split.us.i:                          ; preds = %bb.r
  %lpad.loopexit118.us.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread83.i

.thread98thread-pre-split.i:                      ; preds = %.lr.ph.split.us.i, %bb.k, %bb.h
  %.sroa.06.1.ph.i = phi i8 [ 0, %bb.h ], [ 0, %bb.k ], [ %.sroa.06.0135.us.i, %.lr.ph.split.us.i ]
  %.sroa.02.1.ph.i = phi i32 [ 0, %bb.h ], [ 0, %bb.k ], [ %.sroa.02.0136.us.i, %.lr.ph.split.us.i ]
  %.sroa.0.1.ph.i = phi i1 [ false, %bb.h ], [ false, %bb.k ], [ %.sroa.0.0137.us.i, %.lr.ph.split.us.i ]
  %.pr.i = load i64, ptr %i.aa, align 8, !noalias !1501
  br label %.thread98.i

.thread98.i:                                      ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit48.us.i, %.thread98thread-pre-split.i
  %i.bv = phi i64 [ %.pr.i, %.thread98thread-pre-split.i ], [ %i.n, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit48.us.i ], [ %i.bt, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i ] ; 6 uses
  %.sroa.06.1.i = phi i8 [ %.sroa.06.1.ph.i, %.thread98thread-pre-split.i ], [ %spec.select.us.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit48.us.i ], [ %.sroa.06.2.us.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i ]
  %.sroa.02.1.i = phi i32 [ %.sroa.02.1.ph.i, %.thread98thread-pre-split.i ], [ %spec.select39.us.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit48.us.i ], [ %.sroa.02.2.us.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i ]
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.thread98thread-pre-split.i ], [ false, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit48.us.i ], [ %.sroa.0.2.us.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i ]
  %i.bw = load ptr, ptr %i.ab, align 8, !noalias !1501, !nonnull !75, !noundef !75 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1514)
  call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  %i.bx = load i64, ptr %0, align 8, !range !82, !alias.scope !1516, !noalias !1517, !noundef !75
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bz = trunc nuw i64 %i.bx to i1
  br i1 %i.bz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread98.i
  %i.ca = load i64, ptr %i.by, align 8, !alias.scope !1516, !noalias !1517, !noundef !75
  %i.cb = add i64 %i.ca, 1
  %i.cc = icmp eq i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.t, label %bb.u, !prof !78

bb.t:                                             ; preds = %bb.s, %.thread98.i
  %i.cd = add nsw i64 %i.bv, -1                   ; 3 uses
  %.not.i41.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i41.i, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1643, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1644) #66
          to label %.noexc42.i unwind label %.thread94.i, !noalias !1502

.noexc42.i:                                       ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t
end_hunk_0
begin_hunk_1_@_RINvMs4_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_13RepDefBuilder11add_offsetslEB8_:bb.a
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %bb.an unwind label %bb.af, !noalias !1523

bb.af:                                            ; preds = %bb.ae
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefEBF_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #67
          to label %.body unwind label %bb.ag, !noalias !1524

bb.ag:                                            ; preds = %bb.af
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !1524
  unreachable

.thread83.i:                                      ; preds = %.loopexit116.split.us.i, %bb.j, %.loopexit.split.us.i, %.thread94.i
  %.pn87.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread94.i ], [ %lpad.loopexit.us.i, %.loopexit.split.us.i ], [ %i.as, %bb.j ], [ %lpad.loopexit118.us.i, %.loopexit116.split.us.i ] ; 2 uses
  %i.db = phi ptr [ %.ph.i, %.thread94.i ], [ %i.ab, %.loopexit.split.us.i ], [ %i.ab, %bb.j ], [ %i.ab, %.loopexit116.split.us.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  %.val.i.i = load i64, ptr %i.c, align 8, !alias.scope !1525, !noalias !1501 ; 2 uses
  %i.dc = icmp eq i64 %.val.i.i, 0
  br i1 %i.dc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsjjpCCFGI3ul_14lance_encoding.exit.i, label %bb.ah

bb.ah:                                            ; preds = %.thread83.i
  %.val1.i.i = load ptr, ptr %i.db, align 8, !alias.scope !1525, !noalias !1501, !nonnull !75, !noundef !75
  %i.dd = shl nuw i64 %.val.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.dd, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !1526
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.ai:                                            ; preds = %bb.al
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !1502
  unreachable

bb.aj:                                            ; preds = %bb.e
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.ah, %.thread83.i, %.thread89.thread.i, %.thread.i
  %.pn3773.i = phi { ptr, i32 } [ %i.w, %.thread.i ], [ %lpad.thr_comm.split-lp.i, %.thread89.thread.i ], [ %.pn87.i, %.thread83.i ], [ %.pn87.i, %bb.ah ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  %i.df = load ptr, ptr %i.e, align 8, !alias.scope !1528, !noalias !1502, !noundef !75 ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %.body, label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsjjpCCFGI3ul_14lance_encoding.exit.i
  %i.dh = atomicrmw sub ptr %i.df, i64 1 release, align 8, !noalias !1529
  %i.di = icmp eq i64 %i.dh, 1
  br i1 %i.di, label %bb.al, label %.body

bb.al:                                            ; preds = %bb.ak
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %.body unwind label %bb.ai, !noalias !1502

.body:                                            ; preds = %bb.af, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsjjpCCFGI3ul_14lance_encoding.exit.i, %bb.ak, %bb.al
  %eh.lpad-body = phi { ptr, i32 } [ %i.cz, %bb.af ], [ %.pn3773.i, %bb.ak ], [ %.pn3773.i, %bb.al ], [ %.pn3773.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsjjpCCFGI3ul_14lance_encoding.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  call void @llvm.experimental.noalias.scope.decl(metadata !1532)
  call void @llvm.experimental.noalias.scope.decl(metadata !1533)
  %i.dj = load ptr, ptr %i.f, align 8, !alias.scope !1534, !nonnull !75, !noundef !75
  %i.dk = atomicrmw sub ptr %i.dj, i64 1 release, align 8, !noalias !1534
  %i.dl = icmp eq i64 %i.dk, 1
  br i1 %i.dl, label %bb.am, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsjjpCCFGI3ul_14lance_encoding.exit

bb.am:                                            ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsjjpCCFGI3ul_14lance_encoding.exit unwind label %bb.ap

bb.an:                                            ; preds = %bb.ae, %bb.ad
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !alias.scope !1521, !noalias !1522, !nonnull !75, !noundef !75
  %i.do = getelementptr inbounds nuw [80 x i8], ptr %i.dn, i64 %i.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.do, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !1524
  %i.dp = add i64 %i.cw, 1
  store i64 %i.dp, ptr %i.cv, align 8, !alias.scope !1521, !noalias !1522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1501
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.522.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !1535)
  call void @llvm.experimental.noalias.scope.decl(metadata !1536)
  call void @llvm.experimental.noalias.scope.decl(metadata !1537)
  call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  %i.dq = load ptr, ptr %i.f, align 8, !alias.scope !1539, !nonnull !75, !noundef !75
  %i.dr = atomicrmw sub ptr %i.dq, i64 1 release, align 8, !noalias !1539
  %i.ds = icmp eq i64 %i.dr, 1
  br i1 %i.ds, label %bb.ao, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferlEECsjjpCCFGI3ul_14lance_encoding.exit7

bb.ao:                                            ; preds = %bb.an
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferlEECsjjpCCFGI3ul_14lance_encoding.exit7

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferlEECsjjpCCFGI3ul_14lance_encoding.exit7: ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret i1 %.sroa.0.1.i

bb.ap:                                            ; preds = %bb.as, %bb.am
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %.body, %bb.am, %bb.ar, %bb.aq, %bb.as
  %.pn13 = phi { ptr, i32 } [ %i.du, %bb.ar ], [ %eh.lpad-body, %.body ], [ %i.du, %bb.as ], [ %i.du, %bb.aq ], [ %eh.lpad-body, %bb.am ]
  resume { ptr, i32 } %.pn13

bb.aq:                                            ; preds = %bb.a
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1540)
  %i.dv = load ptr, ptr %2, align 8, !alias.scope !1540, !noundef !75 ; 2 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsjjpCCFGI3ul_14lance_encoding.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dx = atomicrmw sub ptr %i.dv, i64 1 release, align 8, !noalias !1541
  %i.dy = icmp eq i64 %i.dx, 1
  br i1 %i.dy, label %bb.as, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsjjpCCFGI3ul_14lance_encoding.exit

bb.as:                                            ; preds = %bb.ar
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %2)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsjjpCCFGI3ul_14lance_encoding.exit unwind label %bb.ap
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvMs4_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_13RepDefBuilder11add_offsetsxEB8_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.522.i = alloca [32 x i8], align 8        ; 4 uses
  %i.a = alloca [80 x i8], align 8                ; 11 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 15 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !75 ; 3 uses
  %i.i = lshr i64 %i.h, 3                         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  invoke fastcc void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferxE3newCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, i64 noundef 0, i64 noundef %i.i)
          to label %bb.b unwind label %bb.aq

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noundef !75 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !75 ; 3 uses
  %i.n = lshr i64 %i.m, 3                         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1624)
  call void @llvm.experimental.noalias.scope.decl(metadata !1625)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.522.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1626
  %i.o = and i64 %i.h, -8                         ; 2 uses
  %.not.i.i = icmp slt i64 %i.h, 0
  br i1 %.not.i.i, label %bb.e, label %bb.c, !prof !80

bb.c:                                             ; preds = %bb.b
  %i.p = icmp eq i64 %i.i, 0
  br i1 %i.p, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread79.i, label %bb.d

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread79.i: ; preds = %bb.c
  store i64 0, ptr %i.c, align 8, !noalias !1626
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8, !noalias !1626
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.r, align 8, !noalias !1626
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs56ggtDZRYpd_10arrow_data(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread79._crit_edge.i unwind label %.thread94.i, !noalias !1627

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread79._crit_edge.i: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread79.i
  %.pre.i = load ptr, ptr %i.q, align 8, !alias.scope !1628, !noalias !1626
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !1629
  %i.s = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !1629 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.e, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i

.thread.i:                                        ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.466.0.ph.i = phi i64 [ 8, %bb.d ], [ 0, %bb.b ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.466.0.ph.i, i64 %i.o) #66
          to label %bb.aj unwind label %.thread.i, !noalias !1627

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.d
  store i64 %i.i, ptr %i.c, align 8, !noalias !1626
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.v, align 8, !noalias !1626
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.f

.thread94.i:                                      ; preds = %bb.v, %bb.u, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread79.i
  %.ph.i = phi ptr [ %i.z, %bb.u ], [ %i.q, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread79.i ], [ %i.z, %bb.v ]
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread83.i

.thread89.thread.i:                               ; preds = %bb.z, %bb.w
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.f:                                             ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread79._crit_edge.i
  %i.x = phi ptr [ %i.s, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %.pre.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread79._crit_edge.i ]
  %i.y = phi ptr [ %i.w, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.r, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread79._crit_edge.i ] ; 5 uses
  %i.z = phi ptr [ %i.v, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.q, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread79._crit_edge.i ] ; 8 uses
  store i64 0, ptr %i.x, align 8, !noalias !1627
  store i64 1, ptr %i.y, align 8, !alias.scope !1628, !noalias !1626
  %i.aa = load ptr, ptr %i.e, align 8, !alias.scope !1625, !noalias !1627, !noundef !75
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1626
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer4iter(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e)
          to label %bb.k unwind label %bb.j, !noalias !1627

bb.h:                                             ; preds = %bb.f
  %i.ab = icmp ult i64 %i.m, 16
  br i1 %i.ab, label %.thread98thread-pre-split.i, label %.lr.ph155.split.us.i

.lr.ph155.split.us.i:                             ; preds = %bb.h, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit48.us.i
  %i.ac = phi i64 [ %i.ao, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit48.us.i ], [ 1, %bb.h ] ; 3 uses
  %.sroa.02.3154.us.i = phi i32 [ %spec.select39.us.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit48.us.i ], [ 0, %bb.h ]
  %.sroa.06.3153.us.i = phi i8 [ %spec.select.us.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit48.us.i ], [ 0, %bb.h ]
  %.sroa.07.2152.us.i = phi i64 [ %i.aj, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit48.us.i ], [ 0, %bb.h ]
  %.sroa.059.0151.us.i = phi ptr [ %i.ad, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit48.us.i ], [ %i.k, %bb.h ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.059.0151.us.i) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.059.0151.us.i, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !1630, !noalias !1631, !noundef !75 ; 2 uses
  %i.af = load i64, ptr %.sroa.059.0151.us.i, align 8, !alias.scope !1630, !noalias !1631, !noundef !75 ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = icmp eq i64 %i.ae, %i.af                ; 2 uses
  %spec.select.us.i = select i1 %i.ah, i8 1, i8 %.sroa.06.3153.us.i ; 2 uses
  %i.ai = zext i1 %i.ah to i32
  %spec.select39.us.i = add i32 %.sroa.02.3154.us.i, %i.ai ; 2 uses
  %i.aj = add i64 %i.ag, %.sroa.07.2152.us.i      ; 2 uses
  %i.ak = load i64, ptr %i.c, align 8, !range !76, !alias.scope !1632, !noalias !1626, !noundef !75
  %i.al = icmp eq i64 %i.ac, %i.ak
  br i1 %i.al, label %bb.i, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit48.us.i

bb.i:                                             ; preds = %.lr.ph155.split.us.i
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs56ggtDZRYpd_10arrow_data(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit48.us.i unwind label %.loopexit.split.us.i, !noalias !1627

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit48.us.i: ; preds = %bb.i, %.lr.ph155.split.us.i
  %i.am = load ptr, ptr %i.z, align 8, !alias.scope !1632, !noalias !1626, !nonnull !75, !noundef !75
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ac
  store i64 %i.aj, ptr %i.an, align 8, !noalias !1627
  %i.ao = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ao, ptr %i.y, align 8, !alias.scope !1632, !noalias !1626
  %exitcond = icmp eq i64 %i.ao, %i.n
  br i1 %exitcond, label %.thread98.i, label %.lr.ph155.split.us.i

.loopexit.split.us.i:                             ; preds = %bb.i
  %lpad.loopexit.us.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread83.i

bb.j:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.thread83.i

bb.k:                                             ; preds = %bb.g
  %.sroa.4.24.copyload.i = load ptr, ptr %i.b, align 8, !alias.scope !1633, !noalias !1634 ; 2 uses
  %.sroa.756.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.756.24.copyload.i = load i64, ptr %.sroa.756.24..sroa_idx.i, align 8, !alias.scope !1633, !noalias !1634
  %.sroa.857.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.857.24.copyload.i = load i64, ptr %.sroa.857.24..sroa_idx.i, align 8, !alias.scope !1633, !noalias !1634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1626
  %i.aq = icmp ult i64 %i.m, 16
  br i1 %i.aq, label %.thread98thread-pre-split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.k, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i
  %.sroa.0.0137.us.i = phi i1 [ %.sroa.0.2.us.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i ], [ false, %bb.k ] ; 4 uses
  %.sroa.02.0136.us.i = phi i32 [ %.sroa.02.2.us.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i ], [ 0, %bb.k ] ; 4 uses
  %.sroa.06.0135.us.i = phi i8 [ %.sroa.06.2.us.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i ], [ 0, %bb.k ] ; 3 uses
  %.sroa.07.0134.us.i = phi i64 [ %.sroa.07.1.us.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i ], [ 0, %bb.k ] ; 3 uses
  %.sroa.0.068133.us.i = phi ptr [ %i.as, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i ], [ %i.k, %bb.k ] ; 3 uses
  %.sroa.5.0132.us.i = phi i64 [ %i.ar, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i ], [ %i.n, %bb.k ]
  %.sroa.954.0131.us.i = phi i64 [ %i.bb, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i ], [ %.sroa.756.24.copyload.i, %bb.k ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.068133.us.i) ]
  %i.ar = add i64 %.sroa.5.0132.us.i, -1          ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.068133.us.i, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !1635, !noalias !1636, !noundef !75 ; 2 uses
  %i.au = load i64, ptr %.sroa.0.068133.us.i, align 8, !alias.scope !1635, !noalias !1636, !noundef !75 ; 2 uses
  %i.av = icmp eq i64 %.sroa.954.0131.us.i, %.sroa.857.24.copyload.i
  br i1 %i.av, label %.thread98thread-pre-split.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.us.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.24.copyload.i) ]
  %i.aw = lshr i64 %.sroa.954.0131.us.i, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.4.24.copyload.i, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !noalias !1637, !noundef !75
  %i.az = trunc i64 %.sroa.954.0131.us.i to i8
  %i.ba = and i8 %i.az, 7
  %i.bb = add i64 %.sroa.954.0131.us.i, 1
  %i.bc = lshr i8 %i.ay, %i.ba
  %i.bd = trunc i8 %i.bc to i1
  %i.be = icmp ne i64 %i.at, %i.au                ; 2 uses
  br i1 %i.bd, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = add i32 %.sroa.02.0136.us.i, 1
  %i.bg = or i1 %.sroa.0.0137.us.i, %i.be
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  br i1 %i.be, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = add i32 %.sroa.02.0136.us.i, 1
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bi = add i64 %i.at, %.sroa.07.0134.us.i
  %i.bj = sub i64 %i.bi, %i.au
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m
  %.sroa.07.1.us.i = phi i64 [ %.sroa.07.0134.us.i, %bb.o ], [ %i.bj, %bb.p ], [ %.sroa.07.0134.us.i, %bb.m ] ; 2 uses
  %.sroa.06.2.us.i = phi i8 [ 1, %bb.o ], [ %.sroa.06.0135.us.i, %bb.p ], [ %.sroa.06.0135.us.i, %bb.m ] ; 2 uses
  %.sroa.02.2.us.i = phi i32 [ %i.bh, %bb.o ], [ %.sroa.02.0136.us.i, %bb.p ], [ %i.bf, %bb.m ] ; 2 uses
  %.sroa.0.2.us.i = phi i1 [ %.sroa.0.0137.us.i, %bb.o ], [ %.sroa.0.0137.us.i, %bb.p ], [ %i.bg, %bb.m ] ; 2 uses
  %i.bk = load i64, ptr %i.y, align 8, !alias.scope !1638, !noalias !1626, !noundef !75 ; 3 uses
  %i.bl = load i64, ptr %i.c, align 8, !range !76, !alias.scope !1638, !noalias !1626, !noundef !75
  %i.bm = icmp eq i64 %i.bk, %i.bl
  br i1 %i.bm, label %bb.r, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs56ggtDZRYpd_10arrow_data(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i unwind label %.loopexit116.split.us.i, !noalias !1627

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i: ; preds = %bb.r, %bb.q
  %i.bn = load ptr, ptr %i.z, align 8, !alias.scope !1638, !noalias !1626, !nonnull !75, !noundef !75
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bk
  store i64 %.sroa.07.1.us.i, ptr %i.bo, align 8, !noalias !1627
  %i.bp = add i64 %i.bk, 1                        ; 2 uses
  store i64 %i.bp, ptr %i.y, align 8, !alias.scope !1638, !noalias !1626
  %i.bq = icmp ult i64 %i.ar, 2
  br i1 %i.bq, label %.thread98.i, label %.lr.ph.split.us.i

.loopexit116.split.us.i:                          ; preds = %bb.r
  %lpad.loopexit118.us.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread83.i

.thread98thread-pre-split.i:                      ; preds = %.lr.ph.split.us.i, %bb.k, %bb.h
  %.sroa.06.1.ph.i = phi i8 [ 0, %bb.h ], [ 0, %bb.k ], [ %.sroa.06.0135.us.i, %.lr.ph.split.us.i ]
  %.sroa.02.1.ph.i = phi i32 [ 0, %bb.h ], [ 0, %bb.k ], [ %.sroa.02.0136.us.i, %.lr.ph.split.us.i ]
  %.sroa.0.1.ph.i = phi i1 [ false, %bb.h ], [ false, %bb.k ], [ %.sroa.0.0137.us.i, %.lr.ph.split.us.i ]
  %.pr.i = load i64, ptr %i.y, align 8, !noalias !1626
  br label %.thread98.i

.thread98.i:                                      ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit48.us.i, %.thread98thread-pre-split.i
  %i.br = phi i64 [ %.pr.i, %.thread98thread-pre-split.i ], [ %i.n, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit48.us.i ], [ %i.bp, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i ] ; 6 uses
  %.sroa.06.1.i = phi i8 [ %.sroa.06.1.ph.i, %.thread98thread-pre-split.i ], [ %spec.select.us.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit48.us.i ], [ %.sroa.06.2.us.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i ]
  %.sroa.02.1.i = phi i32 [ %.sroa.02.1.ph.i, %.thread98thread-pre-split.i ], [ %spec.select39.us.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit48.us.i ], [ %.sroa.02.2.us.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i ]
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.thread98thread-pre-split.i ], [ false, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit48.us.i ], [ %.sroa.0.2.us.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit45.us.i ]
  %i.bs = load ptr, ptr %i.z, align 8, !noalias !1626, !nonnull !75, !noundef !75 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1639)
  call void @llvm.experimental.noalias.scope.decl(metadata !1640)
  %i.bt = load i64, ptr %0, align 8, !range !82, !alias.scope !1641, !noalias !1642, !noundef !75
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bv = trunc nuw i64 %i.bt to i1
  br i1 %i.bv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread98.i
  %i.bw = load i64, ptr %i.bu, align 8, !alias.scope !1641, !noalias !1642, !noundef !75
  %i.bx = add i64 %i.bw, 1
  %i.by = icmp eq i64 %i.br, %i.bx
  br i1 %i.by, label %bb.t, label %bb.u, !prof !78

bb.t:                                             ; preds = %bb.s, %.thread98.i
  %i.bz = add nsw i64 %i.br, -1                   ; 3 uses
  %.not.i41.i = icmp eq i64 %i.br, 0
  br i1 %.not.i41.i, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1643, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1644) #66
          to label %.noexc42.i unwind label %.thread94.i, !noalias !1627

.noexc42.i:                                       ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.bz, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1645) #66
          to label %.noexc43.i unwind label %.thread94.i, !noalias !1627
end_hunk_1
begin_hunk_2_@_RNCNvMsf_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6structNtB7_19SimpleStructDecoder18do_wait_for_loaded0Bd_:bb.a
  store i64 49, ptr %.sroa.8.0..sroa_idx.i.i130.i, align 8, !noalias !24975
  %.sroa.9.0..sroa_idx.i.i131.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i32 1, ptr %.sroa.9.0..sroa_idx.i.i131.i, align 8, !noalias !24975
  %.sroa.11.0..sroa_idx.i.i132.i = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 394, ptr %.sroa.11.0..sroa_idx.i.i132.i, align 4, !noalias !24975
  %.sroa.13.0..sroa_idx.i.i133.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr @858, ptr %.sroa.13.0..sroa_idx.i.i133.i, align 8, !noalias !24975
  %.sroa.15.0..sroa_idx.i.i134.i = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %i.g, ptr %.sroa.15.0..sroa_idx.i.i134.i, align 8, !noalias !24975
  invoke void @_RNvXs0_NtCs91CWldrXK7B_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.c)
          to label %bb.bn unwind label %bb.bl, !noalias !24966

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !24965
  br label %bb.bs

bb.bo:                                            ; preds = %bb.as, %bb.ap
  %.pn39.pn.pn.i = phi { ptr, i32 } [ %i.fo, %bb.ap ], [ %i.fv, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !24965
  br label %.body.i

bb.bp:                                            ; preds = %bb.ai
  %i.jk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !24966
  unreachable

common.ret:                                       ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc11collections11binary_heap10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEEB1M_.exit, %bb.bq
  %storemerge = phi i8 [ 3, %bb.bq ], [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc11collections11binary_heap10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEEB1M_.exit ]
  store i8 %storemerge, ptr %i.o, align 8
  ret void

bb.bq:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsjjpCCFGI3ul_14lance_encoding.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !24965
  store i8 3, ptr %i.em, align 8, !noalias !24965
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.864)
  store i8 -2, ptr %0, align 8
  br label %common.ret

bb.br:                                            ; preds = %bb.bs, %bb.bv
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.jm = load ptr, ptr %i.jl, align 8, !nonnull !75, !align !95, !noundef !75 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 32 ; 2 uses
  %i.jo = load i64, ptr %i.jn, align 8, !noundef !75
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jq = load i64, ptr %i.jp, align 8, !noundef !75
  %.not7 = icmp ugt i64 %i.jo, %i.jq
  br i1 %.not7, label %bb.ca, label %bb.bw

bb.bs:                                            ; preds = %bb.bn, %.thread.i
  store i8 1, ptr %i.iu, align 8, !noalias !24965
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.3, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.864, i64 55, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.864)
  %i.jr = load atomic i64, ptr @_RNvCs91CWldrXK7B_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.js = icmp ult i64 %i.jr, 6
  call void @llvm.assume(i1 %i.js)
  %i.jt = icmp samesign ugt i64 %i.jr, 4
  br i1 %i.jt, label %bb.bu, label %bb.br

bb.bt:                                            ; preds = %bb.bu
  %i.ju = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %.body36

bb.bu:                                            ; preds = %bb.bs
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.jw = load ptr, ptr %i.jv, align 8, !nonnull !75, !align !95, !noundef !75 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 32
  store ptr %i.jx, ptr %i.n, align 8
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.572.0..sroa_idx, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.jy, ptr %i.jz, align 8
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.574.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24976
  store i64 0, ptr %i.b, align 8, !noalias !24976
  %.sroa.0.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @854, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i, align 8, !noalias !24976
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 49, ptr %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !24976
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !24976
  %.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @699, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !noalias !24976
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 56, ptr %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !24976
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 5, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !24976
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @854, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !24976
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 49, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !24976
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !24976
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 499, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !noalias !24976
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @945, ptr %.sroa.13.0..sroa_idx.i.i, align 8, !noalias !24976
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.n, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !noalias !24976
  invoke void @_RNvXs0_NtCs91CWldrXK7B_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b)
          to label %bb.bv unwind label %bb.bt

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.br

bb.bw:                                            ; preds = %bb.br
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24977)
  call void @llvm.experimental.noalias.scope.decl(metadata !24978)
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !alias.scope !24977, !noalias !24978, !noundef !75 ; 7 uses
  %i.kd = icmp ult i64 %i.kc, 1152921504606846976
  call void @llvm.assume(i1 %i.kd)
  call void @llvm.experimental.noalias.scope.decl(metadata !24979)
  %i.ke = load i64, ptr %i.ka, align 8, !range !76, !alias.scope !24980, !noalias !24981, !noundef !75
  %i.kf = icmp eq i64 %i.kc, %i.ke
  br i1 %i.kf, label %bb.bx, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE8push_mutBN_.exit.i

bb.bx:                                            ; preds = %bb.bw
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ka)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE8push_mutBN_.exit.i unwind label %bb.cb

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE8push_mutBN_.exit.i: ; preds = %bb.bx, %bb.bw
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.kh = load ptr, ptr %i.kg, align 8, !alias.scope !24980, !noalias !24981, !nonnull !75, !noundef !75 ; 4 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.kc
  store ptr %i.jm, ptr %i.ki, align 8, !noalias !24982
  %i.kj = add nuw nsw i64 %i.kc, 1
  store i64 %i.kj, ptr %i.kb, align 8, !alias.scope !24980, !noalias !24981
  %.not9.i.i = icmp eq i64 %i.kc, 0
  br i1 %.not9.i.i, label %_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE4pushB1j_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE8push_mutBN_.exit.i
  %.pre.i41 = load i64, ptr %i.jn, align 8, !alias.scope !24978, !noalias !24977
  br label %bb.by

bb.by:                                            ; preds = %bb.bz, %.lr.ph.i.i
  %storemerge10.i.i = phi i64 [ %i.kc, %.lr.ph.i.i ], [ %i.kl, %bb.bz ] ; 3 uses
  %i.kk = add nsw i64 %storemerge10.i.i, -1
  %i.kl = lshr i64 %i.kk, 1                       ; 4 uses
  %i.km = icmp samesign ule i64 %i.kl, %i.kc
  call void @llvm.assume(i1 %i.km)
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.kl
  %.val1.i.i = load ptr, ptr %i.kn, align 8, !noalias !24977, !nonnull !75, !align !95, !noundef !75 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 32
  %i.kp = load i64, ptr %i.ko, align 8, !noalias !24977, !noundef !75
  %.not8.i.i = icmp ugt i64 %i.kp, %.pre.i41
  br i1 %.not8.i.i, label %bb.bz, label %_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE4pushB1j_.exit

bb.bz:                                            ; preds = %bb.by
  %i.kq = ptrtoint ptr %.val1.i.i to i64
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %storemerge10.i.i
  store i64 %i.kq, ptr %i.kr, align 8, !noalias !24977
  %.not.i.i42 = icmp eq i64 %i.kl, 0
  br i1 %.not.i.i42, label %_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE4pushB1j_.exit, label %bb.by

_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE4pushB1j_.exit: ; preds = %bb.by, %bb.bz, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE8push_mutBN_.exit.i
  %storemerge.lcssa.i.i = phi i64 [ 0, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE8push_mutBN_.exit.i ], [ %storemerge10.i.i, %bb.by ], [ 0, %bb.bz ]
  %i.ks = ptrtoint ptr %i.jm to i64
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %storemerge.lcssa.i.i
  store i64 %i.ks, ptr %i.kt, align 8, !noalias !24983
  br label %bb.ca

bb.ca:                                            ; preds = %_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE4pushB1j_.exit, %bb.br
  %.phi.trans.insert = getelementptr i8, ptr %1, i64 40
  %.val24.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bx
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %.body36

bb.cc:                                            ; preds = %.loopexit, %bb.ca
  %.val24 = phi i64 [ %.sroa.7.07.i.i, %.loopexit ], [ %.val24.pre, %bb.ca ] ; 5 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.kw = getelementptr i8, ptr %1, i64 40        ; 2 uses
  %i.kx = icmp ult i64 %.val24, 1152921504606846976
  call void @llvm.assume(i1 %i.kx)
  %i.ky = icmp eq i64 %.val24, 0
  br i1 %i.ky, label %bb.ci, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.experimental.noalias.scope.decl(metadata !24984)
  %i.kz = add nsw i64 %.val24, -1                 ; 8 uses
  store i64 %i.kz, ptr %i.kw, align 8, !alias.scope !24984
  %i.la = load i64, ptr %i.kv, align 8, !range !76, !alias.scope !24984, !noundef !75
  %i.lb = icmp samesign ult i64 %i.kz, %i.la
  call void @llvm.assume(i1 %i.lb)
  %i.lc = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !alias.scope !24984, !nonnull !75, !noundef !75 ; 13 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.kz
  %i.lf = load ptr, ptr %i.le, align 8, !noalias !24984, !nonnull !75, !align !95, !noundef !75 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24985)
  %i.lg = icmp eq i64 %i.kz, 0
  br i1 %i.lg, label %_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE3popB1j_.exit.thread.thread, label %bb.ce

_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE3popB1j_.exit.thread.thread: ; preds = %bb.cd
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.lf, ptr %i.lh, align 8
  br label %.thread

bb.ce:                                            ; preds = %bb.cd
  %.sroa.0.0.copyload.i.i44 = load ptr, ptr %i.ld, align 8, !noalias !24986 ; 4 uses
  store ptr %i.lf, ptr %i.ld, align 8, !noalias !24986
  %i.li = ptrtoint ptr %i.lf to i64               ; 3 uses
  %i.lj = add nsw i64 %.val24, -3                 ; 2 uses
  %.not.not11.i.i.i = icmp samesign ult i64 %.val24, 4
  br i1 %.not.not11.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  %i.lk = icmp eq i64 %i.mp, %i.lj
  br i1 %i.lk, label %.thread.i.i.i, label %bb.cf

._crit_edge.thread.i.i.i:                         ; preds = %bb.ce
  %i.ll = icmp eq i64 %i.kz, 2
  br i1 %i.ll, label %.thread.i.i.i, label %_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE3popB1j_.exit

.thread.i.i.i:                                    ; preds = %._crit_edge.thread.i.i.i, %._crit_edge.i.i.i
  %.sroa.05.0.lcssa22.i.i.i = phi i64 [ 1, %._crit_edge.thread.i.i.i ], [ %i.mq, %._crit_edge.i.i.i ] ; 2 uses
  %.sroa.12.0.lcssa21.i.i.i = phi i64 [ 0, %._crit_edge.thread.i.i.i ], [ %i.ml, %._crit_edge.i.i.i ]
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %.sroa.05.0.lcssa22.i.i.i ; 2 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %.sroa.12.0.lcssa21.i.i.i
  %i.lo = load i64, ptr %i.lm, align 8, !noalias !24986
  store i64 %i.lo, ptr %i.ln, align 8, !noalias !24986
  store i64 %i.li, ptr %i.lm, align 8, !noalias !24987
  br label %.lr.ph.i.i.i.i45

bb.cf:                                            ; preds = %._crit_edge.i.i.i
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.ml
  store i64 %i.li, ptr %i.lp, align 8, !noalias !24988
  br label %.lr.ph.i.i.i.i45

.lr.ph.i.i.i.i45:                                 ; preds = %bb.cf, %.thread.i.i.i
  %.lcssa26.sink.i.i.i = phi i64 [ %i.ml, %bb.cf ], [ %.sroa.05.0.lcssa22.i.i.i, %.thread.i.i.i ] ; 2 uses
  %i.lq = icmp samesign ult i64 %.lcssa26.sink.i.i.i, %i.kz
  call void @llvm.assume(i1 %i.lq)
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lf, i64 32
  %i.ls = load i64, ptr %i.lr, align 8, !alias.scope !24985, !noalias !24984, !noundef !75
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ch, %.lr.ph.i.i.i.i45
  %storemerge10.i.i.i.i = phi i64 [ %.lcssa26.sink.i.i.i, %.lr.ph.i.i.i.i45 ], [ %i.lu, %bb.ch ] ; 3 uses
  %i.lt = add nsw i64 %storemerge10.i.i.i.i, -1
  %i.lu = lshr i64 %i.lt, 1                       ; 4 uses
  %i.lv = icmp samesign ult i64 %i.lu, %i.kz
  call void @llvm.assume(i1 %i.lv)
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.lu
  %.val1.i.i.i.i = load ptr, ptr %i.lw, align 8, !noalias !24986, !nonnull !75, !align !95, !noundef !75 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 32
  %i.ly = load i64, ptr %i.lx, align 8, !noalias !24984, !noundef !75
  %.not8.i.i.i.i = icmp ugt i64 %i.ly, %i.ls
  br i1 %.not8.i.i.i.i, label %bb.ch, label %_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE3popB1j_.exit

bb.ch:                                            ; preds = %bb.cg
  %i.lz = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %storemerge10.i.i.i.i
  store i64 %i.lz, ptr %i.ma, align 8, !noalias !24986
  %.not.i.i.i.i46 = icmp eq i64 %i.lu, 0
  br i1 %.not.i.i.i.i46, label %_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE3popB1j_.exit, label %bb.cg

.lr.ph.i.i.i:                                     ; preds = %bb.ce, %.lr.ph.i.i.i
  %.sroa.05.013.i.i.i = phi i64 [ %i.mq, %.lr.ph.i.i.i ], [ 1, %bb.ce ] ; 3 uses
  %.sroa.12.012.i.i.i = phi i64 [ %i.ml, %.lr.ph.i.i.i ], [ 0, %bb.ce ]
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %.sroa.05.013.i.i.i
  %i.mc = add nuw nsw i64 %.sroa.05.013.i.i.i, 1  ; 2 uses
  %i.md = icmp samesign ult i64 %i.mc, %i.kz
  call void @llvm.assume(i1 %i.md)
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.mc
  %.val.i.i.i = load ptr, ptr %i.mb, align 8, !noalias !24986, !nonnull !75, !align !95, !noundef !75
  %.val17.i.i.i = load ptr, ptr %i.me, align 8, !noalias !24986, !nonnull !75, !align !95, !noundef !75
  %i.mf = getelementptr inbounds nuw i8, ptr %.val17.i.i.i, i64 32
  %i.mg = load i64, ptr %i.mf, align 8, !noalias !24984, !noundef !75
  %i.mh = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 32
  %i.mi = load i64, ptr %i.mh, align 8, !noalias !24984, !noundef !75
  %i.mj = icmp ule i64 %i.mg, %i.mi
  %i.mk = zext i1 %i.mj to i64
  %i.ml = add nuw nsw i64 %.sroa.05.013.i.i.i, %i.mk ; 6 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.ml
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %.sroa.12.012.i.i.i
  %i.mo = load i64, ptr %i.mm, align 8, !noalias !24986
  store i64 %i.mo, ptr %i.mn, align 8, !noalias !24986
  %i.mp = shl nuw nsw i64 %i.ml, 1                ; 3 uses
  %i.mq = or disjoint i64 %i.mp, 1                ; 2 uses
  %.not.not.not.i.i.i = icmp samesign ult i64 %i.mp, %i.lj
  br i1 %.not.not.not.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.ci:                                            ; preds = %bb.cc
  %.val20 = load i64, ptr %i.kv, align 8          ; 2 uses
  %i.mr = icmp eq i64 %.val20, 0
  br i1 %i.mr, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc11collections11binary_heap10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEEB1M_.exit, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc11collections11binary_heap10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEEB1M_.exit.sink.split

_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE3popB1j_.exit: ; preds = %bb.cg, %bb.ch, %._crit_edge.thread.i.i.i
  %storemerge.lcssa.i.i.i.i = phi i64 [ 0, %._crit_edge.thread.i.i.i ], [ 0, %bb.ch ], [ %storemerge10.i.i.i.i, %bb.cg ]
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %storemerge.lcssa.i.i.i.i
  store i64 %i.li, ptr %i.ms, align 8, !noalias !24989
  %.not.i = icmp eq ptr %.sroa.0.0.copyload.i.i44, null
  br i1 %.not.i, label %bb.cj, label %_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE3popB1j_.exit.thread, !prof !24990

bb.cj:                                            ; preds = %_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE3popB1j_.exit
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @946) #66
          to label %.noexc unwind label %bb.ck

.noexc:                                           ; preds = %bb.cj
  unreachable

bb.ck:                                            ; preds = %bb.cj
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %.body36

_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE3popB1j_.exit.thread: ; preds = %_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE3popB1j_.exit
  %.val25.pre = load ptr, ptr %i.lc, align 8      ; 2 uses
  %.val26.pre = load i64, ptr %i.kw, align 8
  %i.mu = icmp ne i64 %.val26.pre, 0
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %.sroa.0.0.copyload.i.i44, ptr %i.mv, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !24991)
  %.not.i4992 = icmp ne ptr %.val25.pre, null
  %.not.i49.not = select i1 %i.mu, i1 %.not.i4992, i1 false
  br i1 %.not.i49.not, label %bb.cl, label %.thread

bb.cl:                                            ; preds = %_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE3popB1j_.exit.thread
  %.val.i50 = load ptr, ptr %.val25.pre, align 8, !alias.scope !24991, !nonnull !75, !align !95, !noundef !75
  %i.mw = getelementptr inbounds nuw i8, ptr %.val.i50, i64 32
  %i.mx = load i64, ptr %i.mw, align 8, !noalias !24991, !noundef !75
  br label %.thread

.thread:                                          ; preds = %_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE3popB1j_.exit.thread, %bb.cl, %_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE3popB1j_.exit.thread.thread
  %.sroa.0.0.i91154 = phi ptr [ %.sroa.0.0.copyload.i.i44, %bb.cl ], [ %.sroa.0.0.copyload.i.i44, %_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE3popB1j_.exit.thread ], [ %i.lf, %_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE3popB1j_.exit.thread.thread ]
  %..i = phi i64 [ %i.mx, %bb.cl ], [ -1, %_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE3popB1j_.exit.thread ], [ -1, %_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE3popB1j_.exit.thread.thread ]
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mz = load i64, ptr %i.my, align 8, !noundef !75
  %.sroa.0.0.i51 = call noundef i64 @llvm.umin.i64(i64 %..i, i64 %i.mz)
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %.sroa.0.0.i91154, ptr %i.na, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %.sroa.0.0.i51, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.1062.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i8 0, ptr %.sroa.1062.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.864)
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 184
  br label %bb.z

.body36:                                          ; preds = %.body28, %bb.bt, %bb.cb, %bb.ck
  %.pn8.pn = phi { ptr, i32 } [ %i.mt, %bb.ck ], [ %i.ku, %bb.cb ], [ %i.ju, %bb.bt ], [ %eh.lpad-body29, %.body28 ] ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val18 = load i64, ptr %i.nd, align 8          ; 2 uses
  %i.ne = icmp eq i64 %.val18, 0
  br i1 %i.ne, label %.body, label %bb.cm

bb.cm:                                            ; preds = %.body36
  %i.nf = getelementptr i8, ptr %1, i64 32
  %.val19 = load ptr, ptr %i.nf, align 8, !nonnull !75, !noundef !75
  %i.ng = shl nuw i64 %.val18, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19, i64 noundef %i.ng, i64 noundef range(i64 1, -9223372036854775807) 8) #63
  br label %.body

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc11collections11binary_heap10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEEB1M_.exit.sink.split: ; preds = %bb.ci, %bb.cn
  %.val16.sink = phi i64 [ %.val16, %bb.cn ], [ %.val20, %bb.ci ]
  %.sroa.080.0.ph = phi i8 [ %i.es, %bb.cn ], [ -1, %bb.ci ]
  %i.nh = getelementptr i8, ptr %1, i64 32
  %.val17 = load ptr, ptr %i.nh, align 8, !nonnull !75, !noundef !75
  %i.ni = shl nuw i64 %.val16.sink, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef %i.ni, i64 noundef range(i64 1, -9223372036854775807) 8) #63
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc11collections11binary_heap10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEEB1M_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc11collections11binary_heap10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEEB1M_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc11collections11binary_heap10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEEB1M_.exit.sink.split, %bb.cn, %bb.ci
  %.sroa.080.0 = phi i8 [ %i.es, %bb.cn ], [ -1, %bb.ci ], [ %.sroa.080.0.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc11collections11binary_heap10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEEB1M_.exit.sink.split ]
  store i8 %.sroa.080.0, ptr %0, align 8
  %.sroa.381.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.381.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.381, i64 55, i1 false)
  br label %common.ret

bb.cn:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsjjpCCFGI3ul_14lance_encoding.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.864, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.3.i, i64 55, i1 false)
  store i8 1, ptr %i.em, align 8, !noalias !24965
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.3, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.864, i64 55, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.864)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.381, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.3, i64 55, i1 false)
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val16 = load i64, ptr %i.nj, align 8          ; 2 uses
  %i.nk = icmp eq i64 %.val16, 0
  br i1 %i.nk, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc11collections11binary_heap10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEEB1M_.exit, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc11collections11binary_heap10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEEB1M_.exit.sink.split

bb.co:                                            ; preds = %.body28
  %i.nl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvMsr_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB7_17FullZipReadSource5fetch0Bd_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.3 = alloca [7 x i8], align 1             ; 2 uses
  %.sroa.1249 = alloca [16 x i8], align 8         ; 2 uses
  %.sroa.3.sroa.0 = alloca [7 x i8], align 1      ; 2 uses
  %.sroa.5.sroa.2 = alloca [16 x i8], align 8     ; 2 uses
  %i.e = alloca [56 x i8], align 8                ; 12 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.h = load i8, ptr %i.g, align 8, !range !131, !noundef !75
  switch i8 %i.h, label %default.unreachable73 [
    i8 0, label %bb.c
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.b
  ]

default.unreachable73:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val12.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert62 = getelementptr i8, ptr %1, i64 56
  %.val13.pre = load ptr, ptr %.phi.trans.insert62, align 8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 65
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val14 = load ptr, ptr %i.j, align 8, !nonnull !75, !noundef !75
  %i.k = getelementptr i8, ptr %1, i64 32
  %.val15 = load ptr, ptr %i.k, align 8, !nonnull !75, !align !95, !noundef !75 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val15, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !93, !invariant.load !75
  %i.n = add nsw i64 %i.m, -1
  %i.o = and i64 %i.n, -16
  %i.p = getelementptr inbounds nuw i8, ptr %.val14, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 0, ptr %i.i, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load i64, ptr %i.r, align 8, !noundef !75
  %i.t = getelementptr inbounds nuw i8, ptr %.val15, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !invariant.load !75, !nonnull !75
  %i.v = invoke { ptr, ptr } %i.u(ptr noundef nonnull %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, i64 noundef %i.s)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.body16

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.x = extractvalue { ptr, ptr } %i.v, 0        ; 2 uses
  %i.y = extractvalue { ptr, ptr } %i.v, 1        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.x, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.y, ptr %i.aa, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @957) #66
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @957) #66
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.val10 = load ptr, ptr %i.ac, align 8
  %.val11 = load ptr, ptr %i.ad, align 8, !nonnull !75, !align !95, !noundef !75
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsjjpCCFGI3ul_14lance_encoding(ptr %.val10, ptr nonnull %.val11) #67
          to label %.body16 unwind label %bb.ah

bb.i:                                             ; preds = %bb.b, %bb.e
  %.val13 = phi ptr [ %.val13.pre, %bb.b ], [ %i.y, %bb.e ]
  %.val12 = phi ptr [ %.val12.pre, %bb.b ], [ %i.x, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ad = getelementptr i8, ptr %1, i64 56        ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val13, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !invariant.load !75, !noalias !25047, !nonnull !75
  invoke void %i.af(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.e, ptr noundef nonnull %.val12, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsjjpCCFGI3ul_14lance_encoding.exit unwind label %bb.h, !inline_history !38

_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.i
end_hunk_2
begin_hunk_3_@_RNCNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtB7_16BlobFieldDecoderNtNtBd_7decoder18LogicalPageDecoder15wait_for_loaded0Bd_:bb.a
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ew, i64 96
  %i.fm = load ptr, ptr %i.fl, align 8, !alias.scope !26802, !noalias !26804, !noundef !75
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ew, i64 104
  %i.fo = load i64, ptr %i.fn, align 8, !alias.scope !26802, !noalias !26804, !noundef !75
  store ptr %i.fg, ptr %i.f, align 8, !noalias !26803
  %i.fp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.fm, ptr %i.fp, align 8, !noalias !26803
  %i.fq = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.fo, ptr %i.fq, align 8, !noalias !26803
  invoke fastcc void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferyE3newCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.fj, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, i64 noundef %i.ez, i64 noundef %i.fk)
          to label %bb.ax unwind label %bb.aw

bb.av:                                            ; preds = %bb.at
  call void @llvm.trap()
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECsjjpCCFGI3ul_14lance_encoding.exit116

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !26803
  %i.fs = load ptr, ptr %i.ex, align 8, !nonnull !75, !align !95, !noundef !75 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 184
  %i.fu = load i64, ptr %i.fe, align 8, !noundef !75
  call void @llvm.experimental.noalias.scope.decl(metadata !26805)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !26806
  %i.fv = load ptr, ptr %i.ft, align 8, !alias.scope !26805, !noalias !26807, !nonnull !75, !noundef !75 ; 2 uses
  %i.fw = atomicrmw add ptr %i.fv, i64 1 monotonic, align 8, !noalias !26806
  %i.fx = icmp slt i64 %i.fw, 0
  br i1 %i.fx, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fz = sub i64 %i.fu, %i.ez
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fs, i64 192
  %i.gb = load ptr, ptr %i.ga, align 8, !alias.scope !26805, !noalias !26807, !noundef !75
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fs, i64 200
  %i.gd = load i64, ptr %i.gc, align 8, !alias.scope !26805, !noalias !26807, !noundef !75
  store ptr %i.fv, ptr %i.e, align 8, !noalias !26806
  %i.ge = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.gb, ptr %i.ge, align 8, !noalias !26806
  %i.gf = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.gd, ptr %i.gf, align 8, !noalias !26806
  invoke fastcc void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferyE3newCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.fy, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, i64 noundef %i.ez, i64 noundef %i.fz)
          to label %bb.bb unwind label %bb.ba

bb.az:                                            ; preds = %bb.ax
  call void @llvm.trap()
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECsjjpCCFGI3ul_14lance_encoding.exit

bb.bb:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !26806
  %i.gh = getelementptr i8, ptr %1, i64 40        ; 2 uses
  %.val48 = load ptr, ptr %i.gh, align 8, !noundef !75 ; 4 uses
  %i.gi = getelementptr i8, ptr %1, i64 48        ; 2 uses
  %.val49 = load i64, ptr %i.gi, align 8, !noundef !75
  %i.gj = getelementptr i8, ptr %1, i64 64        ; 2 uses
  %.val46 = load ptr, ptr %i.gj, align 8, !noundef !75 ; 4 uses
  %i.gk = getelementptr i8, ptr %1, i64 72        ; 2 uses
  %.val47 = load i64, ptr %i.gk, align 8, !noundef !75
  %i.gl = lshr i64 %.val49, 3
  %i.gm = lshr i64 %.val47, 3
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.gm, i64 %i.gl) ; 10 uses
  %i.gn = shl i64 %.sroa.0.0.i.i.i, 4             ; 4 uses
  %i.go = icmp samesign ugt i64 %.sroa.0.0.i.i.i, 1152921504606846975
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.gn, 9223372036854775800
  %or.cond.i.i.i.i.i.i = or i1 %i.go, %.not.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.be, label %bb.bc, !prof !80

bb.bc:                                            ; preds = %bb.bb
  %i.gp = icmp eq i64 %i.gn, 0
  br i1 %i.gp, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !26808
  %i.gq = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.gn, i64 noundef range(i64 1, 17) 8) #63, !noalias !26808 ; 2 uses
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %bb.be, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i

bb.be:                                            ; preds = %bb.bd, %bb.bb
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.bd ], [ 0, %bb.bb ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.gn) #66
          to label %.noexc103 unwind label %bb.bg

.noexc103:                                        ; preds = %bb.be
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i: ; preds = %bb.bd, %bb.bc
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.bc ], [ %i.gq, %bb.bd ] ; 8 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %bb.bc ], [ %.sroa.0.0.i.i.i, %bb.bd ] ; 6 uses
  %i.gs = icmp samesign ule i64 %.sroa.0.0.i.i.i, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.gs)
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val48) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val46) ]
  %xtraiter = and i64 %.sroa.0.0.i.i.i, 1
  %i.gt = icmp eq i64 %.sroa.0.0.i.i.i, 1
  br i1 %i.gt, label %.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.new:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %unroll_iter = and i64 %.sroa.0.0.i.i.i, 1152921504606846974
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.new
  %i.gu = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.new ], [ %i.hb, %bb.bf ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.new ], [ %niter.next.1, %bb.bf ]
  %i.gv = or disjoint i64 %i.gu, 1                ; 3 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %.val48, i64 %i.gu
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %.val46, i64 %i.gu
  %.val14.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gw, align 8, !noalias !26809, !noundef !75 ; 2 uses
  %.val15.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gx, align 8, !noalias !26809, !noundef !75
  %i.gy = add i64 %.val15.i.i.i.i.i.i.i.i.i.i, %.val14.i.i.i.i.i.i.i.i.i.i
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.gu ; 2 uses
  store i64 %.val14.i.i.i.i.i.i.i.i.i.i, ptr %i.gz, align 8, !noalias !26810
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store i64 %i.gy, ptr %i.ha, align 8, !noalias !26810
  %i.hb = add nuw nsw i64 %i.gu, 2                ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.val48, i64 %i.gv
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.val46, i64 %i.gv
  %.val14.i.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.hc, align 8, !noalias !26809, !noundef !75 ; 2 uses
  %.val15.i.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.hd, align 8, !noalias !26809, !noundef !75
  %i.he = add i64 %.val15.i.i.i.i.i.i.i.i.i.i.1, %.val14.i.i.i.i.i.i.i.i.i.i.1
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.gv ; 2 uses
  store i64 %.val14.i.i.i.i.i.i.i.i.i.i.1, ptr %i.hf, align 8, !noalias !26810
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store i64 %i.he, ptr %i.hg, align 8, !noalias !26810
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.bf

bb.bg:                                            ; preds = %bb.be
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.bf
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.hb, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod331 = trunc i64 %.sroa.0.0.i.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod331)
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %.val48, i64 %.epil.init
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.val46, i64 %.epil.init
  %.val14.i.i.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.hi, align 8, !noalias !26809, !noundef !75 ; 2 uses
  %.val15.i.i.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.hj, align 8, !noalias !26809, !noundef !75
  %i.hk = add i64 %.val15.i.i.i.i.i.i.i.i.i.i.epil, %.val14.i.i.i.i.i.i.i.i.i.i.epil
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %.epil.init ; 2 uses
  store i64 %.val14.i.i.i.i.i.i.i.i.i.i.epil, ptr %i.hl, align 8, !noalias !26810
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store i64 %i.hk, ptr %i.hm, align 8, !noalias !26810
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 2 uses
  store i8 1, ptr %i.hn, align 1
  %.val44 = load ptr, ptr %i.gh, align 8, !noundef !75 ; 2 uses
  %.val45 = load i64, ptr %i.gi, align 8, !noundef !75
  %.val42 = load ptr, ptr %i.gj, align 8, !noundef !75 ; 2 uses
  %.val43 = load i64, ptr %i.gk, align 8, !noundef !75
  %i.ho = lshr i64 %.val45, 3
  %i.hp = lshr i64 %.val43, 3
  %.sroa.0.0.i.i.i104 = call noundef i64 @llvm.umin.i64(i64 %i.hp, i64 %i.ho) ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !26811
  %i.hr = add nuw nsw i64 %.sroa.0.0.i.i.i104, 7  ; 2 uses
  %.sroa.01.0.i.i = lshr i64 %i.hr, 3             ; 3 uses
  %i.hs = and i64 %i.hr, 504
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %.split.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %.loopexit
  %reass.sub.i.i.i = and i64 %.sroa.01.0.i.i, 576460752303423424
  %i.hu = add nuw nsw i64 %reass.sub.i.i.i, 64    ; 2 uses
  %i.hv = icmp samesign ult i64 %i.hu, %.sroa.01.0.i.i
  br i1 %i.hv, label %bb.bi, label %.split.thread.i.i.i, !prof !81

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1314, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1316) #66
          to label %.noexc109 unwind label %bb.bv

.noexc109:                                        ; preds = %bb.bi
  unreachable

.split.i.i.i:                                     ; preds = %.loopexit
  %i.hw = icmp eq i64 %.sroa.0.0.i.i.i104, 0
  br i1 %i.hw, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i.thread, label %.split.thread.i.i.i

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i.thread: ; preds = %.split.i.i.i
  %.sroa.420.0..sroa_idx.i.i273 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.521.0..sroa_idx.i.i274 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.0..sroa_idx.i.i106275 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IteryEB17_ENCNCNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtB1O_16BlobFieldDecoderNtNtB1U_7decoder18LogicalPageDecoder15wait_for_loaded0s_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB51_13BooleanBufferINtNtB4f_7collect12FromIteratorbE9from_iterB3_E0EB1U_.exit.i.i

.split.thread.i.i.i:                              ; preds = %.split.i.i.i, %bb.bh
  %.sroa.4.010.i.i.i = phi i64 [ %.sroa.01.0.i.i, %.split.i.i.i ], [ %i.hu, %bb.bh ] ; 4 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !26812
  %i.hx = call noundef align 128 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.sroa.4.010.i.i.i, i64 noundef 128) #63, !noalias !26812 ; 3 uses
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %bb.bj, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i, !prof !81

bb.bj:                                            ; preds = %.split.thread.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef %.sroa.4.010.i.i.i) #66
          to label %.noexc110 unwind label %bb.bv

.noexc110:                                        ; preds = %bb.bj
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i: ; preds = %.split.thread.i.i.i
  store i64 128, ptr %i.d, align 8, !noalias !26811
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store i64 %.sroa.4.010.i.i.i, ptr %.sroa.420.0..sroa_idx.i.i, align 8, !noalias !26811
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 6 uses
  store ptr %i.hx, ptr %.sroa.521.0..sroa_idx.i.i, align 8, !noalias !26811
  %.sroa.6.0..sroa_idx.i.i106 = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 7 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %.not.i.i.i.i.i.i107 = icmp eq i64 %.sroa.0.0.i.i.i104, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i106, i8 0, i64 16, i1 false), !noalias !26811
  br i1 %.not.i.i.i.i.i.i107, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IteryEB17_ENCNCNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtB1O_16BlobFieldDecoderNtNtB1U_7decoder18LogicalPageDecoder15wait_for_loaded0s_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB51_13BooleanBufferINtNtB4f_7collect12FromIteratorbE9from_iterB3_E0EB1U_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val44) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val42) ]
  br label %bb.bk

bb.bk:                                            ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldTRyBV_EbuNCNCNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtB1d_16BlobFieldDecoderNtNtB1j_7decoder18LogicalPageDecoder15wait_for_loaded0s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callbNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4C_13BooleanBufferINtNtB3K_7collect12FromIteratorbE9from_iterINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IteryEB6P_EB13_EE0E0E0B1j_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.013.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %i.ia, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldTRyBV_EbuNCNCNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtB1d_16BlobFieldDecoderNtNtB1j_7decoder18LogicalPageDecoder15wait_for_loaded0s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callbNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4C_13BooleanBufferINtNtB3K_7collect12FromIteratorbE9from_iterINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IteryEB6P_EB13_EE0E0E0B1j_.exit.i.i.i.i.i.i ] ; 3 uses
  %i.ia = add nuw nsw i64 %.sroa.0.013.i.i.i.i.i.i, 1 ; 2 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %.val44, i64 %.sroa.0.013.i.i.i.i.i.i
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %.val42, i64 %.sroa.0.013.i.i.i.i.i.i
  %.val10.i.i.i.i.i.i = load i64, ptr %i.ib, align 8, !noalias !26813, !noundef !75
  %.val11.i.i.i.i.i.i = load i64, ptr %i.ic, align 8, !noalias !26813
  %i.id = icmp ne i64 %.val10.i.i.i.i.i.i, 1
  %i.ie = icmp ne i64 %.val11.i.i.i.i.i.i, 0
  %.sroa.0.0.i.i.i.i.i.i.i.i = select i1 %i.id, i1 true, i1 %i.ie
  %i.if = load i64, ptr %i.hz, align 8, !alias.scope !26814, !noalias !26813, !noundef !75 ; 3 uses
  %i.ig = add i64 %i.if, 1                        ; 3 uses
  %i.ih = lshr i64 %i.ig, 3
  %i.ii = and i64 %i.ig, 7
  %.not.i.i.i.i.i.i.i.i.i.i108 = icmp ne i64 %i.ii, 0
  %i.ij = zext i1 %.not.i.i.i.i.i.i.i.i.i.i108 to i64
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %i.ih, %i.ij ; 8 uses
  %i.ik = load i64, ptr %.sroa.6.0..sroa_idx.i.i106, align 8, !alias.scope !26814, !noalias !26813, !noundef !75 ; 3 uses
  %i.il = icmp ugt i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %i.ik
  br i1 %i.il, label %bb.bl, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i.i.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.im = sub nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %i.ik
  %i.in = load i64, ptr %.sroa.420.0..sroa_idx.i.i, align 8, !alias.scope !26815, !noalias !26813, !noundef !75 ; 2 uses
  %i.io = icmp ugt i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %i.in
  br i1 %i.io, label %bb.bm, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i.i.i.i.i.i.i, !prof !81

bb.bm:                                            ; preds = %bb.bl
  %i.ip = and i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, 63
  %i.iq = icmp eq i64 %i.ip, 0
  br i1 %i.iq, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %reass.sub.i.i.i.i.i.i.i.i.i.i.i = and i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, 4611686018427387840
  %i.ir = add nuw nsw i64 %reass.sub.i.i.i.i.i.i.i.i.i.i.i, 64 ; 2 uses
  %i.is = icmp samesign ult i64 %i.ir, %.sroa.0.0.i.i.i.i.i.i.i.i.i.i
  br i1 %i.is, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %bb.bm ], [ %i.ir, %bb.bn ]
  %i.it = shl nuw nsw i64 %i.in, 1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.it, i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d, i64 noundef %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !noalias !26811

.noexc.i.i:                                       ; preds = %bb.bo
  %.pre.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i106, align 8, !alias.scope !26814, !noalias !26813
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i.i.i.i.i.i.i

bb.bp:                                            ; preds = %bb.bn
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1314, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1316) #66
          to label %.noexc5.i.i unwind label %.loopexit.split-lp.i.i, !noalias !26811

.noexc5.i.i:                                      ; preds = %bb.bp
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i, %bb.bl
  %i.iu = phi i64 [ %i.ik, %bb.bl ], [ %.pre.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i ]
  %i.iv = load ptr, ptr %.sroa.521.0..sroa_idx.i.i, align 8, !alias.scope !26814, !noalias !26813, !nonnull !75, !noundef !75
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.iu
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.iw, i8 0, i64 %i.im, i1 false), !noalias !26813
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i106, align 8, !alias.scope !26814, !noalias !26813
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i.i.i.i.i.i.i

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i.i.i.i.i.i.i, %bb.bk
  store i64 %i.ig, ptr %i.hz, align 8, !alias.scope !26814, !noalias !26813
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i, label %bb.bq, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldTRyBV_EbuNCNCNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtB1d_16BlobFieldDecoderNtNtB1j_7decoder18LogicalPageDecoder15wait_for_loaded0s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callbNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4C_13BooleanBufferINtNtB3K_7collect12FromIteratorbE9from_iterINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IteryEB6P_EB13_EE0E0E0B1j_.exit.i.i.i.i.i.i

bb.bq:                                            ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i.i.i.i.i.i.i
  %i.ix = load ptr, ptr %.sroa.521.0..sroa_idx.i.i, align 8, !alias.scope !26816, !noalias !26813, !nonnull !75, !noundef !75
  %i.iy = trunc i64 %i.if to i8
  %i.iz = and i8 %i.iy, 7
  %i.ja = shl nuw i8 1, %i.iz
  %i.jb = lshr i64 %i.if, 3
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.jb ; 2 uses
  %i.jd = load i8, ptr %i.jc, align 1, !noalias !26813, !noundef !75
  %i.je = or i8 %i.jd, %i.ja
  store i8 %i.je, ptr %i.jc, align 1, !noalias !26813
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldTRyBV_EbuNCNCNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtB1d_16BlobFieldDecoderNtNtB1j_7decoder18LogicalPageDecoder15wait_for_loaded0s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callbNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4C_13BooleanBufferINtNtB3K_7collect12FromIteratorbE9from_iterINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IteryEB6P_EB13_EE0E0E0B1j_.exit.i.i.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldTRyBV_EbuNCNCNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtB1d_16BlobFieldDecoderNtNtB1j_7decoder18LogicalPageDecoder15wait_for_loaded0s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callbNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4C_13BooleanBufferINtNtB3K_7collect12FromIteratorbE9from_iterINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IteryEB6P_EB13_EE0E0E0B1j_.exit.i.i.i.i.i.i: ; preds = %bb.bq, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i.i.i.i.i.i.i
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ia, %.sroa.0.0.i.i.i104
  br i1 %exitcond.not.i.i.i.i.i.i, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IteryEB17_ENCNCNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtB1O_16BlobFieldDecoderNtNtB1U_7decoder18LogicalPageDecoder15wait_for_loaded0s_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB51_13BooleanBufferINtNtB4f_7collect12FromIteratorbE9from_iterB3_E0EB1U_.exit.loopexit.i.i, label %bb.bk

.loopexit.i.i:                                    ; preds = %bb.bo
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.i:                           ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, %bb.bp
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.bs, %.loopexit.split-lp.i.i, %.loopexit.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.jk, %bb.bs ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %.body111 unwind label %bb.bu, !noalias !26811

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IteryEB17_ENCNCNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtB1O_16BlobFieldDecoderNtNtB1U_7decoder18LogicalPageDecoder15wait_for_loaded0s_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB51_13BooleanBufferINtNtB4f_7collect12FromIteratorbE9from_iterB3_E0EB1U_.exit.loopexit.i.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldTRyBV_EbuNCNCNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtB1d_16BlobFieldDecoderNtNtB1j_7decoder18LogicalPageDecoder15wait_for_loaded0s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callbNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4C_13BooleanBufferINtNtB3K_7collect12FromIteratorbE9from_iterINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IteryEB6P_EB13_EE0E0E0B1j_.exit.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.pre.i.i = load i64, ptr %i.d, align 8, !alias.scope !26817, !noalias !26818
  %.sroa.4.0.copyload.i.pre.i.i = load i64, ptr %.sroa.420.0..sroa_idx.i.i, align 8, !alias.scope !26817, !noalias !26818
  %.sroa.5.0.copyload.i.pre.i.i = load ptr, ptr %.sroa.521.0..sroa_idx.i.i, align 8, !alias.scope !26817, !noalias !26818
  %.sroa.6.0.copyload.i.pre.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i106, align 8, !alias.scope !26817, !noalias !26818
  %.pre.i.i = load i64, ptr %i.hz, align 8, !alias.scope !26817, !noalias !26818
  br label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IteryEB17_ENCNCNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtB1O_16BlobFieldDecoderNtNtB1U_7decoder18LogicalPageDecoder15wait_for_loaded0s_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB51_13BooleanBufferINtNtB4f_7collect12FromIteratorbE9from_iterB3_E0EB1U_.exit.i.i

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IteryEB17_ENCNCNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtB1O_16BlobFieldDecoderNtNtB1U_7decoder18LogicalPageDecoder15wait_for_loaded0s_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB51_13BooleanBufferINtNtB4f_7collect12FromIteratorbE9from_iterB3_E0EB1U_.exit.i.i: ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i.thread, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IteryEB17_ENCNCNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtB1O_16BlobFieldDecoderNtNtB1U_7decoder18LogicalPageDecoder15wait_for_loaded0s_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB51_13BooleanBufferINtNtB4f_7collect12FromIteratorbE9from_iterB3_E0EB1U_.exit.loopexit.i.i, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i
  %.sroa.6.0..sroa_idx.i.i106279 = phi ptr [ %.sroa.6.0..sroa_idx.i.i106, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IteryEB17_ENCNCNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtB1O_16BlobFieldDecoderNtNtB1U_7decoder18LogicalPageDecoder15wait_for_loaded0s_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB51_13BooleanBufferINtNtB4f_7collect12FromIteratorbE9from_iterB3_E0EB1U_.exit.loopexit.i.i ], [ %.sroa.6.0..sroa_idx.i.i106, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i ], [ %.sroa.6.0..sroa_idx.i.i106275, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i.thread ]
  %.sroa.521.0..sroa_idx.i.i278 = phi ptr [ %.sroa.521.0..sroa_idx.i.i, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IteryEB17_ENCNCNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtB1O_16BlobFieldDecoderNtNtB1U_7decoder18LogicalPageDecoder15wait_for_loaded0s_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB51_13BooleanBufferINtNtB4f_7collect12FromIteratorbE9from_iterB3_E0EB1U_.exit.loopexit.i.i ], [ %.sroa.521.0..sroa_idx.i.i, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i ], [ %.sroa.521.0..sroa_idx.i.i274, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i.thread ]
  %.sroa.420.0..sroa_idx.i.i277 = phi ptr [ %.sroa.420.0..sroa_idx.i.i, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IteryEB17_ENCNCNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtB1O_16BlobFieldDecoderNtNtB1U_7decoder18LogicalPageDecoder15wait_for_loaded0s_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB51_13BooleanBufferINtNtB4f_7collect12FromIteratorbE9from_iterB3_E0EB1U_.exit.loopexit.i.i ], [ %.sroa.420.0..sroa_idx.i.i, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i ], [ %.sroa.420.0..sroa_idx.i.i273, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i.thread ]
  %i.jf = phi i64 [ %.pre.i.i, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IteryEB17_ENCNCNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtB1O_16BlobFieldDecoderNtNtB1U_7decoder18LogicalPageDecoder15wait_for_loaded0s_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB51_13BooleanBufferINtNtB4f_7collect12FromIteratorbE9from_iterB3_E0EB1U_.exit.loopexit.i.i ], [ 0, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i ], [ 0, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i.thread ]
  %.sroa.6.0.copyload.i.i.i = phi i64 [ %.sroa.6.0.copyload.i.pre.i.i, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IteryEB17_ENCNCNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtB1O_16BlobFieldDecoderNtNtB1U_7decoder18LogicalPageDecoder15wait_for_loaded0s_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB51_13BooleanBufferINtNtB4f_7collect12FromIteratorbE9from_iterB3_E0EB1U_.exit.loopexit.i.i ], [ 0, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i ], [ 0, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i.thread ] ; 2 uses
  %.sroa.5.0.copyload.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.pre.i.i, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IteryEB17_ENCNCNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtB1O_16BlobFieldDecoderNtNtB1U_7decoder18LogicalPageDecoder15wait_for_loaded0s_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB51_13BooleanBufferINtNtB4f_7collect12FromIteratorbE9from_iterB3_E0EB1U_.exit.loopexit.i.i ], [ %i.hx, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i ], [ inttoptr (i64 128 to ptr), %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i.thread ] ; 2 uses
  %.sroa.4.0.copyload.i.i.i = phi i64 [ %.sroa.4.0.copyload.i.pre.i.i, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IteryEB17_ENCNCNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtB1O_16BlobFieldDecoderNtNtB1U_7decoder18LogicalPageDecoder15wait_for_loaded0s_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB51_13BooleanBufferINtNtB4f_7collect12FromIteratorbE9from_iterB3_E0EB1U_.exit.loopexit.i.i ], [ %.sroa.4.010.i.i.i, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i ], [ 0, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i.thread ]
  %.sroa.0.0.copyload.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.pre.i.i, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IteryEB17_ENCNCNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtB1O_16BlobFieldDecoderNtNtB1U_7decoder18LogicalPageDecoder15wait_for_loaded0s_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB51_13BooleanBufferINtNtB4f_7collect12FromIteratorbE9from_iterB3_E0EB1U_.exit.loopexit.i.i ], [ 128, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i ], [ 128, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i.thread ]
  call void @llvm.experimental.noalias.scope.decl(metadata !26817)
  store i64 128, ptr %i.d, align 8, !alias.scope !26817, !noalias !26818
  store i64 0, ptr %.sroa.420.0..sroa_idx.i.i277, align 8, !alias.scope !26817, !noalias !26818
  store ptr inttoptr (i64 128 to ptr), ptr %.sroa.521.0..sroa_idx.i.i278, align 8, !alias.scope !26817, !noalias !26818
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i106279, i8 0, i64 16, i1 false), !noalias !26811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26819
  store i64 1, ptr %i.b, align 8, !noalias !26819
  %i.jg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.jg, align 8, !noalias !26819
  %i.jh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %i.jh, align 8, !noalias !26819
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !26819
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !noalias !26819
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !26819
  %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %.sroa.4.0.copyload.i.i.i, ptr %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !26819
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !26820
  %i.ji = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !26820 ; 3 uses
  %i.jj = icmp eq ptr %i.ji, null
  br i1 %i.jj, label %bb.br, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, !prof !77

bb.br:                                            ; preds = %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IteryEB17_ENCNCNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtB1O_16BlobFieldDecoderNtNtB1U_7decoder18LogicalPageDecoder15wait_for_loaded0s_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB51_13BooleanBufferINtNtB4f_7collect12FromIteratorbE9from_iterB3_E0EB1U_.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #66
          to label %.noexc.i.i.i unwind label %bb.bs, !noalias !26819

.noexc.i.i.i:                                     ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %bb.br
  %i.jk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b) #67
          to label %.body.i.i unwind label %bb.bt, !noalias !26819

bb.bt:                                            ; preds = %bb.bs
  %i.jl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !26819
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IteryEB17_ENCNCNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtB1O_16BlobFieldDecoderNtNtB1U_7decoder18LogicalPageDecoder15wait_for_loaded0s_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB51_13BooleanBufferINtNtB4f_7collect12FromIteratorbE9from_iterB3_E0EB1U_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ji, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !26819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26819
  store ptr %i.ji, ptr %i.c, align 8, !noalias !26819
  %i.jm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %i.jm, align 8, !noalias !26819
  %i.jn = getelementptr inbounds nuw i8, ptr %i.c, i64 16
end_hunk_3
begin_hunk_4_@_RNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtB5_16BlobFieldDecoderNtNtBb_7decoder18LogicalPageDecoder5drain:bb.a
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %2, i64 4) ; 2 uses
  %i.am = shl i64 %.sroa.0.0.i.i, 5               ; 3 uses
  %i.an = icmp ugt i64 %2, 576460752303423487
  %.not.i.i.i = icmp ugt i64 %i.am, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.an, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.d, !prof !80

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !71335
  %i.ao = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.am, i64 noundef range(i64 1, 17) 8) #63, !noalias !71335 ; 7 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.d ], [ 0, %bb.c ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.am) #66
          to label %.noexc.i unwind label %bb.b, !noalias !71328

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  store ptr %.sroa.0.0.copyload7.i, ptr %i.ao, align 8, !noalias !71328
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %.sroa.7.sroa.0.0.copyload.i, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !71328
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %.sroa.7.sroa.5.0.copyload.i, ptr %.sroa.515.0..sroa_idx.i, align 8, !noalias !71328
  %.sroa.6.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %.sroa.7.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx16.i, align 8, !noalias !71328
  store i64 %.sroa.0.0.i.i, ptr %i.j, align 8, !noalias !71328
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.ao, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !71328
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !71328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !71328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false), !noalias !71326
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71339)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  %.promoted.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !71340, !noalias !71341 ; 2 uses
  %i.ar = icmp eq i64 %.promoted.i.i.i, 0
  br i1 %i.ar, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EECsjjpCCFGI3ul_14lance_encoding.exit.i.i, label %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph.i.i.i

_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph.i.i.i: ; preds = %bb.f
  %i.as = load ptr, ptr %i.i, align 8, !alias.scope !71342, !noalias !71343, !nonnull !75, !noundef !75 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.promoted20.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !71342, !noalias !71343
  br label %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %bb.h
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drain5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i) #67
          to label %.body.i unwind label %bb.j, !noalias !71341

_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph.i.i.i
  %i.aw = phi ptr [ %i.ao, %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph.i.i.i ], [ %i.bk, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ]
  %i.ax = phi i64 [ 1, %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph.i.i.i ], [ %i.bm, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ] ; 5 uses
  %i.ay = phi i64 [ %.promoted20.i.i.i, %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph.i.i.i ], [ %i.bd, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ] ; 2 uses
  %.val1819.i.i.i = phi i64 [ %.promoted.i.i.i, %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph.i.i.i ], [ %i.be, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71344)
  %i.az = load i64, ptr %i.au, align 8, !noalias !71345, !noundef !75
  %i.ba = add i64 %i.az, %i.ay                    ; 2 uses
  %i.bb = load i64, ptr %i.as, align 8, !range !76, !noalias !71345, !noundef !75 ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.ba, %i.bb
  %i.bc = select i1 %.not.i.i.i.i, i64 0, i64 %i.bb
  %.sroa.02.0.i.i.i.i = sub nuw i64 %i.ba, %i.bc
  %i.bd = add i64 %i.ay, 1                        ; 3 uses
  %i.be = add i64 %.val1819.i.i.i, -1             ; 4 uses
  %i.bf = load ptr, ptr %i.av, align 8, !noalias !71345, !nonnull !75, !noundef !75
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.bf, i64 %.sroa.02.0.i.i.i.i ; 4 uses
  %.sroa.0.0.copyload4.i.i.i = load ptr, ptr %i.bg, align 8, !noalias !71346 ; 3 uses
  %.sroa.7.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.7.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx5.i.i.i, align 8, !noalias !71346 ; 2 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx5.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.sroa.7.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx5.sroa_idx.i.i.i, align 8, !noalias !71346 ; 2 uses
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx5.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %.sroa.7.sroa.6.0.copyload.i.i.i = load ptr, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx5.sroa_idx.i.i.i, align 8, !noalias !71346 ; 2 uses
  %.not.i.i5.i = icmp eq ptr %.sroa.0.0.copyload4.i.i.i, null
  br i1 %.not.i.i5.i, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EECsjjpCCFGI3ul_14lance_encoding.exit.i.loopexit.i, label %bb.g

bb.g:                                             ; preds = %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %i.bh = icmp samesign ult i64 %i.ax, 288230376151711744
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = load i64, ptr %i.j, align 8, !range !76, !alias.scope !71347, !noalias !71348, !noundef !75
  %i.bj = icmp eq i64 %i.ax, %i.bi
  br i1 %i.bj, label %bb.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i_crit_edge.i, %bb.g
  %i.bk = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i_crit_edge.i ], [ %i.aw, %bb.g ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %i.ax ; 4 uses
  store ptr %.sroa.0.0.copyload4.i.i.i, ptr %i.bl, align 8, !noalias !71349
  %.sroa.411.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %.sroa.7.sroa.0.0.copyload.i.i.i, ptr %.sroa.411.0..sroa_idx.i.i.i, align 8, !noalias !71349
  %.sroa.512.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 %.sroa.7.sroa.5.0.copyload.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i.i, align 8, !noalias !71349
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store ptr %.sroa.7.sroa.6.0.copyload.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !71349
  %i.bm = add nuw nsw i64 %i.ax, 1                ; 2 uses
  store i64 %i.bm, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !71347, !noalias !71348
  %i.bn = icmp eq i64 %i.be, 0
  br i1 %i.bn, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EECsjjpCCFGI3ul_14lance_encoding.exit.i.loopexit.i, label %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  store i64 %i.bd, ptr %i.at, align 8, !alias.scope !71342, !noalias !71343
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !71342, !noalias !71343
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload4.i.i.i, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !71350, !nonnull !75, !noundef !75
  invoke void %i.bq(ptr noundef %.sroa.7.sroa.6.0.copyload.i.i.i, ptr noundef %.sroa.7.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.7.sroa.5.0.copyload.i.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i unwind label %bb.j, !noalias !71349, !inline_history !102

bb.i:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.ax, i64 noundef %.val1819.i.i.i, i64 noundef 8, i64 noundef 32)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i_crit_edge.i unwind label %bb.h, !noalias !71348

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i_crit_edge.i: ; preds = %bb.i
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !71347, !noalias !71348
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i

bb.j:                                             ; preds = %bb.h, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !71349
  unreachable

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EECsjjpCCFGI3ul_14lance_encoding.exit.i.loopexit.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %.lcssa.i = phi i64 [ %i.be, %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ], [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ]
  store i64 %i.bd, ptr %i.at, align 8, !alias.scope !71342, !noalias !71343
  store i64 %.lcssa.i, ptr %i.aq, align 8, !alias.scope !71342, !noalias !71343
  br label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EECsjjpCCFGI3ul_14lance_encoding.exit.i.i

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EECsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EECsjjpCCFGI3ul_14lance_encoding.exit.i.loopexit.i, %bb.f
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drain5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEINtB2_10SpecExtendBR_INtNtNtNtB6_11collections9vec_deque5drain5DrainBR_EE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i unwind label %bb.k, !noalias !71328

bb.k:                                             ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EECsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bs, %bb.k ], [ %i.bo, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 dereferenceable(24) %i.j) #67
          to label %common.resume unwind label %bb.l, !noalias !71328

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEINtB2_10SpecExtendBR_INtNtNtNtB6_11collections9vec_deque5drain5DrainBR_EE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EECsjjpCCFGI3ul_14lance_encoding.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !71328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !71327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !71328
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEINtB2_18SpecFromIterNestedB11_INtNtNtNtB6_11collections9vec_deque5drain5DrainB11_EE9from_iterCsjjpCCFGI3ul_14lance_encoding.exit

bb.l:                                             ; preds = %bb.m, %.body.i, %bb.b
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !71328
  unreachable

common.resume:                                    ; preds = %bb.ax, %bb.at, %.body.i, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.aj, %bb.m ], [ %eh.lpad-body.ph, %bb.ax ], [ %i.ep, %bb.at ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drain5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.l) #67
          to label %common.resume unwind label %bb.l, !noalias !71326

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEINtB2_18SpecFromIterNestedB11_INtNtNtNtB6_11collections9vec_deque5drain5DrainB11_EE9from_iterCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEINtB2_10SpecExtendBR_INtNtNtNtB6_11collections9vec_deque5drain5DrainBR_EE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71351)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !71352
  %i.bu = lshr i64 %2, 3
  %i.bv = and i64 %2, 7
  %.not.i36 = icmp ne i64 %i.bv, 0
  %i.bw = zext i1 %.not.i36 to i64
  %.sroa.010.0.i = add nuw nsw i64 %i.bu, %i.bw   ; 4 uses
  %i.bx = and i64 %.sroa.010.0.i, 63
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %.split.i.i, label %bb.n

bb.n:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEINtB2_18SpecFromIterNestedB11_INtNtNtNtB6_11collections9vec_deque5drain5DrainB11_EE9from_iterCsjjpCCFGI3ul_14lance_encoding.exit
  %reass.sub.i.i = and i64 %.sroa.010.0.i, 4611686018427387840
  %i.bz = add nuw nsw i64 %reass.sub.i.i, 64      ; 2 uses
  %i.ca = icmp samesign ult i64 %i.bz, %.sroa.010.0.i
  br i1 %i.ca, label %bb.o, label %.split.thread.i.i, !prof !81

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1314, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1316) #66
          to label %.noexc unwind label %bb.aq

.noexc:                                           ; preds = %bb.o
  unreachable

.split.i.i:                                       ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEINtB2_18SpecFromIterNestedB11_INtNtNtNtB6_11collections9vec_deque5drain5DrainB11_EE9from_iterCsjjpCCFGI3ul_14lance_encoding.exit
  br i1 %i.y, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.thread.i, label %.split.thread.i.i

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.thread.i: ; preds = %.split.i.i
  %.sroa.4.0..sroa_idx44.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.0..sroa_idx45.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.6.0..sroa_idx46.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  br label %._crit_edge.i

.split.thread.i.i:                                ; preds = %.split.i.i, %bb.n
  %.sroa.4.010.i.i = phi i64 [ %.sroa.010.0.i, %.split.i.i ], [ %i.bz, %bb.n ] ; 4 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !71353
  %i.cc = tail call noundef align 128 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.sroa.4.010.i.i, i64 noundef 128) #63, !noalias !71353 ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.p, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i, !prof !81

bb.p:                                             ; preds = %.split.thread.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef %.sroa.4.010.i.i) #66
          to label %.noexc43 unwind label %bb.aq

.noexc43:                                         ; preds = %bb.p
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i: ; preds = %.split.thread.i.i
  store i64 128, ptr %i.h, align 8, !noalias !71352
  %.sroa.4.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  store i64 %.sroa.4.010.i.i, ptr %.sroa.4.0..sroa_idx.i37, align 8, !noalias !71352
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  store ptr %i.cc, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !71352
  %.sroa.6.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i38, i8 0, i64 16, i1 false), !noalias !71352
  br i1 %i.y, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ci = load i64, ptr %i.cg, align 8, !range !76, !alias.scope !71351, !noalias !71354 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !71351, !noalias !71354, !nonnull !75 ; 2 uses
  %.promoted.i = load i64, ptr %i.cf, align 8, !alias.scope !71351, !noalias !71354 ; 2 uses
  %.not15.i134 = icmp eq i64 %.promoted.i, 0
  br i1 %.not15.i134, label %._crit_edge, label %.lr.ph, !prof !183

.lr.ph:                                           ; preds = %.lr.ph.i
  %.promoted30.i = load i64, ptr %i.ch, align 8, !alias.scope !71351, !noalias !71354
  br label %bb.z

._crit_edge.loopexit.i:                           ; preds = %bb.af, %.thread.i
  %.sroa.0.0.copyload.i.pre.i = load i64, ptr %i.h, align 8, !alias.scope !71355, !noalias !71356
  %.sroa.4.0.copyload.i.pre.i = load i64, ptr %.sroa.4.0..sroa_idx.i37, align 8, !alias.scope !71355, !noalias !71356
  %.sroa.5.0.copyload.i.pre.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !71355, !noalias !71356
  %.sroa.6.0.copyload.i.pre.i = load i64, ptr %.sroa.6.0..sroa_idx.i38, align 8, !alias.scope !71355, !noalias !71356
  %.pre.i42 = load i64, ptr %i.ce, align 8, !alias.scope !71355, !noalias !71356
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.thread.i
  %i.cl = phi ptr [ %i.ce, %._crit_edge.loopexit.i ], [ %i.ce, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i ], [ %i.cb, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.thread.i ]
  %.sroa.6.0..sroa_idx50.i = phi ptr [ %.sroa.6.0..sroa_idx.i38, %._crit_edge.loopexit.i ], [ %.sroa.6.0..sroa_idx.i38, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i ], [ %.sroa.6.0..sroa_idx46.i, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.thread.i ]
  %.sroa.5.0..sroa_idx49.i = phi ptr [ %.sroa.5.0..sroa_idx.i, %._crit_edge.loopexit.i ], [ %.sroa.5.0..sroa_idx.i, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i ], [ %.sroa.5.0..sroa_idx45.i, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.thread.i ]
  %.sroa.4.0..sroa_idx48.i = phi ptr [ %.sroa.4.0..sroa_idx.i37, %._crit_edge.loopexit.i ], [ %.sroa.4.0..sroa_idx.i37, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i ], [ %.sroa.4.0..sroa_idx44.i, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.thread.i ]
  %i.cm = phi i64 [ %.pre.i42, %._crit_edge.loopexit.i ], [ 0, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i ], [ 0, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.thread.i ]
  %.sroa.6.0.copyload.i.i = phi i64 [ %.sroa.6.0.copyload.i.pre.i, %._crit_edge.loopexit.i ], [ 0, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i ], [ 0, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.thread.i ] ; 2 uses
  %.sroa.5.0.copyload.i.i = phi ptr [ %.sroa.5.0.copyload.i.pre.i, %._crit_edge.loopexit.i ], [ %i.cc, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i ], [ inttoptr (i64 128 to ptr), %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.thread.i ] ; 2 uses
  %.sroa.4.0.copyload.i.i = phi i64 [ %.sroa.4.0.copyload.i.pre.i, %._crit_edge.loopexit.i ], [ %.sroa.4.010.i.i, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i ], [ 0, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.thread.i ]
  %.sroa.0.0.copyload.i.i = phi i64 [ %.sroa.0.0.copyload.i.pre.i, %._crit_edge.loopexit.i ], [ 128, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i ], [ 128, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !71352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !71352
  call void @llvm.experimental.noalias.scope.decl(metadata !71355)
  store i64 128, ptr %i.h, align 8, !alias.scope !71355, !noalias !71356
  store i64 0, ptr %.sroa.4.0..sroa_idx48.i, align 8, !alias.scope !71355, !noalias !71356
  store ptr inttoptr (i64 128 to ptr), ptr %.sroa.5.0..sroa_idx49.i, align 8, !alias.scope !71355, !noalias !71356
  store i64 0, ptr %.sroa.6.0..sroa_idx50.i, align 8, !alias.scope !71355, !noalias !71356
  store i64 0, ptr %i.cl, align 8, !alias.scope !71355, !noalias !71356
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !71357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !71357
  store i64 1, ptr %i.a, align 8, !noalias !71357
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.cn, align 8, !noalias !71357
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.5.0.copyload.i.i, ptr %i.co, align 8, !noalias !71357
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.6.0.copyload.i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !71357
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !71357
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !71357
  %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !71357
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !71358
  %i.cp = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !71358 ; 3 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.q, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i.i, !prof !77

bb.q:                                             ; preds = %._crit_edge.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #66
          to label %.noexc.i.i unwind label %bb.r, !noalias !71357

.noexc.i.i:                                       ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #67
          to label %.body.i39 unwind label %bb.s, !noalias !71357

bb.s:                                             ; preds = %bb.r
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !71357
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cp, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !71357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !71357
  store ptr %i.cp, ptr %i.b, align 8, !noalias !71357
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.0.copyload.i.i, ptr %i.ct, align 8, !noalias !71357
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.6.0.copyload.i.i, ptr %i.cu, align 8, !noalias !71357
  invoke void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %i.cm)
          to label %bb.u unwind label %.loopexit.split-lp.i, !noalias !71352

bb.t:                                             ; preds = %bb.af
  %.not15.i = icmp eq i64 %i.dm, 0
  br i1 %.not15.i, label %._crit_edge, label %bb.z, !prof !184

.body.i39:                                        ; preds = %bb.ai, %bb.ah, %.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i, %.loopexit.loopexit.i, %bb.r
  %.pn18.i = phi { ptr, i32 } [ %i.cr, %bb.r ], [ %.pn.i, %bb.ah ], [ %.pn.i, %bb.ai ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit53.i, %.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp54.i, %.loopexit.loopexit.split-lp.i ]
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %bb.ax unwind label %bb.ap, !noalias !71352

.loopexit.loopexit.i:                             ; preds = %bb.ae, %bb.ab
  %lpad.loopexit53.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i39

.loopexit.loopexit.split-lp.i:                    ; preds = %bb.ao, %bb.ac
  %lpad.loopexit.split-lp54.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i39

.loopexit.split-lp.i:                             ; preds = %._crit_edge, %bb.x, %bb.u, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i39

bb.u:                                             ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !71357
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.v unwind label %.loopexit.split-lp.i, !noalias !71352

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !71352
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.cw = load i64, ptr %i.cv, align 8, !noalias !71352, !noundef !75
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !71359)
  call void @llvm.experimental.noalias.scope.decl(metadata !71360)
  call void @llvm.experimental.noalias.scope.decl(metadata !71361)
  call void @llvm.experimental.noalias.scope.decl(metadata !71362)
  call void @llvm.experimental.noalias.scope.decl(metadata !71363)
  %i.cy = load ptr, ptr %i.d, align 8, !alias.scope !71364, !noalias !71352, !nonnull !75, !noundef !75
  %i.cz = atomicrmw sub ptr %i.cy, i64 1 release, align 8, !noalias !71365
  %i.da = icmp eq i64 %i.cz, 1
  br i1 %i.da, label %bb.x, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit.i unwind label %.loopexit.split-lp.i, !noalias !71352

bb.y:                                             ; preds = %bb.v
  %.sroa.8.8.copyload50 = load ptr, ptr %i.d, align 8, !noalias !71351
  %.sroa.11.8..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.8..sroa_idx51, i64 40, i1 false), !noalias !71351
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.y, %bb.x, %bb.w
  %.sroa.8.0 = phi ptr [ null, %bb.x ], [ null, %bb.w ], [ %.sroa.8.8.copyload50, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !71352
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %bb.ar unwind label %bb.aq

._crit_edge:                                      ; preds = %bb.t, %.lr.ph.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1511) #66
          to label %bb.aa unwind label %.loopexit.split-lp.i, !noalias !71352

bb.z:                                             ; preds = %.lr.ph, %bb.t
  %.sroa.0.029.i135 = phi i64 [ %2, %.lr.ph ], [ %i.dj, %bb.t ] ; 5 uses
  %i.db = phi i64 [ %.promoted.i, %.lr.ph ], [ %i.dm, %bb.t ]
  %i.dc = phi i64 [ %.promoted30.i, %.lr.ph ], [ %.sroa.0.0.i.i41, %bb.t ] ; 4 uses
  %.not16.i = icmp ult i64 %i.dc, %i.ci
  %i.dd = select i1 %.not16.i, i64 0, i64 %i.ci
  %.sroa.011.0.i = sub nuw i64 %i.dc, %i.dd
  %i.de = getelementptr inbounds nuw [40 x i8], ptr %i.ck, i64 %.sroa.011.0.i ; 8 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32 ; 3 uses
  %i.dg = load i64, ptr %i.df, align 8, !noalias !71352, !noundef !75
  %i.dh = icmp ult i64 %.sroa.0.029.i135, %i.dg
  br i1 %i.dh, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge
end_hunk_4
begin_hunk_5_@_RNvXs4_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB5_35PackedStructVariablePerValueEncoderNtNtNtNtB9_7logical9primitive7fullzip18PerValueCompressor8compress:bb.a
  %i.az = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ay, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !77872 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.n, label %bb.p

bb.l:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockEEEB3k_.exit, %bb.m
  %.sroa.085.2 = phi i1 [ %.sroa.085.3, %bb.m ], [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockEEEB3k_.exit ]
  %.pn152 = phi { ptr, i32 } [ %i.bb, %bb.m ], [ %.pn150, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockEEEB3k_.exit ] ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packed23VariablePackedFieldDataEEB1g_(ptr noalias noundef align 8 dereferenceable(24) %i.ac) #67
          to label %bb.f unwind label %bb.aq

bb.m:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit, %bb.n
  %.sroa.085.3 = phi i1 [ true, %bb.n ], [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit ]
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %bb.k
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ay) #66
          to label %bb.g unwind label %bb.m

bb.o:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive7fullzip18PerValueCompressorEL_EEB1l_.exit, %._crit_edge
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockEEEB3k_.exit

bb.p:                                             ; preds = %bb.k, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread
  %i.bd = phi ptr [ %i.at, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread ], [ %i.ax, %bb.k ] ; 2 uses
  %i.be = phi ptr [ %i.as, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread ], [ %i.aw, %bb.k ] ; 2 uses
  %i.bf = phi ptr [ inttoptr (i64 8 to ptr), %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread ], [ %i.au, %bb.k ] ; 3 uses
  %.sroa.10280.0 = phi ptr [ inttoptr (i64 8 to ptr), %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.thread ], [ %i.az, %bb.k ] ; 3 uses
  store i64 %i.ag, ptr %i.ab, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  store ptr %.sroa.10280.0, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  store i64 0, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !75, !noundef !75 ; 3 uses
  %.idx = mul nuw nsw i64 %i.ag, 192
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx ; 3 uses
  %.sroa.0258.0.copyload = load i64, ptr %i.ae, align 8
  %.sroa.4259.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !75, !noundef !75 ; 4 uses
  %.sroa.5260.0.copyload = load i64, ptr %i.am, align 8 ; 2 uses
  %i.bl = icmp ult i64 %.sroa.5260.0.copyload, 115292150460684698
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw [80 x i8], ptr %.sroa.4259.0.copyload, i64 %.sroa.5260.0.copyload ; 3 uses
  %.sroa.7257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7257.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.2253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.bk, ptr %.sroa.2253.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 4 uses
  store ptr %.sroa.4259.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 10 uses
  %.sroa.5255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i64 %.sroa.0258.0.copyload, ptr %.sroa.5255.0..sroa_idx, align 8
  %.sroa.6256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr %i.bm, ptr %.sroa.6256.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  br i1 %i.ar, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !75
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !75, !align !95 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.bw = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %.sroa.4282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.ca = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %.sroa.4284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive7fullzip18PerValueCompressorEL_EEB1l_.exit223
  %i.cf = phi ptr [ %i.bf, %.lr.ph ], [ %i.ml, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive7fullzip18PerValueCompressorEL_EEB1l_.exit223 ] ; 4 uses
  %i.cg = phi ptr [ %.sroa.10280.0, %.lr.ph ], [ %i.mm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive7fullzip18PerValueCompressorEL_EEB1l_.exit223 ] ; 2 uses
  %i.ch = phi ptr [ %i.bf, %.lr.ph ], [ %i.mn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive7fullzip18PerValueCompressorEL_EEB1l_.exit223 ]
  %i.ci = phi i64 [ 0, %.lr.ph ], [ %i.mo, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive7fullzip18PerValueCompressorEL_EEB1l_.exit223 ] ; 8 uses
  %i.cj = phi ptr [ %.sroa.10280.0, %.lr.ph ], [ %i.mp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive7fullzip18PerValueCompressorEL_EEB1l_.exit223 ]
  %i.ck = phi i64 [ 0, %.lr.ph ], [ %i.mq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive7fullzip18PerValueCompressorEL_EEB1l_.exit223 ] ; 6 uses
  %i.cl = phi ptr [ %i.bj, %.lr.ph ], [ %i.cn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive7fullzip18PerValueCompressorEL_EEB1l_.exit223 ] ; 2 uses
  %i.cm = phi ptr [ %.sroa.4259.0.copyload, %.lr.ph ], [ %i.cp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive7fullzip18PerValueCompressorEL_EEB1l_.exit223 ] ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 192 ; 13 uses
  %i.co = icmp eq ptr %i.cm, %i.bm
  br i1 %i.co, label %._crit_edge, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB10_.exit.i

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB10_.exit.i: ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 80 ; 12 uses
  %.sroa.0.0.copyload7.i = load i64, ptr %i.cm, align 8, !noalias !77873 ; 2 uses
  %.not6.i = icmp eq i64 %.sroa.0.0.copyload7.i, -1
  br i1 %.not6.i, label %._crit_edge, label %bb.s

.thread324:                                       ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.de, %bb.cy, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i217, %bb.dy, %bb.es, %bb.r
  %.pn148 = phi { ptr, i32 } [ %i.cq, %bb.r ], [ %i.oh, %bb.es ], [ %.pn143.pn, %bb.cy ], [ %i.mx, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i217 ], [ %i.mx, %bb.dy ], [ %i.lj, %bb.de ], [ %i.lj, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockEEB1t_(ptr noalias noundef readonly align 8 dereferenceable(32) %.sroa.3.0..sroa_idx)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockEEEB3k_.exit unwind label %bb.aq

bb.r:                                             ; preds = %bb.cw
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.thread324

bb.s:                                             ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB10_.exit.i
  %.sroa.7.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..sroa_idx8.i, i64 72, i1 false), !noalias !77874
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i64 %.sroa.0.0.copyload7.i, ptr %i.z, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.11.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.11, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.cr = load i64, ptr %i.br, align 8, !range !93, !invariant.load !75
  %i.cs = add nsw i64 %i.cr, -1
  %i.ct = and i64 %i.cs, -16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.bs, align 8, !invariant.load !75, !nonnull !75
  invoke void %i.cw(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.y, ptr noundef nonnull %i.cv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.cl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.z)
          to label %bb.cv unwind label %bb.es

._crit_edge:                                      ; preds = %bb.q, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB10_.exit.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive7fullzip18PerValueCompressorEL_EEB1l_.exit223, %bb.p
  %i.cx = phi i64 [ 0, %bb.p ], [ %i.ci, %bb.q ], [ %i.ci, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB10_.exit.i ], [ %i.mo, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive7fullzip18PerValueCompressorEL_EEB1l_.exit223 ] ; 2 uses
  %i.cy = phi ptr [ %i.bf, %bb.p ], [ %i.cf, %bb.q ], [ %i.cf, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB10_.exit.i ], [ %i.ml, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive7fullzip18PerValueCompressorEL_EEB1l_.exit223 ] ; 2 uses
  %i.cz = phi ptr [ %.sroa.4259.0.copyload, %bb.p ], [ %i.bm, %bb.q ], [ %i.cp, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB10_.exit.i ], [ %i.cp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive7fullzip18PerValueCompressorEL_EEB1l_.exit223 ]
  %i.da = phi ptr [ %i.bj, %bb.p ], [ %i.cn, %bb.q ], [ %i.cn, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB10_.exit.i ], [ %i.bk, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive7fullzip18PerValueCompressorEL_EEB1l_.exit223 ]
  store ptr %i.da, ptr %i.aa, align 8
  store ptr %i.cz, ptr %.sroa.4254.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockEEB1t_(ptr noalias noundef readonly align 8 dereferenceable(32) %.sroa.3.0..sroa_idx)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockEEEB3k_.exit167 unwind label %bb.o

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockEEEB3k_.exit167: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store i64 0, ptr %i.i, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 7 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 12 uses
  store i64 0, ptr %i.dc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.dd = add i64 %i.ap, 1                        ; 4 uses
  %i.de = shl i64 %i.dd, 3                        ; 4 uses
  %i.df = icmp ugt i64 %i.dd, 2305843009213693951
  %.not.i168 = icmp ugt i64 %i.de, 9223372036854775800
  %or.cond.i169 = or i1 %i.df, %.not.i168
  br i1 %or.cond.i169, label %bb.v, label %bb.t, !prof !80

bb.t:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockEEEB3k_.exit167
  %i.dg = icmp eq i64 %i.de, 0
  br i1 %i.dg, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit171.thread316, label %bb.u

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit171.thread316: ; preds = %bb.t
  %i.dh = icmp eq i64 %i.dd, 0
  call void @llvm.assume(i1 %i.dh)
  store i64 0, ptr %i.o, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i64 0, ptr %i.dj, align 8
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs5GHimaBI8WD_10num_bigint(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit171.thread316._RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit171.thread316._RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit_crit_edge: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit171.thread316
  %.pre550 = load ptr, ptr %i.di, align 8, !alias.scope !77875
  br label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit

bb.u:                                             ; preds = %bb.t
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !77876
  %i.dk = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.de, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !77876 ; 3 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.v, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit171

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit200: ; preds = %.body.thread, %.body
  %.sroa.078.0 = phi i1 [ %.sroa.078.2, %.body ], [ %.sroa.078.2343, %.body.thread ]
  %.pn139 = phi { ptr, i32 } [ %.pn137, %.body ], [ %.pn137344, %.body.thread ] ; 2 uses
  br i1 %.sroa.078.0, label %bb.ct, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockEEEB3k_.exit

.thread607:                                       ; preds = %bb.v
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockEEEB3k_.exit

bb.v:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockEEEB3k_.exit167, %bb.u
  %.sroa.4286.0.ph = phi i64 [ 8, %bb.u ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockEEEB3k_.exit167 ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4286.0.ph, i64 %i.de) #66
          to label %bb.g unwind label %.thread607

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit171: ; preds = %bb.u
  store i64 %i.dd, ptr %i.o, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.dk, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  br label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit171.thread316._RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit_crit_edge, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit171
  %i.dp = phi ptr [ %i.dk, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit171 ], [ %.pre550, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit171.thread316._RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit_crit_edge ]
  %i.dq = phi ptr [ %i.do, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit171 ], [ %i.dj, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit171.thread316._RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit_crit_edge ] ; 3 uses
  %i.dr = phi ptr [ %i.dn, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit171 ], [ %i.di, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit171.thread316._RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit_crit_edge ] ; 18 uses
  store i64 0, ptr %i.dp, align 8
  store i64 1, ptr %i.dq, align 8
  %.not467 = icmp eq i64 %i.ap, 0
  br i1 %.not467, label %.thread605, label %.lr.ph463

.thread605:                                       ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  br label %bb.y

.lr.ph463:                                        ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.idx468 = mul nuw nsw i64 %i.cx, 80
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx468
  %i.dx = icmp eq i64 %i.cx, 0
  br label %bb.w

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.as, %bb.at, %bb.ar, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit
  %i.dy = phi ptr [ %i.dr, %bb.as ], [ %i.dr, %bb.ar ], [ %i.dr, %bb.at ], [ %i.dr, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit ], [ %.ph.ph, %.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.074.0 = phi i8 [ %.sroa.074.2, %bb.as ], [ %.sroa.074.2, %bb.ar ], [ %.sroa.074.2, %bb.at ], [ %.sroa.074.2, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit ], [ %.sroa.074.1.ph.ph, %.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.078.2 = phi i1 [ false, %bb.as ], [ false, %bb.ar ], [ false, %bb.at ], [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit ], [ true, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.pn137 = phi { ptr, i32 } [ %i.fh, %bb.as ], [ %i.eh, %bb.ar ], [ %i.fh, %bb.at ], [ %i.eh, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit ], [ %lpad.loopexit.split-lp356, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.dz = trunc nuw i8 %.sroa.074.0 to i1
  br i1 %i.dz, label %.body.thread, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit200

.loopexit:                                        ; preds = %.invoke, %bb.av, %bb.ay, %bb.az, %bb.bn, %bb.bq, %bb.cf, %bb.ci
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.loopexit.split-lp.loopexit:                      ; preds = %bb.cp
  %lpad.loopexit355 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit171.thread316, %bb.cq, %bb.ab, %bb.y, %bb.x
  %.ph.ph = phi ptr [ %i.dr, %bb.cq ], [ %i.dr, %bb.x ], [ %i.di, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit171.thread316 ], [ %i.dr, %bb.ab ], [ %i.dr, %bb.y ]
  %.sroa.074.1.ph.ph = phi i8 [ 1, %bb.cq ], [ 0, %bb.x ], [ 1, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit171.thread316 ], [ 1, %bb.ab ], [ 1, %bb.y ]
  %lpad.loopexit.split-lp356 = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge464:                                   ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ea = or i64 %i.kf, %.sroa.0.0.i
  %brmerge.not = icmp ult i64 %i.ea, 4294967296
  br i1 %brmerge.not, label %bb.y, label %bb.x

bb.w:                                             ; preds = %.lr.ph463, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit195
  %i.eb = phi i64 [ 0, %.lr.ph463 ], [ %i.kc, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit195 ] ; 2 uses
  %.sroa.0107.0462 = phi i64 [ 0, %.lr.ph463 ], [ %i.ec, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit195 ] ; 8 uses
  %.sroa.026.0461 = phi i64 [ 0, %.lr.ph463 ], [ %.sroa.0.0.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit195 ]
  %.sroa.052.0460 = phi i64 [ 0, %.lr.ph463 ], [ %i.kf, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit195 ] ; 2 uses
  %i.ec = add nuw i64 %.sroa.0107.0462, 1         ; 8 uses
  br i1 %i.dx, label %._crit_edge459, label %.lr.ph458

bb.x:                                             ; preds = %._crit_edge464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  invoke fastcc void @_RINvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB3_11LanceBuffer15reinterpret_vecyEB5_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %._crit_edge464, %.thread605
  %i.ed = phi i64 [ 1, %.thread605 ], [ %i.km, %._crit_edge464 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ee = load ptr, ptr %i.dr, align 8, !nonnull !75, !noundef !75 ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ed
  invoke fastcc void @_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs4_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_35PackedStructVariablePerValueEncoderNtNtNtNtB2Z_7logical9primitive7fullzip18PerValueCompressor8compresss_0EE9from_iterB31_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull %i.ee, ptr noundef %i.ef)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %bb.z
  %.sroa.074.2 = phi i8 [ 1, %bb.ac ], [ 0, %bb.z ] ; 5 uses
  %.sroa.057.2 = phi i8 [ 32, %bb.ac ], [ 64, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvXs1_NtCsjjpCCFGI3ul_14lance_encoding6bufferNtB5_11LanceBufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
          to label %bb.ad unwind label %bb.as

bb.ab:                                            ; preds = %bb.y
  invoke fastcc void @_RINvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB3_11LanceBuffer15reinterpret_vecmEB5_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.aa

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.eg = invoke noundef nonnull ptr @_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB5_9BlockInfo3new()
          to label %bb.ag unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77877)
  call void @llvm.experimental.noalias.scope.decl(metadata !77878)
  call void @llvm.experimental.noalias.scope.decl(metadata !77879)
  call void @llvm.experimental.noalias.scope.decl(metadata !77880)
  %i.ei = load ptr, ptr %i.h, align 8, !alias.scope !77881, !nonnull !75, !noundef !75
  %i.ej = atomicrmw sub ptr %i.ei, i64 1 release, align 8, !noalias !77881
  %i.ek = icmp eq i64 %i.ej, 1
  br i1 %i.ek, label %bb.af, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit unwind label %bb.aq

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.058, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %.sroa.058.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.058, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.058.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.873.sroa.4.0..sroa.873.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.873.sroa.4.0..sroa.873.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.058, i64 48, i1 false)
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.eg, ptr %.sroa.469.0..sroa_idx, align 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ap, ptr %.sroa.570.0..sroa_idx, align 8
  %.sroa.671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %.sroa.057.2, ptr %.sroa.671.0..sroa_idx, align 8
  %.sroa.873.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 12, ptr %.sroa.873.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.el = trunc nuw i8 %.sroa.074.2 to i1
  br i1 %i.el, label %bb.ah, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.ai, %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packed23VariablePackedFieldDataEEB1g_(ptr noalias noundef align 8 dereferenceable(24) %i.ac)
          to label %bb.aj unwind label %.split

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !77882)
  %.val.i = load i64, ptr %i.o, align 8, !alias.scope !77882 ; 2 uses
  %i.em = icmp eq i64 %.val.i, 0
  br i1 %i.em, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.val1.i = load ptr, ptr %i.dr, align 8, !alias.scope !77882, !nonnull !75, !noundef !75
  %i.en = shl nuw i64 %.val.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.en, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !77882
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit

bb.aj:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77883)
  call void @llvm.experimental.noalias.scope.decl(metadata !77884)
  call void @llvm.experimental.noalias.scope.decl(metadata !77885)
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !77886, !nonnull !75, !noundef !75
  %i.eq = atomicrmw sub ptr %i.ep, i64 1 release, align 8, !noalias !77886
  %i.er = icmp eq i64 %i.eq, 1
  br i1 %i.er, label %bb.ak, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9BlockInfoEBF_.exit

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.eo)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9BlockInfoEBF_.exit unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77887)
  %i.eu = load ptr, ptr %i.et, align 8, !alias.scope !77887, !noundef !75 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsjjpCCFGI3ul_14lance_encoding.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ew = atomicrmw sub ptr %i.eu, i64 1 release, align 8, !noalias !77888
  %i.ex = icmp eq i64 %i.ew, 1
  br i1 %i.ex, label %bb.an, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsjjpCCFGI3ul_14lance_encoding.exit

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.et)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsjjpCCFGI3ul_14lance_encoding.exit unwind label %bb.aq

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9BlockInfoEBF_.exit: ; preds = %bb.aj, %bb.ak
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77889)
  %i.ez = load ptr, ptr %i.ey, align 8, !alias.scope !77889, !noundef !75 ; 2 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsjjpCCFGI3ul_14lance_encoding.exit233, label %bb.ao
end_hunk_5
begin_hunk_6_@llvm.umax.i128
!24733 = !{!24730, !24728, !24726}
!24734 = distinct !{!24734, i1 false, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding"}
!24735 = distinct !{!24735, !24734, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24736 = distinct !{!24736, i1 false, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding"}
!24737 = distinct !{!24737, !24736, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24738 = distinct !{!24738, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding"}
!24739 = distinct !{!24739, !24738, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24740 = distinct !{!24740, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjjpCCFGI3ul_14lance_encoding"}
!24741 = distinct !{!24741, !24740, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24742 = distinct !{!24742, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding"}
!24743 = distinct !{!24743, !24742, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24744 = !{!24735}
!24745 = !{!24737}
!24746 = !{!24743, !24741, !24739}
!24747 = distinct !{!24747, i1 false, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding"}
!24748 = distinct !{!24748, !24747, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24749 = distinct !{!24749, i1 false, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding"}
!24750 = distinct !{!24750, !24749, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24751 = distinct !{!24751, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding"}
!24752 = distinct !{!24752, !24751, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24753 = distinct !{!24753, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjjpCCFGI3ul_14lance_encoding"}
!24754 = distinct !{!24754, !24753, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24755 = distinct !{!24755, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding"}
!24756 = distinct !{!24756, !24755, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24757 = !{!24748}
!24758 = !{!24750}
!24759 = !{!24756, !24754, !24752}
!24760 = distinct !{!24760, i1 false, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding"}
!24761 = distinct !{!24761, !24760, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24762 = distinct !{!24762, i1 false, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding"}
!24763 = distinct !{!24763, !24762, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24764 = distinct !{!24764, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding"}
!24765 = distinct !{!24765, !24764, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24766 = distinct !{!24766, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjjpCCFGI3ul_14lance_encoding"}
!24767 = distinct !{!24767, !24766, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24768 = distinct !{!24768, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding"}
!24769 = distinct !{!24769, !24768, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24770 = !{!24761}
!24771 = !{!24763}
!24772 = !{!24769, !24767, !24765}
!24773 = distinct !{!24773, i1 false, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding"}
!24774 = distinct !{!24774, !24773, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24775 = distinct !{!24775, i1 false, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding"}
!24776 = distinct !{!24776, !24775, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24777 = distinct !{!24777, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding"}
!24778 = distinct !{!24778, !24777, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24779 = distinct !{!24779, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjjpCCFGI3ul_14lance_encoding"}
!24780 = distinct !{!24780, !24779, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24781 = distinct !{!24781, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding"}
!24782 = distinct !{!24782, !24781, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24783 = !{!24774}
!24784 = !{!24776}
!24785 = !{!24782, !24780, !24778}
!24786 = distinct !{!24786, i1 false, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding"}
!24787 = distinct !{!24787, !24786, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24788 = distinct !{!24788, i1 false, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding"}
!24789 = distinct !{!24789, !24788, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24790 = distinct !{!24790, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding"}
!24791 = distinct !{!24791, !24790, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24792 = distinct !{!24792, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjjpCCFGI3ul_14lance_encoding"}
!24793 = distinct !{!24793, !24792, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24794 = distinct !{!24794, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding"}
!24795 = distinct !{!24795, !24794, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24796 = !{!24787}
!24797 = !{!24789}
!24798 = !{!24795, !24793, !24791}
!24799 = distinct !{!24799, i1 false, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding"}
!24800 = distinct !{!24800, !24799, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24801 = distinct !{!24801, i1 false, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding"}
!24802 = distinct !{!24802, !24801, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24803 = distinct !{!24803, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding"}
!24804 = distinct !{!24804, !24803, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24805 = distinct !{!24805, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjjpCCFGI3ul_14lance_encoding"}
!24806 = distinct !{!24806, !24805, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24807 = distinct !{!24807, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding"}
!24808 = distinct !{!24808, !24807, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24809 = !{!24800}
!24810 = !{!24802}
!24811 = !{!24808, !24806, !24804}
!24812 = distinct !{!24812, i1 false, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding"}
!24813 = distinct !{!24813, !24812, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24814 = distinct !{!24814, i1 false, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding"}
!24815 = distinct !{!24815, !24814, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24816 = distinct !{!24816, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding"}
!24817 = distinct !{!24817, !24816, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24818 = distinct !{!24818, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjjpCCFGI3ul_14lance_encoding"}
!24819 = distinct !{!24819, !24818, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24820 = distinct !{!24820, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding"}
!24821 = distinct !{!24821, !24820, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24822 = !{!24813}
!24823 = !{!24815}
!24824 = !{!24821, !24819, !24817}
!24825 = distinct !{!24825, i1 false, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding"}
!24826 = distinct !{!24826, !24825, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24827 = distinct !{!24827, i1 false, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding"}
!24828 = distinct !{!24828, !24827, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24829 = distinct !{!24829, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding"}
!24830 = distinct !{!24830, !24829, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24831 = distinct !{!24831, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjjpCCFGI3ul_14lance_encoding"}
!24832 = distinct !{!24832, !24831, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24833 = distinct !{!24833, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding"}
!24834 = distinct !{!24834, !24833, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24835 = !{!24826}
!24836 = !{!24828}
!24837 = !{!24834, !24832, !24830}
!24838 = distinct !{!24838, i1 false, !"_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct10ChildStateENCNCNvMsf_B1A_NtB1A_19SimpleStructDecoder18do_wait_for_loaded00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtNtCs40k4W9msRzi_5alloc11collections11binary_heap10BinaryHeapNtB1A_9WaitOrderEEB1G_"}
!24839 = distinct !{!24839, !24838, !"_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct10ChildStateENCNCNvMsf_B1A_NtB1A_19SimpleStructDecoder18do_wait_for_loaded00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtNtCs40k4W9msRzi_5alloc11collections11binary_heap10BinaryHeapNtB1A_9WaitOrderEEB1G_: argument 0"}
!24840 = distinct !{!24840, i1 false, !"_RINvXsO_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB6_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorB1c_E9from_iterINtNtNtB2B_8adapters10filter_map9FilterMapINtNtNtB2D_5slice4iter7IterMutNtB1e_10ChildStateENCNCNvMsf_B1e_NtB1e_19SimpleStructDecoder18do_wait_for_loaded00EEB1k_"}
!24841 = distinct !{!24841, !24840, !"_RINvXsO_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB6_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorB1c_E9from_iterINtNtNtB2B_8adapters10filter_map9FilterMapINtNtNtB2D_5slice4iter7IterMutNtB1e_10ChildStateENCNCNvMsf_B1e_NtB1e_19SimpleStructDecoder18do_wait_for_loaded00EEB1k_: argument 0"}
!24842 = distinct !{!24842, !24838, !"_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct10ChildStateENCNCNvMsf_B1A_NtB1A_19SimpleStructDecoder18do_wait_for_loaded00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtNtCs40k4W9msRzi_5alloc11collections11binary_heap10BinaryHeapNtB1A_9WaitOrderEEB1G_: argument 1"}
!24843 = distinct !{!24843, !24840, !"_RINvXsO_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB6_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorB1c_E9from_iterINtNtNtB2B_8adapters10filter_map9FilterMapINtNtNtB2D_5slice4iter7IterMutNtB1e_10ChildStateENCNCNvMsf_B1e_NtB1e_19SimpleStructDecoder18do_wait_for_loaded00EEB1k_: argument 1"}
!24844 = distinct !{!24844, i1 false, !"_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct10ChildStateENCNCNvMsf_B1A_NtB1A_19SimpleStructDecoder18do_wait_for_loaded00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecNtB1A_9WaitOrderEEB1G_"}
!24845 = distinct !{!24845, !24844, !"_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct10ChildStateENCNCNvMsf_B1A_NtB1A_19SimpleStructDecoder18do_wait_for_loaded00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecNtB1A_9WaitOrderEEB1G_: argument 1"}
!24846 = distinct !{!24846, !24844, !"_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct10ChildStateENCNCNvMsf_B1A_NtB1A_19SimpleStructDecoder18do_wait_for_loaded00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecNtB1A_9WaitOrderEEB1G_: argument 0"}
!24847 = distinct !{!24847, i1 false, !"_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB25_8adapters10filter_map9FilterMapINtNtNtB27_5slice4iter7IterMutNtBI_10ChildStateENCNCNvMsf_BI_NtBI_19SimpleStructDecoder18do_wait_for_loaded00EEBO_"}
!24848 = distinct !{!24848, !24847, !"_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB25_8adapters10filter_map9FilterMapINtNtNtB27_5slice4iter7IterMutNtBI_10ChildStateENCNCNvMsf_BI_NtBI_19SimpleStructDecoder18do_wait_for_loaded00EEBO_: argument 1"}
!24849 = distinct !{!24849, !24847, !"_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB25_8adapters10filter_map9FilterMapINtNtNtB27_5slice4iter7IterMutNtBI_10ChildStateENCNCNvMsf_BI_NtBI_19SimpleStructDecoder18do_wait_for_loaded00EEBO_: argument 0"}
!24850 = distinct !{!24850, i1 false, !"_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEINtB2_12SpecFromIterBU_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB2I_5slice4iter7IterMutNtBW_10ChildStateENCNCNvMsf_BW_NtBW_19SimpleStructDecoder18do_wait_for_loaded00EE9from_iterB12_"}
!24851 = distinct !{!24851, !24850, !"_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEINtB2_12SpecFromIterBU_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB2I_5slice4iter7IterMutNtBW_10ChildStateENCNCNvMsf_BW_NtBW_19SimpleStructDecoder18do_wait_for_loaded00EE9from_iterB12_: argument 1"}
!24852 = distinct !{!24852, !24850, !"_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEINtB2_12SpecFromIterBU_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB2I_5slice4iter7IterMutNtBW_10ChildStateENCNCNvMsf_BW_NtBW_19SimpleStructDecoder18do_wait_for_loaded00EE9from_iterB12_: argument 0"}
!24853 = distinct !{!24853, i1 false, !"_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB2W_5slice4iter7IterMutNtB13_10ChildStateENCNCNvMsf_B13_NtB13_19SimpleStructDecoder18do_wait_for_loaded00EE9from_iterB19_"}
!24854 = distinct !{!24854, !24853, !"_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB2W_5slice4iter7IterMutNtB13_10ChildStateENCNCNvMsf_B13_NtB13_19SimpleStructDecoder18do_wait_for_loaded00EE9from_iterB19_: argument 1"}
!24855 = distinct !{!24855, !24853, !"_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB2W_5slice4iter7IterMutNtB13_10ChildStateENCNCNvMsf_B13_NtB13_19SimpleStructDecoder18do_wait_for_loaded00EE9from_iterB19_: argument 0"}
!24856 = distinct !{!24856, i1 false, !"_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMsf_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6structNtBY_19SimpleStructDecoder18do_wait_for_loaded00INtB7_5FnMutTQNtBY_10ChildStateEE8call_mutB14_"}
!24857 = distinct !{!24857, !24856, !"_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMsf_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6structNtBY_19SimpleStructDecoder18do_wait_for_loaded00INtB7_5FnMutTQNtBY_10ChildStateEE8call_mutB14_: argument 0"}
!24858 = distinct !{!24858, i1 false, !"_RNCNCNvMsf_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6structNtB9_19SimpleStructDecoder18do_wait_for_loaded00Bf_"}
!24859 = distinct !{!24859, !24858, !"_RNCNCNvMsf_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6structNtB9_19SimpleStructDecoder18do_wait_for_loaded00Bf_: argument 0"}
!24860 = distinct !{!24860, i1 false, !"_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct10ChildStateENCNCNvMsf_B1F_NtB1F_19SimpleStructDecoder18do_wait_for_loaded00ENtNtNtB9_6traits8iterator8Iterator4nextB1L_"}
!24861 = distinct !{!24861, !24860, !"_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct10ChildStateENCNCNvMsf_B1F_NtB1F_19SimpleStructDecoder18do_wait_for_loaded00ENtNtNtB9_6traits8iterator8Iterator4nextB1L_: argument 0"}
!24862 = distinct !{!24862, i1 false, !"_RINvXs2Q_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct10ChildStateENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtBV_9WaitOrderQNCNCNvMsf_BV_NtBV_19SimpleStructDecoder18do_wait_for_loaded00EB11_"}
!24863 = distinct !{!24863, !24862, !"_RINvXs2Q_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct10ChildStateENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtBV_9WaitOrderQNCNCNvMsf_BV_NtBV_19SimpleStructDecoder18do_wait_for_loaded00EB11_: argument 1"}
!24864 = distinct !{!24864, !24862, !"_RINvXs2Q_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct10ChildStateENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtBV_9WaitOrderQNCNCNvMsf_BV_NtBV_19SimpleStructDecoder18do_wait_for_loaded00EB11_: argument 0"}
!24865 = distinct !{!24865, i1 false, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding"}
!24866 = distinct !{!24866, !24865, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24867 = distinct !{!24867, i1 false, !"_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB2D_5slice4iter7IterMutNtBT_10ChildStateENCNCNvMsf_BT_NtBT_19SimpleStructDecoder18do_wait_for_loaded00EE11spec_extendBZ_"}
!24868 = distinct !{!24868, !24867, !"_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB2D_5slice4iter7IterMutNtBT_10ChildStateENCNCNvMsf_BT_NtBT_19SimpleStructDecoder18do_wait_for_loaded00EE11spec_extendBZ_: argument 0"}
!24869 = distinct !{!24869, i1 false, !"_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB2p_5slice4iter7IterMutNtBI_10ChildStateENCNCNvMsf_BI_NtBI_19SimpleStructDecoder18do_wait_for_loaded00EEBO_"}
!24870 = distinct !{!24870, !24869, !"_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB2p_5slice4iter7IterMutNtBI_10ChildStateENCNCNvMsf_BI_NtBI_19SimpleStructDecoder18do_wait_for_loaded00EEBO_: argument 0"}
!24871 = distinct !{!24871, i1 false, !"_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMsf_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6structNtBY_19SimpleStructDecoder18do_wait_for_loaded00INtB7_5FnMutTQNtBY_10ChildStateEE8call_mutB14_"}
!24872 = distinct !{!24872, !24871, !"_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMsf_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6structNtBY_19SimpleStructDecoder18do_wait_for_loaded00INtB7_5FnMutTQNtBY_10ChildStateEE8call_mutB14_: argument 0"}
!24873 = distinct !{!24873, i1 false, !"_RNCNCNvMsf_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6structNtB9_19SimpleStructDecoder18do_wait_for_loaded00Bf_"}
!24874 = distinct !{!24874, !24873, !"_RNCNCNvMsf_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6structNtB9_19SimpleStructDecoder18do_wait_for_loaded00Bf_: argument 0"}
!24875 = distinct !{!24875, !24867, !"_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB2D_5slice4iter7IterMutNtBT_10ChildStateENCNCNvMsf_BT_NtBT_19SimpleStructDecoder18do_wait_for_loaded00EE11spec_extendBZ_: argument 1"}
!24876 = distinct !{!24876, !24869, !"_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB2p_5slice4iter7IterMutNtBI_10ChildStateENCNCNvMsf_BI_NtBI_19SimpleStructDecoder18do_wait_for_loaded00EEBO_: argument 1"}
!24877 = distinct !{!24877, i1 false, !"_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct10ChildStateENCNCNvMsf_B1F_NtB1F_19SimpleStructDecoder18do_wait_for_loaded00ENtNtNtB9_6traits8iterator8Iterator4nextB1L_"}
!24878 = distinct !{!24878, !24877, !"_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct10ChildStateENCNCNvMsf_B1F_NtB1F_19SimpleStructDecoder18do_wait_for_loaded00ENtNtNtB9_6traits8iterator8Iterator4nextB1L_: argument 0"}
!24879 = distinct !{!24879, i1 false, !"_RINvXs2Q_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct10ChildStateENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtBV_9WaitOrderQNCNCNvMsf_BV_NtBV_19SimpleStructDecoder18do_wait_for_loaded00EB11_"}
!24880 = distinct !{!24880, !24879, !"_RINvXs2Q_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct10ChildStateENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtBV_9WaitOrderQNCNCNvMsf_BV_NtBV_19SimpleStructDecoder18do_wait_for_loaded00EB11_: argument 1"}
!24881 = distinct !{!24881, !24879, !"_RINvXs2Q_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct10ChildStateENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtBV_9WaitOrderQNCNCNvMsf_BV_NtBV_19SimpleStructDecoder18do_wait_for_loaded00EB11_: argument 0"}
!24882 = distinct !{!24882, i1 false, !"_RNvXsL_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtB9_3vec3VecB1b_EE4fromB1j_"}
!24883 = distinct !{!24883, !24882, !"_RNvXsL_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtB9_3vec3VecB1b_EE4fromB1j_: argument 0"}
!24884 = distinct !{!24884, !24882, !"_RNvXsL_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtB9_3vec3VecB1b_EE4fromB1j_: argument 1"}
!24885 = distinct !{!24885, i1 false, !"_RNCNvMsa_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6structNtB7_10ChildState15wait_for_loaded0Bd_"}
!24886 = distinct !{!24886, !24885, !"_RNCNvMsa_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6structNtB7_10ChildState15wait_for_loaded0Bd_: argument 1"}
!24887 = distinct !{!24887, !24885, !"_RNCNvMsa_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6structNtB7_10ChildState15wait_for_loaded0Bd_: argument 0"}
!24888 = distinct !{!24888, i1 false, !"_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder18LogicalPageDecoderEL_EE8iter_mutB1s_"}
!24889 = distinct !{!24889, !24888, !"_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder18LogicalPageDecoderEL_EE8iter_mutB1s_: argument 1"}
!24890 = distinct !{!24890, !24888, !"_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder18LogicalPageDecoderEL_EE8iter_mutB1s_: argument 0"}
!24891 = distinct !{!24891, i1 false, !"_RINvNtCs91CWldrXK7B_3log13___private_api3loguNtB2_12GlobalLoggerECsjjpCCFGI3ul_14lance_encoding"}
!24892 = distinct !{!24892, !24891, !"_RINvNtCs91CWldrXK7B_3log13___private_api3loguNtB2_12GlobalLoggerECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24893 = distinct !{!24893, i1 false, !"_RINvNtCs91CWldrXK7B_3log13___private_api8log_implNtB2_12GlobalLoggerECsjjpCCFGI3ul_14lance_encoding"}
!24894 = distinct !{!24894, !24893, !"_RINvNtCs91CWldrXK7B_3log13___private_api8log_implNtB2_12GlobalLoggerECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24895 = distinct !{!24895, i1 false, !"_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque8iter_mut7IterMutINtNtB1g_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder18LogicalPageDecoderEL_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_"}
!24896 = distinct !{!24896, !24895, !"_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque8iter_mut7IterMutINtNtB1g_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder18LogicalPageDecoderEL_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_: argument 0"}
!24897 = distinct !{!24897, i1 false, !"_RNvXs1_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque8iter_mutINtB5_7IterMutINtNtBb_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder18LogicalPageDecoderEL_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1C_"}
!24898 = distinct !{!24898, !24897, !"_RNvXs1_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque8iter_mutINtB5_7IterMutINtNtBb_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder18LogicalPageDecoderEL_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1C_: argument 0"}
!24899 = distinct !{!24899, i1 false, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsjjpCCFGI3ul_14lance_encoding"}
!24900 = distinct !{!24900, !24899, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsjjpCCFGI3ul_14lance_encoding: argument 1"}
!24901 = distinct !{!24901, !24899, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24902 = distinct !{!24902, i1 false, !"_RINvNtCs91CWldrXK7B_3log13___private_api3loguNtB2_12GlobalLoggerECsjjpCCFGI3ul_14lance_encoding"}
!24903 = distinct !{!24903, !24902, !"_RINvNtCs91CWldrXK7B_3log13___private_api3loguNtB2_12GlobalLoggerECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24904 = distinct !{!24904, i1 false, !"_RINvNtCs91CWldrXK7B_3log13___private_api8log_implNtB2_12GlobalLoggerECsjjpCCFGI3ul_14lance_encoding"}
!24905 = distinct !{!24905, !24904, !"_RINvNtCs91CWldrXK7B_3log13___private_api8log_implNtB2_12GlobalLoggerECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24906 = distinct !{!24906, i1 false, !"_RINvNtCs91CWldrXK7B_3log13___private_api3loguNtB2_12GlobalLoggerECsjjpCCFGI3ul_14lance_encoding"}
!24907 = distinct !{!24907, !24906, !"_RINvNtCs91CWldrXK7B_3log13___private_api3loguNtB2_12GlobalLoggerECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24908 = distinct !{!24908, i1 false, !"_RINvNtCs91CWldrXK7B_3log13___private_api8log_implNtB2_12GlobalLoggerECsjjpCCFGI3ul_14lance_encoding"}
!24909 = distinct !{!24909, !24908, !"_RINvNtCs91CWldrXK7B_3log13___private_api8log_implNtB2_12GlobalLoggerECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24910 = distinct !{!24910, i1 false, !"_RINvNtCs91CWldrXK7B_3log13___private_api3loguNtB2_12GlobalLoggerECsjjpCCFGI3ul_14lance_encoding"}
!24911 = distinct !{!24911, !24910, !"_RINvNtCs91CWldrXK7B_3log13___private_api3loguNtB2_12GlobalLoggerECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24912 = distinct !{!24912, i1 false, !"_RINvNtCs91CWldrXK7B_3log13___private_api8log_implNtB2_12GlobalLoggerECsjjpCCFGI3ul_14lance_encoding"}
!24913 = distinct !{!24913, !24912, !"_RINvNtCs91CWldrXK7B_3log13___private_api8log_implNtB2_12GlobalLoggerECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24914 = distinct !{!24914, i1 false, !"_RINvNtCs91CWldrXK7B_3log13___private_api3loguNtB2_12GlobalLoggerECsjjpCCFGI3ul_14lance_encoding"}
!24915 = distinct !{!24915, !24914, !"_RINvNtCs91CWldrXK7B_3log13___private_api3loguNtB2_12GlobalLoggerECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24916 = distinct !{!24916, i1 false, !"_RINvNtCs91CWldrXK7B_3log13___private_api8log_implNtB2_12GlobalLoggerECsjjpCCFGI3ul_14lance_encoding"}
!24917 = distinct !{!24917, !24916, !"_RINvNtCs91CWldrXK7B_3log13___private_api8log_implNtB2_12GlobalLoggerECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24918 = distinct !{!24918, i1 false, !"_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE4pushB1j_"}
!24919 = distinct !{!24919, !24918, !"_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE4pushB1j_: argument 0"}
!24920 = distinct !{!24920, !24918, !"_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE4pushB1j_: argument 1"}
!24921 = distinct !{!24921, i1 false, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE8push_mutBN_"}
!24922 = distinct !{!24922, !24921, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE8push_mutBN_: argument 0"}
!24923 = distinct !{!24923, !24921, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE8push_mutBN_: argument 1"}
!24924 = distinct !{!24924, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc11collections11binary_heap4HoleNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEEB1F_"}
!24925 = distinct !{!24925, !24924, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc11collections11binary_heap4HoleNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEEB1F_: argument 0"}
!24926 = distinct !{!24926, i1 false, !"_RNvXsc_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_4HoleNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB1c_"}
!24927 = distinct !{!24927, !24926, !"_RNvXsc_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_4HoleNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB1c_: argument 0"}
!24928 = distinct !{!24928, i1 false, !"_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE3popB1j_"}
!24929 = distinct !{!24929, !24928, !"_RNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE3popB1j_: argument 0"}
!24930 = distinct !{!24930, i1 false, !"_RNCNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB7_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE3pop0B1l_"}
!24931 = distinct !{!24931, !24930, !"_RNCNvMs9_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB7_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE3pop0B1l_: argument 0"}
!24932 = distinct !{!24932, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc11collections11binary_heap4HoleNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEEB1F_"}
!24933 = distinct !{!24933, !24932, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc11collections11binary_heap4HoleNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEEB1F_: argument 0:thread"}
!24934 = distinct !{!24934, i1 false, !"_RNvXsc_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_4HoleNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB1c_"}
!24935 = distinct !{!24935, !24934, !"_RNvXsc_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_4HoleNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB1c_: argument 0:thread"}
!24936 = distinct !{!24936, !24932, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc11collections11binary_heap4HoleNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEEB1F_: argument 0"}
!24937 = distinct !{!24937, !24934, !"_RNvXsc_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_4HoleNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB1c_: argument 0"}
!24938 = distinct !{!24938, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc11collections11binary_heap4HoleNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEEB1F_"}
!24939 = distinct !{!24939, !24938, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc11collections11binary_heap4HoleNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderEEB1F_: argument 0"}
!24940 = distinct !{!24940, i1 false, !"_RNvXsc_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_4HoleNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB1c_"}
!24941 = distinct !{!24941, !24940, !"_RNvXsc_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_4HoleNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB1c_: argument 0"}
!24942 = distinct !{!24942, i1 false, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE3mapyNCNCNvMsf_BL_NtBL_19SimpleStructDecoder18do_wait_for_loaded0s_0EBR_"}
!24943 = distinct !{!24943, !24942, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct9WaitOrderE3mapyNCNCNvMsf_BL_NtBL_19SimpleStructDecoder18do_wait_for_loaded0s_0EBR_: argument 0"}
!24944 = !{!24839}
!24945 = !{!24841}
!24946 = !{!24855, !24854, !24852, !24851, !24849, !24848, !24846, !24845, !24841, !24843, !24839, !24842}
!24947 = !{!24859, !24857}
!24948 = !{!24864, !24863, !24861, !24855, !24854, !24852, !24851, !24849, !24848, !24846, !24845, !24841, !24843, !24839, !24842}
!24949 = !{!24866, !24855, !24854, !24852, !24851, !24849, !24848, !24846, !24845, !24841, !24843, !24839, !24842}
!24950 = !{!24868}
!24951 = !{!24870}
!24952 = !{!24872}
!24953 = !{!24874}
!24954 = !{!24874, !24872}
!24955 = !{!24881, !24880, !24878, !24870, !24876, !24868, !24875, !24855, !24854, !24852, !24851, !24849, !24848, !24846, !24845, !24841, !24843, !24839, !24842}
!24956 = !{!24874, !24872, !24881, !24880, !24878, !24870, !24876, !24868, !24875, !24855, !24854, !24852, !24851, !24849, !24848, !24846, !24845, !24841, !24843, !24839, !24842}
!24957 = !{!24870, !24868}
!24958 = !{!24876, !24875, !24855, !24854, !24852, !24851, !24849, !24848, !24846, !24845, !24841, !24843, !24839, !24842}
!24959 = !{!24870, !24876, !24868, !24875, !24855, !24854, !24852, !24851, !24849, !24848, !24846, !24845, !24841, !24843, !24839, !24842}
!24960 = !{!24854, !24851, !24848, !24845, !24841, !24843, !24839, !24842}
!24961 = !{!24883}
!24962 = !{!24883, !24884, !24841, !24843, !24839, !24842}
!24963 = !{!24883, !24841, !24839}
!24964 = !{!24884, !24843, !24842}
!24965 = !{!24887, !24886}
!24966 = !{!24887}
!24967 = !{!24889}
!24968 = !{!24890, !24887}
!24969 = !{!24894, !24892, !24887, !24886}
!24970 = !{!24898, !24896}
!24971 = !{!24901, !24900, !24887}
!24972 = !{!24905, !24903, !24887, !24886}
!24973 = !{!24896}
!24974 = !{!24909, !24907, !24887, !24886}
!24975 = !{!24913, !24911, !24887, !24886}
!24976 = !{!24917, !24915}
!24977 = !{!24919}
!24978 = !{!24920}
!24979 = !{!24922}
!24980 = !{!24922, !24919}
!24981 = !{!24923, !24920}
!24982 = !{!24922, !24923, !24919, !24920}
!24983 = !{!24927, !24925, !24919}
!24984 = !{!24929}
!24985 = !{!24931}
!24986 = !{!24931, !24929}
!24987 = !{!24935, !24933, !24931, !24929}
!24988 = !{!24937, !24936, !24931, !24929}
!24989 = !{!24941, !24939, !24931, !24929}
!24990 = !{!"branch_weights", !"expected", i32 1176245, i32 2146307403}
!24991 = !{!24943}
!24992 = distinct !{!24992, i1 false, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsjjpCCFGI3ul_14lance_encoding"}
!24993 = distinct !{!24993, !24992, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsjjpCCFGI3ul_14lance_encoding: argument 1"}
!24994 = distinct !{!24994, !24992, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!24995 = distinct !{!24995, i1 false, !"_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMsr_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB2q_17FullZipReadSource5fetch00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtNtBY_11collections9vec_deque8VecDequeNtNtB2w_6buffer11LanceBufferEEB2w_"}
!24996 = distinct !{!24996, !24995, !"_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMsr_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB2q_17FullZipReadSource5fetch00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtNtBY_11collections9vec_deque8VecDequeNtNtB2w_6buffer11LanceBufferEEB2w_: argument 1"}
!24997 = distinct !{!24997, !24995, !"_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMsr_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB2q_17FullZipReadSource5fetch00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtNtBY_11collections9vec_deque8VecDequeNtNtB2w_6buffer11LanceBufferEEB2w_: argument 0"}
!24998 = distinct !{!24998, i1 false, !"_RINvXse_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB26_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMsr_NtNtNtB1a_9encodings7logical9primitiveNtB4Y_17FullZipReadSource5fetch00EEB1a_"}
!24999 = distinct !{!24999, !24998, !"_RINvXse_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB26_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMsr_NtNtNtB1a_9encodings7logical9primitiveNtB4Y_17FullZipReadSource5fetch00EEB1a_: argument 1"}
!25000 = distinct !{!25000, !24998, !"_RINvXse_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB26_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMsr_NtNtNtB1a_9encodings7logical9primitiveNtB4Y_17FullZipReadSource5fetch00EEB1a_: argument 0"}
!25001 = distinct !{!25001, i1 false, !"_RNvXNtNtNtCscI6d9CVNmLh_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMsr_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB2L_17FullZipReadSource5fetch00ENtB2_12IntoIterator9into_iterB2R_"}
!25002 = distinct !{!25002, !25001, !"_RNvXNtNtNtCscI6d9CVNmLh_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMsr_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB2L_17FullZipReadSource5fetch00ENtB2_12IntoIterator9into_iterB2R_: argument 1"}
!25003 = distinct !{!25003, !25001, !"_RNvXNtNtNtCscI6d9CVNmLh_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMsr_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB2L_17FullZipReadSource5fetch00ENtB2_12IntoIterator9into_iterB2R_: argument 0"}
!25004 = distinct !{!25004, i1 false, !"_RNvXNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque14spec_from_iterINtB4_8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEINtB2_12SpecFromIterB1k_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB8_3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMsr_NtNtNtB1o_9encodings7logical9primitiveNtB4H_17FullZipReadSource5fetch00EE14spec_from_iterB1o_"}
!25005 = distinct !{!25005, !25004, !"_RNvXNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque14spec_from_iterINtB4_8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEINtB2_12SpecFromIterB1k_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB8_3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMsr_NtNtNtB1o_9encodings7logical9primitiveNtB4H_17FullZipReadSource5fetch00EE14spec_from_iterB1o_: argument 1"}
!25006 = distinct !{!25006, i1 false, !"_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec16in_place_collectINtB6_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMsr_NtNtNtB12_9encodings7logical9primitiveNtB4w_17FullZipReadSource5fetch00EE9from_iterB12_"}
!25007 = distinct !{!25007, !25006, !"_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec16in_place_collectINtB6_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMsr_NtNtNtB12_9encodings7logical9primitiveNtB4w_17FullZipReadSource5fetch00EE9from_iterB12_: argument 1"}
!25008 = distinct !{!25008, i1 false, !"_RINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMsr_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB36_17FullZipReadSource5fetch00ENtNtB3c_6buffer11LanceBufferEB3c_"}
!25009 = distinct !{!25009, !25008, !"_RINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMsr_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB36_17FullZipReadSource5fetch00ENtNtB3c_6buffer11LanceBufferEB3c_: argument 1"}
!25010 = distinct !{!25010, i1 false, !"_RNvXs0_NtNtCs40k4W9msRzi_5alloc3vec16in_place_collectINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB7_9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMsr_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB2P_17FullZipReadSource5fetch00EINtB5_18SpecInPlaceCollectNtNtB2V_6buffer11LanceBufferBP_E16collect_in_placeB2V_"}
!25011 = distinct !{!25011, !25010, !"_RNvXs0_NtNtCs40k4W9msRzi_5alloc3vec16in_place_collectINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB7_9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMsr_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB2P_17FullZipReadSource5fetch00EINtB5_18SpecInPlaceCollectNtNtB2V_6buffer11LanceBufferBP_E16collect_in_placeB2V_: argument 0"}
!25012 = distinct !{!25012, i1 false, !"_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMsr_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB2w_17FullZipReadSource5fetch00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtB2C_6buffer11LanceBufferENCINvNtB12_16in_place_collect24write_in_place_with_dropB5o_E0INtNtBc_6result6ResultB4N_zEEB2C_"}
!25013 = distinct !{!25013, !25012, !"_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMsr_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB2w_17FullZipReadSource5fetch00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtB2C_6buffer11LanceBufferENCINvNtB12_16in_place_collect24write_in_place_with_dropB5o_E0INtNtBc_6result6ResultB4N_zEEB2C_: argument 0"}
!25014 = distinct !{!25014, i1 false, !"_RINvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferENCINvNtNtB1E_8adapters3map12map_try_foldBX_B3c_B2C_INtNtB1G_6result6ResultB2C_zENCNCNvMsr_NtNtNtB3g_9encodings7logical9primitiveNtB5x_17FullZipReadSource5fetch00NCINvNtB8_16in_place_collect24write_in_place_with_dropB3c_E0E0B4U_EB3g_"}
!25015 = distinct !{!25015, !25014, !"_RINvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferENCINvNtNtB1E_8adapters3map12map_try_foldBX_B3c_B2C_INtNtB1G_6result6ResultB2C_zENCNCNvMsr_NtNtNtB3g_9encodings7logical9primitiveNtB5x_17FullZipReadSource5fetch00NCINvNtB8_16in_place_collect24write_in_place_with_dropB3c_E0E0B4U_EB3g_: argument 0"}
!25016 = distinct !{!25016, !25004, !"_RNvXNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque14spec_from_iterINtB4_8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEINtB2_12SpecFromIterB1k_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB8_3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMsr_NtNtNtB1o_9encodings7logical9primitiveNtB4H_17FullZipReadSource5fetch00EE14spec_from_iterB1o_: argument 0"}
!25017 = distinct !{!25017, !25006, !"_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec16in_place_collectINtB6_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMsr_NtNtNtB12_9encodings7logical9primitiveNtB4w_17FullZipReadSource5fetch00EE9from_iterB12_: argument 0"}
!25018 = distinct !{!25018, !25008, !"_RINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMsr_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB36_17FullZipReadSource5fetch00ENtNtB3c_6buffer11LanceBufferEB3c_: argument 0"}
!25019 = distinct !{!25019, i1 false, !"_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferINtNtNtCs40k4W9msRzi_5alloc3vec13in_place_drop11InPlaceDropB1z_EINtNtBa_6result6ResultB2r_zENCNCNvMsr_NtNtNtB1D_9encodings7logical9primitiveNtB45_17FullZipReadSource5fetch00NCINvNtB2w_16in_place_collect24write_in_place_with_dropB1z_E0E0B1D_"}
!25020 = distinct !{!25020, !25019, !"_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferINtNtNtCs40k4W9msRzi_5alloc3vec13in_place_drop11InPlaceDropB1z_EINtNtBa_6result6ResultB2r_zENCNCNvMsr_NtNtNtB1D_9encodings7logical9primitiveNtB45_17FullZipReadSource5fetch00NCINvNtB2w_16in_place_collect24write_in_place_with_dropB1z_E0E0B1D_: argument 0"}
!25021 = distinct !{!25021, i1 false, !"_RNvMs0_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE32forget_allocation_drop_remainingCsjjpCCFGI3ul_14lance_encoding"}
!25022 = distinct !{!25022, !25021, !"_RNvMs0_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE32forget_allocation_drop_remainingCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!25023 = distinct !{!25023, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsjjpCCFGI3ul_14lance_encoding"}
!25024 = distinct !{!25024, !25023, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!25025 = distinct !{!25025, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsjjpCCFGI3ul_14lance_encoding"}
!25026 = distinct !{!25026, !25025, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!25027 = distinct !{!25027, i1 false, !"_RNvXs1_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop"}
!25028 = distinct !{!25028, !25027, !"_RNvXs1_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop: argument 0"}
!25029 = distinct !{!25029, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsjjpCCFGI3ul_14lance_encoding"}
!25030 = distinct !{!25030, !25029, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!25031 = distinct !{!25031, i1 false, !"_RNvXs1_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop"}
!25032 = distinct !{!25032, !25031, !"_RNvXs1_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop: argument 0"}
!25033 = distinct !{!25033, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_EEB1c_"}
!25034 = distinct !{!25034, !25033, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_EEB1c_: argument 0"}
!25035 = distinct !{!25035, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_"}
!25036 = distinct !{!25036, !25035, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_: argument 0"}
!25037 = distinct !{!25037, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_EEB1c_"}
!25038 = distinct !{!25038, !25037, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_EEB1c_: argument 0"}
!25039 = distinct !{!25039, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_"}
!25040 = distinct !{!25040, !25039, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_: argument 0"}
!25041 = distinct !{!25041, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_EEB1c_"}
!25042 = distinct !{!25042, !25041, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_EEB1c_: argument 0"}
!25043 = distinct !{!25043, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_"}
!25044 = distinct !{!25044, !25043, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_: argument 0"}
!25045 = distinct !{!25045, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding"}
!25046 = distinct !{!25046, !25045, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!25047 = !{!24994, !24993}
!25048 = !{!25000, !24999, !24997, !24996}
!25049 = !{!25003, !25002}
!25050 = !{!25000, !24997}
!25051 = !{!25005}
!25052 = !{!25007}
!25053 = !{!25009}
!25054 = !{!25011}
!25055 = !{!25013}
!25056 = !{!25015}
!25057 = !{!25018, !25017, !25016, !25000, !24999, !24997, !24996}
!25058 = !{!25015, !25013, !25011, !25018, !25009, !25017, !25007, !25016, !25005, !25000, !24999, !24997, !24996}
!25059 = !{!25020, !25015, !25013, !25011, !25018, !25009, !25017, !25007, !25016, !25005, !25000, !24999, !24997, !24996}
!25060 = !{!25015, !25013, !25011, !25009, !25007, !25005}
!25061 = !{!25018, !25009, !25017, !25007, !25016, !25005, !25000, !24999, !24997, !24996}
!25062 = !{!25022}
!25063 = !{!25022, !25009, !25007, !25005}
!25064 = !{!25024}
!25065 = !{!25026}
!25066 = !{!25028}
!25067 = !{!25028, !25026, !25024}
!25068 = !{!25022, !25018, !25009, !25017, !25007, !25016, !25005, !25000, !24999, !24997, !24996}
!25069 = !{!25028, !25026, !25024, !25022, !25018, !25009, !25017, !25007, !25016, !25005, !25000, !24999, !24997, !24996}
!25070 = !{!25024, !25022, !25018, !25009, !25017, !25007, !25016, !25005, !25000, !24999, !24997, !24996}
!25071 = !{!25030}
!25072 = !{!25032}
!25073 = !{!25032, !25030, !25024}
!25074 = !{!25032, !25030, !25024, !25022, !25018, !25009, !25017, !25007, !25016, !25005, !25000, !24999, !24997, !24996}
!25075 = !{!25034}
!25076 = !{!25036}
!25077 = !{!25036, !25034}
!25078 = !{!25038}
!25079 = !{!25040}
!25080 = !{!25040, !25038}
!25081 = !{!25042}
!25082 = !{!25044}
!25083 = !{!25044, !25042}
!25084 = !{!25046}
!25085 = distinct !{!25085, i1 false, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsjjpCCFGI3ul_14lance_encoding"}
!25086 = distinct !{!25086, !25085, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsjjpCCFGI3ul_14lance_encoding: argument 1"}
!25087 = distinct !{!25087, !25085, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!25088 = distinct !{!25088, i1 false, !"_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMss_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB2q_16FullZipScheduler19schedule_ranges_reps0_00ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecNtNtB2w_6buffer11LanceBufferEEB2w_"}
!25089 = distinct !{!25089, !25088, !"_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMss_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB2q_16FullZipScheduler19schedule_ranges_reps0_00ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecNtNtB2w_6buffer11LanceBufferEEB2w_: argument 0"}
!25090 = distinct !{!25090, i1 false, !"_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1G_8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMss_NtNtNtBK_9encodings7logical9primitiveNtB4r_16FullZipScheduler19schedule_ranges_reps0_00EEBK_"}
!25091 = distinct !{!25091, !25090, !"_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1G_8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMss_NtNtNtBK_9encodings7logical9primitiveNtB4r_16FullZipScheduler19schedule_ranges_reps0_00EEBK_: argument 0"}
!25092 = distinct !{!25092, !25088, !"_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMss_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB2q_16FullZipScheduler19schedule_ranges_reps0_00ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecNtNtB2w_6buffer11LanceBufferEEB2w_: argument 1"}
!25093 = distinct !{!25093, !25090, !"_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1G_8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMss_NtNtNtBK_9encodings7logical9primitiveNtB4r_16FullZipScheduler19schedule_ranges_reps0_00EEBK_: argument 1"}
!25094 = distinct !{!25094, i1 false, !"_RNvXNtNtNtCscI6d9CVNmLh_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMss_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB2L_16FullZipScheduler19schedule_ranges_reps0_00ENtB2_12IntoIterator9into_iterB2R_"}
!25095 = distinct !{!25095, !25094, !"_RNvXNtNtNtCscI6d9CVNmLh_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMss_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB2L_16FullZipScheduler19schedule_ranges_reps0_00ENtB2_12IntoIterator9into_iterB2R_: argument 1"}
!25096 = distinct !{!25096, !25094, !"_RNvXNtNtNtCscI6d9CVNmLh_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMss_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB2L_16FullZipScheduler19schedule_ranges_reps0_00ENtB2_12IntoIterator9into_iterB2R_: argument 0"}
!25097 = distinct !{!25097, i1 false, !"_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec16in_place_collectINtB6_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMss_NtNtNtB12_9encodings7logical9primitiveNtB4w_16FullZipScheduler19schedule_ranges_reps0_00EE9from_iterB12_"}
!25098 = distinct !{!25098, !25097, !"_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec16in_place_collectINtB6_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMss_NtNtNtB12_9encodings7logical9primitiveNtB4w_16FullZipScheduler19schedule_ranges_reps0_00EE9from_iterB12_: argument 0"}
!25099 = distinct !{!25099, !25097, !"_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec16in_place_collectINtB6_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMss_NtNtNtB12_9encodings7logical9primitiveNtB4w_16FullZipScheduler19schedule_ranges_reps0_00EE9from_iterB12_: argument 1"}
!25100 = distinct !{!25100, i1 false, !"_RINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMss_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB36_16FullZipScheduler19schedule_ranges_reps0_00ENtNtB3c_6buffer11LanceBufferEB3c_"}
!25101 = distinct !{!25101, !25100, !"_RINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMss_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB36_16FullZipScheduler19schedule_ranges_reps0_00ENtNtB3c_6buffer11LanceBufferEB3c_: argument 0"}
!25102 = distinct !{!25102, !25100, !"_RINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMss_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB36_16FullZipScheduler19schedule_ranges_reps0_00ENtNtB3c_6buffer11LanceBufferEB3c_: argument 1"}
!25103 = distinct !{!25103, i1 false, !"_RNvXs0_NtNtCs40k4W9msRzi_5alloc3vec16in_place_collectINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB7_9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMss_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB2P_16FullZipScheduler19schedule_ranges_reps0_00EINtB5_18SpecInPlaceCollectNtNtB2V_6buffer11LanceBufferBP_E16collect_in_placeB2V_"}
!25104 = distinct !{!25104, !25103, !"_RNvXs0_NtNtCs40k4W9msRzi_5alloc3vec16in_place_collectINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB7_9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMss_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB2P_16FullZipScheduler19schedule_ranges_reps0_00EINtB5_18SpecInPlaceCollectNtNtB2V_6buffer11LanceBufferBP_E16collect_in_placeB2V_: argument 0"}
!25105 = distinct !{!25105, i1 false, !"_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMss_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB2w_16FullZipScheduler19schedule_ranges_reps0_00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtB2C_6buffer11LanceBufferENCINvNtB12_16in_place_collect24write_in_place_with_dropB5F_E0INtNtBc_6result6ResultB54_zEEB2C_"}
!25106 = distinct !{!25106, !25105, !"_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvMss_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB2w_16FullZipScheduler19schedule_ranges_reps0_00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtB2C_6buffer11LanceBufferENCINvNtB12_16in_place_collect24write_in_place_with_dropB5F_E0INtNtBc_6result6ResultB54_zEEB2C_: argument 0"}
!25107 = distinct !{!25107, i1 false, !"_RINvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferENCINvNtNtB1E_8adapters3map12map_try_foldBX_B3c_B2C_INtNtB1G_6result6ResultB2C_zENCNCNvMss_NtNtNtB3g_9encodings7logical9primitiveNtB5x_16FullZipScheduler19schedule_ranges_reps0_00NCINvNtB8_16in_place_collect24write_in_place_with_dropB3c_E0E0B4U_EB3g_"}
!25108 = distinct !{!25108, !25107, !"_RINvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferENCINvNtNtB1E_8adapters3map12map_try_foldBX_B3c_B2C_INtNtB1G_6result6ResultB2C_zENCNCNvMss_NtNtNtB3g_9encodings7logical9primitiveNtB5x_16FullZipScheduler19schedule_ranges_reps0_00NCINvNtB8_16in_place_collect24write_in_place_with_dropB3c_E0E0B4U_EB3g_: argument 0"}
!25109 = distinct !{!25109, i1 false, !"_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferINtNtNtCs40k4W9msRzi_5alloc3vec13in_place_drop11InPlaceDropB1z_EINtNtBa_6result6ResultB2r_zENCNCNvMss_NtNtNtB1D_9encodings7logical9primitiveNtB45_16FullZipScheduler19schedule_ranges_reps0_00NCINvNtB2w_16in_place_collect24write_in_place_with_dropB1z_E0E0B1D_"}
!25110 = distinct !{!25110, !25109, !"_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferINtNtNtCs40k4W9msRzi_5alloc3vec13in_place_drop11InPlaceDropB1z_EINtNtBa_6result6ResultB2r_zENCNCNvMss_NtNtNtB1D_9encodings7logical9primitiveNtB45_16FullZipScheduler19schedule_ranges_reps0_00NCINvNtB2w_16in_place_collect24write_in_place_with_dropB1z_E0E0B1D_: argument 0"}
!25111 = distinct !{!25111, i1 false, !"_RNvMs0_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE32forget_allocation_drop_remainingCsjjpCCFGI3ul_14lance_encoding"}
!25112 = distinct !{!25112, !25111, !"_RNvMs0_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE32forget_allocation_drop_remainingCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!25113 = distinct !{!25113, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsjjpCCFGI3ul_14lance_encoding"}
!25114 = distinct !{!25114, !25113, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!25115 = distinct !{!25115, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsjjpCCFGI3ul_14lance_encoding"}
!25116 = distinct !{!25116, !25115, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!25117 = distinct !{!25117, i1 false, !"_RNvXs1_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop"}
!25118 = distinct !{!25118, !25117, !"_RNvXs1_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop: argument 0"}
!25119 = distinct !{!25119, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsjjpCCFGI3ul_14lance_encoding"}
!25120 = distinct !{!25120, !25119, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!25121 = distinct !{!25121, i1 false, !"_RNvXs1_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop"}
!25122 = distinct !{!25122, !25121, !"_RNvXs1_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop: argument 0"}
!25123 = distinct !{!25123, i1 false, !"_RNvMss_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_16FullZipScheduler30extract_byte_ranges_from_pairs"}
!25124 = distinct !{!25124, !25123, !"_RNvMss_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_16FullZipScheduler30extract_byte_ranges_from_pairs: argument 0"}
!25125 = distinct !{!25125, !25123, !"_RNvMss_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_16FullZipScheduler30extract_byte_ranges_from_pairs: argument 1"}
!25126 = distinct !{!25126, i1 false, !"_RINvMs3_NtNtCsjjpCCFGI3ul_14lance_encoding5utils8bytepackINtB6_12ByteUnpackerNtNtBa_6buffer15LanceBufferIterE3newNtB1f_11LanceBufferEBa_"}
!25127 = distinct !{!25127, !25126, !"_RINvMs3_NtNtCsjjpCCFGI3ul_14lance_encoding5utils8bytepackINtB6_12ByteUnpackerNtNtBa_6buffer15LanceBufferIterE3newNtB1f_11LanceBufferEBa_: argument 1"}
!25128 = distinct !{!25128, !25126, !"_RINvMs3_NtNtCsjjpCCFGI3ul_14lance_encoding5utils8bytepackINtB6_12ByteUnpackerNtNtBa_6buffer15LanceBufferIterE3newNtB1f_11LanceBufferEBa_: argument 0"}
!25129 = distinct !{!25129, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_"}
!25130 = distinct !{!25130, !25129, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_: argument 0"}
!25131 = distinct !{!25131, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding"}
!25132 = distinct !{!25132, !25131, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!25133 = distinct !{!25133, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding"}
!25134 = distinct !{!25134, !25133, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!25135 = distinct !{!25135, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding"}
!25136 = distinct !{!25136, !25135, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!25137 = distinct !{!25137, i1 false, !"_RNvYINtNtNtCsjjpCCFGI3ul_14lance_encoding5utils8bytepack12ByteUnpackerNtNtB9_6buffer15LanceBufferIterENtCs9bWvALnnRts_9itertools9Itertools6chunksB9_"}
!25138 = distinct !{!25138, !25137, !"_RNvYINtNtNtCsjjpCCFGI3ul_14lance_encoding5utils8bytepack12ByteUnpackerNtNtB9_6buffer15LanceBufferIterENtCs9bWvALnnRts_9itertools9Itertools6chunksB9_: argument 1"}
!25139 = distinct !{!25139, !25137, !"_RNvYINtNtNtCsjjpCCFGI3ul_14lance_encoding5utils8bytepack12ByteUnpackerNtNtB9_6buffer15LanceBufferIterENtCs9bWvALnnRts_9itertools9Itertools6chunksB9_: argument 0"}
!25140 = distinct !{!25140, i1 false, !"_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB18_4iter8adapters3map3MapINtNtCs9bWvALnnRts_9itertools11groupbylazy6ChunksINtNtNtCsjjpCCFGI3ul_14lance_encoding5utils8bytepack12ByteUnpackerNtNtB3H_6buffer15LanceBufferIterEENCNvMss_NtNtNtB3H_9encodings7logical9primitiveNtB5k_16FullZipScheduler30extract_byte_ranges_from_pairs0EE9from_iterB3H_"}
!25141 = distinct !{!25141, !25140, !"_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB18_4iter8adapters3map3MapINtNtCs9bWvALnnRts_9itertools11groupbylazy6ChunksINtNtNtCsjjpCCFGI3ul_14lance_encoding5utils8bytepack12ByteUnpackerNtNtB3H_6buffer15LanceBufferIterEENCNvMss_NtNtNtB3H_9encodings7logical9primitiveNtB5k_16FullZipScheduler30extract_byte_ranges_from_pairs0EE9from_iterB3H_: argument 0"}
!25142 = distinct !{!25142, !25140, !"_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB18_4iter8adapters3map3MapINtNtCs9bWvALnnRts_9itertools11groupbylazy6ChunksINtNtNtCsjjpCCFGI3ul_14lance_encoding5utils8bytepack12ByteUnpackerNtNtB3H_6buffer15LanceBufferIterEENCNvMss_NtNtNtB3H_9encodings7logical9primitiveNtB5k_16FullZipScheduler30extract_byte_ranges_from_pairs0EE9from_iterB3H_: argument 1"}
!25143 = distinct !{!25143, i1 false, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding"}
!25144 = distinct !{!25144, !25143, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!25145 = distinct !{!25145, i1 false, !"_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3map3MapINtNtCs9bWvALnnRts_9itertools11groupbylazy6ChunksINtNtNtCsjjpCCFGI3ul_14lance_encoding5utils8bytepack12ByteUnpackerNtNtB3n_6buffer15LanceBufferIterEENCNvMss_NtNtNtB3n_9encodings7logical9primitiveNtB50_16FullZipScheduler30extract_byte_ranges_from_pairs0EE11spec_extendB3n_"}
!25146 = distinct !{!25146, !25145, !"_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3map3MapINtNtCs9bWvALnnRts_9itertools11groupbylazy6ChunksINtNtNtCsjjpCCFGI3ul_14lance_encoding5utils8bytepack12ByteUnpackerNtNtB3n_6buffer15LanceBufferIterEENCNvMss_NtNtNtB3n_9encodings7logical9primitiveNtB50_16FullZipScheduler30extract_byte_ranges_from_pairs0EE11spec_extendB3n_: argument 0"}
!25147 = distinct !{!25147, i1 false, !"_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE16extend_desugaredINtNtNtNtBN_4iter8adapters3map3MapINtNtCs9bWvALnnRts_9itertools11groupbylazy6ChunksINtNtNtCsjjpCCFGI3ul_14lance_encoding5utils8bytepack12ByteUnpackerNtNtB39_6buffer15LanceBufferIterEENCNvMss_NtNtNtB39_9encodings7logical9primitiveNtB4M_16FullZipScheduler30extract_byte_ranges_from_pairs0EEB39_"}
!25148 = distinct !{!25148, !25147, !"_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE16extend_desugaredINtNtNtNtBN_4iter8adapters3map3MapINtNtCs9bWvALnnRts_9itertools11groupbylazy6ChunksINtNtNtCsjjpCCFGI3ul_14lance_encoding5utils8bytepack12ByteUnpackerNtNtB39_6buffer15LanceBufferIterEENCNvMss_NtNtNtB39_9encodings7logical9primitiveNtB4M_16FullZipScheduler30extract_byte_ranges_from_pairs0EEB39_: argument 0"}
!25149 = distinct !{!25149, !25145, !"_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3map3MapINtNtCs9bWvALnnRts_9itertools11groupbylazy6ChunksINtNtNtCsjjpCCFGI3ul_14lance_encoding5utils8bytepack12ByteUnpackerNtNtB3n_6buffer15LanceBufferIterEENCNvMss_NtNtNtB3n_9encodings7logical9primitiveNtB50_16FullZipScheduler30extract_byte_ranges_from_pairs0EE11spec_extendB3n_: argument 1"}
!25150 = distinct !{!25150, !25147, !"_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE16extend_desugaredINtNtNtNtBN_4iter8adapters3map3MapINtNtCs9bWvALnnRts_9itertools11groupbylazy6ChunksINtNtNtCsjjpCCFGI3ul_14lance_encoding5utils8bytepack12ByteUnpackerNtNtB39_6buffer15LanceBufferIterEENCNvMss_NtNtNtB39_9encodings7logical9primitiveNtB4M_16FullZipScheduler30extract_byte_ranges_from_pairs0EEB39_: argument 1"}
!25151 = distinct !{!25151, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding"}
!25152 = distinct !{!25152, !25151, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!25153 = distinct !{!25153, i1 false, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder21StructuralPageDecoderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2r_EE13from_residualB1o_"}
!25154 = distinct !{!25154, !25153, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder21StructuralPageDecoderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2r_EE13from_residualB1o_: argument 1"}
!25155 = distinct !{!25155, !25153, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder21StructuralPageDecoderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2r_EE13from_residualB1o_: argument 0"}
!25156 = distinct !{!25156, i1 false, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtNtB10_11collections9vec_deque8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2W_"}
!25157 = distinct !{!25157, !25156, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtNtB10_11collections9vec_deque8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2W_: argument 1"}
!25158 = distinct !{!25158, !25156, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtNtB10_11collections9vec_deque8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2W_: argument 0"}
!25159 = distinct !{!25159, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17FullZipReadSourceEBJ_"}
!25160 = distinct !{!25160, !25159, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17FullZipReadSourceEBJ_: argument 0"}
!25161 = distinct !{!25161, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_EEB1c_"}
!25162 = distinct !{!25162, !25161, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_EEB1c_: argument 0"}
!25163 = distinct !{!25163, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_"}
!25164 = distinct !{!25164, !25163, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_: argument 0"}
!25165 = distinct !{!25165, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_"}
!25166 = distinct !{!25166, !25165, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_: argument 0"}
!25167 = distinct !{!25167, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding"}
!25168 = distinct !{!25168, !25167, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!25169 = distinct !{!25169, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding"}
!25170 = distinct !{!25170, !25169, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!25171 = distinct !{!25171, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding"}
!25172 = distinct !{!25172, !25171, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding: argument 0"}
!25173 = distinct !{!25173, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding"}
!25174 = distinct !{!25174, !25173, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!25175 = distinct !{!25175, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding"}
!25176 = distinct !{!25176, !25175, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!25177 = distinct !{!25177, i1 false, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder21StructuralPageDecoderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2r_EE13from_residualB1o_"}
!25178 = distinct !{!25178, !25177, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder21StructuralPageDecoderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2r_EE13from_residualB1o_: argument 1"}
!25179 = distinct !{!25179, !25177, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder21StructuralPageDecoderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB2r_EE13from_residualB1o_: argument 0"}
!25180 = distinct !{!25180, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17FullZipReadSourceEBJ_"}
!25181 = distinct !{!25181, !25180, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17FullZipReadSourceEBJ_: argument 0"}
!25182 = distinct !{!25182, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_EEB1c_"}
!25183 = distinct !{!25183, !25182, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_EEB1c_: argument 0"}
!25184 = distinct !{!25184, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_"}
!25185 = distinct !{!25185, !25184, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_: argument 0"}
!25186 = distinct !{!25186, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_"}
!25187 = distinct !{!25187, !25186, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_: argument 0"}
!25188 = distinct !{!25188, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding"}
!25189 = distinct !{!25189, !25188, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!25190 = distinct !{!25190, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding"}
end_hunk_6
