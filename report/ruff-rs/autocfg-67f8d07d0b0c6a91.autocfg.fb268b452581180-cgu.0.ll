Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/autocfg-67f8d07d0b0c6a91.autocfg.fb268b452581180-cgu.0?download=true
inline.NumInlined: 103
inline.NumDeleted: 24
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyuEECs1lymFvuhrhY_7autocfg:bb.a
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyuENtNtCscdodAO9FK5_5alloc5alloc6GlobalECs1lymFvuhrhY_7autocfg(ptr nofree readonly align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, i64 %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCs1lymFvuhrhY_7autocfg.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.d) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs1lymFvuhrhY_7autocfg.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 2 uses
  %i.h = add i64 %3, -1
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs1lymFvuhrhY_7autocfg.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = sub i64 0, %3
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %i.b, 17
  %i.n = add i64 %i.m, %i.l                       ; 4 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = sub i64 -9223372036854775808, %3
  %i.q = icmp ugt i64 %i.n, %i.p
  %or.cond = select i1 %i.o, i1 true, i1 %i.q
  br i1 %or.cond, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs1lymFvuhrhY_7autocfg.exit.thread, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs1lymFvuhrhY_7autocfg.exit

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs1lymFvuhrhY_7autocfg.exit.thread: ; preds = %bb.d, %bb.b, %bb.c
  %i.r = load ptr, ptr %0, align 8
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 undef
  br label %bb.e

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs1lymFvuhrhY_7autocfg.exit: ; preds = %bb.d
  %i.t = load ptr, ptr %0, align 8
  %i.u = sub nsw i64 0, %i.l
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %i.u
  %i.w = icmp eq i64 %i.n, 0
  br i1 %i.w, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCs1lymFvuhrhY_7autocfg.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs1lymFvuhrhY_7autocfg.exit.thread, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs1lymFvuhrhY_7autocfg.exit
  %i.x = phi ptr [ %i.s, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs1lymFvuhrhY_7autocfg.exit.thread ], [ %i.v, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs1lymFvuhrhY_7autocfg.exit ]
  %.sroa.0.05 = phi i64 [ 0, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs1lymFvuhrhY_7autocfg.exit.thread ], [ %3, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs1lymFvuhrhY_7autocfg.exit ]
  %.sroa.6.04 = phi i64 [ undef, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs1lymFvuhrhY_7autocfg.exit.thread ], [ %i.n, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs1lymFvuhrhY_7autocfg.exit ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr %i.x, i64 %.sroa.6.04, i64 %.sroa.0.05) #34
  br label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCs1lymFvuhrhY_7autocfg.exit

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCs1lymFvuhrhY_7autocfg.exit: ; preds = %bb.e, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs1lymFvuhrhY_7autocfg.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECs1lymFvuhrhY_7autocfg(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readnone captures(none) %1, i64 %2, i64 %3, i64 %4, i1 zeroext %5) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %4) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  br i1 %i.b, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs1lymFvuhrhY_7autocfg.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i1 } %i.a, 0         ; 2 uses
  %i.d = add i64 %3, -1
  %i.e = add i64 %i.d, %i.c                       ; 2 uses
  %i.f = icmp ult i64 %i.e, %i.c
  br i1 %i.f, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs1lymFvuhrhY_7autocfg.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sub i64 0, %3
  %i.h = and i64 %i.e, %i.g                       ; 3 uses
  %i.i = add i64 %4, 16
  %i.j = add i64 %i.i, %i.h                       ; 5 uses
  %i.k = icmp ult i64 %i.j, %i.h
  %i.l = sub i64 -9223372036854775808, %3
  %i.m = icmp ugt i64 %i.j, %i.l
  %.not = icmp eq i64 %3, 0
  %i.n = or i1 %.not, %i.m
  %or.cond30 = select i1 %i.k, i1 true, i1 %i.n
  br i1 %or.cond30, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs1lymFvuhrhY_7autocfg.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq i64 %i.j, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = inttoptr i64 %3 to ptr
  br label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocateCs1lymFvuhrhY_7autocfg.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  %i.q = tail call ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 %i.j, i64 %3) #34
  br label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocateCs1lymFvuhrhY_7autocfg.exit

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocateCs1lymFvuhrhY_7autocfg.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.i.i = phi ptr [ %i.p, %bb.e ], [ %i.q, %bb.f ] ; 2 uses
  %i.r = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %i.r, label %bb.g, label %bb.h

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs1lymFvuhrhY_7autocfg.exit.thread: ; preds = %bb.b, %bb.a, %bb.c
  %i.s = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 zeroext %5) ; 2 uses
  %i.t = extractvalue { i64, i64 } %i.s, 0
  %i.u = extractvalue { i64, i64 } %i.s, 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.u, ptr %i.w, align 8
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.g:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocateCs1lymFvuhrhY_7autocfg.exit
  %i.x = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 zeroext %5, i64 %3, i64 %i.j) ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = extractvalue { i64, i64 } %i.x, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.z, ptr %i.ab, align 8
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocateCs1lymFvuhrhY_7autocfg.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.h
  %i.ad = add i64 %4, -1                          ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 8
  %i.af = lshr i64 %4, 3
  %i.ag = mul nuw i64 %i.af, 7
  %.sroa.07.0 = select i1 %i.ae, i64 %i.ad, i64 %i.ag
  store ptr %i.ac, ptr %0, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %.sroa.26.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.07.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs1lymFvuhrhY_7autocfg.exit.thread
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCscdodAO9FK5_5alloc5alloc6GlobalECs1lymFvuhrhY_7autocfg(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readnone captures(none) %1, i64 %2, i64 %3, i64 %4, i1 zeroext %5) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %4, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %4, 15
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = icmp ugt i64 %4, 2305843009213693951
  br i1 %i.c, label %bb.l, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.d = icmp ult i64 %2, 2
  %.inv.i = icmp ugt i64 %2, 3
  %..i = select i1 %.inv.i, i64 3, i64 7
  %.sroa.03.0.i = select i1 %i.d, i64 14, i64 %..i
  %i.e = tail call i64 @_RNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxCs1lymFvuhrhY_7autocfg(i64 %.sroa.03.0.i, i64 range(i64 1, 0) %4) ; 2 uses
  %i.f = icmp ult i64 %i.e, 4
  %i.g = icmp ult i64 %i.e, 8
  %.16.i = select i1 %i.g, i64 8, i64 16
  %.sroa.04.0.i = select i1 %i.f, i64 4, i64 %.16.i
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.h = shl nuw i64 %4, 3
  %i.i = udiv i64 %i.h, 7
  %i.j = add nsw i64 %i.i, -1
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true)
  %i.l = lshr i64 -1, %i.k
  %i.m = add nuw nsw i64 %i.l, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.4.0.i.ph = phi i64 [ %i.m, %bb.f ], [ %.sroa.04.0.i, %bb.e ] ; 5 uses
  %i.n = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %.sroa.4.0.i.ph) ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.o, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs1lymFvuhrhY_7autocfg.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = extractvalue { i64, i1 } %i.n, 0         ; 2 uses
  %i.q = add i64 %3, -1
  %i.r = add i64 %i.q, %i.p                       ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.p
  br i1 %i.s, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs1lymFvuhrhY_7autocfg.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = sub i64 0, %3
  %i.u = and i64 %i.r, %i.t                       ; 3 uses
  %i.v = add nuw nsw i64 %.sroa.4.0.i.ph, 16      ; 2 uses
  %i.w = add i64 %i.v, %i.u                       ; 4 uses
  %i.x = icmp ult i64 %i.w, %i.u
  %i.y = sub i64 -9223372036854775808, %3
  %i.z = icmp ugt i64 %i.w, %i.y
  %.not.i = icmp eq i64 %3, 0
  %i.aa = or i1 %.not.i, %i.z
  %or.cond30.i = select i1 %i.x, i1 true, i1 %i.aa
  br i1 %or.cond30.i, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs1lymFvuhrhY_7autocfg.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  %i.ab = tail call ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 %i.w, i64 %3) #34 ; 2 uses
  %6 = icmp eq ptr %i.ab, null
  br i1 %6, label %bb.k, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECs1lymFvuhrhY_7autocfg.exit

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs1lymFvuhrhY_7autocfg.exit.thread.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.ac = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 zeroext %5)
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECs1lymFvuhrhY_7autocfg.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 zeroext %5, i64 %3, i64 %i.w)
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECs1lymFvuhrhY_7autocfg.exit.thread

bb.l:                                             ; preds = %bb.d
  %i.ae = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 zeroext %5) ; 2 uses
  %i.af = extractvalue { i64, i64 } %i.ae, 0
  %i.ag = extractvalue { i64, i64 } %i.ae, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.af, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ag, ptr %i.ai, align 8
  store ptr null, ptr %0, align 8
  br label %bb.m

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECs1lymFvuhrhY_7autocfg.exit.thread: ; preds = %bb.k, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs1lymFvuhrhY_7autocfg.exit.thread.i
  %.pn = phi { i64, i64 } [ %i.ac, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs1lymFvuhrhY_7autocfg.exit.thread.i ], [ %i.ad, %bb.k ] ; 2 uses
  %.sroa.9.030 = extractvalue { i64, i64 } %.pn, 1
  %.sroa.4.031 = extractvalue { i64, i64 } %.pn, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.031, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.030, ptr %i.ak, align 8
  store ptr null, ptr %0, align 8
  br label %bb.m

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECs1lymFvuhrhY_7autocfg.exit: ; preds = %bb.j
  %i.al = icmp samesign ult i64 %.sroa.4.0.i.ph, 9
  %i.am = add nsw i64 %.sroa.4.0.i.ph, -1         ; 2 uses
  %i.an = lshr i64 %.sroa.4.0.i.ph, 3
  %i.ao = mul nuw nsw i64 %i.an, 7
  %.sroa.07.0.i = select i1 %i.al, i64 %i.am, i64 %i.ao
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.u ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, i8 -1, i64 %i.v, i1 false)
  store ptr %i.ap, ptr %0, align 8
  %.sroa.317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.am, ptr %.sroa.317.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.07.0.i, ptr %.sroa.518.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECs1lymFvuhrhY_7autocfg.exit.thread, %bb.b, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECs1lymFvuhrhY_7autocfg.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RINvMsh_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5DyingNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB1r_ENtB19_14LeafOrInternalE21deallocate_and_ascendNtNtBc_5alloc6GlobalECs1lymFvuhrhY_7autocfg(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr captures(address) %1, i64 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %2, 1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.d = load i16, ptr %i.c, align 8
  %i.e = zext i16 %i.d to i64
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.33.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store ptr %i.a, ptr %0, align 8
  %.not = icmp eq i64 %2, 0
  %. = select i1 %.not, i64 544, i64 640
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr nonnull %1, i64 %., i64 8) #34
  ret void
}

; Function Attrs: nonlazybind uwtable
define ptr @_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTyuEE9next_implKb0_ECs1lymFvuhrhY_7autocfg(ptr nofree align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8              ; 2 uses
  %.not11 = icmp eq i16 %i.d, 0
  br i1 %.not11, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre14 = load ptr, ptr %0, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.pre = load ptr, ptr %i.e, align 8
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.q, i64 -128
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.._crit_edge_crit_edge
  %i.g = phi ptr [ %.pre14, %.._crit_edge_crit_edge ], [ %i.f, %._crit_edge.loopexit ]
  %.lcssa = phi i16 [ %i.d, %.._crit_edge_crit_edge ], [ %i.u, %._crit_edge.loopexit ] ; 3 uses
  %i.h = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.i = zext nneg i16 %i.h to i64
  %i.j = add i16 %.lcssa, -1
  %i.k = and i16 %i.j, %.lcssa
  store i16 %i.k, ptr %i.c, align 8
  %i.l = sub nsw i64 0, %i.i
  %i.m = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.l
  ret ptr %i.m

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.n = phi ptr [ %.pre, %.lr.ph ], [ %i.t, %bb.b ]
  %.val = load <2 x i64>, ptr %i.n, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store <2 x i64> %.val, ptr %i.a, align 16
  call void @_RNvMs1K_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m128i8as_i8x16Cs1lymFvuhrhY_7autocfg(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr nonnull align 16 %i.a)
  %i.o = load <16 x i8>, ptr %i.b, align 16
  %i.p = icmp sgt <16 x i8> %i.o, splat (i8 -1)   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store <16 x i1> %i.p, ptr %i.c, align 8
  %i.q = load ptr, ptr %0, align 8                ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -128
  store ptr %i.r, ptr %0, align 8
  %i.s = load ptr, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  store ptr %i.t, ptr %i.e, align 8
  %i.u = bitcast <16 x i1> %i.p to i16            ; 2 uses
  %.not = icmp eq i16 %i.u, 0
  br i1 %.not, label %bb.b, label %._crit_edge.loopexit
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtB8_6string6StringE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1o_6filter6FilterIB1k_INtNtNtB1s_3str4iter5SplitcENvMB2E_e4trimENCNvCs1lymFvuhrhY_7autocfg9rustflags0ENvYeNtBH_8ToString9to_stringEEB3j_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  call void @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBN_INtNtNtBb_3str4iter5SplitcENvMB1r_e4trimENCNvCs1lymFvuhrhY_7autocfg9rustflags0ENvYeNtNtCscdodAO9FK5_5alloc6string8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextB25_(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr align 8 %1)
  %i.d = load i64, ptr %i.c, align 8
  %.not4 = icmp eq i64 %i.d, -1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.n

bb.c:                                             ; preds = %.lr.ph, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs1lymFvuhrhY_7autocfg.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.g = load i64, ptr %i.e, align 8              ; 3 uses
  %i.h = load i64, ptr %0, align 8
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.d, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs1lymFvuhrhY_7autocfg.exit

._crit_edge:                                      ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs1lymFvuhrhY_7autocfg.exit, %bb.a
  ret void

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBN_INtNtNtBb_3str4iter5SplitcENvMB1r_e4trimENCNvCs1lymFvuhrhY_7autocfg9rustflags0ENvYeNtNtCscdodAO9FK5_5alloc6string8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator9size_hintB25_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %1)
          to label %bb.f unwind label %bb.e

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs1lymFvuhrhY_7autocfg.exit: ; preds = %bb.f, %bb.g, %bb.c
  %i.j = load ptr, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.l = add i64 %i.g, 1
  store i64 %i.l, ptr %i.e, align 8
  call void @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBN_INtNtNtBb_3str4iter5SplitcENvMB1r_e4trimENCNvCs1lymFvuhrhY_7autocfg9rustflags0ENvYeNtNtCscdodAO9FK5_5alloc6string8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextB25_(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr align 8 %1)
  %i.m = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.m, -1
  br i1 %.not, label %._crit_edge, label %bb.c

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1lymFvuhrhY_7autocfg(ptr nonnull align 8 %i.b) #32
          to label %bb.b unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.o = load i64, ptr %i.a, align 8
  %i.p = call i64 @llvm.uadd.sat.i64(i64 %i.o, i64 1) ; 2 uses
  %i.q = load i64, ptr %i.e, align 8              ; 2 uses
  %i.r = load i64, ptr %0, align 8
  %i.s = sub i64 %i.r, %i.q
  %i.t = icmp ugt i64 %i.p, %i.s
  br i1 %i.t, label %bb.g, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs1lymFvuhrhY_7autocfg.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdB6qrhj7hiN_9addr2line(ptr nonnull align 8 %0, i64 %i.q, i64 %i.p, i64 8, i64 24)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs1lymFvuhrhY_7autocfg.exit unwind label %bb.e

bb.h:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtB8_6string6StringE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1s_3str4iter5SplitcENvYeNtBH_8ToString9to_stringEECs1lymFvuhrhY_7autocfg(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  call void @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitcENvYeNtNtCscdodAO9FK5_5alloc6string8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCs1lymFvuhrhY_7autocfg(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr align 8 %1)
  %i.d = load i64, ptr %i.c, align 8
  %.not4 = icmp eq i64 %i.d, -1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.n

bb.c:                                             ; preds = %.lr.ph, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs1lymFvuhrhY_7autocfg.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.g = load i64, ptr %i.e, align 8              ; 3 uses
  %i.h = load i64, ptr %0, align 8
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.d, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs1lymFvuhrhY_7autocfg.exit

._crit_edge:                                      ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs1lymFvuhrhY_7autocfg.exit, %bb.a
  ret void

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitcENvYeNtNtCscdodAO9FK5_5alloc6string8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator9size_hintCs1lymFvuhrhY_7autocfg(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %1)
          to label %bb.f unwind label %bb.e
end_hunk_0
