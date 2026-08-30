Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/regex_automata-75a01d88817e2e1f.regex_automata.b295b6dcb07c2332-cgu.09?download=true
inline.NumInlined: 141
inline.NumDeleted: 17
begin_hunk_0_@_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCscdodAO9FK5_5alloc4sync3ArceENtNtNtCsfkBndxG8xzO_14regex_automata4util10primitives10SmallIndexENtNtB1i_5alloc6GlobalEB1S_:bb.a
; Function Attrs: nonlazybind uwtable
define void @_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCsfkBndxG8xzO_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1l_(ptr nofree readonly align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, i64 %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCsfkBndxG8xzO_14regex_automata.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCsfkBndxG8xzO_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEEB1i_(ptr nonnull align 8 %0)
  %i.d = load i64, ptr %i.a, align 8              ; 2 uses
  %i.e = add i64 %i.d, 1
  %i.f = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.e) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsfkBndxG8xzO_14regex_automata.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = extractvalue { i64, i1 } %i.f, 0         ; 2 uses
  %i.i = add i64 %3, -1
  %i.j = add i64 %i.i, %i.h                       ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.h
  br i1 %i.k, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsfkBndxG8xzO_14regex_automata.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = sub i64 0, %3
  %i.m = and i64 %i.j, %i.l                       ; 3 uses
  %i.n = add i64 %i.d, 17
  %i.o = add i64 %i.n, %i.m                       ; 4 uses
  %i.p = icmp ult i64 %i.o, %i.m
  %i.q = sub i64 -9223372036854775808, %3
  %i.r = icmp ugt i64 %i.o, %i.q
  %or.cond = select i1 %i.p, i1 true, i1 %i.r
  br i1 %or.cond, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsfkBndxG8xzO_14regex_automata.exit.thread, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsfkBndxG8xzO_14regex_automata.exit

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsfkBndxG8xzO_14regex_automata.exit.thread: ; preds = %bb.d, %bb.b, %bb.c
  %i.s = load ptr, ptr %0, align 8
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 undef
  br label %bb.e

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsfkBndxG8xzO_14regex_automata.exit: ; preds = %bb.d
  %i.u = load ptr, ptr %0, align 8
  %i.v = sub nsw i64 0, %i.m
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v
  %i.x = icmp eq i64 %i.o, 0
  br i1 %i.x, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCsfkBndxG8xzO_14regex_automata.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsfkBndxG8xzO_14regex_automata.exit.thread, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsfkBndxG8xzO_14regex_automata.exit
  %i.y = phi ptr [ %i.t, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsfkBndxG8xzO_14regex_automata.exit.thread ], [ %i.w, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsfkBndxG8xzO_14regex_automata.exit ]
  %.sroa.0.05 = phi i64 [ 0, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsfkBndxG8xzO_14regex_automata.exit.thread ], [ %3, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsfkBndxG8xzO_14regex_automata.exit ]
  %.sroa.6.04 = phi i64 [ undef, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsfkBndxG8xzO_14regex_automata.exit.thread ], [ %i.o, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsfkBndxG8xzO_14regex_automata.exit ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr %i.y, i64 %.sroa.6.04, i64 %.sroa.0.05) #27
  br label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCsfkBndxG8xzO_14regex_automata.exit

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCsfkBndxG8xzO_14regex_automata.exit: ; preds = %bb.e, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsfkBndxG8xzO_14regex_automata.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsfkBndxG8xzO_14regex_automata(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readnone captures(none) %1, i64 %2, i64 %3, i64 %4, i1 zeroext %5) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %4) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  br i1 %i.b, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsfkBndxG8xzO_14regex_automata.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i1 } %i.a, 0         ; 2 uses
  %i.d = add i64 %3, -1
  %i.e = add i64 %i.d, %i.c                       ; 2 uses
  %i.f = icmp ult i64 %i.e, %i.c
  br i1 %i.f, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsfkBndxG8xzO_14regex_automata.exit.thread, label %bb.c

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
  br i1 %or.cond30, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsfkBndxG8xzO_14regex_automata.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq i64 %i.j, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = inttoptr i64 %3 to ptr
  br label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocateCsfkBndxG8xzO_14regex_automata.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.q = tail call ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 %i.j, i64 %3) #27
  br label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocateCsfkBndxG8xzO_14regex_automata.exit

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocateCsfkBndxG8xzO_14regex_automata.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.i.i = phi ptr [ %i.p, %bb.e ], [ %i.q, %bb.f ] ; 2 uses
  %i.r = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %i.r, label %bb.g, label %bb.h

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsfkBndxG8xzO_14regex_automata.exit.thread: ; preds = %bb.b, %bb.a, %bb.c
  %i.s = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 zeroext %5) ; 2 uses
  %i.t = extractvalue { i64, i64 } %i.s, 0
  %i.u = extractvalue { i64, i64 } %i.s, 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.u, ptr %i.w, align 8
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.g:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocateCsfkBndxG8xzO_14regex_automata.exit
  %i.x = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 zeroext %5, i64 %3, i64 %i.j) ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = extractvalue { i64, i64 } %i.x, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.z, ptr %i.ab, align 8
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocateCsfkBndxG8xzO_14regex_automata.exit
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

bb.i:                                             ; preds = %bb.h, %bb.g, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsfkBndxG8xzO_14regex_automata.exit.thread
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsfkBndxG8xzO_14regex_automata(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readnone captures(none) %1, i64 %2, i64 %3, i64 %4, i1 zeroext %5) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %4, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @4, i64 32, i1 false)
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
  %i.e = tail call i64 @_RNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxCs99Nb5C8iXR4_6memchr(i64 %.sroa.03.0.i, i64 range(i64 1, 0) %4) ; 2 uses
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
  br i1 %i.o, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsfkBndxG8xzO_14regex_automata.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = extractvalue { i64, i1 } %i.n, 0         ; 2 uses
  %i.q = add i64 %3, -1
  %i.r = add i64 %i.q, %i.p                       ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.p
  br i1 %i.s, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsfkBndxG8xzO_14regex_automata.exit.thread.i, label %bb.i

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
  br i1 %or.cond30.i, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsfkBndxG8xzO_14regex_automata.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.ab = tail call ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 %i.w, i64 %3) #27 ; 2 uses
  %6 = icmp eq ptr %i.ab, null
  br i1 %6, label %bb.k, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsfkBndxG8xzO_14regex_automata.exit

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsfkBndxG8xzO_14regex_automata.exit.thread.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.ac = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 zeroext %5)
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsfkBndxG8xzO_14regex_automata.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 zeroext %5, i64 %3, i64 %i.w)
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsfkBndxG8xzO_14regex_automata.exit.thread

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

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsfkBndxG8xzO_14regex_automata.exit.thread: ; preds = %bb.k, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsfkBndxG8xzO_14regex_automata.exit.thread.i
  %.pn = phi { i64, i64 } [ %i.ac, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCsfkBndxG8xzO_14regex_automata.exit.thread.i ], [ %i.ad, %bb.k ] ; 2 uses
  %.sroa.9.030 = extractvalue { i64, i64 } %.pn, 1
  %.sroa.4.031 = extractvalue { i64, i64 } %.pn, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.031, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.030, ptr %i.ak, align 8
  store ptr null, ptr %0, align 8
  br label %bb.m

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsfkBndxG8xzO_14regex_automata.exit: ; preds = %bb.j
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

bb.m:                                             ; preds = %bb.l, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsfkBndxG8xzO_14regex_automata.exit.thread, %bb.b, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsfkBndxG8xzO_14regex_automata.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define ptr @_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTINtNtCscdodAO9FK5_5alloc4sync3ArceENtNtNtCsfkBndxG8xzO_14regex_automata4util10primitives10SmallIndexEE9next_implKb0_EB1A_(ptr nofree align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8              ; 2 uses
  %.not9 = icmp eq i16 %i.d, 0
  br i1 %.not9, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre12 = load ptr, ptr %0, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.pre = load ptr, ptr %i.e, align 8
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.s, i64 -384
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.._crit_edge_crit_edge
  %i.g = phi ptr [ %.pre12, %.._crit_edge_crit_edge ], [ %i.f, %._crit_edge.loopexit ]
  %.lcssa = phi i16 [ %i.d, %.._crit_edge_crit_edge ], [ %i.r, %._crit_edge.loopexit ] ; 3 uses
  %i.h = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.i = zext nneg i16 %i.h to i64
  %i.j = add i16 %.lcssa, -1
  %i.k = and i16 %i.j, %.lcssa
  store i16 %i.k, ptr %i.c, align 8
  %i.l = sub nsw i64 0, %i.i
  %i.m = getelementptr inbounds [24 x i8], ptr %i.g, i64 %i.l
  ret ptr %i.m

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.n = phi ptr [ %.pre, %.lr.ph ], [ %i.v, %bb.b ]
  call void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse214__mm_load_si128CsfkBndxG8xzO_14regex_automata(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %i.n)
  %i.o = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.o, ptr %i.a, align 16
  %i.p = call i32 @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse217__mm_movemask_epi8CsfkBndxG8xzO_14regex_automata(ptr nonnull align 16 %i.a)
  %i.q = trunc i32 %i.p to i16                    ; 2 uses
  %i.r = xor i16 %i.q, -1                         ; 2 uses
  store i16 %i.r, ptr %i.c, align 8
  %i.s = load ptr, ptr %0, align 8                ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -384
  store ptr %i.t, ptr %0, align 8
  %i.u = load ptr, ptr %i.e, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store ptr %i.v, ptr %i.e, align 8
  %.not = icmp eq i16 %i.q, -1
  br i1 %.not, label %bb.b, label %._crit_edge.loopexit
}

; Function Attrs: nonlazybind uwtable
define ptr @_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCsfkBndxG8xzO_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_EB13_(ptr nofree align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8              ; 2 uses
  %.not9 = icmp eq i16 %i.d, 0
  br i1 %.not9, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre12 = load ptr, ptr %0, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.pre = load ptr, ptr %i.e, align 8
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.s, i64 -384
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.._crit_edge_crit_edge
  %i.g = phi ptr [ %.pre12, %.._crit_edge_crit_edge ], [ %i.f, %._crit_edge.loopexit ]
  %.lcssa = phi i16 [ %i.d, %.._crit_edge_crit_edge ], [ %i.r, %._crit_edge.loopexit ] ; 3 uses
  %i.h = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.i = zext nneg i16 %i.h to i64
  %i.j = add i16 %.lcssa, -1
  %i.k = and i16 %i.j, %.lcssa
  store i16 %i.k, ptr %i.c, align 8
  %i.l = sub nsw i64 0, %i.i
  %i.m = getelementptr inbounds [24 x i8], ptr %i.g, i64 %i.l
  ret ptr %i.m

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.n = phi ptr [ %.pre, %.lr.ph ], [ %i.v, %bb.b ]
  call void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse214__mm_load_si128CsfkBndxG8xzO_14regex_automata(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %i.n)
  %i.o = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.o, ptr %i.a, align 16
  %i.p = call i32 @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse217__mm_movemask_epi8CsfkBndxG8xzO_14regex_automata(ptr nonnull align 16 %i.a)
  %i.q = trunc i32 %i.p to i16                    ; 2 uses
  %i.r = xor i16 %i.q, -1                         ; 2 uses
  store i16 %i.r, ptr %i.c, align 8
  %i.s = load ptr, ptr %0, align 8                ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -384
  store ptr %i.t, ptr %0, align 8
  %i.u = load ptr, ptr %i.e, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store ptr %i.v, ptr %i.e, align 8
  %.not = icmp eq i16 %i.q, -1
  br i1 %.not, label %bb.b, label %._crit_edge.loopexit
}

; Function Attrs: nonlazybind uwtable
define void @_RINvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_elemNtNtNtCsfkBndxG8xzO_14regex_automata4util10primitives7StateIDNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBQ_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, i32 %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = tail call { i64, ptr } @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfcggljOhZkm_12regex_syntax(i64 %2, i64 4, i64 4) ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1
  store i64 %i.c, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.f, align 8
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsfkBndxG8xzO_14regex_automata4util10primitives7StateIDE11extend_withBK_(ptr nonnull align 8 %i.a, i64 %2, i32 %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsfkBndxG8xzO_14regex_automata4util10primitives7StateIDEEB1d_(ptr nonnull align 8 %i.a) #25
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtCsfkBndxG8xzO_14regex_automata4util10primitives7StateIDNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalEBR_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 4 captures(none) %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfcggljOhZkm_12regex_syntax(i64 %2, i64 4, i64 4) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  store i64 %i.b, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.e, align 8
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = shl i64 %2, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.c, ptr align 4 %1, i64 %i.f, i1 false)
  store i64 %2, ptr %i.e, align 8
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvYINtNtNtCsfkBndxG8xzO_14regex_automata4util10primitives17WithPatternIDIterINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterReEENtNtNtNtB1l_4iter6traits8iterator8Iterator3zipIB1f_NtNtCsfcggljOhZkm_12regex_syntax3ast3AstEEBa_(ptr sret([64 x i8]) align 8 %0, ptr nofree readonly align 8 captures(none) %1, ptr %2, ptr %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = tail call { ptr, ptr } @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB8_5slice4iter4IterNtNtCsfcggljOhZkm_12regex_syntax3ast3AstENtB2_12IntoIterator9into_iterCsfkBndxG8xzO_14regex_automata(ptr %2, ptr %3) ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0
  %i.d = extractvalue { ptr, ptr } %i.b, 1
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtCsfkBndxG8xzO_14regex_automata4util10primitives17WithPatternIDIterINtNtNtBb_5slice4iter4IterReEEIB28_NtNtCsfcggljOhZkm_12regex_syntax3ast3AstEEINtB5_7ZipImplBW_B2B_E3newB13_(ptr sret([64 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr %i.c, ptr %i.d)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTINtNtCscdodAO9FK5_5alloc4sync3ArceENtNtNtCsfkBndxG8xzO_14regex_automata4util10primitives10SmallIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0B1x_(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [24 x i8], ptr %i.b, i64 %i.c
end_hunk_0
