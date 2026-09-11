Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_ls-a3a189bdfb08ca20.uu_ls.41ca68266698dde8-cgu.0?download=true
inline.NumInlined: 3251
inline.NumDeleted: 1478
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs5EcwQX7phGK_5uu_ls:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %2, 15
  br i1 %i.b, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.c, label %bb.l, label %bb.e, !prof !7

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
  %i.l = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 32, 145) %1, i64 %.sroa.4.0.i.ph) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.n = extractvalue { i64, i1 } %i.l, 0         ; 2 uses
  %i.o = icmp ugt i64 %i.n, -16
  br i1 %i.o, label %bb.j, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  %i.p = add nuw i64 %i.n, 15
  %i.q = and i64 %i.p, -16                        ; 3 uses
  %i.r = add nuw nsw i64 %.sroa.4.0.i.ph, 16      ; 2 uses
  %i.s = add i64 %i.r, %i.q                       ; 5 uses
  %i.t = icmp ult i64 %i.s, %i.q
  %i.u = icmp ugt i64 %i.s, 9223372036854775792
  %or.cond.i = or i1 %i.t, %i.u
  br i1 %or.cond.i, label %bb.j, label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, !prof !22

_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.i
  %i.v = icmp eq i64 %i.s, 0
  br i1 %i.v, label %bb.n, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !533
  %i.w = tail call noundef align 16 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !533 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.k, label %bb.n

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.y = tail call { i64, i64 } @_RNvMNtCs7GWc7oqutCf_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3) #37, !noalias !533
  br label %bb.m

bb.k:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %i.z = tail call { i64, i64 } @_RNvMNtCs7GWc7oqutCf_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.s) #37, !noalias !533
  br label %bb.m

bb.l:                                             ; preds = %bb.d
  %i.aa = tail call { i64, i64 } @_RNvMNtCs7GWc7oqutCf_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3) #37 ; 2 uses
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

bb.n:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %.sroa.0.0.i.i9.i = phi ptr [ %i.w, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
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

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RINvNtCs5EcwQX7phGK_5uu_ls7display12display_gridINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtB2_16DisplayWithQuoteEEB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, i16 noundef %1, i1 noundef zeroext %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %3, i1 noundef zeroext %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 16 uses
  %i.e = alloca [128 x i8], align 8               ; 20 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [128 x i8], align 8               ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = icmp eq i16 %1, 0
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8 ; 4 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.k = icmp eq ptr %.sroa.6.0.copyload, %.sroa.12.0.copyload
  br i1 %i.k, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 32 ; 5 uses
  %.sroa.049.0.copyload50.peel = load i64, ptr %.sroa.6.0.copyload, align 8, !noalias !693 ; 4 uses
  %.sroa.8.0..sroa.6.8..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 8
  %.sroa.8.sroa.0.0.copyload.peel = load ptr, ptr %.sroa.8.0..sroa.6.8..sroa_idx.peel, align 8, !noalias !693 ; 5 uses
  %.sroa.8.sroa.6.0..sroa.8.0..sroa.6.8..sroa_idx.sroa_idx.peel = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 16
  %.sroa.8.sroa.6.0.copyload.peel = load i64, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa.6.8..sroa_idx.sroa_idx.peel, align 8, !noalias !693 ; 4 uses
  %.not19.peel.not = icmp eq i64 %.sroa.049.0.copyload50.peel, -1
  br i1 %.not19.peel.not, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph
  %.pre123 = load i64, ptr %i.l, align 8, !noalias !4 ; 4 uses
  %.pre122 = load i64, ptr %3, align 8, !range !5, !noalias !4
  %.pre125 = sub nsw i64 %.pre122, %.pre123
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.0.0.copyload.peel) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695)
  %i.o = icmp sgt i64 %.pre123, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ult i64 %.sroa.8.sroa.6.0.copyload.peel, %.pre125
  br i1 %i.p, label %_RINvNtCs5EcwQX7phGK_5uu_ls7display12write_os_strINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB4_.exit.thread.peel, label %_RINvNtCs5EcwQX7phGK_5uu_ls7display12write_os_strINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB4_.exit.peel, !prof !12

_RINvNtCs5EcwQX7phGK_5uu_ls7display12write_os_strINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB4_.exit.peel: ; preds = %bb.c
  %i.q = tail call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs5EcwQX7phGK_5uu_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.8.sroa.0.0.copyload.peel, i64 noundef range(i64 0, -9223372036854775808) %.sroa.8.sroa.6.0.copyload.peel) #36 ; 2 uses
  %.not22.peel = icmp eq ptr %i.q, null
  br i1 %.not22.peel, label %bb.d, label %.loopexit

_RINvNtCs5EcwQX7phGK_5uu_ls7display12write_os_strINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB4_.exit.thread.peel: ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !696)
  %i.r = load ptr, ptr %i.m, align 8, !alias.scope !697, !noalias !698, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.pre123
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull readonly align 1 %.sroa.8.sroa.0.0.copyload.peel, i64 range(i64 0, -9223372036854775808) %.sroa.8.sroa.6.0.copyload.peel, i1 false), !noalias !697
  %i.t = add nuw i64 %.pre123, %.sroa.8.sroa.6.0.copyload.peel
  store i64 %i.t, ptr %i.l, align 8, !alias.scope !697, !noalias !698
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCs5EcwQX7phGK_5uu_ls7display12write_os_strINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB4_.exit.thread.peel, %_RINvNtCs5EcwQX7phGK_5uu_ls7display12write_os_strINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB4_.exit.peel
  %i.u = icmp eq i64 %.sroa.049.0.copyload50.peel, 0
  br i1 %i.u, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEBF_.exit.peel, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.sroa.0.0.copyload.peel, i64 noundef %.sroa.049.0.copyload50.peel, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !699
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEBF_.exit.peel

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEBF_.exit.peel: ; preds = %bb.e, %bb.d
  %i.v = icmp eq ptr %i.n, %.sroa.12.0.copyload
  br i1 %i.v, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 5 uses
  store i64 0, ptr %i.x, align 8
  %.sroa.057.0.copyload = load ptr, ptr %0, align 8, !alias.scope !700, !noalias !701, !nonnull !4, !noundef !4 ; 6 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !700, !noalias !701 ; 3 uses
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.558.0.copyload = load i64, ptr %.sroa.558.0..sroa_idx, align 8, !alias.scope !700, !noalias !701 ; 2 uses
  %.sroa.659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.659.0.copyload = load ptr, ptr %.sroa.659.0..sroa_idx, align 8, !alias.scope !700, !noalias !701, !nonnull !4, !noundef !4 ; 4 uses
  %i.y = shl i64 %.sroa.558.0.copyload, 5         ; 4 uses
  %i.z = udiv i64 %i.y, 24                        ; 2 uses
  %.not14.i.i.i.i.i = icmp eq ptr %.sroa.4.0.copyload, %.sroa.659.0.copyload
  br i1 %.not14.i.i.i.i.i, label %_RNvXs0_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB7_9into_iter8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENCINvB26_12display_gridB1D_E0EINtB5_18SpecInPlaceCollectNtNtB9_6string6StringBP_E16collect_in_placeB28_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.not.i.i.i.i.i.i.i = xor i1 %4, true
  br label %bb.g

bb.g:                                             ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map12map_try_foldNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteNtNtCs7tKScEop1B6_5alloc6string6StringINtNtNtB1R_3vec13in_place_drop11InPlaceDropB1N_EINtNtBa_6result6ResultB2p_zENCINvB11_12display_gridINtNtB2u_9into_iter8IntoIterBZ_EE0NCINvNtB2u_16in_place_collect24write_in_place_with_dropB1N_E0E0B13_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.4.015.i.i.i.i.i = phi ptr [ %.sroa.057.0.copyload, %.lr.ph.i.i.i.i.i ], [ %i.ba, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map12map_try_foldNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteNtNtCs7tKScEop1B6_5alloc6string6StringINtNtNtB1R_3vec13in_place_drop11InPlaceDropB1N_EINtNtBa_6result6ResultB2p_zENCINvB11_12display_gridINtNtB2u_9into_iter8IntoIterBZ_EE0NCINvNtB2u_16in_place_collect24write_in_place_with_dropB1N_E0E0B13_.exit.i.i.i.i.i ] ; 4 uses
  %i.ac = phi ptr [ %.sroa.4.0.copyload, %.lr.ph.i.i.i.i.i ], [ %i.ad, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map12map_try_foldNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteNtNtCs7tKScEop1B6_5alloc6string6StringINtNtNtB1R_3vec13in_place_drop11InPlaceDropB1N_EINtNtBa_6result6ResultB2p_zENCINvB11_12display_gridINtNtB2u_9into_iter8IntoIterBZ_EE0NCINvNtB2u_16in_place_collect24write_in_place_with_dropB1N_E0E0B13_.exit.i.i.i.i.i ] ; 5 uses
  %.sroa.09.0.copyload.i.i.i.i.i = load i64, ptr %i.ac, align 8, !noalias !702 ; 2 uses
  %.sroa.410.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.410.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i, align 8, !noalias !702 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !702 ; 5 uses
  %.sroa.611.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.611.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.611.0..sroa_idx.i.i.i.i.i, align 8, !noalias !702
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 3 uses
  store i64 0, ptr %i.x, align 8, !noalias !703
  %i.ae = trunc nuw i8 %.sroa.611.0.copyload.i.i.i.i.i to i1
  %or.cond.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 true, i1 %i.ae
  %.pre120 = load i64, ptr %i.i, align 8, !range !5, !noalias !703 ; 2 uses
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i.i.i, %bb.g
  %i.af = phi i64 [ %.pre, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i.i.i ], [ %.pre120, %bb.g ]
  %i.ag = phi i64 [ 1, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i.i.i ], [ 0, %bb.g ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.410.0.copyload.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !704)
  %i.ah = sub nsw i64 %i.af, %i.ag
  %i.ai = icmp ugt i64 %.sroa.5.0.copyload.i.i.i.i.i, %i.ah
  br i1 %i.ai, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i.i.i.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i.i.i.i, !prof !7

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i.i.i.i.i.i: ; preds = %bb.h
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5EcwQX7phGK_5uu_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.ag, i64 noundef %.sroa.5.0.copyload.i.i.i.i.i, i64 noundef 1, i64 noundef 1) #37, !noalias !703
  %i.aj = load i64, ptr %i.x, align 8, !alias.scope !704, !noalias !703, !noundef !4 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, -1
  call void @llvm.assume(i1 %i.ak)
  br label %bb.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.5.0.copyload.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i.i.i.i.i.i
  %i.al = phi i64 [ %i.aj, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i.i.i.i.i.i ], [ %i.ag, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.am = load ptr, ptr %i.w, align 8, !alias.scope !704, !noalias !703, !nonnull !4, !noundef !4
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull readonly align 1 %.sroa.410.0.copyload.i.i.i.i.i, i64 %.sroa.5.0.copyload.i.i.i.i.i, i1 false), !noalias !705
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i.i.i.i
  %i.ao = phi i64 [ %i.al, %bb.i ], [ %i.ag, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i.i.i.i ]
  %i.ap = add i64 %i.ao, %.sroa.5.0.copyload.i.i.i.i.i ; 2 uses
  store i64 %i.ap, ptr %i.x, align 8, !alias.scope !704, !noalias !703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !703
  %i.aq = load ptr, ptr %i.w, align 8, !noalias !703, !nonnull !4, !noundef !4
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aq, i64 noundef %i.ap) #37, !noalias !703
  %i.ar = load i64, ptr %i.f, align 8, !range !15, !noalias !703, !noundef !4 ; 2 uses
  %.not3.i.i.i.i.i.i.i = icmp eq i64 %i.ar, -1
  %i.as = load ptr, ptr %i.aa, align 8, !noalias !706 ; 2 uses
  %i.at = load i64, ptr %i.ab, align 8, !noalias !706 ; 8 uses
  br i1 %.not3.i.i.i.i.i.i.i, label %bb.l, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit.thread7.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.g
  %i.au = icmp eq i64 %.pre120, 0
  br i1 %i.au, label %bb.k, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #36, !noalias !703
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i.i.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %i.av = load ptr, ptr %i.w, align 8, !alias.scope !707, !noalias !703, !nonnull !4, !noundef !4
  store i8 32, ptr %i.av, align 1, !noalias !703
  store i64 1, ptr %i.x, align 8, !alias.scope !707, !noalias !703
  %.pre = load i64, ptr %i.i, align 8, !range !5, !alias.scope !708, !noalias !703
  br label %bb.h

bb.l:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i.i.i
  %.not.i6.i.i.i.i.i.i.i = icmp slt i64 %i.at, 0
  br i1 %.not.i6.i.i.i.i.i.i.i, label %bb.o, label %bb.m, !prof !22

bb.m:                                             ; preds = %bb.l
  %i.aw = icmp eq i64 %i.at, 0
  br i1 %i.aw, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit.thread7.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !709
  %i.ax = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !709 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.l
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 1, %bb.n ], [ 0, %bb.l ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.at) #39, !noalias !703
  unreachable

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull align 1 %i.as, i64 %i.at, i1 false), !noalias !703
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit.thread7.i.i.i.i.i.i.i

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit.thread7.i.i.i.i.i.i.i: ; preds = %bb.p, %bb.m, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i.i.i
  %.sroa.6.0.i.i.i.i.i.i = phi i64 [ 0, %bb.m ], [ %i.at, %bb.p ], [ %i.at, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i.i.i ]
  %.sroa.5.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.m ], [ %i.ax, %bb.p ], [ %i.as, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i.i.i ]
  %.sroa.01.0.i.i.i.i.i.i = phi i64 [ 0, %bb.m ], [ %i.at, %bb.p ], [ %i.ar, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !703
  %i.az = icmp eq i64 %.sroa.09.0.copyload.i.i.i.i.i, 0
  br i1 %i.az, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map12map_try_foldNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteNtNtCs7tKScEop1B6_5alloc6string6StringINtNtNtB1R_3vec13in_place_drop11InPlaceDropB1N_EINtNtBa_6result6ResultB2p_zENCINvB11_12display_gridINtNtB2u_9into_iter8IntoIterBZ_EE0NCINvNtB2u_16in_place_collect24write_in_place_with_dropB1N_E0E0B13_.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit.thread7.i.i.i.i.i.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.410.0.copyload.i.i.i.i.i, i64 noundef %.sroa.09.0.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !710
  br label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map12map_try_foldNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteNtNtCs7tKScEop1B6_5alloc6string6StringINtNtNtB1R_3vec13in_place_drop11InPlaceDropB1N_EINtNtBa_6result6ResultB2p_zENCINvB11_12display_gridINtNtB2u_9into_iter8IntoIterBZ_EE0NCINvNtB2u_16in_place_collect24write_in_place_with_dropB1N_E0E0B13_.exit.i.i.i.i.i

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map12map_try_foldNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteNtNtCs7tKScEop1B6_5alloc6string6StringINtNtNtB1R_3vec13in_place_drop11InPlaceDropB1N_EINtNtBa_6result6ResultB2p_zENCINvB11_12display_gridINtNtB2u_9into_iter8IntoIterBZ_EE0NCINvNtB2u_16in_place_collect24write_in_place_with_dropB1N_E0E0B13_.exit.i.i.i.i.i: ; preds = %bb.q, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit.thread7.i.i.i.i.i.i.i
  store i64 %.sroa.01.0.i.i.i.i.i.i, ptr %.sroa.4.015.i.i.i.i.i, align 8, !noalias !711
  %.sroa.4.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.015.i.i.i.i.i, i64 8
  store ptr %.sroa.5.0.i.i.i.i.i.i, ptr %.sroa.4.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !711
  %.sroa.4.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.015.i.i.i.i.i, i64 16
  store i64 %.sroa.6.0.i.i.i.i.i.i, ptr %.sroa.4.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !711
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.4.015.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, %.sroa.659.0.copyload
  br i1 %.not.i.i.i.i.i, label %_RNvXs0_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB7_9into_iter8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENCINvB26_12display_gridB1D_E0EINtB5_18SpecInPlaceCollectNtNtB9_6string6StringBP_E16collect_in_placeB28_.exit.i.i, label %bb.g

_RNvXs0_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB7_9into_iter8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENCINvB26_12display_gridB1D_E0EINtB5_18SpecInPlaceCollectNtNtB9_6string6StringBP_E16collect_in_placeB28_.exit.i.i: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map12map_try_foldNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteNtNtCs7tKScEop1B6_5alloc6string6StringINtNtNtB1R_3vec13in_place_drop11InPlaceDropB1N_EINtNtBa_6result6ResultB2p_zENCINvB11_12display_gridINtNtB2u_9into_iter8IntoIterBZ_EE0NCINvNtB2u_16in_place_collect24write_in_place_with_dropB1N_E0E0B13_.exit.i.i.i.i.i, %bb.f
  %.val.i.i.i = phi ptr [ %.sroa.4.0.copyload, %bb.f ], [ %i.ad, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map12map_try_foldNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteNtNtCs7tKScEop1B6_5alloc6string6StringINtNtNtB1R_3vec13in_place_drop11InPlaceDropB1N_EINtNtBa_6result6ResultB2p_zENCINvB11_12display_gridINtNtB2u_9into_iter8IntoIterBZ_EE0NCINvNtB2u_16in_place_collect24write_in_place_with_dropB1N_E0E0B13_.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.4.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.057.0.copyload, %bb.f ], [ %i.ba, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map12map_try_foldNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteNtNtCs7tKScEop1B6_5alloc6string6StringINtNtNtB1R_3vec13in_place_drop11InPlaceDropB1N_EINtNtBa_6result6ResultB2p_zENCINvB11_12display_gridINtNtB2u_9into_iter8IntoIterBZ_EE0NCINvNtB2u_16in_place_collect24write_in_place_with_dropB1N_E0E0B13_.exit.i.i.i.i.i ] ; 2 uses
  %i.bb = ptrtoint ptr %.sroa.659.0.copyload to i64
  %i.bc = ptrtoint ptr %.val.i.i.i to i64
  %i.bd = sub nuw i64 %i.bb, %i.bc
  %i.be = lshr exact i64 %i.bd, 5
  call void @llvm.experimental.noalias.scope.decl(metadata !712)
  %i.bf = icmp eq ptr %.sroa.659.0.copyload, %.val.i.i.i
  br i1 %i.bf, label %_RNvMs0_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteE32forget_allocation_drop_remainingB10_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvXs0_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB7_9into_iter8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENCINvB26_12display_gridB1D_E0EINtB5_18SpecInPlaceCollectNtNtB9_6string6StringBP_E16collect_in_placeB28_.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEBF_.exit.i.i.i.i
  %.sroa.0.04.i.i.i.i = phi i64 [ %i.bh, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEBF_.exit.i.i.i.i ], [ 0, %_RNvXs0_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB7_9into_iter8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENCINvB26_12display_gridB1D_E0EINtB5_18SpecInPlaceCollectNtNtB9_6string6StringBP_E16collect_in_placeB28_.exit.i.i ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i, i64 %.sroa.0.04.i.i.i.i ; 2 uses
  %i.bh = add nuw nsw i64 %.sroa.0.04.i.i.i.i, 1  ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.bg, align 8, !range !5, !alias.scope !713, !noalias !714, !noundef !4 ; 2 uses
  %i.bi = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.bi, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEBF_.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bj = getelementptr i8, ptr %i.bg, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !712, !noalias !714, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !715
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEBF_.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEBF_.exit.i.i.i.i: ; preds = %bb.r, %.lr.ph.i.i.i.i
  %i.bk = icmp eq i64 %i.bh, %i.be
  br i1 %i.bk, label %_RNvMs0_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteE32forget_allocation_drop_remainingB10_.exit.i.i, label %.lr.ph.i.i.i.i

_RNvMs0_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteE32forget_allocation_drop_remainingB10_.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEBF_.exit.i.i.i.i, %_RNvXs0_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB7_9into_iter8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENCINvB26_12display_gridB1D_E0EINtB5_18SpecInPlaceCollectNtNtB9_6string6StringBP_E16collect_in_placeB28_.exit.i.i
  %.not.i.i.i = icmp ne i64 %.sroa.558.0.copyload, 0
  %i.bl = mul nuw i64 %i.z, 24                    ; 4 uses
  %i.bm = icmp ne i64 %i.y, %i.bl
  %.sroa.0.0.i.i.i = select i1 %.not.i.i.i, i1 %i.bm, i1 false
  br i1 %.sroa.0.0.i.i.i, label %_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global19shrink_impl_runtime.exit.i.i, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtB6_3VecNtNtB8_6string6StringEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENCINvB3g_12display_gridB2N_E0EE9from_iterB3i_.exit

_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global19shrink_impl_runtime.exit.i.i: ; preds = %_RNvMs0_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteE32forget_allocation_drop_remainingB10_.exit.i.i
  %i.bn = icmp ule i64 %i.bl, %i.y
  call void @llvm.assume(i1 %i.bn)
  %i.bo = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.057.0.copyload, i64 noundef %i.y, i64 noundef 8, i64 noundef %i.bl) #37, !noalias !716 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.s, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtB6_3VecNtNtB8_6string6StringEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENCINvB3g_12display_gridB2N_E0EE9from_iterB3i_.exit, !prof !23

bb.s:                                             ; preds = %_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global19shrink_impl_runtime.exit.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.bl) #39, !noalias !716
  unreachable

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtB6_3VecNtNtB8_6string6StringEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENCINvB3g_12display_gridB2N_E0EE9from_iterB3i_.exit: ; preds = %_RNvMs0_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteE32forget_allocation_drop_remainingB10_.exit.i.i, %_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global19shrink_impl_runtime.exit.i.i
  %.sroa.04.0.i.i = phi ptr [ %.sroa.057.0.copyload, %_RNvMs0_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteE32forget_allocation_drop_remainingB10_.exit.i.i ], [ %i.bo, %_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global19shrink_impl_runtime.exit.i.i ] ; 2 uses
  %i.bq = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i to i64
  %i.br = ptrtoint ptr %.sroa.057.0.copyload to i64
  %i.bs = sub nuw i64 %i.bq, %i.br                ; 4 uses
  %i.bt = udiv exact i64 %i.bs, 24                ; 14 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !717)
  %.val.i = load i64, ptr %i.i, align 8, !range !5, !alias.scope !717, !noundef !4 ; 2 uses
  %i.bu = icmp eq i64 %.val.i, 0
  br i1 %i.bu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5EcwQX7phGK_5uu_ls.exit, label %bb.t

bb.t:                                             ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtB6_3VecNtNtB8_6string6StringEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENCINvB3g_12display_gridB2N_E0EE9from_iterB3i_.exit
  %.val1.i = load ptr, ptr %i.w, align 8, !alias.scope !717, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !717
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5EcwQX7phGK_5uu_ls.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5EcwQX7phGK_5uu_ls.exit: ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtB6_3VecNtNtB8_6string6StringEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENCINvB3g_12display_gridB2N_E0EE9from_iterB3i_.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bv = icmp eq i64 %5, 0
  %. = select i1 %i.bv, i64 -9223372036854775808, i64 -9223372036854775806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bw = zext i16 %1 to i64                      ; 5 uses
  %i.bx = zext i1 %2 to i8
  %i.by = shl nuw nsw i64 %i.bt, 3                ; 2 uses
  %i.bz = icmp eq ptr %.sroa.4.0.lcssa.i.i.i.i.i, %.sroa.057.0.copyload ; 2 uses
  br i1 %i.bz, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterjEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0ECs5EcwQX7phGK_5uu_ls.exit.i, label %bb.u

bb.u:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5EcwQX7phGK_5uu_ls.exit
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !718
  %i.ca = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.by, i64 noundef range(i64 1, 9) 8) #37, !noalias !718 ; 7 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.v, label %.preheader.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.by) #39, !noalias !719
  unreachable

.preheader.i.i.i.i.i:                             ; preds = %bb.u, %.preheader.i.i.i.i.i
  %i.cc = phi i64 [ %i.ci, %.preheader.i.i.i.i.i ], [ 0, %bb.u ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %.sroa.04.0.i.i, i64 %i.cc ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  %.val11.i.i.i.i.i.i.i.i = load ptr, ptr %i.ce, align 8, !noalias !720, !nonnull !4, !noundef !4
  %i.cf = getelementptr i8, ptr %i.cd, i64 16
  %.val12.i.i.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !noalias !720, !noundef !4
  %i.cg = call noundef i64 @_RNvCs7OxSn9ncZ7G_10ansi_width10ansi_width(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val11.i.i.i.i.i.i.i.i, i64 noundef %.val12.i.i.i.i.i.i.i.i) #37, !noalias !721
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cc
  store i64 %i.cg, ptr %i.ch, align 8, !noalias !722
  %i.ci = add nuw i64 %i.cc, 1                    ; 2 uses
  %i.cj = icmp eq i64 %i.ci, %i.bt
  br i1 %i.cj, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtNtB6_6string6StringENCNvMs0_Cs7snenZ3AQk_9term_gridINtB30_4GridB2w_E3new0EE9from_iterCs5EcwQX7phGK_5uu_ls.exit.i, label %.preheader.i.i.i.i.i

_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtNtB6_6string6StringENCNvMs0_Cs7snenZ3AQk_9term_gridINtB30_4GridB2w_E3new0EE9from_iterCs5EcwQX7phGK_5uu_ls.exit.i: ; preds = %.preheader.i.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cl = load i64, ptr %i.ca, align 8, !noalias !723, !noundef !4 ; 3 uses
  %i.cm = icmp eq i64 %i.bs, 24
  br i1 %i.cm, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterjEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0ECs5EcwQX7phGK_5uu_ls.exit.i, label %bb.w

bb.w:                                             ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtNtB6_6string6StringENCNvMs0_Cs7snenZ3AQk_9term_gridINtB30_4GridB2w_E3new0EE9from_iterCs5EcwQX7phGK_5uu_ls.exit.i
  %i.cn = add nuw nsw i64 %i.bt, 2305843009213693951 ; 2 uses
  %i.co = and i64 %i.cn, 2305843009213693951      ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.co, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.w
  %n.vec = and i64 %i.cn, 2305843009213693948     ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cl, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %broadcast.splat, %vector.ph ], [ %i.cr, %vector.body ]
  %vec.phi182 = phi <2 x i64> [ %broadcast.splat, %vector.ph ], [ %i.cs, %vector.body ]
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %index ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %wide.load = load <2 x i64>, ptr %i.cp, align 8, !noalias !724
  %wide.load183 = load <2 x i64>, ptr %i.cq, align 8, !noalias !724
  %i.cr = call <2 x i64> @llvm.umax.v2i64(<2 x i64> %vec.phi, <2 x i64> %wide.load) ; 2 uses
  %i.cs = call <2 x i64> @llvm.umax.v2i64(<2 x i64> %vec.phi182, <2 x i64> %wide.load183) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !626

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <2 x i64> @llvm.umax.v2i64(<2 x i64> %i.cr, <2 x i64> %i.cs)
  %i.cu = call i64 @llvm.vector.reduce.umax.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterjEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0ECs5EcwQX7phGK_5uu_ls.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.w, %middle.block
  %.sroa.04.0.i.i.i.i.ph = phi i64 [ 0, %bb.w ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.i.i.ph = phi i64 [ %i.cl, %bb.w ], [ %i.cu, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.cw, %scalar.ph ], [ %.sroa.04.0.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ %..i.i.i.i.i.i.i, %scalar.ph ], [ %.sroa.02.0.i.i.i.i.ph, %scalar.ph.preheader ]
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.sroa.04.0.i.i.i.i
  %.val.i.i.i.i27 = load i64, ptr %i.cv, align 8, !noalias !724, !noundef !4
  %..i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.02.0.i.i.i.i, i64 %.val.i.i.i.i27) ; 2 uses
  %i.cw = add nuw i64 %.sroa.04.0.i.i.i.i, 1      ; 2 uses
  %i.cx = icmp eq i64 %i.cw, %i.co
  br i1 %i.cx, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterjEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0ECs5EcwQX7phGK_5uu_ls.exit.i, label %scalar.ph, !llvm.loop !627

_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterjEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0ECs5EcwQX7phGK_5uu_ls.exit.i: ; preds = %scalar.ph, %middle.block, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtNtB6_6string6StringENCNvMs0_Cs7snenZ3AQk_9term_gridINtB30_4GridB2w_E3new0EE9from_iterCs5EcwQX7phGK_5uu_ls.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5EcwQX7phGK_5uu_ls.exit
  %i.cy = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5EcwQX7phGK_5uu_ls.exit ], [ %i.ca, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtNtB6_6string6StringENCNvMs0_Cs7snenZ3AQk_9term_gridINtB30_4GridB2w_E3new0EE9from_iterCs5EcwQX7phGK_5uu_ls.exit.i ], [ %i.ca, %middle.block ], [ %i.ca, %scalar.ph ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5EcwQX7phGK_5uu_ls.exit ], [ %i.cl, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtNtB6_6string6StringENCNvMs0_Cs7snenZ3AQk_9term_gridINtB30_4GridB2w_E3new0EE9from_iterCs5EcwQX7phGK_5uu_ls.exit.i ], [ %i.cu, %middle.block ], [ %..i.i.i.i.i.i.i, %scalar.ph ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !724
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 4 uses
  store i64 %., ptr %i.cz, align 8, !noalias !725
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i64 2, ptr %.sroa.462.0..sroa_idx, align 8, !noalias !725
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i64 %5, ptr %.sroa.563.0..sroa_idx, align 8, !noalias !725
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i64 %i.bw, ptr %.sroa.664.0..sroa_idx, align 8, !noalias !725
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store i8 %i.bx, ptr %.sroa.765.0..sroa_idx, align 8, !noalias !725
  store i64 %i.z, ptr %i.e, align 8, !noalias !726
  %.sroa.5.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.04.0.i.i, ptr %.sroa.5.0..sroa_idx56, align 8, !noalias !726
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.bt, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !726
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %i.bt, ptr %i.da, align 8, !noalias !724
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.cy, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !724
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %i.bt, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !724
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store i64 %.sroa.0.0.i, ptr %i.db, align 8, !noalias !724
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 3 uses
  store i64 0, ptr %i.dc, align 8, !noalias !724
  %.sroa.03.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.03.sroa.4.0..sroa_idx.i, align 8, !noalias !724
  %.sroa.03.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !724
  %i.dd = icmp ult i64 %i.bs, -9223372036854775792
  call void @llvm.assume(i1 %i.dd)
  br i1 %i.bz, label %_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE3newCs5EcwQX7phGK_5uu_ls.exit, label %bb.x

bb.x:                                             ; preds = %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterjEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0ECs5EcwQX7phGK_5uu_ls.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !724
  %i.de = icmp eq i64 %i.bs, 24
  br i1 %i.de, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.df = call noundef i64 @_RNvMCs7snenZ3AQk_9term_gridNtB2_7Filling5width(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz) #37, !noalias !727
  %i.dg = add i64 %i.df, %.sroa.0.0.i             ; 4 uses
  %i.dh = icmp ugt i64 %i.dg, %i.bw
  br i1 %i.dh, label %bb.ac, label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.di = load i64, ptr %i.cy, align 8, !noalias !728, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !728
  %i.dj = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !728 ; 3 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.aa, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i, !prof !23

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #39, !noalias !728
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i: ; preds = %bb.z
  store i64 %i.di, ptr %i.dj, align 8, !noalias !728
  br label %_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE16width_dimensionsCs5EcwQX7phGK_5uu_ls.exit.thread.i

bb.ab:                                            ; preds = %bb.y
  %i.dl = call noundef i64 @_RNvMCs7snenZ3AQk_9term_gridNtB2_7Filling5width(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz) #37, !noalias !727
  %i.dm = icmp eq i64 %i.dg, 0
  br i1 %i.dm, label %bb.af, label %bb.ae

bb.ac:                                            ; preds = %bb.y
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !727
  %i.dn = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !727 ; 3 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.ad, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit27.i.i, !prof !23

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #39, !noalias !727
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit27.i.i: ; preds = %bb.ac
  store i64 %.sroa.0.0.i, ptr %i.dn, align 8, !noalias !727
  %i.dp = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.bt, i64 1
  br label %_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE16width_dimensionsCs5EcwQX7phGK_5uu_ls.exit.thread.i

bb.ae:                                            ; preds = %bb.ab
  %i.dq = add i64 %i.dl, %i.bw                    ; 2 uses
  %i.dr = udiv i64 %i.dq, %i.dg                   ; 2 uses
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.dr, i64 %i.bt) ; 4 uses
  %i.ds = icmp ugt i64 %i.dg, %i.dq
  br i1 %i.ds, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.ab
  call void @_RNvNtNtCs6JMX4GRUq9U_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #38, !noalias !727
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.dt = udiv i64 %i.bt, %..i.i.i
  %i.du = urem i64 %i.bt, %..i.i.i
  %.not.i.i = icmp ne i64 %i.du, 0
end_hunk_0
