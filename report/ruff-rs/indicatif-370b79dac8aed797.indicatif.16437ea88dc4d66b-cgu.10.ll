Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/indicatif-370b79dac8aed797.indicatif.16437ea88dc4d66b-cgu.10?download=true
inline.NumInlined: 77
inline.NumDeleted: 41
begin_hunk_0_@_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs1UvybGPDVxf_9indicatif11draw_target8LineTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_:bb.a
_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1UvybGPDVxf_9indicatif.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs1UvybGPDVxf_9indicatif5multi16MultiStateMemberENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !10, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1UvybGPDVxf_9indicatif.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 40
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1UvybGPDVxf_9indicatif.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1UvybGPDVxf_9indicatif.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs1UvybGPDVxf_9indicatif5style12TemplatePartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !10, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1UvybGPDVxf_9indicatif.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1UvybGPDVxf_9indicatif.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1UvybGPDVxf_9indicatif.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs1UvybGPDVxf_9indicatif9in_memory4MoveENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !10, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1UvybGPDVxf_9indicatif.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1UvybGPDVxf_9indicatif.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1UvybGPDVxf_9indicatif.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1UvybGPDVxf_9indicatif(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !10, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1UvybGPDVxf_9indicatif.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1UvybGPDVxf_9indicatif.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1UvybGPDVxf_9indicatif.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs6rR7J0NOYM8_5vt1004cell4CellENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1UvybGPDVxf_9indicatif(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !10, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1UvybGPDVxf_9indicatif.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1UvybGPDVxf_9indicatif.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1UvybGPDVxf_9indicatif.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1UvybGPDVxf_9indicatif(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !10, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1UvybGPDVxf_9indicatif.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1UvybGPDVxf_9indicatif.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1UvybGPDVxf_9indicatif.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1UvybGPDVxf_9indicatif(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !10, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1UvybGPDVxf_9indicatif.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1UvybGPDVxf_9indicatif.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1UvybGPDVxf_9indicatif.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRcNtB6_5Debug3fmtCs1UvybGPDVxf_9indicatif(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !34, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsj_NtCs4NRVxsYgnAr_4core3fmtcNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRjNtB6_5Debug3fmtCs1UvybGPDVxf_9indicatif(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !9, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !35, !noalias !38, !noundef !4 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 67108864
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_RNvXs8_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt.exit

_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs1UvybGPDVxf_9indicatif(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneB1u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 6 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1                          ; 3 uses
  %i.f = icmp ugt i64 %i.e, 576460752303423487
  br i1 %i.f, label %bb.e, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.g = shl nuw i64 %i.e, 5                      ; 3 uses
  %i.h = add nsw i64 %i.c, 17                     ; 2 uses
  %i.i = add i64 %i.h, %i.g                       ; 4 uses
  %i.j = icmp ult i64 %i.i, %i.g
  %i.k = icmp ugt i64 %i.i, 9223372036854775792
  %or.cond.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i, label %bb.e, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, !prof !33

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.d
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !40
  %i.l = tail call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #22, !noalias !40 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !40
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.o = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.i), !noalias !40
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.n, %bb.e ], [ %i.o, %bb.f ] ; 2 uses
  %.sroa.12.023.i = extractvalue { i64, i64 } %.pn.i, 1
  %.sroa.7.024.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.pre = add i64 %.sroa.7.024.i, 17
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEE17new_uninitializedB1u_.exit

bb.h:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.p = icmp ult i64 %i.c, 8
  %i.q = lshr i64 %i.e, 3
  %i.r = mul nuw nsw i64 %i.q, 7
  %.sroa.07.0.i.i = select i1 %i.p, i64 %i.c, i64 %i.r
  %2 = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEE17new_uninitializedB1u_.exit

_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEE17new_uninitializedB1u_.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.h, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.023.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.024.i, %bb.g ], [ %i.c, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %2, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.0, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.s = load ptr, ptr %1, align 8, !alias.scope !55, !noalias !56, !nonnull !4, !noundef !4 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.s, i64 %.pre-phi, i1 false), !noalias !57
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !55, !noalias !56, !noundef !4 ; 3 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEE17new_uninitializedB1u_.exit
  %.val3.i.i.i = load <16 x i8>, ptr %i.s, align 16, !noalias !58
  %i.w = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.x = bitcast <16 x i1> %i.w to i16
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.z = ptrtoint ptr %i.s to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEEENCNvMse_B1y_B1v_15clone_from_impl0EEB2w_(i64 %.sroa.012.030.i.i, ptr nonnull align 8 dereferenceable(32) %i.a) #20
          to label %.body unwind label %bb.l, !noalias !55

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i
  %.sroa.012.030.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bb, %bb.k ]
  %.sroa.013.029.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.k ] ; 2 uses
  %.sroa.6.028.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.k ] ; 2 uses
  %.sroa.814.027.i.i = phi i16 [ %i.x, %.lr.ph.i.i ], [ %i.as, %bb.k ] ; 2 uses
  %.sroa.1015.026.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.aq, %bb.k ]
  %.not12.i.i.i = icmp eq i16 %.sroa.814.027.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.ab = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.sroa.6.028.i.i, %bb.j ] ; 2 uses
  %i.ac = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.sroa.013.029.i.i, %bb.j ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.ab, align 16, !noalias !61
  %i.ad = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -512 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ad to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.028.i.i, %bb.j ], [ %i.af, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.029.i.i, %bb.j ], [ %i.ae, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.027.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ag = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ah = zext nneg i16 %i.ag to i64
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i, i64 %i.ai ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -32
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !64, !noalias !67, !nonnull !4, !noundef !4
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 -24
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !64, !noalias !67, !noundef !4
  %i.ao = getelementptr inbounds i8, ptr %i.aj, i64 -16
  %i.ap = invoke { ptr, ptr } @_RNvXs8_NtCs1UvybGPDVxf_9indicatif5styleINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB5_15ProgressTrackerEL_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ao)
          to label %bb.k unwind label %bb.i, !noalias !57 ; 2 uses

bb.k:                                             ; preds = %.loopexit.i.i
  %i.aq = add i64 %.sroa.1015.026.i.i, -1         ; 2 uses
  %i.ar = add i16 %.lcssa.i.i.i, -1
  %i.as = and i16 %i.ar, %.lcssa.i.i.i
  %i.at = extractvalue { ptr, ptr } %i.ap, 0
  %i.au = extractvalue { ptr, ptr } %i.ap, 1
  %i.av = ptrtoint ptr %i.aj to i64
  %i.aw = sub i64 %i.z, %i.av
  %i.ax = ashr exact i64 %i.aw, 5                 ; 2 uses
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds [32 x i8], ptr %.sroa.0.0, i64 %i.ay ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -32
  store ptr %i.al, ptr %i.ba, align 8, !noalias !57
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.az, i64 -24
  store i64 %i.an, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !57
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.az, i64 -16
  store ptr %i.at, ptr %.sroa.517.0..sroa_idx.i.i, align 8, !noalias !57
  %.sroa.618.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.az, i64 -8
  store ptr %i.au, ptr %.sroa.618.0..sroa_idx.i.i, align 8, !noalias !57
  %i.bb = add nsw i64 %i.ax, 1
  %i.bc = icmp eq i64 %i.aq, 0
  br i1 %i.bc, label %.loopexit, label %bb.j

bb.l:                                             ; preds = %bb.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !57
  unreachable

bb.m:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %bb.i
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1u_(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown3raw8RawTableTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEEEB1X_.exit unwind label %bb.n

.loopexit:                                        ; preds = %bb.k, %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEE17new_uninitializedB1u_.exit
  store i64 %i.u, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !56, !noalias !55
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !55, !noalias !56, !noundef !4
  store i64 %i.bf, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !56, !noalias !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.n:                                             ; preds = %.body
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown3raw8RawTableTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEEEB1X_.exit: ; preds = %.body
  resume { ptr, i32 } %i.aa
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !69, !noundef !4 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EENtNtB1k_5alloc6GlobalEB1S_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !75, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEEB1P_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !75, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !76
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEEB1h_.exit.i.i, %bb.c
  %.sroa.06.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEEB1h_.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEEB1h_.exit.i.i ] ; 2 uses
  %.sroa.87.015.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEEB1h_.exit.i.i ] ; 2 uses
  %.sroa.108.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEEB1h_.exit.i.i ]
  %.not12.i.i.i = icmp eq i16 %.sroa.87.015.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEE9next_implKb0_EB1A_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.06.017.i.i, %bb.d ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !79
  %i.m = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -512 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEE9next_implKb0_EB1A_.exit.i.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEE9next_implKb0_EB1A_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.017.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.87.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i, i64 %i.t ; 2 uses
  %i.v = add i64 %.sroa.108.014.i.i, -1           ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 -16
  %.val.i.i = load ptr, ptr %i.w, align 8, !noalias !75 ; 5 uses
  %i.x = getelementptr i8, ptr %i.u, i64 -8
  %.val5.i.i = load ptr, ptr %i.x, align 8, !noalias !75, !nonnull !4, !align !9, !noundef !4 ; 5 uses
  %i.y = load ptr, ptr %.val5.i.i, align 8, !invariant.load !4, !noalias !75 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEE9next_implKb0_EB1A_.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.y(ptr noundef nonnull %.val.i.i)
          to label %bb.f unwind label %bb.g, !noalias !75

bb.f:                                             ; preds = %bb.e, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEE9next_implKb0_EB1A_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !10, !invariant.load !4, !noalias !75 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEEB1h_.exit.i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !11, !invariant.load !4, !noalias !75
end_hunk_0
