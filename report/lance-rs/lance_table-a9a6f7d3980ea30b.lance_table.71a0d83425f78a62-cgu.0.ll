Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_table-a9a6f7d3980ea30b.lance_table.71a0d83425f78a62-cgu.0?download=true
inline.NumInlined: 28246
inline.NumDeleted: 13059
loop-unroll.NumCompletelyUnrolled: 101
loop-unroll.NumRuntimeUnrolled: 190
loop-unroll.NumUnrolled: 295
begin_hunk_0_@_RINvMs0_NtNtCs9KQ7US1M400_11lance_table6format8fragmentNtB6_8DataFile10new_legacyReEBa_:bb.a
  %i.ai = extractvalue { i64, i64 } %i.ah, 0      ; 3 uses
  %i.aj = extractvalue { i64, i64 } %i.ah, 1      ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.noexc36.i
  %i.al = inttoptr i64 %i.ai to ptr
  br label %_RNCNvMsr_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcSlE21allocate_for_slice_in0Cs9KQ7US1M400_11lance_table.exit.i.i33.i

bb.p:                                             ; preds = %.noexc36.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !886
  %i.am = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) %i.ai) #76, !noalias !886
  br label %_RNCNvMsr_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcSlE21allocate_for_slice_in0Cs9KQ7US1M400_11lance_table.exit.i.i33.i

_RNCNvMsr_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcSlE21allocate_for_slice_in0Cs9KQ7US1M400_11lance_table.exit.i.i33.i: ; preds = %bb.p, %bb.o
  %.sroa.0.0.i.i.i.i.i34.i = phi ptr [ %i.al, %bb.o ], [ %i.am, %bb.p ] ; 4 uses
  %i.an = icmp eq ptr %.sroa.0.0.i.i.i.i.i34.i, null
  br i1 %i.an, label %bb.q, label %bb.v, !prof !102

bb.q:                                             ; preds = %_RNCNvMsr_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcSlE21allocate_for_slice_in0Cs9KQ7US1M400_11lance_table.exit.i.i33.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef %i.ai, i64 noundef %i.aj) #80
          to label %.noexc37.i unwind label %bb.r, !noalias !886

.noexc37.i:                                       ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q, %bb.n
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw add ptr %.sroa.0.0.i.i.i.i.i.i, i64 -1 release, align 8, !noalias !887
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSlEECs9KQ7US1M400_11lance_table.exit.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSlE9drop_slowCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.b), !noalias !883
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSlEECs9KQ7US1M400_11lance_table.exit.i

bb.t:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.as, label %.body, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.at = shl nuw i64 %.sroa.0.0.copyload, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 4) #76, !noalias !883
  br label %.body

bb.v:                                             ; preds = %_RNCNvMsr_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcSlE21allocate_for_slice_in0Cs9KQ7US1M400_11lance_table.exit.i.i33.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i.i34.i, align 8, !noalias !886
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i34.i, i64 8
  store i64 1, ptr %i.au, align 8, !noalias !886
  store i64 %2, ptr %0, align 8, !alias.scope !879
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i.i.i5, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !879
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !879
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %i.av, align 8, !alias.scope !879
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.7.0.copyload, ptr %i.aw, align 8, !alias.scope !879
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.0.0.i.i.i.i.i34.i, ptr %i.ax, align 8, !alias.scope !879
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.ay, align 8, !alias.scope !879
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.az, align 8, !alias.scope !879
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 2, ptr %i.ba, align 4, !alias.scope !879
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.bb, align 8, !alias.scope !879
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.bc, align 8, !alias.scope !879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.w:                                             ; preds = %bb.c
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.be = icmp eq i64 %.val, 0
  br i1 %i.be, label %.body, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bf = shl nuw i64 %.val, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 4) #76
  br label %.body

.body:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSlEECs9KQ7US1M400_11lance_table.exit.i, %bb.l, %bb.x, %bb.w, %bb.u, %bb.t
  %eh.lpad-body11 = phi { ptr, i32 } [ %i.bd, %bb.w ], [ %i.ar, %bb.u ], [ %i.bd, %bb.x ], [ %i.ar, %bb.t ], [ %.pn.i, %bb.l ], [ %.pn.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSlEECs9KQ7US1M400_11lance_table.exit.i ]
  resume { ptr, i32 } %eh.lpad-body11
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB6_10U64Segment23from_stats_and_sequenceINtNtCs40k4W9msRzi_5alloc3vec3VecyEEBa_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1036 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i8, ptr %i.h, align 8, !range !108, !noundef !99
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %.noexc

.noexc:                                           ; preds = %bb.a
  %.sroa.0111.0.copyload = load i64, ptr %2, align 8
  %.sroa.4112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4112.0.copyload = load ptr, ptr %.sroa.4112.0..sroa_idx, align 8, !nonnull !99, !noundef !99 ; 3 uses
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5113.0.copyload = load i64, ptr %.sroa.5113.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1037
  %i.k = icmp ult i64 %.sroa.5113.0.copyload, 1152921504606846976
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4112.0.copyload, i64 %.sroa.5113.0.copyload
  store ptr %.sroa.4112.0.copyload, ptr %i.e, align 8, !alias.scope !1038, !noalias !1037
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.0111.0.copyload, ptr %i.m, align 8, !alias.scope !1038, !noalias !1037
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.4112.0.copyload, ptr %i.n, align 8, !alias.scope !1038, !noalias !1037
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.l, ptr %i.o, align 8, !alias.scope !1038, !noalias !1037
  call fastcc void @_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB6_3VecyEINtB4_12SpecFromIteryINtNtB6_9into_iter8IntoIteryEE9from_iterCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.e), !noalias !1037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1037
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvXs_NtNtCs9KQ7US1M400_11lance_table6rowids13encoded_arrayNtB4_15EncodedU64ArrayINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecyEE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1037
  store i64 7, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !99 ; 4 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noundef !99 ; 33 uses
  %i.v = load i64, ptr %1, align 8, !noundef !99  ; 18 uses
  %i.w = add i64 %i.u, 1                          ; 3 uses
  %i.x = icmp eq i64 %i.u, -1
  br i1 %i.x, label %bb.f, label %bb.e, !prof !102

bb.d:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  br label %bb.ad

bb.e:                                             ; preds = %bb.c
  %i.z = zext i64 %i.r to i128
  %i.aa = zext i64 %i.v to i128                   ; 2 uses
  %i.ab = zext i64 %i.u to i128                   ; 2 uses
  %i.ac = add nuw nsw i128 %i.ab, 1               ; 2 uses
  %i.ad = add nuw nsw i128 %i.aa, %i.z            ; 2 uses
  %i.ae = icmp eq i128 %i.ac, %i.ad
  br i1 %i.ae, label %bb.i, label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvXs1_NtNtCs9KQ7US1M400_11lance_table6rowids13encoded_arrayNtB6_15EncodedU64ArrayINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratoryE9from_iterINtNtCs40k4W9msRzi_5alloc3vec3VecyEEBa_(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.af, ptr noalias noundef align 8 captures(address) dereferenceable(24) %2)
  store i64 6, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit

bb.g:                                             ; preds = %bb.e
  %i.ag = sub nsw i128 %i.ac, %i.ad               ; 2 uses
  %i.ah = shl nuw nsw i128 %i.ag, 2
  %i.ai = icmp ugt i128 %i.ag, 85070591730234615865843651857942052863
  br i1 %i.ai, label %bb.h, label %bb.j, !prof !102

bb.h:                                             ; preds = %bb.g
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.w, ptr %i.ak, align 8
  br label %bb.ad

bb.j:                                             ; preds = %bb.g, %bb.h
  %.sroa.02.0.i = phi i128 [ -1, %bb.h ], [ %i.ah, %bb.g ]
  %i.al = sub nsw i128 %i.ab, %i.aa
  %i.am = add nsw i128 %i.al, 1                   ; 2 uses
  %i.an = lshr i128 %i.am, 3
  %i.ao = and i128 %i.am, 7
  %.not.i = icmp ne i128 %i.ao, 0
  %i.ap = zext i1 %.not.i to i128
  %.sroa.01.0.i = add nuw nsw i128 %i.an, %i.ap   ; 2 uses
  %i.aq = icmp samesign ugt i128 %.sroa.01.0.i, 18446744073709551591
  %i.ar = trunc i128 %.sroa.01.0.i to i64
  %i.as = add i64 %i.ar, 24
  %.sroa.05.0.i = select i1 %i.aq, i64 -1, i64 %i.as ; 3 uses
  %.sroa.02.0.fr.i = freeze i128 %.sroa.02.0.i    ; 2 uses
  %3 = icmp ugt i128 %.sroa.02.0.fr.i, 18446744073709551591
  %.sroa.04.0.i = trunc nuw i128 %.sroa.02.0.fr.i to i64
  %4 = add i64 %.sroa.04.0.i, 24
  %spec.select.i = select i1 %3, i64 -1, i64 %4   ; 3 uses
  %i.at = tail call i64 @llvm.umin.i64(i64 %spec.select.i, i64 %.sroa.05.0.i)
  %i.au = icmp ugt i64 %i.r, 9223372036854775795
  %i.av = shl nuw i64 %i.r, 1
  %i.aw = add i64 %i.av, 24
  %.sroa.06.0.i = select i1 %i.au, i64 -1, i64 %i.aw ; 2 uses
  %.not.i.i.i.i.1 = icmp ugt i64 %i.at, %.sroa.06.0.i
  %.sroa.speculate.load.false.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %spec.select.i, i64 %.sroa.05.0.i)
  %.sroa.speculated = select i1 %.not.i.i.i.i.1, i64 %.sroa.06.0.i, i64 %.sroa.speculate.load.false.sroa.speculated ; 2 uses
  %i.ax = icmp eq i64 %.sroa.speculated, %spec.select.i
  br i1 %i.ax, label %bb.ah, label %bb.l

bb.k:                                             ; preds = %bb.ag
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ay = icmp eq i64 %.sroa.speculated, %.sroa.05.0.i
  br i1 %i.ay, label %bb.m, label %.noexc65

.noexc65:                                         ; preds = %bb.l
  %.sroa.0108.0.copyload = load i64, ptr %2, align 8
  %.sroa.4109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4109.0.copyload = load ptr, ptr %.sroa.4109.0..sroa_idx, align 8, !nonnull !99, !noundef !99 ; 3 uses
  %.sroa.5110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5110.0.copyload = load i64, ptr %.sroa.5110.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1039
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1039
  %i.az = icmp ult i64 %.sroa.5110.0.copyload, 1152921504606846976
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4109.0.copyload, i64 %.sroa.5110.0.copyload
  store ptr %.sroa.4109.0.copyload, ptr %i.c, align 8, !alias.scope !1040, !noalias !1039
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.0108.0.copyload, ptr %i.bb, align 8, !alias.scope !1040, !noalias !1039
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.4109.0.copyload, ptr %i.bc, align 8, !alias.scope !1040, !noalias !1039
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.ba, ptr %i.bd, align 8, !alias.scope !1040, !noalias !1039
  call fastcc void @_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB6_3VecyEINtB4_12SpecFromIteryINtNtB6_9into_iter8IntoIteryEE9from_iterCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.c), !noalias !1039
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1039
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvXs_NtNtCs9KQ7US1M400_11lance_table6rowids13encoded_arrayNtB4_15EncodedU64ArrayINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecyEE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.be, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1039
  store i64 6, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit

bb.m:                                             ; preds = %bb.l
  %i.bf = sub i64 %i.u, %i.v
  %i.bg = add i64 %i.bf, 1                        ; 4 uses
  %i.bh = lshr i64 %i.bg, 3                       ; 2 uses
  %i.bi = and i64 %i.bg, 7                        ; 7 uses
  %.not.i68 = icmp ne i64 %i.bi, 0                ; 2 uses
  %i.bj = zext i1 %.not.i68 to i64
  %.sroa.0.0.i69 = add nuw nsw i64 %i.bh, %i.bj   ; 9 uses
  %i.bk = icmp eq i64 %i.bg, 0                    ; 2 uses
  br i1 %i.bk, label %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !1041
  %i.bl = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2305843009213693953) %.sroa.0.0.i69, i64 noundef range(i64 1, 9) 1) #76, !noalias !1041 ; 5 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.o, label %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.thread.i

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, 2305843009213693953) %.sroa.0.0.i69) #80
          to label %.noexc70 unwind label %bb.ax, !noalias !1042

.noexc70:                                         ; preds = %bb.o
  unreachable

_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.m
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 inttoptr (i64 1 to ptr), i8 -1, i64 range(i64 0, 2305843009213693953) %.sroa.0.0.i69, i1 false), !noalias !1042
  br label %bb.w

_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.thread.i: ; preds = %bb.n
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bl, i8 -1, i64 range(i64 0, 2305843009213693953) %.sroa.0.0.i69, i1 false), !noalias !1042
  br i1 %.not.i68, label %bb.p, label %bb.w

.loopexit.i:                                      ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %.lcssa474 = phi i8 [ %i.bo, %bb.p ], [ %i.bp, %bb.q ], [ %i.bq, %bb.r ], [ %i.br, %bb.s ], [ %i.bs, %bb.t ], [ %spec.select, %bb.u ]
  store i8 %.lcssa474, ptr %i.bn, align 1, !noalias !1043
  br label %bb.w

bb.p:                                             ; preds = %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.thread.i
  %i.bn = getelementptr i8, ptr %i.bl, i64 %i.bh  ; 2 uses
  %.promoted.i = load i8, ptr %i.bn, align 1, !noalias !1043 ; 7 uses
  %i.bo = and i8 %.promoted.i, 127
  %exitcond.not.i = icmp eq i64 %i.bi, 7
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = and i8 %.promoted.i, 63
  %exitcond.not.i.1 = icmp eq i64 %i.bi, 6
  br i1 %exitcond.not.i.1, label %.loopexit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = and i8 %.promoted.i, 31
  %exitcond.not.i.2 = icmp eq i64 %i.bi, 5
  br i1 %exitcond.not.i.2, label %.loopexit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = and i8 %.promoted.i, 15
  %exitcond.not.i.3 = icmp eq i64 %i.bi, 4
  br i1 %exitcond.not.i.3, label %.loopexit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = and i8 %.promoted.i, 7
  %exitcond.not.i.4 = icmp eq i64 %i.bi, 3
  br i1 %exitcond.not.i.4, label %.loopexit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = and i8 %.promoted.i, 3
  %exitcond.not.i.5 = icmp eq i64 %i.bi, 2
  %i.bu = and i8 %.promoted.i, 1
  %spec.select = select i1 %exitcond.not.i.5, i8 %i.bt, i8 %i.bu
  br label %.loopexit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtB4_3ops5range14RangeInclusiveyENCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB20_10U64Segment14holes_in_sliceINtNtCs40k4W9msRzi_5alloc3vec3VecyEE0EEB24_.exit: ; preds = %bb.ab, %bb.aa
  br i1 %i.bk, label %.thread141, label %bb.v

bb.v:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtB4_3ops5range14RangeInclusiveyENCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB20_10U64Segment14holes_in_sliceINtNtCs40k4W9msRzi_5alloc3vec3VecyEE0EEB24_.exit
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i14.i, i64 noundef %.sroa.0.0.i69, i64 noundef range(i64 1, -9223372036854775807) 1) #76
  br label %.thread141

bb.w:                                             ; preds = %.loopexit.i, %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.thread.i, %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.i
  %.sroa.10.0.i.i14.i = phi ptr [ %i.bl, %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.thread.i ], [ inttoptr (i64 1 to ptr), %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.i ], [ %i.bl, %.loopexit.i ] ; 3 uses
  %.sroa.096.0.copyload = load i64, ptr %2, align 8 ; 4 uses
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.497.0.copyload = load ptr, ptr %.sroa.497.0..sroa_idx, align 8, !nonnull !99, !noundef !99 ; 4 uses
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.598.0.copyload = load i64, ptr %.sroa.598.0..sroa_idx, align 8 ; 2 uses
  %i.bv = icmp ult i64 %.sroa.598.0.copyload, 1152921504606846976
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.497.0.copyload, i64 %.sroa.598.0.copyload ; 7 uses
  %.not.i76260 = icmp ugt i64 %i.v, %i.u
  br i1 %.not.i76260, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1n_10U64Segment14holes_in_sliceINtNtCs40k4W9msRzi_5alloc3vec3VecyEE0E0B1r_.exit24.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.w, %bb.af
  %.sroa.099.0265 = phi i64 [ %.sroa.099.6.ph, %bb.af ], [ -1, %bb.w ] ; 4 uses
  %.sroa.12.0264 = phi i64 [ %.sroa.12.7.ph, %bb.af ], [ undef, %bb.w ] ; 2 uses
  %.sroa.19.0263 = phi ptr [ %.sroa.19.9.ph, %bb.af ], [ %.sroa.497.0.copyload, %bb.w ] ; 6 uses
  %.sroa.28102.0262 = phi i64 [ %.sroa.28102.2.ph, %bb.af ], [ %i.v, %bb.w ] ; 9 uses
  %i.bx = icmp ult i64 %.sroa.28102.0262, %i.u
  br i1 %i.bx, label %.lr.ph.i, label %.thread.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.by = add nuw i64 %.sroa.28102.0262, 1        ; 5 uses
  %.not.i.i.i.i.peel.i = icmp eq i64 %.sroa.099.0265, -1
  br i1 %.not.i.i.i.i.peel.i, label %bb.x, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIteryEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.peel.i

bb.x:                                             ; preds = %.lr.ph.i
  %i.bz = icmp eq ptr %.sroa.19.0263, %i.bw
  br i1 %i.bz, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIteryEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.peel.i.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.19.0263, i64 8
  %i.cb = load i64, ptr %.sroa.19.0263, align 8, !noalias !1044, !noundef !99
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIteryEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.peel.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIteryEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.peel.i: ; preds = %bb.y, %.lr.ph.i
  %.sroa.19.4 = phi ptr [ %.sroa.19.0263, %.lr.ph.i ], [ %i.ca, %bb.y ] ; 4 uses
  %.sroa.12.3 = phi i64 [ %.sroa.12.0264, %.lr.ph.i ], [ %i.cb, %bb.y ] ; 2 uses
  %.sroa.099.3 = phi i64 [ %.sroa.099.0265, %.lr.ph.i ], [ 1, %bb.y ] ; 2 uses
  %i.cc = trunc nuw i64 %.sroa.099.3 to i1
  %i.cd = icmp eq i64 %.sroa.12.3, %.sroa.28102.0262
  %or.cond.i.i.i.peel.i = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond.i.i.i.peel.i, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1n_10U64Segment14holes_in_sliceINtNtCs40k4W9msRzi_5alloc3vec3VecyEE0E0B1r_.exit.peel.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIteryEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.peel.i.thread

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1n_10U64Segment14holes_in_sliceINtNtCs40k4W9msRzi_5alloc3vec3VecyEE0E0B1r_.exit.peel.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIteryEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.peel.i
  %exitcond.peel.not.i = icmp eq i64 %i.by, %i.u
  br i1 %exitcond.peel.not.i, label %.thread.i.thread, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1n_10U64Segment14holes_in_sliceINtNtCs40k4W9msRzi_5alloc3vec3VecyEE0E0B1r_.exit.peel.i
  %i.ce = add nuw i64 %.sroa.28102.0262, 2        ; 2 uses
  %i.cf = icmp eq ptr %.sroa.19.4, %i.bw
  br i1 %i.cf, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIteryEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.peel.i.thread, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIteryEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i

.thread.i:                                        ; preds = %.preheader.i
  %.not.i.i.i.i14.i = icmp eq i64 %.sroa.099.0265, -1
  br i1 %.not.i.i.i.i14.i, label %.thread.i.thread, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIteryEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i17.i

.peel.next.i:                                     ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1n_10U64Segment14holes_in_sliceINtNtCs40k4W9msRzi_5alloc3vec3VecyEE0E0B1r_.exit.i
  %i.cg = add nuw i64 %i.ci, 1                    ; 2 uses
  %i.ch = icmp eq ptr %i.ck, %i.bw
  br i1 %i.ch, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIteryEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.peel.i.thread, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIteryEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i, !llvm.loop !916

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIteryEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i: ; preds = %.peel.next.i.preheader, %.peel.next.i
  %i.ci = phi i64 [ %i.cg, %.peel.next.i ], [ %i.ce, %.peel.next.i.preheader ] ; 5 uses
  %i.cj = phi i64 [ %i.ci, %.peel.next.i ], [ %i.by, %.peel.next.i.preheader ] ; 3 uses
  %.sroa.19.6250 = phi ptr [ %i.ck, %.peel.next.i ], [ %.sroa.19.4, %.peel.next.i.preheader ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.19.6250, i64 8 ; 5 uses
  %i.cl = load i64, ptr %.sroa.19.6250, align 8, !noalias !1045, !noundef !99 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, %i.cj
  br i1 %i.cm, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1n_10U64Segment14holes_in_sliceINtNtCs40k4W9msRzi_5alloc3vec3VecyEE0E0B1r_.exit.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIteryEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.peel.i.thread

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1n_10U64Segment14holes_in_sliceINtNtCs40k4W9msRzi_5alloc3vec3VecyEE0E0B1r_.exit.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIteryEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i
  %exitcond.not.i79 = icmp eq i64 %i.ci, %i.u
  br i1 %exitcond.not.i79, label %.thread.i.thread, label %.peel.next.i, !llvm.loop !916

.thread.i.thread:                                 ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1n_10U64Segment14holes_in_sliceINtNtCs40k4W9msRzi_5alloc3vec3VecyEE0E0B1r_.exit.i, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1n_10U64Segment14holes_in_sliceINtNtCs40k4W9msRzi_5alloc3vec3VecyEE0E0B1r_.exit.peel.i, %.thread.i
  %.sroa.19.1160 = phi ptr [ %.sroa.19.0263, %.thread.i ], [ %.sroa.19.4, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1n_10U64Segment14holes_in_sliceINtNtCs40k4W9msRzi_5alloc3vec3VecyEE0E0B1r_.exit.peel.i ], [ %i.ck, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1n_10U64Segment14holes_in_sliceINtNtCs40k4W9msRzi_5alloc3vec3VecyEE0E0B1r_.exit.i ] ; 4 uses
  %.sroa.28102.1159 = phi i64 [ %.sroa.28102.0262, %.thread.i ], [ %i.u, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1n_10U64Segment14holes_in_sliceINtNtCs40k4W9msRzi_5alloc3vec3VecyEE0E0B1r_.exit.peel.i ], [ %i.u, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1n_10U64Segment14holes_in_sliceINtNtCs40k4W9msRzi_5alloc3vec3VecyEE0E0B1r_.exit.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.19.1160) ]
  %i.cn = icmp eq ptr %.sroa.19.1160, %i.bw
  br i1 %i.cn, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIteryEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.peel.i.thread, label %bb.z

bb.z:                                             ; preds = %.thread.i.thread
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.19.1160, i64 8
  %i.cp = load i64, ptr %.sroa.19.1160, align 8, !noalias !1046, !noundef !99
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIteryEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i17.i

end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment4iter:bb.a
  %i.ap = insertvalue { ptr, ptr } %i.ao, ptr %.sroa.6.0, 1
  ret { ptr, ptr } %i.ap
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment4mask(ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !53272 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [88 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.478.i = alloca [56 x i8], align 8        ; 4 uses
  %.sroa.474.i = alloca [56 x i8], align 8        ; 4 uses
  %i.d = alloca [88 x i8], align 8                ; 12 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [88 x i8], align 8                ; 14 uses
  %i.g = alloca [56 x i8], align 8                ; 23 uses
  %i.h = alloca [48 x i8], align 8                ; 13 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i64 @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  %i.k = icmp eq i64 %2, %i.j
  br i1 %i.k, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.e, %_RINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB6_10U64Segment23from_stats_and_sequenceINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB1B_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1D_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs2_B6_BQ_4masks2_0EEBa_.exit
  ret void

bb.d:                                             ; preds = %bb.b
  %i.l = tail call noundef i64 @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) ; 2 uses
  %i.m = sub i64 %i.l, %2                         ; 3 uses
  %i.n = load i64, ptr %0, align 8, !range !179, !noundef !99 ; 2 uses
  %i.o = icmp ne i64 %i.n, 4
  tail call void @llvm.assume(i1 %i.o)
  %.not90 = icmp eq i64 %i.n, 7
  %i.p = tail call noundef i64 @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) ; 2 uses
  %.idx = shl nuw nsw i64 %2, 2
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 5 uses
  %exitcond.not.i134 = icmp eq i64 %i.p, 0
  br i1 %exitcond.not.i134, label %.split.i._crit_edge, label %.lr.ph

.split.i:                                         ; preds = %.lr.ph
  %i.r = add nuw i64 %i.t, 1                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %spec.select87, i64 4
  %spec.select = select i1 %i.u, ptr %i.q, ptr %.val2.i.i.i18.i135
  %exitcond.not.i = icmp eq i64 %i.r, %i.p
  br i1 %exitcond.not.i, label %.split.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.split.i
  %i.t = phi i64 [ %i.r, %.split.i ], [ 0, %bb.d ] ; 3 uses
  %.val.i.i.i15.i136 = phi ptr [ %i.s, %.split.i ], [ %1, %bb.d ] ; 2 uses
  %.val2.i.i.i18.i135 = phi ptr [ %spec.select, %.split.i ], [ %i.q, %bb.d ] ; 2 uses
  %i.u = icmp eq ptr %.val.i.i.i15.i136, %.val2.i.i.i18.i135 ; 2 uses
  %spec.select87 = select i1 %i.u, ptr %1, ptr %.val.i.i.i15.i136 ; 2 uses
  %i.v = load i32, ptr %spec.select87, align 4, !alias.scope !53273, !noalias !53274, !noundef !99
  %i.w = trunc i64 %i.t to i32
  %.not.i.i = icmp eq i32 %i.v, %i.w
  br i1 %.not.i.i, label %.split.i, label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEBH_(ptr noalias noundef align 8 dereferenceable(56) %0)
  store i64 3, ptr %0, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, i8 0, i64 16, i1 false)
  br label %bb.c

bb.f:                                             ; preds = %.lr.ph
  %i.x = tail call { i64, i64 } @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment3get(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, i64 noundef %i.t) ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = extractvalue { i64, i64 } %i.x, 1        ; 8 uses
  %i.aa = trunc nuw i64 %i.y to i1
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !111

.split.i._crit_edge:                              ; preds = %.split.i, %bb.d
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1082) #80
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call noundef i64 @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) ; 2 uses
  %.not137 = icmp eq i64 %i.ab, 0
  br i1 %.not137, label %.split.i47._crit_edge, label %.lr.ph139

.split.i47:                                       ; preds = %.lr.ph139
  %spec.select88 = select i1 %i.af, ptr %1, ptr %.val.i.i.i25.i138
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %.split.i47._crit_edge, label %.lr.ph139

.lr.ph139:                                        ; preds = %bb.g, %.split.i47
  %i.ac = phi i64 [ %i.ae, %.split.i47 ], [ %i.ab, %bb.g ]
  %i.ad = phi ptr [ %i.ag, %.split.i47 ], [ %i.q, %bb.g ] ; 2 uses
  %.val.i.i.i25.i138 = phi ptr [ %spec.select88, %.split.i47 ], [ %1, %bb.g ] ; 2 uses
  %i.ae = add i64 %i.ac, -1                       ; 4 uses
  %i.af = icmp eq ptr %.val.i.i.i25.i138, %i.ad   ; 2 uses
  %spec.select89 = select i1 %i.af, ptr %i.q, ptr %i.ad
  %i.ag = getelementptr inbounds i8, ptr %spec.select89, i64 -4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !alias.scope !53275, !noalias !53276, !noundef !99
  %i.ai = trunc i64 %i.ae to i32
  %.not.i.i48 = icmp eq i32 %i.ah, %i.ai
  br i1 %.not.i.i48, label %.split.i47, label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1083) #80
  unreachable

bb.i:                                             ; preds = %.lr.ph139
  %i.aj = tail call { i64, i64 } @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment3get(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, i64 noundef %i.ae) ; 2 uses
  %i.ak = extractvalue { i64, i64 } %i.aj, 0
  %i.al = trunc nuw i64 %i.ak to i1
  br i1 %i.al, label %bb.j, label %bb.bx, !prof !111

.split.i47._crit_edge:                            ; preds = %.split.i47, %bb.g
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1084) #80
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.am = extractvalue { i64, i64 } %i.aj, 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.an = tail call { ptr, ptr } @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment4iter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) ; 2 uses
  %i.ao = extractvalue { ptr, ptr } %i.an, 0      ; 7 uses
  %i.ap = extractvalue { ptr, ptr } %i.an, 1      ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.ao, ptr %i.aq, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.ap, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 0, ptr %.sroa.524.0..sroa_idx, align 8
  store i32 -1, ptr %i.h, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %1, ptr %.sroa.527.0..sroa_idx, align 8
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.q, ptr %.sroa.628.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53277)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.478.i)
  br i1 %.not90, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call fastcc void @_RINvXs1_NtNtCs9KQ7US1M400_11lance_table6rowids13encoded_arrayNtB6_15EncodedU64ArrayINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratoryE9from_iterINtNtNtB1q_8adapters10filter_map9FilterMapINtNtB2A_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB1o_12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs2_NtB8_7segmentNtB5f_10U64Segment4masks2_0EEBa_(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h), !noalias !53278
  store i64 7, ptr %i.g, align 8, !alias.scope !53277
  br label %_RINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB6_10U64Segment23from_stats_and_sequenceINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB1B_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1D_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs2_B6_BQ_4masks2_0EEBa_.exit

bb.l:                                             ; preds = %bb.j
  %i.as = icmp eq i64 %i.l, %2
  br i1 %i.as, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = add i64 %i.am, 1                        ; 3 uses
  %i.au = icmp eq i64 %i.am, -1
  br i1 %i.au, label %bb.p, label %bb.o, !prof !102

bb.n:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false), !alias.scope !53277
  br label %bb.ap

bb.o:                                             ; preds = %bb.m
  %i.aw = zext i64 %i.m to i128
  %i.ax = zext i64 %i.z to i128                   ; 2 uses
  %i.ay = zext i64 %i.am to i128                  ; 2 uses
  %i.az = add nuw nsw i128 %i.ay, 1               ; 2 uses
  %i.ba = add nuw nsw i128 %i.ax, %i.aw           ; 2 uses
  %i.bb = icmp eq i128 %i.az, %i.ba
  br i1 %i.bb, label %bb.s, label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call fastcc void @_RINvXs1_NtNtCs9KQ7US1M400_11lance_table6rowids13encoded_arrayNtB6_15EncodedU64ArrayINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratoryE9from_iterINtNtNtB1q_8adapters10filter_map9FilterMapINtNtB2A_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB1o_12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs2_NtB8_7segmentNtB5f_10U64Segment4masks2_0EEBa_(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.bc, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h), !noalias !53278
  store i64 6, ptr %i.g, align 8, !alias.scope !53277
  br label %_RINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB6_10U64Segment23from_stats_and_sequenceINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB1B_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1D_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs2_B6_BQ_4masks2_0EEBa_.exit

bb.q:                                             ; preds = %bb.o
  %i.bd = sub nsw i128 %i.az, %i.ba               ; 2 uses
  %i.be = shl nuw nsw i128 %i.bd, 2
  %i.bf = icmp ugt i128 %i.bd, 85070591730234615865843651857942052863
  br i1 %i.bf, label %bb.r, label %bb.t, !prof !102

bb.r:                                             ; preds = %bb.q
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.z, ptr %i.bg, align 8, !alias.scope !53277
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.at, ptr %i.bh, align 8, !alias.scope !53277
  br label %bb.ap

bb.t:                                             ; preds = %bb.r, %bb.q
  %.sroa.02.0.i.i = phi i128 [ -1, %bb.r ], [ %i.be, %bb.q ]
  %i.bi = sub nsw i128 %i.ay, %i.ax
  %i.bj = add nsw i128 %i.bi, 1                   ; 2 uses
  %i.bk = lshr i128 %i.bj, 3
  %i.bl = and i128 %i.bj, 7
  %.not.i.i51 = icmp ne i128 %i.bl, 0
  %i.bm = zext i1 %.not.i.i51 to i128
  %.sroa.01.0.i.i = add nuw nsw i128 %i.bk, %i.bm ; 2 uses
  %i.bn = icmp samesign ugt i128 %.sroa.01.0.i.i, 18446744073709551591
  %i.bo = trunc i128 %.sroa.01.0.i.i to i64
  %i.bp = add i64 %i.bo, 24
  %.sroa.05.0.i.i = select i1 %i.bn, i64 -1, i64 %i.bp ; 2 uses
  %.sroa.02.0.fr.i.i = freeze i128 %.sroa.02.0.i.i ; 2 uses
  %3 = icmp ugt i128 %.sroa.02.0.fr.i.i, 18446744073709551591
  %.sroa.04.0.i.i = trunc nuw i128 %.sroa.02.0.fr.i.i to i64
  %4 = add i64 %.sroa.04.0.i.i, 24
  %spec.select.i.i = select i1 %3, i64 -1, i64 %4 ; 2 uses
  %i.bq = tail call i64 @llvm.umin.i64(i64 %spec.select.i.i, i64 %.sroa.05.0.i.i) ; 2 uses
  %i.br = icmp ugt i64 %i.m, 9223372036854775795
  %i.bs = shl nuw i64 %i.m, 1
  %i.bt = add i64 %i.bs, 24
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 %i.bt)
  %.sroa.speculated.i = select i1 %i.br, i64 %i.bq, i64 %i.bu ; 2 uses
  %i.bv = icmp eq i64 %.sroa.speculated.i, %spec.select.i.i
  br i1 %i.bv, label %bb.aw, label %bb.v

bb.u:                                             ; preds = %bb.au
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bw = icmp eq i64 %.sroa.speculated.i, %.sroa.05.0.i.i
  br i1 %i.bw, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call fastcc void @_RINvXs1_NtNtCs9KQ7US1M400_11lance_table6rowids13encoded_arrayNtB6_15EncodedU64ArrayINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratoryE9from_iterINtNtNtB1q_8adapters10filter_map9FilterMapINtNtB2A_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB1o_12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs2_NtB8_7segmentNtB5f_10U64Segment4masks2_0EEBa_(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.bx, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h), !noalias !53278
  store i64 6, ptr %i.g, align 8, !alias.scope !53277
  br label %_RINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB6_10U64Segment23from_stats_and_sequenceINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB1B_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1D_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs2_B6_BQ_4masks2_0EEBa_.exit

bb.x:                                             ; preds = %bb.v
  %i.by = sub i64 %i.am, %i.z
  %i.bz = add i64 %i.by, 1                        ; 4 uses
  %i.ca = lshr i64 %i.bz, 3                       ; 2 uses
  %i.cb = and i64 %i.bz, 7                        ; 7 uses
  %.not.i59.i = icmp ne i64 %i.cb, 0              ; 2 uses
  %i.cc = zext i1 %.not.i59.i to i64
  %.sroa.0.0.i60.i = add nuw nsw i64 %i.ca, %i.cc ; 9 uses
  %i.cd = icmp eq i64 %i.bz, 0                    ; 2 uses
  br i1 %i.cd, label %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !53279
  %i.ce = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2305843009213693953) %.sroa.0.0.i60.i, i64 noundef range(i64 1, 9) 1) #76, !noalias !53279 ; 5 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.z, label %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.thread.i.i

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, 2305843009213693953) %.sroa.0.0.i60.i) #80
          to label %.noexc.i unwind label %bb.bw, !noalias !53280

.noexc.i:                                         ; preds = %bb.z
  unreachable

_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %bb.x
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 inttoptr (i64 1 to ptr), i8 -1, i64 range(i64 0, 2305843009213693953) %.sroa.0.0.i60.i, i1 false), !noalias !53280
  br label %bb.ah

_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.thread.i.i: ; preds = %bb.y
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ce, i8 -1, i64 range(i64 0, 2305843009213693953) %.sroa.0.0.i60.i, i1 false), !noalias !53280
  br i1 %.not.i59.i, label %bb.aa, label %bb.ah

.loopexit.i.i:                                    ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.lcssa142 = phi i8 [ %i.ch, %bb.aa ], [ %i.ci, %bb.ab ], [ %i.cj, %bb.ac ], [ %i.ck, %bb.ad ], [ %i.cl, %bb.ae ], [ %spec.select152, %bb.af ]
  store i8 %.lcssa142, ptr %i.cg, align 1, !noalias !53281
  br label %bb.ah

bb.aa:                                            ; preds = %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.thread.i.i
  %i.cg = getelementptr i8, ptr %i.ce, i64 %i.ca  ; 2 uses
  %.promoted.i.i = load i8, ptr %i.cg, align 1, !noalias !53281 ; 7 uses
  %i.ch = and i8 %.promoted.i.i, 127
  %exitcond.not.i.i = icmp eq i64 %i.cb, 7
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ci = and i8 %.promoted.i.i, 63
  %exitcond.not.i.i.1 = icmp eq i64 %i.cb, 6
  br i1 %exitcond.not.i.i.1, label %.loopexit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cj = and i8 %.promoted.i.i, 31
  %exitcond.not.i.i.2 = icmp eq i64 %i.cb, 5
  br i1 %exitcond.not.i.i.2, label %.loopexit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ck = and i8 %.promoted.i.i, 15
  %exitcond.not.i.i.3 = icmp eq i64 %i.cb, 4
  br i1 %exitcond.not.i.i.3, label %.loopexit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cl = and i8 %.promoted.i.i, 7
  %exitcond.not.i.i.4 = icmp eq i64 %i.cb, 3
  br i1 %exitcond.not.i.i.4, label %.loopexit.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cm = and i8 %.promoted.i.i, 3
  %exitcond.not.i.i.5 = icmp eq i64 %i.cb, 2
  %i.cn = and i8 %.promoted.i.i, 1
  %spec.select152 = select i1 %exitcond.not.i.i.5, i8 %i.cm, i8 %i.cn
  br label %.loopexit.i.i

.body.i:                                          ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i, %bb.ao, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp141, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.df, %bb.ao ], [ %i.df, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i ] ; 2 uses
  br i1 %i.cd, label %common.resume.i, label %bb.ag

bb.ag:                                            ; preds = %.body.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i14.i.i, i64 noundef %.sroa.0.0.i60.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !53282
  br label %common.resume.i

bb.ah:                                            ; preds = %.loopexit.i.i, %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.thread.i.i, %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.i.i
  %.sroa.10.0.i.i14.i.i = phi ptr [ %i.ce, %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.thread.i.i ], [ inttoptr (i64 1 to ptr), %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.i.i ], [ %i.ce, %.loopexit.i.i ] ; 3 uses
  %.sroa.478.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.478.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.478.16..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !53283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !53282
  store i64 -1, ptr %i.d, align 8, !noalias !53282
  %.sroa.020.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.020.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.478.i, i64 56, i1 false), !noalias !53282
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  store i64 %i.z, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !53282
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i64 %i.am, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !53282
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i8 0, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !53282
  br label %bb.ai

bb.ai:                                            ; preds = %bb.at, %bb.ah
  %i.co = invoke fastcc { i64, i64 } @_RINvXsc_NtNtCscI6d9CVNmLh_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtB6_26RangeInclusiveIteratorImpl13spec_try_folduNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkyQNCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB34_10U64Segment14holes_in_sliceINtNtNtB8_8adapters10filter_map9FilterMapINtNtB4r_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB2e_12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs2_B34_B3O_4masks2_0EE0E0INtNtBJ_12control_flow11ControlFlowyEEB38_(ptr noalias noundef align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i, ptr noalias noundef align 8 dereferenceable(64) %i.d)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !53282 ; 2 uses

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ai, %bb.au
  %lpad.loopexit.split-lp141 = landingpad { ptr, i32 }
          cleanup
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.val56.i = load ptr, ptr %i.cp, align 8, !noalias !53282
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.val57.i = load ptr, ptr %i.cq, align 8, !alias.scope !53284, !noalias !53282, !nonnull !99, !align !104, !noundef !99
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtB4_3ops5range14RangeInclusiveyENCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB20_10U64Segment14holes_in_sliceINtNtBG_10filter_map9FilterMapINtNtBG_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs2_B20_B2K_4masks2_0EE0EEB24_(ptr %.val56.i, ptr nonnull %.val57.i) #81
          to label %.body.i unwind label %bb.av, !noalias !53282

bb.aj:                                            ; preds = %bb.ai
  %i.cr = extractvalue { i64, i64 } %i.co, 0
  %i.cs = trunc nuw i64 %i.cr to i1
  br i1 %i.cs, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ct = extractvalue { i64, i64 } %i.co, 1
  %i.cu = sub i64 %i.ct, %i.z                     ; 2 uses
  %i.cv = lshr i64 %i.cu, 3                       ; 3 uses
  %i.cw = icmp samesign ult i64 %i.cv, %.sroa.0.0.i60.i
  br i1 %i.cw, label %bb.at, label %bb.au

bb.al:                                            ; preds = %bb.aj
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.val54.i = load ptr, ptr %i.cx, align 8, !noalias !53282 ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.val55.i = load ptr, ptr %i.cy, align 8, !alias.scope !53284, !noalias !53282, !nonnull !99, !align !104, !noundef !99 ; 5 uses
  %i.cz = load ptr, ptr %.val55.i, align 8, !invariant.load !99, !noalias !53285 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val54.i) ]
  invoke void %i.cz(ptr noundef nonnull %.val54.i)
          to label %bb.an unwind label %bb.ao, !noalias !53285

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.da = getelementptr inbounds nuw i8, ptr %.val55.i, i64 8
  %i.db = load i64, ptr %i.da, align 8, !range !103, !invariant.load !99, !noalias !53285 ; 2 uses
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtB4_3ops5range14RangeInclusiveyENCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB20_10U64Segment14holes_in_sliceINtNtBG_10filter_map9FilterMapINtNtBG_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs2_B20_B2K_4masks2_0EE0EEB24_.exit.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val54.i) ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.val55.i, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !range !125, !invariant.load !99, !noalias !53285
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val54.i, i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) %i.de) #76, !noalias !53285
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtB4_3ops5range14RangeInclusiveyENCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB20_10U64Segment14holes_in_sliceINtNtBG_10filter_map9FilterMapINtNtBG_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs2_B20_B2K_4masks2_0EE0EEB24_.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.val55.i, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !range !103, !invariant.load !99, !noalias !53285 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %.body.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i: ; preds = %bb.ao
  %i.dj = getelementptr inbounds nuw i8, ptr %.val55.i, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !range !125, !invariant.load !99, !noalias !53285
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val54.i, i64 noundef %i.dh, i64 noundef range(i64 1, -9223372036854775807) %i.dk) #76, !noalias !53285
  br label %.body.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtB4_3ops5range14RangeInclusiveyENCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB20_10U64Segment14holes_in_sliceINtNtBG_10filter_map9FilterMapINtNtBG_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs2_B20_B2K_4masks2_0EE0EEB24_.exit.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !53282
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 %i.z, ptr %i.dl, align 8, !alias.scope !53277
  %i.dm = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 %i.at, ptr %i.dm, align 8, !alias.scope !53277
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.0.0.i60.i, ptr %i.dn, align 8, !alias.scope !53277
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %.sroa.10.0.i.i14.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !53277
  %.sroa.571.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.sroa.0.0.i60.i, ptr %.sroa.571.0..sroa_idx.i, align 8, !alias.scope !53277
  %.sroa.672.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %i.bz, ptr %.sroa.672.0..sroa_idx.i, align 8, !alias.scope !53277
  store i64 5, ptr %i.g, align 8, !alias.scope !53277
  br label %_RINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB6_10U64Segment23from_stats_and_sequenceINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB1B_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1D_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs2_B6_BQ_4masks2_0EEBa_.exit

bb.ap:                                            ; preds = %bb.s, %bb.n
  store i64 3, ptr %i.g, align 8, !alias.scope !53277
  %i.do = load ptr, ptr %i.ap, align 8, !invariant.load !99, !noalias !53286 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i, label %bb.ar, label %bb.aq

end_hunk_1
begin_hunk_2_@_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment6delete:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.12.0.i, i64 8
  %i.q = load i64, ptr %.sroa.12.0.i, align 8, !noalias !53713, !noundef !99
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4IteryEEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.peel.i.i.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4IteryEEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.peel.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.sroa.12.1.i = phi ptr [ %.sroa.12.0.i, %.lr.ph.i.i.i.i ], [ %i.p, %bb.d ] ; 3 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.0.i, %.lr.ph.i.i.i.i ], [ %i.q, %bb.d ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %.sroa.0.028.i, %.lr.ph.i.i.i.i ], [ 1, %bb.d ] ; 2 uses
  %i.r = trunc nuw i64 %.sroa.0.1.i to i1
  %i.s = icmp eq i64 %.sroa.9.1.i, %i.n
  %or.cond.i.i.i.peel.i.i.i.i = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond.i.i.i.peel.i.i.i.i, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCNCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1o_10U64Segment6delete00E0B1s_.exit.peel.i.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4IteryEEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.peel.i.i.i.thread.i

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCNCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1o_10U64Segment6delete00E0B1s_.exit.peel.i.i.i.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4IteryEEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.peel.i.i.i.i
  %i.t = invoke { i64, i64 } %i.j(ptr noundef nonnull %i.g)
          to label %.noexc23.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !53712, !inline_history !22 ; 2 uses

.noexc23.i:                                       ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCNCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1o_10U64Segment6delete00E0B1s_.exit.peel.i.i.i.i
  %i.u = extractvalue { i64, i64 } %i.t, 0
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %.peel.next.i.i.i.i, label %.loopexit40.i

.peel.next.i.i.i.i:                               ; preds = %.noexc23.i
  %i.w = extractvalue { i64, i64 } %i.t, 1        ; 2 uses
  %i.x = icmp eq ptr %.sroa.12.1.i, %i.e
  br i1 %i.x, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4IteryEEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.peel.i.i.i.thread.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4IteryEEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.noexc24.i
  %i.y = extractvalue { i64, i64 } %i.ad, 1       ; 2 uses
  %i.z = icmp eq ptr %i.ab, %i.e
  br i1 %i.z, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4IteryEEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.peel.i.i.i.thread.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4IteryEEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i, !llvm.loop !23

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4IteryEEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i: ; preds = %.peel.next.i.i.i.i, %bb.e
  %i.aa = phi i64 [ %i.y, %bb.e ], [ %i.w, %.peel.next.i.i.i.i ] ; 3 uses
  %.sroa.12.260.i = phi ptr [ %i.ab, %bb.e ], [ %.sroa.12.1.i, %.peel.next.i.i.i.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.12.260.i, i64 8 ; 3 uses
  %i.ac = load i64, ptr %.sroa.12.260.i, align 8, !noalias !53714, !noundef !99 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ac, %i.aa
  br i1 %.not.i.i.i, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCNCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1o_10U64Segment6delete00E0B1s_.exit.i.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4IteryEEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.peel.i.i.i.thread.i

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCNCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1o_10U64Segment6delete00E0B1s_.exit.i.i.i.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4IteryEEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i
  %i.ad = invoke { i64, i64 } %i.j(ptr noundef nonnull %i.g)
          to label %.noexc24.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !53712, !inline_history !22 ; 2 uses

.noexc24.i:                                       ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCNCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1o_10U64Segment6delete00E0B1s_.exit.i.i.i.i
  %i.ae = extractvalue { i64, i64 } %i.ad, 0
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %bb.e, label %.loopexit40.i, !llvm.loop !23

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCNCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1o_10U64Segment6delete00E0B1s_.exit.i.i.i.i, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCNCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1o_10U64Segment6delete00E0B1s_.exit.peel.i.i.i.i, %bb.b
  %lpad.loopexit.split-lp677 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB2Z_10U64Segment6delete00EEB33_(ptr nonnull %i.g, ptr nonnull %i.h) #81
          to label %common.resume unwind label %bb.i, !noalias !53715

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4IteryEEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.peel.i.i.i.thread.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4IteryEEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i, %bb.e, %.peel.next.i.i.i.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4IteryEEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.peel.i.i.i.i, %bb.c
  %.sroa.12.4.ph.i = phi ptr [ %i.e, %bb.c ], [ %.sroa.12.1.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4IteryEEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.peel.i.i.i.i ], [ %i.e, %.peel.next.i.i.i.i ], [ %i.ab, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4IteryEEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i ], [ %i.e, %bb.e ]
  %.sroa.9.3.ph.i = phi i64 [ undef, %bb.c ], [ %.sroa.9.1.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4IteryEEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.peel.i.i.i.i ], [ %i.n, %.peel.next.i.i.i.i ], [ %i.ac, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4IteryEEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i ], [ %i.aa, %bb.e ]
  %.sroa.0.2.ph.i = phi i64 [ 0, %bb.c ], [ %.sroa.0.1.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4IteryEEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.peel.i.i.i.i ], [ 0, %.peel.next.i.i.i.i ], [ 1, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4IteryEEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i ], [ 0, %bb.e ]
  %.ph.i = phi i64 [ %i.n, %bb.c ], [ %i.n, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4IteryEEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.peel.i.i.i.i ], [ %i.w, %.peel.next.i.i.i.i ], [ %i.aa, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4IteryEEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i ], [ %i.y, %bb.e ] ; 3 uses
  %i.ag = add i64 %.sroa.012.0.i, 1               ; 2 uses
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %.ph.i, i64 %.sroa.07.0.i)
  %spec.store.select4.i = tail call i64 @llvm.umax.i64(i64 %.ph.i, i64 %.sroa.09.0.i)
  %i.ah = trunc nuw i8 %.sroa.0.0.i to i1
  %i.ai = icmp ugt i64 %i.ag, 1
  %or.cond.i = select i1 %i.ah, i1 %i.ai, i1 false
  %i.aj = icmp ugt i64 %.sroa.09.0.i, %.ph.i
  %or.cond3.i = select i1 %or.cond.i, i1 %i.aj, i1 false
  %spec.store.select5.i = select i1 %or.cond3.i, i8 0, i8 %.sroa.0.0.i
  br label %bb.b

.loopexit40.i:                                    ; preds = %.noexc23.i, %.noexc.i, %.noexc24.i
  %i.ak = load ptr, ptr %i.h, align 8, !invariant.load !99, !noalias !53716 ; 2 uses
  %.not.i.i25.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i25.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.loopexit40.i
  invoke void %i.ak(ptr noundef nonnull %i.g)
          to label %bb.g unwind label %bb.h, !noalias !53716

bb.g:                                             ; preds = %bb.f, %.loopexit40.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !103, !invariant.load !99, !noalias !53716 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_RINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB6_10U64Segment13compute_statsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1t_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_B6_BQ_6delete00EEBa_.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !range !125, !invariant.load !99, !noalias !53716
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) %i.ap) #76, !noalias !53716
  br label %_RINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB6_10U64Segment13compute_statsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1t_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_B6_BQ_6delete00EEBa_.exit

bb.h:                                             ; preds = %bb.f
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !103, !invariant.load !99, !noalias !53716 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %common.resume, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !125, !invariant.load !99, !noalias !53716
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) %i.av) #76, !noalias !53716
  br label %common.resume

common.resume:                                    ; preds = %.body.i, %bb.af, %bb.at, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i21, %bb.bf, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i, %.body.i.i.i, %bb.bs, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bx, %bb.by, %bb.bz, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.h, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp677, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.aq, %bb.h ], [ %i.aq, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.gg, %bb.at ], [ %i.gg, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i21 ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %lpad.thr_comm.split-lp.i, %bb.bz ], [ %lpad.thr_comm343.i, %bb.by ], [ %i.jh, %bb.bf ], [ %i.jh, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp618, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %eh.lpad-body.i.i.i, %bb.bs ], [ %.pn.i, %bb.af ], [ %lpad.thr_comm343.i, %bb.bx ], [ %.pn.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !53715
  unreachable

_RINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB6_10U64Segment13compute_statsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1t_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_B6_BQ_6delete00EEBa_.exit: ; preds = %bb.g, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  %i.ax = icmp eq i64 %.sroa.012.0.i, 0           ; 3 uses
  %spec.select.i = select i1 %i.ax, i64 0, i64 %.sroa.09.0.i ; 33 uses
  %spec.select19.i = select i1 %i.ax, i64 0, i64 %.sroa.07.0.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ay = tail call { ptr, ptr } @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment4iter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) ; 2 uses
  %i.az = extractvalue { ptr, ptr } %i.ay, 0      ; 46 uses
  %i.ba = extractvalue { ptr, ptr } %i.ay, 1      ; 36 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.az, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.ba, ptr %i.bc, align 8
  store i64 -1, ptr %i.d, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %2, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.e, ptr %.sroa.612.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53717)
  %i.bd = trunc nuw i8 %.sroa.0.0.i to i1
  br i1 %i.bd, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB6_10U64Segment13compute_statsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1t_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_B6_BQ_6delete00EEBa_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  call fastcc void @_RINvXs1_NtNtCs9KQ7US1M400_11lance_table6rowids13encoded_arrayNtB6_15EncodedU64ArrayINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratoryE9from_iterINtNtNtB1q_8adapters6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB1o_12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_NtB8_7segmentNtB4F_10U64Segment6delete00EEBa_(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.be, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d), !noalias !53718
  store i64 7, ptr %0, align 8, !alias.scope !53717
  br label %_RINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB6_10U64Segment23from_stats_and_sequenceINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1D_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_B6_BQ_6delete00EEBa_.exit

bb.k:                                             ; preds = %_RINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB6_10U64Segment13compute_statsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1t_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_B6_BQ_6delete00EEBa_.exit
  br i1 %i.ax, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = add i64 %.sroa.09.0.i, 1                ; 3 uses
  %i.bg = icmp eq i64 %.sroa.09.0.i, -1
  br i1 %i.bg, label %bb.o, label %bb.n, !prof !102

bb.m:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false), !alias.scope !53717
  br label %bb.aq

bb.n:                                             ; preds = %bb.l
  %i.bi = zext i64 %.sroa.012.0.i to i128
  %i.bj = zext i64 %.sroa.07.0.i to i128          ; 2 uses
  %i.bk = zext i64 %.sroa.09.0.i to i128          ; 2 uses
  %i.bl = add nuw nsw i128 %i.bk, 1               ; 2 uses
  %i.bm = add nuw nsw i128 %i.bj, %i.bi           ; 2 uses
  %i.bn = icmp eq i128 %i.bl, %i.bm
  br i1 %i.bn, label %bb.r, label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  call fastcc void @_RINvXs1_NtNtCs9KQ7US1M400_11lance_table6rowids13encoded_arrayNtB6_15EncodedU64ArrayINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratoryE9from_iterINtNtNtB1q_8adapters6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB1o_12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_NtB8_7segmentNtB4F_10U64Segment6delete00EEBa_(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.bo, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d), !noalias !53718
  store i64 6, ptr %0, align 8, !alias.scope !53717
  br label %_RINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB6_10U64Segment23from_stats_and_sequenceINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1D_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_B6_BQ_6delete00EEBa_.exit

bb.p:                                             ; preds = %bb.n
  %i.bp = sub nsw i128 %i.bl, %i.bm               ; 2 uses
  %i.bq = shl nuw nsw i128 %i.bp, 2
  %i.br = icmp ugt i128 %i.bp, 85070591730234615865843651857942052863
  br i1 %i.br, label %bb.q, label %bb.s, !prof !102

bb.q:                                             ; preds = %bb.p
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.07.0.i, ptr %i.bs, align 8, !alias.scope !53717
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bf, ptr %i.bt, align 8, !alias.scope !53717
  br label %bb.aq

bb.s:                                             ; preds = %bb.q, %bb.p
  %.sroa.02.0.i.i = phi i128 [ -1, %bb.q ], [ %i.bq, %bb.p ]
  %i.bu = sub nsw i128 %i.bk, %i.bj
  %i.bv = add nsw i128 %i.bu, 1                   ; 2 uses
  %i.bw = lshr i128 %i.bv, 3
  %i.bx = and i128 %i.bv, 7
  %.not.i.i = icmp ne i128 %i.bx, 0
  %i.by = zext i1 %.not.i.i to i128
  %.sroa.01.0.i.i = add nuw nsw i128 %i.bw, %i.by ; 2 uses
  %i.bz = icmp samesign ugt i128 %.sroa.01.0.i.i, 18446744073709551591
  %i.ca = trunc i128 %.sroa.01.0.i.i to i64
  %i.cb = add i64 %i.ca, 24
  %.sroa.05.0.i.i = select i1 %i.bz, i64 -1, i64 %i.cb ; 2 uses
  %.sroa.02.0.fr.i.i = freeze i128 %.sroa.02.0.i.i ; 2 uses
  %4 = icmp ugt i128 %.sroa.02.0.fr.i.i, 18446744073709551591
  %.sroa.04.0.i.i = trunc nuw i128 %.sroa.02.0.fr.i.i to i64
  %5 = add i64 %.sroa.04.0.i.i, 24
  %spec.select.i.i = select i1 %4, i64 -1, i64 %5 ; 2 uses
  %i.cc = tail call i64 @llvm.umin.i64(i64 %spec.select.i.i, i64 %.sroa.05.0.i.i) ; 2 uses
  %i.cd = icmp ugt i64 %.sroa.012.0.i, 9223372036854775795
  %i.ce = shl nuw i64 %.sroa.012.0.i, 1
  %i.cf = add i64 %i.ce, 24
  %i.cg = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 %i.cf)
  %.sroa.speculated.i = select i1 %i.cd, i64 %i.cc, i64 %i.cg ; 2 uses
  %i.ch = icmp eq i64 %.sroa.speculated.i, %spec.select.i.i
  br i1 %i.ch, label %bb.ax, label %bb.u

bb.t:                                             ; preds = %bb.av
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ci = icmp eq i64 %.sroa.speculated.i, %.sroa.05.0.i.i
  br i1 %i.ci, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call fastcc void @_RINvXs1_NtNtCs9KQ7US1M400_11lance_table6rowids13encoded_arrayNtB6_15EncodedU64ArrayINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratoryE9from_iterINtNtNtB1q_8adapters6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB1o_12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_NtB8_7segmentNtB4F_10U64Segment6delete00EEBa_(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.cj, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d), !noalias !53718
  store i64 6, ptr %0, align 8, !alias.scope !53717
  br label %_RINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB6_10U64Segment23from_stats_and_sequenceINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1D_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_B6_BQ_6delete00EEBa_.exit

bb.w:                                             ; preds = %bb.u
  %i.ck = sub i64 %.sroa.09.0.i, %.sroa.07.0.i
  %i.cl = add i64 %i.ck, 1                        ; 4 uses
  %i.cm = lshr i64 %i.cl, 3                       ; 2 uses
  %i.cn = and i64 %i.cl, 7                        ; 7 uses
  %.not.i59.i = icmp ne i64 %i.cn, 0              ; 2 uses
  %i.co = zext i1 %.not.i59.i to i64
  %.sroa.0.0.i60.i = add nuw nsw i64 %i.cm, %i.co ; 9 uses
  %i.cp = icmp eq i64 %i.cl, 0                    ; 2 uses
  br i1 %i.cp, label %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !53719
  %i.cq = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2305843009213693953) %.sroa.0.0.i60.i, i64 noundef range(i64 1, 9) 1) #76, !noalias !53719 ; 5 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.y, label %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.thread.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, 2305843009213693953) %.sroa.0.0.i60.i) #80
          to label %.noexc.i17 unwind label %bb.bz, !noalias !53720

.noexc.i17:                                       ; preds = %bb.y
  unreachable

_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %bb.w
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 inttoptr (i64 1 to ptr), i8 -1, i64 range(i64 0, 2305843009213693953) %.sroa.0.0.i60.i, i1 false), !noalias !53720
  br label %bb.ag

_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.thread.i.i: ; preds = %bb.x
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cq, i8 -1, i64 range(i64 0, 2305843009213693953) %.sroa.0.0.i60.i, i1 false), !noalias !53720
  br i1 %.not.i59.i, label %bb.z, label %bb.ag

.loopexit.i.i:                                    ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.lcssa675 = phi i8 [ %i.ct, %bb.z ], [ %i.cu, %bb.aa ], [ %i.cv, %bb.ab ], [ %i.cw, %bb.ac ], [ %i.cx, %bb.ad ], [ %spec.select, %bb.ae ]
  store i8 %.lcssa675, ptr %i.cs, align 1, !noalias !53721
  br label %bb.ag

bb.z:                                             ; preds = %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.thread.i.i
  %i.cs = getelementptr i8, ptr %i.cq, i64 %i.cm  ; 2 uses
  %.promoted.i.i = load i8, ptr %i.cs, align 1, !noalias !53721 ; 7 uses
  %i.ct = and i8 %.promoted.i.i, 127
  %exitcond.not.i.i = icmp eq i64 %i.cn, 7
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cu = and i8 %.promoted.i.i, 63
  %exitcond.not.i.i.1 = icmp eq i64 %i.cn, 6
  br i1 %exitcond.not.i.i.1, label %.loopexit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cv = and i8 %.promoted.i.i, 31
  %exitcond.not.i.i.2 = icmp eq i64 %i.cn, 5
  br i1 %exitcond.not.i.i.2, label %.loopexit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cw = and i8 %.promoted.i.i, 15
  %exitcond.not.i.i.3 = icmp eq i64 %i.cn, 4
  br i1 %exitcond.not.i.i.3, label %.loopexit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cx = and i8 %.promoted.i.i, 7
  %exitcond.not.i.i.4 = icmp eq i64 %i.cn, 3
  br i1 %exitcond.not.i.i.4, label %.loopexit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cy = and i8 %.promoted.i.i, 3
  %exitcond.not.i.i.5 = icmp eq i64 %i.cn, 2
  %i.cz = and i8 %.promoted.i.i, 1
  %spec.select = select i1 %exitcond.not.i.i.5, i8 %i.cy, i8 %i.cz
  br label %.loopexit.i.i

.body.i:                                          ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i, %bb.ap, %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp650, %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.fr, %bb.ap ], [ %i.fr, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i ] ; 2 uses
  br i1 %i.cp, label %common.resume, label %bb.af

bb.af:                                            ; preds = %.body.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i14.i.i, i64 noundef %.sroa.0.0.i60.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !53722
  br label %common.resume

bb.ag:                                            ; preds = %.loopexit.i.i, %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.thread.i.i, %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.i.i
  %.sroa.10.0.i.i14.i.i = phi ptr [ %i.cq, %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.thread.i.i ], [ inttoptr (i64 1 to ptr), %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit.i.i ], [ %i.cq, %.loopexit.i.i ] ; 3 uses
  %.not.i61483.i = icmp ugt i64 %.sroa.07.0.i, %.sroa.09.0.i
  br i1 %.not.i61483.i, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1n_10U64Segment14holes_in_sliceINtNtNtBc_8adapters6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_B1n_B27_6delete00EE0E0B1r_.exit42.i.i, label %.preheader.i.lr.ph.i

.preheader.i.lr.ph.i:                             ; preds = %bb.ag
  %i.da = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.au, %.preheader.i.lr.ph.i
  %.sroa.0170.0490.i = phi i64 [ -1, %.preheader.i.lr.ph.i ], [ %.sroa.0170.9.ph.i, %bb.au ] ; 4 uses
  %.sroa.15.0489.i = phi i64 [ undef, %.preheader.i.lr.ph.i ], [ %.sroa.15.11.ph.i, %bb.au ] ; 4 uses
  %.sroa.21.0488.i = phi ptr [ %2, %.preheader.i.lr.ph.i ], [ %.sroa.21.13.ph.i, %bb.au ] ; 4 uses
  %.sroa.39.0487.i = phi i64 [ -1, %.preheader.i.lr.ph.i ], [ %.sroa.39.5.ph.i, %bb.au ] ; 3 uses
  %.sroa.45175.0486.i = phi i64 [ undef, %.preheader.i.lr.ph.i ], [ %.sroa.45175.5.ph.i, %bb.au ] ; 3 uses
  %.sroa.49.0485.i = phi i64 [ %.sroa.07.0.i, %.preheader.i.lr.ph.i ], [ %.sroa.49.2.ph.i, %bb.au ] ; 4 uses
  %i.db = icmp ult i64 %.sroa.49.0485.i, %spec.select.i
  br i1 %i.db, label %.lr.ph.i.i, label %._crit_edge.i62.i

._crit_edge.i62.i:                                ; preds = %.preheader.i.i
  %.not.i.i.i.i14.i.i = icmp eq i64 %.sroa.39.0487.i, -1
  br i1 %.not.i.i.i.i14.i.i, label %._crit_edge.thread.i.thread.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1l_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB4b_10U64Segment6delete00EE4peek0EB4f_.exit.i.i.i17.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1n_10U64Segment14holes_in_sliceINtNtNtBc_8adapters6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_B1n_B27_6delete00EE0E0B1r_.exit.i.i
  %.sroa.45175.3.i = phi i64 [ %.sroa.45175.4.i, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1n_10U64Segment14holes_in_sliceINtNtNtBc_8adapters6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_B1n_B27_6delete00EE0E0B1r_.exit.i.i ], [ %.sroa.45175.0486.i, %.preheader.i.i ]
  %.sroa.39.3.i = phi i64 [ -1, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1n_10U64Segment14holes_in_sliceINtNtNtBc_8adapters6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_B1n_B27_6delete00EE0E0B1r_.exit.i.i ], [ %.sroa.39.0487.i, %.preheader.i.i ] ; 2 uses
  %.sroa.21.7.i = phi ptr [ %.sroa.21.8.i, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1n_10U64Segment14holes_in_sliceINtNtNtBc_8adapters6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_B1n_B27_6delete00EE0E0B1r_.exit.i.i ], [ %.sroa.21.0488.i, %.preheader.i.i ] ; 4 uses
  %.sroa.15.6.i = phi i64 [ %.sroa.15.7.i, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1n_10U64Segment14holes_in_sliceINtNtNtBc_8adapters6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_B1n_B27_6delete00EE0E0B1r_.exit.i.i ], [ %.sroa.15.0489.i, %.preheader.i.i ] ; 3 uses
  %.sroa.0170.5.i = phi i64 [ %.sroa.0170.6.i, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1n_10U64Segment14holes_in_sliceINtNtNtBc_8adapters6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_B1n_B27_6delete00EE0E0B1r_.exit.i.i ], [ %.sroa.0170.0490.i, %.preheader.i.i ] ; 3 uses
  %i.dc = phi ptr [ %i.ef, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1n_10U64Segment14holes_in_sliceINtNtNtBc_8adapters6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_B1n_B27_6delete00EE0E0B1r_.exit.i.i ], [ %.sroa.21.0488.i, %.preheader.i.i ] ; 6 uses
  %.sroa.3.0.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i68.i.i = phi i64 [ %.sroa.3.0.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i64.i.i, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1n_10U64Segment14holes_in_sliceINtNtNtBc_8adapters6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_B1n_B27_6delete00EE0E0B1r_.exit.i.i ], [ %.sroa.15.0489.i, %.preheader.i.i ] ; 2 uses
  %i.dd = phi i64 [ %i.de, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1n_10U64Segment14holes_in_sliceINtNtNtBc_8adapters6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_B1n_B27_6delete00EE0E0B1r_.exit.i.i ], [ %.sroa.45175.0486.i, %.preheader.i.i ]
  %i.de = phi i64 [ %i.df, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1n_10U64Segment14holes_in_sliceINtNtNtBc_8adapters6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_B1n_B27_6delete00EE0E0B1r_.exit.i.i ], [ %.sroa.49.0485.i, %.preheader.i.i ] ; 7 uses
  %.sroa.0.0.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i5759.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i54.i.i, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCINvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1n_10U64Segment14holes_in_sliceINtNtNtBc_8adapters6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_B1n_B27_6delete00EE0E0B1r_.exit.i.i ], [ %.sroa.0170.0490.i, %.preheader.i.i ] ; 3 uses
  %i.df = add nuw i64 %i.de, 1                    ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.39.3.i, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.ah, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1l_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB4b_10U64Segment6delete00EE4peek0EB4f_.exit.i.i.i.i.i

bb.ah:                                            ; preds = %.lr.ph.i.i
  %i.dg = load ptr, ptr %i.da, align 8, !invariant.load !99, !noalias !53723, !nonnull !99 ; 3 uses
  %i.dh = invoke { i64, i64 } %i.dg(ptr noundef nonnull %i.az)
          to label %.noexc68.i unwind label %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !53723, !inline_history !53499 ; 2 uses

.noexc68.i:                                       ; preds = %bb.ah
  %i.di = extractvalue { i64, i64 } %i.dh, 0
  %i.dj = trunc nuw i64 %i.di to i1
  br i1 %i.dj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1l_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB4b_10U64Segment6delete00EE4peek0EB4f_.exit.i.i.i.i.thread.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.noexc68.i
  %i.dk = extractvalue { i64, i64 } %i.dh, 1      ; 6 uses
  %.not.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i5759.i.i, -1
  br i1 %.not.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i, label %bb.ai, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4IteryEEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.peel.i.i.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.dl = icmp eq ptr %i.dc, %i.e
  br i1 %i.dl, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1l_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB4b_10U64Segment6delete00EE4peek0EB4f_.exit.i.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 2 uses
  %i.dn = load i64, ptr %i.dc, align 8, !noalias !53724, !noundef !99 ; 2 uses
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4IteryEEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.peel.i.i.i.i.i.i.i.i.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4IteryEEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.peel.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aj, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.21.10.i = phi ptr [ %.sroa.21.7.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.dm, %bb.aj ] ; 3 uses
  %.sroa.15.9.i = phi i64 [ %.sroa.15.6.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.dn, %bb.aj ] ; 3 uses
  %.sroa.0170.8.i = phi i64 [ %.sroa.0170.5.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ 1, %bb.aj ]
  %i.do = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.dm, %bb.aj ] ; 4 uses
  %.sroa.3.0.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i67.i.i = phi i64 [ %.sroa.3.0.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i68.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.dn, %bb.aj ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i56.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i5759.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ 1, %bb.aj ] ; 2 uses
  %i.dp = trunc nuw i64 %.sroa.0.0.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i56.i.i to i1
  %i.dq = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i67.i.i, %i.dk
  %or.cond.i.i.i.peel.i.i.i.i.i.i.i.i.i.i = select i1 %i.dp, i1 %i.dq, i1 false
  br i1 %or.cond.i.i.i.peel.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCNCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1o_10U64Segment6delete00E0B1s_.exit.peel.i.i.i.i.i.i.i.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1l_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB4b_10U64Segment6delete00EE4peek0EB4f_.exit.i.i.i.i.i

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCNCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1o_10U64Segment6delete00E0B1s_.exit.peel.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4IteryEEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.peel.i.i.i.i.i.i.i.i.i.i
  %i.dr = invoke { i64, i64 } %i.dg(ptr noundef nonnull %i.az)
          to label %.noexc69.i unwind label %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !53723, !inline_history !53499 ; 2 uses

.noexc69.i:                                       ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCNCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1o_10U64Segment6delete00E0B1s_.exit.peel.i.i.i.i.i.i.i.i.i.i
  %i.ds = extractvalue { i64, i64 } %i.dr, 0
  %i.dt = trunc nuw i64 %i.ds to i1
  br i1 %i.dt, label %.peel.next.i.i.i.i.i.i.i.i.i.preheader.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1l_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB4b_10U64Segment6delete00EE4peek0EB4f_.exit.i.i.i.i.thread.i

.peel.next.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %.noexc69.i
  %i.du = extractvalue { i64, i64 } %i.dr, 1      ; 3 uses
  %i.dv = icmp eq ptr %i.do, %i.e
  br i1 %i.dv, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1l_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB4b_10U64Segment6delete00EE4peek0EB4f_.exit.i.i.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4IteryEEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

.peel.next.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.noexc70.i
  %i.dw = extractvalue { i64, i64 } %i.ec, 1      ; 3 uses
  %i.dx = icmp eq ptr %i.ea, %i.e
  br i1 %i.dx, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1l_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB4b_10U64Segment6delete00EE4peek0EB4f_.exit.i.i.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4IteryEEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !23

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4IteryEEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.preheader.i, %.peel.next.i.i.i.i.i.i.i.i.i.i
  %i.dy = phi i64 [ %i.dw, %.peel.next.i.i.i.i.i.i.i.i.i.i ], [ %i.du, %.peel.next.i.i.i.i.i.i.i.i.i.preheader.i ] ; 7 uses
  %i.dz = phi ptr [ %i.ea, %.peel.next.i.i.i.i.i.i.i.i.i.i ], [ %i.do, %.peel.next.i.i.i.i.i.i.i.i.i.preheader.i ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 7 uses
  %i.eb = load i64, ptr %i.dz, align 8, !noalias !53725, !noundef !99 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.eb, %i.dy
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCNCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1o_10U64Segment6delete00E0B1s_.exit.i.i.i.i.i.i.i.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1l_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB4b_10U64Segment6delete00EE4peek0EB4f_.exit.i.i.i.i.i

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCNCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1o_10U64Segment6delete00E0B1s_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_yEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4IteryEEE4peek0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ec = invoke { i64, i64 } %i.dg(ptr noundef nonnull %i.az)
          to label %.noexc70.i unwind label %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !53723, !inline_history !53499 ; 2 uses

.noexc70.i:                                       ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkyQNCNCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB1o_10U64Segment6delete00E0B1s_.exit.i.i.i.i.i.i.i.i.i.i
end_hunk_2
begin_hunk_3_@_RNvMs_NtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB6_9operation9Operation22get_delete_config_keys:bb.a
          cleanup                                 ; 2 uses
  %i.z = icmp eq i64 %.pr.i.i.i, 0
  br i1 %i.z, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.510.0.copyload.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.510.0.copyload.i, i64 noundef %.pr.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !57077
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i

bb.f:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs_NtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtBX_9operation9Operation22get_delete_config_keys0INtB7_5FnMutTRNtNtBX_10update_map14UpdateMapEntryEE8call_mutBZ_.exit.i.i.i
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.510.0.copyload.i = load ptr, ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !57066 ; 3 uses
  %.sroa.6.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx13.i, align 8, !noalias !57066
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !57078
  %i.aa = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, 9) 8) #76, !noalias !57078 ; 6 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #80
          to label %.noexc.i unwind label %bb.d, !noalias !57066

.noexc.i:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  store i64 %.pr.i.i.i, ptr %i.aa, align 8, !noalias !57066
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %.sroa.510.0.copyload.i, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !57066
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.520.0..sroa_idx.i, align 8, !noalias !57066
  store i64 4, ptr %i.c, align 8, !noalias !57066
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.aa, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !57066
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !57066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !57066
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57080)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !57081
  %i.ac = icmp eq ptr %i.r, %i.o
  br i1 %i.ac, label %.loopexit.i, label %.lr.ph.i.i.preheader.lr.ph.i.i.i

.lr.ph.i.i.preheader.lr.ph.i.i.i:                 ; preds = %bb.h
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i, %.lr.ph.i.i.preheader.lr.ph.i.i.i
  %i.ad = phi ptr [ %i.aa, %.lr.ph.i.i.preheader.lr.ph.i.i.i ], [ %i.ao, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ]
  %i.ae = phi i64 [ 1, %.lr.ph.i.i.preheader.lr.ph.i.i.i ], [ %i.aq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ] ; 5 uses
  %.sroa.0.021.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.preheader.lr.ph.i.i.i ], [ %i.ag, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57083)
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.backedge.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i
  %i.af = phi ptr [ %i.ag, %.backedge.i.i.i.i.i ], [ %.sroa.0.021.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57087)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !range !101, !alias.scope !57088, !noalias !57089, !noundef !99
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ai, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs_NtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtBX_9operation9Operation22get_delete_config_keys0INtB7_5FnMutTRNtNtBX_10update_map14UpdateMapEntryEE8call_mutBZ_.exit.i.i.i.i.i, label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i
  store i64 -1, ptr %i.a, align 8, !alias.scope !57090, !noalias !57081
  br label %.backedge.i.i.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs_NtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtBX_9operation9Operation22get_delete_config_keys0INtB7_5FnMutTRNtNtBX_10update_map14UpdateMapEntryEE8call_mutBZ_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.af)
          to label %.noexc6.i unwind label %bb.l, !noalias !57091

.noexc6.i:                                        ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs_NtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtBX_9operation9Operation22get_delete_config_keys0INtB7_5FnMutTRNtNtBX_10update_map14UpdateMapEntryEE8call_mutBZ_.exit.i.i.i.i.i
  %.pr.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !57081 ; 4 uses
  %i.aj = icmp eq i64 %.pr.i.i.i.i.i, -1
  br i1 %i.aj, label %.backedge.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryENCNvMs_NtB1E_9conflictsNtNtB1E_9operation9Operation22get_delete_config_keys0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %.noexc6.i, %.critedge.i.i.i.i.i
  %i.ak = icmp eq ptr %i.ag, %i.o
  br i1 %i.ak, label %.loopexit.i, label %.lr.ph.i.i.i.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryENCNvMs_NtB1E_9conflictsNtNtB1E_9operation9Operation22get_delete_config_keys0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.i.i.i: ; preds = %.noexc6.i
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !57081 ; 3 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !57081
  %i.al = icmp samesign ult i64 %i.ae, 384307168202282326
  tail call void @llvm.assume(i1 %i.al)
  %i.am = load i64, ptr %i.c, align 8, !range !103, !alias.scope !57092, !noalias !57066, !noundef !99
  %i.an = icmp eq i64 %i.ae, %i.am
  br i1 %i.an, label %bb.k, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryENCNvMs_NtB1E_9conflictsNtNtB1E_9operation9Operation22get_delete_config_keys0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.i.i.i
  %i.ao = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i ], [ %i.ad, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryENCNvMs_NtB1E_9conflictsNtNtB1E_9operation9Operation22get_delete_config_keys0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.i.i.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.ae ; 3 uses
  store i64 %.pr.i.i.i.i.i, ptr %i.ap, align 8, !noalias !57081
  %.sroa.415.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.415.0..sroa_idx.i.i.i, align 8, !noalias !57081
  %.sroa.516.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.516.0..sroa_idx.i.i.i, align 8, !noalias !57081
  %i.aq = add nuw nsw i64 %i.ae, 1                ; 2 uses
  store i64 %i.aq, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !57092, !noalias !57066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !57081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !57081
  %i.ar = icmp eq ptr %i.ag, %i.o
  br i1 %i.ar, label %.loopexit.i, label %.lr.ph.i.i.preheader.i.i.i

bb.i:                                             ; preds = %bb.k
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = icmp eq i64 %.pr.i.i.i.i.i, 0
  br i1 %i.at, label %.body.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %.pr.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !57093
  br label %.body.i

bb.k:                                             ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryENCNvMs_NtB1E_9conflictsNtNtB1E_9operation9Operation22get_delete_config_keys0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.ae, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i unwind label %bb.i, !noalias !57066

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i: ; preds = %bb.k
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !57092, !noalias !57066
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i

bb.l:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs_NtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtBX_9operation9Operation22get_delete_config_keys0INtB7_5FnMutTRNtNtBX_10update_map14UpdateMapEntryEE8call_mutBZ_.exit.i.i.i.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.l, %bb.j, %bb.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.au, %bb.l ], [ %i.as, %bb.j ], [ %i.as, %bb.i ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.c) #81, !noalias !57066
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i

.loopexit.i:                                      ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i, %.backedge.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !57081
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryENCNvMs_NtB3o_9conflictsNtNtB3o_9operation9Operation22get_delete_config_keys0EE9from_iterB3q_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i: ; preds = %.body.i, %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.y, %bb.d ], [ %i.y, %bb.e ]
  resume { ptr, i32 } %.pn.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryENCNvMs_NtB3o_9conflictsNtNtB3o_9operation9Operation22get_delete_config_keys0EE9from_iterB3q_.exit: ; preds = %.loopexit24.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !57066
  br label %bb.m

bb.m:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryENCNvMs_NtB3o_9conflictsNtNtB3o_9operation9Operation22get_delete_config_keys0EE9from_iterB3q_.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB6_9operation9Operation22get_upsert_config_keys(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(280) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !57168 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = load i64, ptr %1, align 8, !range !117, !noundef !99 ; 3 uses
  %i.h = icmp ne i64 %i.g, -9223372036854775798
  tail call void @llvm.assume(i1 %i.h)
  %i.i = xor i64 %i.g, -9223372036854775808
  %i.j = icmp slt i64 %i.g, 0
  %i.k = select i1 %i.j, i64 %i.i, i64 10
  switch i64 %i.k, label %bb.b [
    i64 2, label %bb.c
    i64 12, label %bb.d
  ]

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.m, align 8
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.o = load ptr, ptr %i.n, align 8, !noundef !99 ; 5 uses
  %.not1 = icmp eq ptr %i.o, null
  br i1 %.not1, label %bb.b, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !101, !noundef !99
  %.not = icmp eq i64 %i.q, -1
  br i1 %.not, label %bb.b, label %bb.u

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57169)
  %.val3.i.i = load <16 x i8>, ptr %i.o, align 16, !noalias !57170
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !57169, !noundef !99 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57171)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !57172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !57172
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.v = bitcast <16 x i1> %i.u to i16            ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq i16 %i.v, 0
  br i1 %.not12.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %i.x = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %i.w, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %i.o, %bb.f ]
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.x, align 16, !noalias !57173
  %i.z = icmp sgt <16 x i8> %.val10.i.i.i.i.i, splat (i8 -1)
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -768 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.z to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %.sroa.6.0 = phi ptr [ %i.w, %bb.f ], [ %i.ab, %.lr.ph.i.i.i.i.i ]
  %.sroa.018.0.copyload.i = phi ptr [ %i.o, %bb.f ], [ %i.aa, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %i.v, %bb.f ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.ac = add i16 %.lcssa.i.i.i.i.i, -1
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = and i16 %i.ac, %.lcssa.i.i.i.i.i
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [48 x i8], ptr %.sroa.018.0.copyload.i, i64 %i.ag
  %i.ai = add i64 %i.s, -1                        ; 3 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -48
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj), !noalias !57174
  %.pr.i = load i64, ptr %i.e, align 8, !noalias !57172 ; 4 uses
  %.not.i = icmp eq i64 %.pr.i, -1
  br i1 %.not.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.thread.i, label %bb.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.thread.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i, %bb.e
  store i64 0, ptr %0, align 8, !alias.scope !57171
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ak, align 8, !alias.scope !57171
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.al, align 8, !alias.scope !57171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !57172
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_B11_EEE9from_iterCs9KQ7US1M400_11lance_table.exit

bb.g:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = icmp eq i64 %.pr.i, 0
  br i1 %i.an, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %.pr.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !57175
  br label %common.resume

bb.i:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !57172 ; 3 uses
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx10.i, align 8, !noalias !57172
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.s, i64 4) ; 3 uses
  %i.ao = mul i64 %.sroa.0.0.i.i, 24              ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.ai, 384307168202282324
  br i1 %or.cond.i.i.i, label %bb.l, label %bb.j, !prof !100

bb.j:                                             ; preds = %bb.i
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !57176
  %i.aq = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ao, i64 noundef range(i64 1, 9) 8) #76, !noalias !57176 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.k ], [ 0, %bb.i ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ao) #80
          to label %.noexc.i unwind label %bb.g, !noalias !57172

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.j
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.j ], [ %i.aq, %bb.k ] ; 5 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.j ], [ %.sroa.0.0.i.i, %bb.k ] ; 2 uses
  %i.as = icmp ule i64 %.sroa.0.0.i.i, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.as)
  store i64 %.pr.i, ptr %.sroa.10.0.i.i, align 8, !noalias !57172
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !57172
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !57172
  store i64 %.sroa.4.0.i.i, ptr %i.f, align 8, !noalias !57172
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !57172
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !57172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !57172
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57178)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !57179
  %i.at = icmp eq i64 %i.ai, 0
  br i1 %i.at, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.n

bb.n:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i, %.lr.ph.i.i.i
  %i.au = phi ptr [ %.sroa.10.0.i.i, %.lr.ph.i.i.i ], [ %i.bm, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ]
  %i.av = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.bo, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ] ; 4 uses
  %.lcssa26.i.i.i = phi ptr [ %.sroa.6.0, %.lr.ph.i.i.i ], [ %.lcssa25.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ] ; 2 uses
  %i.aw = phi i16 [ %i.af, %.lr.ph.i.i.i ], [ %i.bf, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ] ; 2 uses
  %.val1722.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ %i.bi, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ] ; 2 uses
  %.lcssa152021.i.i.i = phi ptr [ %.sroa.018.0.copyload.i, %.lr.ph.i.i.i ], [ %.lcssa1519.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %i.aw, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i
  %i.ax = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa26.i.i.i, %bb.n ] ; 2 uses
  %i.ay = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa152021.i.i.i, %bb.n ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ax, align 16, !noalias !57180
  %i.az = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -768 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.az to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.n
  %.lcssa25.i.i.i = phi ptr [ %.lcssa26.i.i.i, %bb.n ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa1519.i.i.i = phi ptr [ %.lcssa152021.i.i.i, %bb.n ], [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.aw, %bb.n ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.bc = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = and i16 %i.bc, %.lcssa.i.i.i.i.i.i.i
  %i.bg = sub nsw i64 0, %i.be
  %i.bh = getelementptr inbounds [48 x i8], ptr %.lcssa1519.i.i.i, i64 %i.bg
  %i.bi = add nsw i64 %.val1722.i.i.i, -1         ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -48
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj)
          to label %.noexc6.i unwind label %bb.s, !noalias !57181

.noexc6.i:                                        ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i.i
  %.pr.i.i.i = load i64, ptr %i.d, align 8, !noalias !57179 ; 4 uses
  %.not.i.i5.i = icmp eq i64 %.pr.i.i.i, -1
  br i1 %.not.i.i5.i, label %.loopexit.i, label %bb.o

bb.o:                                             ; preds = %.noexc6.i
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !57179 ; 3 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !57179
  %i.bk = load i64, ptr %i.f, align 8, !range !103, !alias.scope !57182, !noalias !57172, !noundef !99
  %i.bl = icmp eq i64 %i.av, %i.bk
  br i1 %i.bl, label %bb.r, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i, %bb.o
  %i.bm = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i ], [ %i.au, %bb.o ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.av ; 3 uses
  store i64 %.pr.i.i.i, ptr %i.bn, align 8, !noalias !57179
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.412.0..sroa_idx.i.i.i, align 8, !noalias !57179
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !noalias !57179
  %i.bo = add nuw nsw i64 %i.av, 1                ; 2 uses
  store i64 %i.bo, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !57182, !noalias !57172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !57179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !57179
  %i.bp = icmp eq i64 %i.bi, 0
  br i1 %i.bp, label %.loopexit.i, label %bb.n

bb.p:                                             ; preds = %bb.r
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = icmp eq i64 %.pr.i.i.i, 0
  br i1 %i.br, label %.body.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %.pr.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !57183
  br label %.body.i

bb.r:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.av, i64 noundef range(i64 1, 0) %.val1722.i.i.i, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i unwind label %bb.p, !noalias !57184

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i: ; preds = %bb.r
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !57182, !noalias !57172
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i

bb.s:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.s, %bb.q, %bb.p
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bs, %bb.s ], [ %i.bq, %bb.q ], [ %i.bq, %bb.p ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.f) #81, !noalias !57172
  br label %common.resume

.loopexit.i:                                      ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i, %.noexc6.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !57179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !57185
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_B11_EEE9from_iterCs9KQ7US1M400_11lance_table.exit

common.resume:                                    ; preds = %bb.v, %bb.w, %.body.i13, %bb.g, %bb.h, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.am, %bb.h ], [ %eh.lpad-body.i, %.body.i ], [ %i.am, %bb.g ], [ %eh.lpad-body.i14, %.body.i13 ], [ %i.ch, %bb.v ], [ %i.ch, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_B11_EEE9from_iterCs9KQ7US1M400_11lance_table.exit: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.thread.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !57172
  br label %bb.t

bb.t:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryENCNvMs_NtB3o_9conflictsNtNtB3o_9operation9Operation22get_upsert_config_keys0EE9from_iterB3q_.exit, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_B11_EEE9from_iterCs9KQ7US1M400_11lance_table.exit, %bb.b
  ret void

bb.u:                                             ; preds = %bb.d
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !99, !noundef !99 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !99 ; 2 uses
  %.idx = mul nuw nsw i64 %i.bw, 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57186)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !57186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !57186
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57188)
  %i.by = icmp eq i64 %i.bw, 0
  br i1 %i.by, label %.loopexit24.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %bb.u, %.backedge.i.i.i
  %i.bz = phi ptr [ %i.ca, %.backedge.i.i.i ], [ %i.bu, %bb.u ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57192)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cc = load i64, ptr %i.cb, align 8, !range !101, !alias.scope !57193, !noalias !57194, !noundef !99
  %.not.i.i.i.i.i3 = icmp eq i64 %i.cc, -1
  br i1 %.not.i.i.i.i.i3, label %.critedge.i.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs_NtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtBX_9operation9Operation22get_upsert_config_keys0INtB7_5FnMutTRNtNtBX_10update_map14UpdateMapEntryEE8call_mutBZ_.exit.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs_NtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtBX_9operation9Operation22get_upsert_config_keys0INtB7_5FnMutTRNtNtBX_10update_map14UpdateMapEntryEE8call_mutBZ_.exit.i.i.i: ; preds = %.lr.ph.i.i.i2
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bz), !noalias !57195
  %.pr.i.i.i4 = load i64, ptr %i.b, align 8, !noalias !57186 ; 4 uses
  %i.cd = icmp eq i64 %.pr.i.i.i4, -1
  br i1 %i.cd, label %.backedge.i.i.i, label %bb.x

.backedge.i.i.i:                                  ; preds = %.critedge.i.i.i, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs_NtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtBX_9operation9Operation22get_upsert_config_keys0INtB7_5FnMutTRNtNtBX_10update_map14UpdateMapEntryEE8call_mutBZ_.exit.i.i.i
  %i.ce = icmp eq ptr %i.ca, %i.bx
  br i1 %i.ce, label %.loopexit24.i, label %.lr.ph.i.i.i2

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i2
  store i64 -1, ptr %i.b, align 8, !alias.scope !57196, !noalias !57186
  br label %.backedge.i.i.i

.loopexit24.i:                                    ; preds = %.backedge.i.i.i, %bb.u
  store i64 0, ptr %0, align 8, !alias.scope !57186
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cf, align 8, !alias.scope !57186
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cg, align 8, !alias.scope !57186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !57186
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryENCNvMs_NtB3o_9conflictsNtNtB3o_9operation9Operation22get_upsert_config_keys0EE9from_iterB3q_.exit

bb.v:                                             ; preds = %bb.y
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = icmp eq i64 %.pr.i.i.i4, 0
  br i1 %i.ci, label %common.resume, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.510.0.copyload.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.510.0.copyload.i, i64 noundef %.pr.i.i.i4, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !57197
  br label %common.resume

bb.x:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs_NtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtBX_9operation9Operation22get_upsert_config_keys0INtB7_5FnMutTRNtNtBX_10update_map14UpdateMapEntryEE8call_mutBZ_.exit.i.i.i
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.510.0.copyload.i = load ptr, ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !57186 ; 3 uses
  %.sroa.6.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload.i5 = load i64, ptr %.sroa.6.0..sroa_idx13.i, align 8, !noalias !57186
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !57198
  %i.cj = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, 9) 8) #76, !noalias !57198 ; 6 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #80
          to label %.noexc.i24 unwind label %bb.v, !noalias !57186

.noexc.i24:                                       ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.x
  store i64 %.pr.i.i.i4, ptr %i.cj, align 8, !noalias !57186
  %.sroa.419.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %.sroa.510.0.copyload.i, ptr %.sroa.419.0..sroa_idx.i6, align 8, !noalias !57186
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store i64 %.sroa.6.0.copyload.i5, ptr %.sroa.520.0..sroa_idx.i, align 8, !noalias !57186
  store i64 4, ptr %i.c, align 8, !noalias !57186
  %.sroa.4.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.cj, ptr %.sroa.4.0..sroa_idx.i7, align 8, !noalias !57186
  %.sroa.6.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i8, align 8, !noalias !57186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !57186
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57200)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !57201
  %i.cl = icmp eq ptr %i.ca, %i.bx
  br i1 %i.cl, label %.loopexit.i21, label %.lr.ph.i.i.preheader.lr.ph.i.i.i

.lr.ph.i.i.preheader.lr.ph.i.i.i:                 ; preds = %bb.z
  %.sroa.5.0..sroa_idx.i.i.i9 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i.i10 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i20, %.lr.ph.i.i.preheader.lr.ph.i.i.i
  %i.cm = phi ptr [ %i.cj, %.lr.ph.i.i.preheader.lr.ph.i.i.i ], [ %i.cx, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i20 ]
  %i.cn = phi i64 [ 1, %.lr.ph.i.i.preheader.lr.ph.i.i.i ], [ %i.cz, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i20 ] ; 5 uses
  %.sroa.0.021.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.preheader.lr.ph.i.i.i ], [ %i.cp, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i20 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57203)
  br label %.lr.ph.i.i.i.i.i11

.lr.ph.i.i.i.i.i11:                               ; preds = %.backedge.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i
  %i.co = phi ptr [ %i.cp, %.backedge.i.i.i.i.i ], [ %.sroa.0.021.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 48 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57207)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cr = load i64, ptr %i.cq, align 8, !range !101, !alias.scope !57208, !noalias !57209, !noundef !99
  %.not.i.i.i.i.i.i.i12 = icmp eq i64 %i.cr, -1
  br i1 %.not.i.i.i.i.i.i.i12, label %.critedge.i.i.i.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs_NtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtBX_9operation9Operation22get_upsert_config_keys0INtB7_5FnMutTRNtNtBX_10update_map14UpdateMapEntryEE8call_mutBZ_.exit.i.i.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs_NtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtBX_9operation9Operation22get_upsert_config_keys0INtB7_5FnMutTRNtNtBX_10update_map14UpdateMapEntryEE8call_mutBZ_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i11
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.co)
          to label %.noexc6.i17 unwind label %bb.ad, !noalias !57210
end_hunk_3
begin_hunk_4_@_RNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map24translate_config_updates:bb.a
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store i64 0, ptr %i.h, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60726)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !60726, !noundef !99 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = load ptr, ptr %1, align 8, !alias.scope !60726, !nonnull !99, !noundef !99 ; 3 uses
  %.val3.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !60727
  %i.m = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.n = bitcast <16 x i1> %i.m to i16
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.b

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j, %bb.i, %bb.f, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.m ], [ %i.aq, %bb.f ], [ %i.aw, %bb.j ], [ %i.aw, %bb.i ], [ %lpad.loopexit.split-lp45, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.f) #81
  resume { ptr, i32 } %.pn

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %.loopexit22
  %lpad.loopexit.split-lp45 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %i.q = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph ], [ %i.bc, %bb.n ]
  %i.r = phi i64 [ 0, %.lr.ph ], [ %i.be, %bb.n ] ; 3 uses
  %.sroa.013.027 = phi ptr [ %i.l, %.lr.ph ], [ %.sroa.013.1, %bb.n ] ; 2 uses
  %.sroa.614.026 = phi ptr [ %i.o, %.lr.ph ], [ %.sroa.614.1, %bb.n ] ; 2 uses
  %.sroa.10.025 = phi i16 [ %i.n, %.lr.ph ], [ %i.aa, %bb.n ] ; 2 uses
  %.sroa.14.024 = phi i64 [ %i.j, %.lr.ph ], [ %i.ad, %bb.n ]
  %.not12.i.i = icmp eq i16 %.sroa.10.025, 0
  br i1 %.not12.i.i, label %.lr.ph.i.i, label %.loopexit22

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %i.s = phi ptr [ %i.w, %.lr.ph.i.i ], [ %.sroa.614.026, %bb.b ] ; 2 uses
  %i.t = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.sroa.013.027, %bb.b ]
  %.val10.i.i = load <16 x i8>, ptr %i.s, align 16, !noalias !60728
  %i.u = icmp sgt <16 x i8> %.val10.i.i, splat (i8 -1)
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -768 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.u to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.loopexit22

.loopexit22:                                      ; preds = %.lr.ph.i.i, %bb.b
  %.sroa.614.1 = phi ptr [ %.sroa.614.026, %bb.b ], [ %i.w, %.lr.ph.i.i ]
  %.sroa.013.1 = phi ptr [ %.sroa.013.027, %bb.b ], [ %i.v, %.lr.ph.i.i ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.sroa.10.025, %bb.b ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.x = add i16 %.lcssa.i.i, -1
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = and i16 %i.x, %.lcssa.i.i
  %i.ab = sub nsw i64 0, %i.z
  %i.ac = getelementptr inbounds [48 x i8], ptr %.sroa.013.1, i64 %i.ab ; 2 uses
  %i.ad = add i64 %.sroa.14.024, -1               ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.n, %bb.a
  %i.af = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.bc, %bb.n ]
  %i.ag = phi i64 [ 0, %bb.a ], [ %i.be, %bb.n ]
  %.idx = mul nuw nsw i64 %3, 24
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.ai = icmp eq i64 %3, 0
  br i1 %i.ai, label %._crit_edge31, label %.lr.ph30

.lr.ph30:                                         ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph30, %bb.g
  %i.ak = phi ptr [ %i.af, %.lr.ph30 ], [ %i.ar, %bb.g ]
  %i.al = phi i64 [ %i.ag, %.lr.ph30 ], [ %i.at, %bb.g ] ; 3 uses
  %.sroa.03.028 = phi ptr [ %2, %.lr.ph30 ], [ %i.am, %bb.g ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.03.028, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.03.028)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge31:                                    ; preds = %bb.g, %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.an, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i64 -1, ptr %i.aj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60729)
  %i.ao = load i64, ptr %i.f, align 8, !range !103, !alias.scope !60729, !noundef !99
  %i.ap = icmp eq i64 %i.al, %i.ao
  br i1 %i.ap, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %._crit_edge35 unwind label %bb.f, !noalias !60730

._crit_edge35:                                    ; preds = %bb.e
  %.pre36 = load ptr, ptr %i.g, align 8, !alias.scope !60729
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.b) #81, !noalias !60729
  br label %.body

bb.g:                                             ; preds = %._crit_edge35, %bb.d
  %i.ar = phi ptr [ %.pre36, %._crit_edge35 ], [ %i.ak, %bb.d ] ; 2 uses
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %i.ar, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !60729
  %i.at = add i64 %i.al, 1                        ; 2 uses
  store i64 %i.at, ptr %i.h, align 8, !alias.scope !60729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.au = icmp eq ptr %i.am, %i.ah
  br i1 %i.au, label %._crit_edge31, label %bb.c

bb.h:                                             ; preds = %.loopexit22
  %i.av = getelementptr inbounds i8, ptr %i.ac, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60731)
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !60731 ; 2 uses
  %i.ax = icmp eq i64 %.val.i, 0
  br i1 %i.ax, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i = load ptr, ptr %i.ay, align 8, !alias.scope !60731, !nonnull !99, !noundef !99
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !60731
  br label %.body

bb.k:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60732)
  %i.az = load i64, ptr %i.f, align 8, !range !103, !alias.scope !60732, !noundef !99
  %i.ba = icmp eq i64 %i.r, %i.az
  br i1 %i.ba, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %._crit_edge34 unwind label %bb.m, !noalias !60733

._crit_edge34:                                    ; preds = %bb.l
  %.pre = load ptr, ptr %i.g, align 8, !alias.scope !60732
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.e) #81, !noalias !60732
  br label %.body

bb.n:                                             ; preds = %._crit_edge34, %bb.k
  %i.bc = phi ptr [ %.pre, %._crit_edge34 ], [ %i.q, %bb.k ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [48 x i8], ptr %i.bc, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !60732
  %i.be = add i64 %i.r, 1                         ; 3 uses
  store i64 %i.be, ptr %i.h, align 8, !alias.scope !60732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bf = icmp eq i64 %i.ad, 0
  br i1 %i.bf, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !60786 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.48.i.i.i = alloca [40 x i8], align 8     ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.7.i.i.i = alloca [40 x i8], align 8      ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60787)
  %i.g = load ptr, ptr %1, align 8, !alias.scope !60787, !nonnull !99, !noundef !99 ; 4 uses
  %.val3.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !60788
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !60787, !noundef !99 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !60789
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtB6_6string6StringB4o_ENCNvB13_33translate_schema_metadata_updates0EE9from_iterB17_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq i16 %i.l, 0
  br i1 %.not12.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.n = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.m, %bb.b ] ; 2 uses
  %i.o = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.g, %bb.b ]
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.n, align 16, !noalias !60790
  %i.p = icmp sgt <16 x i8> %.val10.i.i.i.i.i, splat (i8 -1)
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -768 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.p to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i

._crit_edge19.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  %.sroa.67.0 = phi ptr [ %i.m, %bb.b ], [ %i.r, %.lr.ph.i.i.i.i.i ]
  %.sroa.010.0.copyload.i = phi ptr [ %i.g, %bb.b ], [ %i.q, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %i.l, %bb.b ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.s = add i16 %.lcssa.i.i.i.i.i, -1
  %i.t = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.u = zext nneg i16 %i.t to i64
  %i.v = and i16 %i.s, %.lcssa.i.i.i.i.i
  %i.w = sub nsw i64 0, %i.u
  %i.x = getelementptr inbounds [48 x i8], ptr %.sroa.010.0.copyload.i, i64 %i.w ; 2 uses
  %i.y = add i64 %i.i, -1                         ; 3 uses
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -48
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !60791
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z), !noalias !60792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !60791
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa)
          to label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i unwind label %bb.c, !noalias !60793

bb.c:                                             ; preds = %._crit_edge19.i.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60794)
  %.val.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !60794, !noalias !60791 ; 2 uses
  %i.ac = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ac, label %common.resume.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !60794, !noalias !60791, !nonnull !99, !noundef !99
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !60795
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.g, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i, %.body.i, %bb.d, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.ab, %bb.c ], [ %i.ab, %bb.d ], [ %eh.lpad-body.i, %.body.i ], [ %i.ae, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i ], [ %i.ae, %bb.g ]
  resume { ptr, i32 } %common.resume.op.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i: ; preds = %._crit_edge19.i.i.i.i.i
  %.sroa.417.i.sroa.5.16.copyload = load i64, ptr %i.d, align 8, !noalias !60789 ; 3 uses
  %.sroa.417.i.sroa.7.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.417.i.sroa.7.16.copyload = load ptr, ptr %.sroa.417.i.sroa.7.16..sroa_idx, align 8, !noalias !60789 ; 3 uses
  %.sroa.417.i.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.417.i.sroa.8.16.copyload = load i64, ptr %.sroa.417.i.sroa.8.16..sroa_idx, align 8, !noalias !60789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !60791
  %.sroa.016.0.copyload.i = load i64, ptr %i.e, align 8, !noalias !60796 ; 4 uses
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.417.i.sroa.0.0.copyload = load ptr, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !60789 ; 3 uses
  %.sroa.417.i.sroa.4.0..sroa.417.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.417.i.sroa.4.0.copyload = load i64, ptr %.sroa.417.i.sroa.4.0..sroa.417.0..sroa_idx.i.sroa_idx, align 8, !noalias !60789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !60791
  %.not.i = icmp eq i64 %.sroa.016.0.copyload.i, -1
  br i1 %.not.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtB6_6string6StringB4o_ENCNvB13_33translate_schema_metadata_updates0EE9from_iterB17_.exit, label %bb.h

bb.e:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = icmp eq i64 %.sroa.016.0.copyload.i, 0
  br i1 %i.af, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.417.i.sroa.0.0.copyload) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.417.i.sroa.0.0.copyload, i64 noundef %.sroa.016.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !60797
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.f, %bb.e
  %i.ag = icmp sgt i64 %.sroa.417.i.sroa.5.16.copyload, 0
  br i1 %i.ag, label %bb.g, label %common.resume.i

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.417.i.sroa.7.16.copyload) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.417.i.sroa.7.16.copyload, i64 noundef %.sroa.417.i.sroa.5.16.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !60798
  br label %common.resume.i

bb.h:                                             ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.i, i64 4) ; 3 uses
  %i.ah = mul i64 %.sroa.0.0.i.i, 48              ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.y, 192153584101141161
  br i1 %or.cond.i.i.i, label %bb.k, label %bb.i, !prof !100

bb.i:                                             ; preds = %bb.h
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !60799
  %i.aj = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ah, i64 noundef range(i64 1, 9) 8) #76, !noalias !60799 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.h
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.j ], [ 0, %bb.h ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ah) #80
          to label %.noexc.i unwind label %bb.e, !noalias !60789

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.i ], [ %i.aj, %bb.j ] ; 9 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.i ], [ %.sroa.0.0.i.i, %bb.j ] ; 3 uses
  %i.al = icmp ule i64 %.sroa.0.0.i.i, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.al)
  store i64 %.sroa.016.0.copyload.i, ptr %.sroa.10.0.i.i, align 8, !noalias !60789
  %.sroa.514.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store ptr %.sroa.417.i.sroa.0.0.copyload, ptr %.sroa.514.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !60789
  %.sroa.7.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 16
  store i64 %.sroa.417.i.sroa.4.0.copyload, ptr %.sroa.7.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !60789
  %.sroa.715.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 24
  store i64 %.sroa.417.i.sroa.5.16.copyload, ptr %.sroa.715.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !60789
  %.sroa.816.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 32
  store ptr %.sroa.417.i.sroa.7.16.copyload, ptr %.sroa.816.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !60789
  %.sroa.917.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 40
  store i64 %.sroa.417.i.sroa.8.16.copyload, ptr %.sroa.917.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !60789
  store i64 %.sroa.4.0.i.i, ptr %i.f, align 8, !noalias !60789
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !60789
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !60789
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60801)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.am = icmp eq i64 %i.y, 0
  br i1 %i.am, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l
  %.sroa.48.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.48.i.i.i, i64 16
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.m

bb.m:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i, %.lr.ph.i.i.i
  %i.an = phi ptr [ %.sroa.10.0.i.i, %.lr.ph.i.i.i ], [ %i.bh, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i ] ; 2 uses
  %i.ao = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.bj, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i ] ; 5 uses
  %.lcssa21.i.i.i = phi ptr [ %.sroa.67.0, %.lr.ph.i.i.i ], [ %.lcssa20.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i ] ; 2 uses
  %i.ap = phi i16 [ %i.v, %.lr.ph.i.i.i ], [ %i.ay, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i ] ; 2 uses
  %.val1217.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i ], [ %i.bb, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i ] ; 2 uses
  %.lcssa111516.i.i.i = phi ptr [ %.sroa.010.0.copyload.i, %.lr.ph.i.i.i ], [ %.lcssa1114.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.i
  %i.aq = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa21.i.i.i, %bb.m ] ; 2 uses
  %i.ar = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa111516.i.i.i, %bb.m ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.aq, align 16, !noalias !60802
  %i.as = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i, splat (i8 -1)
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -768 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.as to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i

._crit_edge19.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.m
  %.lcssa20.i.i.i = phi ptr [ %.lcssa21.i.i.i, %bb.m ], [ %i.au, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa1114.i.i.i = phi ptr [ %.lcssa111516.i.i.i, %bb.m ], [ %i.at, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.ap, %bb.m ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.av = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = and i16 %i.av, %.lcssa.i.i.i.i.i.i.i
  %i.az = sub nsw i64 0, %i.ax
  %i.ba = getelementptr inbounds [48 x i8], ptr %.lcssa1114.i.i.i, i64 %i.az ; 2 uses
  %i.bb = add nsw i64 %.val1217.i.i.i, -1         ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 -48
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.48.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !60803
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bc)
          to label %.noexc6.i unwind label %bb.s, !noalias !60804

.noexc6.i:                                        ; preds = %._crit_edge19.i.i.i.i.i.i.i
  %i.bd = getelementptr inbounds i8, ptr %i.ba, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !60803
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bd)
          to label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i.i.i unwind label %bb.n, !noalias !60805

bb.n:                                             ; preds = %.noexc6.i
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60806)
  %.val.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !60806, !noalias !60803 ; 2 uses
  %i.bf = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.bf, label %.body.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val1.i.i.i.i.i.i = load ptr, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !alias.scope !60806, !noalias !60803, !nonnull !99, !noundef !99
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !60807
  br label %.body.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i.i.i: ; preds = %.noexc6.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.48.24..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !60808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !60803
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.b, align 8, !noalias !60808 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !60808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !60803
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.48.i.i.i, i64 40, i1 false), !noalias !60809
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.48.i.i.i)
  %.not.i.i5.i = icmp eq i64 %.sroa.07.0.copyload.i.i.i, -1
  %.sroa.0.0.copyload1.pre.pre29 = load i64, ptr %i.f, align 8, !noalias !60810 ; 2 uses
  br i1 %.not.i.i5.i, label %.loopexit.i, label %bb.p

bb.p:                                             ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !60811
  store i64 %.sroa.07.0.copyload.i.i.i, ptr %i.c, align 8, !noalias !60811
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i.i, i64 40, i1 false), !noalias !60811
  %i.bg = icmp eq i64 %i.ao, %.sroa.0.0.copyload1.pre.pre29
  br i1 %i.bg, label %bb.r, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i_crit_edge.i, %bb.p
  %i.bh = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i_crit_edge.i ], [ %i.an, %bb.p ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [48 x i8], ptr %i.bh, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !60811
  %i.bj = add nuw nsw i64 %i.ao, 1                ; 3 uses
  store i64 %i.bj, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !60812, !noalias !60789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !60811
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.bk = icmp eq i64 %i.bb, 0
  br i1 %i.bk, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i..loopexit.i.loopexit_crit_edge, label %bb.m

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i..loopexit.i.loopexit_crit_edge: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i
  %.sroa.0.0.copyload1.pre.pre = load i64, ptr %i.f, align 8, !noalias !60810
  br label %.loopexit.i

bb.q:                                             ; preds = %bb.r
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.c) #81, !noalias !60811
  br label %.body.i

bb.r:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.ao, i64 noundef %.val1217.i.i.i, i64 noundef 8, i64 noundef 48)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i_crit_edge.i unwind label %bb.q, !noalias !60813

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i_crit_edge.i: ; preds = %bb.r
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !60812, !noalias !60789
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i

bb.s:                                             ; preds = %._crit_edge19.i.i.i.i.i.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.s, %bb.q, %bb.o, %bb.n
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bm, %bb.s ], [ %i.bl, %bb.q ], [ %i.be, %bb.o ], [ %i.be, %bb.n ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.f) #81, !noalias !60789
  br label %common.resume.i

.loopexit.i:                                      ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i..loopexit.i.loopexit_crit_edge, %bb.l
  %.sroa.6.0.copyload5 = phi i64 [ 1, %bb.l ], [ %i.bj, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i..loopexit.i.loopexit_crit_edge ], [ %i.ao, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i.i.i ]
  %.sroa.5.0.copyload3 = phi ptr [ %.sroa.10.0.i.i, %bb.l ], [ %i.bh, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i..loopexit.i.loopexit_crit_edge ], [ %i.an, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i.i.i ]
  %.sroa.0.0.copyload1 = phi i64 [ %.sroa.4.0.i.i, %bb.l ], [ %.sroa.0.0.copyload1.pre.pre, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i..loopexit.i.loopexit_crit_edge ], [ %.sroa.0.0.copyload1.pre.pre29, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtB6_6string6StringB4o_ENCNvB13_33translate_schema_metadata_updates0EE9from_iterB17_.exit

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtB6_6string6StringB4o_ENCNvB13_33translate_schema_metadata_updates0EE9from_iterB17_.exit: ; preds = %bb.a, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i, %.loopexit.i
  %.sroa.6.0 = phi i64 [ %.sroa.6.0.copyload5, %.loopexit.i ], [ 0, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i ], [ 0, %bb.a ]
  %.sroa.5.0 = phi ptr [ %.sroa.5.0.copyload3, %.loopexit.i ], [ inttoptr (i64 8 to ptr), %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i ], [ inttoptr (i64 8 to ptr), %bb.a ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload1, %.loopexit.i ], [ 0, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !60789
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.bn, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs9KQ7US1M400_11lance_table11transaction11row_version31resolve_update_version_metadata(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 38430716820228233) %2, ptr noalias noundef nonnull align 8 %3, i64 noundef range(i64 0, 38430716820228233) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !61306 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [96 x i8], align 8                ; 16 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 10 uses
  %i.g = alloca [64 x i8], align 8                ; 12 uses
  %i.h = alloca [24 x i8], align 8                ; 12 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i.i.i = alloca i64, align 8            ; 4 uses
  %.sroa.7.i.i.i = alloca i64, align 8            ; 3 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [72 x i8], align 8                ; 10 uses
  %.sroa.5.i = alloca i64, align 8                ; 4 uses
  %.sroa.7.i = alloca i64, align 8                ; 3 uses
  %i.n = alloca [24 x i8], align 8                ; 10 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.8.i.i.i.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 5 uses
  %i.r = alloca [48 x i8], align 8                ; 11 uses
  %i.s = alloca [48 x i8], align 8                ; 14 uses
  %i.t = alloca [8 x i8], align 8                 ; 3 uses
  %i.u = alloca [48 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [56 x i8], align 8                ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.7.i.i.i.i.i.i.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %i.y = alloca [48 x i8], align 8                ; 12 uses
  %i.z = alloca [40 x i8], align 8                ; 7 uses
  %i.aa = alloca [56 x i8], align 8               ; 8 uses
  %i.ab = alloca [56 x i8], align 8               ; 6 uses
  %.sroa.5509 = alloca [24 x i8], align 8         ; 4 uses
  %i.ac = alloca [40 x i8], align 8               ; 5 uses
  %.sroa.636 = alloca [32 x i8], align 8          ; 5 uses
  %i.ad = alloca [40 x i8], align 8               ; 10 uses
  %i.ae = alloca [40 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 8 uses
  %i.ag = alloca [72 x i8], align 8               ; 14 uses
  %i.ah = alloca [24 x i8], align 8               ; 7 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [56 x i8], align 8               ; 8 uses
  %.sroa.9 = alloca [16 x i8], align 8            ; 5 uses
  %i.ak = alloca [48 x i8], align 8               ; 8 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [56 x i8], align 8               ; 10 uses
  %i.an = alloca [24 x i8], align 8               ; 7 uses
  %i.ao = alloca [24 x i8], align 8               ; 10 uses
  %i.ap = alloca [56 x i8], align 8               ; 10 uses
  %i.aq = alloca [48 x i8], align 8               ; 20 uses
  %i.ar = alloca [80 x i8], align 8               ; 8 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  store i64 %5, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %.idx = mul nuw nsw i64 %4, 240
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 %.idx ; 2 uses
  store ptr null, ptr %i.ar, align 8
  %.sroa.041.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store ptr null, ptr %.sroa.041.sroa.5.0..sroa_idx, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  store ptr %3, ptr %.sroa.542.0..sroa_idx, align 8
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  store ptr %i.at, ptr %.sroa.643.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !61307
  %i.au = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 17 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 8 uses
  %i.aw = load i8, ptr %i.av, align 8, !range !108, !noalias !61308, !noundef !99
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9KQ7US1M400_11lance_table.exit_crit_edge.i.i.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9KQ7US1M400_11lance_table.exit.i.i.i.i, !prof !111

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9KQ7US1M400_11lance_table.exit_crit_edge.i.i.i.i: ; preds = %bb.a
  %.pre.i.i.i.i = load i64, ptr %i.au, align 8, !noalias !61309
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !61309
  br label %bb.c

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9KQ7US1M400_11lance_table.exit.i.i.i.i: ; preds = %bb.a
  %i.ay = invoke { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc.i unwind label %bb.n, !noalias !61310 ; 2 uses

.noexc.i:                                         ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9KQ7US1M400_11lance_table.exit.i.i.i.i
  %i.az = extractvalue { i64, i64 } %i.ay, 0
  %i.ba = extractvalue { i64, i64 } %i.ay, 1      ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !noalias !61310
  store i8 1, ptr %i.av, align 8, !noalias !61310
  br label %bb.c

bb.b:                                             ; preds = %_RNCNvNtNtCs9KQ7US1M400_11lance_table11transaction11row_version31resolve_update_version_metadata0B7_.exit.thread6.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f
end_hunk_4
begin_hunk_5_@_RNvNtNtCs9KQ7US1M400_11lance_table11transaction11row_version31resolve_update_version_metadata:bb.a
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.rn = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.phi.trans.insert77.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ro = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.rp = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %.phi.trans.insert80.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.phi.trans.insert82.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.rq = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.rr = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  %.sroa.6455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.7458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.rv = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.0.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.4.0..sroa_idx.i296 = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.rz = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph752, %bb.ds
  %.sroa.011.0750 = phi ptr [ %3, %.lr.ph752 ], [ %i.sb, %bb.ds ] ; 19 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.011.0750, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.sc = getelementptr inbounds nuw i8, ptr %.sroa.011.0750, i64 112
  %i.sd = load i64, ptr %i.sc, align 8, !range !118, !noundef !99
  switch i64 %i.sd, label %bb.ea [
    i64 -2, label %bb.bm
    i64 -1, label %bb.bj
  ]

._crit_edge753:                                   ; preds = %bb.ds, %.loopexit605
  store i8 -1, ptr %0, align 8
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyNtNtNtCs9KQ7US1M400_11lance_table6rowids7version25RowDatasetVersionSequenceEEB1D_(ptr noalias noundef align 8 dereferenceable(48) %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.se = icmp eq i64 %.sroa.8.0.copyload, 0
  br i1 %i.se, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetyEECs9KQ7US1M400_11lance_table.exit306, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i305

bb.bh:                                            ; preds = %.body253, %bb.eo, %bb.ev, %bb.bi
  %.pn95.pn = phi { ptr, i32 } [ %.pn95.ph, %bb.ev ], [ %i.aag, %bb.eo ], [ %i.sf, %bb.bi ], [ %.pn92, %.body253 ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyNtNtNtCs9KQ7US1M400_11lance_table6rowids7version25RowDatasetVersionSequenceEEB1D_(ptr noalias noundef align 8 dereferenceable(48) %i.ak) #81
  br label %.body230

bb.bi:                                            ; preds = %bb.eb, %bb.bl, %bb.bm, %bb.bj
  %i.sf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bj:                                            ; preds = %bb.bg
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.011.0750, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %.val124 = load ptr, ptr %i.sg, align 8, !nonnull !99, !noundef !99 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.val124, i64 24
  %i.si = load ptr, ptr %i.sh, align 8, !nonnull !99, !noundef !99
  %i.sj = getelementptr inbounds nuw i8, ptr %.val124, i64 32
  %i.sk = load i64, ptr %i.sj, align 8, !noundef !99
  invoke void @_RNvNtNtCs9KQ7US1M400_11lance_table6rowids5serde12read_row_ids(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.si, i64 noundef %i.sk)
          to label %bb.bk unwind label %bb.bi

bb.bk:                                            ; preds = %bb.bj
  %i.sl = load i8, ptr %i.aj, align 8, !range !141, !noundef !99
  %.not84 = icmp eq i8 %i.sl, -1
  br i1 %.not84, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEB11_.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.aj)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEB11_.exit.thread unwind label %bb.bi

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEB11_.exit.thread: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.bm

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEB11_.exit: ; preds = %bb.bk
  %.sroa.050.0.copyload = load i64, ptr %i.rg, align 8 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.451.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %.not86 = icmp eq i64 %.sroa.050.0.copyload, -1
  br i1 %.not86, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEB11_.exit.thread, %bb.ec, %bb.ea, %bb.bg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEB11_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.sm = load i64, ptr %i.as, align 8, !noundef !99
  invoke void @_RNvNtNtCs9KQ7US1M400_11lance_table6rowids7version18build_version_meta(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.sroa.011.0750, i64 noundef %i.sm)
          to label %bb.ed unwind label %bb.bi

.body253:                                         ; preds = %.body259.thread, %.body259, %.body.i243, %bb.co, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bn
  %.pn92 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.sn, %bb.bn ], [ %eh.lpad-body.i244, %.body.i243 ], [ %eh.lpad-body.i244, %bb.co ], [ %.pn90, %.body259 ], [ %.pn90, %.body259.thread ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEBF_(ptr noalias noundef align 8 dereferenceable(24) %i.ah) #81
  br label %bb.bh

bb.bn:                                            ; preds = %bb.bw
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %.body253

bb.bo:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEB11_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 %.sroa.050.0.copyload, ptr %i.ah, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %.val137 = load ptr, ptr %.sroa.9.0..sroa_idx15, align 8, !nonnull !99, !noundef !99 ; 2 uses
  %.val138 = load i64, ptr %i.rh, align 8, !noundef !99
  %i.so = getelementptr inbounds nuw [56 x i8], ptr %.val137, i64 %.val138
  store ptr %.val137, ptr %i.ri, align 8
  store ptr %i.so, ptr %.sroa.4448.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.5449.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.6451.0..sroa_idx, align 8
  store ptr %i.aq, ptr %i.ag, align 8
  store ptr %i.ak, ptr %.sroa.421.0..sroa_idx, align 8
  store ptr %i.as, ptr %.sroa.522.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !61431)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !61432
  %i.sp = invoke fastcc { i64, i64 } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1O_NtB1O_13RowIdSequence4iter0ENCNvNtNtB1Q_11transaction11row_version31resolve_update_version_metadatas5_0ENtNtB3n_8iterator8Iterator4nextB1Q_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ag)
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !61433 ; 2 uses

bb.bp:                                            ; preds = %bb.bo
  %i.sq = extractvalue { i64, i64 } %i.sp, 0
  %i.sr = extractvalue { i64, i64 } %i.sp, 1
  %i.ss = trunc nuw i64 %i.sq to i1
  br i1 %i.ss, label %bb.bq, label %bb.bw

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !61434)
  call void @llvm.experimental.noalias.scope.decl(metadata !61435)
  call void @llvm.experimental.noalias.scope.decl(metadata !61436)
  call void @llvm.experimental.noalias.scope.decl(metadata !61437)
  call void @llvm.experimental.noalias.scope.decl(metadata !61438)
  call void @llvm.experimental.noalias.scope.decl(metadata !61439)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !61440
  %i.st = load ptr, ptr %.sroa.5449.0..sroa_idx, align 8, !alias.scope !61441, !noundef !99 ; 2 uses
  %.not.i.i.i.i237 = icmp eq ptr %i.st, null
  call void @llvm.experimental.noalias.scope.decl(metadata !61442)
  br i1 %.not.i.i.i.i237, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.val4.i.i.i.i.i = load ptr, ptr %i.rj, align 8, !alias.scope !61443, !nonnull !99, !align !104, !noundef !99
  %i.su = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i, i64 32
  %i.sv = load ptr, ptr %i.su, align 8, !invariant.load !99, !noalias !61444, !nonnull !99
  invoke void %i.sv(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noundef nonnull %i.st)
          to label %.noexc.i238 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !61445, !inline_history !61127

.noexc.i238:                                      ; preds = %bb.br
  %.pre.i.i.i.i239 = load i64, ptr %i.l, align 8, !noalias !61440
  %.pre76.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i240, align 8, !range !107, !noalias !61440
  %.pre78.i.i.i.i = load i64, ptr %.phi.trans.insert77.i.i.i.i, align 8, !noalias !61440
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i: ; preds = %.noexc.i238, %bb.bq
  %i.sw = phi i64 [ %.pre78.i.i.i.i, %.noexc.i238 ], [ 0, %bb.bq ]
  %i.sx = phi i64 [ %.pre76.i.i.i.i, %.noexc.i238 ], [ 1, %bb.bq ] ; 2 uses
  %i.sy = phi i64 [ %.pre.i.i.i.i239, %.noexc.i238 ], [ 0, %bb.bq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !61440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !61440
  %i.sz = load ptr, ptr %.sroa.6451.0..sroa_idx, align 8, !alias.scope !61441, !noundef !99 ; 2 uses
  %.not55.i.i.i.i = icmp eq ptr %i.sz, null
  call void @llvm.experimental.noalias.scope.decl(metadata !61446)
  br i1 %.not55.i.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i
  %.val4.i65.i.i.i.i = load ptr, ptr %i.rk, align 8, !alias.scope !61447, !nonnull !99, !align !104, !noundef !99
  %i.ta = getelementptr inbounds nuw i8, ptr %.val4.i65.i.i.i.i, i64 32
  %i.tb = load ptr, ptr %i.ta, align 8, !invariant.load !99, !noalias !61448, !nonnull !99
  invoke void %i.tb(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull %i.sz)
          to label %.noexc8.i241 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !61449, !inline_history !61127

.noexc8.i241:                                     ; preds = %bb.bs
  %.pre79.i.i.i.i = load i64, ptr %i.k, align 8, !noalias !61440
  %.pre81.i.i.i.i = load i64, ptr %.phi.trans.insert80.i.i.i.i, align 8, !range !107, !noalias !61440
  %.pre83.i.i.i.i = load i64, ptr %.phi.trans.insert82.i.i.i.i, align 8, !noalias !61440
  %i.tc = call i64 @llvm.uadd.sat.i64(i64 %i.sy, i64 %.pre79.i.i.i.i)
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i: ; preds = %.noexc8.i241, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i
  %i.td = phi i64 [ %.pre83.i.i.i.i, %.noexc8.i241 ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i ]
  %i.te = phi i64 [ %.pre81.i.i.i.i, %.noexc8.i241 ], [ 1, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i ] ; 2 uses
  %i.tf = phi i64 [ %i.tc, %.noexc8.i241 ], [ %i.sy, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !61440
  %i.tg = load ptr, ptr %i.ri, align 8, !alias.scope !61441, !noundef !99 ; 2 uses
  %.not56.i.i.i.i = icmp eq ptr %i.tg, null
  br i1 %.not56.i.i.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i
  %.val63.i.i.i.i = load ptr, ptr %.sroa.4448.0..sroa_idx, align 8, !alias.scope !61441, !nonnull !99, !noundef !99
  %i.th = icmp eq ptr %.val63.i.i.i.i, %i.tg
  %i.ti = trunc nuw i64 %i.sx to i1
  %i.tj = trunc nuw i64 %i.te to i1
  %op.rdx1097 = select i1 %i.th, i1 %i.ti, i1 false
  %op.rdx1098 = select i1 %op.rdx1097, i1 %i.tj, i1 false
  br i1 %op.rdx1098, label %bb.bv, label %bb.bx

bb.bu:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i
  %i.tk = and i64 %i.te, %i.sx
  %or.cond57.not.i.i.i.i = icmp eq i64 %i.tk, 0
  br i1 %or.cond57.not.i.i.i.i, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.tl = add i64 %i.td, %i.sw
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !61432
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1L_NtB1L_13RowIdSequence4iter0EEB1N_(ptr noalias noundef readonly align 8 dereferenceable(48) %i.ri)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecyEINtB2_18SpecFromIterNestedyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1z_7flatten7FlatMapINtNtNtB1D_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB6_5boxed3BoxDNtNtNtB1B_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B3c_NtB3c_13RowIdSequence4iter0ENCNvNtNtB3e_11transaction11row_version31resolve_update_version_metadatas5_0EE9from_iterB3e_.exit.thread unwind label %bb.bn, !noalias !61433

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecyEINtB2_18SpecFromIterNestedyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1z_7flatten7FlatMapINtNtNtB1D_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB6_5boxed3BoxDNtNtNtB1B_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B3c_NtB3c_13RowIdSequence4iter0ENCNvNtNtB3e_11transaction11row_version31resolve_update_version_metadatas5_0EE9from_iterB3e_.exit.thread: ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %_RNvNtNtCs9KQ7US1M400_11lance_table11transaction11row_version19encode_version_runs.exit

bb.bx:                                            ; preds = %bb.bv, %bb.bu, %bb.bt
  %.sink87.i.i.i.sroa.phi.i = phi ptr [ %.sroa.7.i, %bb.bv ], [ %.sroa.5.i, %bb.bu ], [ %.sroa.5.i, %bb.bt ]
  %.sink.i.i.i.i = phi i64 [ %i.tl, %bb.bv ], [ 0, %bb.bu ], [ 0, %bb.bt ]
  store i64 %.sink.i.i.i.i, ptr %.sink87.i.i.i.sroa.phi.i, align 8, !alias.scope !61450, !noalias !61432
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.tm = call i64 @llvm.uadd.sat.i64(i64 %i.tf, i64 1)
  %.sroa.0.0.i.i = call noundef i64 @llvm.umax.i64(i64 %i.tm, i64 4) ; 3 uses
  %i.tn = shl i64 %.sroa.0.0.i.i, 3               ; 4 uses
  %i.to = icmp ugt i64 %i.tf, 2305843009213693950
  %.not.i.i.i = icmp ugt i64 %i.tn, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.to, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.bz, label %6, !prof !100

6:                                                ; preds = %bb.bx
  %7 = icmp eq i64 %i.tn, 0
  br i1 %7, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %6
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !61451
  %i.tp = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.tn, i64 noundef range(i64 1, 9) 8) #76, !noalias !61451 ; 2 uses
  %i.tq = icmp eq ptr %i.tp, null
  br i1 %i.tq, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.by ], [ 0, %bb.bx ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.tn) #80
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !61432

.noexc9.i:                                        ; preds = %bb.bz
  unreachable

bb.ca:                                            ; preds = %bb.by, %6
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %6 ], [ %i.tp, %bb.by ] ; 3 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %6 ], [ %.sroa.0.0.i.i, %bb.by ] ; 2 uses
  %8 = icmp ule i64 %.sroa.0.0.i.i, %.sroa.4.0.i.i
  call void @llvm.assume(i1 %8)
  store i64 %i.sr, ptr %.sroa.10.0.i.i, align 8, !noalias !61432
  store i64 %.sroa.4.0.i.i, ptr %i.n, align 8, !noalias !61432
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i242, align 8, !noalias !61432
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !61432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !61432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.ag, i64 72, i1 false), !noalias !61433
  call void @llvm.experimental.noalias.scope.decl(metadata !61452)
  call void @llvm.experimental.noalias.scope.decl(metadata !61453)
  call void @llvm.experimental.noalias.scope.decl(metadata !61454)
  call void @llvm.experimental.noalias.scope.decl(metadata !61455)
  br label %bb.cb

bb.cb:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i, %bb.ca
  %i.tr = phi ptr [ %i.us, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ], [ %.sroa.10.0.i.i, %bb.ca ]
  %.sroa.13.0.copyload = phi i64 [ %i.uu, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ], [ 1, %bb.ca ] ; 9 uses
  %i.ts = invoke fastcc { i64, i64 } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1O_NtB1O_13RowIdSequence4iter0ENCNvNtNtB1Q_11transaction11row_version31resolve_update_version_metadatas5_0ENtNtB3n_8iterator8Iterator4nextB1Q_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.m)
          to label %bb.cc unwind label %bb.ck, !noalias !61456 ; 2 uses

bb.cc:                                            ; preds = %bb.cb
  %i.tt = extractvalue { i64, i64 } %i.ts, 0
  %i.tu = extractvalue { i64, i64 } %i.ts, 1
  %i.tv = trunc nuw i64 %i.tt to i1
  br i1 %i.tv, label %bb.cd, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB15_7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB8_5boxed3BoxDNtNtNtB17_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B2I_NtB2I_13RowIdSequence4iter0ENCNvNtNtB2K_11transaction11row_version31resolve_update_version_metadatas5_0EEB2K_.exit.i.i

bb.cd:                                            ; preds = %bb.cc
  %i.tw = icmp samesign ult i64 %.sroa.13.0.copyload, 1152921504606846976
  call void @llvm.assume(i1 %i.tw)
  %i.tx = load i64, ptr %i.n, align 8, !range !103, !alias.scope !61457, !noalias !61432, !noundef !99
  %i.ty = icmp eq i64 %.sroa.13.0.copyload, %i.tx
  br i1 %i.ty, label %bb.ce, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !61458)
  call void @llvm.experimental.noalias.scope.decl(metadata !61459)
  call void @llvm.experimental.noalias.scope.decl(metadata !61460)
  call void @llvm.experimental.noalias.scope.decl(metadata !61461)
  call void @llvm.experimental.noalias.scope.decl(metadata !61462)
  call void @llvm.experimental.noalias.scope.decl(metadata !61463)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !61464
  %i.tz = load ptr, ptr %i.rm, align 8, !alias.scope !61465, !noalias !61432, !noundef !99 ; 2 uses
  %.not.i.i.i.i.i.i247 = icmp eq ptr %i.tz, null
  call void @llvm.experimental.noalias.scope.decl(metadata !61466)
  br i1 %.not.i.i.i.i.i.i247, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %.val4.i.i.i.i.i.i.i248 = load ptr, ptr %i.rn, align 8, !alias.scope !61467, !noalias !61432, !nonnull !99, !align !104, !noundef !99
  %i.ua = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i.i.i248, i64 32
  %i.ub = load ptr, ptr %i.ua, align 8, !invariant.load !99, !noalias !61468, !nonnull !99
  invoke void %i.ub(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull %i.tz)
          to label %.noexc.i.i.i249 unwind label %bb.ck, !noalias !61469, !inline_history !61127

.noexc.i.i.i249:                                  ; preds = %bb.cf
  %.pre.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !noalias !61464
  %.pre76.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !range !107, !noalias !61464
  %.pre78.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert77.i.i.i.i.i.i, align 8, !noalias !61464
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i.i249, %bb.ce
  %i.uc = phi i64 [ %.pre78.i.i.i.i.i.i, %.noexc.i.i.i249 ], [ 0, %bb.ce ]
  %i.ud = phi i64 [ %.pre76.i.i.i.i.i.i, %.noexc.i.i.i249 ], [ 1, %bb.ce ] ; 2 uses
  %i.ue = phi i64 [ %.pre.i.i.i.i.i.i, %.noexc.i.i.i249 ], [ 0, %bb.ce ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !61464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !61464
  %i.uf = load ptr, ptr %i.ro, align 8, !alias.scope !61465, !noalias !61432, !noundef !99 ; 2 uses
  %.not55.i.i.i.i.i.i250 = icmp eq ptr %i.uf, null
  call void @llvm.experimental.noalias.scope.decl(metadata !61470)
  br i1 %.not55.i.i.i.i.i.i250, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i
  %.val4.i65.i.i.i.i.i.i251 = load ptr, ptr %i.rp, align 8, !alias.scope !61471, !noalias !61432, !nonnull !99, !align !104, !noundef !99
  %i.ug = getelementptr inbounds nuw i8, ptr %.val4.i65.i.i.i.i.i.i251, i64 32
  %i.uh = load ptr, ptr %i.ug, align 8, !invariant.load !99, !noalias !61472, !nonnull !99
  invoke void %i.uh(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %i.uf)
          to label %.noexc6.i.i.i unwind label %bb.ck, !noalias !61473, !inline_history !61127

.noexc6.i.i.i:                                    ; preds = %bb.cg
  %.pre79.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !noalias !61464
  %.pre81.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert80.i.i.i.i.i.i, align 8, !range !107, !noalias !61464
  %.pre83.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert82.i.i.i.i.i.i, align 8, !noalias !61464
  %i.ui = call i64 @llvm.uadd.sat.i64(i64 %i.ue, i64 %.pre79.i.i.i.i.i.i)
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i.i.i: ; preds = %.noexc6.i.i.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i
  %i.uj = phi i64 [ %.pre83.i.i.i.i.i.i, %.noexc6.i.i.i ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i ]
  %i.uk = phi i64 [ %.pre81.i.i.i.i.i.i, %.noexc6.i.i.i ], [ 1, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i ] ; 2 uses
  %i.ul = phi i64 [ %i.ui, %.noexc6.i.i.i ], [ %i.ue, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !61464
  %i.um = load ptr, ptr %i.rl, align 8, !alias.scope !61465, !noalias !61432, !noundef !99 ; 2 uses
  %.not56.i.i.i.i.i.i = icmp eq ptr %i.um, null
  br i1 %.not56.i.i.i.i.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i.i.i
  %.val63.i.i.i.i.i.i = load ptr, ptr %i.rq, align 8, !alias.scope !61465, !noalias !61432, !nonnull !99, !noundef !99
  %i.un = icmp eq ptr %.val63.i.i.i.i.i.i, %i.um
  %i.uo = trunc nuw i64 %i.ud to i1
  %i.up = trunc nuw i64 %i.uk to i1
  %op.rdx = select i1 %i.un, i1 %i.uo, i1 false
  %op.rdx1096 = select i1 %op.rdx, i1 %i.up, i1 false
  br i1 %op.rdx1096, label %bb.cj, label %bb.cl

bb.ci:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i.i.i
  %i.uq = and i64 %i.uk, %i.ud
  %or.cond57.not.i.i.i.i.i.i = icmp eq i64 %i.uq, 0
  br i1 %or.cond57.not.i.i.i.i.i.i, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.ur = add i64 %i.uj, %i.uc
  br label %bb.cl

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i, %bb.cd
  %i.us = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i ], [ %i.tr, %bb.cd ] ; 2 uses
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %.sroa.13.0.copyload
  store i64 %i.tu, ptr %i.ut, align 8, !noalias !61474
  %i.uu = add nuw nsw i64 %.sroa.13.0.copyload, 1 ; 2 uses
  store i64 %i.uu, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !61457, !noalias !61432
  br label %bb.cb

bb.ck:                                            ; preds = %bb.cl, %bb.cg, %bb.cf, %bb.cb
  %i.uv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1L_NtB1L_13RowIdSequence4iter0EEB1N_(ptr noalias noundef readonly align 8 dereferenceable(48) %i.rl)
          to label %.body.i243 unwind label %bb.cm, !noalias !61456

bb.cl:                                            ; preds = %bb.cj, %bb.ci, %bb.ch
  %.sink87.i.i.i.sroa.phi.i.i.i = phi ptr [ %.sroa.7.i.i.i, %bb.cj ], [ %.sroa.5.i.i.i, %bb.ci ], [ %.sroa.5.i.i.i, %bb.ch ]
  %.sink.i.i.i.i.i.i = phi i64 [ %i.ur, %bb.cj ], [ 0, %bb.ci ], [ 0, %bb.ch ]
  store i64 %.sink.i.i.i.i.i.i, ptr %.sink87.i.i.i.sroa.phi.i.i.i, align 8, !alias.scope !61475, !noalias !61474
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.uw = call i64 @llvm.uadd.sat.i64(i64 %i.ul, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %.sroa.13.0.copyload, i64 noundef %i.uw, i64 noundef 8, i64 noundef 8)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i unwind label %bb.ck, !noalias !61476

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i: ; preds = %bb.cl
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i242, align 8, !alias.scope !61457, !noalias !61432
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i

bb.cm:                                            ; preds = %bb.ck
  %i.ux = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !61474
  unreachable

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB15_7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB8_5boxed3BoxDNtNtNtB17_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B2I_NtB2I_13RowIdSequence4iter0ENCNvNtNtB2K_11transaction11row_version31resolve_update_version_metadatas5_0EEB2K_.exit.i.i: ; preds = %bb.cc
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1L_NtB1L_13RowIdSequence4iter0EEB1N_(ptr noalias noundef readonly align 8 dereferenceable(48) %i.rl)
          to label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.peel.i unwind label %bb.cn, !noalias !61456

bb.cn:                                            ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB15_7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB8_5boxed3BoxDNtNtNtB17_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B2I_NtB2I_13RowIdSequence4iter0ENCNvNtNtB2K_11transaction11row_version31resolve_update_version_metadatas5_0EEB2K_.exit.i.i
  %i.uy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i243

.body.i243:                                       ; preds = %bb.cn, %bb.ck
  %eh.lpad-body.i244 = phi { ptr, i32 } [ %i.uy, %bb.cn ], [ %i.uv, %bb.ck ] ; 2 uses
  %.val.i245 = load i64, ptr %i.n, align 8, !noalias !61432 ; 2 uses
  %i.uz = icmp eq i64 %.val.i245, 0
  br i1 %i.uz, label %.body253, label %bb.co

bb.co:                                            ; preds = %.body.i243
  %.val7.i246 = load ptr, ptr %.sroa.4.0..sroa_idx.i242, align 8, !noalias !61432, !nonnull !99, !noundef !99
  %i.va = shl nuw i64 %.val.i245, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i246, i64 noundef %i.va, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !61432
  br label %.body253

bb.cp:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.vb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !61432
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bs, %bb.br, %bb.bo, %bb.bz
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1L_NtB1L_13RowIdSequence4iter0EEB1N_(ptr noalias noundef readonly align 8 dereferenceable(48) %i.ri)
          to label %.body253 unwind label %bb.cp, !noalias !61433

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.peel.i: ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB15_7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB8_5boxed3BoxDNtNtNtB17_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B2I_NtB2I_13RowIdSequence4iter0ENCNvNtNtB2K_11transaction11row_version31resolve_update_version_metadatas5_0EEB2K_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !61432
  %.sroa.0445.0.copyload = load i64, ptr %i.n, align 8, !noalias !61431 ; 2 uses
  %.sroa.8446.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i242, align 8, !noalias !61431, !nonnull !99, !noundef !99 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !61432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.experimental.noalias.scope.decl(metadata !61477)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !61478
  store i64 0, ptr %i.h, align 8, !noalias !61478
  store ptr inttoptr (i64 8 to ptr), ptr %i.rr, align 8, !noalias !61478
  store i64 0, ptr %i.rs, align 8, !noalias !61478
  %i.vc = load i64, ptr %.sroa.8446.0.copyload, align 8, !alias.scope !61477, !noundef !99 ; 4 uses
  %.idx755 = shl nuw nsw i64 %.sroa.13.0.copyload, 3
  %i.vd = getelementptr inbounds nuw i8, ptr %.sroa.8446.0.copyload, i64 %.idx755
  %.not.i.not.i.peel.not.i = icmp eq i64 %.sroa.13.0.copyload, 1
  %i.ve = getelementptr inbounds nuw i8, ptr %.sroa.8446.0.copyload, i64 16
  br i1 %.not.i.not.i.peel.not.i, label %.thread.i, label %bb.cq

.thread.i:                                        ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.peel.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !61478
  store i64 3, ptr %i.f, align 8, !noalias !61478
  store i64 0, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !61478
  store i64 1, ptr %.sroa.515.0..sroa_idx.i, align 8, !noalias !61478
  store i64 %i.vc, ptr %i.ru, align 8, !noalias !61478
  br label %bb.cs

bb.cq:                                            ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.peel.i
  %i.vf = getelementptr inbounds nuw i8, ptr %.sroa.8446.0.copyload, i64 8
  %i.vg = load i64, ptr %i.vf, align 8, !alias.scope !61477, !noundef !99 ; 2 uses
  %.not24.peel.i = icmp eq i64 %i.vg, %i.vc
  br i1 %.not24.peel.i, label %.peel.next.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !61478
  store i64 3, ptr %i.g, align 8, !noalias !61478
  store i64 0, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !61478
end_hunk_5
begin_hunk_6_@_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtB2x_6filter6FilterINtNtNtB2B_5slice4iter4IterB11_ENCNvMNtNtB17_11transaction14manifest_buildNtNtB4m_7builder11Transaction32build_manifest_with_read_versionsD_0EEE9from_iterB17_:bb.a
.loopexit43:                                      ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMNtNtCs9KQ7US1M400_11lance_table11transaction14manifest_buildNtNtBV_7builder11Transaction32build_manifest_with_read_versionsD_0INtB7_5FnMutTRRNtNtNtBX_6format8fragment8FragmentEE8call_mutBX_.exit.loopexit.i.i.i31, %.noexc8, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveBK_.exit.i.i, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMNtNtCs9KQ7US1M400_11lance_table11transaction14manifest_buildNtNtBV_7builder11Transaction32build_manifest_with_read_versionsD_0INtB7_5FnMutTRRNtNtNtBX_6format8fragment8FragmentEE8call_mutBX_.exit.loopexit.i.i.i, %bb.g, %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !67107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.c

bb.s:                                             ; preds = %.body, %bb.d
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable

bb.t:                                             ; preds = %bb.d, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.d ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtB2x_6filter6FilterINtNtNtB2B_5slice4iter4IterB11_ENCNvMNtNtB17_11transaction14manifest_buildNtNtB4m_7builder11Transaction32build_manifest_with_read_versionsE_0EEE9from_iterB17_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !67142 {
bb.a:
  %i.a = alloca [240 x i8], align 8               ; 4 uses
  %i.b = alloca [240 x i8], align 8               ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [240 x i8], align 8               ; 4 uses
  %i.e = alloca [240 x i8], align 8               ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvMNtNtB1T_11transaction14manifest_buildNtNtB2R_7builder11Transaction32build_manifest_with_read_versionsE_0EENtNtNtB8_6traits8iterator8Iterator4nextB1T_(ptr noalias noundef align 8 captures(none) dereferenceable(240) %i.e, ptr noalias noundef align 8 dereferenceable(24) %1)
  %i.g = load i64, ptr %i.e, align 8, !range !128, !noundef !99
  %.not = icmp eq i64 %i.g, -1
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.c

bb.c:                                             ; preds = %.loopexit9, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.d:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEBH_(ptr noalias noundef align 8 dereferenceable(240) %i.d) #81
          to label %bb.l unwind label %bb.k

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.d, ptr noundef nonnull align 8 dereferenceable(240) %i.e, i64 240, i1 false)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !67143
  %i.k = tail call noundef align 8 dereferenceable_or_null(960) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 960, i64 noundef range(i64 1, 9) 8) #76, !noalias !67143 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 960) #80
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.k, ptr noundef nonnull align 8 dereferenceable(240) %i.e, i64 240, i1 false)
  store i64 4, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67145)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !67146
  invoke fastcc void @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvMNtNtB1T_11transaction14manifest_buildNtNtB2R_7builder11Transaction32build_manifest_with_read_versionsE_0EENtNtNtB8_6traits8iterator8Iterator4nextB1T_(ptr noalias noundef align 8 captures(none) dereferenceable(240) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !67147

.noexc7:                                          ; preds = %bb.g
  %i.m = load i64, ptr %i.b, align 8, !range !128, !noalias !67146, !noundef !99
  %.not5.i.i = icmp eq i64 %i.m, -1
  br i1 %.not5.i.i, label %.loopexit9, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc7, %.noexc8
  %i.n = phi ptr [ %i.s, %.noexc8 ], [ %i.k, %.noexc7 ]
  %i.o = phi i64 [ %i.u, %.noexc8 ], [ 1, %.noexc7 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !67146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.a, ptr noundef nonnull align 8 dereferenceable(240) %i.b, i64 240, i1 false), !noalias !67146
  %i.p = icmp samesign ult i64 %i.o, 38430716820228233
  tail call void @llvm.assume(i1 %i.p)
  %i.q = load i64, ptr %i.f, align 8, !range !103, !alias.scope !67147, !noundef !99
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveBK_.exit.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveBK_.exit.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveBK_.exit.i.i_crit_edge, %.lr.ph.i.i
  %i.s = phi ptr [ %.pre, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveBK_.exit.i.i_crit_edge ], [ %i.n, %.lr.ph.i.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [240 x i8], ptr %i.s, i64 %i.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.t, ptr noundef nonnull align 8 dereferenceable(240) %i.b, i64 240, i1 false), !noalias !67146
  %i.u = add nuw nsw i64 %i.o, 1                  ; 2 uses
  store i64 %i.u, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !67147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !67146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !67146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !67146
  invoke fastcc void @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvMNtNtB1T_11transaction14manifest_buildNtNtB2R_7builder11Transaction32build_manifest_with_read_versionsE_0EENtNtNtB8_6traits8iterator8Iterator4nextB1T_(ptr noalias noundef align 8 captures(none) dereferenceable(240) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !67147

.noexc8:                                          ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveBK_.exit.i.i
  %i.v = load i64, ptr %i.b, align 8, !range !128, !noalias !67146, !noundef !99
  %.not.i.i6 = icmp eq i64 %i.v, -1
  br i1 %.not.i.i6, label %.loopexit9, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEBH_(ptr noalias noundef align 8 dereferenceable(240) %i.a) #81
          to label %.body unwind label %bb.j, !noalias !67146

bb.i:                                             ; preds = %.lr.ph.i.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.o, i64 noundef 1, i64 noundef 8, i64 noundef 240)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveBK_.exit.i.i_crit_edge unwind label %bb.h, !noalias !67148

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveBK_.exit.i.i_crit_edge: ; preds = %bb.i
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !67147
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveBK_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !67146
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveBK_.exit.i.i, %bb.g
  %lpad.loopexit.split-lp12 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.w, %bb.h ], [ %lpad.loopexit.split-lp12, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.f) #81
          to label %bb.l unwind label %bb.k

.loopexit9:                                       ; preds = %.noexc8, %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !67146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %bb.c

bb.k:                                             ; preds = %.body, %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable

bb.l:                                             ; preds = %bb.d, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.j, %bb.d ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNvMNtNtCs9KQ7US1M400_11lance_table11transaction14manifest_buildNtNtB38_7builder11Transaction32build_manifest_with_read_versionse_0EE9from_iterB3a_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(128) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !67157 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [128 x i8], align 8               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = invoke { i32, i32 } @_RNvXs0_NtNtCs1akgR21QTtx_7roaring6bitmap4iterNtB5_4IterNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(128) %1)
          to label %bb.b unwind label %bb.q       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { i32, i32 } %i.e, 0
  %i.g = trunc i32 %i.f to i1
  %i.h = extractvalue { i32, i32 } %i.e, 1
  %i.i = zext i32 %i.h to i64
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXs0_NtNtCs1akgR21QTtx_7roaring6bitmap4iterNtB5_4IterNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hint(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %1)
          to label %bb.f unwind label %bb.q

bb.d:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 dereferenceable(128) %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.o, %bb.d
  ret void

bb.f:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.c, align 8, !noundef !99 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.m = call i64 @llvm.uadd.sat.i64(i64 %i.l, i64 1)
  %.sroa.0.0.i8 = call noundef i64 @llvm.umax.i64(i64 %i.m, i64 4) ; 3 uses
  %i.n = shl i64 %.sroa.0.0.i8, 3                 ; 4 uses
  %i.o = icmp ugt i64 %i.l, 2305843009213693950
  %.not.i.i = icmp ugt i64 %i.n, 9223372036854775800
  %or.cond.i.i = or i1 %i.o, %.not.i.i
  br i1 %or.cond.i.i, label %bb.h, label %2, !prof !100

2:                                                ; preds = %bb.f
  %3 = icmp eq i64 %i.n, 0
  br i1 %3, label %bb.i, label %bb.g

bb.g:                                             ; preds = %2
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !67158
  %i.p = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, 9) 8) #76, !noalias !67158 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.g ], [ 0, %bb.f ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.n) #80
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g, %2
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %2 ], [ %i.p, %bb.g ] ; 3 uses
  %.sroa.4.0.i = phi i64 [ 0, %2 ], [ %.sroa.0.0.i8, %bb.g ] ; 2 uses
  %4 = icmp ule i64 %.sroa.0.0.i8, %.sroa.4.0.i
  call void @llvm.assume(i1 %4)
  store i64 %i.i, ptr %.sroa.10.0.i, align 8
  store i64 %.sroa.4.0.i, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !67159)
  call void @llvm.experimental.noalias.scope.decl(metadata !67160)
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCs9KQ7US1M400_11lance_table.exit.i.i, %bb.i
  %i.r = phi ptr [ %i.ab, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCs9KQ7US1M400_11lance_table.exit.i.i ], [ %.sroa.10.0.i, %bb.i ]
  %i.s = phi i64 [ %i.ad, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCs9KQ7US1M400_11lance_table.exit.i.i ], [ 1, %bb.i ] ; 5 uses
  %i.t = invoke { i32, i32 } @_RNvXs0_NtNtCs1akgR21QTtx_7roaring6bitmap4iterNtB5_4IterNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.b)
          to label %bb.k unwind label %.body, !noalias !67161 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.u = extractvalue { i32, i32 } %i.t, 0
  %i.v = trunc i32 %i.u to i1
  %i.w = extractvalue { i32, i32 } %i.t, 1
  %i.x = zext i32 %i.w to i64
  br i1 %i.v, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.y = icmp samesign ult i64 %i.s, 1152921504606846976
  call void @llvm.assume(i1 %i.y)
  %i.z = load i64, ptr %i.d, align 8, !range !103, !alias.scope !67161, !noundef !99
  %i.aa = icmp eq i64 %i.s, %i.z
  br i1 %i.aa, label %bb.m, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCs9KQ7US1M400_11lance_table.exit.i.i

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !67162
  invoke void @_RNvXs0_NtNtCs1akgR21QTtx_7roaring6bitmap4iterNtB5_4IterNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hint(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.b)
          to label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNvMNtNtCs9KQ7US1M400_11lance_table11transaction14manifest_buildNtNtB1M_7builder11Transaction32build_manifest_with_read_versionse_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1O_.exit.i.i unwind label %.body, !noalias !67161

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNvMNtNtCs9KQ7US1M400_11lance_table11transaction14manifest_buildNtNtB1M_7builder11Transaction32build_manifest_with_read_versionse_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1O_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge, %bb.l
  %i.ab = phi ptr [ %.pre, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNvMNtNtCs9KQ7US1M400_11lance_table11transaction14manifest_buildNtNtB1M_7builder11Transaction32build_manifest_with_read_versionse_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1O_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge ], [ %i.r, %bb.l ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.s
  store i64 %i.x, ptr %i.ac, align 8, !noalias !67161
  %i.ad = add nuw nsw i64 %i.s, 1                 ; 2 uses
  store i64 %i.ad, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !67161
  br label %bb.j

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNvMNtNtCs9KQ7US1M400_11lance_table11transaction14manifest_buildNtNtB1M_7builder11Transaction32build_manifest_with_read_versionse_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1O_.exit.i.i: ; preds = %bb.m
  %i.ae = load i64, ptr %i.a, align 8, !noalias !67162, !noundef !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !67162
  %i.af = call i64 @llvm.uadd.sat.i64(i64 %i.ae, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.s, i64 noundef range(i64 1, 0) %i.af, i64 noundef 8, i64 noundef 8)
          to label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNvMNtNtCs9KQ7US1M400_11lance_table11transaction14manifest_buildNtNtB1M_7builder11Transaction32build_manifest_with_read_versionse_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1O_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge unwind label %.body

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNvMNtNtCs9KQ7US1M400_11lance_table11transaction14manifest_buildNtNtB1M_7builder11Transaction32build_manifest_with_read_versionse_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1O_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNvMNtNtCs9KQ7US1M400_11lance_table11transaction14manifest_buildNtNtB1M_7builder11Transaction32build_manifest_with_read_versionse_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1O_.exit.i.i
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !67161
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCs9KQ7US1M400_11lance_table.exit.i.i

.body:                                            ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNvMNtNtCs9KQ7US1M400_11lance_table11transaction14manifest_buildNtNtB1M_7builder11Transaction32build_manifest_with_read_versionse_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1O_.exit.i.i, %bb.m, %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 dereferenceable(128) %i.b), !noalias !67161
  %.val = load i64, ptr %i.d, align 8             ; 2 uses
  %i.ah = icmp eq i64 %.val, 0
  br i1 %i.ah, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.body
  %.val7 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !99, !noundef !99
  %i.ai = shl nuw i64 %.val, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 8) #76
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 dereferenceable(128) %i.b), !noalias !67161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.e

bb.p:                                             ; preds = %.body, %bb.n, %bb.q
  %.pn11 = phi { ptr, i32 } [ %i.aj, %bb.q ], [ %i.ag, %bb.n ], [ %i.ag, %.body ]
  resume { ptr, i32 } %.pn11

bb.q:                                             ; preds = %bb.h, %bb.c, %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 dereferenceable(128) %1)
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecyEINtB2_18SpecFromIterNestedyINtNtB6_5boxed3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE9from_iterCs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !67184 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %2, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !99, !noalias !67185, !nonnull !99 ; 2 uses
  %i.i = invoke { i64, i64 } %i.h(ptr noundef nonnull %1)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENtNtBQ_8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit unwind label %bb.w, !noalias !67185, !inline_history !222 ; 2 uses

_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENtNtBQ_8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit: ; preds = %bb.a
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = extractvalue { i64, i64 } %i.i, 1
  %i.l = trunc nuw i64 %i.j to i1
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENtNtBQ_8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !99, !noalias !67186, !nonnull !99 ; 2 uses
  invoke void %i.n(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %1)
          to label %bb.g unwind label %bb.w, !noalias !67187, !inline_history !230

bb.c:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENtNtBQ_8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit
  store i64 0, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = load ptr, ptr %2, align 8, !invariant.load !99, !noalias !67188 ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.q(ptr noundef nonnull %1)
          to label %bb.e unwind label %bb.f, !noalias !67188

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !103, !invariant.load !99, !noalias !67188 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EECs9KQ7US1M400_11lance_table.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !125, !invariant.load !99, !noalias !67188
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.v) #76, !noalias !67188
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EECs9KQ7US1M400_11lance_table.exit

bb.f:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !103, !invariant.load !99, !noalias !67188 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %common.resume, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !125, !invariant.load !99, !noalias !67188
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) %i.ab) #76, !noalias !67188
  br label %common.resume

common.resume:                                    ; preds = %bb.w, %bb.t, %.body, %bb.f, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.w, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %i.bo, %bb.w ], [ %eh.lpad-body, %bb.t ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EECs9KQ7US1M400_11lance_table.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i, %bb.e, %bb.u
  ret void

bb.g:                                             ; preds = %bb.b
  %i.ac = load i64, ptr %i.c, align 8, !noundef !99 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ad = call i64 @llvm.uadd.sat.i64(i64 %i.ac, i64 1)
  %.sroa.0.0.i = call noundef i64 @llvm.umax.i64(i64 %i.ad, i64 4) ; 3 uses
  %i.ae = shl i64 %.sroa.0.0.i, 3                 ; 4 uses
  %i.af = icmp ugt i64 %i.ac, 2305843009213693950
  %.not.i.i = icmp ugt i64 %i.ae, 9223372036854775800
  %or.cond.i.i = or i1 %i.af, %.not.i.i
  br i1 %or.cond.i.i, label %bb.i, label %3, !prof !100

3:                                                ; preds = %bb.g
  %4 = icmp eq i64 %i.ae, 0
  br i1 %4, label %bb.j, label %bb.h

bb.h:                                             ; preds = %3
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !67189
  %i.ag = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ae, i64 noundef range(i64 1, 9) 8) #76, !noalias !67189 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.h ], [ 0, %bb.g ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.ae) #80
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h, %3
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %3 ], [ %i.ag, %bb.h ] ; 3 uses
  %.sroa.4.0.i = phi i64 [ 0, %3 ], [ %.sroa.0.0.i, %bb.h ] ; 2 uses
  %5 = icmp ule i64 %.sroa.0.0.i, %.sroa.4.0.i
  call void @llvm.assume(i1 %5)
  store i64 %i.k, ptr %.sroa.10.0.i, align 8
  store i64 %.sroa.4.0.i, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !67190)
  call void @llvm.experimental.noalias.scope.decl(metadata !67191)
  call void @llvm.experimental.noalias.scope.decl(metadata !67192)
  call void @llvm.experimental.noalias.scope.decl(metadata !67193)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !67194
  store ptr %1, ptr %i.b, align 8, !noalias !67195
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.ai, align 8, !noalias !67195
  br label %bb.k

bb.k:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i, %bb.j
  %i.aj = phi ptr [ %i.be, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i ], [ %.sroa.10.0.i, %bb.j ]
  %i.ak = phi i64 [ %i.bg, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i ], [ 1, %bb.j ] ; 5 uses
  %i.al = invoke { i64, i64 } %i.h(ptr noundef nonnull %1)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENtNtBQ_8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i unwind label %bb.r, !noalias !67196, !inline_history !222 ; 2 uses

_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENtNtBQ_8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %bb.k
  %i.am = extractvalue { i64, i64 } %i.al, 0
  %i.an = extractvalue { i64, i64 } %i.al, 1
  %i.ao = trunc nuw i64 %i.am to i1
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENtNtBQ_8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i
  %i.ap = icmp samesign ult i64 %i.ak, 1152921504606846976
  call void @llvm.assume(i1 %i.ap)
  %i.aq = load i64, ptr %i.d, align 8, !range !103, !alias.scope !67197, !noundef !99
  %i.ar = icmp eq i64 %i.ak, %i.aq
  br i1 %i.ar, label %bb.q, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i

bb.m:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENtNtBQ_8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i
  %i.as = load ptr, ptr %2, align 8, !invariant.load !99, !alias.scope !67198, !noalias !67199 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void %i.as(ptr noundef nonnull %1)
          to label %bb.o unwind label %bb.p, !noalias !67200

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !103, !invariant.load !99, !alias.scope !67198, !noalias !67199 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.u, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !range !125, !invariant.load !99, !alias.scope !67198, !noalias !67199
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.ax) #76, !noalias !67200
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !103, !invariant.load !99, !alias.scope !67198, !noalias !67199 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.body, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !125, !invariant.load !99, !alias.scope !67198, !noalias !67199
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) %i.bd) #76, !noalias !67200
  br label %.body

bb.q:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !67195
  invoke void %i.n(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %1)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENtNtBQ_8iterator8Iterator9size_hintCs9KQ7US1M400_11lance_table.exit.i.i unwind label %bb.r, !noalias !67201, !inline_history !230

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENtNtBQ_8iterator8Iterator9size_hintCs9KQ7US1M400_11lance_table.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge, %bb.l
  %i.be = phi ptr [ %.pre, %_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENtNtBQ_8iterator8Iterator9size_hintCs9KQ7US1M400_11lance_table.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge ], [ %i.aj, %bb.l ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.ak
  store i64 %i.an, ptr %i.bf, align 8, !noalias !67197
  %i.bg = add nuw nsw i64 %i.ak, 1                ; 2 uses
  store i64 %i.bg, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !67197
  br label %bb.k

bb.r:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENtNtBQ_8iterator8Iterator9size_hintCs9KQ7US1M400_11lance_table.exit.i.i, %bb.q, %bb.k
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #81
          to label %.body unwind label %bb.s, !noalias !67197

_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENtNtBQ_8iterator8Iterator9size_hintCs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %bb.q
  %i.bi = load i64, ptr %i.a, align 8, !noalias !67195, !noundef !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !67195
  %i.bj = call i64 @llvm.uadd.sat.i64(i64 %i.bi, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.ak, i64 noundef %i.bj, i64 noundef 8, i64 noundef 8)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENtNtBQ_8iterator8Iterator9size_hintCs9KQ7US1M400_11lance_table.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge unwind label %bb.r

_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENtNtBQ_8iterator8Iterator9size_hintCs9KQ7US1M400_11lance_table.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENtNtBQ_8iterator8Iterator9size_hintCs9KQ7US1M400_11lance_table.exit.i.i
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !67197
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i

bb.s:                                             ; preds = %bb.r
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !67197
  unreachable

.body:                                            ; preds = %bb.p, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.bh, %bb.r ], [ %i.ay, %bb.p ], [ %i.ay, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ] ; 2 uses
  %.val = load i64, ptr %i.d, align 8             ; 2 uses
  %i.bl = icmp eq i64 %.val, 0
  br i1 %i.bl, label %common.resume, label %bb.t

bb.t:                                             ; preds = %.body
  %.val7 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !99, !noundef !99
  %i.bm = shl nuw i64 %.val, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7, i64 noundef %i.bm, i64 noundef range(i64 1, -9223372036854775807) 8) #76
  br label %common.resume

bb.u:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !67194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EECs9KQ7US1M400_11lance_table.exit

bb.v:                                             ; preds = %bb.w
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable

bb.w:                                             ; preds = %bb.i, %bb.b, %bb.a
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e) #81
          to label %common.resume unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecyEINtB2_18SpecFromIterNestedyINtNtCs9KQ7US1M400_11lance_table5utils9ExactSizeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtB2l_9enumerate9EnumerateINtNtNtB2p_5slice4iter4IterNtNtNtB1z_6rowids7segment10U64SegmentEEINtNtB6_5boxed3BoxDNtNtNtB2n_6traits8iterator8Iteratorp4ItemyEL_ENCNvMs5_B4a_NtB4a_13RowIdSeqSlice4iters0_0EEE9from_iterB1z_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !67210 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = invoke fastcc { i64, i64 } @_RNvXs_NtCs9KQ7US1M400_11lance_table5utilsINtB4_9ExactSizeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtBY_9enumerate9EnumerateINtNtNtB12_5slice4iter4IterNtNtNtB6_6rowids7segment10U64SegmentEEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB10_6traits8iterator8Iteratorp4ItemyEL_ENCNvMs5_B2M_NtB2M_13RowIdSeqSlice4iters0_0EEB3U_4nextB6_(ptr noalias noundef align 8 dereferenceable(80) %1)
          to label %bb.b unwind label %bb.s       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  %i.f = trunc nuw i64 %i.d to i1
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9KQ7US1M400_11lance_table5utils9ExactSizeINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB1s_9enumerate9EnumerateINtNtNtB4_5slice4iter4IterNtNtNtBG_6rowids7segment10U64SegmentEEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1u_6traits8iterator8Iteratorp4ItemyEL_ENCNvMs5_B30_NtB30_13RowIdSeqSlice4iters0_0EEEBG_(ptr noalias noundef align 8 dereferenceable(80) %1)
  br label %bb.d

bb.d:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtCs9KQ7US1M400_11lance_table5utils9ExactSizeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtB23_9enumerate9EnumerateINtNtNtB27_5slice4iter4IterNtNtNtB1h_6rowids7segment10U64SegmentEEINtNtB6_5boxed3BoxDNtNtNtB25_6traits8iterator8Iteratorp4ItemyEL_ENCNvMs5_B3S_NtB3S_13RowIdSeqSlice4iters0_0EEE11spec_extendB1h_.exit, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val8 = load i64, ptr %i.i, align 8, !noundef !99 ; 2 uses
  %i.j = tail call i64 @llvm.uadd.sat.i64(i64 %.val8, i64 1)
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.j, i64 4) ; 3 uses
  %i.k = shl i64 %.sroa.0.0.i, 3                  ; 4 uses
  %i.l = icmp ugt i64 %.val8, 2305843009213693950
  %.not.i.i = icmp ugt i64 %i.k, 9223372036854775800
  %or.cond.i.i = or i1 %i.l, %.not.i.i
  br i1 %or.cond.i.i, label %bb.g, label %2, !prof !100

2:                                                ; preds = %bb.e
  %3 = icmp eq i64 %i.k, 0
  br i1 %3, label %bb.h, label %bb.f

bb.f:                                             ; preds = %2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !67211
  %i.m = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, 9) 8) #76, !noalias !67211 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.f ], [ 0, %bb.e ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.k) #80
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f, %2
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %2 ], [ %i.m, %bb.f ] ; 3 uses
  %.sroa.4.0.i = phi i64 [ 0, %2 ], [ %.sroa.0.0.i, %bb.f ] ; 2 uses
  %4 = icmp ule i64 %.sroa.0.0.i, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %4)
  store i64 %i.e, ptr %.sroa.10.0.i, align 8
  store i64 %.sroa.4.0.i, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67215)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  br label %bb.i

bb.i:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i, %bb.h
  %i.p = phi ptr [ %i.y, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i ], [ %.sroa.10.0.i, %bb.h ]
  %i.q = phi i64 [ %i.aa, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i ], [ 1, %bb.h ] ; 5 uses
  %i.r = invoke fastcc { i64, i64 } @_RNvXs_NtCs9KQ7US1M400_11lance_table5utilsINtB4_9ExactSizeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtBY_9enumerate9EnumerateINtNtNtB12_5slice4iter4IterNtNtNtB6_6rowids7segment10U64SegmentEEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB10_6traits8iterator8Iteratorp4ItemyEL_ENCNvMs5_B2M_NtB2M_13RowIdSeqSlice4iters0_0EEB3U_4nextB6_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %bb.j unwind label %bb.l, !noalias !67216 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.s = extractvalue { i64, i64 } %i.r, 0
  %i.t = extractvalue { i64, i64 } %i.r, 1
  %i.u = trunc nuw i64 %i.s to i1
  br i1 %i.u, label %bb.k, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtCs9KQ7US1M400_11lance_table5utils9ExactSizeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtB1R_9enumerate9EnumerateINtNtNtB1V_5slice4iter4IterNtNtNtB15_6rowids7segment10U64SegmentEEINtNtB8_5boxed3BoxDNtNtNtB1T_6traits8iterator8Iteratorp4ItemyEL_ENCNvMs5_B3G_NtB3G_13RowIdSeqSlice4iters0_0EEEB15_.exit.i

bb.k:                                             ; preds = %bb.j
  %i.v = icmp samesign ult i64 %i.q, 1152921504606846976
  tail call void @llvm.assume(i1 %i.v)
  %i.w = load i64, ptr %i.b, align 8, !range !103, !alias.scope !67216, !noundef !99
  %i.x = icmp eq i64 %i.q, %i.w
  br i1 %i.x, label %bb.m, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge, %bb.k
  %i.y = phi ptr [ %.pre, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge ], [ %i.p, %bb.k ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.q
  store i64 %i.t, ptr %i.z, align 8, !noalias !67217
  %i.aa = add nuw nsw i64 %i.q, 1                 ; 2 uses
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !67216
  br label %bb.i

bb.l:                                             ; preds = %bb.m, %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9KQ7US1M400_11lance_table5utils9ExactSizeINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB1s_9enumerate9EnumerateINtNtNtB4_5slice4iter4IterNtNtNtBG_6rowids7segment10U64SegmentEEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1u_6traits8iterator8Iteratorp4ItemyEL_ENCNvMs5_B30_NtB30_13RowIdSeqSlice4iters0_0EEEBG_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #81
          to label %.body unwind label %bb.n, !noalias !67216

bb.m:                                             ; preds = %bb.k
  %.val.i.i = load i64, ptr %i.o, align 8, !alias.scope !67218, !noundef !99
  %i.ac = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.q, i64 noundef %i.ac, i64 noundef 8, i64 noundef 8)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge unwind label %bb.l, !noalias !67218

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge: ; preds = %bb.m
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !67216
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !67217
  unreachable

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtCs9KQ7US1M400_11lance_table5utils9ExactSizeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtB1R_9enumerate9EnumerateINtNtNtB1V_5slice4iter4IterNtNtNtB15_6rowids7segment10U64SegmentEEINtNtB8_5boxed3BoxDNtNtNtB1T_6traits8iterator8Iteratorp4ItemyEL_ENCNvMs5_B3G_NtB3G_13RowIdSeqSlice4iters0_0EEEB15_.exit.i: ; preds = %bb.j
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9KQ7US1M400_11lance_table5utils9ExactSizeINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB1s_9enumerate9EnumerateINtNtNtB4_5slice4iter4IterNtNtNtBG_6rowids7segment10U64SegmentEEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1u_6traits8iterator8Iteratorp4ItemyEL_ENCNvMs5_B30_NtB30_13RowIdSeqSlice4iters0_0EEEBG_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtCs9KQ7US1M400_11lance_table5utils9ExactSizeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtB23_9enumerate9EnumerateINtNtNtB27_5slice4iter4IterNtNtNtB1h_6rowids7segment10U64SegmentEEINtNtB6_5boxed3BoxDNtNtNtB25_6traits8iterator8Iteratorp4ItemyEL_ENCNvMs5_B3S_NtB3S_13RowIdSeqSlice4iters0_0EEE11spec_extendB1h_.exit unwind label %bb.o, !noalias !67216

bb.o:                                             ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtCs9KQ7US1M400_11lance_table5utils9ExactSizeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtB1R_9enumerate9EnumerateINtNtNtB1V_5slice4iter4IterNtNtNtB15_6rowids7segment10U64SegmentEEINtNtB8_5boxed3BoxDNtNtNtB1T_6traits8iterator8Iteratorp4ItemyEL_ENCNvMs5_B3G_NtB3G_13RowIdSeqSlice4iters0_0EEEB15_.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.o ], [ %i.ab, %bb.l ] ; 2 uses
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.af = icmp eq i64 %.val, 0
  br i1 %i.af, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.body
  %.val7 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !99, !noundef !99
  %i.ag = shl nuw i64 %.val, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 8) #76
  br label %bb.r

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtCs9KQ7US1M400_11lance_table5utils9ExactSizeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtB23_9enumerate9EnumerateINtNtNtB27_5slice4iter4IterNtNtNtB1h_6rowids7segment10U64SegmentEEINtNtB6_5boxed3BoxDNtNtNtB25_6traits8iterator8Iteratorp4ItemyEL_ENCNvMs5_B3S_NtB3S_13RowIdSeqSlice4iters0_0EEE11spec_extendB1h_.exit: ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtCs9KQ7US1M400_11lance_table5utils9ExactSizeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtB1R_9enumerate9EnumerateINtNtNtB1V_5slice4iter4IterNtNtNtB15_6rowids7segment10U64SegmentEEINtNtB8_5boxed3BoxDNtNtNtB1T_6traits8iterator8Iteratorp4ItemyEL_ENCNvMs5_B3G_NtB3G_13RowIdSeqSlice4iters0_0EEEB15_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.q:                                             ; preds = %bb.s
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable

bb.r:                                             ; preds = %.body, %bb.p, %bb.s
  %.pn12 = phi { ptr, i32 } [ %i.ai, %bb.s ], [ %eh.lpad-body, %bb.p ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn12

bb.s:                                             ; preds = %bb.g, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9KQ7US1M400_11lance_table5utils9ExactSizeINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB1s_9enumerate9EnumerateINtNtNtB4_5slice4iter4IterNtNtNtBG_6rowids7segment10U64SegmentEEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1u_6traits8iterator8Iteratorp4ItemyEL_ENCNvMs5_B30_NtB30_13RowIdSeqSlice4iters0_0EEEBG_(ptr noalias noundef align 8 dereferenceable(80) %1) #81
          to label %bb.r unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecyEINtB2_18SpecFromIterNestedyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1D_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB6_5boxed3BoxDNtNtNtB1B_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B2V_NtB2V_13RowIdSequence4iter0EE9from_iterB2X_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !67284 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i.i = alloca i64, align 8              ; 4 uses
  %.sroa.7.i.i = alloca i64, align 8              ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 12 uses
  %.sroa.5 = alloca i64, align 8                  ; 4 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = invoke fastcc { i64, i64 } @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENCNvMs1_B1V_NtB1V_13RowIdSequence4iter0EINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENtNtB48_8iterator8Iterator4nextB1X_(ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1y_NtB1y_13RowIdSequence4iter0ENtNtB37_8iterator8Iterator4nextB1A_.exit unwind label %bb.ac ; 2 uses

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1y_NtB1y_13RowIdSequence4iter0ENtNtB37_8iterator8Iterator4nextB1A_.exit: ; preds = %bb.a
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = extractvalue { i64, i64 } %i.g, 1
  %i.j = trunc nuw i64 %i.h to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1y_NtB1y_13RowIdSequence4iter0ENtNtB37_8iterator8Iterator4nextB1A_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67288)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !67289
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !67290, !noundef !99 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67291)
  br i1 %.not.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val4.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !67292, !nonnull !99, !align !104, !noundef !99
  %i.n = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !99, !noalias !67293, !nonnull !99
  invoke void %i.o(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %i.l)
          to label %.noexc unwind label %bb.ac, !noalias !67294, !inline_history !67236

.noexc:                                           ; preds = %bb.c
  %.pre.i.i = load i64, ptr %i.d, align 8, !noalias !67289
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre76.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !range !107, !noalias !67289
  %.phi.trans.insert77.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre78.i.i = load i64, ptr %.phi.trans.insert77.i.i, align 8, !noalias !67289
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %.noexc, %bb.b
  %i.p = phi i64 [ %.pre78.i.i, %.noexc ], [ 0, %bb.b ]
  %i.q = phi i64 [ %.pre76.i.i, %.noexc ], [ 1, %bb.b ] ; 2 uses
  %i.r = phi i64 [ %.pre.i.i, %.noexc ], [ 0, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !67289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !67289
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !67290, !noundef !99 ; 2 uses
  %.not55.i.i = icmp eq ptr %i.t, null
  call void @llvm.experimental.noalias.scope.decl(metadata !67295)
  br i1 %.not55.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i, label %bb.d

bb.d:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val4.i65.i.i = load ptr, ptr %i.u, align 8, !alias.scope !67296, !nonnull !99, !align !104, !noundef !99
  %i.v = getelementptr inbounds nuw i8, ptr %.val4.i65.i.i, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !invariant.load !99, !noalias !67297, !nonnull !99
  invoke void %i.w(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.t)
          to label %.noexc8 unwind label %bb.ac, !noalias !67298, !inline_history !67236

.noexc8:                                          ; preds = %bb.d
  %.pre79.i.i = load i64, ptr %i.c, align 8, !noalias !67289
  %.phi.trans.insert80.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre81.i.i = load i64, ptr %.phi.trans.insert80.i.i, align 8, !range !107, !noalias !67289
  %.phi.trans.insert82.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.pre83.i.i = load i64, ptr %.phi.trans.insert82.i.i, align 8, !noalias !67289
  %i.x = call i64 @llvm.uadd.sat.i64(i64 %i.r, i64 %.pre79.i.i)
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i: ; preds = %.noexc8, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i
  %i.y = phi i64 [ %.pre83.i.i, %.noexc8 ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i ]
  %i.z = phi i64 [ %.pre81.i.i, %.noexc8 ], [ 1, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i ] ; 2 uses
  %i.aa = phi i64 [ %i.x, %.noexc8 ], [ %i.r, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !67289
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !67290, !noundef !99 ; 2 uses
  %.not56.i.i = icmp eq ptr %i.ab, null
  br i1 %.not56.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val63.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !67290, !nonnull !99, !noundef !99
  %i.ad = icmp eq ptr %.val63.i.i, %i.ab
  %i.ae = trunc nuw i64 %i.q to i1
  %i.af = trunc nuw i64 %i.z to i1
  %op.rdx27 = select i1 %i.ad, i1 %i.ae, i1 false
  %op.rdx28 = select i1 %op.rdx27, i1 %i.af, i1 false
  br i1 %op.rdx28, label %bb.g, label %bb.j

bb.f:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i
  %i.ag = and i64 %i.z, %i.q
  %or.cond57.not.i.i = icmp eq i64 %i.ag, 0
  br i1 %or.cond57.not.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = add i64 %i.y, %i.p
  br label %bb.j

bb.h:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1y_NtB1y_13RowIdSequence4iter0ENtNtB37_8iterator8Iterator4nextB1A_.exit
  store i64 0, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.aj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1L_NtB1L_13RowIdSequence4iter0EEB1N_(ptr noalias noundef align 8 dereferenceable(48) %1)
  br label %bb.i

bb.i:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B2D_NtB2D_13RowIdSequence4iter0EE11spec_extendB2F_.exit, %bb.h
  ret void

bb.j:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.sink87.i.i.sroa.phi = phi ptr [ %.sroa.7, %bb.g ], [ %.sroa.5, %bb.f ], [ %.sroa.5, %bb.e ]
  %.sink.i.i = phi i64 [ %i.ah, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ]
  store i64 %.sink.i.i, ptr %.sink87.i.i.sroa.phi, align 8, !alias.scope !67299
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.ak = call i64 @llvm.uadd.sat.i64(i64 %i.aa, i64 1)
  %.sroa.0.0.i = call noundef i64 @llvm.umax.i64(i64 %i.ak, i64 4) ; 3 uses
  %i.al = shl i64 %.sroa.0.0.i, 3                 ; 4 uses
  %i.am = icmp ugt i64 %i.aa, 2305843009213693950
  %.not.i.i9 = icmp ugt i64 %i.al, 9223372036854775800
  %or.cond.i.i10 = or i1 %i.am, %.not.i.i9
  br i1 %or.cond.i.i10, label %bb.l, label %2, !prof !100

2:                                                ; preds = %bb.j
  %3 = icmp eq i64 %i.al, 0
  br i1 %3, label %bb.m, label %bb.k

bb.k:                                             ; preds = %2
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !67300
  %i.an = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.al, i64 noundef range(i64 1, 9) 8) #76, !noalias !67300 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.k ], [ 0, %bb.j ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.al) #80
          to label %.noexc11 unwind label %bb.ac

.noexc11:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k, %2
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %2 ], [ %i.an, %bb.k ] ; 3 uses
  %.sroa.4.0.i = phi i64 [ 0, %2 ], [ %.sroa.0.0.i, %bb.k ] ; 2 uses
  %4 = icmp ule i64 %.sroa.0.0.i, %.sroa.4.0.i
  call void @llvm.assume(i1 %4)
  store i64 %i.i, ptr %.sroa.10.0.i, align 8
  store i64 %.sroa.4.0.i, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !67301)
  call void @llvm.experimental.noalias.scope.decl(metadata !67302)
  call void @llvm.experimental.noalias.scope.decl(metadata !67303)
  call void @llvm.experimental.noalias.scope.decl(metadata !67304)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.phi.trans.insert77.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.phi.trans.insert80.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.phi.trans.insert82.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.n

bb.n:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i, %bb.m
  %i.au = phi ptr [ %i.bw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i ], [ %.sroa.10.0.i, %bb.m ]
  %i.av = phi i64 [ %i.by, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i ], [ 1, %bb.m ] ; 5 uses
  %i.aw = invoke fastcc { i64, i64 } @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENCNvMs1_B1V_NtB1V_13RowIdSequence4iter0EINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENtNtB48_8iterator8Iterator4nextB1X_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1y_NtB1y_13RowIdSequence4iter0ENtNtB37_8iterator8Iterator4nextB1A_.exit.i.i unwind label %bb.v, !noalias !67305 ; 2 uses

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1y_NtB1y_13RowIdSequence4iter0ENtNtB37_8iterator8Iterator4nextB1A_.exit.i.i: ; preds = %bb.n
  %i.ax = extractvalue { i64, i64 } %i.aw, 0
  %i.ay = extractvalue { i64, i64 } %i.aw, 1
  %i.az = trunc nuw i64 %i.ax to i1
  br i1 %i.az, label %bb.o, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB8_5boxed3BoxDNtNtNtB17_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B2r_NtB2r_13RowIdSequence4iter0EEB2t_.exit.i

bb.o:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1y_NtB1y_13RowIdSequence4iter0ENtNtB37_8iterator8Iterator4nextB1A_.exit.i.i
  %i.ba = icmp samesign ult i64 %i.av, 1152921504606846976
  call void @llvm.assume(i1 %i.ba)
  %i.bb = load i64, ptr %i.f, align 8, !range !103, !alias.scope !67305, !noundef !99
  %i.bc = icmp eq i64 %i.av, %i.bb
  br i1 %i.bc, label %bb.p, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !67306)
  call void @llvm.experimental.noalias.scope.decl(metadata !67307)
  call void @llvm.experimental.noalias.scope.decl(metadata !67308)
  call void @llvm.experimental.noalias.scope.decl(metadata !67309)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !67310
  %i.bd = load ptr, ptr %i.ap, align 8, !alias.scope !67311, !noundef !99 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  call void @llvm.experimental.noalias.scope.decl(metadata !67312)
  br i1 %.not.i.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val4.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !67313, !nonnull !99, !align !104, !noundef !99
  %i.be = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !invariant.load !99, !noalias !67314, !nonnull !99
  invoke void %i.bf(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.bd)
          to label %.noexc.i.i unwind label %bb.v, !noalias !67315, !inline_history !67236

.noexc.i.i:                                       ; preds = %bb.q
  %.pre.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !67310
  %.pre76.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !range !107, !noalias !67310
  %.pre78.i.i.i.i = load i64, ptr %.phi.trans.insert77.i.i.i.i, align 8, !noalias !67310
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i: ; preds = %.noexc.i.i, %bb.p
  %i.bg = phi i64 [ %.pre78.i.i.i.i, %.noexc.i.i ], [ 0, %bb.p ]
  %i.bh = phi i64 [ %.pre76.i.i.i.i, %.noexc.i.i ], [ 1, %bb.p ] ; 2 uses
  %i.bi = phi i64 [ %.pre.i.i.i.i, %.noexc.i.i ], [ 0, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !67310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !67310
  %i.bj = load ptr, ptr %i.ar, align 8, !alias.scope !67311, !noundef !99 ; 2 uses
  %.not55.i.i.i.i = icmp eq ptr %i.bj, null
  call void @llvm.experimental.noalias.scope.decl(metadata !67316)
  br i1 %.not55.i.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i
  %.val4.i65.i.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !67317, !nonnull !99, !align !104, !noundef !99
  %i.bk = getelementptr inbounds nuw i8, ptr %.val4.i65.i.i.i.i, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !invariant.load !99, !noalias !67318, !nonnull !99
  invoke void %i.bl(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.bj)
          to label %.noexc6.i.i unwind label %bb.v, !noalias !67319, !inline_history !67236

.noexc6.i.i:                                      ; preds = %bb.r
  %.pre79.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !67310
  %.pre81.i.i.i.i = load i64, ptr %.phi.trans.insert80.i.i.i.i, align 8, !range !107, !noalias !67310
  %.pre83.i.i.i.i = load i64, ptr %.phi.trans.insert82.i.i.i.i, align 8, !noalias !67310
  %i.bm = call i64 @llvm.uadd.sat.i64(i64 %i.bi, i64 %.pre79.i.i.i.i)
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i: ; preds = %.noexc6.i.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i
  %i.bn = phi i64 [ %.pre83.i.i.i.i, %.noexc6.i.i ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i ]
  %i.bo = phi i64 [ %.pre81.i.i.i.i, %.noexc6.i.i ], [ 1, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i ] ; 2 uses
  %i.bp = phi i64 [ %i.bm, %.noexc6.i.i ], [ %i.bi, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !67310
  %i.bq = load ptr, ptr %i.e, align 8, !alias.scope !67311, !noundef !99 ; 2 uses
  %.not56.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not56.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i
  %.val63.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !67311, !nonnull !99, !noundef !99
  %i.br = icmp eq ptr %.val63.i.i.i.i, %i.bq
  %i.bs = trunc nuw i64 %i.bh to i1
  %i.bt = trunc nuw i64 %i.bo to i1
  %op.rdx = select i1 %i.br, i1 %i.bs, i1 false
  %op.rdx26 = select i1 %op.rdx, i1 %i.bt, i1 false
  br i1 %op.rdx26, label %bb.u, label %bb.w

bb.t:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i
  %i.bu = and i64 %i.bo, %i.bh
  %or.cond57.not.i.i.i.i = icmp eq i64 %i.bu, 0
  br i1 %or.cond57.not.i.i.i.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bv = add i64 %i.bn, %i.bg
  br label %bb.w

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge, %bb.o
  %i.bw = phi ptr [ %.pre, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge ], [ %i.au, %bb.o ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.av
  store i64 %i.ay, ptr %i.bx, align 8, !noalias !67320
  %i.by = add nuw nsw i64 %i.av, 1                ; 2 uses
  store i64 %i.by, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !67305
  br label %bb.n

bb.v:                                             ; preds = %bb.w, %bb.r, %bb.q, %bb.n
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1L_NtB1L_13RowIdSequence4iter0EEB1N_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e) #81
          to label %.body unwind label %bb.x, !noalias !67305

bb.w:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.sink87.i.i.sroa.phi.i.i = phi ptr [ %.sroa.7.i.i, %bb.u ], [ %.sroa.5.i.i, %bb.t ], [ %.sroa.5.i.i, %bb.s ]
  %.sink.i.i.i.i = phi i64 [ %i.bv, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ]
  store i64 %.sink.i.i.i.i, ptr %.sink87.i.i.sroa.phi.i.i, align 8, !alias.scope !67321, !noalias !67320
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.ca = call i64 @llvm.uadd.sat.i64(i64 %i.bp, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.av, i64 noundef %i.ca, i64 noundef 8, i64 noundef 8)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge unwind label %bb.v, !noalias !67322

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge: ; preds = %bb.w
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !67305
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i

bb.x:                                             ; preds = %bb.v
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !67320
  unreachable

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB8_5boxed3BoxDNtNtNtB17_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B2r_NtB2r_13RowIdSequence4iter0EEB2t_.exit.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1y_NtB1y_13RowIdSequence4iter0ENtNtB37_8iterator8Iterator4nextB1A_.exit.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1L_NtB1L_13RowIdSequence4iter0EEB1N_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B2D_NtB2D_13RowIdSequence4iter0EE11spec_extendB2F_.exit unwind label %bb.y, !noalias !67305

bb.y:                                             ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB8_5boxed3BoxDNtNtNtB17_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B2r_NtB2r_13RowIdSequence4iter0EEB2t_.exit.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.v, %bb.y
  %eh.lpad-body = phi { ptr, i32 } [ %i.cc, %bb.y ], [ %i.bz, %bb.v ] ; 2 uses
  %.val = load i64, ptr %i.f, align 8             ; 2 uses
  %i.cd = icmp eq i64 %.val, 0
  br i1 %i.cd, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.body
  %.val7 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !99, !noundef !99
  %i.ce = shl nuw i64 %.val, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7, i64 noundef %i.ce, i64 noundef range(i64 1, -9223372036854775807) 8) #76
  br label %bb.ab

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B2D_NtB2D_13RowIdSequence4iter0EE11spec_extendB2F_.exit: ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB8_5boxed3BoxDNtNtNtB17_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B2r_NtB2r_13RowIdSequence4iter0EEB2t_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.i

bb.aa:                                            ; preds = %bb.ac
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable

bb.ab:                                            ; preds = %.body, %bb.z, %bb.ac
  %.pn16 = phi { ptr, i32 } [ %i.cg, %bb.ac ], [ %eh.lpad-body, %bb.z ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn16

bb.ac:                                            ; preds = %bb.l, %bb.d, %bb.c, %bb.a
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1L_NtB1L_13RowIdSequence4iter0EEB1N_(ptr noalias noundef align 8 dereferenceable(48) %1) #81
          to label %bb.ab unwind label %bb.aa
}

; Function Attrs: nonlazybind uwtable
define internal { i64, i64 } @_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENtNtBQ_8iterator8Iterator3nthCs9KQ7US1M400_11lance_table(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 !guid !67323 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !99, !noundef !99
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !99, !align !104, !noundef !99
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !99, !nonnull !99
  %i.f = tail call { i64, i64 } %i.e(ptr noundef nonnull %i.a, i64 noundef %1)
  ret { i64, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { i64, i64 } @_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENtNtBQ_8iterator8Iterator4nextCs9KQ7US1M400_11lance_table(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 !guid !67324 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !99, !noundef !99
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !99, !align !104, !noundef !99
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !99, !nonnull !99
  %i.f = tail call { i64, i64 } %i.e(ptr noundef nonnull %i.a)
  ret { i64, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENtNtBQ_8iterator8Iterator9size_hintCs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 !guid !67325 {
bb.a:
end_hunk_6
begin_hunk_7_@_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENCNvNtB1E_5index18decompose_sequence0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_:bb.a

bb.o:                                             ; preds = %bb.n, %.loopexit19.i.i.i.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !range !103, !invariant.load !99, !noalias !69151 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTyyEEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB1m_9enumerate9EnumerateINtNtB6_5boxed3BoxDNtNtNtB1o_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index32decompose_segment_with_deletions0EE11spec_extendB4f_.exit.i.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o
  %i.cr = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !range !125, !invariant.load !99, !noalias !69151
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.cp, i64 noundef range(i64 1, -9223372036854775807) %i.cs) #76, !noalias !69151
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTyyEEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB1m_9enumerate9EnumerateINtNtB6_5boxed3BoxDNtNtNtB1o_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index32decompose_segment_with_deletions0EE11spec_extendB4f_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !range !103, !invariant.load !99, !noalias !69151 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %.body.i.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !range !125, !invariant.load !99, !noalias !69151
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.cv, i64 noundef range(i64 1, -9223372036854775807) %i.cy) #76, !noalias !69151
  br label %.body.i.i.i.i.i

bb.q:                                             ; preds = %.loopexit20.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !69152
  invoke void %i.bb(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull %i.ai)
          to label %bb.r unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !69153, !inline_history !69026

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTyyEE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTyyEE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i.i.i.i.i, %.loopexit20.i.i.i.i.i.i.i
  %i.cz = phi ptr [ %.pre.i.i.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTyyEE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i.i.i.i.i ], [ %i.br, %.loopexit20.i.i.i.i.i.i.i ] ; 2 uses
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.bs ; 2 uses
  store i64 %i.ci, ptr %i.da, align 8, !noalias !69154
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i64 %i.cj, ptr %i.db, align 8, !noalias !69154
  %i.dc = add nuw nsw i64 %i.bs, 1                ; 2 uses
  store i64 %i.dc, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !69150, !noalias !69134
  br label %bb.l

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.r, %bb.q, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.l
  %lpad.loopexit.split-lp173 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index32decompose_segment_with_deletions0EEB3y_(ptr nonnull %i.ai, ptr nonnull %i.aj) #81
          to label %.body.i.i.i.i.i unwind label %bb.s, !noalias !69154

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !69152
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.bs, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTyyEE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !69155

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTyyEE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i.i.i.i.i: ; preds = %bb.r
  %.pre.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !69150, !noalias !69134
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTyyEE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i

bb.s:                                             ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !69154
  unreachable

.body.i.i.i.i.i:                                  ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i.i, %bb.p
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp173, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %i.ct, %bb.p ], [ %i.ct, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.val.i.i.i.i.i = load i64, ptr %i.g, align 8, !noalias !69134 ; 2 uses
  %i.de = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.de, label %common.resume.i.i.i, label %bb.t

bb.t:                                             ; preds = %.body.i.i.i.i.i
  %.val5.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !69134, !nonnull !99, !noundef !99
  %i.df = shl nuw i64 %.val.i.i.i.i.i, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i, i64 noundef %i.df, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !69144
  br label %common.resume.i.i.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTyyEEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB1m_9enumerate9EnumerateINtNtB6_5boxed3BoxDNtNtNtB1o_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index32decompose_segment_with_deletions0EE11spec_extendB4f_.exit.i.i.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !69156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !69134
  br label %_RNvNtNtCs9KQ7US1M400_11lance_table6rowids5index32decompose_segment_with_deletions.exit.i.i.i

bb.u:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !69144
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.e, %bb.d, %.lr.ph.i.i.i.i.i.i.i.i.i, %.loopexit36.i.i.i.i.i, %bb.j
  %lpad.loopexit.split-lp178 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index32decompose_segment_with_deletions0EEB3y_(ptr nonnull %i.ai, ptr nonnull %i.aj) #81
          to label %common.resume.i.i.i unwind label %bb.u, !noalias !69144

_RNvNtNtCs9KQ7US1M400_11lance_table6rowids5index32decompose_segment_with_deletions.exit.i.i.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTyyEEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB1m_9enumerate9EnumerateINtNtB6_5boxed3BoxDNtNtNtB1o_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index32decompose_segment_with_deletions0EE11spec_extendB4f_.exit.i.i.i.i.i, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %bb.g
  call fastcc void @_RNvNtNtCs9KQ7US1M400_11lance_table6rowids5index22build_chunk_from_pairs(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(136) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h), !noalias !69157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !69131
  br label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index18decompose_sequence0INtB7_5FnMutTRNtNtBU_7segment10U64SegmentEE8call_mutBW_.exit.i

bb.v:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !69158)
  call void @llvm.experimental.noalias.scope.decl(metadata !69159)
  %i.dh = load i64, ptr %i.s, align 8, !range !179, !alias.scope !69160, !noalias !69161, !noundef !99 ; 2 uses
  %i.di = icmp ne i64 %i.dh, 4
  call void @llvm.assume(i1 %i.di)
  %i.dj = icmp eq i64 %i.dh, 3
  br i1 %i.dj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dk = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !69160, !noalias !69161, !noundef !99 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !69160, !noalias !69161, !noundef !99 ; 4 uses
  %.not.i.i.i.i = icmp ult i64 %i.dl, %i.dn
  br i1 %.not.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.do = call noundef i64 @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.s), !noalias !69162
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.au, label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dq = sub i64 %i.aa, %i.dl
  %i.dr = add i64 %i.dq, %i.dn
  %i.ds = add i64 %i.dn, -1
  store i64 %i.dl, ptr %0, align 8, !alias.scope !69163
  store i64 %i.ds, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !alias.scope !69163
  store i8 0, ptr %.sroa.511.0..sroa_idx.i.i.i.i, align 8, !alias.scope !69163
  store i64 3, ptr %i.r, align 8, !alias.scope !69163
  store i64 %i.dl, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !69163
  store i64 %i.dn, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !69163
  store i64 3, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !69163
  store i64 %i.aa, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !69163
  store i64 %i.dr, ptr %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !69163
  br label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index18decompose_sequence0INtB7_5FnMutTRNtNtBU_7segment10U64SegmentEE8call_mutBW_.exit.i

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !69164
  %i.dt = call { ptr, ptr } @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment4iter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.s), !noalias !69162 ; 2 uses
  %i.du = extractvalue { ptr, ptr } %i.dt, 0      ; 15 uses
  %i.dv = extractvalue { ptr, ptr } %i.dt, 1      ; 19 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69165)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !69166
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.du), "nonnull"(ptr %i.dv) ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !invariant.load !99, !noalias !69167, !nonnull !99 ; 2 uses
  %i.dy = invoke { i64, i64 } %i.dx(ptr noundef nonnull %i.du)
          to label %.noexc.i.i3.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !69167, !inline_history !69086 ; 2 uses

.noexc.i.i3.i.i.i:                                ; preds = %bb.z
  %i.dz = extractvalue { i64, i64 } %i.dy, 0
  %i.ea = trunc nuw i64 %i.dz to i1
  br i1 %i.ea, label %bb.aa, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index30decompose_segment_no_deletions0ENtNtB22_8iterator8Iterator4nextB37_.exit.i.i.i.i.i

bb.aa:                                            ; preds = %.noexc.i.i3.i.i.i
  %i.eb = extractvalue { i64, i64 } %i.dy, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !69166
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !invariant.load !99, !noalias !69168, !nonnull !99 ; 2 uses
  invoke void %i.ed(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.du)
          to label %bb.ae unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !69169, !inline_history !69094

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index30decompose_segment_no_deletions0ENtNtB22_8iterator8Iterator4nextB37_.exit.i.i.i.i.i: ; preds = %.noexc.i.i3.i.i.i
  store i64 0, ptr %i.d, align 8, !alias.scope !69165, !noalias !69164
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8, !alias.scope !69165, !noalias !69164
  store i64 0, ptr %i.q, align 8, !alias.scope !69165, !noalias !69164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !69166
  %i.ee = load ptr, ptr %i.dv, align 8, !invariant.load !99, !noalias !69170 ; 2 uses
  %.not.i.i.i.i.i4.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i.i.i4.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index30decompose_segment_no_deletions0ENtNtB22_8iterator8Iterator4nextB37_.exit.i.i.i.i.i
  invoke void %i.ee(ptr noundef nonnull %i.du)
          to label %bb.ac unwind label %bb.ad, !noalias !69170

bb.ac:                                            ; preds = %bb.ab, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index30decompose_segment_no_deletions0ENtNtB22_8iterator8Iterator4nextB37_.exit.i.i.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !range !103, !invariant.load !99, !noalias !69170 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecTyyEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1F_9enumerate9EnumerateINtNtB6_5boxed3BoxDNtNtNtB1H_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index30decompose_segment_no_deletions0EE9from_iterB4k_.exit.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i6.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i6.i.i.i: ; preds = %bb.ac
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !range !125, !invariant.load !99, !noalias !69170
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.du, i64 noundef %i.eg, i64 noundef range(i64 1, -9223372036854775807) %i.ej) #76, !noalias !69170
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecTyyEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1F_9enumerate9EnumerateINtNtB6_5boxed3BoxDNtNtNtB1H_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index30decompose_segment_no_deletions0EE9from_iterB4k_.exit.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.em = load i64, ptr %i.el, align 8, !range !103, !invariant.load !99, !noalias !69170 ; 2 uses
  %i.en = icmp eq i64 %i.em, 0
  br i1 %i.en, label %common.resume.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i5.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i5.i.i.i: ; preds = %bb.ad
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !range !125, !invariant.load !99, !noalias !69170
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.du, i64 noundef %i.em, i64 noundef range(i64 1, -9223372036854775807) %i.ep) #76, !noalias !69170
  br label %common.resume.i.i.i

bb.ae:                                            ; preds = %bb.aa
  %i.eq = load i64, ptr %i.b, align 8, !noalias !69166, !noundef !99 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69166
  %i.er = call i64 @llvm.uadd.sat.i64(i64 %i.eq, i64 1)
  %.sroa.0.0.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.er, i64 4) ; 3 uses
  %i.es = shl i64 %.sroa.0.0.i.i.i.i.i.i, 4       ; 4 uses
  %i.et = icmp ugt i64 %i.eq, 1152921504606846974
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.es, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i = or i1 %i.et, %.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.ag, label %2, !prof !100

2:                                                ; preds = %bb.ae
  %3 = icmp eq i64 %i.es, 0
  br i1 %3, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %2
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !69171
  %i.eu = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.es, i64 noundef range(i64 1, 9) 8) #76, !noalias !69171 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 8, %bb.af ], [ 0, %bb.ae ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.es) #80
          to label %.noexc13.i.i20.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !69172

.noexc13.i.i20.i.i.i:                             ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.af, %2
  %.sroa.10.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %2 ], [ %i.eu, %bb.af ] ; 4 uses
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ 0, %2 ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.af ] ; 2 uses
  %4 = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i
  call void @llvm.assume(i1 %4)
  store i64 %i.eb, ptr %.sroa.10.0.i.i.i.i.i.i, align 8, !noalias !69172
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i, i64 8
  store i64 %i.aa, ptr %i.ew, align 8, !noalias !69172
  store i64 %.sroa.4.0.i.i.i.i.i.i, ptr %i.c, align 8, !noalias !69166
  store ptr %.sroa.10.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i7.i.i.i, align 8, !noalias !69166
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i8.i.i.i, align 8, !noalias !69166
  call void @llvm.experimental.noalias.scope.decl(metadata !69173)
  call void @llvm.experimental.noalias.scope.decl(metadata !69174)
  br label %bb.ai

bb.ai:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTyyEE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i18.i.i.i, %bb.ah
  %i.ex = phi ptr [ %i.fu, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTyyEE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i18.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i, %bb.ah ]
  %i.ey = phi i64 [ %i.fx, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTyyEE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i18.i.i.i ], [ 1, %bb.ah ] ; 5 uses
  %.in.i.i9.i.i.i = phi i64 [ %i.ez, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTyyEE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i18.i.i.i ], [ 0, %bb.ah ]
  %i.ez = add nuw nsw i64 %.in.i.i9.i.i.i, 1      ; 2 uses
  %i.fa = invoke { i64, i64 } %i.dx(ptr noundef nonnull %i.du)
          to label %.noexc.i.i.i.i14.i.i.i unwind label %bb.ao, !noalias !69175, !inline_history !69086 ; 2 uses

.noexc.i.i.i.i14.i.i.i:                           ; preds = %bb.ai
  %i.fb = extractvalue { i64, i64 } %i.fa, 0
  %i.fc = trunc nuw i64 %i.fb to i1
  br i1 %i.fc, label %bb.aj, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index30decompose_segment_no_deletions0ENtNtB22_8iterator8Iterator4nextB37_.exit.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %.noexc.i.i.i.i14.i.i.i
  %i.fd = extractvalue { i64, i64 } %i.fa, 1
  %i.fe = add i64 %i.ez, %i.aa
  %i.ff = icmp samesign ult i64 %i.ey, 576460752303423488
  call void @llvm.assume(i1 %i.ff)
  %i.fg = load i64, ptr %i.c, align 8, !range !103, !alias.scope !69176, !noalias !69166, !noundef !99
  %i.fh = icmp eq i64 %i.ey, %i.fg
  br i1 %i.fh, label %bb.an, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTyyEE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i18.i.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index30decompose_segment_no_deletions0ENtNtB22_8iterator8Iterator4nextB37_.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i14.i.i.i
  %i.fi = load ptr, ptr %i.dv, align 8, !invariant.load !99, !noalias !69177 ; 2 uses
  %.not.i.i.i.i.i.i.i15.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i.i.i.i15.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index30decompose_segment_no_deletions0ENtNtB22_8iterator8Iterator4nextB37_.exit.i.i.i.i.i.i.i
  invoke void %i.fi(ptr noundef nonnull %i.du)
          to label %bb.al unwind label %bb.am, !noalias !69177

bb.al:                                            ; preds = %bb.ak, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index30decompose_segment_no_deletions0ENtNtB22_8iterator8Iterator4nextB37_.exit.i.i.i.i.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !range !103, !invariant.load !99, !noalias !69177 ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTyyEEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1m_9enumerate9EnumerateINtNtB6_5boxed3BoxDNtNtNtB1o_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index30decompose_segment_no_deletions0EE11spec_extendB41_.exit.i.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i17.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i17.i.i.i: ; preds = %bb.al
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !range !125, !invariant.load !99, !noalias !69177
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.du, i64 noundef %i.fk, i64 noundef range(i64 1, -9223372036854775807) %i.fn) #76, !noalias !69177
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTyyEEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1m_9enumerate9EnumerateINtNtB6_5boxed3BoxDNtNtNtB1o_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index30decompose_segment_no_deletions0EE11spec_extendB41_.exit.i.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.fo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !range !103, !invariant.load !99, !noalias !69177 ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %.body.i.i10.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i16.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i16.i.i.i: ; preds = %bb.am
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.ft = load i64, ptr %i.fs, align 8, !range !125, !invariant.load !99, !noalias !69177
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.du, i64 noundef %i.fq, i64 noundef range(i64 1, -9223372036854775807) %i.ft) #76, !noalias !69177
  br label %.body.i.i10.i.i.i

bb.an:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69178
  invoke void %i.ed(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.du)
          to label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index30decompose_segment_no_deletions0ENtNtB22_8iterator8Iterator9size_hintB37_.exit.i.i.i.i.i.i.i unwind label %bb.ao, !noalias !69179, !inline_history !69094

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTyyEE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i18.i.i.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index30decompose_segment_no_deletions0ENtNtB22_8iterator8Iterator9size_hintB37_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTyyEE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i.i.i.i.i, %bb.aj
  %i.fu = phi ptr [ %.pre.i.i19.i.i.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index30decompose_segment_no_deletions0ENtNtB22_8iterator8Iterator9size_hintB37_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTyyEE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i.i.i.i.i ], [ %i.ex, %bb.aj ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.fu, i64 %i.ey ; 2 uses
  store i64 %i.fd, ptr %i.fv, align 8, !noalias !69180
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store i64 %i.fe, ptr %i.fw, align 8, !noalias !69180
  %i.fx = add nuw nsw i64 %i.ey, 1                ; 2 uses
  store i64 %i.fx, ptr %.sroa.6.0..sroa_idx.i.i8.i.i.i, align 8, !alias.scope !69176, !noalias !69166
  br label %bb.ai

bb.ao:                                            ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index30decompose_segment_no_deletions0ENtNtB22_8iterator8Iterator9size_hintB37_.exit.i.i.i.i.i.i.i, %bb.an, %bb.ai
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index30decompose_segment_no_deletions0EEB3k_(ptr nonnull %i.du, ptr nonnull %i.dv) #81
          to label %.body.i.i10.i.i.i unwind label %bb.ap, !noalias !69180

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index30decompose_segment_no_deletions0ENtNtB22_8iterator8Iterator9size_hintB37_.exit.i.i.i.i.i.i.i: ; preds = %bb.an
  %i.fz = load i64, ptr %i.a, align 8, !noalias !69178, !noundef !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69178
  %i.ga = call i64 @llvm.uadd.sat.i64(i64 %i.fz, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.ey, i64 noundef range(i64 1, 0) %i.ga, i64 noundef 8, i64 noundef 16)
          to label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index30decompose_segment_no_deletions0ENtNtB22_8iterator8Iterator9size_hintB37_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTyyEE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i.i.i.i.i unwind label %bb.ao, !noalias !69181

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index30decompose_segment_no_deletions0ENtNtB22_8iterator8Iterator9size_hintB37_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTyyEE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index30decompose_segment_no_deletions0ENtNtB22_8iterator8Iterator9size_hintB37_.exit.i.i.i.i.i.i.i
  %.pre.i.i19.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i7.i.i.i, align 8, !alias.scope !69176, !noalias !69166
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTyyEE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i18.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !69180
  unreachable

.body.i.i10.i.i.i:                                ; preds = %bb.ao, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i16.i.i.i, %bb.am
  %eh.lpad-body.i.i11.i.i.i = phi { ptr, i32 } [ %i.fy, %bb.ao ], [ %i.fo, %bb.am ], [ %i.fo, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i16.i.i.i ] ; 2 uses
  %.val.i.i12.i.i.i = load i64, ptr %i.c, align 8, !noalias !69166 ; 2 uses
  %i.gc = icmp eq i64 %.val.i.i12.i.i.i, 0
  br i1 %i.gc, label %common.resume.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %.body.i.i10.i.i.i
  %.val5.i.i13.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i7.i.i.i, align 8, !noalias !69166, !nonnull !99, !noundef !99
  %i.gd = shl nuw i64 %.val.i.i12.i.i.i, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i13.i.i.i, i64 noundef %i.gd, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !69172
  br label %common.resume.i.i.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTyyEEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1m_9enumerate9EnumerateINtNtB6_5boxed3BoxDNtNtNtB1o_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index30decompose_segment_no_deletions0EE11spec_extendB41_.exit.i.i.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i17.i.i.i, %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !69182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !69166
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecTyyEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1F_9enumerate9EnumerateINtNtB6_5boxed3BoxDNtNtNtB1H_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index30decompose_segment_no_deletions0EE9from_iterB4k_.exit.i.i.i.i

.body.i.i.i.i:                                    ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i, %bb.at
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !69172
  unreachable

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.z, %bb.aa, %bb.ag
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ge = load ptr, ptr %i.dv, align 8, !invariant.load !99, !noalias !69183 ; 2 uses
  %.not.i.i.i22.i.i.i.i = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i22.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  invoke void %i.ge(ptr noundef nonnull %i.du)
          to label %bb.as unwind label %bb.at, !noalias !69183

bb.as:                                            ; preds = %bb.ar, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !range !103, !invariant.load !99, !noalias !69183 ; 2 uses
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %common.resume.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.as
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.gj = load i64, ptr %i.gi, align 8, !range !125, !invariant.load !99, !noalias !69183
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.du, i64 noundef %i.gg, i64 noundef range(i64 1, -9223372036854775807) %i.gj) #76, !noalias !69183
  br label %common.resume.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !range !103, !invariant.load !99, !noalias !69183 ; 2 uses
  %i.gn = icmp eq i64 %i.gm, 0
  br i1 %i.gn, label %.body.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i: ; preds = %bb.at
  %i.go = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.gp = load i64, ptr %i.go, align 8, !range !125, !invariant.load !99, !noalias !69183
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.du, i64 noundef %i.gm, i64 noundef range(i64 1, -9223372036854775807) %i.gp) #76, !noalias !69183
  br label %.body.i.i.i.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecTyyEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1F_9enumerate9EnumerateINtNtB6_5boxed3BoxDNtNtNtB1H_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index30decompose_segment_no_deletions0EE9from_iterB4k_.exit.i.i.i.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTyyEEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1m_9enumerate9EnumerateINtNtB6_5boxed3BoxDNtNtNtB1o_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index30decompose_segment_no_deletions0EE11spec_extendB41_.exit.i.i.i.i.i, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i6.i.i.i, %bb.ac
  call fastcc void @_RNvNtNtCs9KQ7US1M400_11lance_table6rowids5index22build_chunk_from_pairs(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(136) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !69157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !69164
  br label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index18decompose_sequence0INtB7_5FnMutTRNtNtBU_7segment10U64SegmentEE8call_mutBW_.exit.i

bb.au:                                            ; preds = %bb.x
  store i64 -1, ptr %i.r, align 8, !alias.scope !69163
  br label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index18decompose_sequence0INtB7_5FnMutTRNtNtBU_7segment10U64SegmentEE8call_mutBW_.exit.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index18decompose_sequence0INtB7_5FnMutTRNtNtBU_7segment10U64SegmentEE8call_mutBW_.exit.i: ; preds = %bb.au, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecTyyEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1F_9enumerate9EnumerateINtNtB6_5boxed3BoxDNtNtNtB1H_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index30decompose_segment_no_deletions0EE9from_iterB4k_.exit.i.i.i.i, %bb.y, %_RNvNtNtCs9KQ7US1M400_11lance_table6rowids5index32decompose_segment_with_deletions.exit.i.i.i
  %i.gq = trunc i64 %i.v to i32
  %i.gr = load ptr, ptr %i.l, align 8, !alias.scope !69129, !noalias !69130, !nonnull !99, !align !203, !noundef !99 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !noalias !69128, !noundef !99
  %i.gt = add i32 %i.gs, %i.gq
  store i32 %i.gt, ptr %i.gr, align 4, !noalias !69128
  %i.gu = load i64, ptr %i.z, align 8, !noalias !69128, !noundef !99
  %i.gv = add i64 %i.gu, %i.v
  store i64 %i.gv, ptr %i.z, align 8, !noalias !69128
  %i.gw = load i64, ptr %i.r, align 8, !range !178, !alias.scope !69120, !noundef !99
  %.not.i = icmp eq i64 %i.gw, -1
  br i1 %.not.i, label %bb.b, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapTINtNtNtBb_3ops5range14RangeInclusiveyETBQ_BQ_EEQNCNvNtBU_5index18decompose_sequence0EBW_.exit

bb.av:                                            ; preds = %bb.b
  store i64 -1, ptr %i.r, align 8, !alias.scope !69120
  br label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapTINtNtNtBb_3ops5range14RangeInclusiveyETBQ_BQ_EEQNCNvNtBU_5index18decompose_sequence0EBW_.exit

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapTINtNtNtBb_3ops5range14RangeInclusiveyETBQ_BQ_EEQNCNvNtBU_5index18decompose_sequence0EBW_.exit: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index18decompose_sequence0INtB7_5FnMutTRNtNtBU_7segment10U64SegmentEE8call_mutBW_.exit.i, %bb.av
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtCskTBvlRM5ILY_4moka6common11timer_wheel15TimerEventsIterNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENCNCNvMsd_NtNtB1h_6future10base_cacheINtB3b_5InnerB2b_NtB2d_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE34evict_expired_entries_using_timers00ENtNtNtB9_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !69207 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69210)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 42 ; 3 uses
  %i.b = load i8, ptr %i.a, align 2, !range !108, !alias.scope !69211, !noundef !99
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_RINvYINtNtNtCskTBvlRM5ILY_4moka6common11timer_wheel15TimerEventsIterNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8find_mapTINtNtCs40k4W9msRzi_5alloc4sync3ArcB14_EybEQNCNCNvMsd_NtNtBa_6future10base_cacheINtB3Q_5InnerB14_NtB16_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE34evict_expired_entries_using_timers00ECs9KQ7US1M400_11lance_table.exit, label %.preheader.i.lr.ph.i.i

.preheader.i.lr.ph.i.i:                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 43 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 41 ; 2 uses
end_hunk_7
begin_hunk_8_@_RNvXs9_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB5_14FragReuseIndexNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children:bb.a
  %.sroa.04.0.i.i = phi i64 [ %i.aa, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtBa_6option6OptionyEEjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2q_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4r_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2i_EE0E0Cs9KQ7US1M400_11lance_table.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ %i.z, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtBa_6option6OptionyEEjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2q_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4r_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2i_EE0E0Cs9KQ7US1M400_11lance_table.exit.i.i ], [ 0, %bb.a ]
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %.sroa.04.0.i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76148)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !76149, !noalias !76145, !noundef !99 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !76149, !noalias !76145, !noundef !99
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76150)
  %i.l = load ptr, ptr %i.g, align 8, !alias.scope !76151, !noalias !76145, !nonnull !99, !noundef !99 ; 2 uses
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !76152
  %i.m = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = bitcast <16 x i1> %i.m to i16
  br label %.outer.i.i.i.i.i.i.i

.outer.i.i.i.i.i.i.i:                             ; preds = %._crit_edge.i.i.i.i.i.i.i, %.preheader.i
  %i.p = phi i16 [ %i.s, %._crit_edge.i.i.i.i.i.i.i ], [ %i.o, %.preheader.i ] ; 2 uses
  %.lcssa2631.i.i.i.i.i.i.i = phi ptr [ %.lcssa2630.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ], [ %i.n, %.preheader.i ] ; 2 uses
  %.sroa.0.0.ph.i.i.i.i.i.i.i = phi i64 [ %i.t, %._crit_edge.i.i.i.i.i.i.i ], [ %i.i, %.preheader.i ] ; 2 uses
  %.not22.i.i.i.i.i.i.i = icmp eq i16 %i.p, 0
  br i1 %.not22.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.outer.i.i.i.i.i.i.i
  %i.q = icmp eq i64 %.sroa.0.0.ph.i.i.i.i.i.i.i, 0
  br i1 %i.q, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtBa_6option6OptionyEEjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2q_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4r_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2i_EE0E0Cs9KQ7US1M400_11lance_table.exit.i.i, label %.lr.ph.split.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.split.i.i.i.i.i.i.i, %.outer.i.i.i.i.i.i.i
  %.lcssa2630.i.i.i.i.i.i.i = phi ptr [ %.lcssa2631.i.i.i.i.i.i.i, %.outer.i.i.i.i.i.i.i ], [ %i.w, %.lr.ph.split.i.i.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.p, %.outer.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i ] ; 2 uses
  %i.r = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.s = and i16 %i.r, %.lcssa.i.i.i.i.i.i.i
  %i.t = add i64 %.sroa.0.0.ph.i.i.i.i.i.i.i, -1
  br label %.outer.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i
  %i.u = phi ptr [ %i.w, %.lr.ph.split.i.i.i.i.i.i.i ], [ %.lcssa2631.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.val18.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.u, align 16, !noalias !76153
  %i.v = icmp sgt <16 x i8> %.val18.i.i.i.i.i.i.i, splat (i8 -1)
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.v to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtBa_6option6OptionyEEjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2q_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4r_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2i_EE0E0Cs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.x = add i64 %i.k, %i.i
  %i.y = mul i64 %i.x, 25
  %i.z = add i64 %i.y, %.sroa.02.0.i.i            ; 2 uses
  %i.aa = add nuw i64 %.sroa.04.0.i.i, 1          ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.e
  br i1 %i.ab, label %_RNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtCscI6d9CVNmLh_4core6option6OptionyEEENtB5_10DeepSizeOf21deep_size_of_childrenCs9KQ7US1M400_11lance_table.exit, label %.preheader.i

_RNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtCscI6d9CVNmLh_4core6option6OptionyEEENtB5_10DeepSizeOf21deep_size_of_childrenCs9KQ7US1M400_11lance_table.exit: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtBa_6option6OptionyEEjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2q_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4r_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2i_EE0E0Cs9KQ7US1M400_11lance_table.exit.i.i, %bb.a
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.a ], [ %i.z, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtBa_6option6OptionyEEjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2q_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4r_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2i_EE0E0Cs9KQ7US1M400_11lance_table.exit.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76155)
  %i.ad = load i64, ptr %i.ac, align 8, !range !103, !alias.scope !76156, !noundef !99
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !76156, !nonnull !99, !noundef !99
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !76156, !noundef !99 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RNvXsE_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB5_21FragReuseIndexDetailsNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_RNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtCscI6d9CVNmLh_4core6option6OptionyEEENtB5_10DeepSizeOf21deep_size_of_childrenCs9KQ7US1M400_11lance_table.exit, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.bu, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i ], [ 0, %_RNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtCscI6d9CVNmLh_4core6option6OptionyEEENtB5_10DeepSizeOf21deep_size_of_childrenCs9KQ7US1M400_11lance_table.exit ] ; 2 uses
  %.sroa.02.0.i.i.i = phi i64 [ %i.bt, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i ], [ 0, %_RNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtCscI6d9CVNmLh_4core6option6OptionyEEENtB5_10DeepSizeOf21deep_size_of_childrenCs9KQ7US1M400_11lance_table.exit ]
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %.sroa.04.0.i.i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76160)
  %i.ak = load i64, ptr %i.aj, align 8, !range !103, !alias.scope !76161, !noalias !76156, !noundef !99
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !76161, !noalias !76156, !nonnull !99, !noundef !99 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !76161, !noalias !76156, !noundef !99 ; 5 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i, label %.preheader.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %.preheader.i.i
  %xtraiter = and i64 %i.ao, 1
  %i.aq = icmp eq i64 %i.ao, 1
  br i1 %i.aq, label %.preheader.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.preheader.new:           ; preds = %.preheader.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.ao, -2
  br label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader.new
  %.sroa.04.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %i.bi, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %i.bh, %.preheader.i.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw [72 x i8], ptr %i.am, i64 %.sroa.04.0.i.i.i.i.i.i.i.i ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !range !103, !alias.scope !76162, !noalias !76163, !noundef !99
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.au = load i64, ptr %i.at, align 8, !range !103, !alias.scope !76164, !noalias !76163, !noundef !99
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.aw = load i64, ptr %i.av, align 8, !range !103, !alias.scope !76165, !noalias !76163, !noundef !99
  %reass.add.i.i.i.i.i.i.i.i.i.i.i = add nuw i64 %i.aw, %i.au
  %reass.mul.i.i.i.i.i.i.i.i.i.i.i = mul i64 %reass.add.i.i.i.i.i.i.i.i.i.i.i, 24
  %i.ax = add i64 %i.as, %.sroa.02.0.i.i.i.i.i.i.i.i
  %i.ay = add i64 %i.ax, %reass.mul.i.i.i.i.i.i.i.i.i.i.i
  %i.az = getelementptr inbounds nuw [72 x i8], ptr %i.am, i64 %.sroa.04.0.i.i.i.i.i.i.i.i ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  %i.bb = load i64, ptr %i.ba, align 8, !range !103, !alias.scope !76162, !noalias !76163, !noundef !99
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  %i.bd = load i64, ptr %i.bc, align 8, !range !103, !alias.scope !76164, !noalias !76163, !noundef !99
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 120
  %i.bf = load i64, ptr %i.be, align 8, !range !103, !alias.scope !76165, !noalias !76163, !noundef !99
  %reass.add.i.i.i.i.i.i.i.i.i.i.i.1 = add nuw i64 %i.bf, %i.bd
  %reass.mul.i.i.i.i.i.i.i.i.i.i.i.1 = mul i64 %reass.add.i.i.i.i.i.i.i.i.i.i.i.1, 24
  %i.bg = add i64 %i.bb, %i.ay
  %i.bh = add i64 %i.bg, %reass.mul.i.i.i.i.i.i.i.i.i.i.i.1 ; 3 uses
  %i.bi = add nuw i64 %.sroa.04.0.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i.loopexit.unr-lcssa, label %.preheader.i.i.i.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i, label %.preheader.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.epil.preheader:          ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.i.preheader
  %.sroa.04.0.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader ], [ %i.bi, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader ], [ %i.bh, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod22 = trunc i64 %i.ao to i1
  tail call void @llvm.assume(i1 %lcmp.mod22)
  %i.bj = getelementptr inbounds nuw [72 x i8], ptr %i.am, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.epil.init ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !range !103, !alias.scope !76162, !noalias !76163, !noundef !99
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !range !103, !alias.scope !76164, !noalias !76163, !noundef !99
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bo = load i64, ptr %i.bn, align 8, !range !103, !alias.scope !76165, !noalias !76163, !noundef !99
  %reass.add.i.i.i.i.i.i.i.i.i.i.i.epil = add nuw i64 %i.bo, %i.bm
  %reass.mul.i.i.i.i.i.i.i.i.i.i.i.epil = mul i64 %reass.add.i.i.i.i.i.i.i.i.i.i.i.epil, 24
  %i.bp = add i64 %i.bk, %.sroa.02.0.i.i.i.i.i.i.i.i.epil.init
  %i.bq = add i64 %i.bp, %reass.mul.i.i.i.i.i.i.i.i.i.i.i.epil
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.epil.preheader, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i.loopexit.unr-lcssa, %.preheader.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.bh, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i.loopexit.unr-lcssa ], [ %i.bq, %.preheader.i.i.i.i.i.i.i.epil.preheader ]
  %i.br = mul i64 %i.ak, 72
  %i.bs = add i64 %i.br, %.sroa.02.0.i.i.i
  %i.bt = add i64 %i.bs, %.sroa.0.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.bu = add nuw i64 %.sroa.04.0.i.i.i, 1        ; 2 uses
  %i.bv = icmp eq i64 %i.bu, %i.ah
  br i1 %i.bv, label %_RNvXsE_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB5_21FragReuseIndexDetailsNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children.exit, label %.preheader.i.i

_RNvXsE_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB5_21FragReuseIndexDetailsNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children.exit: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i, %_RNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtCscI6d9CVNmLh_4core6option6OptionyEEENtB5_10DeepSizeOf21deep_size_of_childrenCs9KQ7US1M400_11lance_table.exit
  %.sroa.0.0.i.i.i = phi i64 [ 0, %_RNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyINtNtCscI6d9CVNmLh_4core6option6OptionyEEENtB5_10DeepSizeOf21deep_size_of_childrenCs9KQ7US1M400_11lance_table.exit ], [ %i.bt, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse16FragReuseVersionjjNCNvXs9_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc3vec3VecBV_ENtB2k_10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2c_EE0E0B11_.exit.i.i.i ]
  %i.bw = mul i64 %i.a, 48
  %i.bx = shl i64 %i.ad, 5
  %i.by = add i64 %.sroa.0.0.i.i, %i.bw
  %i.bz = add i64 %i.by, %i.bx
  %i.ca = add i64 %i.bz, %.sroa.0.0.i.i.i
  ret i64 %i.ca
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs9_NtNtCs9KQ7US1M400_11lance_table12system_index7mem_walNtNtNtB9_6format2pb13ShardManifestINtNtCscI6d9CVNmLh_4core7convert4FromRNtB5_13ShardManifestE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(136) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !76275 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 11 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !76276
  %i.i = tail call noundef dereferenceable_or_null(16) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !76276 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 16) #80, !noalias !76277
  unreachable

bb.c:                                             ; preds = %._crit_edge19.i.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.l, i64 16, i1 false), !noalias !76278
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.n = load i64, ptr %i.m, align 8, !noundef !99
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.p = load i32, ptr %i.o, align 8, !noundef !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76279)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !76279, !nonnull !99, !noundef !99 ; 4 uses
  %.val3.i.i = load <16 x i8>, ptr %i.r, align 16, !noalias !76280
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !76279, !noundef !99 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76281)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !76282
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.noexc.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %.not12.i.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge19.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.y = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %i.x, %bb.e ] ; 2 uses
  %i.z = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %i.r, %bb.e ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.y, align 16, !noalias !76283
  %i.aa = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -768 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.aa to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge19.i.i.i.i

._crit_edge19.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i, %bb.e
  %.sroa.7.0 = phi ptr [ %i.x, %bb.e ], [ %i.ac, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sroa.026.0 = phi ptr [ %i.r, %bb.e ], [ %i.ab, %.lr.ph.i.i.i.i ] ; 3 uses
  %.lcssa.i.i.i.i = phi i16 [ %i.w, %bb.e ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ad = add i16 %.lcssa.i.i.i.i, -1
  %i.ae = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = and i16 %i.ad, %.lcssa.i.i.i.i          ; 2 uses
  %i.ah = sub nsw i64 0, %i.af
  %i.ai = getelementptr inbounds [48 x i8], ptr %.sroa.026.0, i64 %i.ah ; 3 uses
  %i.aj = add i64 %i.t, -1                        ; 3 uses
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -48
  %i.al = getelementptr i8, ptr %i.ai, i64 -16
  %.val.i13 = load ptr, ptr %i.al, align 8, !noalias !76284 ; 2 uses
  %i.am = getelementptr i8, ptr %i.ai, i64 -8
  %.val3.i = load i64, ptr %i.am, align 8, !noalias !76284 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !76285
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak)
          to label %.noexc16 unwind label %bb.c, !noalias !76286

.noexc16:                                         ; preds = %._crit_edge19.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i13) ], !noalias !76281
  %i.an = icmp eq i64 %.val3.i, 0                 ; 2 uses
  br i1 %i.an, label %.noexc, label %bb.f

bb.f:                                             ; preds = %.noexc16
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !76287
  %i.ao = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val3.i, i64 noundef range(i64 1, 9) 1) #76, !noalias !76287 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val3.i) #80
          to label %.noexc.i.i unwind label %bb.i, !noalias !76288

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr nonnull readonly align 1 %.val.i13, i64 range(i64 0, -9223372036854775808) %.val3.i, i1 false), !noalias !76289
  br label %.noexc

bb.i:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76290), !noalias !76281
  %.val.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !76290, !noalias !76285 ; 2 uses
  %i.ar = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ar, label %bb.an, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val1.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !76290, !noalias !76285, !nonnull !99, !noundef !99
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !76291
  br label %bb.an

.noexc:                                           ; preds = %.noexc16, %bb.h
  %.sroa.5.0.i.i = phi ptr [ %i.ao, %bb.h ], [ inttoptr (i64 1 to ptr), %.noexc16 ] ; 2 uses
  %.sroa.034.0.copyload35 = load i64, ptr %i.a, align 8, !noalias !76292 ; 4 uses
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.736.0.copyload37 = load ptr, ptr %.sroa.736.0..sroa_idx, align 8, !noalias !76292 ; 3 uses
  %.sroa.838.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.838.0.copyload39 = load i64, ptr %.sroa.838.0..sroa_idx, align 8, !noalias !76292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !76285
  %.not.i = icmp eq i64 %.sroa.034.0.copyload35, -1
  br i1 %.not.i, label %.noexc.thread, label %bb.n

.noexc.thread:                                    ; preds = %bb.d, %.noexc
  store i64 0, ptr %i.h, align 8, !alias.scope !76281
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.at, align 8, !alias.scope !76281
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %i.au, align 8, !alias.scope !76281
  br label %bb.ag

bb.k:                                             ; preds = %bb.q
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = icmp eq i64 %.sroa.034.0.copyload35, 0
  br i1 %i.aw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.736.0.copyload37) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.736.0.copyload37, i64 noundef %.sroa.034.0.copyload35, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !76293
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.l, %bb.k
  br i1 %i.an, label %bb.an, label %bb.m

bb.m:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.i.i, i64 noundef %.val3.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !76294
  br label %bb.an

bb.n:                                             ; preds = %.noexc
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.t, i64 4) ; 3 uses
  %i.ax = mul i64 %.sroa.0.0.i.i, 48              ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.aj, 192153584101141161
  br i1 %or.cond.i.i.i, label %bb.q, label %bb.o, !prof !100

bb.o:                                             ; preds = %bb.n
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !76295
  %i.az = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ax, i64 noundef range(i64 1, 9) 8) #76, !noalias !76295 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.n
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.p ], [ 0, %bb.n ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ax) #80
          to label %.noexc.i unwind label %bb.k, !noalias !76282

.noexc.i:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.o
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.o ], [ %i.az, %bb.p ] ; 8 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.o ], [ %.sroa.0.0.i.i, %bb.p ] ; 2 uses
  %i.bb = icmp ule i64 %.sroa.0.0.i.i, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.bb)
  store i64 %.sroa.034.0.copyload35, ptr %.sroa.10.0.i.i, align 8, !noalias !76282
  %.sroa.736.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store ptr %.sroa.736.0.copyload37, ptr %.sroa.736.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !76282
  %.sroa.838.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 16
  store i64 %.sroa.838.0.copyload39, ptr %.sroa.838.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !76282
  %.sroa.840.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 24
  store i64 %.val3.i, ptr %.sroa.840.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !76282
  %.sroa.1041.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 32
  store ptr %.sroa.5.0.i.i, ptr %.sroa.1041.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !76282
  %.sroa.12.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 40
  store i64 %.val3.i, ptr %.sroa.12.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !76282
  store i64 %.sroa.4.0.i.i, ptr %i.g, align 8, !noalias !76282
  %.sroa.4.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i3, align 8, !noalias !76282
  %.sroa.6.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i4, align 8, !noalias !76282
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76297)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !76298
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76299)
  %i.bc = icmp eq i64 %i.aj, 0
  br i1 %i.bc, label %.loopexit54.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not12.i.i.i.i11.i = icmp eq i16 %i.ag, 0
  br i1 %.not12.i.i.i.i11.i, label %.lr.ph.i.i.i.i26.i, label %._crit_edge19.i.i.i.i12.i

.lr.ph.i.i.i.i26.i:                               ; preds = %bb.s, %.lr.ph.i.i.i.i26.i
  %i.bd = phi ptr [ %i.bh, %.lr.ph.i.i.i.i26.i ], [ %.sroa.7.0, %bb.s ] ; 2 uses
  %i.be = phi ptr [ %i.bg, %.lr.ph.i.i.i.i26.i ], [ %.sroa.026.0, %bb.s ]
  %.val10.i.i.i.i29.i = load <16 x i8>, ptr %i.bd, align 16, !noalias !76300
  %i.bf = icmp sgt <16 x i8> %.val10.i.i.i.i29.i, splat (i8 -1)
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -768 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %.cast.i.i.i.i30.i = bitcast <16 x i1> %i.bf to i16 ; 2 uses
  %.not.i.i.i.i31.i = icmp eq i16 %.cast.i.i.i.i30.i, 0
  br i1 %.not.i.i.i.i31.i, label %.lr.ph.i.i.i.i26.i, label %._crit_edge19.i.i.i.i12.i

._crit_edge19.i.i.i.i12.i:                        ; preds = %.lr.ph.i.i.i.i26.i, %bb.s
  %.sroa.9.3.i = phi ptr [ %.sroa.7.0, %bb.s ], [ %i.bh, %.lr.ph.i.i.i.i26.i ]
  %.sroa.037.3.i = phi ptr [ %.sroa.026.0, %bb.s ], [ %i.bg, %.lr.ph.i.i.i.i26.i ] ; 2 uses
  %.lcssa.i.i.i.i14.i = phi i16 [ %i.ag, %bb.s ], [ %.cast.i.i.i.i30.i, %.lr.ph.i.i.i.i26.i ] ; 3 uses
  %i.bi = add i16 %.lcssa.i.i.i.i14.i, -1
  %i.bj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i14.i, i1 true)
  %i.bk = zext nneg i16 %i.bj to i64
  %i.bl = and i16 %i.bi, %.lcssa.i.i.i.i14.i
  %i.bm = sub nsw i64 0, %i.bk
  %i.bn = getelementptr inbounds [48 x i8], ptr %.sroa.037.3.i, i64 %i.bm ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -48
  %i.bp = getelementptr i8, ptr %i.bn, i64 -16
  %.val.i15.i = load ptr, ptr %i.bp, align 8, !noalias !76301 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bn, i64 -8
  %.val3.i16.i = load i64, ptr %i.bq, align 8, !noalias !76301 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !76302
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bo)
          to label %.noexc33.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !76303

.noexc33.i:                                       ; preds = %._crit_edge19.i.i.i.i12.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i15.i) ], !noalias !76304
  %i.br = icmp eq i64 %.val3.i16.i, 0
  br i1 %i.br, label %.noexc6.i, label %bb.t

bb.t:                                             ; preds = %.noexc33.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !76305
  %i.bs = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val3.i16.i, i64 noundef range(i64 1, 9) 1) #76, !noalias !76305 ; 3 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val3.i16.i) #80
          to label %.noexc.i.i25.i unwind label %bb.w, !noalias !76306

.noexc.i.i25.i:                                   ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bs, ptr nonnull readonly align 1 %.val.i15.i, i64 range(i64 0, -9223372036854775808) %.val3.i16.i, i1 false), !noalias !76307
  br label %.noexc6.i

bb.w:                                             ; preds = %bb.u
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76308), !noalias !76304
  %.val.i.i.i22.i = load i64, ptr %i.d, align 8, !alias.scope !76308, !noalias !76302 ; 2 uses
  %i.bv = icmp eq i64 %.val.i.i.i22.i, 0
  br i1 %i.bv, label %.body.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i.i23.i = load ptr, ptr %i.bw, align 8, !alias.scope !76308, !noalias !76302, !nonnull !99, !noundef !99
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i23.i, i64 noundef %.val.i.i.i22.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !76309
  br label %.body.i

.noexc6.i:                                        ; preds = %bb.v, %.noexc33.i
  %.sroa.5.0.i.i18.i = phi ptr [ %i.bs, %bb.v ], [ inttoptr (i64 1 to ptr), %.noexc33.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !76310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !76302
  %.sroa.4.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  store i64 %.val3.i16.i, ptr %.sroa.4.0..sroa_idx.i19.i, align 8, !alias.scope !76299, !noalias !76311
  %.sroa.5.0..sroa_idx.i20.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  store ptr %.sroa.5.0.i.i18.i, ptr %.sroa.5.0..sroa_idx.i20.i, align 8, !alias.scope !76299, !noalias !76311
  %.sroa.6.0..sroa_idx.i21.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  store i64 %.val3.i16.i, ptr %.sroa.6.0..sroa_idx.i21.i, align 8, !alias.scope !76299, !noalias !76311
  %.pr.i = load i64, ptr %i.f, align 8, !noalias !76312
  %.not4.i.i.i = icmp eq i64 %.pr.i, -1
  br i1 %.not4.i.i.i, label %.loopexit54.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc6.i, %.noexc7.i
  %i.bx = phi ptr [ %i.cb, %.noexc7.i ], [ %.sroa.10.0.i.i, %.noexc6.i ]
  %.sroa.1740.0.in.i = phi i64 [ %.sroa.1740.0.i, %.noexc7.i ], [ %i.aj, %.noexc6.i ] ; 2 uses
  %.sroa.1338.0.i = phi i16 [ %i.cn, %.noexc7.i ], [ %i.bl, %.noexc6.i ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.9.1.i, %.noexc7.i ], [ %.sroa.9.3.i, %.noexc6.i ] ; 2 uses
  %.sroa.037.0.i = phi ptr [ %.sroa.037.1.i, %.noexc7.i ], [ %.sroa.037.3.i, %.noexc6.i ] ; 2 uses
  %i.by = phi i64 [ %i.cd, %.noexc7.i ], [ 1, %.noexc6.i ] ; 4 uses
  %.sroa.1740.0.i = add nsw i64 %.sroa.1740.0.in.i, -1 ; 2 uses
  %i.bz = load i64, ptr %i.g, align 8, !range !103, !alias.scope !76304, !noalias !76282, !noundef !99
  %i.ca = icmp eq i64 %i.by, %i.bz
  br i1 %i.ca, label %bb.af, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb15ShardFieldEntryE7reserveBK_.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb15ShardFieldEntryE7reserveBK_.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb15ShardFieldEntryE7reserveBK_.exit.i.i_crit_edge.i, %.lr.ph.i.i.i
  %i.cb = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb15ShardFieldEntryE7reserveBK_.exit.i.i_crit_edge.i ], [ %i.bx, %.lr.ph.i.i.i ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [48 x i8], ptr %i.cb, i64 %i.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cc, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !76312
  %i.cd = add nuw nsw i64 %i.by, 1                ; 2 uses
  store i64 %i.cd, ptr %.sroa.6.0..sroa_idx.i4, align 8, !alias.scope !76304, !noalias !76282
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76313)
  %i.ce = icmp eq i64 %.sroa.1740.0.i, 0
  br i1 %i.ce, label %.loopexit54.i, label %bb.y

bb.y:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb15ShardFieldEntryE7reserveBK_.exit.i.i.i
  %.not12.i.i.i.i.i = icmp eq i16 %.sroa.1338.0.i, 0
  br i1 %.not12.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.y, %.lr.ph.i.i.i.i.i
  %i.cf = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i ], [ %.sroa.9.0.i, %bb.y ] ; 2 uses
  %i.cg = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i ], [ %.sroa.037.0.i, %bb.y ]
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.cf, align 16, !noalias !76314
  %i.ch = icmp sgt <16 x i8> %.val10.i.i.i.i.i, splat (i8 -1)
  %i.ci = getelementptr inbounds i8, ptr %i.cg, i64 -768 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.ch to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i

._crit_edge19.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i, %bb.y
  %.sroa.9.1.i = phi ptr [ %.sroa.9.0.i, %bb.y ], [ %i.cj, %.lr.ph.i.i.i.i.i ]
  %.sroa.037.1.i = phi ptr [ %.sroa.037.0.i, %bb.y ], [ %i.ci, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %.sroa.1338.0.i, %bb.y ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.ck = add i16 %.lcssa.i.i.i.i.i, -1
  %i.cl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.cm = zext nneg i16 %i.cl to i64
  %i.cn = and i16 %i.ck, %.lcssa.i.i.i.i.i
  %i.co = sub nsw i64 0, %i.cm
  %i.cp = getelementptr inbounds [48 x i8], ptr %.sroa.037.1.i, i64 %i.co ; 3 uses
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -48
  %i.cr = getelementptr i8, ptr %i.cp, i64 -16
  %.val.i.i = load ptr, ptr %i.cr, align 8, !noalias !76315 ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cp, i64 -8
  %.val3.i.i5 = load i64, ptr %i.cs, align 8, !noalias !76315 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !76316
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cq)
          to label %.noexc8.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !76317

.noexc8.i:                                        ; preds = %._crit_edge19.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !76304
  %i.ct = icmp eq i64 %.val3.i.i5, 0
  br i1 %i.ct, label %.noexc7.i, label %bb.z

bb.z:                                             ; preds = %.noexc8.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !76318
  %i.cu = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val3.i.i5, i64 noundef range(i64 1, 9) 1) #76, !noalias !76318 ; 3 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val3.i.i5) #80
          to label %.noexc.i.i.i unwind label %bb.ac, !noalias !76319

.noexc.i.i.i:                                     ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cu, ptr nonnull readonly align 1 %.val.i.i, i64 range(i64 0, -9223372036854775808) %.val3.i.i5, i1 false), !noalias !76320
  br label %.noexc7.i

bb.ac:                                            ; preds = %bb.aa
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76321), !noalias !76304
  %.val.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !76321, !noalias !76316 ; 2 uses
  %i.cx = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.cx, label %.body.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.cy, align 8, !alias.scope !76321, !noalias !76316, !nonnull !99, !noundef !99
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !76322
  br label %.body.i

.noexc7.i:                                        ; preds = %bb.ab, %.noexc8.i
  %.sroa.5.0.i.i.i = phi ptr [ %i.cu, %bb.ab ], [ inttoptr (i64 1 to ptr), %.noexc8.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !76323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !76316
  store i64 %.val3.i.i5, ptr %.sroa.4.0..sroa_idx.i19.i, align 8, !alias.scope !76313, !noalias !76311
  store ptr %.sroa.5.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i20.i, align 8, !alias.scope !76313, !noalias !76311
  store i64 %.val3.i.i5, ptr %.sroa.6.0..sroa_idx.i21.i, align 8, !alias.scope !76313, !noalias !76311
  %.pr48.i = load i64, ptr %i.f, align 8, !noalias !76312
  %.not.i.i5.i = icmp eq i64 %.pr48.i, -1
  br i1 %.not.i.i5.i, label %.loopexit54.i, label %.lr.ph.i.i.i

bb.ae:                                            ; preds = %bb.af
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb15ShardFieldEntryEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.f) #81, !noalias !76312
  br label %.body.i

bb.af:                                            ; preds = %.lr.ph.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.by, i64 noundef range(i64 1, 0) %.sroa.1740.0.in.i, i64 noundef 8, i64 noundef 48)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb15ShardFieldEntryE7reserveBK_.exit.i.i_crit_edge.i unwind label %bb.ae, !noalias !76324

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb15ShardFieldEntryE7reserveBK_.exit.i.i_crit_edge.i: ; preds = %bb.af
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i3, align 8, !alias.scope !76304, !noalias !76282
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb15ShardFieldEntryE7reserveBK_.exit.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %._crit_edge19.i.i.i.i.i, %._crit_edge19.i.i.i.i12.i
  %lpad.loopexit.split-lp97 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ae, %bb.ad, %bb.ac, %bb.x, %bb.w
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cz, %bb.ae ], [ %i.cw, %bb.ac ], [ %i.cw, %bb.ad ], [ %i.bu, %bb.w ], [ %i.bu, %bb.x ], [ %lpad.loopexit.split-lp97, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb15ShardFieldEntryEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.g) #81, !noalias !76282
  br label %bb.an

.loopexit54.i:                                    ; preds = %.noexc7.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb15ShardFieldEntryE7reserveBK_.exit.i.i.i, %.noexc6.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !76298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !76325
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit54.i, %.noexc.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !76282
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.db = load <2 x i64>, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.dd = load <2 x i64>, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !nonnull !99, !noundef !99
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !99 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !76326
  %.idx = shl nuw nsw i64 %i.dh, 5                ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb7SsTableE7reserveBK_.exit.i.i.thread.i, label %bb.ah

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb7SsTableE7reserveBK_.exit.i.i.thread.i: ; preds = %bb.ag
  store i64 0, ptr %i.c, align 8, !noalias !76326
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dj, align 8, !noalias !76326
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !76327
  %i.dl = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.idx, i64 noundef range(i64 1, 9) 8) #76, !noalias !76327 ; 3 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %.idx) #80
          to label %.noexc8 unwind label %bb.am, !noalias !76326

.noexc8:                                          ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ah
  store i64 %i.dh, ptr %i.c, align 8, !noalias !76326
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.dl, ptr %i.dn, align 8, !noalias !76326
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76329)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %bb.aj
  %.val15.i.i.i.i.i.i = phi i64 [ 0, %bb.aj ], [ %i.du, %bb.al ] ; 4 uses
  %i.dq = getelementptr inbounds nuw [32 x i8], ptr %i.df, i64 %.val15.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76330)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !76331
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !76332, !noalias !76331, !noundef !99
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dq)
          to label %bb.al unwind label %.body.i6, !noalias !76333

bb.al:                                            ; preds = %bb.ak
  store i64 %i.ds, ptr %i.dp, align 8, !noalias !76334
  %i.dt = getelementptr inbounds nuw [32 x i8], ptr %i.dl, i64 %.val15.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dt, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !76333
  %i.du = add nuw i64 %.val15.i.i.i.i.i.i, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !76331
  %i.dv = icmp eq i64 %i.du, %i.dh
  br i1 %i.dv, label %.loopexit, label %bb.ak

.body.i6:                                         ; preds = %bb.ak
  %i.dw = landingpad { ptr, i32 }
          cleanup
  store i64 %.val15.i.i.i.i.i.i, ptr %i.do, align 8, !alias.scope !76335, !noalias !76336
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb7SsTableEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.c) #81, !noalias !76326
  br label %.body9

bb.am:                                            ; preds = %bb.ai
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.body9

end_hunk_8
begin_hunk_9_@_RNvXsb_NtNtCs9KQ7US1M400_11lance_table6format8manifestNtNtB7_2pb8ManifestINtNtCscI6d9CVNmLh_4core7convert4FromRNtB5_8ManifestE4from:bb.a

bb.al:                                            ; preds = %bb.ag
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.am:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 208
  invoke fastcc void @_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.df)
          to label %bb.ap unwind label %bb.ao

bb.an:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit, %bb.ao
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit ], [ %i.dg, %bb.ao ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.x) #81
  br label %bb.ak

bb.ao:                                            ; preds = %bb.am
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ap:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.di = load i64, ptr %i.dh, align 16, !noundef !99
  %i.dj = load i64, ptr %1, align 16, !range !107, !noundef !99 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !range !101, !noundef !99
  %.not31 = icmp eq i64 %i.dn, -1
  br i1 %.not31, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dm)
          to label %bb.at unwind label %bb.as

bb.ar:                                            ; preds = %bb.ap, %bb.at
  %.sroa.897.0 = phi i64 [ %.sroa.5102.0.copyload, %bb.at ], [ 0, %bb.ap ]
  %.sroa.694.0 = phi ptr [ %.sroa.4101.0.copyload, %bb.at ], [ inttoptr (i64 1 to ptr), %bb.ap ] ; 2 uses
  %.sroa.092.0 = phi i64 [ %.sroa.0100.0.copyload, %bb.at ], [ 0, %bb.ap ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.dp = load <2 x i64>, ptr %i.do, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.dr = load <2 x i32>, ptr %i.dq, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 16, !range !101, !noundef !99
  %.not32 = icmp eq i64 %i.dt, -1
  br i1 %.not32, label %bb.av, label %bb.au

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.aw, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit53, %bb.as
  %.pn34.pn.pn = phi { ptr, i32 } [ %i.du, %bb.as ], [ %.pn34.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit53 ], [ %.pn34.pn, %bb.aw ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.w)
  br label %bb.an

bb.as:                                            ; preds = %bb.aq
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit

bb.at:                                            ; preds = %bb.aq
  %.sroa.0100.0.copyload = load i64, ptr %i.q, align 8
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.4101.0.copyload = load ptr, ptr %.sroa.4101.0..sroa_idx, align 8
  %.sroa.5102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.5102.0.copyload = load i64, ptr %.sroa.5102.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ar

bb.au:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ds)
          to label %bb.ay unwind label %bb.ax

bb.av:                                            ; preds = %bb.ar, %bb.ay
  %.sroa.8108.0 = phi i64 [ %.sroa.5113.0.copyload, %bb.ay ], [ 0, %bb.ar ]
  %.sroa.6105.0 = phi ptr [ %.sroa.4112.0.copyload, %bb.ay ], [ inttoptr (i64 1 to ptr), %bb.ar ] ; 2 uses
  %.sroa.0103.0 = phi i64 [ %.sroa.0111.0.copyload, %bb.ay ], [ 0, %bb.ar ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.dw = load i64, ptr %i.dv, align 8, !noundef !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dx)
          to label %switch.lookup unwind label %bb.ba

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit53: ; preds = %bb.az, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit56, %bb.ax
  %.pn34.pn = phi { ptr, i32 } [ %i.dz, %bb.ax ], [ %.pn34, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit56 ], [ %.pn34, %bb.az ] ; 2 uses
  %i.dy = icmp eq i64 %.sroa.092.0, 0
  br i1 %i.dy, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit, label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit53
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.694.0, i64 noundef %.sroa.092.0, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !79405
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit

bb.ax:                                            ; preds = %bb.au
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit53

bb.ay:                                            ; preds = %bb.au
  %.sroa.0111.0.copyload = load i64, ptr %i.p, align 8
  %.sroa.4112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.4112.0.copyload = load ptr, ptr %.sroa.4112.0..sroa_idx, align 8
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.5113.0.copyload = load i64, ptr %.sroa.5113.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.av

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit56: ; preds = %bb.bf, %bb.bc, %bb.bb, %bb.ba
  %.pn34 = phi { ptr, i32 } [ %i.eb, %bb.ba ], [ %.pn, %bb.bf ], [ %i.eh, %bb.bb ], [ %i.eh, %bb.bc ] ; 2 uses
  %i.ea = icmp eq i64 %.sroa.0103.0, 0
  br i1 %i.ea, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit53, label %bb.az

bb.az:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit56
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6105.0, i64 noundef %.sroa.0103.0, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !79406
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit53

bb.ba:                                            ; preds = %bb.av
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit56

switch.lookup:                                    ; preds = %bb.av
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ed = load i8, ptr %i.ec, align 8, !range !157, !noundef !99
  %i.ee = zext nneg i8 %i.ed to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsb_NtNtCs9KQ7US1M400_11lance_table6format8manifestNtNtB7_2pb8ManifestINtNtCscI6d9CVNmLh_4core7convert4FromRNtB5_8ManifestE4from, i64 %i.ee
  %switch.load = load ptr, ptr %switch.gep, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !79407
  %i.ef = call noundef dereferenceable_or_null(3) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 3, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !79407 ; 3 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %bb.bd, label %bb.be

bb.bb:                                            ; preds = %bb.bd
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !79408)
  %.val.i54 = load i64, ptr %i.u, align 8, !alias.scope !79408 ; 2 uses
  %i.ei = icmp eq i64 %.val.i54, 0
  br i1 %i.ei, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit56, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ej = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val1.i55 = load ptr, ptr %i.ej, align 8, !alias.scope !79408, !nonnull !99, !noundef !99
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i55, i64 noundef %.val.i54, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !79408
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit56

bb.bd:                                            ; preds = %switch.lookup
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 3) #80
          to label %bb.cg unwind label %bb.bb

bb.be:                                            ; preds = %switch.lookup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ef, ptr noundef nonnull align 1 dereferenceable(3) %switch.load, i64 3, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 3, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.ef, ptr %.sroa.527.0..sroa_idx, align 8
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store i64 3, ptr %.sroa.628.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 160
  invoke fastcc void @_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ek)
          to label %bb.bi unwind label %bb.bg

bb.bf:                                            ; preds = %.body74, %bb.bg
  %.pn = phi { ptr, i32 } [ %eh.lpad-body75, %.body74 ], [ %i.el, %bb.bg ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb8manifest17DataStorageFormatEEB15_(ptr noalias noundef align 8 dereferenceable(48) %i.v) #81
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit56

bb.bg:                                            ; preds = %bb.be
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bh:                                            ; preds = %bb.bk
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body74

.body74:                                          ; preds = %bb.bq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit.i77, %bb.bm, %bb.bn, %.body.i67, %bb.bh
  %eh.lpad-body75 = phi { ptr, i32 } [ %i.em, %bb.bh ], [ %i.fo, %bb.bm ], [ %i.fo, %bb.bn ], [ %eh.lpad-body.i68, %.body.i67 ], [ %i.fp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit.i77 ], [ %i.fp, %bb.bq ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.t)
  br label %bb.bf

bb.bi:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @llvm.experimental.noalias.scope.decl(metadata !79409)
  %i.eo = load ptr, ptr %i.en, align 16, !alias.scope !79409, !nonnull !99, !noundef !99 ; 4 uses
  %.val3.i.i57 = load <16 x i8>, ptr %i.eo, align 16, !noalias !79410
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.eq = load i64, ptr %i.ep, align 8, !alias.scope !79409, !noundef !99 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !79411
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.cf, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.es = icmp sgt <16 x i8> %.val3.i.i57, splat (i8 -1)
  %i.et = bitcast <16 x i1> %i.es to i16          ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq i16 %i.et, 0
  br i1 %.not12.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bj, %.lr.ph.i.i.i.i.i
  %i.ev = phi ptr [ %i.ez, %.lr.ph.i.i.i.i.i ], [ %i.eu, %bb.bj ] ; 2 uses
  %i.ew = phi ptr [ %i.ey, %.lr.ph.i.i.i.i.i ], [ %i.eo, %bb.bj ]
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.ev, align 16, !noalias !79412
  %i.ex = icmp sgt <16 x i8> %.val10.i.i.i.i.i, splat (i8 -1)
  %i.ey = getelementptr inbounds i8, ptr %i.ew, i64 -1024 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.ex to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i

._crit_edge19.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i, %bb.bj
  %.sroa.6123.0 = phi ptr [ %i.eu, %bb.bj ], [ %i.ez, %.lr.ph.i.i.i.i.i ]
  %.sroa.014.0.copyload.i = phi ptr [ %i.eo, %bb.bj ], [ %i.ey, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %i.et, %bb.bj ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.fa = add i16 %.lcssa.i.i.i.i.i, -1
  %i.fb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.fc = zext nneg i16 %i.fb to i64
  %i.fd = and i16 %i.fa, %.lcssa.i.i.i.i.i
  %i.fe = sub nsw i64 0, %i.fc
  %i.ff = getelementptr inbounds [64 x i8], ptr %.sroa.014.0.copyload.i, i64 %i.fe ; 4 uses
  %i.fg = add i64 %i.eq, -1                       ; 3 uses
  %i.fh = getelementptr inbounds i8, ptr %i.ff, i64 -56
  call void @llvm.experimental.noalias.scope.decl(metadata !79413)
  %i.fi = getelementptr inbounds i8, ptr %i.ff, i64 -8
  %i.fj = load i32, ptr %i.fi, align 8, !alias.scope !79413, !noalias !79414, !noundef !99
  %i.fk = getelementptr inbounds i8, ptr %i.ff, i64 -32 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !range !101, !alias.scope !79413, !noalias !79414, !noundef !99
  %.not.i.i.i = icmp eq i64 %i.fl, -1
  br i1 %.not.i.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge19.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !79415
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fk)
          to label %.noexc73 unwind label %bb.bh, !noalias !79416

.noexc73:                                         ; preds = %bb.bk
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.d, align 8, !noalias !79415
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.0.copyload.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !79415
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.7.0.copyload.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !79415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !79415
  br label %bb.bl

bb.bl:                                            ; preds = %.noexc73, %._crit_edge19.i.i.i.i.i
  %.sroa.7.0.i.i.i = phi i64 [ %.sroa.7.0.copyload.i.i.i, %.noexc73 ], [ undef, %._crit_edge19.i.i.i.i.i ]
  %.sroa.6.0.i.i.i = phi ptr [ %.sroa.6.0.copyload.i.i.i, %.noexc73 ], [ undef, %._crit_edge19.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %.noexc73 ], [ -1, %._crit_edge19.i.i.i.i.i ] ; 5 uses
  %i.fm = getelementptr inbounds i8, ptr %i.ff, i64 -4
  %i.fn = load i8, ptr %i.fm, align 4, !range !108, !alias.scope !79413, !noalias !79414, !noundef !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !79415
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fh)
          to label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i unwind label %bb.bm, !noalias !79416

bb.bm:                                            ; preds = %bb.bl
  %i.fo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i.i.i.i = add i64 %.sroa.0.0.i.i.i, -1
  %switch.i.i.i.i = icmp ult i64 %.0.val.off.i.i.i.i, -2
  br i1 %switch.i.i.i.i, label %bb.bn, label %.body74

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.i.i.i, i64 noundef %.sroa.0.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !79417
  br label %.body74

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i: ; preds = %bb.bl
  %.sroa.0.0.copyload10.i = load i64, ptr %i.e, align 8, !noalias !79418 ; 4 uses
  %.sroa.7.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.7.i.sroa.0.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx11.i, align 8, !noalias !79418 ; 3 uses
  %.sroa.7.i.sroa.5.0..sroa.7.0..sroa_idx11.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.7.i.sroa.5.0.copyload = load i64, ptr %.sroa.7.i.sroa.5.0..sroa.7.0..sroa_idx11.i.sroa_idx, align 8, !noalias !79418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !79415
  %.not.i62 = icmp eq i64 %.sroa.0.0.copyload10.i, -1
  br i1 %.not.i62, label %bb.cf, label %bb.br

bb.bo:                                            ; preds = %bb.bu
  %i.fp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fq = icmp sgt i64 %.sroa.0.0.i.i.i, 0
  br i1 %i.fq, label %bb.bp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit.i77

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.i.i.i, i64 noundef %.sroa.0.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !79419
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit.i77

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit.i77: ; preds = %bb.bp, %bb.bo
  %i.fr = icmp eq i64 %.sroa.0.0.copyload10.i, 0
  br i1 %i.fr, label %.body74, label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit.i77
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.i.sroa.0.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.i.sroa.0.0.copyload, i64 noundef %.sroa.0.0.copyload10.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !79420
  br label %.body74

bb.br:                                            ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i
  %.sroa.0.0.i.i = call noundef i64 @llvm.umax.i64(i64 %i.eq, i64 4) ; 3 uses
  %i.fs = mul i64 %.sroa.0.0.i.i, 56              ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.fg, 164703072086692424
  br i1 %or.cond.i.i.i, label %bb.bu, label %bb.bs, !prof !100

bb.bs:                                            ; preds = %bb.br
  %i.ft = icmp eq i64 %i.fs, 0
  br i1 %i.ft, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !79421
  %i.fu = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.fs, i64 noundef range(i64 1, 9) 8) #76, !noalias !79421 ; 2 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt, %bb.br
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.bt ], [ 0, %bb.br ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.fs) #80
          to label %.noexc.i72 unwind label %bb.bo, !noalias !79411

.noexc.i72:                                       ; preds = %bb.bu
  unreachable

bb.bv:                                            ; preds = %bb.bt, %bb.bs
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.bs ], [ %i.fu, %bb.bt ] ; 11 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.bs ], [ %.sroa.0.0.i.i, %bb.bt ] ; 3 uses
  %i.fw = icmp ule i64 %.sroa.0.0.i.i, %.sroa.4.0.i.i
  call void @llvm.assume(i1 %i.fw)
  store i64 %.sroa.0.0.copyload10.i, ptr %.sroa.10.0.i.i, align 8, !noalias !79411
  %.sroa.5150.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store ptr %.sroa.7.i.sroa.0.0.copyload, ptr %.sroa.5150.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !79411
  %.sroa.7151.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 16
  store i64 %.sroa.7.i.sroa.5.0.copyload, ptr %.sroa.7151.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !79411
  %.sroa.7152.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 24
  store i64 %.sroa.0.0.i.i.i, ptr %.sroa.7152.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !79411
  %.sroa.9153.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 32
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.9153.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !79411
  %.sroa.11154.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 40
  store i64 %.sroa.7.0.i.i.i, ptr %.sroa.11154.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !79411
  %.sroa.12.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 48
  store i32 %i.fj, ptr %.sroa.12.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !79411
  %.sroa.13.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 52
  store i8 %i.fn, ptr %.sroa.13.0..sroa.10.0.i.i.sroa_idx, align 4, !noalias !79411
  store i64 %.sroa.4.0.i.i, ptr %i.f, align 8, !noalias !79411
  %.sroa.4.0..sroa_idx.i64 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i64, align 8, !noalias !79411
  %.sroa.6.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i65, align 8, !noalias !79411
  call void @llvm.experimental.noalias.scope.decl(metadata !79422)
  call void @llvm.experimental.noalias.scope.decl(metadata !79423)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.fx = icmp eq i64 %i.fg, 0
  br i1 %i.fx, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bv
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.7.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.0..sroa_idx.i.i6.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.76.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  br label %bb.bw

bb.bw:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i, %.lr.ph.i.i.i
  %i.fy = phi ptr [ %.sroa.10.0.i.i, %.lr.ph.i.i.i ], [ %i.gw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i ] ; 2 uses
  %i.fz = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.gy, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i ] ; 5 uses
  %.lcssa27.i.i.i = phi ptr [ %.sroa.6123.0, %.lr.ph.i.i.i ], [ %.lcssa26.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i ] ; 2 uses
  %i.ga = phi i16 [ %i.fd, %.lr.ph.i.i.i ], [ %i.gj, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i ] ; 2 uses
  %.val1823.i.i.i = phi i64 [ %i.fg, %.lr.ph.i.i.i ], [ %i.gm, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i ] ; 2 uses
  %.lcssa152122.i.i.i = phi ptr [ %.sroa.014.0.copyload.i, %.lr.ph.i.i.i ], [ %.lcssa1520.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %i.ga, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i69, label %._crit_edge19.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i69:                           ; preds = %bb.bw, %.lr.ph.i.i.i.i.i.i.i69
  %i.gb = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i.i.i69 ], [ %.lcssa27.i.i.i, %bb.bw ] ; 2 uses
  %i.gc = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i.i.i69 ], [ %.lcssa152122.i.i.i, %bb.bw ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.gb, align 16, !noalias !79424
  %i.gd = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ge = getelementptr inbounds i8, ptr %i.gc, i64 -1024 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i70 = bitcast <16 x i1> %i.gd to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i71 = icmp eq i16 %.cast.i.i.i.i.i.i.i70, 0
  br i1 %.not.i.i.i.i.i.i.i71, label %.lr.ph.i.i.i.i.i.i.i69, label %._crit_edge19.i.i.i.i.i.i.i

._crit_edge19.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i69, %bb.bw
  %.lcssa26.i.i.i = phi ptr [ %.lcssa27.i.i.i, %bb.bw ], [ %i.gf, %.lr.ph.i.i.i.i.i.i.i69 ]
  %.lcssa1520.i.i.i = phi ptr [ %.lcssa152122.i.i.i, %bb.bw ], [ %i.ge, %.lr.ph.i.i.i.i.i.i.i69 ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i66 = phi i16 [ %i.ga, %bb.bw ], [ %.cast.i.i.i.i.i.i.i70, %.lr.ph.i.i.i.i.i.i.i69 ] ; 3 uses
  %i.gg = add i16 %.lcssa.i.i.i.i.i.i.i66, -1
  %i.gh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i66, i1 true)
  %i.gi = zext nneg i16 %i.gh to i64
  %i.gj = and i16 %i.gg, %.lcssa.i.i.i.i.i.i.i66
  %i.gk = sub nsw i64 0, %i.gi
  %i.gl = getelementptr inbounds [64 x i8], ptr %.lcssa1520.i.i.i, i64 %i.gk ; 4 uses
  %i.gm = add nsw i64 %.val1823.i.i.i, -1         ; 2 uses
  %i.gn = getelementptr inbounds i8, ptr %i.gl, i64 -56
  call void @llvm.experimental.noalias.scope.decl(metadata !79425)
  %i.go = getelementptr inbounds i8, ptr %i.gl, i64 -8
  %i.gp = load i32, ptr %i.go, align 8, !alias.scope !79425, !noalias !79426, !noundef !99
  %i.gq = getelementptr inbounds i8, ptr %i.gl, i64 -32 ; 2 uses
  %i.gr = load i64, ptr %i.gq, align 8, !range !101, !alias.scope !79425, !noalias !79426, !noundef !99
  %.not.i.i.i.i7.i = icmp eq i64 %i.gr, -1
  br i1 %.not.i.i.i.i7.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %._crit_edge19.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !79427
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gq)
          to label %.noexc9.i unwind label %bb.ce, !noalias !79428

.noexc9.i:                                        ; preds = %bb.bx
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !79427
  %.sroa.6.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !79427
  %.sroa.7.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !79427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !79427
  br label %bb.by

bb.by:                                            ; preds = %.noexc9.i, %._crit_edge19.i.i.i.i.i.i.i
  %.sroa.7.0.i.i.i.i.i = phi i64 [ %.sroa.7.0.copyload.i.i.i.i.i, %.noexc9.i ], [ undef, %._crit_edge19.i.i.i.i.i.i.i ]
  %.sroa.6.0.i.i.i.i.i = phi ptr [ %.sroa.6.0.copyload.i.i.i.i.i, %.noexc9.i ], [ undef, %._crit_edge19.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i.i, %.noexc9.i ], [ -1, %._crit_edge19.i.i.i.i.i.i.i ] ; 3 uses
  %i.gs = getelementptr inbounds i8, ptr %i.gl, i64 -4
  %i.gt = load i8, ptr %i.gs, align 4, !range !108, !alias.scope !79425, !noalias !79426, !noundef !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !79427
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.gn)
          to label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i.i.i unwind label %bb.bz, !noalias !79428

bb.bz:                                            ; preds = %bb.by
  %i.gu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i.i.i.i.i.i = add i64 %.sroa.0.0.i.i.i.i.i, -1
  %switch.i.i.i.i.i.i = icmp ult i64 %.0.val.off.i.i.i.i.i.i, -2
  br i1 %switch.i.i.i.i.i.i, label %bb.ca, label %.body.i67

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.i.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.i.i.i.i.i, i64 noundef %.sroa.0.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !79429
  br label %.body.i67

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i.i.i: ; preds = %bb.by
  %.sroa.0.0.copyload4.i.i.i = load i64, ptr %i.b, align 8, !noalias !79430 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx5.i.i.i, i64 16, i1 false), !noalias !79430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !79427
  %.not.i.i8.i = icmp eq i64 %.sroa.0.0.copyload4.i.i.i, -1
  %.sroa.0114.0.copyload115.pre.pre186 = load i64, ptr %i.f, align 8, !noalias !79431 ; 2 uses
  br i1 %.not.i.i8.i, label %.loopexit.i, label %bb.cb

bb.cb:                                            ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !79432
  store i64 %.sroa.0.0.copyload4.i.i.i, ptr %i.c, align 8, !noalias !79432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, i64 16, i1 false), !noalias !79432
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %.sroa.76.0..sroa_idx.i.i.i, align 8, !noalias !79432
  store ptr %.sroa.6.0.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !79432
  store i64 %.sroa.7.0.i.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !79432
  store i32 %i.gp, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !79432
  store i8 %i.gt, ptr %.sroa.11.0..sroa_idx.i.i.i, align 4, !noalias !79432
  %i.gv = icmp eq i64 %i.fz, %.sroa.0114.0.copyload115.pre.pre186
  br i1 %i.gv, label %bb.cd, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i_crit_edge.i, %bb.cb
  %i.gw = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i_crit_edge.i ], [ %i.fy, %bb.cb ] ; 3 uses
  %i.gx = getelementptr inbounds nuw [56 x i8], ptr %i.gw, i64 %i.fz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gx, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !79432
  %i.gy = add nuw nsw i64 %i.fz, 1                ; 3 uses
  store i64 %i.gy, ptr %.sroa.6.0..sroa_idx.i65, align 8, !alias.scope !79433, !noalias !79411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !79432
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.gz = icmp eq i64 %i.gm, 0
  br i1 %i.gz, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i..loopexit.i.loopexit_crit_edge, label %bb.bw

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i..loopexit.i.loopexit_crit_edge: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i
  %.sroa.0114.0.copyload115.pre.pre = load i64, ptr %i.f, align 8, !noalias !79431
  br label %.loopexit.i

bb.cc:                                            ; preds = %bb.cd
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathEBH_(ptr noalias noundef align 8 dereferenceable(56) %i.c) #81, !noalias !79432
  br label %.body.i67

bb.cd:                                            ; preds = %bb.cb
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.fz, i64 noundef %.val1823.i.i.i, i64 noundef 8, i64 noundef 56)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i_crit_edge.i unwind label %bb.cc, !noalias !79434

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i_crit_edge.i: ; preds = %bb.cd
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i64, align 8, !alias.scope !79433, !noalias !79411
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i

bb.ce:                                            ; preds = %bb.bx
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i67

.body.i67:                                        ; preds = %bb.ce, %bb.cc, %bb.ca, %bb.bz
  %eh.lpad-body.i68 = phi { ptr, i32 } [ %i.hb, %bb.ce ], [ %i.ha, %bb.cc ], [ %i.gu, %bb.ca ], [ %i.gu, %bb.bz ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.f) #81, !noalias !79411
  br label %.body74

.loopexit.i:                                      ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i..loopexit.i.loopexit_crit_edge, %bb.bv
  %.sroa.6119.0.copyload121 = phi i64 [ 1, %bb.bv ], [ %i.gy, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i..loopexit.i.loopexit_crit_edge ], [ %i.fz, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i.i.i ]
  %.sroa.5116.0.copyload118 = phi ptr [ %.sroa.10.0.i.i, %bb.bv ], [ %i.gw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i..loopexit.i.loopexit_crit_edge ], [ %i.fy, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i.i.i ]
  %.sroa.0114.0.copyload115 = phi i64 [ %.sroa.4.0.i.i, %bb.bv ], [ %.sroa.0114.0.copyload115.pre.pre, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i..loopexit.i.loopexit_crit_edge ], [ %.sroa.0114.0.copyload115.pre.pre186, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  br label %bb.cf

bb.cf:                                            ; preds = %.loopexit.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i, %bb.bi
  %.sroa.6119.0 = phi i64 [ %.sroa.6119.0.copyload121, %.loopexit.i ], [ 0, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i ], [ 0, %bb.bi ]
  %.sroa.5116.0 = phi ptr [ %.sroa.5116.0.copyload118, %.loopexit.i ], [ inttoptr (i64 8 to ptr), %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i ], [ inttoptr (i64 8 to ptr), %bb.bi ]
  %.sroa.0114.0 = phi i64 [ %.sroa.0114.0.copyload115, %.loopexit.i ], [ 0, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i ], [ 0, %bb.bi ]
  %i.hc = trunc nuw i64 %i.dj to i1
  %.sroa.53.0 = select i1 %i.hc, i64 %i.dl, i64 undef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !79411
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.he = load i64, ptr %i.hd, align 16, !range !107, !noundef !99 ; 2 uses
  %i.hf = trunc nuw i64 %i.he to i1
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hh = load i64, ptr %i.hg, align 8
  %.sroa.59.0 = select i1 %i.hf, i64 %i.hh, i64 undef
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hi, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hj, ptr noundef nonnull align 8 dereferenceable(48) %i.z, i64 48, i1 false)
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hk, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i64 %i.ce, ptr %i.hl, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i64 %i.di, ptr %i.hm, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.hn, ptr noundef nonnull align 8 dereferenceable(96) %i.y, i64 96, i1 false)
  store i64 %i.dj, ptr %0, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.53.0, ptr %i.ho, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0, ptr %i.hp, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.3.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.092.0, ptr %i.hq, align 8
  %.sroa.694.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.694.0, ptr %.sroa.694.0..sroa_idx95, align 8
  %.sroa.897.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.897.0, ptr %.sroa.897.0..sroa_idx98, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 512
  store <2 x i64> %i.dp, ptr %i.hr, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 344
  store <2 x i32> %i.dr, ptr %i.hs, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %.sroa.0103.0, ptr %i.ht, align 8
  %.sroa.6105.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.6105.0, ptr %.sroa.6105.0..sroa_idx106, align 8
  %.sroa.8108.0..sroa_idx109 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %.sroa.8108.0, ptr %.sroa.8108.0..sroa_idx109, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.he, ptr %i.hu, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.59.0, ptr %i.hv, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i64 %i.dw, ptr %i.hw, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hx, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false)
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hy, ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 48, i1 false)
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hz, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false)
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %.sroa.0114.0, ptr %i.ia, align 8
  %.sroa.5116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.sroa.5116.0, ptr %.sroa.5116.0..sroa_idx, align 8
  %.sroa.6119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %.sroa.6119.0, ptr %.sroa.6119.0..sroa_idx, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %.sroa.085.0, ptr %i.ib, align 8
  %.sroa.687.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %.sroa.687.0, ptr %.sroa.687.0..sroa_idx88, align 8
  %.sroa.7.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx90, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.ic = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1A_3vec3VechEEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ic)
  ret void

bb.cg:                                            ; preds = %bb.bd
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB5_11UringReaderNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !79435 {
end_hunk_9
begin_hunk_10_@_RNvMs5_NtCsjjbR6Jfsbqw_8lance_io5utilsNtB5_14CachedFileSize3get
declare noundef i64 @_RNvMs5_NtCsjjbR6Jfsbqw_8lance_io5utilsNtB5_14CachedFileSize3get(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCskTBvlRM5ILY_4moka6common16frequency_sketchNtB2_15FrequencySketch9increment(ptr noalias noundef align 8 dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs8_NtNtCskTBvlRM5ILY_4moka6future10base_cacheNtB5_21EntrySizeAndFrequency13add_frequency(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fptoui.sat.i64.f64(double) #65

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvNtCskTBvlRM5ILY_4moka6common15sketch_capacity(i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCskTBvlRM5ILY_4moka6common16frequency_sketchNtB2_15FrequencySketch15ensure_capacity(ptr noalias noundef align 8 dereferenceable(32), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsp_NtCs9ipI1vyGjpZ_12tracing_core5fieldNtNtCs40k4W9msRzi_5alloc6string6StringNtB5_5Value6record(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB5_11ObjectStore4list(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer5union(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder15null_bit_buffer(ptr dead_on_unwind noalias noundef writable sret([184 x i8]) align 8 captures(none) dereferenceable(184), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(184), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder5build(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(none) dereferenceable(136), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(184)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvNtCs4ytUTZt2Gw9_11arrow_array5array10make_array(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(136)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs6_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorE4from(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCs63DIHKhvmTb_10lance_core5utils8deletionNtB4_14DeletionVector15build_predicate(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_NtNtCs63DIHKhvmTb_10lance_core5utils8deletionNtB4_14DeletionVector8contains(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCseXbohGRa9jr_5tokio4task4coop14register_waker(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvMs1_Cs3PfUT229lOd_12object_storeNtB5_9GetResult11into_stream(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(192)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsE_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB5_6Schema20field_ancestry_by_id(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB5_6Schema12max_field_id(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field9data_type(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding25populate_field_dictionary(ptr noalias noundef align 8 dereferenceable(192), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap13serializationNtB4_13RoaringBitmap15serialized_size(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessNtNtB6_3raw7RawTask12remote_abort(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtCs3PfUT229lOd_12object_store4pathNtB2_4Path9extension(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array8timezone7privateNtB5_2TzNtNtNtCscI6d9CVNmLh_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impxNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt17pointer_fmt_inner(i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB5_11ObjectStore6memory(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(address) dereferenceable(128)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9into_data(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtNtCsgczF5crJ4sT_3std6thread7current7current() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMNtCsgczF5crJ4sT_3std4timeNtB2_7Instant3now() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvXs3_NtCsgczF5crJ4sT_3std4timeNtB5_7InstantNtNtNtCscI6d9CVNmLh_4core3ops5arith3Sub3sub(i64 noundef, i32 noundef range(i32 0, 1000000000), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions12park_timeout(i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions4park() unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #73

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #6

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #74

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #75

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMNtCs9ipI1vyGjpZ_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8) unnamed_addr #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #61

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #76

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_NtNtCs1akgR21QTtx_7roaring6bitmap9containerNtB4_9Container6remove(ptr noalias noundef align 8 dereferenceable(40), i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_NtNtCs1akgR21QTtx_7roaring6bitmap9containerNtB4_9Container8contains(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvXs_NtCsgczF5crJ4sT_3std4timeNtB4_7InstantINtNtNtCscI6d9CVNmLh_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef, i32 noundef range(i32 0, 1000000000), i64 noundef, i32 noundef range(i32 0, 1000000000), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef align 8 dereferenceable(32), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB7_13RoaringBitmapNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtCsaSXGKSfiU2E_10lance_file7versionNtB5_19ConcreteFileVersionNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvXs2_NtCsjjbR6Jfsbqw_8lance_io5utilsNtB5_14CachedFileSizeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB5_6Schema16fields_pre_order(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB5_6Schema22unenforced_primary_key(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB5_6Schema25unenforced_clustering_key(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs8d5NHFTTVL0_4uuid2v4NtB4_4Uuid6new_v4(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 1 captures(none) dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #61

; Function Attrs: nonlazybind uwtable
declare void @_RNvXse_NtNtCs1akgR21QTtx_7roaring6bitmap3opsRNtB7_13RoaringBitmapNtNtNtCscI6d9CVNmLh_4core3ops5arith3Sub3sub(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs8_NtNtCs1akgR21QTtx_7roaring6bitmap3opsRNtB7_13RoaringBitmapNtNtNtCscI6d9CVNmLh_4core3ops3bit6BitAnd6bitand(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #5

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 4) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder10add_buffer(ptr dead_on_unwind noalias noundef writable sret([184 x i8]) align 8 captures(none) dereferenceable(184), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(184), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder5nulls(ptr dead_on_unwind noalias noundef writable sret([184 x i8]) align 8 captures(none) dereferenceable(184), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(184), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder15build_unchecked(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(184)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCsaSXGKSfiU2E_10lance_file7versionNtB5_19ConcreteFileVersion22from_data_file_numbers(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB5_6Schema14project_by_ids(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB5_11ObjectStore21extract_path_from_uri(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noundef nonnull, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time5clockNtB4_5Clock3now(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 4) i8 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 4) i8 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i1, i1 } @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXs_NtNtNtCseXbohGRa9jr_5tokio7runtime8blocking8scheduleNtB4_16BlockingScheduleNtNtB8_4task8Schedule7release(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State22transition_to_complete(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsl_NtCsbjTsVCnQnhv_12lance_select4maskNtB5_14RowAddrTreeMapINtNtCscI6d9CVNmLh_4core7convert4FromINtNtNtB14_3ops5range5RangeyEE4from(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB5_14RowAddrTreeMap4mask(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtCsbjTsVCnQnhv_12lance_select4maskNtB5_14RowAddrTreeMapNtB5_9RowSetOps6remove(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #65

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtNtNtCs63DIHKhvmTb_10lance_core5utils11bloomfilter4sbbfNtB5_4Sbbf21bytes_might_intersect(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedINtNtB4_6option6OptionINtNtNtB4_3ptr8non_null7NonNullINtNtNtCseXbohGRa9jr_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1K_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCsjjbR6Jfsbqw_8lance_io13object_writer13UploadFailureEEEEEBM_EB3K_(i8 noundef range(i8 0, 3), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #68

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read13peek_position(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs0_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read10ignore_str(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE22parse_decimal_overflowB7_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(56), i1 noundef zeroext, i64 noundef, i32 noundef) unnamed_addr #5

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE18parse_long_integerB7_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(56), i1 noundef zeroext, i64 noundef) unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ssub.sat.i32(i32, i32) #65

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.sadd.sat.i32(i32, i32) #65

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE23parse_exponent_overflowB7_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(56), i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read8position(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read13peek_position(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read10ignore_str(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE22parse_decimal_overflowCs3PfUT229lOd_12object_store(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(56), i1 noundef zeroext, i64 noundef, i32 noundef) unnamed_addr #5

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE18parse_long_integerCs3PfUT229lOd_12object_store(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(56), i1 noundef zeroext, i64 noundef) unnamed_addr #5

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE23parse_exponent_overflowCs3PfUT229lOd_12object_store(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(56), i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read8position(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMsd_Cs9vXXyjKaXf3_6blake3NtB5_6Hasher6update(ptr noalias noundef align 8 dereferenceable(1920), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsd_Cs9vXXyjKaXf3_6blake3NtB5_6Hasher8finalize(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 1 captures(address) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1920)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.cttz.i8(i8, i1 immarg) #71

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMs7_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketNtB5_8RehashOp7new_len(i8 noundef range(i8 0, 4), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtCskTBvlRM5ILY_4moka6future11housekeeperNtB2_11Housekeeper18should_apply_reads(ptr noundef nonnull align 8, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtCskTBvlRM5ILY_4moka6future11housekeeperNtB2_11Housekeeper19should_apply_writes(ptr noundef nonnull align 8, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCsnVBktL0RTX_6semverNtB2_7Version5parse(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_CsnVBktL0RTX_6semverNtB5_10Prerelease3new(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_CsnVBktL0RTX_6semverNtB5_13BuildMetadata3new(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCseXbohGRa9jr_5tokio4sync9semaphoreNtB2_9Semaphore3new(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs6_NtCskfeRsqx2rfd_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs5_NtCskfeRsqx2rfd_15crossbeam_epoch8internalNtB5_6Global7collect(ptr noundef nonnull align 128, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsg_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorE4from(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock15write_contended(ptr noundef nonnull align 4) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #65

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEE8grow_oneCsgczF5crJ4sT_3std(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtCsdWqgeKPIYK7_4slab5EntryINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtB1j_4task4wake5WakerEEE8grow_oneCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE8grow_oneCsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE8grow_oneCsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangemEE8grow_oneCsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE8grow_oneCs3L5pa8Z3FYX_12opendal_core(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7KvEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1F_16CachedReaderDataEE8grow_oneB1J_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtNtCskTBvlRM5ILY_4moka6future11invalidator11KeyDateLiteNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEE8grow_oneB1P_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1I_16CachedReaderDataEE8grow_oneB1M_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCsgczF5crJ4sT_3std(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryE8grow_oneCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE8grow_oneBS_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldE8grow_oneBS_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCskpEw9nXJLNc_10serde_core7private7content7ContentE8grow_oneCs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskpEw9nXJLNc_10serde_core7private7content7ContentBN_EE8grow_oneCs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs1akgR21QTtx_7roaring(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVectE8grow_oneCs1akgR21QTtx_7roaring(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13
end_hunk_10
begin_hunk_11_@_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsgczF5crJ4sT_3std2fs4FileE9drop_slowCseXbohGRa9jr_5tokio
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsgczF5crJ4sT_3std2fs4FileE9drop_slowCseXbohGRa9jr_5tokio(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsgczF5crJ4sT_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader15UringFileHandleE9drop_slowBM_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerE9drop_slowBM_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierE9drop_slowCskTBvlRM5ILY_4moka(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCsgczF5crJ4sT_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSIBx_NtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE9drop_slowBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE9drop_slowCsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE9drop_slowCs3L5pa8Z3FYX_12opendal_core(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSTaIBx_NtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEE9drop_slowBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcShE9drop_slowCsgKXstSNRTQt_9aws_lc_rs(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArceE9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsx_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsv_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsF_NtNtCscI6d9CVNmLh_4core3fmt3numxNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsD_NtNtCscI6d9CVNmLh_4core3fmt3numxNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCscI6d9CVNmLh_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCscI6d9CVNmLh_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtCsgczF5crJ4sT_3std2fsNtB5_4FileNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsW_NtCs8d5NHFTTVL0_4uuid3fmtNtB5_10HyphenatedNtNtCscI6d9CVNmLh_4core3fmt8LowerHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCsgczF5crJ4sT_3std4pathNtB6_4Path11to_path_buf(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXso_NtNtCscI6d9CVNmLh_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsm_NtNtCscI6d9CVNmLh_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCscI6d9CVNmLh_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCskpEw9nXJLNc_10serde_core2de5implsNtB2_11UnitVisitorNtB4_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtNtCskpEw9nXJLNc_10serde_core2de5implsNtB5_13StringVisitorNtB7_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXs10_NtNtCskpEw9nXJLNc_10serde_core2de5implshNtBb_11Deserialize11deserializeNtB2_16PrimitiveVisitorNtBb_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXs16_NtNtCskpEw9nXJLNc_10serde_core2de5implsmNtBb_11Deserialize11deserializeNtB2_16PrimitiveVisitorNtBb_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXs19_NtNtCskpEw9nXJLNc_10serde_core2de5implsyNtBb_11Deserialize11deserializeNtB2_16PrimitiveVisitorNtBb_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXs1c_NtNtCskpEw9nXJLNc_10serde_core2de5implsjNtBb_11Deserialize11deserializeNtB2_16PrimitiveVisitorNtBb_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXsR_NtNtCskpEw9nXJLNc_10serde_core2de5implslNtBa_11Deserialize11deserializeNtB2_16PrimitiveVisitorNtBa_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs1C_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaINtNtCscI6d9CVNmLh_4core7convert7TryFromNtB5_14FieldsWithMetaE8try_from(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCsaSXGKSfiU2E_10lance_file9datatypesNtB5_14FieldsWithMetaINtNtCscI6d9CVNmLh_4core7convert4FromRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaE4from(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCs9ipI1vyGjpZ_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtCsjjbR6Jfsbqw_8lance_io5utilsNtB5_14CachedFileSizeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvXsh_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB5_6SchemaNtNtB9_8deepsize10DeepSizeOf21deep_size_of_children(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtCs9ipI1vyGjpZ_12tracing_core5fieldeNtB5_5Value6record(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB5_5StoreNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorE4from(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsjMQ83FLvXnF_10async_lock6rwlock3rawNtB2_9RawRwLock12write_unlock(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs63DIHKhvmTb_10lance_core8deepsizeNtB4_7Context3new(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtCskpEw9nXJLNc_10serde_core2deNtB5_5OneOfNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtNtCsgczF5crJ4sT_3std3sys5stdio4unixNtB5_6StderrNtNtBb_2io5Write5write(ptr noalias noundef nonnull, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCs1akgR21QTtx_7roaring6bitmap5store12bitmap_storeNtB2_11BitmapStore8try_from(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, ptr noalias noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtNtCshOFRwObP4z4_9getrandom8backends27linux_android_with_fallback4init() unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtNtNtCs1akgR21QTtx_7roaring6bitmap5store11array_storeNtB5_10ArrayStoreINtNtCscI6d9CVNmLh_4core7convert7TryFromINtNtCs40k4W9msRzi_5alloc3vec3VectEE8try_from(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #78

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #65

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #65

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #71

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #79

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #65

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #65

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #65

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #65

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #71

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #65

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #65

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #65

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #65

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umax.v2i64(<2 x i64>, <2 x i64>) #65

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.umax.v2i64(<2 x i64>) #65

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #65

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #65

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umax.v8i16(<8 x i16>, <8 x i16>) #65

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umax.v8i16(<8 x i16>) #65

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.umax.v4i16(<4 x i16>, <4 x i16>) #65

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umax.v4i16(<4 x i16>) #65

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umin.v2i64(<2 x i64>, <2 x i64>) #65

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.umin.v2i64(<2 x i64>) #65

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i8> @llvm.ctpop.v2i8(<2 x i8>) #65

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #65

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #65

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #65

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { alwaysinline nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #36 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #38 = { nofree norecurse nosync nounwind nonlazybind memory(read, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #39 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #40 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #41 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #42 = { cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #43 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #44 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #45 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #46 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #47 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #48 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #49 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #50 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #51 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #52 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #53 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #54 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #55 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #56 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #57 = { nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #58 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #59 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #60 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #61 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #62 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #63 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #64 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #65 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #66 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #67 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #68 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #69 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #70 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #71 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #72 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #73 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #74 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #75 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #76 = { nounwind }
attributes #77 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #78 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #79 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #80 = { noreturn }
attributes #81 = { cold }
attributes #82 = { cold noreturn nounwind }
attributes #83 = { "function-inline-cost-multiplier"="2" }
attributes #84 = { cold "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!61, !62}
!llvm.ident = !{!63}

!0 = distinct !{null, null}
!1 = distinct !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9ZJqkc64Jh8_14event_listener3sys8ListeneruEEECs9KQ7US1M400_11lance_table, null, null, null, ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ZJqkc64Jh8_14event_listener3sys4LinkuEECs9KQ7US1M400_11lance_table, null, null, ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECs9KQ7US1M400_11lance_table, ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener4TaskECs9KQ7US1M400_11lance_table, null, null}
!2 = distinct !{null, null, null, null}
!3 = distinct !{null, null, null}
!4 = distinct !{null, null, null}
!5 = distinct !{null, null, null, null, null}
!6 = distinct !{!6, i1 true, !"_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoItertENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9KQ7US1M400_11lance_table"}
!7 = distinct !{!7, !6, !"_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoItertENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9KQ7US1M400_11lance_table: argument 0"}
!8 = distinct !{null, null, null}
!9 = distinct !{null, null, null, null, null}
!10 = distinct !{!10, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table"}
!11 = distinct !{!11, !10, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table: argument 0"}
!12 = distinct !{!12, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table"}
!13 = distinct !{!13, !12, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table: argument 0"}
!14 = distinct !{!14, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table"}
!15 = distinct !{!15, !14, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table: argument 0"}
!16 = distinct !{!16, i1 true, !"_RNvXs12_NtNtCscI6d9CVNmLh_4core3cmp5implsyNtB8_10PartialOrd2lt"}
!17 = distinct !{!17, !16, !"_RNvXs12_NtNtCscI6d9CVNmLh_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 0"}
!18 = distinct !{!18, !16, !"_RNvXs12_NtNtCscI6d9CVNmLh_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 1"}
!19 = distinct !{!19, i1 true, !"_RNvXs1c_NtNtCscI6d9CVNmLh_4core3cmp5implslNtB8_10PartialOrd2lt"}
!20 = distinct !{!20, !19, !"_RNvXs1c_NtNtCscI6d9CVNmLh_4core3cmp5implslNtB8_10PartialOrd2lt: argument 0"}
!21 = distinct !{!21, !110}
!22 = distinct !{null, null, null, ptr @_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENtNtBQ_8iterator8Iterator4nextCs9KQ7US1M400_11lance_table}
!23 = distinct !{!23, !110}
!24 = distinct !{null}
!25 = distinct !{null, null}
!26 = distinct !{null}
!27 = distinct !{null}
!28 = distinct !{null}
!29 = distinct !{null}
!30 = distinct !{null}
!31 = distinct !{null}
!32 = distinct !{null, null, null}
!33 = distinct !{null}
!34 = distinct !{null}
!35 = distinct !{null, null, null, null}
!36 = distinct !{null, null, null}
!37 = distinct !{null}
!38 = distinct !{null}
!39 = distinct !{null}
!40 = distinct !{null}
!41 = distinct !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener5StateuEECs9KQ7US1M400_11lance_table, ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener4TaskECs9KQ7US1M400_11lance_table, null, null}
!42 = distinct !{!42, i1 true, !"_RNvXsf_NtNtCscI6d9CVNmLh_4core5clone5implsyNtB7_5Clone5clone"}
!43 = distinct !{!43, !42, !"_RNvXsf_NtNtCscI6d9CVNmLh_4core5clone5implsyNtB7_5Clone5clone: argument 0"}
!44 = distinct !{!44, i1 true, !"_RNvXsf_NtNtCscI6d9CVNmLh_4core5clone5implsyNtB7_5Clone5clone"}
!45 = distinct !{!45, !44, !"_RNvXsf_NtNtCscI6d9CVNmLh_4core5clone5implsyNtB7_5Clone5clone: argument 0"}
!46 = distinct !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format13key_existence8KeyValueEEB1e_, null, null}
!47 = distinct !{!47, i1 true, !"_RNvXs4_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapyNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eqCs9KQ7US1M400_11lance_table"}
!48 = distinct !{!48, !47, !"_RNvXs4_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapyNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eqCs9KQ7US1M400_11lance_table: argument 0"}
!49 = distinct !{null}
!50 = distinct !{null}
!51 = distinct !{null}
!52 = distinct !{!52, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map24encoded_len_with_defaultNtNtCs40k4W9msRzi_5alloc6string6StringB18_NvNtB4_6string11encoded_lenB1O_ECs9KQ7US1M400_11lance_table"}
!53 = distinct !{!53, !52, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map24encoded_len_with_defaultNtNtCs40k4W9msRzi_5alloc6string6StringB18_NvNtB4_6string11encoded_lenB1O_ECs9KQ7US1M400_11lance_table: argument 1"}
end_hunk_11
