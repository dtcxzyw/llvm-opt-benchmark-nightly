inline.NumInlined: 12000
inline.NumDeleted: 3498
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvCs14kWLkQVSKO_14deltalake_core22builder_from_valid_url:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit55: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs14kWLkQVSKO_14deltalake_core.exit.i50, %_RNCNvCs14kWLkQVSKO_14deltalake_core22builder_from_valid_url0B3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit55
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %1)
          to label %common.resume unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %.thread, %bb.ae
  %common.resume.op = phi { ptr, i32 } [ %i.by, %bb.ae ], [ %.pn87, %.thread ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit55
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %1)
  br label %bb.ag

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %.thread97

bb.ag:                                            ; preds = %.thread97, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit
  ret void

bb.ah:                                            ; preds = %.thread, %bb.v
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RNCNvCs14kWLkQVSKO_14deltalake_core22builder_from_valid_url0B3_.exit: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -9223372036854775724, ptr %i.cb, align 16
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bi, ptr %.sroa.219.0..sroa_idx, align 8
  %.sroa.219.sroa.2.0..sroa.219.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bl, ptr %.sroa.219.sroa.2.0..sroa.219.0..sroa_idx.sroa_idx, align 16
  %.sroa.219.sroa.3.0..sroa.219.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.val35, ptr %.sroa.219.sroa.3.0..sroa.219.0..sroa_idx.sroa_idx, align 8
  store i64 4, ptr %0, align 16
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit55

.thread:                                          ; preds = %bb.ac, %bb.aa, %bb.v, %.thread94
  %.pn87 = phi { ptr, i32 } [ %i.bt, %bb.aa ], [ %lpad.thr_comm, %.thread94 ], [ %i.bn, %bb.v ], [ %i.bw, %bb.ac ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(88) %1) #50
          to label %common.resume unwind label %bb.ah
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common5statsINtB2_9PrecisionNtNtB4_6scalar11ScalarValueE3maxCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 16 captures(none) dereferenceable(80) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(80) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = load i128, ptr %1, align 16, !range !1127, !noundef !3
  %i.d = trunc nuw nsw i128 %i.c to i64
  switch i64 %i.d, label %default.unreachable6 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable6:                             ; preds = %bb.b, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = load i128, ptr %2, align 16, !range !1127, !noundef !3
  %i.f = trunc nuw nsw i128 %i.e to i64
  switch i64 %i.f, label %default.unreachable6 [
    i64 0, label %bb.e
    i64 1, label %bb.g
    i64 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.a
  %i.g = load i128, ptr %2, align 16, !range !1127, !noundef !3
  %i.h = icmp eq i128 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  store i128 2, ptr %0, align 16
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = tail call noundef i8 @_RNvXs0_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.j) ; 2 uses
  %.not.i = icmp ne i8 %i.k, 2
  %i.l = icmp sgt i8 %i.k, -1
  %.sroa.0.0.i = and i1 %.not.i, %i.l
  %. = select i1 %.sroa.0.0.i, ptr %i.i, ptr %i.j
  call fastcc void @_RNvXso_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(64) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %.) #55
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.m, ptr noundef nonnull align 16 dereferenceable(64) %i.b, i64 64, i1 false)
  store i128 0, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  ret void

bb.g:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.02.0 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = tail call noundef i8 @_RNvXs0_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %.sroa.0.0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %.sroa.02.0) ; 2 uses
  %.not.i4 = icmp ne i8 %i.n, 2
  %i.o = icmp sgt i8 %i.n, -1
  %.sroa.0.0.i5 = and i1 %.not.i4, %i.o
  %.sroa.0.0..sroa.02.0 = select i1 %.sroa.0.0.i5, ptr %.sroa.0.0, ptr %.sroa.02.0
  call fastcc void @_RNvXso_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(64) %i.a, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %.sroa.0.0..sroa.02.0) #55
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.p, ptr noundef nonnull align 16 dereferenceable(64) %i.a, i64 64, i1 false)
  store i128 1, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common5statsINtB2_9PrecisionNtNtB4_6scalar11ScalarValueE3minCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 16 captures(none) dereferenceable(80) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(80) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = load i128, ptr %1, align 16, !range !1127, !noundef !3
  %i.d = trunc nuw nsw i128 %i.c to i64
  switch i64 %i.d, label %default.unreachable6 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable6:                             ; preds = %bb.b, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = load i128, ptr %2, align 16, !range !1127, !noundef !3
  %i.f = trunc nuw nsw i128 %i.e to i64
  switch i64 %i.f, label %default.unreachable6 [
    i64 0, label %bb.e
    i64 1, label %bb.g
    i64 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.a
  %i.g = load i128, ptr %2, align 16, !range !1127, !noundef !3
  %i.h = icmp eq i128 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  store i128 2, ptr %0, align 16
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = tail call noundef i8 @_RNvXs0_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.j) ; 2 uses
  %.not.i = icmp ne i8 %i.k, 2
  %i.l = icmp sgt i8 %i.k, -1
  %.sroa.0.0.i = and i1 %.not.i, %i.l
  %. = select i1 %.sroa.0.0.i, ptr %i.j, ptr %i.i
  call fastcc void @_RNvXso_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(64) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %.) #55
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.m, ptr noundef nonnull align 16 dereferenceable(64) %i.b, i64 64, i1 false)
  store i128 0, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  ret void

bb.g:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.02.0 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = tail call noundef i8 @_RNvXs0_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %.sroa.0.0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %.sroa.02.0) ; 2 uses
  %.not.i4 = icmp ne i8 %i.n, 2
  %i.o = icmp sgt i8 %i.n, -1
  %.sroa.0.0.i5 = and i1 %.not.i4, %i.o
  %.sroa.02.0..sroa.0.0 = select i1 %.sroa.0.0.i5, ptr %.sroa.02.0, ptr %.sroa.0.0
  call fastcc void @_RNvXso_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(64) %i.a, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %.sroa.02.0..sroa.0.0) #55
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.p, ptr noundef nonnull align 16 dereferenceable(64) %i.a, i64 64, i1 false)
  store i128 1, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction8protocolNtB2_15ProtocolChecker10can_commit(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %3, ptr noalias noundef nonnull readonly align 8 captures(address) %4, i64 noundef range(i64 0, 33909456017848441) %5, ptr noalias noundef readonly align 8 captures(none) dereferenceable(408) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction8protocolNtB2_15ProtocolChecker12can_write_to(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3)
  %i.c = load i64, ptr %i.b, align 8, !range !32442, !noundef !3
  %.not = icmp eq i64 %i.c, -9223372036854775781
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !3, !nonnull !3 ; 3 uses
  %i.f = tail call noundef nonnull align 8 ptr %i.e(ptr noundef nonnull %2) #55
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.h = load i32, ptr %i.g, align 4, !noundef !3
  %i.i = icmp slt i32 %i.h, 2
  br i1 %i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef nonnull align 8 ptr %i.e(ptr noundef nonnull %2) #55
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  %i.l = load i32, ptr %i.k, align 4, !noundef !3
  %i.m = icmp slt i32 %i.l, 7
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call noundef nonnull align 8 ptr %i.e(ptr noundef nonnull %2) #55 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load i64, ptr %i.o, align 8, !range !141, !noundef !3
  %.not41 = icmp eq i64 %i.p, -9223372036854775808
  br i1 %.not41, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !3, !nonnull !3
  %i.s = tail call noundef nonnull align 8 ptr %i.r(ptr noundef nonnull %2) #55
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 240
  %i.u = load i8, ptr %i.t, align 8, !range !159, !noundef !3 ; 2 uses
  %.not43 = icmp eq i8 %i.u, 2
  br i1 %.not43, label %.loopexit, label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !3, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.y = load i64, ptr %i.x, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 -9223372036854775808, ptr %i.z, align 8
  store i64 -9223372036854775783, ptr %i.a, align 8
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorEBM_(ptr noalias noundef align 8 dereferenceable(72) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = call noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.w, i64 noundef %i.y)
  br i1 %i.aa, label %bb.i, label %.loopexit

bb.h:                                             ; preds = %bb.e
  store i64 -9223372036854775783, ptr %0, align 8
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 -9223372036854775808 to ptr), ptr %.sroa.236.0..sroa_idx, align 8
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !invariant.load !3, !nonnull !3
  %i.ad = call noundef nonnull align 8 ptr %i.ac(ptr noundef nonnull %2) #55
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 240
  %i.af = load i8, ptr %i.ae, align 8, !range !159, !noundef !3 ; 2 uses
  %.not42 = icmp eq i8 %i.af, 2
  br i1 %.not42, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i
  %.sroa.0.0 = phi i8 [ %i.af, %bb.i ], [ %i.u, %bb.f ]
  %i.ag = trunc nuw i8 %.sroa.0.0 to i1
  br i1 %i.ag, label %bb.k, label %.loopexit

.loopexit:                                        ; preds = %bb.m, %bb.l, %bb.g, %bb.k, %bb.f, %bb.i, %bb.c, %bb.j
  store i64 -9223372036854775781, ptr %0, align 8
  br label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ah = load i64, ptr %6, align 8, !range !2889, !noundef !3 ; 2 uses
  %i.ai = icmp ne i64 %i.ah, 3
  call void @llvm.assume(i1 %i.ai)
  %i.aj = call i64 @llvm.umax.i64(i64 %i.ah, i64 2)
  %i.ak = and i64 %i.aj, 30
  %switch = icmp eq i64 %i.ak, 14
  br i1 %switch, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.idx = mul nuw nsw i64 %5, 272
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 %.idx
  %i.am = icmp eq i64 %5, 0
  br i1 %i.am, label %.loopexit, label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %i.ap, i64 272 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.al
  br i1 %i.ao, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %i.ap = phi ptr [ %i.an, %bb.m ], [ %4, %bb.l ] ; 3 uses
  %.val.i = load i64, ptr %i.ap, align 8, !range !3130, !noalias !32443, !noundef !3 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 240
  %.val5.i = load i8, ptr %i.aq, align 8, !noalias !32443
  %i.ar = icmp ne i64 %.val.i, 4
  call void @llvm.assume(i1 %i.ar)
  %i.as = icmp eq i64 %.val.i, 5
  %i.at = trunc nuw i8 %.val5.i to i1
  %or.cond.i.i.i = select i1 %i.as, i1 %i.at, i1 false
  br i1 %or.cond.i.i.i, label %bb.n, label %bb.m

bb.n:                                             ; preds = %.lr.ph
  store i64 -9223372036854775785, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %bb.n, %.loopexit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction8protocolNtB2_15ProtocolChecker12can_write_to(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [64 x i8], align 8                ; 2 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [64 x i8], align 8                ; 9 uses
  %i.o = alloca [48 x i8], align 8                ; 8 uses
  %i.p = alloca [40 x i8], align 8                ; 8 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [40 x i8], align 8                ; 8 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [48 x i8], align 8                ; 15 uses
  %i.u = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32447)
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !invariant.load !3, !alias.scope !32447, !noalias !32450, !nonnull !3 ; 3 uses
  %i.x = tail call noundef nonnull align 8 ptr %i.w(ptr noundef nonnull %2) #55, !noalias !32453, !inline_history !32454
  call void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction8protocolNtB2_15ProtocolChecker22can_read_from_protocol(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.x), !noalias !32447
  %i.y = load i64, ptr %i.u, align 8, !range !32442, !noundef !3
  %.not = icmp eq i64 %i.y, -9223372036854775781
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.z = tail call noundef nonnull align 8 ptr %i.w(ptr noundef nonnull %2) #55
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 52
  %i.ab = load i32, ptr %i.aa, align 4, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  switch i32 %i.ab, label %bb.d [
    i32 0, label %bb.e
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.h
    i32 4, label %bb.j
    i32 5, label %bb.l
    i32 6, label %bb.n
  ]

bb.d:                                             ; preds = %bb.c
  %i.ac = tail call noundef nonnull align 8 ptr %i.w(ptr noundef nonnull %2) #55
  call void @_RNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtB4_11ProtocolExt19writer_features_set(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ac)
  br label %bb.q

bb.e:                                             ; preds = %bb.c, %bb.c
  store ptr null, ptr %i.t, align 8
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.ad = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction8protocol9WRITER_V2, i64 48) acquire, align 8
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3set7HashSetNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction8protocol9WRITER_V2, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.i, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction8protocol9WRITER_V2, i64 48), i1 noundef zeroext true, ptr noundef nonnull %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3set7HashSetNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEE5force0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3set7HashSetNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.f, %bb.g
  call void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction8protocol9WRITER_V2)
  br label %bb.q

bb.h:                                             ; preds = %bb.c
  %i.af = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction8protocol9WRITER_V3, i64 48) acquire, align 8
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3set7HashSetNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEE5force0ECs14kWLkQVSKO_14deltalake_core.exit19, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction8protocol9WRITER_V3, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction8protocol9WRITER_V3, i64 48), i1 noundef zeroext true, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3set7HashSetNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEE5force0ECs14kWLkQVSKO_14deltalake_core.exit19

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3set7HashSetNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEE5force0ECs14kWLkQVSKO_14deltalake_core.exit19: ; preds = %bb.h, %bb.i
  call void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction8protocol9WRITER_V3)
  br label %bb.q

bb.j:                                             ; preds = %bb.c
  %i.ah = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction8protocol9WRITER_V4, i64 48) acquire, align 8
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3set7HashSetNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEE5force0ECs14kWLkQVSKO_14deltalake_core.exit20, label %bb.k, !prof !6

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction8protocol9WRITER_V4, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction8protocol9WRITER_V4, i64 48), i1 noundef zeroext true, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3set7HashSetNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEE5force0ECs14kWLkQVSKO_14deltalake_core.exit20

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3set7HashSetNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEE5force0ECs14kWLkQVSKO_14deltalake_core.exit20: ; preds = %bb.j, %bb.k
  call void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction8protocol9WRITER_V4)
  br label %bb.q

bb.l:                                             ; preds = %bb.c
  %i.aj = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction8protocol9WRITER_V5, i64 48) acquire, align 8
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3set7HashSetNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEE5force0ECs14kWLkQVSKO_14deltalake_core.exit21, label %bb.m, !prof !6

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction8protocol9WRITER_V5, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction8protocol9WRITER_V5, i64 48), i1 noundef zeroext true, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3set7HashSetNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEE5force0ECs14kWLkQVSKO_14deltalake_core.exit21

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3set7HashSetNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEE5force0ECs14kWLkQVSKO_14deltalake_core.exit21: ; preds = %bb.l, %bb.m
  call void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction8protocol9WRITER_V5)
  br label %bb.q

end_hunk_0
