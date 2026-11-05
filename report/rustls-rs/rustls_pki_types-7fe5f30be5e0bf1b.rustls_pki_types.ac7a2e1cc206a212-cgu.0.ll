Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls_pki_types-7fe5f30be5e0bf1b.rustls_pki_types.ac7a2e1cc206a212-cgu.0?download=true
inline.NumInlined: 152
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMsc_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_17PrivateSec1KeyDer9clone_key:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr nonnull align 1 %.sroa.01.0, i64 %.sroa.43.0, i1 false)
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit.thread16
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsi_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_18PrivatePkcs8KeyDer9clone_key(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.01.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0 = load ptr, ptr %.sroa.01.0.in, align 8, !nonnull !7, !noundef !7
  %.sroa.43.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.43.0 = load i64, ptr %.sroa.43.0.in, align 8, !noundef !7 ; 7 uses
  %.not.i = icmp slt i64 %.sroa.43.0, 0
  br i1 %.not.i, label %bb.d, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i64 %.sroa.43.0, 0
  br i1 %i.a, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit.thread16, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !190
  %i.b = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.43.0, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !190 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 1, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %.sroa.43.0) #26
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit.thread16: ; preds = %bb.b, %bb.e
  %i.d = phi ptr [ %i.b, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.b ]
  store i64 %.sroa.43.0, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.43.0, ptr %.sroa.59.0..sroa_idx, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr nonnull align 1 %.sroa.01.0, i64 %.sroa.43.0, i1 false)
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit.thread16
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMso_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_11TrustAnchor8to_owned(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.01.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0 = load ptr, ptr %.sroa.01.0.in, align 8, !nonnull !7, !noundef !7
  %.sroa.43.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.43.0 = load i64, ptr %.sroa.43.0.in, align 8, !noundef !7 ; 9 uses
  %.not.i = icmp slt i64 %.sroa.43.0, 0
  br i1 %.not.i, label %bb.d, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i64 %.sroa.43.0, 0
  br i1 %i.a, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit.thread57, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !203
  %i.b = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.43.0, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !203 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 1, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %.sroa.43.0) #26
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit.thread57: ; preds = %bb.b, %bb.g
  %i.d = phi ptr [ %i.b, %bb.g ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 2 uses
  %.sroa.08.0.in = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.08.0 = load ptr, ptr %.sroa.08.0.in, align 8, !nonnull !7, !noundef !7
  %.sroa.410.0.in = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.410.0 = load i64, ptr %.sroa.410.0.in, align 8, !noundef !7 ; 9 uses
  %.not.i32 = icmp slt i64 %.sroa.410.0, 0
  br i1 %.not.i32, label %bb.i, label %bb.e, !prof !13

bb.e:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit.thread57
  %i.e = icmp eq i64 %.sroa.410.0, 0
  br i1 %i.e, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit34.thread68, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !204
  %i.f = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.410.0, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !204 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.i, label %bb.j

bb.g:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr nonnull align 1 %.sroa.01.0, i64 %.sroa.43.0, i1 false)
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit.thread57

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerEBD_.exit38: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i37, %bb.p, %bb.h
  %.pn = phi { ptr, i32 } [ %i.h, %bb.h ], [ %i.s, %bb.p ], [ %i.s, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i37 ]
  %.not76 = icmp eq i64 %.sroa.43.0, 0
  br i1 %.not76, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerEBD_.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerEBD_.exit38
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %.sroa.43.0, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !205
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerEBD_.exit

bb.h:                                             ; preds = %bb.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerEBD_.exit38

bb.i:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit.thread57, %bb.f
  %.sroa.446.0.ph = phi i64 [ 1, %bb.f ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit.thread57 ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.446.0.ph, i64 %.sroa.410.0) #26
          to label %bb.q unwind label %bb.h

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit34.thread68: ; preds = %bb.e, %bb.j
  %i.i = phi ptr [ %i.f, %bb.j ], [ inttoptr (i64 1 to ptr), %bb.e ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i64, ptr %i.j, align 8, !range !206, !noundef !7
  %.not25 = icmp eq i64 %i.k, -2
  br i1 %.not25, label %_RNCNvMso_CseO5Jl7W60Eg_16rustls_pki_typesNtB7_11TrustAnchor8to_owned0B7_.exit, label %bb.k

bb.j:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull align 1 %.sroa.08.0, i64 %.sroa.410.0, i1 false)
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit34.thread68

bb.k:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit34.thread68
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val30 = load ptr, ptr %i.l, align 8, !nonnull !7, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val31 = load i64, ptr %i.m, align 8, !noundef !7 ; 7 uses
  %.not.i.i = icmp slt i64 %.val31, 0
  br i1 %.not.i.i, label %bb.n, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.n = icmp eq i64 %.val31, 0
  br i1 %i.n, label %_RNCNvMso_CseO5Jl7W60Eg_16rustls_pki_typesNtB7_11TrustAnchor8to_owned0B7_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !207
  %i.o = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val31, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !207 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.k
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.m ], [ 0, %bb.k ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %.val31) #26
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %.val30, i64 %.val31, i1 false), !noalias !208
  br label %_RNCNvMso_CseO5Jl7W60Eg_16rustls_pki_typesNtB7_11TrustAnchor8to_owned0B7_.exit

_RNCNvMso_CseO5Jl7W60Eg_16rustls_pki_typesNtB7_11TrustAnchor8to_owned0B7_.exit: ; preds = %bb.l, %bb.o, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit34.thread68
  %.sroa.5.sroa.4.0 = phi i64 [ undef, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit34.thread68 ], [ %.val31, %bb.o ], [ 0, %bb.l ]
  %.sroa.5.sroa.0.0 = phi ptr [ undef, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit34.thread68 ], [ %i.o, %bb.o ], [ inttoptr (i64 1 to ptr), %bb.l ]
  %.sroa.012.0 = phi i64 [ -2, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseO5Jl7W60Eg_16rustls_pki_types.exit34.thread68 ], [ %.val31, %bb.o ], [ 0, %bb.l ]
  store i64 %.sroa.43.0, ptr %0, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.539.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.43.0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.410.0, ptr %i.q, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.i, ptr %.sroa.541.0..sroa_idx, align 8
  %.sroa.742.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.410.0, ptr %.sroa.742.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.012.0, ptr %i.r, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.5.sroa.0.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.5.sroa.4.0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  ret void

bb.p:                                             ; preds = %bb.n
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not = icmp eq i64 %.sroa.410.0, 0
  br i1 %.not, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerEBD_.exit38, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i37

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i37: ; preds = %bb.p
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %.sroa.410.0, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !209
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerEBD_.exit38

bb.q:                                             ; preds = %bb.i
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerEBD_.exit: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerEBD_.exit38
  resume { ptr, i32 } %.pn
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_RNvNtCseO5Jl7W60Eg_16rustls_pki_types11server_name8validate(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #8 {
bb.a:
  %i.a = add nsw i64 %1, -254
  %or.cond = icmp ult i64 %i.a, -253
  br i1 %or.cond, label %.loopexit, label %.outer

.outer:                                           ; preds = %bb.a, %bb.l
  %.sroa.032.0.ph = phi i64 [ %i.af, %bb.l ], [ 0, %bb.a ] ; 6 uses
  %i.b = icmp ult i64 %.sroa.032.0.ph, %1
  br i1 %i.b, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.outer
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.032.0.ph
  %i.d = load i8, ptr %i.c, align 1, !noundef !7  ; 3 uses
  %i.e = and i8 %i.d, -33
  %i.f = add i8 %i.e, -65
  %or.cond36.peel = icmp ult i8 %i.f, 26
  br i1 %or.cond36.peel, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader
  switch i8 %i.d, label %bb.c [
    i8 95, label %bb.e
    i8 46, label %.loopexit
    i8 45, label %.loopexit
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = add i8 %i.d, -48
  %or.cond13.peel = icmp ult i8 %i.g, 10
  br i1 %or.cond13.peel, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw nsw i64 %.sroa.032.0.ph, 1       ; 2 uses
  %exitcond.peel.not.jt2 = icmp eq i64 %i.h, %1
  br i1 %exitcond.peel.not.jt2, label %._crit_edge, label %.lr.ph.jt2

bb.e:                                             ; preds = %.lr.ph.preheader, %bb.b
  %i.i = add nuw nsw i64 %.sroa.032.0.ph, 1       ; 2 uses
  %exitcond.peel.not.jt3 = icmp eq i64 %i.i, %1
  br i1 %exitcond.peel.not.jt3, label %._crit_edge, label %.lr.ph.jt3

.._crit_edge.loopexit_crit_edge:                  ; preds = %.backedge
  br label %._crit_edge, !llvm.loop !210

._crit_edge:                                      ; preds = %bb.g, %bb.n, %bb.f, %.preheader, %.._crit_edge.loopexit_crit_edge, %bb.e, %bb.d, %bb.h, %.loopexit67
  %.sroa.029.0.lcssa = phi i8 [ %.sroa.029.043.jt3, %bb.h ], [ %.sroa.029.1.jt3, %.loopexit67 ], [ 1, %.preheader ], [ 2, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %.._crit_edge.loopexit_crit_edge ], [ 2, %bb.n ], [ 2, %bb.g ] ; 2 uses
  %.sroa.014.0.lcssa = phi i64 [ %.sroa.014.044.jt3, %bb.h ], [ %1, %.loopexit67 ], [ %1, %.preheader ], [ %1, %bb.d ], [ %1, %bb.e ], [ %i.n, %bb.f ], [ %1, %.._crit_edge.loopexit_crit_edge ], [ %1, %bb.n ], [ %.sroa.014.044.jt2, %bb.g ] ; 3 uses
  %i.j = sub i64 %.sroa.014.0.lcssa, %.sroa.032.0.ph
  %i.k = icmp eq i64 %.sroa.014.0.lcssa, %.sroa.032.0.ph
  %i.l = icmp ugt i64 %i.j, 63
  %or.cond7 = or i1 %i.k, %i.l
  %i.m = icmp eq i8 %.sroa.029.0.lcssa, 3
  %or.cond10 = or i1 %i.m, %or.cond7
  br i1 %or.cond10, label %.loopexit, label %bb.l

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.backedge
  %i.n = phi i64 [ %i.ab, %.lr.ph.lr.ph ], [ %i.s, %.backedge ] ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noundef !7  ; 3 uses
  %i.q = and i8 %i.p, -33
  %i.r = add i8 %i.q, -65
  %or.cond36 = icmp ult i8 %i.r, 26
  br i1 %or.cond36, label %.backedge, label %bb.f

.backedge:                                        ; preds = %.lr.ph, %bb.f
  %i.s = add i64 %i.n, 1                          ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %1
  br i1 %exitcond.not, label %.._crit_edge.loopexit_crit_edge, label %.lr.ph, !llvm.loop !210

.lr.ph.jt2:                                       ; preds = %bb.d, %bb.n
  %.sroa.014.044.jt2 = phi i64 [ %i.ah, %bb.n ], [ %i.h, %bb.d ] ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.014.044.jt2
  %i.u = load i8, ptr %i.t, align 1, !noundef !7  ; 3 uses
  %i.v = and i8 %i.u, -33
  %i.w = add i8 %i.v, -65
  %or.cond36.jt2 = icmp ult i8 %i.w, 26
  br i1 %or.cond36.jt2, label %.preheader, label %bb.g

.lr.ph.jt3:                                       ; preds = %bb.e, %.loopexit67
  %.sroa.014.044.jt3 = phi i64 [ %i.ai, %.loopexit67 ], [ %i.i, %bb.e ] ; 6 uses
  %.sroa.029.043.jt3 = phi i8 [ %.sroa.029.1.jt3, %.loopexit67 ], [ 1, %bb.e ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.014.044.jt3
  %i.y = load i8, ptr %i.x, align 1, !noundef !7  ; 3 uses
  %i.z = and i8 %i.y, -33
  %i.aa = add i8 %i.z, -65
  %or.cond36.jt3 = icmp ult i8 %i.aa, 26
  br i1 %or.cond36.jt3, label %.preheader, label %bb.h

.preheader:                                       ; preds = %.lr.ph.jt2, %bb.g, %.lr.ph.jt3, %bb.h
  %.sroa.014.04458.ph = phi i64 [ %.sroa.014.044.jt3, %.lr.ph.jt3 ], [ %.sroa.014.044.jt3, %bb.h ], [ %.sroa.014.044.jt2, %bb.g ], [ %.sroa.014.044.jt2, %.lr.ph.jt2 ]
  %i.ab = add i64 %.sroa.014.04458.ph, 1          ; 2 uses
  %exitcond.not90 = icmp eq i64 %i.ab, %1
  br i1 %exitcond.not90, label %._crit_edge, label %.lr.ph.lr.ph, !llvm.loop !210

.lr.ph.lr.ph:                                     ; preds = %.preheader
  br label %.lr.ph, !llvm.loop !210

bb.f:                                             ; preds = %.lr.ph
  switch i8 %i.p, label %bb.i [
    i8 95, label %.backedge
    i8 46, label %._crit_edge
    i8 45, label %.loopexit67
  ]

bb.g:                                             ; preds = %.lr.ph.jt2
  switch i8 %i.u, label %bb.j [
    i8 95, label %.preheader
    i8 46, label %._crit_edge
    i8 45, label %.loopexit67
  ]

bb.h:                                             ; preds = %.lr.ph.jt3
  switch i8 %i.y, label %bb.k [
    i8 95, label %.preheader
    i8 46, label %._crit_edge
    i8 45, label %.loopexit67
  ]

bb.i:                                             ; preds = %bb.f
  %i.ac = add i8 %i.p, -48
  %or.cond13 = icmp ult i8 %i.ac, 10
  br i1 %or.cond13, label %.loopexit67, label %.loopexit

bb.j:                                             ; preds = %bb.g
  %i.ad = add i8 %i.u, -48
  %or.cond13.jt2 = icmp ult i8 %i.ad, 10
  br i1 %or.cond13.jt2, label %bb.n, label %.loopexit

bb.k:                                             ; preds = %bb.h
  %i.ae = add i8 %i.y, -48
  %or.cond13.jt3 = icmp ult i8 %i.ae, 10
  br i1 %or.cond13.jt3, label %.loopexit67, label %.loopexit

bb.l:                                             ; preds = %._crit_edge
  %i.af = add i64 %.sroa.014.0.lcssa, 1           ; 2 uses
  %.not = icmp ult i64 %i.af, %1
  br i1 %.not, label %.outer, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = icmp eq i8 %.sroa.029.0.lcssa, 2
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.b, %.outer, %._crit_edge, %bb.i, %bb.k, %bb.c, %bb.j, %bb.a, %bb.m
  %.sroa.0.1 = phi i1 [ %i.ag, %bb.m ], [ true, %bb.a ], [ true, %bb.j ], [ true, %bb.c ], [ true, %bb.k ], [ true, %bb.i ], [ true, %._crit_edge ], [ true, %.outer ], [ true, %bb.b ], [ true, %bb.b ]
  ret i1 %.sroa.0.1

bb.n:                                             ; preds = %bb.j
  %i.ah = add i64 %.sroa.014.044.jt2, 1           ; 2 uses
  %exitcond.not.jt2 = icmp eq i64 %i.ah, %1
  br i1 %exitcond.not.jt2, label %._crit_edge, label %.lr.ph.jt2, !llvm.loop !210

.loopexit67:                                      ; preds = %bb.g, %bb.f, %bb.i, %bb.k, %bb.h
  %.sroa.014.04462 = phi i64 [ %.sroa.014.044.jt3, %bb.k ], [ %i.n, %bb.f ], [ %.sroa.014.044.jt3, %bb.h ], [ %i.n, %bb.i ], [ %.sroa.014.044.jt2, %bb.g ]
  %.sroa.029.1.jt3 = phi i8 [ 1, %bb.k ], [ 3, %bb.f ], [ 3, %bb.h ], [ 1, %bb.i ], [ 3, %bb.g ] ; 2 uses
  %i.ai = add i64 %.sroa.014.04462, 1             ; 2 uses
  %exitcond.not.jt3 = icmp eq i64 %i.ai, %1
  br i1 %exitcond.not.jt3, label %._crit_edge, label %.lr.ph.jt3, !llvm.loop !210
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc { i64, i1 } @_RNvNvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB4_6Parser14read_ipv6_addr11read_groups(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull writeonly align 2 captures(address) %1, i64 noundef range(i64 0, 9) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.idx = shl nuw nsw i64 %2, 1
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = add nsw i64 %2, -1                       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %0, align 8               ; 8 uses
  %.pre89 = load i64, ptr %i.d, align 8           ; 7 uses
  br i1 %.not, label %._crit_edge.i.peel, label %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatorNtB7_8Ipv4AddrNCNvNvMB5_BZ_14read_ipv6_addr11read_groups0E0B9_.exit.peel

_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatorNtB7_8Ipv4AddrNCNvNvMB5_BZ_14read_ipv6_addr11read_groups0E0B9_.exit.peel: ; preds = %.lr.ph
  %i.f = tail call fastcc range(i40 0, -254) i40 @_RNvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB2_6Parser14read_ipv4_addr(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) ; 3 uses
  %i.g = trunc i40 %i.f to i1
  %extract = lshr i40 %i.f, 8
  %extract.t = trunc i40 %extract to i16
  %extract106 = lshr i40 %i.f, 24
  %extract.t107 = trunc nuw i40 %extract106 to i16
  br i1 %i.g, label %.critedge, label %._crit_edge.i.peel

._crit_edge.i.peel:                               ; preds = %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatorNtB7_8Ipv4AddrNCNvNvMB5_BZ_14read_ipv6_addr11read_groups0E0B9_.exit.peel, %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %.not24.us.i.i.i.peel = icmp eq i64 %.pre89, 0
  br i1 %.not24.us.i.i.i.peel, label %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread43, label %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit.exit.us.i.i.i.peel

_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit.exit.us.i.i.i.peel: ; preds = %._crit_edge.i.peel
  %i.h = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 4 uses
  %i.i = add i64 %.pre89, -1                      ; 3 uses
  %i.j = load i8, ptr %.pre, align 1, !noalias !230, !noundef !7 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !alias.scope !231, !captures !6
  store i64 %i.i, ptr %i.d, align 8, !alias.scope !231
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %i.l = icmp ugt i8 %i.j, 57
  %i.m = add nsw i32 %i.k, -65
  %i.n = and i32 %i.m, -33
  %i.o = add nuw nsw i32 %i.n, 10
  %i.p = add nsw i32 %i.k, -48
  %spec.select117.i.i.i.peel = select i1 %i.l, i32 %i.o, i32 %i.p ; 2 uses
  %i.q = icmp ult i32 %spec.select117.i.i.i.peel, 16
  br i1 %i.q, label %.split.us.split.split.i.1.i.i.peel, label %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread43

.split.us.split.split.i.1.i.i.peel:               ; preds = %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit.exit.us.i.i.i.peel
  %i.r = trunc nuw nsw i32 %spec.select117.i.i.i.peel to i16 ; 3 uses
  %.not24.us.i.1.i.i.peel = icmp eq i64 %i.i, 0
  br i1 %.not24.us.i.1.i.i.peel, label %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread.peel, label %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit.exit.us.i.1.i.i.peel

_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit.exit.us.i.1.i.i.peel: ; preds = %.split.us.split.split.i.1.i.i.peel
  %i.s = getelementptr inbounds nuw i8, ptr %.pre, i64 2 ; 4 uses
  %i.t = add i64 %.pre89, -2                      ; 3 uses
  %i.u = load i8, ptr %i.h, align 1, !noalias !230, !noundef !7 ; 2 uses
  store ptr %i.s, ptr %0, align 8, !alias.scope !231, !captures !6
  store i64 %i.t, ptr %i.d, align 8, !alias.scope !231
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = icmp ugt i8 %i.u, 57
  %i.x = add nsw i32 %i.v, -65
  %i.y = and i32 %i.x, -33
  %i.z = add nuw nsw i32 %i.y, 10
  %i.aa = add nsw i32 %i.v, -48
  %spec.select117.i.1.i.i.peel = select i1 %i.w, i32 %i.z, i32 %i.aa ; 2 uses
  %i.ab = icmp ult i32 %spec.select117.i.1.i.i.peel, 16
  br i1 %i.ab, label %.split.us.split.split.i.2.i.i.peel, label %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread50.peel

.split.us.split.split.i.2.i.i.peel:               ; preds = %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit.exit.us.i.1.i.i.peel
  %i.ac = shl nuw nsw i16 %i.r, 4
  %i.ad = trunc nuw nsw i32 %spec.select117.i.1.i.i.peel to i16
  %i.ae = or disjoint i16 %i.ac, %i.ad            ; 3 uses
  %.not24.us.i.2.i.i.peel = icmp eq i64 %i.t, 0
  br i1 %.not24.us.i.2.i.i.peel, label %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread.peel, label %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit.exit.us.i.2.i.i.peel

_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit.exit.us.i.2.i.i.peel: ; preds = %.split.us.split.split.i.2.i.i.peel
  %i.af = getelementptr inbounds nuw i8, ptr %.pre, i64 3 ; 4 uses
  %i.ag = add i64 %.pre89, -3                     ; 3 uses
  %i.ah = load i8, ptr %i.s, align 1, !noalias !230, !noundef !7 ; 2 uses
  store ptr %i.af, ptr %0, align 8, !alias.scope !231, !captures !6
  store i64 %i.ag, ptr %i.d, align 8, !alias.scope !231
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %i.aj = icmp ugt i8 %i.ah, 57
  %i.ak = add nsw i32 %i.ai, -65
  %i.al = and i32 %i.ak, -33
  %i.am = add nuw nsw i32 %i.al, 10
  %i.an = add nsw i32 %i.ai, -48
  %spec.select117.i.2.i.i.peel = select i1 %i.aj, i32 %i.am, i32 %i.an ; 2 uses
  %i.ao = icmp ult i32 %spec.select117.i.2.i.i.peel, 16
  br i1 %i.ao, label %.split.us.split.split.i.3.i.i.peel, label %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread50.peel

.split.us.split.split.i.3.i.i.peel:               ; preds = %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit.exit.us.i.2.i.i.peel
  %i.ap = shl nuw nsw i16 %i.ae, 4
  %i.aq = trunc nuw nsw i32 %spec.select117.i.2.i.i.peel to i16
  %i.ar = or disjoint i16 %i.ap, %i.aq            ; 3 uses
  %.not24.us.i.3.i.i.peel = icmp eq i64 %i.ag, 0
  br i1 %.not24.us.i.3.i.i.peel, label %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread.peel, label %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit.exit.us.i.3.i.i.peel

_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit.exit.us.i.3.i.i.peel: ; preds = %.split.us.split.split.i.3.i.i.peel
  %i.as = getelementptr inbounds nuw i8, ptr %.pre, i64 4 ; 4 uses
  %i.at = add i64 %.pre89, -4                     ; 3 uses
  %i.au = load i8, ptr %i.af, align 1, !noalias !230, !noundef !7 ; 2 uses
  store ptr %i.as, ptr %0, align 8, !alias.scope !231, !captures !6
  store i64 %i.at, ptr %i.d, align 8, !alias.scope !231
  %i.av = zext i8 %i.au to i32                    ; 2 uses
  %i.aw = icmp ugt i8 %i.au, 57
  %i.ax = add nsw i32 %i.av, -65
  %i.ay = and i32 %i.ax, -33
  %i.az = add nuw nsw i32 %i.ay, 10
  %i.ba = add nsw i32 %i.av, -48
  %spec.select117.i.3.i.i.peel = select i1 %i.aw, i32 %i.az, i32 %i.ba ; 2 uses
  %i.bb = icmp ult i32 %spec.select117.i.3.i.i.peel, 16
  br i1 %i.bb, label %.split.us.split.split.i.4.i.i.peel, label %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread50.peel

.split.us.split.split.i.4.i.i.peel:               ; preds = %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit.exit.us.i.3.i.i.peel
  %i.bc = shl nuw i16 %i.ar, 4
  %i.bd = trunc nuw nsw i32 %spec.select117.i.3.i.i.peel to i16
  %i.be = or disjoint i16 %i.bc, %i.bd            ; 2 uses
  %.not24.us.i.4.i.i.peel = icmp eq i64 %i.at, 0
  br i1 %.not24.us.i.4.i.i.peel, label %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread.peel, label %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit.exit.us.i.4.i.i.peel

_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit.exit.us.i.4.i.i.peel: ; preds = %.split.us.split.split.i.4.i.i.peel
  %i.bf = load i8, ptr %i.as, align 1, !noalias !230, !noundef !7 ; 2 uses
  %i.bg = zext i8 %i.bf to i32                    ; 2 uses
  %i.bh = icmp ugt i8 %i.bf, 57
  %i.bi = add nsw i32 %i.bg, -65
  %i.bj = and i32 %i.bi, -34
  %i.bk = add nuw nsw i32 %i.bj, 10
  %i.bl = add nsw i32 %i.bg, -48
  %spec.select117.i.4.i.i.peel = select i1 %i.bh, i32 %i.bk, i32 %i.bl
  %i.bm = icmp ult i32 %spec.select117.i.4.i.i.peel, 16
  br i1 %i.bm, label %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread43, label %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread50.peel

_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread50.peel: ; preds = %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit.exit.us.i.4.i.i.peel, %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit.exit.us.i.3.i.i.peel, %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit.exit.us.i.2.i.i.peel, %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit.exit.us.i.1.i.i.peel
  %.lcssa25.ph.sink.i.i.ph.peel = phi ptr [ %i.af, %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit.exit.us.i.3.i.i.peel ], [ %i.h, %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit.exit.us.i.1.i.i.peel ], [ %i.s, %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit.exit.us.i.2.i.i.peel ], [ %i.as, %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit.exit.us.i.4.i.i.peel ] ; 2 uses
  %.lcssa28.ph.sink.i.i.ph.peel = phi i64 [ %i.ag, %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit.exit.us.i.3.i.i.peel ], [ %i.i, %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit.exit.us.i.1.i.i.peel ], [ %i.t, %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit.exit.us.i.2.i.i.peel ], [ %i.at, %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit.exit.us.i.4.i.i.peel ] ; 2 uses
  %.sroa.0.0.us.i22.ph.i.i.ph.peel = phi i16 [ %i.ar, %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit.exit.us.i.3.i.i.peel ], [ %i.r, %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit.exit.us.i.1.i.i.peel ], [ %i.ae, %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit.exit.us.i.2.i.i.peel ], [ %i.be, %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc8to_digit.exit.us.i.4.i.i.peel ]
  store ptr %.lcssa25.ph.sink.i.i.ph.peel, ptr %0, align 8, !alias.scope !232
  store i64 %.lcssa28.ph.sink.i.i.ph.peel, ptr %i.d, align 8, !alias.scope !232
  br label %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread.peel

_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread.peel: ; preds = %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread50.peel, %.split.us.split.split.i.4.i.i.peel, %.split.us.split.split.i.3.i.i.peel, %.split.us.split.split.i.2.i.i.peel, %.split.us.split.split.i.1.i.i.peel
  %i.bn = phi i64 [ %.lcssa28.ph.sink.i.i.ph.peel, %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread50.peel ], [ 0, %.split.us.split.split.i.3.i.i.peel ], [ 0, %.split.us.split.split.i.4.i.i.peel ], [ 0, %.split.us.split.split.i.1.i.i.peel ], [ 0, %.split.us.split.split.i.2.i.i.peel ]
  %i.bo = phi ptr [ %.lcssa25.ph.sink.i.i.ph.peel, %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread50.peel ], [ %i.af, %.split.us.split.split.i.3.i.i.peel ], [ %i.as, %.split.us.split.split.i.4.i.i.peel ], [ %i.h, %.split.us.split.split.i.1.i.i.peel ], [ %i.s, %.split.us.split.split.i.2.i.i.peel ]
  %.sroa.3.0.i2840.ph.peel = phi i16 [ %.sroa.0.0.us.i22.ph.i.i.ph.peel, %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread50.peel ], [ %i.ar, %.split.us.split.split.i.3.i.i.peel ], [ %i.be, %.split.us.split.split.i.4.i.i.peel ], [ %i.r, %.split.us.split.split.i.1.i.i.peel ], [ %i.ae, %.split.us.split.split.i.2.i.i.peel ]
  store i16 %.sroa.3.0.i2840.ph.peel, ptr %1, align 2
  %i.bp = icmp eq i64 %2, 1
  br i1 %i.bp, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread.peel, %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread
  %i.bq = phi i64 [ %i.et, %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread ], [ %i.bn, %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread.peel ] ; 12 uses
  %i.br = phi ptr [ %i.eu, %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread ], [ %i.bo, %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread.peel ] ; 14 uses
  %.sroa.0.03073 = phi ptr [ %i.bs, %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread ], [ %i.e, %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread.peel ] ; 2 uses
  %.sroa.8.072 = phi i64 [ %i.bt, %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread ], [ 1, %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread.peel ] ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.03073, i64 2 ; 2 uses
  %i.bt = add nuw nsw i64 %.sroa.8.072, 1
  %i.bu = icmp ult i64 %.sroa.8.072, %i.c
  br i1 %i.bu, label %bb.b, label %bb.d

.loopexit:                                        ; preds = %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread, %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread.peel, %bb.a, %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread43, %.critedge
  %.sroa.4.0 = phi i1 [ false, %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread43 ], [ true, %.critedge ], [ false, %bb.a ], [ false, %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread.peel ], [ false, %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread ]
  %.sroa.0.0 = phi i64 [ %.sroa.8.07277, %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread43 ], [ %i.eq, %.critedge ], [ 0, %bb.a ], [ 1, %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread.peel ], [ %2, %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread ]
  %i.bv = insertvalue { i64, i1 } poison, i64 %.sroa.0.0, 0
  %i.bw = insertvalue { i64, i1 } %i.bv, i1 %.sroa.4.0, 1
  ret { i64, i1 } %i.bw

bb.b:                                             ; preds = %.peel.next
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %.not2.i = icmp eq i64 %i.bq, 0
  br i1 %.not2.i, label %.critedge59, label %bb.c

_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatorNtB7_8Ipv4AddrNCNvNvMB5_BZ_14read_ipv6_addr11read_groups0E0B9_.exit: ; preds = %bb.c
  %i.bx = tail call fastcc range(i40 0, -254) i40 @_RNvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB2_6Parser14read_ipv4_addr(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) ; 3 uses
  %i.by = trunc i40 %i.bx to i1
  br i1 %i.by, label %.critedge.loopexit, label %.critedge59

bb.c:                                             ; preds = %bb.b
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.ca = add i64 %i.bq, -1
  %i.cb = load i8, ptr %i.br, align 1, !noalias !233, !noundef !7
  store ptr %i.bz, ptr %0, align 8, !alias.scope !233, !captures !6
  store i64 %i.ca, ptr %i.d, align 8, !alias.scope !233
  %i.cc = icmp eq i8 %i.cb, 58
  br i1 %i.cc, label %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatorNtB7_8Ipv4AddrNCNvNvMB5_BZ_14read_ipv6_addr11read_groups0E0B9_.exit, label %.critedge59

bb.d:                                             ; preds = %.critedge59, %.peel.next
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %.not1.i = icmp eq i64 %i.bq, 0
  br i1 %.not1.i, label %_RNCINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB5_6Parser14read_separatortNCNvNvMB5_BZ_14read_ipv6_addr11read_groupss_0E0B9_.exit.thread43, label %bb.e

._crit_edge.i:                                    ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %.not24.us.i.i.i = icmp eq i64 %i.bq, 1
end_hunk_0
