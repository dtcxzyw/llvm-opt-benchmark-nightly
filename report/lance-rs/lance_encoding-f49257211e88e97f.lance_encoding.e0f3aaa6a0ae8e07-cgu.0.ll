Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 122
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error18corrupt_file_namedNtNtCs40k4W9msRzi_5alloc6string6StringECsjjpCCFGI3ul_14lance_encoding:bb.a
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
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.y, align 8, !noalias !1501
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
  %i.ar = add nuw nsw i64 %i.ae, 1                ; 3 uses
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
  %i.au = add nsw i64 %.sroa.5.0132.us.i, -1      ; 2 uses
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
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.cd, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1645) #66
          to label %.noexc43.i unwind label %.thread94.i, !noalias !1502

.noexc43.i:                                       ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !1515, !noalias !1518, !noundef !75
  store i64 1, ptr %0, align 8, !alias.scope !1516, !noalias !1517
  store i64 %i.cf, ptr %i.by, align 8, !alias.scope !1516, !noalias !1517
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1501
  %i.ch = icmp ult i64 %i.bv, 1152921504606846976
  call void @llvm.assume(i1 %i.ch)
  %.sroa.062.0.copyload.i = load i64, ptr %i.c, align 8, !noalias !1501 ; 2 uses
  %i.ci = shl nuw nsw i64 %i.bv, 3                ; 2 uses
  %i.cj = invoke { i64, i64 } @_RNvNtCs40k4W9msRzi_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef range(i64 1, 9) 8, i64 noundef %i.ci)
          to label %.noexc49.i unwind label %.thread89.thread.i, !noalias !1502 ; 2 uses

.noexc49.i:                                       ; preds = %bb.w
  %i.ck = extractvalue { i64, i64 } %i.cj, 0      ; 3 uses
  %i.cl = extractvalue { i64, i64 } %i.cj, 1      ; 3 uses
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.noexc49.i
  %i.cn = inttoptr i64 %i.ck to ptr
  br label %_RNCNvMsr_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcSxE21allocate_for_slice_in0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i

bb.y:                                             ; preds = %.noexc49.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !1519
  %i.co = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.cl, i64 noundef range(i64 1, -9223372036854775807) %i.ck) #63, !noalias !1519
  br label %_RNCNvMsr_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcSxE21allocate_for_slice_in0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i

_RNCNvMsr_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcSxE21allocate_for_slice_in0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %bb.y, %bb.x
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.cn, %bb.x ], [ %i.co, %bb.y ] ; 5 uses
  %i.cp = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i, null
  br i1 %i.cp, label %bb.z, label %_RINvMso_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcSxE19allocate_for_layoutNCNvMsr_B6_Bx_21allocate_for_slice_in0NCB17_s_0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i, !prof !81

bb.z:                                             ; preds = %_RNCNvMsr_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcSxE21allocate_for_slice_in0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef %i.ck, i64 noundef %i.cl) #66
          to label %.noexc50.i unwind label %.thread89.thread.i, !noalias !1502

.noexc50.i:                                       ; preds = %bb.z
  unreachable

_RINvMso_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcSxE19allocate_for_layoutNCNvMsr_B6_Bx_21allocate_for_slice_in0NCB17_s_0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %_RNCNvMsr_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcSxE21allocate_for_slice_in0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !noalias !1519
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  store i64 1, ptr %i.cq, align 8, !noalias !1519
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cr, ptr nonnull align 8 %i.bw, i64 %i.ci, i1 false), !noalias !1519
  %i.cs = icmp eq i64 %.sroa.062.0.copyload.i, 0
  br i1 %i.cs, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_RINvMso_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcSxE19allocate_for_layoutNCNvMsr_B6_Bx_21allocate_for_slice_in0NCB17_s_0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %i.ct = shl nuw i64 %.sroa.062.0.copyload.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bw, i64 noundef %i.ct, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !1519
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_RINvMso_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcSxE19allocate_for_layoutNCNvMsr_B6_Bx_21allocate_for_slice_in0NCB17_s_0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %.sroa.023.0.copyload.i = load ptr, ptr %i.e, align 8, !alias.scope !1500, !noalias !1502 ; 2 uses
  %.not35.i = icmp eq ptr %.sroa.023.0.copyload.i, null
  br i1 %.not35.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.522.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.525.0..sroa_idx.i, i64 32, i1 false), !noalias !1502
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cu = sext i32 %.sroa.02.1.i to i64
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %i.a, align 8, !noalias !1501
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.bv, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1501
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.023.0.copyload.i, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !1501
  %.sroa.517.sroa.4.0..sroa.517.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.517.sroa.4.0..sroa.517.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.522.i, i64 32, i1 false), !noalias !1501
  %.sroa.618.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.cd, ptr %.sroa.618.0..sroa_idx.i, align 8, !noalias !1501
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.cu, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1501
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 %.sroa.06.1.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !1501
  call void @llvm.experimental.noalias.scope.decl(metadata !1520)
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !alias.scope !1521, !noalias !1522, !noundef !75 ; 3 uses
  %i.cx = load i64, ptr %i.cg, align 8, !range !76, !alias.scope !1521, !noalias !1522, !noundef !75
  %i.cy = icmp eq i64 %i.cw, %i.cx
  br i1 %i.cy, label %bb.ae, label %bb.an

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %bb.an unwind label %bb.af, !noalias !1523
end_hunk_0
begin_hunk_1_@_RINvMs4_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_13RepDefBuilder11add_offsetslEB8_:bb.a
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
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.w, align 8, !noalias !1626
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
  %i.ao = add nuw nsw i64 %i.ac, 1                ; 3 uses
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
  %i.ar = add nsw i64 %.sroa.5.0132.us.i, -1      ; 2 uses
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

.noexc43.i:                                       ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !1640, !noalias !1643, !noundef !75
  store i64 1, ptr %0, align 8, !alias.scope !1641, !noalias !1642
  store i64 %i.cb, ptr %i.bu, align 8, !alias.scope !1641, !noalias !1642
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1626
  %i.cd = icmp ult i64 %i.br, 1152921504606846976
  call void @llvm.assume(i1 %i.cd)
  %.sroa.062.0.copyload.i = load i64, ptr %i.c, align 8, !noalias !1626 ; 2 uses
  %i.ce = shl nuw nsw i64 %i.br, 3                ; 2 uses
  %i.cf = invoke { i64, i64 } @_RNvNtCs40k4W9msRzi_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef range(i64 1, 9) 8, i64 noundef %i.ce)
          to label %.noexc49.i unwind label %.thread89.thread.i, !noalias !1627 ; 2 uses

.noexc49.i:                                       ; preds = %bb.w
  %i.cg = extractvalue { i64, i64 } %i.cf, 0      ; 3 uses
  %i.ch = extractvalue { i64, i64 } %i.cf, 1      ; 3 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.noexc49.i
  %i.cj = inttoptr i64 %i.cg to ptr
  br label %_RNCNvMsr_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcSxE21allocate_for_slice_in0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i

bb.y:                                             ; preds = %.noexc49.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !1644
  %i.ck = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ch, i64 noundef range(i64 1, -9223372036854775807) %i.cg) #63, !noalias !1644
  br label %_RNCNvMsr_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcSxE21allocate_for_slice_in0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i

_RNCNvMsr_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcSxE21allocate_for_slice_in0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %bb.y, %bb.x
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.cj, %bb.x ], [ %i.ck, %bb.y ] ; 5 uses
  %i.cl = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i, null
  br i1 %i.cl, label %bb.z, label %_RINvMso_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcSxE19allocate_for_layoutNCNvMsr_B6_Bx_21allocate_for_slice_in0NCB17_s_0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i, !prof !81

bb.z:                                             ; preds = %_RNCNvMsr_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcSxE21allocate_for_slice_in0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef %i.cg, i64 noundef %i.ch) #66
          to label %.noexc50.i unwind label %.thread89.thread.i, !noalias !1627

.noexc50.i:                                       ; preds = %bb.z
  unreachable

_RINvMso_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcSxE19allocate_for_layoutNCNvMsr_B6_Bx_21allocate_for_slice_in0NCB17_s_0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %_RNCNvMsr_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcSxE21allocate_for_slice_in0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !noalias !1644
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  store i64 1, ptr %i.cm, align 8, !noalias !1644
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cn, ptr nonnull align 8 %i.bs, i64 %i.ce, i1 false), !noalias !1644
  %i.co = icmp eq i64 %.sroa.062.0.copyload.i, 0
  br i1 %i.co, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_RINvMso_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcSxE19allocate_for_layoutNCNvMsr_B6_Bx_21allocate_for_slice_in0NCB17_s_0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %i.cp = shl nuw i64 %.sroa.062.0.copyload.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bs, i64 noundef %i.cp, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !1644
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_RINvMso_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcSxE19allocate_for_layoutNCNvMsr_B6_Bx_21allocate_for_slice_in0NCB17_s_0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %.sroa.023.0.copyload.i = load ptr, ptr %i.e, align 8, !alias.scope !1625, !noalias !1627 ; 2 uses
  %.not35.i = icmp eq ptr %.sroa.023.0.copyload.i, null
  br i1 %.not35.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.522.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.525.0..sroa_idx.i, i64 32, i1 false), !noalias !1627
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cq = sext i32 %.sroa.02.1.i to i64
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %i.a, align 8, !noalias !1626
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.br, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1626
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.023.0.copyload.i, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !1626
  %.sroa.517.sroa.4.0..sroa.517.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.517.sroa.4.0..sroa.517.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.522.i, i64 32, i1 false), !noalias !1626
  %.sroa.618.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.bz, ptr %.sroa.618.0..sroa_idx.i, align 8, !noalias !1626
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.cq, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1626
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 %.sroa.06.1.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !1626
  call void @llvm.experimental.noalias.scope.decl(metadata !1645)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !1646, !noalias !1647, !noundef !75 ; 3 uses
  %i.ct = load i64, ptr %i.cc, align 8, !range !76, !alias.scope !1646, !noalias !1647, !noundef !75
  %i.cu = icmp eq i64 %i.cs, %i.ct
  br i1 %i.cu, label %bb.ae, label %bb.an

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %bb.an unwind label %bb.af, !noalias !1648

end_hunk_1
begin_hunk_2_@_RNvMsq_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB5_9DataBlock11from_arrays:bb.a

bb.cn:                                            ; preds = %bb.ck
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hk, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr %i.hf, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  store i64 %3, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 -9223372036854775804, ptr %i.ai, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %tailrecurse.i.preheader

bb.co:                                            ; preds = %bb.ff, %bb.fc, %bb.fa, %bb.em, %bb.ea, %bb.cm, %bb.fd, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit94, %bb.ei, %.body87, %bb.dw, %.body47, %bb.cu, %bb.cq
  %i.hl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

bb.cp:                                            ; preds = %bb.bu
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !nonnull !75, !noundef !75
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.hp = load i64, ptr %i.ho, align 8, !noundef !75
  invoke fastcc void @_RNvNtCsjjpCCFGI3ul_14lance_encoding4data26arrow_binary_to_data_block(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.hn, i64 noundef %i.hp, i64 noundef %3, i8 noundef 32)
          to label %bb.cr unwind label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.hq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 dereferenceable(24) %i.ag) #67
          to label %.body70 unwind label %bb.co

bb.cr:                                            ; preds = %bb.cp
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 dereferenceable(24) %i.ag)
          to label %bb.cs unwind label %bb.cj

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %tailrecurse.i.preheader

bb.ct:                                            ; preds = %bb.bv
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !nonnull !75, !noundef !75
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.hu = load i64, ptr %i.ht, align 8, !noundef !75
  invoke fastcc void @_RNvNtCsjjpCCFGI3ul_14lance_encoding4data26arrow_binary_to_data_block(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.hs, i64 noundef %i.hu, i64 noundef %3, i8 noundef 32)
          to label %bb.cv unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.hv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 dereferenceable(24) %i.ah) #67
          to label %.body70 unwind label %bb.co

bb.cv:                                            ; preds = %bb.ct
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 dereferenceable(24) %i.ah)
          to label %bb.cw unwind label %bb.cj

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %tailrecurse.i.preheader

bb.cx:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.hw = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !nonnull !75, !noundef !75
  %i.hy = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.hz = load i64, ptr %i.hy, align 8, !noundef !75
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.ib = load i32, ptr %i.ia, align 4, !noundef !75
  %i.ic = sext i32 %i.ib to i64                   ; 2 uses
  %i.id = mul i64 %3, %i.ic
  invoke void @_RNvMsq_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB5_9DataBlock11from_arrays(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.hx, i64 noundef %i.hz, i64 noundef %i.id)
          to label %bb.cz unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %.body47

.body47:                                          ; preds = %bb.da, %bb.cy
  %eh.lpad-body48 = phi { ptr, i32 } [ %i.ie, %bb.cy ], [ %i.ig, %bb.da ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 dereferenceable(24) %i.w) #67
          to label %.body70 unwind label %bb.co

bb.cz:                                            ; preds = %bb.cx
  %i.if = invoke fastcc noundef ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 80)
          to label %bb.dc unwind label %bb.da, !noalias !48805 ; 2 uses

bb.da:                                            ; preds = %bb.cz
  %i.ig = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockEBF_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.v) #67
          to label %.body47 unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

bb.dc:                                            ; preds = %bb.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.if, ptr noundef nonnull align 8 dereferenceable(80) %i.v, i64 80, i1 false)
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.if, ptr %i.ii, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %i.ic, ptr %i.ij, align 8
  store i64 -9223372036854775803, ptr %i.ai, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 dereferenceable(24) %i.w)
          to label %bb.dd unwind label %bb.cj

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %tailrecurse.i.preheader

bb.de:                                            ; preds = %bb.by
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.il = load i64, ptr %i.ik, align 8, !noundef !75 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.p, i64 noundef %i.il, i1 noundef zeroext false, i64 noundef 8, i64 noundef 80)
  %i.im = load i64, ptr %i.p, align 8, !range !82, !noundef !75
  %i.in = trunc nuw i64 %i.im to i1
  %i.io = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ip = load i64, ptr %i.io, align 8, !range !111, !noundef !75 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  br i1 %i.in, label %bb.dh, label %bb.di, !prof !81

.noexc86:                                         ; preds = %bb.ea, %bb.dy, %bb.dz, %bb.ei, %bb.dg
  %.pn40 = phi { ptr, i32 } [ %i.iu, %bb.dg ], [ %.pn.ph, %bb.ei ], [ %i.ku, %bb.dy ], [ %i.ku, %bb.dz ], [ %i.ku, %bb.ea ] ; 2 uses
  %.val51 = load i64, ptr %i.ab, align 8          ; 2 uses
  %i.ir = icmp eq i64 %.val51, 0
  br i1 %i.ir, label %.body70, label %bb.df

bb.df:                                            ; preds = %.noexc86
  %i.is = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val52 = load ptr, ptr %i.is, align 8, !nonnull !75, !noundef !75
  %i.it = shl nuw i64 %.val51, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val52, i64 noundef %i.it, i64 noundef range(i64 1, -9223372036854775807) 8) #63
  br label %.body70

bb.dg:                                            ; preds = %bb.dh
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %.noexc86

bb.dh:                                            ; preds = %bb.de
  %i.iv = load i64, ptr %i.iq, align 8
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.ip, i64 %i.iv) #66
          to label %bb.dt unwind label %bb.dg

bb.di:                                            ; preds = %bb.de
  %i.iw = load ptr, ptr %i.iq, align 8, !nonnull !75, !noundef !75 ; 2 uses
  %i.ix = icmp ule i64 %i.il, %i.ip
  call void @llvm.assume(i1 %i.ix)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i64 %i.ip, ptr %i.x, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr %i.iw, ptr %i.iy, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  store i64 0, ptr %i.iz, align 8
  %.not = icmp eq i64 %i.il, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.di
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !nonnull !75, !noundef !75
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.jd = load i64, ptr %i.jc, align 8, !noundef !75 ; 6 uses
  %i.je = shl i64 %i.jd, 4                        ; 4 uses
  %.not.i.i.i = icmp ugt i64 %i.je, 9223372036854775800
  %i.jf = icmp eq i64 %i.je, 0
  %i.jg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ji = icmp eq i64 %i.jd, 0
  %i.jj = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  br i1 %.not.i.i.i, label %.lr.ph.split.us, label %.lr.ph.split, !prof !80

.lr.ph.split.us:                                  ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !48806
  br label %.split

._crit_edge:                                      ; preds = %bb.eh, %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.jl = load i64, ptr %i.aj, align 8, !range !134, !noundef !75
  switch i64 %i.jl, label %default.unreachable220 [
    i64 0, label %bb.dp
    i64 1, label %bb.dq
    i64 2, label %bb.dr
  ], !prof !48807

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.eh
  %i.jm = phi ptr [ %i.li, %bb.eh ], [ %i.iw, %.lr.ph ]
  %i.jn = phi i64 [ %i.lk, %bb.eh ], [ 0, %.lr.ph ] ; 3 uses
  %.sroa.028.0163 = phi i64 [ %i.jo, %bb.eh ], [ 0, %.lr.ph ] ; 4 uses
  %i.jo = add nuw nsw i64 %.sroa.028.0163, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !48806
  br i1 %i.jf, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, label %bb.dj

bb.dj:                                            ; preds = %.lr.ph.split
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !48808
  %i.jp = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.je, i64 noundef range(i64 1, 17) 8) #63, !noalias !48808 ; 2 uses
  %i.jq = icmp eq ptr %i.jp, null
  br i1 %i.jq, label %.split, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i

.split:                                           ; preds = %bb.dj, %.lr.ph.split.us
  %.us-phi164 = phi i64 [ 0, %.lr.ph.split.us ], [ 8, %bb.dj ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.us-phi164, i64 %i.je) #66
          to label %.noexc81 unwind label %.loopexit.split-lp

.noexc81:                                         ; preds = %.split
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %bb.dj, %.lr.ph.split
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph.split ], [ %i.jp, %bb.dj ] ; 2 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %.lr.ph.split ], [ %i.jd, %bb.dj ] ; 2 uses
  %i.jr = icmp samesign ule i64 %i.jd, %.sroa.4.0.i.i
  call void @llvm.assume(i1 %i.jr)
  store i64 %.sroa.4.0.i.i, ptr %i.a, align 8, !noalias !48806
  store ptr %.sroa.10.0.i.i, ptr %i.jg, align 8, !noalias !48806
  call void @llvm.experimental.noalias.scope.decl(metadata !48809)
  call void @llvm.experimental.noalias.scope.decl(metadata !48810)
  br i1 %i.ji, label %.loopexit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, %bb.dn
  %.val15.i.i.i.i.i.i = phi i64 [ %i.ke, %bb.dn ], [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ] ; 4 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %.val15.i.i.i.i.i.i
  %.val16.i.i.i.i.i.i = load ptr, ptr %i.js, align 8, !noalias !48811, !nonnull !75, !align !95, !noundef !75 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.i, i64 16
  %i.ju = load i64, ptr %i.jt, align 8, !noalias !48812, !noundef !75 ; 2 uses
  %i.jv = icmp ult i64 %.sroa.028.0163, %i.ju
  br i1 %i.jv, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %.preheader.i.i.i
  %i.jw = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.i, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !noalias !48812, !nonnull !75, !noundef !75
  %i.jy = getelementptr inbounds nuw [16 x i8], ptr %i.jx, i64 %.sroa.028.0163 ; 2 uses
  %i.jz = load <2 x ptr>, ptr %i.jy, align 8, !noalias !48812
  %i.ka = load ptr, ptr %i.jy, align 8, !noalias !48812, !nonnull !75, !noundef !75
  %i.kb = atomicrmw add ptr %i.ka, i64 1 monotonic, align 8, !noalias !48812
  %i.kc = icmp slt i64 %i.kb, 0
  br i1 %i.kc, label %bb.dm, label %bb.dn

bb.dl:                                            ; preds = %.preheader.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.028.0163, i64 noundef %i.ju, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @951) #66
          to label %.noexc.i.i.i.i.i.i unwind label %.body.i79, !noalias !48811

.noexc.i.i.i.i.i.i:                               ; preds = %bb.dl
  unreachable

bb.dm:                                            ; preds = %bb.dk
  call void @llvm.trap()
  unreachable

bb.dn:                                            ; preds = %bb.dk
  %i.kd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i, i64 %.val15.i.i.i.i.i.i
  store <2 x ptr> %i.jz, ptr %i.kd, align 8, !noalias !48813
  %i.ke = add nuw i64 %.val15.i.i.i.i.i.i, 1      ; 2 uses
  %i.kf = icmp eq i64 %i.ke, %i.jd
  br i1 %i.kf, label %.loopexit, label %.preheader.i.i.i

.body.i79:                                        ; preds = %bb.dl
  %i.kg = landingpad { ptr, i32 }
          cleanup
  store i64 %.val15.i.i.i.i.i.i, ptr %i.jh, align 8, !alias.scope !48814, !noalias !48815
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 dereferenceable(24) %i.a) #67
          to label %bb.ei unwind label %bb.do, !noalias !48806

bb.do:                                            ; preds = %.body.i79
  %i.kh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !48806
  unreachable

bb.dp:                                            ; preds = %._crit_edge
  store ptr null, ptr %i.y, align 8
  br label %bb.ds

bb.dq:                                            ; preds = %._crit_edge
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @2260, ptr noundef nonnull inttoptr (i64 157 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2261) #66
          to label %bb.dt unwind label %.loopexit.split-lp

bb.dr:                                            ; preds = %._crit_edge
  %i.ki = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !nonnull !75, !noundef !75 ; 3 uses
  %i.kk = atomicrmw add ptr %i.kj, i64 1 monotonic, align 8
  %i.kl = icmp slt i64 %i.kk, 0
  br i1 %i.kl, label %bb.dv, label %bb.du

bb.ds:                                            ; preds = %bb.du, %bb.dp
  %i.km = phi ptr [ %i.kj, %bb.du ], [ null, %bb.dp ] ; 2 uses
  %i.kn = invoke noalias noundef nonnull ptr @_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB5_9BlockInfo3new()
          to label %_RNvXs_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB4_9BlockInfoNtNtCscI6d9CVNmLh_4core7default7Default7default.exit unwind label %bb.dw

.loopexit125:                                     ; preds = %bb.eg
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

.loopexit.split-lp:                               ; preds = %bb.dq, %.split
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.dt:                                            ; preds = %bb.ev, %bb.dq, %bb.dh, %bb.bw
  unreachable

bb.du:                                            ; preds = %bb.dr
  %i.ko = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.kp = load ptr, ptr %i.ko, align 8, !noundef !75
  %i.kq = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store ptr %i.kj, ptr %i.y, align 8
  %.sroa.011.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.kp, ptr %.sroa.011.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.011.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ks = load <2 x i64>, ptr %i.kq, align 8
  store <2 x i64> %i.ks, ptr %.sroa.011.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.011.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.kt = load <2 x i64>, ptr %i.kr, align 8
  store <2 x i64> %i.kt, ptr %.sroa.011.sroa.5.0..sroa_idx, align 8
  br label %bb.ds

bb.dv:                                            ; preds = %bb.dr
  call void @llvm.trap()
  unreachable

bb.dw:                                            ; preds = %bb.ds
  %i.ku = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockEEB1c_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x) #67
          to label %bb.dy unwind label %bb.co

_RNvXs_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB4_9BlockInfoNtNtCscI6d9CVNmLh_4core7default7Default7default.exit: ; preds = %bb.ds
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.515.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.y, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.kn, ptr %.sroa.414.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %.val = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.kv = icmp eq i64 %.val, 0
  br i1 %i.kv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayEECsjjpCCFGI3ul_14lance_encoding.exit85, label %bb.dx

bb.dx:                                            ; preds = %_RNvXs_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB4_9BlockInfoNtNtCscI6d9CVNmLh_4core7default7Default7default.exit
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val50 = load ptr, ptr %i.kw, align 8, !nonnull !75, !noundef !75
  %i.kx = shl nuw i64 %.val, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val50, i64 noundef %i.kx, i64 noundef range(i64 1, -9223372036854775807) 8) #63
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayEECsjjpCCFGI3ul_14lance_encoding.exit85

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayEECsjjpCCFGI3ul_14lance_encoding.exit85: ; preds = %bb.dx, %_RNvXs_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB4_9BlockInfoNtNtCscI6d9CVNmLh_4core7default7Default7default.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %tailrecurse.i.preheader

bb.dy:                                            ; preds = %bb.dw
  %i.ky = icmp eq ptr %i.km, null
  br i1 %i.ky, label %.noexc86, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.kz = atomicrmw sub ptr %i.km, i64 1 release, align 8, !noalias !48816
  %i.la = icmp eq i64 %i.kz, 1
  br i1 %i.la, label %bb.ea, label %.noexc86

bb.ea:                                            ; preds = %bb.dz
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.y)
          to label %.noexc86 unwind label %bb.co

.loopexit:                                        ; preds = %bb.dn, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  store i64 %i.jd, ptr %i.jh, align 8, !alias.scope !48814, !noalias !48815
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !48817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !48806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.lb = load ptr, ptr %i.jj, align 8, !nonnull !75, !noundef !75
  %i.lc = load i64, ptr %i.jk, align 8, !noundef !75
  invoke void @_RNvMsq_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB5_9DataBlock11from_arrays(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.lb, i64 noundef %i.lc, i64 noundef %3)
          to label %bb.ec unwind label %bb.eb

bb.eb:                                            ; preds = %.loopexit
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %.body87

.body87:                                          ; preds = %bb.ee, %bb.eb
  %eh.lpad-body88 = phi { ptr, i32 } [ %i.ld, %bb.eb ], [ %i.lg, %bb.ee ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 dereferenceable(24) %i.aa) #67
          to label %bb.ei unwind label %bb.co

bb.ec:                                            ; preds = %.loopexit
  %i.le = load i64, ptr %i.x, align 8, !range !76, !noundef !75
  %i.lf = icmp eq i64 %i.jn, %i.le
  br i1 %i.lf, label %bb.ed, label %bb.eg

bb.ed:                                            ; preds = %bb.ec
end_hunk_2
begin_hunk_3_@_RNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list14decode_offsets:bb.a
  %i.fg = and i64 %.sroa.0.0.i59, 63
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %reass.sub.i.i = and i64 %.sroa.0.0.i59, 4611686018427387840
  %i.fi = add nuw nsw i64 %reass.sub.i.i, 64      ; 2 uses
  %i.fj = icmp samesign ult i64 %i.fi, %.sroa.0.0.i59
  br i1 %i.fj, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.4.0.i.i = phi i64 [ %.sroa.0.0.i59, %bb.ac ], [ %i.fi, %bb.ad ]
  %i.fk = shl nuw nsw i64 %i.fe, 1
  %.sroa.0.0.i.i = call noundef i64 @llvm.umax.i64(i64 %i.fk, i64 %.sroa.4.0.i.i)
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.s, i64 noundef %.sroa.0.0.i.i)
          to label %.noexc60 unwind label %.loopexit114

.noexc60:                                         ; preds = %bb.ae
  %.pre.i = load i64, ptr %.sroa.6100.0..sroa_idx, align 8, !alias.scope !53150
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i

bb.af:                                            ; preds = %bb.ad
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1314, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1316) #66
          to label %.noexc61 unwind label %.loopexit.split-lp

.noexc61:                                         ; preds = %bb.af
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i: ; preds = %.noexc60, %bb.ab
  %i.fl = phi i64 [ %i.fb, %bb.ab ], [ %.pre.i, %.noexc60 ]
  %i.fm = load ptr, ptr %.sroa.5.0..sroa_idx, align 16, !alias.scope !53150, !nonnull !75, !noundef !75
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fl
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fn, i8 0, i64 %i.fd, i1 false)
  store i64 %.sroa.0.0.i59, ptr %.sroa.6100.0..sroa_idx, align 8, !alias.scope !53150
  br label %bb.aj

._crit_edge:                                      ; preds = %bb.ak, %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !53152)
  call void @llvm.experimental.noalias.scope.decl(metadata !53153)
  call void @llvm.experimental.noalias.scope.decl(metadata !53154)
  call void @llvm.experimental.noalias.scope.decl(metadata !53155)
  %i.fo = load ptr, ptr %i.o, align 8, !alias.scope !53156, !nonnull !75, !noundef !75
  %i.fp = atomicrmw sub ptr %i.fo, i64 1 release, align 8, !noalias !53156
  %i.fq = icmp eq i64 %i.fp, 1
  br i1 %i.fq, label %bb.ag, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECsjjpCCFGI3ul_14lance_encoding.exit

bb.ag:                                            ; preds = %._crit_edge
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECsjjpCCFGI3ul_14lance_encoding.exit unwind label %.loopexit115

.loopexit114:                                     ; preds = %bb.ae
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %bb.af
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp, %.loopexit114
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit114 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53157)
  call void @llvm.experimental.noalias.scope.decl(metadata !53158)
  call void @llvm.experimental.noalias.scope.decl(metadata !53159)
  call void @llvm.experimental.noalias.scope.decl(metadata !53160)
  %i.fr = load ptr, ptr %i.o, align 8, !alias.scope !53161, !nonnull !75, !noundef !75
  %i.fs = atomicrmw sub ptr %i.fr, i64 1 release, align 8, !noalias !53161
  %i.ft = icmp eq i64 %i.fs, 1
  br i1 %i.ft, label %bb.ai, label %.body

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body unwind label %bb.am

bb.aj:                                            ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, %.lr.ph
  store i64 %i.ex, ptr %i.br, align 16, !alias.scope !53150
  %i.fu = icmp ult i64 %i.ev, %i.dz
  br i1 %i.fu, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.al, %bb.aj
  %i.fv = icmp eq ptr %i.eu, %i.es
  br i1 %i.fv, label %._crit_edge, label %.lr.ph

bb.al:                                            ; preds = %bb.aj
  %i.fw = load ptr, ptr %.sroa.5.0..sroa_idx, align 16, !nonnull !75, !noundef !75
  %i.fx = trunc i64 %i.ew to i8
  %i.fy = and i8 %i.fx, 7
  %i.fz = shl nuw i8 1, %i.fy
  %i.ga = lshr i64 %i.ew, 3
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.ga ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 1, !noundef !75
  %i.gd = or i8 %i.gc, %i.fz
  store i8 %i.gd, ptr %i.gb, align 1
  br label %bb.ak

bb.am:                                            ; preds = %bb.bb, %bb.ai, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque8VecDequeINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %._crit_edge, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br i1 %i.cs, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECsjjpCCFGI3ul_14lance_encoding.exit
  %i.gf = load i64, ptr %i.cb, align 8, !noundef !75
  %.not45 = icmp ult i64 %i.gf, 8
  br i1 %.not45, label %.invoke, label %bb.ar

bb.ao:                                            ; preds = %bb.au, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECsjjpCCFGI3ul_14lance_encoding.exit
  %.sroa.0.1 = phi i64 [ %.sroa.0.0101137, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECsjjpCCFGI3ul_14lance_encoding.exit ], [ %i.gp, %bb.au ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !53162)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !53163
  %i.gg = load ptr, ptr %i.bx, align 8, !alias.scope !53162, !noalias !53164, !nonnull !75, !noundef !75 ; 2 uses
  %i.gh = atomicrmw add ptr %i.gg, i64 1 monotonic, align 8, !noalias !53163
  %i.gi = icmp slt i64 %i.gh, 0
  br i1 %i.gi, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gj = load ptr, ptr %i.cc, align 8, !alias.scope !53162, !noalias !53164, !noundef !75
  %i.gk = load i64, ptr %i.cb, align 8, !alias.scope !53162, !noalias !53164, !noundef !75
  store ptr %i.gg, ptr %i.g, align 8, !noalias !53163
  store ptr %i.gj, ptr %i.ci, align 8, !noalias !53163
  store i64 %i.gk, ptr %i.cj, align 8, !noalias !53163
  invoke fastcc void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferyE3newCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g, i64 noundef %.sroa.04.0, i64 noundef %.sroa.010.0)
          to label %bb.av unwind label %.loopexit115

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.trap()
  unreachable

bb.ar:                                            ; preds = %bb.an
  %i.gl = load i64, ptr %i.u, align 8, !noundef !75 ; 2 uses
  %i.gm = icmp eq i64 %i.gl, 0
  br i1 %i.gm, label %.invoke208, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gn = load ptr, ptr %i.cc, align 8, !noundef !75
  %i.go = load i64, ptr %i.gn, align 8, !noundef !75
  %i.gp = urem i64 %i.go, %i.gl                   ; 2 uses
  %i.gq = load i64, ptr %i.be, align 8, !alias.scope !53165, !noundef !75 ; 3 uses
  %i.gr = load i64, ptr %i.t, align 8, !range !76, !alias.scope !53165, !noundef !75
  %i.gs = icmp eq i64 %i.gq, %i.gr
  br i1 %i.gs, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs5GHimaBI8WD_10num_bigint(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.au unwind label %.loopexit115

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.gt = load ptr, ptr %i.bd, align 8, !alias.scope !53165, !nonnull !75, !noundef !75
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gq
  store i64 %i.gp, ptr %i.gu, align 8
  %i.gv = add i64 %i.gq, 1
  store i64 %i.gv, ptr %i.be, align 8, !alias.scope !53165
  br label %bb.ao

bb.av:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !53163
  %i.gw = load ptr, ptr %i.ck, align 8, !noundef !75
  %i.gx = load i64, ptr %i.cl, align 8, !noundef !75 ; 2 uses
  %i.gy = lshr i64 %i.gx, 3                       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53166)
  %i.gz = icmp ult i64 %i.gx, 16                  ; 2 uses
  %i.ha = add nsw i64 %i.gy, -1
  %.sink1.i.i.i = select i1 %i.gz, i64 0, i64 %i.ha ; 2 uses
  %i.hb = load i64, ptr %i.be, align 8, !alias.scope !53167, !noalias !53168, !noundef !75 ; 3 uses
  %i.hc = load i64, ptr %i.t, align 8, !range !76, !alias.scope !53167, !noalias !53168, !noundef !75
  %i.hd = sub i64 %i.hc, %i.hb
  %i.he = icmp ugt i64 %.sink1.i.i.i, %i.hd
  br i1 %i.he, label %bb.aw, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i, !prof !81

bb.aw:                                            ; preds = %bb.av
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef %i.hb, i64 noundef %.sink1.i.i.i, i64 noundef 8, i64 noundef 8)
          to label %.noexc73 unwind label %bb.ba

.noexc73:                                         ; preds = %bb.aw
  %.pre.i72 = load i64, ptr %i.be, align 8, !alias.scope !53166, !noalias !53168
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %.noexc73, %bb.av
  %i.hf = phi i64 [ %i.hb, %bb.av ], [ %.pre.i72, %.noexc73 ] ; 2 uses
  %i.hg = load ptr, ptr %i.bd, align 8, !alias.scope !53166, !noalias !53168, !nonnull !75, !noundef !75
  br i1 %i.gz, label %.loopexit, label %.lr.ph.split.i.i.i.i.preheader

.lr.ph.split.i.i.i.i.preheader:                   ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i
  %.pre161 = load i64, ptr %i.u, align 8, !noalias !53169 ; 3 uses
  %i.hh = icmp eq i64 %.pre161, 0
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.split.i.i.i.i.preheader, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyuNCNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list14decode_offsetss_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callyNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3s_3VecyE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter7WindowsyEBZ_EE0E0E0B19_.exit.i.i.i.i
  %.sroa.0.2 = phi i64 [ %i.hw, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyuNCNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list14decode_offsetss_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callyNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3s_3VecyE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter7WindowsyEBZ_EE0E0E0B19_.exit.i.i.i.i ], [ %.sroa.0.1, %.lr.ph.split.i.i.i.i.preheader ]
  %i.hi = phi i64 [ %i.hy, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyuNCNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list14decode_offsetss_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callyNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3s_3VecyE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter7WindowsyEBZ_EE0E0E0B19_.exit.i.i.i.i ], [ %i.hf, %.lr.ph.split.i.i.i.i.preheader ] ; 3 uses
  %i.hj = phi i64 [ %i.hl, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyuNCNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list14decode_offsetss_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callyNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3s_3VecyE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter7WindowsyEBZ_EE0E0E0B19_.exit.i.i.i.i ], [ %i.gy, %.lr.ph.split.i.i.i.i.preheader ]
  %i.hk = phi ptr [ %i.hm, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyuNCNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list14decode_offsetss_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callyNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3s_3VecyE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter7WindowsyEBZ_EE0E0E0B19_.exit.i.i.i.i ], [ %i.gw, %.lr.ph.split.i.i.i.i.preheader ] ; 3 uses
  %i.hl = add nsw i64 %i.hj, -1                   ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53170)
  call void @llvm.experimental.noalias.scope.decl(metadata !53171)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !53172
  store ptr %i.hk, ptr %i.f, align 8, !noalias !53173
  store i64 2, ptr %i.cm, align 8, !noalias !53173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !53173
  br i1 %i.hh, label %.split.us.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.split.i.i.i.i
  %i.hn = load i64, ptr %i.hk, align 8, !alias.scope !53174, !noalias !53175, !noundef !75
  %i.ho = urem i64 %i.hn, %.pre161                ; 3 uses
  store i64 %i.ho, ptr %i.e, align 8, !noalias !53173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !53173
  %i.hp = load i64, ptr %i.hm, align 8, !alias.scope !53174, !noalias !53175, !noundef !75
  %i.hq = urem i64 %i.hp, %.pre161                ; 3 uses
  store i64 %i.hq, ptr %i.d, align 8, !noalias !53173
  %i.hr = icmp ult i64 %i.hq, %i.ho
  br i1 %i.hr, label %bb.ay, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyuNCNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list14decode_offsetss_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callyNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3s_3VecyE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter7WindowsyEBZ_EE0E0E0B19_.exit.i.i.i.i, !prof !81

.split.us.i.i.i.i:                                ; preds = %.lr.ph.split.i.i.i.i
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1001) #66
          to label %.noexc10.i.i.i.i unwind label %bb.az, !noalias !53176

.noexc10.i.i.i.i:                                 ; preds = %.split.us.i.i.i.i
  unreachable

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !53173
  store ptr %i.f, ptr %i.c, align 8, !noalias !53173
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRSyNtB6_5Debug3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !53173
  %i.hs = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.u, ptr %i.hs, align 8, !noalias !53173
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !53173
  %i.ht = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.e, ptr %i.ht, align 8, !noalias !53173
  %.sroa.410.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !53173
  %i.hu = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.d, ptr %i.hu, align 8, !noalias !53173
  %.sroa.414.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !53173
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @1002, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1003) #66
          to label %.noexc12.i.i.i.i unwind label %bb.az, !noalias !53176

.noexc12.i.i.i.i:                                 ; preds = %bb.ay
  unreachable

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyuNCNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list14decode_offsetss_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callyNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3s_3VecyE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter7WindowsyEBZ_EE0E0E0B19_.exit.i.i.i.i: ; preds = %bb.ax
  %i.hv = sub nuw i64 %i.hq, %i.ho
  %i.hw = add i64 %i.hv, %.sroa.0.2               ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !53173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !53173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !53172
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.hi
  store i64 %i.hw, ptr %i.hx, align 8, !noalias !53177
  %i.hy = add i64 %i.hi, 1                        ; 2 uses
  %i.hz = icmp ult i64 %i.hl, 2
  br i1 %i.hz, label %.loopexit, label %.lr.ph.split.i.i.i.i

bb.az:                                            ; preds = %bb.ay, %.split.us.i.i.i.i
  %i.ia = landingpad { ptr, i32 }
          cleanup
  store i64 %i.hi, ptr %i.be, align 8, !alias.scope !53166, !noalias !53178
  br label %.body74

bb.ba:                                            ; preds = %bb.aw
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.body74

.body74:                                          ; preds = %bb.az, %bb.ba
  %eh.lpad-body75 = phi { ptr, i32 } [ %i.ib, %bb.ba ], [ %i.ia, %bb.az ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53179)
  call void @llvm.experimental.noalias.scope.decl(metadata !53180)
  call void @llvm.experimental.noalias.scope.decl(metadata !53181)
  call void @llvm.experimental.noalias.scope.decl(metadata !53182)
  %i.ic = load ptr, ptr %i.n, align 8, !alias.scope !53183, !nonnull !75, !noundef !75
  %i.id = atomicrmw sub ptr %i.ic, i64 1 release, align 8, !noalias !53183
  %i.ie = icmp eq i64 %i.id, 1
  br i1 %i.ie, label %bb.bb, label %.body

bb.bb:                                            ; preds = %.body74
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body unwind label %bb.am

.loopexit:                                        ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyuNCNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list14decode_offsetss_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callyNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3s_3VecyE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter7WindowsyEBZ_EE0E0E0B19_.exit.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i
  %.sroa.0.3 = phi i64 [ %.sroa.0.1, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.hw, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyuNCNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list14decode_offsetss_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callyNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3s_3VecyE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter7WindowsyEBZ_EE0E0E0B19_.exit.i.i.i.i ]
  %.val7.i.i.i.i = phi i64 [ %i.hf, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.hy, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyuNCNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list14decode_offsetss_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callyNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3s_3VecyE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter7WindowsyEBZ_EE0E0E0B19_.exit.i.i.i.i ]
  store i64 %.val7.i.i.i.i, ptr %i.be, align 8, !alias.scope !53166, !noalias !53178
  call void @llvm.experimental.noalias.scope.decl(metadata !53184)
  call void @llvm.experimental.noalias.scope.decl(metadata !53185)
  call void @llvm.experimental.noalias.scope.decl(metadata !53186)
  call void @llvm.experimental.noalias.scope.decl(metadata !53187)
  %i.if = load ptr, ptr %i.n, align 8, !alias.scope !53188, !nonnull !75, !noundef !75
  %i.ig = atomicrmw sub ptr %i.if, i64 1 release, align 8, !noalias !53188
  %i.ih = icmp eq i64 %i.ig, 1
  br i1 %i.ih, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.loopexit
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.bd unwind label %.loopexit115

bb.bd:                                            ; preds = %bb.bc, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ii = load atomic i64, ptr @_RNvCs91CWldrXK7B_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ij = icmp ult i64 %i.ii, 6
  call void @llvm.assume(i1 %i.ij)
  %i.ik = icmp samesign ugt i64 %i.ii, 4
  br i1 %i.ik, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.q, ptr %i.m, align 8
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.428.0..sroa_idx, align 8
  store ptr %i.p, ptr %i.cn, align 8
  store ptr @_RNvXs_NtNtCscI6d9CVNmLh_4core3ops5rangeINtB4_5RangeyENtNtB8_3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.432.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !53189
  store i64 0, ptr %i.b, align 8, !noalias !53189
  store ptr @1007, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i, align 8, !noalias !53189
  store i64 45, ptr %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !53189
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !53189
  store ptr @696, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !noalias !53189
  store i64 54, ptr %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !53189
  store i64 5, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !53189
  store ptr @1007, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !53189
  store i64 45, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !53189
  store i32 1, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !53189
  store i32 313, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !noalias !53189
  store ptr @2472, ptr %.sroa.13.0..sroa_idx.i.i, align 8, !noalias !53189
  store ptr %i.m, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !noalias !53189
  invoke void @_RNvXs0_NtCs91CWldrXK7B_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b)
          to label %bb.bg unwind label %.loopexit115

bb.bf:                                            ; preds = %bb.bd, %bb.bg
  %i.il = trunc i64 %.sroa.010.0 to i32
  %i.im = add i32 %.sroa.0.0139, %i.il
  %i.in = load i64, ptr %i.p, align 8, !noundef !75 ; 2 uses
  %i.io = load i64, ptr %i.cd, align 8, !noundef !75 ; 2 uses
  %.not46 = icmp ult i64 %i.in, %i.io
  br i1 %.not46, label %bb.bh, label %bb.bj

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !53189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.bf

bb.bh:                                            ; preds = %bb.bf
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.02.0138, i64 16
  %i.iq = load i64, ptr %i.ip, align 8, !noundef !75 ; 2 uses
  %i.ir = add i64 %i.iq, %i.in
  %i.is = add i64 %i.iq, %i.io
  %i.it = load i64, ptr %i.bz, align 8, !alias.scope !53190, !noundef !75 ; 2 uses
  %i.iu = load i64, ptr %i.r, align 8, !range !76, !alias.scope !53190, !noundef !75 ; 2 uses
  %i.iv = icmp eq i64 %i.it, %i.iu
  br i1 %i.iv, label %bb.bi, label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE13push_back_mutCsjjpCCFGI3ul_14lance_encoding.exit

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE4growCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %.noexc84 unwind label %.loopexit115

.noexc84:                                         ; preds = %bb.bi
  %.pre.i83 = load i64, ptr %i.bz, align 8, !alias.scope !53190
  %.pre6.i = load i64, ptr %i.r, align 8, !range !76, !alias.scope !53190
  br label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE13push_back_mutCsjjpCCFGI3ul_14lance_encoding.exit

_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE13push_back_mutCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.bh, %.noexc84
  %i.iw = phi i64 [ %.pre6.i, %.noexc84 ], [ %i.iu, %bb.bh ] ; 2 uses
  %i.ix = phi i64 [ %.pre.i83, %.noexc84 ], [ %i.it, %bb.bh ] ; 2 uses
  %i.iy = add i64 %i.ix, 1
  store i64 %i.iy, ptr %i.bz, align 8, !alias.scope !53190
  %i.iz = load i64, ptr %i.by, align 8, !alias.scope !53190, !noundef !75
  %i.ja = add i64 %i.iz, %i.ix                    ; 2 uses
  %.not.i82 = icmp ult i64 %i.ja, %i.iw
  %i.jb = select i1 %.not.i82, i64 0, i64 %i.iw
  %.sroa.03.0.i = sub nuw i64 %i.ja, %i.jb
  %i.jc = load ptr, ptr %i.ca, align 8, !alias.scope !53190, !nonnull !75, !noundef !75
  %i.jd = getelementptr inbounds nuw [16 x i8], ptr %i.jc, i64 %.sroa.03.0.i ; 2 uses
  store i64 %i.ir, ptr %i.jd, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  store i64 %i.is, ptr %i.je, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE13push_back_mutCsjjpCCFGI3ul_14lance_encoding.exit, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.jf = icmp eq ptr %i.co, %i.ad
  br i1 %i.jf, label %._crit_edge142, label %bb.l

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsjjpCCFGI3ul_14lance_encoding.exit86: ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !53144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false)
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jg, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jh, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false)
end_hunk_3
begin_hunk_4_@_RNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB5_43PackedStructFixedWidthMiniBlockDecompressorNtNtBb_11compression21MiniBlockDecompressor10decompress:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i64 56, i1 false)
  store i64 %i.u, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.z = icmp ne i64 %i.u, -9223372036854775800
  call void @llvm.assume(i1 %i.z)
  %.not139 = icmp eq i64 %i.u, -9223372036854775804 ; 2 uses
  br i1 %.not139, label %bb.f, label %bb.i, !prof !78

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx, i64 48, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !75, !noundef !75 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !75 ; 16 uses
  %.idx = shl nuw nsw i64 %i.ad, 3                ; 4 uses
  %i.ae = icmp eq i64 %i.ad, 0                    ; 2 uses
  br i1 %i.ae, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !63783
  %i.af = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.idx, i64 noundef range(i64 1, 17) 8) #63, !noalias !63783 ; 6 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.h, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.ad, 4
  br i1 %min.iters.check, label %.preheader.i.i.i.preheader279, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i.i.preheader
  %n.vec = and i64 %i.ad, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <2 x i64>, ptr %i.ah, align 8, !noalias !63784
  %wide.load266 = load <2 x i64>, ptr %i.ai, align 8, !noalias !63784
  %i.aj = lshr <2 x i64> %wide.load, splat (i64 3)
  %i.ak = lshr <2 x i64> %wide.load266, splat (i64 3)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x i64> %i.aj, ptr %i.al, align 8, !noalias !63785
  store <2 x i64> %i.ak, ptr %i.am, align 8, !noalias !63785
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !63705

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit.thread, label %.preheader.i.i.i.preheader279

.preheader.i.i.i.preheader279:                    ; preds = %.preheader.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %.idx) #66
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.h
  unreachable

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader279, %.preheader.i.i.i
  %i.ao = phi i64 [ %i.as, %.preheader.i.i.i ], [ %.ph, %.preheader.i.i.i.preheader279 ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ao
  %.val16.i.i.i.i.i.i = load i64, ptr %i.ap, align 8, !noalias !63784, !noundef !75
  %i.aq = lshr i64 %.val16.i.i.i.i.i.i, 3
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ao
  store i64 %i.aq, ptr %i.ar, align 8, !noalias !63785
  %i.as = add nuw i64 %i.ao, 1                    ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.ad
  br i1 %i.at, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit.thread, label %.preheader.i.i.i, !llvm.loop !63706

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @2820, ptr noundef nonnull inttoptr (i64 105 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2821) #66
          to label %bb.ae unwind label %bb.w

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.n, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit85, %bb.j
  %.pn48.pn.pn = phi { ptr, i32 } [ %i.au, %bb.j ], [ %.pn48.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit85 ], [ %.pn48.pn, %bb.n ] ; 2 uses
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockEBF_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g) #67
          to label %.body.thread unwind label %bb.z

bb.j:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit

_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit: ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !noundef !75 ; 2 uses
  %i.ax = and i64 %i.aw, 7
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.p, label %bb.m, !prof !78

_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit.thread: ; preds = %.preheader.i.i.i, %middle.block
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !noundef !75 ; 2 uses
  %i.bb = and i64 %i.ba, 7
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.k, label %bb.m, !prof !78

bb.k:                                             ; preds = %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit.thread
  %i.bd = icmp ult i64 %i.ad, 1152921504606846976
  call void @llvm.assume(i1 %i.bd)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !63786
  %i.be = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %.idx, i64 noundef range(i64 1, 17) 8) #63, !noalias !63786 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %.idx) #66
          to label %.noexc54 unwind label %bb.o

.noexc54:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit.thread, %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit
  %.sroa.10.0.i10.i230 = phi ptr [ %i.af, %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit.thread ], [ inttoptr (i64 8 to ptr), %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit ]
  %.sroa.4.0.i11.i226 = phi i64 [ %i.ad, %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit.thread ], [ 0, %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2818, i64 noundef 60, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2819) #66
          to label %bb.ae unwind label %bb.o

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit85: ; preds = %bb.az, %.thread112, %bb.o
  %.sroa.10.0.i10.i228 = phi ptr [ %.sroa.10.0.i10.i229, %bb.o ], [ %.sroa.10.0.i10.i231236, %.thread112 ], [ %.sroa.10.0.i10.i231236, %bb.az ]
  %.sroa.4.0.i11.i224 = phi i64 [ %.sroa.4.0.i11.i225, %bb.o ], [ %.sroa.4.0.i11.i227238, %.thread112 ], [ %.sroa.4.0.i11.i227238, %bb.az ] ; 2 uses
  %.pn48.pn = phi { ptr, i32 } [ %i.bi, %bb.o ], [ %.pn48, %.thread112 ], [ %.pn48, %bb.az ] ; 2 uses
  %i.bg = icmp eq i64 %.sroa.4.0.i11.i224, 0
  br i1 %i.bg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit, label %bb.n

bb.n:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit85
  %i.bh = shl nuw i64 %.sroa.4.0.i11.i224, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i10.i228, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !63787
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit

bb.o:                                             ; preds = %bb.l, %bb.m
  %.sroa.10.0.i10.i229 = phi ptr [ %i.af, %bb.l ], [ %.sroa.10.0.i10.i230, %bb.m ]
  %.sroa.4.0.i11.i225 = phi i64 [ %i.ad, %bb.l ], [ %.sroa.4.0.i11.i226, %bb.m ]
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit85

bb.p:                                             ; preds = %bb.k, %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit
  %.in = phi i64 [ %i.aw, %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit ], [ %i.ba, %bb.k ]
  %.sroa.4.0.i11.i227238 = phi i64 [ 0, %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit ], [ %i.ad, %bb.k ] ; 7 uses
  %.sroa.10.0.i10.i231236 = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit ], [ %i.af, %bb.k ] ; 5 uses
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_43PackedStructFixedWidthMiniBlockDecompressorNtNtB31_11compression21MiniBlockDecompressor10decompress0EE9from_iterB31_.exit ], [ %i.be, %bb.k ] ; 5 uses
  %i.bj = lshr exact i64 %.in, 3
  %i.bk = add nsw i64 %i.ad, -1                   ; 2 uses
  %.not175 = icmp eq i64 %i.bk, 0
  br i1 %.not175, label %._crit_edge.thread, label %.lr.ph.preheader

._crit_edge.thread:                               ; preds = %bb.p
  store i64 0, ptr %i.b, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.bm, align 8
  br label %.lr.ph173

.lr.ph.preheader:                                 ; preds = %bb.p
  %i.bn = call i64 @llvm.usub.sat.i64(i64 %i.ad, i64 1)
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.bc
  store i64 0, ptr %i.b, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.bp, align 8
  br i1 %i.ae, label %._crit_edge174, label %.lr.ph173

.lr.ph173:                                        ; preds = %._crit_edge.thread, %._crit_edge
  %i.bq = phi ptr [ %i.bm, %._crit_edge.thread ], [ %i.bp, %._crit_edge ] ; 2 uses
  %i.br = phi ptr [ %i.bl, %._crit_edge.thread ], [ %i.bo, %._crit_edge ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %.not177 = icmp eq i64 %3, 0
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.4.0..sroa_idx.i63 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i64 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  br label %bb.aa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bc
  %.sroa.030.0167 = phi i64 [ %i.ca, %bb.bc ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.ca = add nuw nsw i64 %.sroa.030.0167, 1      ; 4 uses
  %exitcond.not = icmp eq i64 %.sroa.030.0167, %i.ad
  br i1 %exitcond.not, label %.invoke, label %bb.bb

._crit_edge174:                                   ; preds = %bb.ap, %._crit_edge
  %i.cb = invoke noalias noundef nonnull ptr @_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB5_9BlockInfo3new()
          to label %_RNvXs_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB4_9BlockInfoNtNtCscI6d9CVNmLh_4core7default7Default7default.exit unwind label %bb.q

bb.q:                                             ; preds = %._crit_edge174
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockEEB1c_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #67
          to label %.thread112 unwind label %bb.z

_RNvXs_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB4_9BlockInfoNtNtCscI6d9CVNmLh_4core7default7Default7default.exit: ; preds = %._crit_edge174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cb, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.520.0..sroa_idx, align 8
  %cond = icmp eq i64 %.sroa.4.0.i11.i227238, 0
  br i1 %cond, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit61, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit58

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit58: ; preds = %_RNvXs_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB4_9BlockInfoNtNtCscI6d9CVNmLh_4core7default7Default7default.exit
  %i.cd = shl nuw nsw i64 %.sroa.4.0.i11.i227238, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i, i64 noundef %i.cd, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !63788
  %i.ce = shl nuw nsw i64 %.sroa.4.0.i11.i227238, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i10.i231236, i64 noundef %i.ce, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !63789
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit61

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit61: ; preds = %_RNvXs_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB4_9BlockInfoNtNtCscI6d9CVNmLh_4core7default7Default7default.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit58
  call void @llvm.experimental.noalias.scope.decl(metadata !63790)
  call void @llvm.experimental.noalias.scope.decl(metadata !63791)
  call void @llvm.experimental.noalias.scope.decl(metadata !63792)
  call void @llvm.experimental.noalias.scope.decl(metadata !63793)
  call void @llvm.experimental.noalias.scope.decl(metadata !63794)
  %i.cf = load ptr, ptr %i.g, align 8, !alias.scope !63795, !nonnull !75, !noundef !75
  %i.cg = atomicrmw sub ptr %i.cf, i64 1 release, align 8, !noalias !63795
  %i.ch = icmp eq i64 %i.cg, 1
  br i1 %i.ch, label %bb.r, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i

bb.r:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit61
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !63796)
  call void @llvm.experimental.noalias.scope.decl(metadata !63797)
  call void @llvm.experimental.noalias.scope.decl(metadata !63798)
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !63799, !nonnull !75, !noundef !75
  %i.cl = atomicrmw sub ptr %i.ck, i64 1 release, align 8, !noalias !63800
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.t, label %.body

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.cj)
          to label %.body unwind label %bb.v

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i: ; preds = %bb.r, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit61
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !63801)
  call void @llvm.experimental.noalias.scope.decl(metadata !63802)
  call void @llvm.experimental.noalias.scope.decl(metadata !63803)
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !63804, !nonnull !75, !noundef !75
  %i.cp = atomicrmw sub ptr %i.co, i64 1 release, align 8, !noalias !63805
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.u, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockEBF_.exit

bb.u:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.cn)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockEBF_.exit unwind label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

.body:                                            ; preds = %bb.w, %bb.t, %bb.s
  %.pn48.pn.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.s ], [ %i.cy, %bb.w ], [ %i.ci, %bb.t ] ; 3 uses
  %i.cs = load i64, ptr %i.j, align 8, !range !149, !noundef !75 ; 2 uses
  %i.ct = icmp ne i64 %i.cs, -9223372036854775800
  call void @llvm.assume(i1 %i.ct)
  %i.cu = icmp eq i64 %i.cs, -9223372036854775804
  br i1 %i.cu, label %bb.bd, label %bb.be

.body.thread:                                     ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit
  %i.cv = load i64, ptr %i.j, align 8, !range !149, !noundef !75 ; 2 uses
  %i.cw = icmp ne i64 %i.cv, -9223372036854775800
  call void @llvm.assume(i1 %i.cw)
  %i.cx = icmp eq i64 %i.cv, -9223372036854775804
  br i1 %i.cx, label %.thread, label %bb.be

bb.w:                                             ; preds = %bb.u, %bb.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockEBF_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cz = load i64, ptr %i.j, align 8, !range !149, !noundef !75 ; 2 uses
  %i.da = icmp ne i64 %i.cz, -9223372036854775800
  call void @llvm.assume(i1 %i.da)
  %i.db = icmp eq i64 %i.cz, -9223372036854775804
  br i1 %i.db, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockEBF_.exit
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockEBF_(ptr noalias noundef align 8 dereferenceable(80) %i.j)
  br label %bb.y

bb.y:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockEBF_.exit, %bb.x, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.z:                                             ; preds = %bb.av, %bb.al, %.thread107, %bb.bf, %bb.be, %.thread123, %bb.q, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsjjpCCFGI3ul_14lance_encoding.exit
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

bb.aa:                                            ; preds = %bb.ap, %.lr.ph173
  %.sroa.032.0171 = phi i64 [ 0, %.lr.ph173 ], [ %i.dd, %bb.ap ] ; 4 uses
  %i.dd = add nuw nsw i64 %.sroa.032.0171, 1      ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i10.i231236, i64 %.sroa.032.0171 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !noundef !75
  %i.dg = mul i64 %i.df, %3                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.not.i = icmp slt i64 %i.dg, 0
  br i1 %.not.i, label %bb.af, label %bb.ab, !prof !80

bb.ab:                                            ; preds = %bb.aa
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !63806
  %i.di = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.dg, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !63806 ; 2 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dk = ptrtoint ptr %i.di to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit

.thread109:                                       ; preds = %bb.af
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.thread123

bb.ae:                                            ; preds = %bb.af, %bb.m, %bb.i, %bb.c
  unreachable

bb.af:                                            ; preds = %bb.aa, %bb.ac
  %.sroa.4101.0.ph = phi i64 [ 1, %bb.ac ], [ 0, %bb.aa ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4101.0.ph, i64 %i.dg) #66
          to label %bb.ae unwind label %.thread109

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.ab, %bb.ad
  %.sroa.10103.0 = phi i64 [ %i.dk, %bb.ad ], [ 1, %bb.ab ]
  %i.dm = inttoptr i64 %.sroa.10103.0 to ptr      ; 3 uses
  store i64 %i.dg, ptr %i.f, align 8
  store ptr %i.dm, ptr %i.bs, align 8
  store i64 0, ptr %i.bt, align 8
  br i1 %.not177, label %._crit_edge170, label %.lr.ph169

.lr.ph169:                                        ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i, i64 %.sroa.032.0171
  br label %bb.aq

._crit_edge170.loopexit:                          ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit80
  %.sroa.097.0.copyload.pre = load i64, ptr %i.f, align 8
  %.sroa.498.0.copyload.pre = load ptr, ptr %i.bs, align 8
  br label %._crit_edge170

._crit_edge170:                                   ; preds = %._crit_edge170.loopexit, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit
  %.sroa.599.0.copyload = phi i64 [ %i.fh, %._crit_edge170.loopexit ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit ] ; 3 uses
  %.sroa.498.0.copyload = phi ptr [ %.sroa.498.0.copyload.pre, %._crit_edge170.loopexit ], [ %i.dm, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit ] ; 2 uses
  %.sroa.097.0.copyload = phi i64 [ %.sroa.097.0.copyload.pre, %._crit_edge170.loopexit ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !63807)
  %i.do = icmp sgt i64 %.sroa.599.0.copyload, -1
  call void @llvm.assume(i1 %i.do)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !63808
  store i64 1, ptr %i.a, align 8, !noalias !63808
  store i64 1, ptr %i.bx, align 8, !noalias !63808
  store ptr %.sroa.498.0.copyload, ptr %i.by, align 8, !noalias !63808
  store i64 %.sroa.599.0.copyload, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !63808
  store ptr null, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !63808
  store i64 1, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !63808
  store i64 %.sroa.097.0.copyload, ptr %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !63808
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !63809
  %i.dp = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !63809 ; 4 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.ag, label %bb.aj, !prof !77

bb.ag:                                            ; preds = %._crit_edge170
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #66
          to label %.noexc.i unwind label %bb.ah, !noalias !63808

.noexc.i:                                         ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #67
          to label %.thread123 unwind label %bb.ai, !noalias !63808

bb.ai:                                            ; preds = %bb.ah
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !63808
  unreachable

.thread128.loopexit:                              ; preds = %bb.ax, %bb.as
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread119

.thread128.loopexit.split-lp:                     ; preds = %bb.ar
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread119

bb.aj:                                            ; preds = %._crit_edge170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dp, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !63808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !63808
  store ptr %i.dp, ptr %i.c, align 8, !alias.scope !63807, !noalias !63810
  store ptr %.sroa.498.0.copyload, ptr %.sroa.4.0..sroa_idx.i63, align 8, !alias.scope !63807, !noalias !63810
  store i64 %.sroa.599.0.copyload, ptr %.sroa.5.0..sroa_idx.i64, align 8, !alias.scope !63807, !noalias !63810
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.sroa.032.0171
  %i.du = load i64, ptr %i.dt, align 8, !noundef !75
  %i.dv = invoke noalias noundef nonnull ptr @_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB5_9BlockInfo3new()
          to label %_RNvXs_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB4_9BlockInfoNtNtCscI6d9CVNmLh_4core7default7Default7default.exit68 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = atomicrmw sub ptr %i.dp, i64 1 release, align 8, !noalias !63811
  %i.dy = icmp eq i64 %i.dx, 1
  br i1 %i.dy, label %bb.al, label %.thread123

bb.al:                                            ; preds = %bb.ak
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.thread123 unwind label %bb.z

_RNvXs_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB4_9BlockInfoNtNtCscI6d9CVNmLh_4core7default7Default7default.exit68: ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.dv, ptr %.sroa.412.0..sroa_idx, align 8
  store i64 %i.du, ptr %.sroa.513.0..sroa_idx, align 8
  store i64 %3, ptr %.sroa.614.0..sroa_idx, align 8
  store i64 -9223372036854775804, ptr %i.d, align 8
  %i.dz = load i64, ptr %i.bq, align 8, !noundef !75 ; 3 uses
  %i.ea = load i64, ptr %i.b, align 8, !range !76, !noundef !75
  %i.eb = icmp eq i64 %i.dz, %i.ea
  br i1 %i.eb, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %_RNvXs_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB4_9BlockInfoNtNtCscI6d9CVNmLh_4core7default7Default7default.exit68
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.ap unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockEBF_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.d) #67
          to label %.thread123 unwind label %bb.ao, !noalias !63812

bb.ao:                                            ; preds = %bb.an
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !63812
  unreachable

bb.ap:                                            ; preds = %bb.am, %_RNvXs_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB4_9BlockInfoNtNtCscI6d9CVNmLh_4core7default7Default7default.exit68
  %i.ee = load ptr, ptr %i.br, align 8, !nonnull !75, !noundef !75
  %i.ef = getelementptr inbounds nuw [80 x i8], ptr %i.ee, i64 %i.dz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ef, ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 80, i1 false), !noalias !63812
  %i.eg = add i64 %i.dz, 1
  store i64 %i.eg, ptr %i.bq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond203.not = icmp eq i64 %i.dd, %i.ad
  br i1 %exitcond203.not, label %._crit_edge174, label %bb.aa

bb.aq:                                            ; preds = %.lr.ph169, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit80
  %i.eh = phi ptr [ %i.dm, %.lr.ph169 ], [ %i.ff, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit80 ] ; 2 uses
  %i.ei = phi i64 [ 0, %.lr.ph169 ], [ %i.fh, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit80 ] ; 5 uses
  %.sroa.034.0168 = phi i64 [ 0, %.lr.ph169 ], [ %i.ej, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit80 ] ; 2 uses
  %i.ej = add nuw i64 %.sroa.034.0168, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ek = load i64, ptr %i.dn, align 8, !noundef !75
  %i.el = mul i64 %.sroa.034.0168, %i.bj
  %i.em = add i64 %i.ek, %i.el                    ; 2 uses
  %i.en = load i64, ptr %i.de, align 8, !noundef !75 ; 2 uses
  %i.eo = load i64, ptr %i.bu, align 8, !alias.scope !63813, !noalias !63814, !noundef !75
  %i.ep = call i64 @llvm.uadd.sat.i64(i64 %i.em, i64 %i.en)
  %.not.i72 = icmp ugt i64 %i.ep, %i.eo
  br i1 %.not.i72, label %bb.ar, label %bb.as, !prof !81

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @1304, ptr noundef nonnull inttoptr (i64 149 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1305) #66
          to label %.noexc73 unwind label %.thread128.loopexit.split-lp

.noexc73:                                         ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.aq
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, i64 noundef %i.em, i64 noundef %i.en)
          to label %_RNvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB2_11LanceBuffer17slice_with_length.exit unwind label %.thread128.loopexit

_RNvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB2_11LanceBuffer17slice_with_length.exit: ; preds = %bb.as
  %i.eq = load ptr, ptr %i.bv, align 8, !nonnull !75, !noundef !75
  %i.er = load i64, ptr %i.bw, align 8, !noundef !75 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !63815)
  %i.es = load i64, ptr %i.f, align 8, !range !76, !alias.scope !63816, !noundef !75
  %i.et = sub i64 %i.es, %i.ei
  %i.eu = icmp ugt i64 %i.er, %i.et
  br i1 %i.eu, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i, !prof !81

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i: ; preds = %_RNvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB2_11LanceBuffer17slice_with_length.exit
end_hunk_4
begin_hunk_5_@_RNvXs1_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB7_4data18VariableWidthBlockNtB5_11ComputeStat12compute_stat:bb.a
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !64375)
  %.val.i = load ptr, ptr %i.aa, align 8, !alias.scope !64375, !noalias !64374, !nonnull !75, !align !139, !noundef !75 ; 2 uses
  %i.ac = atomicrmw sub ptr %.val.i, i32 1 release, align 4, !noalias !64376
  %i.ad = add i32 %i.ac, -1                       ; 2 uses
  %i.ae = and i32 %i.ad, -1073741825
  %or.cond.not.i.i.i = icmp eq i32 %i.ae, -2147483648
  br i1 %or.cond.not.i.i.i, label %bb.f, label %common.resume, !prof !140

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.val.i, i32 noundef %i.ad)
          to label %common.resume unwind label %bb.h

bb.g:                                             ; preds = %bb.d
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !64374
  unreachable

common.resume:                                    ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit, %bb.bl, %.thread, %bb.m, %bb.f, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.az, %bb.m ], [ %i.ab, %bb.f ], [ %i.ab, %bb.e ], [ %.pn.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit ], [ %.pn.pn46, %bb.bl ], [ %.pn.pn46, %.thread ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBQ_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtBM_11PoisonErrorBH_EE6unwrapB2s_.exit: ; preds = %_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !75
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %bb.am, !prof !78

bb.i:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBQ_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtBM_11PoisonErrorBH_EE6unwrapB2s_.exit
  %i.aj = atomicrmw sub ptr %i.t, i32 1 release, align 4
  %i.ak = add i32 %i.aj, -1                       ; 2 uses
  %i.al = and i32 %i.ak, -1073741825
  %or.cond.not.i.i = icmp eq i32 %i.al, -2147483648
  br i1 %or.cond.not.i.i, label %bb.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEEB2m_.exit, !prof !140

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.t, i32 noundef %i.ak)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEEB2m_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEEB2m_.exit: ; preds = %bb.i, %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noundef !75
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63
  %i.aq = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #63 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.k, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, !prof !77

bb.k:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEEB2m_.exit
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #66
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEEB2m_.exit
  %i.as = add i64 %i.ap, %i.an
  store i64 %i.as, ptr %i.aq, align 8
  store i64 1, ptr %i.o, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.aq, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 1, ptr %i.au, align 8
  call void @_RNvXsI_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecyEE4from(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 1, ptr %i.k, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 1, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aw, ptr noundef nonnull align 8 dereferenceable(96) %i.p, i64 96, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !64377
  %i.ax = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !64377 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.l, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10UInt64TypeEEE3newCsjjpCCFGI3ul_14lance_encoding.exit, !prof !77

bb.l:                                             ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #66
          to label %.noexc12 unwind label %bb.m

.noexc12:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt64TypeEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.aw)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10UInt64TypeEEE3newCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ax, ptr noundef nonnull align 8 dereferenceable(112) %i.k, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store ptr %i.ax, ptr %i.q, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !64378)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bc = load i8, ptr %i.bb, align 8, !alias.scope !64378, !noundef !75
  switch i8 %i.bc, label %bb.o [
    i8 32, label %bb.p
    i8 64, label %bb.r
  ], !prof !164

bb.o:                                             ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10UInt64TypeEEE3newCsjjpCCFGI3ul_14lance_encoding.exit
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @1950, ptr noundef nonnull inttoptr (i64 203 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1951) #66
          to label %.noexc15 unwind label %bb.an

.noexc15:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10UInt64TypeEEE3newCsjjpCCFGI3ul_14lance_encoding.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !64378
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB3_11LanceBuffer21borrow_to_typed_slicemEB5_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bd)
          to label %.noexc16 unwind label %bb.an

.noexc16:                                         ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !noalias !64378, !noundef !75 ; 3 uses
  %i.bg = icmp ugt i64 %i.bf, 7                   ; 2 uses
  br i1 %i.bg, label %bb.q, label %.loopexit.i

bb.q:                                             ; preds = %.noexc16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !64378, !nonnull !75, !noundef !75 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 4 uses
  %i.bk = load i32, ptr %i.bj, align 4, !alias.scope !64379, !noalias !64380, !noundef !75 ; 3 uses
  %i.bl = load i32, ptr %i.bi, align 4, !alias.scope !64379, !noalias !64380, !noundef !75
  %i.bm = sub i32 %i.bk, %i.bl                    ; 3 uses
  %i.bn = icmp ult i64 %i.bf, 12
  br i1 %i.bn, label %.loopexit.i, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSmmmNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_length0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldmNvYmNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.preheader.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSmmmNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_length0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldmNvYmNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.preheader.i: ; preds = %bb.q
  %i.bo = lshr i64 %i.bf, 2                       ; 2 uses
  %i.bp = add nsw i64 %i.bo, -1                   ; 2 uses
  %i.bq = add nsw i64 %i.bo, -2                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.bq, 8
  br i1 %min.iters.check, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSmmmNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_length0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldmNvYmNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSmmmNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_length0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldmNvYmNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.preheader.i
  %n.vec = and i64 %i.bq, -8                      ; 4 uses
  %i.br = sub i64 %i.bp, %n.vec
  %i.bs = shl i64 %n.vec, 2
  %i.bt = getelementptr i8, ptr %i.bj, i64 %i.bs
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bm, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.bk, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %wide.load65, %vector.body ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.cb, %vector.body ]
  %vec.phi64 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.cc, %vector.body ]
  %i.bu = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bj, i64 %i.bu ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  %wide.load = load <4 x i32>, ptr %i.bv, align 4, !alias.scope !64381, !noalias !64382 ; 3 uses
  %wide.load65 = load <4 x i32>, ptr %i.bw, align 4, !alias.scope !64381, !noalias !64382 ; 4 uses
  %i.bx = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.by = shufflevector <4 x i32> %wide.load, <4 x i32> %wide.load65, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bz = sub <4 x i32> %wide.load, %i.bx
  %i.ca = sub <4 x i32> %wide.load65, %i.by
  %i.cb = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.bz) ; 2 uses
  %i.cc = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi64, <4 x i32> %i.ca) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !64294

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.cb, <4 x i32> %i.cc)
  %i.ce = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %vector.recur.extract = extractelement <4 x i32> %wide.load65, i64 3
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSmmmNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_length0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldmNvYmNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.preheader

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSmmmNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_length0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldmNvYmNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.preheader: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSmmmNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_length0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldmNvYmNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.preheader.i, %middle.block
  %.ph = phi i32 [ %i.bk, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSmmmNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_length0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldmNvYmNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.preheader.i ], [ %vector.recur.extract, %middle.block ]
  %.sroa.0.016.us.i.i.i.i.ph = phi i32 [ %i.bm, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSmmmNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_length0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldmNvYmNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.preheader.i ], [ %i.ce, %middle.block ]
  %.ph67 = phi i64 [ %i.bp, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSmmmNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_length0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldmNvYmNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.preheader.i ], [ %i.br, %middle.block ]
  %.ph68 = phi ptr [ %i.bj, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSmmmNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_length0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldmNvYmNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.preheader.i ], [ %i.bt, %middle.block ]
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSmmmNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_length0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldmNvYmNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSmmmNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_length0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldmNvYmNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSmmmNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_length0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldmNvYmNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.preheader, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSmmmNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_length0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldmNvYmNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i
  %i.cf = phi i32 [ %i.ck, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSmmmNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_length0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldmNvYmNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i ], [ %.ph, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSmmmNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_length0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldmNvYmNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.preheader ]
  %.sroa.0.016.us.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.us.i.i.i.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSmmmNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_length0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldmNvYmNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i ], [ %.sroa.0.016.us.i.i.i.i.ph, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSmmmNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_length0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldmNvYmNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.preheader ]
  %i.cg = phi i64 [ %i.ci, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSmmmNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_length0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldmNvYmNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i ], [ %.ph67, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSmmmNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_length0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldmNvYmNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.preheader ]
  %i.ch = phi ptr [ %i.cj, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSmmmNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_length0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldmNvYmNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i ], [ %.ph68, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSmmmNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_length0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldmNvYmNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.preheader ]
  %i.ci = add nsw i64 %i.cg, -1                   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !alias.scope !64381, !noalias !64382, !noundef !75 ; 2 uses
  %i.cl = sub i32 %i.ck, %i.cf
  %.sroa.0.0.i.i.i.us.i.i.i.i = call noundef i32 @llvm.umax.i32(i32 %.sroa.0.016.us.i.i.i.i, i32 %i.cl) ; 2 uses
  %i.cm = icmp ult i64 %i.ci, 2
  br i1 %i.cm, label %.loopexit.i, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSmmmNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_length0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldmNvYmNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i, !llvm.loop !64295

bb.r:                                             ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10UInt64TypeEEE3newCsjjpCCFGI3ul_14lance_encoding.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !64378
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB3_11LanceBuffer21borrow_to_typed_sliceyEB5_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cn)
          to label %.noexc17 unwind label %bb.an

.noexc17:                                         ; preds = %bb.r
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !noalias !64378, !noundef !75 ; 3 uses
  %i.cq = icmp ugt i64 %i.cp, 15
  br i1 %i.cq, label %bb.s, label %.loopexit43.i

bb.s:                                             ; preds = %.noexc17
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !64378, !nonnull !75, !noundef !75 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 3 uses
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !64383, !noalias !64384, !noundef !75 ; 3 uses
  %i.cv = load i64, ptr %i.cs, align 8, !alias.scope !64383, !noalias !64384, !noundef !75
  %i.cw = sub i64 %i.cu, %i.cv                    ; 3 uses
  %i.cx = icmp ult i64 %i.cp, 24
  br i1 %i.cx, label %.loopexit43.i, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.preheader.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.preheader.i: ; preds = %bb.s
  %i.cy = lshr i64 %i.cp, 3                       ; 3 uses
  %i.cz = add nsw i64 %i.cy, -1                   ; 2 uses
  %i.da = add nsw i64 %i.cy, -3
  %i.db = and i64 %i.cy, 3                        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %i.db, 2
  br i1 %lcmp.mod.not, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.prol.loopexit, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.prol

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.prol: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.preheader.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.prol
  %i.dc = phi i64 [ %i.dh, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.prol ], [ %i.cu, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.preheader.i ]
  %.sroa.0.015.us.i.i.i.i.prol = phi i64 [ %.sroa.0.0.i.i.i.us.i.i.i22.i.prol, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.prol ], [ %i.cw, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.preheader.i ]
  %i.dd = phi i64 [ %i.df, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.prol ], [ %i.cz, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.preheader.i ]
  %i.de = phi ptr [ %i.dg, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.prol ], [ %i.ct, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.prol ], [ 0, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.preheader.i ]
  %i.df = add nsw i64 %i.dd, -1                   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 3 uses
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !64385, !noalias !64386, !noundef !75 ; 3 uses
  %i.di = sub i64 %i.dh, %i.dc
  %.sroa.0.0.i.i.i.us.i.i.i22.i.prol = call noundef i64 @llvm.umax.i64(i64 %.sroa.0.015.us.i.i.i.i.prol, i64 %i.di) ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %i.dj = xor i64 %i.db, %prol.iter.next
  %prol.iter.cmp.not = icmp eq i64 %i.dj, 2
  br i1 %prol.iter.cmp.not, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.prol.loopexit, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.prol, !llvm.loop !64310

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.prol.loopexit: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.prol, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.preheader.i
  %.sroa.0.0.i.i.i.us.i.i.i22.i.lcssa.unr = phi i64 [ poison, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.preheader.i ], [ %.sroa.0.0.i.i.i.us.i.i.i22.i.prol, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.prol ]
  %.unr = phi i64 [ %i.cu, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.preheader.i ], [ %i.dh, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.prol ]
  %.sroa.0.015.us.i.i.i.i.unr = phi i64 [ %i.cw, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.preheader.i ], [ %.sroa.0.0.i.i.i.us.i.i.i22.i.prol, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.prol ]
  %.unr70 = phi i64 [ %i.cz, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.preheader.i ], [ %i.df, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.prol ]
  %.unr71 = phi ptr [ %i.ct, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.preheader.i ], [ %i.dg, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.prol ]
  %i.dk = icmp ult i64 %i.da, 3
  br i1 %i.dk, label %.loopexit43.i, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.prol.loopexit, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i
  %i.dl = phi i64 [ %i.dz, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i ], [ %.unr, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.prol.loopexit ]
  %.sroa.0.015.us.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.us.i.i.i22.i.3, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i ], [ %.sroa.0.015.us.i.i.i.i.unr, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.prol.loopexit ]
  %i.dm = phi i64 [ %i.dx, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i ], [ %.unr70, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.prol.loopexit ]
  %i.dn = phi ptr [ %i.dy, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i ], [ %.unr71, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !64385, !noalias !64386, !noundef !75 ; 2 uses
  %i.dq = sub i64 %i.dp, %i.dl
  %.sroa.0.0.i.i.i.us.i.i.i22.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.0.015.us.i.i.i.i, i64 %i.dq)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !64385, !noalias !64386, !noundef !75 ; 2 uses
  %i.dt = sub i64 %i.ds, %i.dp
  %.sroa.0.0.i.i.i.us.i.i.i22.i.1 = call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.us.i.i.i22.i, i64 %i.dt)
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !64385, !noalias !64386, !noundef !75 ; 2 uses
  %i.dw = sub i64 %i.dv, %i.ds
  %.sroa.0.0.i.i.i.us.i.i.i22.i.2 = call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.us.i.i.i22.i.1, i64 %i.dw)
  %i.dx = add nsw i64 %i.dm, -4                   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dn, i64 32 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !64385, !noalias !64386, !noundef !75 ; 2 uses
  %i.ea = sub i64 %i.dz, %i.dv
  %.sroa.0.0.i.i.i.us.i.i.i22.i.3 = call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.us.i.i.i22.i.2, i64 %i.ea) ; 2 uses
  %i.eb = icmp ult i64 %i.dx, 2
  br i1 %i.eb, label %.loopexit43.i, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i

bb.t:                                             ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i, %bb.v
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body19.i

.body19.i:                                        ; preds = %bb.y, %bb.t
  %eh.lpad-body20.i = phi { ptr, i32 } [ %i.ec, %bb.t ], [ %i.ep, %bb.y ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !64387)
  call void @llvm.experimental.noalias.scope.decl(metadata !64388)
  call void @llvm.experimental.noalias.scope.decl(metadata !64389)
  call void @llvm.experimental.noalias.scope.decl(metadata !64390)
  %i.ed = load ptr, ptr %i.h, align 8, !alias.scope !64391, !noalias !64378, !nonnull !75, !noundef !75
  %i.ee = atomicrmw sub ptr %i.ed, i64 1 release, align 8, !noalias !64392
  %i.ef = icmp eq i64 %i.ee, 1
  br i1 %i.ef, label %bb.u, label %.thread

bb.u:                                             ; preds = %.body19.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.thread unwind label %bb.ac, !noalias !64378

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSmmmNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_length0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldmNvYmNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i, %middle.block, %bb.q, %.noexc16
  %.sroa.3.0.i.i = phi i32 [ undef, %.noexc16 ], [ %i.bm, %bb.q ], [ %i.ce, %middle.block ], [ %.sroa.0.0.i.i.i.us.i.i.i.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSmmmNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_length0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldmNvYmNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !64378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !64378
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !64378
  %i.eg = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !64378 ; 3 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.v, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i, !prof !77

bb.v:                                             ; preds = %.loopexit.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #66
          to label %.noexc27.i unwind label %bb.t, !noalias !64378

.noexc27.i:                                       ; preds = %bb.v
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i: ; preds = %.loopexit.i
  %i.ei = zext i32 %.sroa.3.0.i.i to i64
  %.sroa.01.0.i = select i1 %i.bg, i64 %i.ei, i64 0
  store i64 %.sroa.01.0.i, ptr %i.eg, align 8, !noalias !64378
  store i64 1, ptr %i.f, align 8, !noalias !64378
  %i.ej = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.eg, ptr %i.ej, align 8, !noalias !64378
  %i.ek = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 1, ptr %i.ek, align 8, !noalias !64378
  invoke void @_RNvXsI_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecyEE4from(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.w unwind label %bb.t, !noalias !64378

bb.w:                                             ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !64378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !64378
  store i64 1, ptr %i.b, align 8, !noalias !64378
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.el, align 8, !noalias !64378
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.em, ptr noundef nonnull align 8 dereferenceable(96) %i.g, i64 96, i1 false), !noalias !64378
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !64393
  %i.en = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !64393 ; 3 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.x, label %bb.aa, !prof !77

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #66
          to label %.noexc28.i unwind label %bb.y, !noalias !64378

.noexc28.i:                                       ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt64TypeEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.em)
          to label %.body19.i unwind label %bb.z, !noalias !64378

bb.z:                                             ; preds = %bb.y
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !64378
  unreachable

bb.aa:                                            ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.en, ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 112, i1 false), !noalias !64378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !64378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !64378
  call void @llvm.experimental.noalias.scope.decl(metadata !64394)
  call void @llvm.experimental.noalias.scope.decl(metadata !64395)
  call void @llvm.experimental.noalias.scope.decl(metadata !64396)
  call void @llvm.experimental.noalias.scope.decl(metadata !64397)
  %i.er = load ptr, ptr %i.h, align 8, !alias.scope !64398, !noalias !64378, !nonnull !75, !noundef !75
  %i.es = atomicrmw sub ptr %i.er, i64 1 release, align 8, !noalias !64399
  %i.et = icmp eq i64 %i.es, 1
  br i1 %i.et, label %bb.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffermEECsjjpCCFGI3ul_14lance_encoding.exit31.i

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffermEECsjjpCCFGI3ul_14lance_encoding.exit31.i unwind label %bb.an

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffermEECsjjpCCFGI3ul_14lance_encoding.exit31.i: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !64378
  br label %bb.ao

bb.ac:                                            ; preds = %bb.ae, %bb.u
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !64378
  unreachable

bb.ad:                                            ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit34.i, %bb.af
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ai, %bb.ad
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ev, %bb.ad ], [ %i.fh, %bb.ai ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !64400)
  call void @llvm.experimental.noalias.scope.decl(metadata !64401)
  call void @llvm.experimental.noalias.scope.decl(metadata !64402)
  call void @llvm.experimental.noalias.scope.decl(metadata !64403)
  %i.ew = load ptr, ptr %i.e, align 8, !alias.scope !64404, !noalias !64378, !nonnull !75, !noundef !75
  %i.ex = atomicrmw sub ptr %i.ew, i64 1 release, align 8, !noalias !64405
  %i.ey = icmp eq i64 %i.ex, 1
  br i1 %i.ey, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.thread unwind label %bb.ac, !noalias !64378

.loopexit43.i:                                    ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.prol.loopexit, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i, %bb.s, %.noexc17
  %.sroa.06.0.i = phi i64 [ 0, %.noexc17 ], [ %i.cw, %bb.s ], [ %.sroa.0.0.i.i.i.us.i.i.i22.i.lcssa.unr, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i.prol.loopexit ], [ %.sroa.0.0.i.i.i.us.i.i.i22.i.3, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMs9_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB19_4data18VariableWidthBlock10max_lengths_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldyNvYyNtNtBa_3cmp3Ord3cmpE0E0B19_.exit.us.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !64378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !64378
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !64378
  %i.ez = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !64378 ; 3 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %bb.af, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit34.i, !prof !77

bb.af:                                            ; preds = %.loopexit43.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #66
          to label %.noexc33.i unwind label %bb.ad, !noalias !64378

.noexc33.i:                                       ; preds = %bb.af
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit34.i: ; preds = %.loopexit43.i
  store i64 %.sroa.06.0.i, ptr %i.ez, align 8, !noalias !64378
  store i64 1, ptr %i.c, align 8, !noalias !64378
  %i.fb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ez, ptr %i.fb, align 8, !noalias !64378
  %i.fc = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %i.fc, align 8, !noalias !64378
  invoke void @_RNvXsI_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecyEE4from(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.ag unwind label %bb.ad, !noalias !64378

bb.ag:                                            ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit34.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !64378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !64378
  store i64 1, ptr %i.a, align 8, !noalias !64378
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.fd, align 8, !noalias !64378
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.fe, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false), !noalias !64378
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !64406
  %i.ff = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !64406 ; 3 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.ah, label %bb.ak, !prof !77

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #66
          to label %.noexc35.i unwind label %bb.ai, !noalias !64378

.noexc35.i:                                       ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt64TypeEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.fe)
          to label %.body.i unwind label %bb.aj, !noalias !64378

bb.aj:                                            ; preds = %bb.ai
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !64378
  unreachable

bb.ak:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ff, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !64378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !64378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !64378
  call void @llvm.experimental.noalias.scope.decl(metadata !64407)
end_hunk_5
begin_hunk_6_@_RNvXs7_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtB5_16BlobFieldEncoderNtNtBb_7encoder12FieldEncoder12maybe_encode:bb.a
  call void @llvm.assume(i1 %i.bn)
  store i64 %.sroa.4145.0.i, ptr %i.aa, align 8, !noalias !80791
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 5 uses
  store ptr %i.bm, ptr %i.bo, align 8, !noalias !80791
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 7 uses
  store i64 0, ptr %i.bp, align 8, !noalias !80791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !80791
  %i.bq = invoke noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ab)
          to label %bb.q unwind label %.thread.i, !noalias !80792 ; 4 uses

bb.p:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit91.i
  br i1 %.sroa.026.1.i, label %bb.cj, label %.body81.i

.thread.i:                                        ; preds = %bb.u, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.q:                                             ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i
  %i.bs = shl i64 %i.bq, 3                        ; 4 uses
  %i.bt = icmp ugt i64 %i.bq, 2305843009213693951
  %.not.i84.i = icmp ugt i64 %i.bs, 9223372036854775800
  %or.cond.i85.i = or i1 %i.bt, %.not.i84.i
  br i1 %or.cond.i85.i, label %bb.u, label %bb.r, !prof !80

bb.r:                                             ; preds = %bb.q
  %i.bu = icmp eq i64 %i.bs, 0
  br i1 %i.bu, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit87.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !80806
  %i.bv = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !80806 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = ptrtoint ptr %i.bv to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit87.i

bb.u:                                             ; preds = %bb.s, %bb.q
  %.sroa.4149.0.ph.i = phi i64 [ 8, %bb.s ], [ 0, %bb.q ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4149.0.ph.i, i64 %i.bs) #66
          to label %bb.bo unwind label %.thread.i, !noalias !80792

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit87.i: ; preds = %bb.t, %bb.r
  %.sroa.4149.0.i = phi i64 [ %i.bq, %bb.t ], [ 0, %bb.r ] ; 2 uses
  %.sroa.10151.0.i = phi i64 [ %i.bx, %bb.t ], [ 8, %bb.r ]
  %i.by = inttoptr i64 %.sroa.10151.0.i to ptr
  %i.bz = icmp samesign ule i64 %i.bq, %.sroa.4149.0.i
  call void @llvm.assume(i1 %i.bz)
  store i64 %.sroa.4149.0.i, ptr %i.z, align 8, !noalias !80791
  %i.ca = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 5 uses
  store ptr %i.by, ptr %i.ca, align 8, !noalias !80791
  %i.cb = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 7 uses
  store i64 0, ptr %i.cb, align 8, !noalias !80791
  %i.cc = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !80791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !80791
  %i.cd = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !80792, !noundef !75 ; 4 uses
  %.not57.i = icmp eq ptr %i.ce, null             ; 3 uses
  br i1 %.not57.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit87.i
  %i.cf = atomicrmw add ptr %i.ce, i64 1 monotonic, align 8, !noalias !80792
  %i.cg = icmp slt i64 %i.cf, 0
  br i1 %i.cg, label %bb.z, label %bb.y

bb.w:                                             ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit87.i
  store ptr null, ptr %i.x, align 8, !noalias !80791
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !80791
  %i.ch = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !80792, !noundef !75 ; 2 uses
  %i.cj = lshr i64 %i.ci, 3                       ; 3 uses
  %i.ck = add nsw i64 %i.cj, -1
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer9new_valid(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.w, i64 noundef %i.ck)
          to label %bb.ab unwind label %bb.cf, !noalias !80792

bb.y:                                             ; preds = %bb.v
  %i.cl = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !80792, !noundef !75
  %i.cn = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %i.co = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  store ptr %i.ce, ptr %i.x, align 8, !noalias !80791
  %.sroa.039.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.cm, ptr %.sroa.039.sroa.0.sroa.4.0..sroa_idx.i, align 8, !noalias !80791
  %.sroa.039.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.cp = load <2 x i64>, ptr %i.cn, align 8, !noalias !80792
  store <2 x i64> %i.cp, ptr %.sroa.039.sroa.0.sroa.5.0..sroa_idx.i, align 8, !noalias !80791
  %.sroa.039.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.cq = load <2 x i64>, ptr %i.co, align 8, !noalias !80792
  store <2 x i64> %i.cq, ptr %.sroa.039.sroa.5.0..sroa_idx.i, align 8, !noalias !80791
  br label %bb.x

bb.z:                                             ; preds = %bb.v
  call void @llvm.trap()
  unreachable

bb.aa:                                            ; preds = %bb.ad
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit91.thread.i

bb.ab:                                            ; preds = %bb.x
  br i1 %.not57.i, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull align 8 dereferenceable(48) %i.x, i64 48, i1 false), !noalias !80791
  call void @llvm.experimental.noalias.scope.decl(metadata !80807)
  call void @llvm.experimental.noalias.scope.decl(metadata !80808)
  call void @llvm.experimental.noalias.scope.decl(metadata !80809)
  call void @llvm.experimental.noalias.scope.decl(metadata !80810)
  call void @llvm.experimental.noalias.scope.decl(metadata !80811)
  %i.cs = load ptr, ptr %i.w, align 8, !alias.scope !80812, !noalias !80791, !nonnull !75, !noundef !75
  %i.ct = atomicrmw sub ptr %i.cs, i64 1 release, align 8, !noalias !80813
  %i.cu = icmp eq i64 %i.ct, 1
  br i1 %i.cu, label %bb.ad, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit.i unwind label %bb.aa, !noalias !80792

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false), !noalias !80791
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !80791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !80791
  %i.cv = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !80792, !noundef !75 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !80814)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  invoke void @_RNvXs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullRNtB4_10NullBufferNtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.cx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y)
          to label %bb.ag unwind label %.loopexit.split-lp.i, !noalias !80792

.body72.i:                                        ; preds = %bb.by, %bb.bx, %bb.bi, %bb.bh, %bb.az, %.thread181.i, %bb.ak, %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.026.1.i = phi i1 [ false, %bb.ak ], [ false, %bb.az ], [ false, %bb.bh ], [ true, %bb.bx ], [ false, %.thread181.i ], [ false, %bb.bi ], [ true, %bb.by ], [ true, %.loopexit.i ], [ %.sroa.026.2.ph.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.025.0.i = phi i1 [ true, %bb.ak ], [ false, %bb.az ], [ false, %bb.bh ], [ true, %bb.bx ], [ false, %.thread181.i ], [ false, %bb.bi ], [ true, %bb.by ], [ true, %.loopexit.i ], [ true, %.loopexit.split-lp.i ]
  %.pn65.i = phi { ptr, i32 } [ %i.dx, %bb.ak ], [ %i.fd, %bb.az ], [ %.pn.pn.ph.i, %bb.bh ], [ %i.hk, %bb.bx ], [ %i.er, %.thread181.i ], [ %.pn.pn.ph.i, %bb.bi ], [ %i.hk, %bb.by ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !80815)
  call void @llvm.experimental.noalias.scope.decl(metadata !80816)
  call void @llvm.experimental.noalias.scope.decl(metadata !80817)
  call void @llvm.experimental.noalias.scope.decl(metadata !80818)
  call void @llvm.experimental.noalias.scope.decl(metadata !80819)
  %i.cy = load ptr, ptr %i.y, align 8, !alias.scope !80820, !noalias !80791, !nonnull !75, !noundef !75
  %i.cz = atomicrmw sub ptr %i.cy, i64 1 release, align 8, !noalias !80821
  %i.da = icmp eq i64 %i.cz, 1
  br i1 %i.da, label %bb.af, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit91.i

bb.af:                                            ; preds = %.body72.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.y)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit91.i unwind label %bb.bf, !noalias !80792

.loopexit.i:                                      ; preds = %bb.cd, %bb.cb, %bb.bu, %bb.bs, %bb.br, %bb.bm, %bb.bk
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body72.i

.loopexit.split-lp.i:                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7WindowsxENtNtNtCs4YAKbnGhBJc_12arrow_buffer4util12bit_iterator11BitIteratorEINtB5_7ZipImplBW_B1r_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit.i
  %.sroa.026.2.ph.i = phi i1 [ true, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit.i ], [ false, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7WindowsxENtNtNtCs4YAKbnGhBJc_12arrow_buffer4util12bit_iterator11BitIteratorEINtB5_7ZipImplBW_B1r_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread.i ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body72.i

bb.ag:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsjjpCCFGI3ul_14lance_encoding.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !80822)
  store ptr %i.cw, ptr %i.v, align 8, !alias.scope !80823, !noalias !80824
  %.sroa.4130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.cj, ptr %.sroa.4130.0..sroa_idx.i, align 8, !alias.scope !80823, !noalias !80824
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !80823, !noalias !80824
  %i.db = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, i8 0, i64 16, i1 false), !alias.scope !80825, !noalias !80826
  %.sroa.8133.0.copyload.i = load ptr, ptr %i.cx, align 8, !noalias !80791 ; 2 uses
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.11.0.copyload.i = load i64, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !80791
  %i.dc = icmp ult i64 %i.ci, 16
  br i1 %i.dc, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7WindowsxENtNtNtCs4YAKbnGhBJc_12arrow_buffer4util12bit_iterator11BitIteratorEINtB5_7ZipImplBW_B1r_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ag
  %.sroa.9134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.9134.0.copyload.i = load i64, ptr %.sroa.9134.0..sroa_idx.i, align 8, !noalias !80791
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.bn, %.lr.ph.i
  %.sroa.0131.0204.i = phi ptr [ %i.cw, %.lr.ph.i ], [ %i.dj, %bb.bn ] ; 3 uses
  %.sroa.5132.0203.i = phi i64 [ %i.cj, %.lr.ph.i ], [ %i.di, %bb.bn ]
  %.sroa.9134.0202.i = phi i64 [ %.sroa.9134.0.copyload.i, %.lr.ph.i ], [ %i.dq, %bb.bn ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0131.0204.i) ]
  %i.di = add nsw i64 %.sroa.5132.0203.i, -1      ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0131.0204.i, i64 8 ; 2 uses
  %i.dk = icmp eq i64 %.sroa.9134.0202.i, %.sroa.11.0.copyload.i
  br i1 %i.dk, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7WindowsxENtNtNtCs4YAKbnGhBJc_12arrow_buffer4util12bit_iterator11BitIteratorEINtB5_7ZipImplBW_B1r_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7WindowsxENtNtNtCs4YAKbnGhBJc_12arrow_buffer4util12bit_iterator11BitIteratorEINtB5_7ZipImplBW_B1r_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7WindowsxENtNtNtCs4YAKbnGhBJc_12arrow_buffer4util12bit_iterator11BitIteratorEINtB5_7ZipImplBW_B1r_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8133.0.copyload.i) ]
  %i.dl = lshr i64 %.sroa.9134.0202.i, 3
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.8133.0.copyload.i, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !noalias !80827, !noundef !75
  %i.do = trunc i64 %.sroa.9134.0202.i to i8
  %i.dp = and i8 %i.do, 7
  %i.dq = add i64 %.sroa.9134.0202.i, 1
  %i.dr = lshr i8 %i.dn, %i.dp
  %i.ds = trunc i8 %i.dr to i1
  br i1 %i.ds, label %bb.bp, label %bb.bj

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7WindowsxENtNtNtCs4YAKbnGhBJc_12arrow_buffer4util12bit_iterator11BitIteratorEINtB5_7ZipImplBW_B1r_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread.i: ; preds = %bb.bn, %bb.ah, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !80791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !80791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !80791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !80791
  invoke void @_RNvXsI_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecyEE4from(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q)
          to label %bb.ai unwind label %.loopexit.split-lp.i, !noalias !80792

bb.ai:                                            ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7WindowsxENtNtNtCs4YAKbnGhBJc_12arrow_buffer4util12bit_iterator11BitIteratorEINtB5_7ZipImplBW_B1r_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !80791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !80791
  store i64 1, ptr %i.i, align 8, !noalias !80791
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %i.dt, align 8, !noalias !80791
  %i.du = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.du, ptr noundef nonnull align 8 dereferenceable(96) %i.r, i64 96, i1 false), !noalias !80791
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !80828
  %i.dv = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !80828 ; 3 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.aj, label %bb.am, !prof !77

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #66
          to label %.noexc93.i unwind label %bb.ak, !noalias !80792

.noexc93.i:                                       ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt64TypeEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.du)
          to label %.body72.i unwind label %bb.al, !noalias !80792

bb.al:                                            ; preds = %bb.ak
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !80792
  unreachable

bb.am:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.dv, ptr noundef nonnull align 8 dereferenceable(112) %i.i, i64 112, i1 false), !noalias !80792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !80791
  store ptr %i.dv, ptr %i.s, align 8, !noalias !80791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !80791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !80791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !80791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !80791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !80791
  invoke void @_RNvXsI_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecyEE4from(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
          to label %bb.ao unwind label %bb.an, !noalias !80792

bb.an:                                            ; preds = %bb.am
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !80791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !80791
  store i64 1, ptr %i.h, align 8, !noalias !80791
  %i.ea = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.ea, align 8, !noalias !80791
  %i.eb = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.eb, ptr noundef nonnull align 8 dereferenceable(96) %i.o, i64 96, i1 false), !noalias !80791
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !80829
  %i.ec = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !80829 ; 3 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.ap, label %bb.as, !prof !77

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #66
          to label %.noexc95.i unwind label %bb.aq, !noalias !80792

.noexc95.i:                                       ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt64TypeEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.eb)
          to label %bb.bh unwind label %bb.ar, !noalias !80792

bb.ar:                                            ; preds = %bb.aq
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !80792
  unreachable

bb.as:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ec, ptr noundef nonnull align 8 dereferenceable(112) %i.h, i64 112, i1 false), !noalias !80792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !80791
  store ptr %i.ec, ptr %i.p, align 8, !noalias !80791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !80791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !80791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !80791
  %i.eg = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs63DIHKhvmTb_10lance_core9datatypes16BLOB_DESC_FIELDS, i64 16) acquire, align 8, !noalias !80791
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8SUNSmrkv52_12arrow_schema6fields6FieldsE5force0ECsjjpCCFGI3ul_14lance_encoding.exit.i, label %bb.at, !prof !78

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !80791
  store ptr @_RNvNtCs63DIHKhvmTb_10lance_core9datatypes16BLOB_DESC_FIELDS, ptr %i.b, align 8, !noalias !80791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !80791
  store ptr %i.b, ptr %i.a, align 8, !noalias !80791
  invoke void @_RNvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs63DIHKhvmTb_10lance_core9datatypes16BLOB_DESC_FIELDS, i64 16), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @72, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67)
          to label %.noexc99.i unwind label %.thread184.i, !noalias !80792

.noexc99.i:                                       ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !80791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !80791
  br label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8SUNSmrkv52_12arrow_schema6fields6FieldsE5force0ECsjjpCCFGI3ul_14lance_encoding.exit.i

.thread184.i:                                     ; preds = %bb.at
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.thread177.i

_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8SUNSmrkv52_12arrow_schema6fields6FieldsE5force0ECsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %.noexc99.i, %bb.as
  %i.ej = load ptr, ptr @_RNvNtCs63DIHKhvmTb_10lance_core9datatypes16BLOB_DESC_FIELDS, align 8, !noalias !80791, !nonnull !75, !noundef !75
  %i.ek = atomicrmw add ptr %i.ej, i64 1 monotonic, align 8, !noalias !80792
  %i.el = icmp slt i64 %i.ek, 0
  br i1 %i.el, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8SUNSmrkv52_12arrow_schema6fields6FieldsE5force0ECsjjpCCFGI3ul_14lance_encoding.exit.i
  %i.em = load ptr, ptr @_RNvNtCs63DIHKhvmTb_10lance_core9datatypes16BLOB_DESC_FIELDS, align 8, !noalias !80791, !nonnull !75, !noundef !75 ; 3 uses
  %i.en = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs63DIHKhvmTb_10lance_core9datatypes16BLOB_DESC_FIELDS, i64 8), align 8, !noalias !80791, !noundef !75 ; 2 uses
  store ptr %i.em, ptr %i.l, align 8, !noalias !80791
  %i.eo = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.en, ptr %i.eo, align 8, !noalias !80791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !80791
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !80792
  %i.ep = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !80792 ; 6 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %bb.av, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit101.i, !prof !77

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #66
          to label %.noexc100.i unwind label %bb.bd, !noalias !80792

.noexc100.i:                                      ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8SUNSmrkv52_12arrow_schema6fields6FieldsE5force0ECsjjpCCFGI3ul_14lance_encoding.exit.i
  call void @llvm.trap()
  unreachable

.thread181.i:                                     ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit101.i
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.body72.i

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit101.i: ; preds = %bb.au
  %i.es = load ptr, ptr %i.s, align 8, !noalias !80791, !nonnull !75, !noundef !75
  %i.et = load ptr, ptr %i.p, align 8, !noalias !80791, !nonnull !75, !noundef !75
  store ptr %i.es, ptr %i.ep, align 8, !noalias !80792
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store ptr @368, ptr %i.eu, align 8, !noalias !80792
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store ptr %i.et, ptr %i.ev, align 8, !noalias !80792
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  store ptr @368, ptr %i.ew, align 8, !noalias !80792
  store i64 2, ptr %i.k, align 8, !noalias !80791
  %i.ex = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.ep, ptr %i.ex, align 8, !noalias !80791
  %i.ey = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 2, ptr %i.ey, align 8, !noalias !80791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !80791
  store ptr null, ptr %i.j, align 8, !noalias !80791
  invoke void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_arrayNtB2_11StructArray3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.m, ptr noundef nonnull %i.em, i64 noundef %i.en, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.j)
          to label %bb.ax unwind label %.thread181.i, !noalias !80792

bb.ax:                                            ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit101.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !80791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !80791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !80791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !80791
  store i64 1, ptr %i.g, align 8, !noalias !80791
  %i.ez = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.ez, align 8, !noalias !80791
  %i.fa = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.fa, ptr noundef nonnull align 8 dereferenceable(104) %i.m, i64 104, i1 false), !noalias !80791
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !80830
  %i.fb = call noundef align 8 dereferenceable_or_null(120) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 120, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !80830 ; 4 uses
end_hunk_6
