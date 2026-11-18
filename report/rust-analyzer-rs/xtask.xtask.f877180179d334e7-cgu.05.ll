Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/xtask.xtask.f877180179d334e7-cgu.05?download=true
inline.NumInlined: 685
inline.NumDeleted: 283
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECslkzCjlEuW1f_5xtask:bb.a
  %i.d = add i64 %i.b, 1
  %i.e = mul nuw i64 %i.d, %2                     ; 2 uses
  %i.f = add i64 %3, -1
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp uge i64 %i.g, %i.e
  tail call void @llvm.assume(i1 %i.h)
  %i.i = sub i64 0, %3
  %i.j = and i64 %i.g, %i.i                       ; 3 uses
  %i.k = add i64 %i.b, 17
  %i.l = add i64 %i.k, %i.j                       ; 4 uses
  %i.m = icmp uge i64 %i.l, %i.j
  %i.n = sub nuw i64 -9223372036854775808, %3
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.m)
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ne i64 %3, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i64 %i.l, 0
  br i1 %i.q, label %_RNvXs_NtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit
  %i.r = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.s = sub nsw i64 0, %i.j
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %3) #28
  br label %_RNvXs_NtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit

_RNvXs_NtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit: ; preds = %bb.b, %_RNvMs1_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECslkzCjlEuW1f_5xtask(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef range(i64 8, 129) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !guid !315 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @4, i64 32, i1 false)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %2, 15
  br i1 %i.b, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.c, label %bb.l, label %bb.e, !prof !8

bb.e:                                             ; preds = %bb.d
  %i.d = shl nuw i64 %2, 3
  %i.e = udiv i64 %i.d, 7
  %i.f = add nsw i64 %i.e, -1
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = lshr i64 -1, %i.g
  %i.i = add nuw nsw i64 %i.h, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.j = icmp samesign ult i64 %2, 4
  %i.k = and i64 %2, 8
  %..i = add nuw nsw i64 %i.k, 8
  %.sroa.03.0.i = select i1 %i.j, i64 4, i64 %..i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.0.i.ph = phi i64 [ %i.i, %bb.e ], [ %.sroa.03.0.i, %bb.f ] ; 5 uses
  %i.l = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 8, 129) %1, i64 %.sroa.4.0.i.ph) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.h, !prof !8

bb.h:                                             ; preds = %bb.g
  %i.n = extractvalue { i64, i1 } %i.l, 0         ; 2 uses
  %i.o = icmp ugt i64 %i.n, -16
  br i1 %i.o, label %bb.j, label %bb.i, !prof !8

bb.i:                                             ; preds = %bb.h
  %i.p = add nuw i64 %i.n, 15
  %i.q = and i64 %i.p, -16                        ; 3 uses
  %i.r = add nuw nsw i64 %.sroa.4.0.i.ph, 16      ; 2 uses
  %i.s = add i64 %i.r, %i.q                       ; 5 uses
  %i.t = icmp ult i64 %i.s, %i.q
  %i.u = icmp ugt i64 %i.s, 9223372036854775792
  %or.cond.i = or i1 %i.t, %i.u
  br i1 %or.cond.i, label %bb.j, label %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, !prof !14

_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.i
  %i.v = icmp eq i64 %i.s, 0
  br i1 %i.v, label %bb.n, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i: ; preds = %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !316
  %i.w = tail call noundef align 16 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 16) #28, !noalias !316 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.k, label %bb.n

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.y = tail call { i64, i64 } @_RNvMNtCsfjX3T6UU9IB_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !316
  br label %bb.m

bb.k:                                             ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i
  %i.z = tail call { i64, i64 } @_RNvMNtCsfjX3T6UU9IB_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.s), !noalias !316
  br label %bb.m

bb.l:                                             ; preds = %bb.d
  %i.aa = tail call { i64, i64 } @_RNvMNtCsfjX3T6UU9IB_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true) ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = extractvalue { i64, i64 } %i.aa, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ab, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ac, ptr %i.ae, align 8
  store ptr null, ptr %0, align 8
  br label %bb.o

bb.m:                                             ; preds = %bb.j, %bb.k
  %.pn = phi { i64, i64 } [ %i.z, %bb.k ], [ %i.y, %bb.j ] ; 2 uses
  %.sroa.7.0.ph = extractvalue { i64, i64 } %.pn, 0
  %.sroa.12.0.ph = extractvalue { i64, i64 } %.pn, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0.ph, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.12.0.ph, ptr %i.ag, align 8
  store ptr null, ptr %0, align 8
  br label %bb.o

bb.n:                                             ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %.sroa.0.0.i.i9.i = phi ptr [ %i.w, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i, i64 %i.q ; 2 uses
  %i.ai = add nsw i64 %.sroa.4.0.i.ph, -1         ; 2 uses
  %i.aj = icmp samesign ult i64 %.sroa.4.0.i.ph, 9
  %i.ak = lshr i64 %.sroa.4.0.i.ph, 3
  %i.al = mul nuw nsw i64 %i.ak, 7
  %.sroa.07.0.i = select i1 %i.aj, i64 %i.ai, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ah, i8 -1, i64 %i.r, i1 false)
  store ptr %i.ah, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ai, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.07.0.i, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.618.0..sroa_idx, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.b, %bb.n
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsd_NtCs8yNfvVM1dno_3zip5typesNtB6_11ZipFileData22initialize_local_blockReuECslkzCjlEuW1f_5xtask(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([208 x i8]) align 8 captures(none) dereferenceable(208) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4, i64 noundef %5, i64 noundef range(i64 0, 2) %6, i64 %7, i64 noundef %8, i16 noundef range(i16 0, 3) %9, i16 %10, i64 %11, ptr noalias nofree noundef nonnull readonly captures(none) %12, i64 noundef range(i64 0, -9223372036854775808) %13) unnamed_addr #0 personality ptr @rust_eh_personality !guid !348 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [208 x i8], align 16              ; 37 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load i32, ptr %i.i, align 8, !range !349, !noundef !6
  %i.k = trunc nuw i32 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.m = load i32, ptr %i.l, align 4
  %i.n = shl i32 %i.m, 16
  %.sroa.03.0 = select i1 %i.k, i32 %i.n, i32 -2119958528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !350
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !350
  %i.o = load i64, ptr %i.a, align 8, !range !351, !noalias !350, !noundef !6
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !15, !noalias !350, !noundef !6 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.p, label %bb.b, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslkzCjlEuW1f_5xtask.exit.i.i.i, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.t = load i64, ptr %i.s, align 8, !noalias !350
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #29, !noalias !350
  unreachable

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslkzCjlEuW1f_5xtask.exit.i.i.i: ; preds = %bb.a
  %i.u = load ptr, ptr %i.s, align 8, !noalias !350, !nonnull !6, !noundef !6 ; 2 uses
  %i.v = icmp samesign ule i64 %2, %i.r
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !350
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %_RNvXsB_NtCsbSS6DM8SDEO_5alloc6stringReNtB5_8ToString9to_stringCslkzCjlEuW1f_5xtask.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslkzCjlEuW1f_5xtask.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !352
  br label %_RNvXsB_NtCsbSS6DM8SDEO_5alloc6stringReNtB5_8ToString9to_stringCslkzCjlEuW1f_5xtask.exit

_RNvXsB_NtCsbSS6DM8SDEO_5alloc6stringReNtB5_8ToString9to_stringCslkzCjlEuW1f_5xtask.exit: ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslkzCjlEuW1f_5xtask.exit.i.i.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.r, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx53, align 8
  %i.w = call { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE16into_boxed_sliceCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f) ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0        ; 9 uses
  %i.y = extractvalue { ptr, i64 } %i.w, 1        ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %i.aa = invoke { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxShEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorhE9from_iterNtNtNtB11_3str4iter5BytesECslkzCjlEuW1f_5xtask(ptr noundef nonnull %i.x, ptr noundef nonnull %i.z)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %_RNvXsB_NtCsbSS6DM8SDEO_5alloc6stringReNtB5_8ToString9to_stringCslkzCjlEuW1f_5xtask.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = icmp eq i64 %i.y, 0
  br i1 %i.ac, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECslkzCjlEuW1f_5xtask.exit47, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECslkzCjlEuW1f_5xtask.exit47.sink.split

bb.e:                                             ; preds = %_RNvXsB_NtCsbSS6DM8SDEO_5alloc6stringReNtB5_8ToString9to_stringCslkzCjlEuW1f_5xtask.exit
  %i.ad = extractvalue { ptr, i64 } %i.aa, 0      ; 3 uses
  %i.ae = extractvalue { ptr, i64 } %i.aa, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !range !349, !noundef !6
  %i.ah = icmp samesign ult i64 %i.y, 64
  br i1 %i.ah, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = and i64 %i.y, 9223372036854775744
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ai ; 3 uses
  %i.ak = and i64 %i.y, 63                        ; 2 uses
  br label %.lr.ph.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 64 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.aj
  br i1 %i.am, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.f
  %.sroa.01.028.i.i = phi ptr [ %i.al, %bb.g ], [ %i.x, %bb.f ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load <2 x i64>, ptr %.sroa.01.028.i.i, align 1, !alias.scope !353, !noalias !354
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 16
  %.sroa.0.0.copyload.i9.i.i = load <2 x i64>, ptr %i.an, align 1, !alias.scope !353, !noalias !355
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 32
  %.sroa.0.0.copyload.i10.i.i = load <2 x i64>, ptr %i.ao, align 1, !alias.scope !353, !noalias !356
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 48
  %.sroa.0.0.copyload.i11.i.i = load <2 x i64>, ptr %i.ap, align 1, !alias.scope !353, !noalias !357
  %i.aq = or <2 x i64> %.sroa.0.0.copyload.i9.i.i, %.sroa.0.0.copyload.i.i.i
  %i.ar = or <2 x i64> %i.aq, %.sroa.0.0.copyload.i10.i.i
  %i.as = or <2 x i64> %i.ar, %.sroa.0.0.copyload.i11.i.i
  %i.at = bitcast <2 x i64> %i.as to <16 x i8>
  %i.au = icmp slt <16 x i8> %i.at, zeroinitializer
  %i.av = bitcast <16 x i1> %i.au to i16
  %i.aw = icmp eq i16 %i.av, 0
  br i1 %i.aw, label %bb.g, label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit

._crit_edge.i.i:                                  ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  %i.ay = icmp samesign eq i64 %i.ak, 0
  br i1 %i.ay, label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.az = getelementptr inbounds nuw i8, ptr %i.bb, i64 1 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ax
  br i1 %i.ba, label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i, %bb.h
  %i.bb = phi ptr [ %i.az, %bb.h ], [ %i.aj, %._crit_edge.i.i ] ; 2 uses
  %.val.i.i.i = load i8, ptr %i.bb, align 1, !alias.scope !353, !noalias !358, !noundef !6
  %i.bc = icmp sgt i8 %.val.i.i.i, -1
  br i1 %i.bc, label %bb.h, label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit

bb.i:                                             ; preds = %bb.e
  %i.bd = and i64 %i.y, 56                        ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bd ; 7 uses
  %i.bf = and i64 %i.y, 7                         ; 7 uses
  %.not.i98 = icmp eq i64 %i.bd, 0
  br i1 %.not.i98, label %._crit_edge, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i

bb.j:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i100, i64 8
  %14 = add nsw i64 %.sroa.6.0.i99, -8            ; 2 uses
  %.not.i.a = icmp eq i64 %14, 0
  br i1 %.not.i.a, label %._crit_edge, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i

._crit_edge:                                      ; preds = %bb.j, %bb.i
  %i.bh = icmp samesign eq i64 %i.bf, 0
  br i1 %i.bh, label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph102

bb.k:                                             ; preds = %.lr.ph102
  %i.bi = icmp samesign eq i64 %i.bf, 1
  br i1 %i.bi, label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph102.1

.lr.ph102.1:                                      ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %.val.i.i.1 = load i8, ptr %i.bj, align 1, !alias.scope !359, !noalias !360, !noundef !6
  %i.bk = icmp sgt i8 %.val.i.i.1, -1
  br i1 %i.bk, label %bb.l, label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit

bb.l:                                             ; preds = %.lr.ph102.1
  %i.bl = icmp samesign eq i64 %i.bf, 2
  br i1 %i.bl, label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph102.2

.lr.ph102.2:                                      ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %.val.i.i.2 = load i8, ptr %i.bm, align 1, !alias.scope !359, !noalias !360, !noundef !6
  %i.bn = icmp sgt i8 %.val.i.i.2, -1
  br i1 %i.bn, label %bb.m, label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit

bb.m:                                             ; preds = %.lr.ph102.2
  %i.bo = icmp samesign eq i64 %i.bf, 3
  br i1 %i.bo, label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph102.3

.lr.ph102.3:                                      ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 3
  %.val.i.i.3 = load i8, ptr %i.bp, align 1, !alias.scope !359, !noalias !360, !noundef !6
  %i.bq = icmp sgt i8 %.val.i.i.3, -1
  br i1 %i.bq, label %bb.n, label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit

bb.n:                                             ; preds = %.lr.ph102.3
  %i.br = icmp samesign eq i64 %i.bf, 4
  br i1 %i.br, label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph102.4

.lr.ph102.4:                                      ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %.val.i.i.4 = load i8, ptr %i.bs, align 1, !alias.scope !359, !noalias !360, !noundef !6
  %i.bt = icmp sgt i8 %.val.i.i.4, -1
  br i1 %i.bt, label %bb.o, label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit

bb.o:                                             ; preds = %.lr.ph102.4
  %i.bu = icmp samesign eq i64 %i.bf, 5
  br i1 %i.bu, label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph102.5

.lr.ph102.5:                                      ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 5
  %.val.i.i.5 = load i8, ptr %i.bv, align 1, !alias.scope !359, !noalias !360, !noundef !6
  %i.bw = icmp sgt i8 %.val.i.i.5, -1
  br i1 %i.bw, label %bb.p, label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit

bb.p:                                             ; preds = %.lr.ph102.5
  %i.bx = icmp samesign eq i64 %i.bf, 6
  br i1 %i.bx, label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph102.6

.lr.ph102.6:                                      ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %i.be, i64 6
  %.val.i.i.6 = load i8, ptr %i.by, align 1, !alias.scope !359, !noalias !360, !noundef !6
  %i.bz = icmp sgt i8 %.val.i.i.6, -1
  %spec.select = select i1 %i.bz, i8 0, i8 1
  br label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit

.lr.ph102:                                        ; preds = %._crit_edge
  %.val.i.i = load i8, ptr %i.be, align 1, !alias.scope !359, !noalias !360, !noundef !6
  %i.ca = icmp sgt i8 %.val.i.i, -1
  br i1 %i.ca, label %bb.k, label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i: ; preds = %bb.i, %bb.j
  %.sroa.0.017.i100 = phi ptr [ %i.bg, %bb.j ], [ %i.x, %bb.i ] ; 2 uses
  %.sroa.6.0.i99 = phi i64 [ %14, %bb.j ], [ %i.bd, %bb.i ]
  %.sroa.012.0.copyload.i = load i64, ptr %.sroa.0.017.i100, align 1, !alias.scope !359
  %i.cb = and i64 %.sroa.012.0.copyload.i, -9187201950435737472
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.j, label %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit

_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit: ; preds = %.lr.ph102.6, %.lr.ph.i.i, %bb.h, %.lr.ph, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i, %bb.k, %.lr.ph102, %.lr.ph102.1, %bb.l, %.lr.ph102.2, %bb.m, %.lr.ph102.3, %bb.n, %.lr.ph102.4, %bb.o, %.lr.ph102.5, %bb.p, %._crit_edge.i.i, %._crit_edge
  %15 = phi i8 [ 1, %.lr.ph ], [ 0, %._crit_edge.i.i ], [ 1, %.lr.ph.i.i ], [ 1, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i ], [ 0, %._crit_edge ], [ 0, %bb.k ], [ 1, %.lr.ph102 ], [ 1, %.lr.ph102.1 ], [ 0, %bb.l ], [ 1, %.lr.ph102.2 ], [ 0, %bb.m ], [ 1, %.lr.ph102.3 ], [ 0, %bb.n ], [ 1, %.lr.ph102.4 ], [ 0, %bb.o ], [ 1, %.lr.ph102.5 ], [ 0, %bb.p ], [ %spec.select, %.lr.ph102.6 ], [ 0, %bb.h ]
  %i.cd = load <2 x i64>, ptr %3, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.cf = load <2 x i16>, ptr %i.ce, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ch = load i32, ptr %i.cg, align 8, !noundef !6
  %i.ci = load <2 x i64>, ptr %4, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %13, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.r unwind label %bb.q

.body:                                            ; preds = %bb.z, %bb.aa, %bb.w, %bb.q
  %.pn27 = phi { ptr, i32 } [ %i.cx, %bb.w ], [ %i.ck, %bb.q ], [ %i.cz, %bb.aa ], [ %i.cz, %bb.z ] ; 2 uses
  %i.cj = icmp eq i64 %i.ae, 0
  br i1 %i.cj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxShEECslkzCjlEuW1f_5xtask.exit, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %.body
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.ae, i64 noundef 1) #28
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxShEECslkzCjlEuW1f_5xtask.exit

bb.q:                                             ; preds = %bb.s, %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %_RNvNvNtNtCshzWfHUSfYae_4core5slice5ascii8is_ascii7runtime.exit
  %i.cl = load i64, ptr %i.e, align 8, !range !351, !noundef !6
  %i.cm = trunc nuw i64 %i.cl to i1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !range !15, !noundef !6 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.cm, label %bb.s, label %bb.t, !prof !8

bb.s:                                             ; preds = %bb.r
  %i.cq = load i64, ptr %i.cp, align 8
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.co, i64 %i.cq) #29
          to label %bb.aj unwind label %bb.q

bb.t:                                             ; preds = %bb.r
  %i.cr = load ptr, ptr %i.cp, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.cs = icmp samesign ule i64 %13, %i.co
  call void @llvm.assume(i1 %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not = icmp eq i64 %13, 0
  br i1 %.not, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.y, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 1, ptr %i.d, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.co, ptr %i.cu, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.cr, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %13, ptr %.sroa.6.0..sroa_idx, align 8
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !361
  %i.cv = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #28, !noalias !361 ; 5 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.v, label %bb.ab, !prof !8

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #29
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync8ArcInnerINtNtBG_3vec3VechEEECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d) #26
          to label %.body unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.y:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cr, ptr nonnull align 1 %12, i64 %13, i1 false)
  br label %bb.u

bb.z:                                             ; preds = %bb.ae, %bb.ad, %bb.ab
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = atomicrmw add ptr %i.cv, i64 -1 release, align 8, !noalias !362
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %bb.aa, label %.body

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEE9drop_slowCs8yNfvVM1dno_3zip(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #30
          to label %.body unwind label %bb.ai

bb.ab:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cv, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.cv, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ac unwind label %bb.z

bb.ac:                                            ; preds = %bb.ab
  %i.dc = load i64, ptr %i.b, align 8, !range !351, !noundef !6
  %i.dd = trunc nuw i64 %i.dc to i1
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.df = load i64, ptr %i.de, align 8, !range !15, !noundef !6 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.dd, label %bb.ad, label %bb.ae, !prof !8

bb.ad:                                            ; preds = %bb.ac
  %i.dh = load i64, ptr %i.dg, align 8
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.df, i64 %i.dh) #29
          to label %bb.aj unwind label %bb.z

bb.ae:                                            ; preds = %bb.ac
  %i.di = load ptr, ptr %i.dg, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.df, ptr %i.c, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.di, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.dk, align 8
  %i.dl = invoke { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE16into_boxed_sliceCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.af unwind label %bb.z      ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.dm = extractvalue { ptr, i64 } %i.dl, 0      ; 2 uses
  %i.dn = extractvalue { ptr, i64 } %i.dl, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dm) ]
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 50
  %i.dp = load i8, ptr %i.do, align 2, !range !363, !noundef !6
  %i.dq = getelementptr inbounds nuw i8, ptr %i.h, i64 206
  store i8 3, ptr %i.dq, align 2
  %i.dr = getelementptr inbounds nuw i8, ptr %i.h, i64 207 ; 2 uses
  store i8 45, ptr %i.dr, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.h, i64 202
  %i.dt = trunc nuw nsw i32 %i.ag to i8
  store i8 %i.dt, ptr %i.ds, align 2
  %i.du = getelementptr inbounds nuw i8, ptr %i.h, i64 203
  store i8 %15, ptr %i.du, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.h, i64 204
  store i8 0, ptr %i.dv, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  store i16 %9, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.h, i64 186
  store i16 %10, ptr %i.dx, align 2
  store <2 x i64> %i.cd, ptr %i.h, align 16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.h, i64 196
  store i16 1, ptr %i.dy, align 4
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 198
  store <2 x i16> %i.cf, ptr %.sroa.47.0..sroa_idx, align 2
  %i.dz = getelementptr inbounds nuw i8, ptr %i.h, i64 188
  store i32 %i.ch, ptr %i.dz, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store <2 x i64> %i.ci, ptr %i.ea, align 16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store ptr %i.x, ptr %i.eb, align 16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i64 %i.y, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store ptr %i.ad, ptr %i.ed, align 16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store i64 %i.ae, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  store ptr %i.cv, ptr %i.ef, align 16
  %i.eg = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  store ptr null, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store ptr %i.dm, ptr %i.eh, align 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  store i64 %i.dn, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  store i64 %5, ptr %i.ej, align 16
  %i.ek = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %6, ptr %i.ek, align 16
  %i.el = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %7, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  store i64 0, ptr %i.em, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  store i32 3, ptr %.sroa.3.0..sroa_idx, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  store i32 %.sroa.03.0, ptr %i.en, align 16
  %i.eo = getelementptr inbounds nuw i8, ptr %i.h, i64 205
  store i8 %i.dp, ptr %i.eo, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i64 %11, ptr %i.ep, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  store i64 %8, ptr %i.eq, align 16
  %i.er = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 0, ptr %i.er, align 16
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i64 0, ptr %.sroa.514.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.es = invoke noundef i16 @_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData14version_needed(ptr noundef nonnull align 8 %i.h)
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.et = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yNfvVM1dno_3zip5types11ZipFileDataECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(208) %i.h) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECslkzCjlEuW1f_5xtask.exit47 unwind label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.eu = trunc i16 %i.es to i8
  store i8 %i.eu, ptr %i.dr, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 16 dereferenceable(208) %i.h, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.ai:                                            ; preds = %bb.aa, %bb.ag
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.aj:                                            ; preds = %bb.ad, %bb.s
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxShEECslkzCjlEuW1f_5xtask.exit: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i, %.body
  %i.ew = icmp eq i64 %i.y, 0
  br i1 %i.ew, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECslkzCjlEuW1f_5xtask.exit47, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECslkzCjlEuW1f_5xtask.exit47.sink.split

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECslkzCjlEuW1f_5xtask.exit47.sink.split: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxShEECslkzCjlEuW1f_5xtask.exit, %bb.d
  %.pn27.pn.pn65.ph = phi { ptr, i32 } [ %i.ab, %bb.d ], [ %.pn27, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxShEECslkzCjlEuW1f_5xtask.exit ]
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.x, i64 noundef %i.y, i64 noundef 1) #28
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECslkzCjlEuW1f_5xtask.exit47

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECslkzCjlEuW1f_5xtask.exit47: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECslkzCjlEuW1f_5xtask.exit47.sink.split, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxShEECslkzCjlEuW1f_5xtask.exit, %bb.ag, %bb.d
  %.pn27.pn.pn65 = phi { ptr, i32 } [ %.pn27, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxShEECslkzCjlEuW1f_5xtask.exit ], [ %i.ab, %bb.d ], [ %i.et, %bb.ag ], [ %.pn27.pn.pn65.ph, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECslkzCjlEuW1f_5xtask.exit47.sink.split ]
  resume { ptr, i32 } %.pn27.pn.pn65
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeENtNtCs8yNfvVM1dno_3zip5types11ZipFileDataEECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !364 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.val1 = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECslkzCjlEuW1f_5xtask.exit, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val1, i64 noundef 1) #28
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECslkzCjlEuW1f_5xtask.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECslkzCjlEuW1f_5xtask.exit: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i, %bb.a
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yNfvVM1dno_3zip5types11ZipFileDataECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(208) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !365 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !16, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECslkzCjlEuW1f_5xtask.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECslkzCjlEuW1f_5xtask.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !366 {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECslkzCjlEuW1f_5xtask.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECslkzCjlEuW1f_5xtask.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8yNfvVM1dno_3zip12extra_fields10ExtraFieldEECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !367 {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs8yNfvVM1dno_3zip12extra_fields10ExtraFieldENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs8yNfvVM1dno_3zip12extra_fields10ExtraFieldENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCs8yNfvVM1dno_3zip12extra_fields10ExtraFieldEECslkzCjlEuW1f_5xtask.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs8yNfvVM1dno_3zip12extra_fields10ExtraFieldENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCs8yNfvVM1dno_3zip12extra_fields10ExtraFieldEECslkzCjlEuW1f_5xtask.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

end_hunk_0
