inline.NumInlined: 260
inline.NumDeleted: 121
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs:bb.a
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !81, !alias.scope !272, !noundef !7 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %.sroa.0.0.i14.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !272
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !272
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %.sroa.0.0.i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !272
  %i.j = load i64, ptr %i.a, align 8, !range !275, !noalias !272, !noundef !7
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !3, !noalias !272, !noundef !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !272
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #26
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !272, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !272
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !272
  %i.q = icmp sgt i64 %.sroa.0.0.i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %.sroa.0.0.i14.i, ptr %0, align 8, !alias.scope !272
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvMs1_NtNtCs3JXekYNd0JR_7dashmap6mapref5entryINtB5_11VacantEntryNtCs3LITIwzqf1g_4uuid4UuidNtNtCs6Po7BT7Nknu_5alloc6string6StringE6insertCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !7, !align !80, !noundef !7 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !7
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noundef !7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %i.j = load ptr, ptr %i.c, align 8, !alias.scope !276, !noalias !279, !nonnull !7, !noundef !7 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !noalias !281, !noundef !7
  %i.m = and i8 %i.l, 1
  %i.n = zext nneg i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.p = lshr i64 %i.e, 57
  %i.q = trunc nuw nsw i64 %i.p to i8             ; 2 uses
  %i.r = add i64 %i.g, -16
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !276, !noalias !279, !noundef !7
  %i.u = and i64 %i.t, %i.r
  store i8 %i.q, ptr %i.k, align 1, !noalias !281
  %i.v = getelementptr i8, ptr %i.j, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 16
  store i8 %i.q, ptr %i.w, align 1, !noalias !281
  %i.x = load <2 x i64>, ptr %i.o, align 8, !alias.scope !276, !noalias !279
  %i.y = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.n, i64 0
  %i.z = sub <2 x i64> %i.x, %i.y
  store <2 x i64> %i.z, ptr %i.o, align 8, !alias.scope !276, !noalias !279
  %i.aa = sub nsw i64 0, %i.g
  %i.ab = getelementptr inbounds [40 x i8], ptr %i.j, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -24
  store ptr %i.b, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ad, ptr %i.af, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvMs1_NtNtCs3JXekYNd0JR_7dashmap6mapref5entryINtB5_11VacantEntryNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EE6insertCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !align !80, !noundef !7 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.e = load i64, ptr %i.d, align 8, !noundef !7
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = load i64, ptr %i.f, align 8, !noundef !7 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !282, !noalias !285, !nonnull !7, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.g ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !noalias !287, !noundef !7
  %i.k = and i8 %i.j, 1
  %i.l = zext nneg i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.n = lshr i64 %i.e, 57
  %i.o = trunc nuw nsw i64 %i.n to i8             ; 2 uses
  %i.p = add i64 %i.g, -16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !282, !noalias !285, !noundef !7
  %i.s = and i64 %i.r, %i.p
  store i8 %i.o, ptr %i.i, align 1, !noalias !287
  %i.t = getelementptr i8, ptr %i.h, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 16
  store i8 %i.o, ptr %i.u, align 1, !noalias !287
  %i.v = load <2 x i64>, ptr %i.m, align 8, !alias.scope !282, !noalias !285
  %i.w = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.l, i64 0
  %i.x = sub <2 x i64> %i.v, %i.w
  store <2 x i64> %i.x, ptr %i.m, align 8, !alias.scope !282, !noalias !285
  %i.y = sub nsw i64 0, %i.g
  %i.z = getelementptr inbounds [104 x i8], ptr %i.h, i64 %i.y ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -104 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aa, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false), !noalias !282
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.z, i64 -16 ; 2 uses
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !282
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.z, i64 -8
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !282
  store ptr %i.b, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0..sroa_idx, ptr %i.ac, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvMs1_NtNtCs3JXekYNd0JR_7dashmap6mapref5entryINtB5_11VacantEntryNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EE6insertCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !align !80, !noundef !7 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.e = load i64, ptr %i.d, align 8, !noundef !7
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = load i64, ptr %i.f, align 8, !noundef !7 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !288, !noalias !291, !nonnull !7, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.g ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !noalias !293, !noundef !7
  %i.k = and i8 %i.j, 1
  %i.l = zext nneg i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.n = lshr i64 %i.e, 57
  %i.o = trunc nuw nsw i64 %i.n to i8             ; 2 uses
  %i.p = add i64 %i.g, -16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !288, !noalias !291, !noundef !7
  %i.s = and i64 %i.r, %i.p
  store i8 %i.o, ptr %i.i, align 1, !noalias !293
  %i.t = getelementptr i8, ptr %i.h, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 16
  store i8 %i.o, ptr %i.u, align 1, !noalias !293
  %i.v = load <2 x i64>, ptr %i.m, align 8, !alias.scope !288, !noalias !291
  %i.w = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.l, i64 0
  %i.x = sub <2 x i64> %i.v, %i.w
  store <2 x i64> %i.x, ptr %i.m, align 8, !alias.scope !288, !noalias !291
  %i.y = sub nsw i64 0, %i.g
  %i.z = getelementptr inbounds [104 x i8], ptr %i.h, i64 %i.y ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -104 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aa, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false), !noalias !288
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.z, i64 -16 ; 2 uses
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !288
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.z, i64 -8
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !288
  store ptr %i.b, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0..sroa_idx, ptr %i.ac, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !81    ; 3 uses
  %.sroa.05.0 = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !72

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 2 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %i.c, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.i = icmp eq i64 %4, 1
  %i.j = icmp ult i64 %4, 1025
  %..i = select i1 %i.j, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.i, i64 8, i64 %..i
  %.sroa.0.0.i14.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !294
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.k, align 8, !alias.scope !294
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val13.i, i64 noundef %.sroa.0.0.i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !294
  %i.l = load i64, ptr %i.a, align 8, !range !275, !noalias !294, !noundef !7
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.m, label %bb.e, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %i.n, align 8, !range !3, !noalias !294, !noundef !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noalias !294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !294
  br label %bb.f

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.d
  %i.r = load ptr, ptr %i.n, align 8, !noalias !294, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !294
  store ptr %i.r, ptr %i.k, align 8, !alias.scope !294
  %i.s = icmp sgt i64 %.sroa.0.0.i14.i, -1
  tail call void @llvm.assume(i1 %i.s)
  store i64 %.sroa.0.0.i14.i, ptr %0, align 8, !alias.scope !294
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.c, %bb.e, %bb.b
  %.sroa.3.0 = phi i64 [ undef, %bb.b ], [ undef, %bb.c ], [ %i.q, %bb.e ], [ undef, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsj34PGqTgg0L_16deltalake_lakefs.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.o, %bb.e ], [ -9223372036854775807, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsj34PGqTgg0L_16deltalake_lakefs.exit ], [ -9223372036854775807, %bb.a ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !alias.scope !297 ; 2 uses
  %.sroa.05.0.i = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0.i, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !72

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 4 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !303
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i.i = load ptr, ptr %i.h, align 8, !alias.scope !303
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !303
  %i.i = load i64, ptr %i.a, align 8, !range !275, !noalias !303, !noundef !7
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsj34PGqTgg0L_16deltalake_lakefs.exit.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !3, !noalias !303, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !303
  br label %bb.f

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !303, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !303
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !303
  %i.p = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.f, ptr %0, align 8, !alias.scope !303
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e
  %.sroa.3.0.i.ph = phi i64 [ %i.n, %bb.e ], [ undef, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i.ph = phi i64 [ %i.l, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ]
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.3.0.i.ph) #26
  unreachable

bb.g:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val10 = load ptr, ptr %i.a, align 8           ; 3 uses
  %i.b = icmp eq i64 %3, 0
  %i.c = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = mul nuw i64 %.val, %3                    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator6shrink.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2) #23
  %i.f = inttoptr i64 %2 to ptr
  store ptr %i.f, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8
  br label %bb.e

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
  %i.g = mul nuw i64 %3, %1                       ; 3 uses
  %i.h = icmp ule i64 %i.g, %i.d
  tail call void @llvm.assume(i1 %i.h)
  %i.i = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.g) #23 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator6shrink.exit
  store ptr %i.i, ptr %i.a, align 8
  %i.k = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.k)
  br label %bb.c

bb.e:                                             ; preds = %bb.a, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.g, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ -9223372036854775807, %bb.c ], [ %2, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator6shrink.exit ], [ -9223372036854775807, %bb.a ]
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.m
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #6 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !35
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #23
  br label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.k = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #23
  br label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %storemerge13 = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store i64 %.sink, ptr %i.o, align 8
  store i64 %storemerge13, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !35
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  br i1 %2, label %bb.g, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #23
  br label %bb.h

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit
  %.pn10 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn10, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn10, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBU_EE3newCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE3newCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #7 {
end_hunk_0
