Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_ls-a3a189bdfb08ca20.uu_ls.41ca68266698dde8-cgu.0?download=true
inline.NumInlined: 3251
inline.NumDeleted: 1478
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs5EcwQX7phGK_5uu_ls:bb.a

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
  %i.y = shl i64 %.sroa.558.0.copyload, 5         ; 5 uses
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
  br i1 %.sroa.0.0.i.i.i, label %bb.s, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtB6_3VecNtNtB8_6string6StringEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENCINvB3g_12display_gridB2N_E0EE9from_iterB3i_.exit

bb.s:                                             ; preds = %_RNvMs0_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteE32forget_allocation_drop_remainingB10_.exit.i.i
  %i.bn = icmp eq i64 %i.y, 0
  br i1 %i.bn, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtB6_3VecNtNtB8_6string6StringEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENCINvB3g_12display_gridB2N_E0EE9from_iterB3i_.exit, label %_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global19shrink_impl_runtime.exit.i.i

_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global19shrink_impl_runtime.exit.i.i: ; preds = %bb.s
  %i.bo = icmp ule i64 %i.bl, %i.y
  call void @llvm.assume(i1 %i.bo)
  %i.bp = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.057.0.copyload, i64 noundef %i.y, i64 noundef 8, i64 noundef %i.bl) #37, !noalias !716 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.t, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtB6_3VecNtNtB8_6string6StringEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENCINvB3g_12display_gridB2N_E0EE9from_iterB3i_.exit, !prof !23

bb.t:                                             ; preds = %_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global19shrink_impl_runtime.exit.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.bl) #39, !noalias !716
  unreachable

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtB6_3VecNtNtB8_6string6StringEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENCINvB3g_12display_gridB2N_E0EE9from_iterB3i_.exit: ; preds = %_RNvMs0_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteE32forget_allocation_drop_remainingB10_.exit.i.i, %bb.s, %_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global19shrink_impl_runtime.exit.i.i
  %.sroa.04.0.i.i = phi ptr [ %.sroa.057.0.copyload, %_RNvMs0_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteE32forget_allocation_drop_remainingB10_.exit.i.i ], [ %i.bp, %_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global19shrink_impl_runtime.exit.i.i ], [ inttoptr (i64 8 to ptr), %bb.s ] ; 2 uses
  %i.br = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i to i64
  %i.bs = ptrtoint ptr %.sroa.057.0.copyload to i64
  %i.bt = sub nuw i64 %i.br, %i.bs                ; 4 uses
  %i.bu = udiv exact i64 %i.bt, 24                ; 14 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !717)
  %.val.i = load i64, ptr %i.i, align 8, !range !5, !alias.scope !717, !noundef !4 ; 2 uses
  %i.bv = icmp eq i64 %.val.i, 0
  br i1 %i.bv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5EcwQX7phGK_5uu_ls.exit, label %bb.u

bb.u:                                             ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtB6_3VecNtNtB8_6string6StringEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENCINvB3g_12display_gridB2N_E0EE9from_iterB3i_.exit
  %.val1.i = load ptr, ptr %i.w, align 8, !alias.scope !717, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !717
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5EcwQX7phGK_5uu_ls.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5EcwQX7phGK_5uu_ls.exit: ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtB6_3VecNtNtB8_6string6StringEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENCINvB3g_12display_gridB2N_E0EE9from_iterB3i_.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bw = icmp eq i64 %5, 0
  %. = select i1 %i.bw, i64 -9223372036854775808, i64 -9223372036854775806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bx = zext i16 %1 to i64                      ; 5 uses
  %i.by = zext i1 %2 to i8
  %i.bz = shl nuw nsw i64 %i.bu, 3                ; 2 uses
  %i.ca = icmp eq ptr %.sroa.4.0.lcssa.i.i.i.i.i, %.sroa.057.0.copyload ; 2 uses
  br i1 %i.ca, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterjEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0ECs5EcwQX7phGK_5uu_ls.exit.i, label %bb.v

bb.v:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5EcwQX7phGK_5uu_ls.exit
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !718
  %i.cb = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.bz, i64 noundef range(i64 1, 9) 8) #37, !noalias !718 ; 7 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.w, label %.preheader.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.bz) #39, !noalias !719
  unreachable

.preheader.i.i.i.i.i:                             ; preds = %bb.v, %.preheader.i.i.i.i.i
  %i.cd = phi i64 [ %i.cj, %.preheader.i.i.i.i.i ], [ 0, %bb.v ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %.sroa.04.0.i.i, i64 %i.cd ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  %.val11.i.i.i.i.i.i.i.i = load ptr, ptr %i.cf, align 8, !noalias !720, !nonnull !4, !noundef !4
  %i.cg = getelementptr i8, ptr %i.ce, i64 16
  %.val12.i.i.i.i.i.i.i.i = load i64, ptr %i.cg, align 8, !noalias !720, !noundef !4
  %i.ch = call noundef i64 @_RNvCs7OxSn9ncZ7G_10ansi_width10ansi_width(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val11.i.i.i.i.i.i.i.i, i64 noundef %.val12.i.i.i.i.i.i.i.i) #37, !noalias !721
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cd
  store i64 %i.ch, ptr %i.ci, align 8, !noalias !722
  %i.cj = add nuw i64 %i.cd, 1                    ; 2 uses
  %i.ck = icmp eq i64 %i.cj, %i.bu
  br i1 %i.ck, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtNtB6_6string6StringENCNvMs0_Cs7snenZ3AQk_9term_gridINtB30_4GridB2w_E3new0EE9from_iterCs5EcwQX7phGK_5uu_ls.exit.i, label %.preheader.i.i.i.i.i

_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtNtB6_6string6StringENCNvMs0_Cs7snenZ3AQk_9term_gridINtB30_4GridB2w_E3new0EE9from_iterCs5EcwQX7phGK_5uu_ls.exit.i: ; preds = %.preheader.i.i.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.cm = load i64, ptr %i.cb, align 8, !noalias !723, !noundef !4 ; 3 uses
  %i.cn = icmp eq i64 %i.bt, 24
  br i1 %i.cn, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterjEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0ECs5EcwQX7phGK_5uu_ls.exit.i, label %bb.x

bb.x:                                             ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtNtB6_6string6StringENCNvMs0_Cs7snenZ3AQk_9term_gridINtB30_4GridB2w_E3new0EE9from_iterCs5EcwQX7phGK_5uu_ls.exit.i
  %i.co = add nuw nsw i64 %i.bu, 2305843009213693951 ; 2 uses
  %i.cp = and i64 %i.co, 2305843009213693951      ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.cp, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.x
  %n.vec = and i64 %i.co, 2305843009213693948     ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cm, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %broadcast.splat, %vector.ph ], [ %i.cs, %vector.body ]
  %vec.phi182 = phi <2 x i64> [ %broadcast.splat, %vector.ph ], [ %i.ct, %vector.body ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %index ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %wide.load = load <2 x i64>, ptr %i.cq, align 8, !noalias !724
  %wide.load183 = load <2 x i64>, ptr %i.cr, align 8, !noalias !724
  %i.cs = call <2 x i64> @llvm.umax.v2i64(<2 x i64> %vec.phi, <2 x i64> %wide.load) ; 2 uses
  %i.ct = call <2 x i64> @llvm.umax.v2i64(<2 x i64> %vec.phi182, <2 x i64> %wide.load183) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !626

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <2 x i64> @llvm.umax.v2i64(<2 x i64> %i.cs, <2 x i64> %i.ct)
  %i.cv = call i64 @llvm.vector.reduce.umax.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.cp, %n.vec
  br i1 %cmp.n, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterjEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0ECs5EcwQX7phGK_5uu_ls.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.x, %middle.block
  %.sroa.04.0.i.i.i.i.ph = phi i64 [ 0, %bb.x ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.i.i.ph = phi i64 [ %i.cm, %bb.x ], [ %i.cv, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.cx, %scalar.ph ], [ %.sroa.04.0.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ %..i.i.i.i.i.i.i, %scalar.ph ], [ %.sroa.02.0.i.i.i.i.ph, %scalar.ph.preheader ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.sroa.04.0.i.i.i.i
  %.val.i.i.i.i27 = load i64, ptr %i.cw, align 8, !noalias !724, !noundef !4
  %..i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.02.0.i.i.i.i, i64 %.val.i.i.i.i27) ; 2 uses
  %i.cx = add nuw i64 %.sroa.04.0.i.i.i.i, 1      ; 2 uses
  %i.cy = icmp eq i64 %i.cx, %i.cp
  br i1 %i.cy, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterjEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0ECs5EcwQX7phGK_5uu_ls.exit.i, label %scalar.ph, !llvm.loop !627

_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterjEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0ECs5EcwQX7phGK_5uu_ls.exit.i: ; preds = %scalar.ph, %middle.block, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtNtB6_6string6StringENCNvMs0_Cs7snenZ3AQk_9term_gridINtB30_4GridB2w_E3new0EE9from_iterCs5EcwQX7phGK_5uu_ls.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5EcwQX7phGK_5uu_ls.exit
  %i.cz = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5EcwQX7phGK_5uu_ls.exit ], [ %i.cb, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtNtB6_6string6StringENCNvMs0_Cs7snenZ3AQk_9term_gridINtB30_4GridB2w_E3new0EE9from_iterCs5EcwQX7phGK_5uu_ls.exit.i ], [ %i.cb, %middle.block ], [ %i.cb, %scalar.ph ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5EcwQX7phGK_5uu_ls.exit ], [ %i.cm, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtNtB6_6string6StringENCNvMs0_Cs7snenZ3AQk_9term_gridINtB30_4GridB2w_E3new0EE9from_iterCs5EcwQX7phGK_5uu_ls.exit.i ], [ %i.cv, %middle.block ], [ %..i.i.i.i.i.i.i, %scalar.ph ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !724
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 4 uses
  store i64 %., ptr %i.da, align 8, !noalias !725
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i64 2, ptr %.sroa.462.0..sroa_idx, align 8, !noalias !725
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i64 %5, ptr %.sroa.563.0..sroa_idx, align 8, !noalias !725
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i64 %i.bx, ptr %.sroa.664.0..sroa_idx, align 8, !noalias !725
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store i8 %i.by, ptr %.sroa.765.0..sroa_idx, align 8, !noalias !725
  store i64 %i.z, ptr %i.e, align 8, !noalias !726
  %.sroa.5.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.04.0.i.i, ptr %.sroa.5.0..sroa_idx56, align 8, !noalias !726
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.bu, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !726
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %i.bu, ptr %i.db, align 8, !noalias !724
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.cz, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !724
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %i.bu, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !724
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store i64 %.sroa.0.0.i, ptr %i.dc, align 8, !noalias !724
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 3 uses
  store i64 0, ptr %i.dd, align 8, !noalias !724
  %.sroa.03.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.03.sroa.4.0..sroa_idx.i, align 8, !noalias !724
  %.sroa.03.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !724
  %i.de = icmp ult i64 %i.bt, -9223372036854775792
  call void @llvm.assume(i1 %i.de)
  br i1 %i.ca, label %_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE3newCs5EcwQX7phGK_5uu_ls.exit, label %bb.y

bb.y:                                             ; preds = %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterjEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0ECs5EcwQX7phGK_5uu_ls.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !724
  %i.df = icmp eq i64 %i.bt, 24
  br i1 %i.df, label %bb.aa, label %bb.z
end_hunk_0
begin_hunk_1_@_RNvMs_NtCs5EcwQX7phGK_5uu_ls6configNtB4_6Config4from:bb.a

bb.lm:                                            ; preds = %.lr.ph.split.i.i159.i
  %i.azs = call { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.azq, i64 noundef range(i64 0, -9223372036854775808) %i.azp) #37, !noalias !8277
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i160.i

._crit_edge.i.i.i183.i:                           ; preds = %bb.ln, %.lr.ph.i.i.i180.i, %.preheader.i.i.i178.i
  %.sroa.01.0.lcssa.i.i.i184.i = phi i64 [ 0, %.preheader.i.i.i178.i ], [ %.sroa.01.05.i.i.i181.i, %.lr.ph.i.i.i180.i ], [ %i.azp, %bb.ln ]
  %.sroa.0.1.i.i.i185.i = phi i64 [ 0, %.preheader.i.i.i178.i ], [ 1, %.lr.ph.i.i.i180.i ], [ 0, %bb.ln ]
  %i.azt = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i185.i, 0
  %i.azu = insertvalue { i64, i64 } %i.azt, i64 %.sroa.01.0.lcssa.i.i.i184.i, 1
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i160.i

.lr.ph.i.i.i180.i:                                ; preds = %.preheader.i.i.i178.i, %bb.ln
  %.sroa.01.05.i.i.i181.i = phi i64 [ %i.azy, %bb.ln ], [ 0, %.preheader.i.i.i178.i ] ; 3 uses
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azq, i64 %.sroa.01.05.i.i.i181.i
  %i.azw = load i8, ptr %i.azv, align 1, !alias.scope !8278, !noalias !8277, !noundef !4
  %i.azx = icmp eq i8 %i.azw, 10
  br i1 %i.azx, label %._crit_edge.i.i.i183.i, label %bb.ln

bb.ln:                                            ; preds = %.lr.ph.i.i.i180.i
  %i.azy = add nuw nsw i64 %.sroa.01.05.i.i.i181.i, 1 ; 2 uses
  %exitcond.not.i.i.i182.i = icmp eq i64 %i.azy, %i.azp
  br i1 %exitcond.not.i.i.i182.i, label %._crit_edge.i.i.i183.i, label %.lr.ph.i.i.i180.i

_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i160.i: ; preds = %._crit_edge.i.i.i183.i, %bb.lm
  %.merged.i.i.i161.i = phi { i64, i64 } [ %i.azu, %._crit_edge.i.i.i183.i ], [ %i.azs, %bb.lm ] ; 2 uses
  %i.azz = extractvalue { i64, i64 } %.merged.i.i.i161.i, 0
  %i.baa = trunc nuw i64 %i.azz to i1
  br i1 %i.baa, label %bb.lo, label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE7get_endCs5EcwQX7phGK_5uu_ls.exit.i163.i

bb.lo:                                            ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i160.i
  %i.bab = extractvalue { i64, i64 } %.merged.i.i.i161.i, 1 ; 3 uses
  %i.bac = add nuw i64 %i.azo, 1
  %i.bad = add i64 %i.bac, %i.bab                 ; 3 uses
  %.not12.i.i174.i = icmp ugt i64 %i.bad, %i.ayu  ; 2 uses
  %i.bae = add i64 %i.bab, %i.azo
  %or.cond.i.i175.not.i = icmp ult i64 %i.bae, %i.ayu
  br i1 %or.cond.i.i175.not.i, label %bb.lq, label %bb.lp

bb.lp:                                            ; preds = %bb.lq, %bb.lo
  br i1 %.not12.i.i174.i, label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE7get_endCs5EcwQX7phGK_5uu_ls.exit.i163.i, label %.lr.ph.split.i.i159.i

bb.lq:                                            ; preds = %bb.lo
  %i.baf = getelementptr i8, ptr %i.azq, i64 %i.bab
  %lhsc382.i = load i8, ptr %i.baf, align 1, !noalias !8256
  %i.bag = icmp eq i8 %lhsc382.i, 10
  br i1 %i.bag, label %bb.lr, label %bb.lp

_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE7get_endCs5EcwQX7phGK_5uu_ls.exit.i163.i: ; preds = %bb.lp, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i160.i, %bb.ll
  %i.bah = sub nuw i64 %i.ayu, %i.azk
  %i.bai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i150387.i, i64 %i.azk
  br label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCs5EcwQX7phGK_5uu_ls.exit221.thread.i

bb.lr:                                            ; preds = %bb.lq
  br i1 %.not12.i.i174.i, label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCs5EcwQX7phGK_5uu_ls.exit221.i, label %.lr.ph.split.i.i194.i

.lr.ph.split.i.i194.i:                            ; preds = %bb.lr, %.lr.ph.split.i.i194.i.backedge
  %i.baj = phi i64 [ %i.bay, %.lr.ph.split.i.i194.i.backedge ], [ %i.bad, %bb.lr ] ; 4 uses
  %i.bak = sub nuw i64 %i.ayu, %i.baj             ; 5 uses
  %i.bal = getelementptr i8, ptr %.sroa.0.0.i150387.i, i64 %i.baj ; 3 uses
  %i.bam = icmp samesign ult i64 %i.bak, 16
  br i1 %i.bam, label %.preheader.i.i.i213.i, label %bb.ls

.preheader.i.i.i213.i:                            ; preds = %.lr.ph.split.i.i194.i
  %.not.i.i.i214.i = icmp eq i64 %i.bak, 0
  br i1 %.not.i.i.i214.i, label %._crit_edge.i.i.i218.i, label %.lr.ph.i.i.i215.i

bb.ls:                                            ; preds = %.lr.ph.split.i.i194.i
  %i.ban = call { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bal, i64 noundef range(i64 0, -9223372036854775808) %i.bak) #37, !noalias !8279
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i195.i

._crit_edge.i.i.i218.i:                           ; preds = %bb.lt, %.lr.ph.i.i.i215.i, %.preheader.i.i.i213.i
  %.sroa.01.0.lcssa.i.i.i219.i = phi i64 [ 0, %.preheader.i.i.i213.i ], [ %.sroa.01.05.i.i.i216.i, %.lr.ph.i.i.i215.i ], [ %i.bak, %bb.lt ]
  %.sroa.0.1.i.i.i220.i = phi i64 [ 0, %.preheader.i.i.i213.i ], [ 1, %.lr.ph.i.i.i215.i ], [ 0, %bb.lt ]
  %i.bao = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i220.i, 0
  %i.bap = insertvalue { i64, i64 } %i.bao, i64 %.sroa.01.0.lcssa.i.i.i219.i, 1
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i195.i

.lr.ph.i.i.i215.i:                                ; preds = %.preheader.i.i.i213.i, %bb.lt
  %.sroa.01.05.i.i.i216.i = phi i64 [ %i.bat, %bb.lt ], [ 0, %.preheader.i.i.i213.i ] ; 3 uses
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bal, i64 %.sroa.01.05.i.i.i216.i
  %i.bar = load i8, ptr %i.baq, align 1, !alias.scope !8280, !noalias !8279, !noundef !4
  %i.bas = icmp eq i8 %i.bar, 10
  br i1 %i.bas, label %._crit_edge.i.i.i218.i, label %bb.lt

bb.lt:                                            ; preds = %.lr.ph.i.i.i215.i
  %i.bat = add nuw nsw i64 %.sroa.01.05.i.i.i216.i, 1 ; 2 uses
  %exitcond.not.i.i.i217.i = icmp eq i64 %i.bat, %i.bak
  br i1 %exitcond.not.i.i.i217.i, label %._crit_edge.i.i.i218.i, label %.lr.ph.i.i.i215.i

_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i195.i: ; preds = %._crit_edge.i.i.i218.i, %bb.ls
  %.merged.i.i.i196.i = phi { i64, i64 } [ %i.bap, %._crit_edge.i.i.i218.i ], [ %i.ban, %bb.ls ] ; 2 uses
  %i.bau = extractvalue { i64, i64 } %.merged.i.i.i196.i, 0
  %i.bav = trunc nuw i64 %i.bau to i1
  br i1 %i.bav, label %bb.lu, label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCs5EcwQX7phGK_5uu_ls.exit221.i

bb.lu:                                            ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i195.i
  %i.baw = extractvalue { i64, i64 } %.merged.i.i.i196.i, 1 ; 3 uses
  %i.bax = add i64 %i.baj, 1
  %i.bay = add i64 %i.bax, %i.baw                 ; 2 uses
  %.not12.i.i209.i = icmp ugt i64 %i.bay, %i.ayu  ; 2 uses
  %i.baz = add i64 %i.baw, %i.baj
  %or.cond.i.i210.not.i = icmp ult i64 %i.baz, %i.ayu
  br i1 %or.cond.i.i210.not.i, label %bb.lw, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  br i1 %.not12.i.i209.i, label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCs5EcwQX7phGK_5uu_ls.exit221.i, label %.lr.ph.split.i.i194.i.backedge

.lr.ph.split.i.i194.i.backedge:                   ; preds = %bb.lv, %bb.lw
  br label %.lr.ph.split.i.i194.i

bb.lw:                                            ; preds = %bb.lu
  %i.bba = getelementptr i8, ptr %i.bal, i64 %i.baw
  %lhsc384.i = load i8, ptr %i.bba, align 1, !noalias !8256
  %i.bbb = icmp eq i8 %lhsc384.i, 10
  %brmerge1313 = or i1 %.not12.i.i209.i, %i.bbb
  br i1 %brmerge1313, label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCs5EcwQX7phGK_5uu_ls.exit221.i, label %.lr.ph.split.i.i194.i.backedge

bb.lx:                                            ; preds = %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i
  call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.020.0.i, i64 noundef %.sroa.11.0.i, i64 noundef 1, i64 noundef %.sroa.11.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @241) #38, !noalias !8256
  unreachable

_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCs5EcwQX7phGK_5uu_ls.exit221.i: ; preds = %bb.lw, %bb.lv, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i195.i, %bb.lr
  %.not.i222.i = icmp slt i64 %.sroa.11.0.i, 0
  br i1 %.not.i222.i, label %bb.ma, label %bb.ly, !prof !22

bb.ly:                                            ; preds = %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCs5EcwQX7phGK_5uu_ls.exit221.i
  %i.bbc = icmp eq i64 %.sroa.11.0.i, 0
  br i1 %i.bbc, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit224.thread317.i, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !8281
  %i.bbd = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %.sroa.11.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !8281 ; 3 uses
  %i.bbe = icmp eq ptr %i.bbd, null
  br i1 %i.bbe, label %bb.ma, label %bb.mb

_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCs5EcwQX7phGK_5uu_ls.exit221.thread.i: ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i, %bb.lj, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE7get_endCs5EcwQX7phGK_5uu_ls.exit.i163.i
  %.sroa.4.1.i391.ph.i = phi i64 [ %i.azl, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE7get_endCs5EcwQX7phGK_5uu_ls.exit.i163.i ], [ %i.ayu, %bb.lj ], [ %i.ayu, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i ]
  %.sroa.4.1.i171.ph.i = phi i64 [ %i.bah, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE7get_endCs5EcwQX7phGK_5uu_ls.exit.i163.i ], [ undef, %bb.lj ], [ undef, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i ]
  %.sroa.0.1.i172.ph.i = phi ptr [ %i.bai, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE7get_endCs5EcwQX7phGK_5uu_ls.exit.i163.i ], [ null, %bb.lj ], [ null, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !8257
  store ptr %.sroa.0.0.i150387.i, ptr %i.bb, align 8, !noalias !8257
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %.sroa.4.1.i391.ph.i, ptr %i.bbf, align 8, !noalias !8257
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %.sroa.0.1.i172.ph.i, ptr %i.bbg, align 8, !noalias !8257
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i64 %.sroa.4.1.i171.ph.i, ptr %i.bbh, align 8, !noalias !8257
  call fastcc void @_RNvNvNtCs5EcwQX7phGK_5uu_ls6config16parse_time_style2ok(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %i.he, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %i.bb) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !8257
  br label %bb.mi

bb.ma:                                            ; preds = %bb.lz, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCs5EcwQX7phGK_5uu_ls.exit221.i
  %.sroa.4268.0.ph.i = phi i64 [ 1, %bb.lz ], [ 0, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCs5EcwQX7phGK_5uu_ls.exit221.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4268.0.ph.i, i64 %.sroa.11.0.i) #39, !noalias !8256
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit224.thread317.i: ; preds = %bb.mb, %bb.ly
  %i.bbi = phi ptr [ %i.bbd, %bb.mb ], [ inttoptr (i64 1 to ptr), %bb.ly ]
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store i64 -9223372036854775800, ptr %i.bbj, align 8, !alias.scope !8256, !noalias !8274
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store i64 %.sroa.11.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8256, !noalias !8274
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  store ptr %i.bbi, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !8256, !noalias !8274
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  store i64 %.sroa.11.0.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !8256, !noalias !8274
  store i64 -1, ptr %i.he, align 8, !alias.scope !8256, !noalias !8274
  br label %bb.mi

bb.mb:                                            ; preds = %bb.lz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bbd, ptr nonnull align 1 %.sroa.020.0.i, i64 %.sroa.11.0.i, i1 false), !noalias !8256
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit224.thread317.i

bb.mc:                                            ; preds = %bb.kz
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 11) #39, !noalias !8256
  unreachable

bb.md:                                            ; preds = %bb.kz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.axy, ptr noundef nonnull align 1 dereferenceable(11) @245, i64 11, i1 false), !noalias !8256
  %i.bbk = load ptr, ptr @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4time6format3ISO, align 8, !noalias !8257, !nonnull !4, !noundef !4
  %i.bbl = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4time6format3ISO, i64 8), align 8, !noalias !8257, !noundef !4 ; 8 uses
  %.not.i225.i = icmp slt i64 %i.bbl, 0
  br i1 %.not.i225.i, label %bb.mg, label %bb.me, !prof !22

bb.me:                                            ; preds = %bb.md
  %i.bbm = icmp eq i64 %i.bbl, 0
  br i1 %i.bbm, label %_RNvXst_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringINtNtNtCs6JMX4GRUq9U_4core3ops5arith3AddReE3add.exit.i, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !8282
  %i.bbn = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.bbl, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !8282 ; 3 uses
  %i.bbo = icmp eq ptr %i.bbn, null
  br i1 %i.bbo, label %bb.mg, label %bb.mh

bb.mg:                                            ; preds = %bb.mf, %bb.md
  %.sroa.4256.0.ph.i = phi i64 [ 1, %bb.mf ], [ 0, %bb.md ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4256.0.ph.i, i64 %i.bbl) #39, !noalias !8256
  unreachable

_RNvXst_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringINtNtNtCs6JMX4GRUq9U_4core3ops5arith3AddReE3add.exit.i: ; preds = %bb.mh, %bb.me
  %i.bbp = phi ptr [ %i.bbn, %bb.mh ], [ inttoptr (i64 1 to ptr), %bb.me ]
  store i64 %i.bbl, ptr %i.bc, align 8, !noalias !8257
  %.sroa.468.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  store ptr %i.bbp, ptr %.sroa.468.0..sroa_idx.i, align 8, !noalias !8257
  %.sroa.669.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 3 uses
  store i64 %i.bbl, ptr %.sroa.669.0..sroa_idx.i, align 8, !noalias !8257
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5EcwQX7phGK_5uu_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc, i64 noundef %i.bbl, i64 noundef 1, i64 noundef 1, i64 noundef 1) #37, !noalias !8256
  %i.bbq = load i64, ptr %.sroa.669.0..sroa_idx.i, align 8, !noalias !8257, !noundef !4 ; 3 uses
  %i.bbr = icmp sgt i64 %i.bbq, -1
  call void @llvm.assume(i1 %i.bbr)
  %i.bbs = load ptr, ptr %.sroa.468.0..sroa_idx.i, align 8, !noalias !8257, !nonnull !4, !noundef !4
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbs, i64 %i.bbq
  store i8 32, ptr %i.bbt, align 1, !noalias !8283
  %i.bbu = add nuw i64 %i.bbq, 1
  store i64 %i.bbu, ptr %.sroa.669.0..sroa_idx.i, align 8, !noalias !8257
  store i64 11, ptr %i.he, align 8, !alias.scope !8256, !noalias !8274
  %.sroa.464.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store ptr %i.axy, ptr %.sroa.464.0..sroa_idx.i, align 8, !alias.scope !8256, !noalias !8274
  %.sroa.565.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store i64 11, ptr %.sroa.565.0..sroa_idx.i, align 8, !alias.scope !8256, !noalias !8274
  %.sroa.666.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.666.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false), !noalias !8274
  br label %bb.mi

bb.mh:                                            ; preds = %bb.mf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bbn, ptr nonnull align 1 %i.bbk, i64 %i.bbl, i1 false), !noalias !8256
  br label %_RNvXst_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringINtNtNtCs6JMX4GRUq9U_4core3ops5arith3AddReE3add.exit.i

bb.mi:                                            ; preds = %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCs5EcwQX7phGK_5uu_ls.exit221.thread.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit224.thread317.i, %_RNvXst_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringINtNtNtCs6JMX4GRUq9U_4core3ops5arith3AddReE3add.exit.i, %.thread304.i, %bb.lb, %bb.kx, %bb.kv, %.critedge.i
  %.0.val.off.i228.i = add i64 %.sroa.0.0286.i, -1
  %switch.i229.i = icmp ult i64 %.0.val.off.i228.i, -2
  br i1 %switch.i229.i, label %bb.mj, label %_RNvNtCs5EcwQX7phGK_5uu_ls6config16parse_time_style.exit

bb.mj:                                            ; preds = %bb.mi
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.sroa.0.0285.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.sroa.0.0285.i, i64 noundef %.sroa.0.0286.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !8284
  br label %_RNvNtCs5EcwQX7phGK_5uu_ls6config16parse_time_style.exit

bb.mk:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs5EcwQX7phGK_5uu_ls.exit142.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs5EcwQX7phGK_5uu_ls.exit136.i
  call fastcc void @_RNvNvNtCs5EcwQX7phGK_5uu_ls6config16parse_time_style2ok(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %i.he, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) @244) #37
  %.0.val.off.i230.i = add i64 %.sroa.0.0286.i, -1
  %switch.i231.i = icmp ult i64 %.0.val.off.i230.i, -2
  br i1 %switch.i231.i, label %bb.ml, label %_RNvNtCs5EcwQX7phGK_5uu_ls6config16parse_time_style.exit

bb.ml:                                            ; preds = %bb.mk
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.sroa.0.0285.i, i64 noundef %.sroa.0.0286.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !8285
  br label %_RNvNtCs5EcwQX7phGK_5uu_ls6config16parse_time_style.exit

bb.mm:                                            ; preds = %bb.kc
  call fastcc void @_RNvNvNtCs5EcwQX7phGK_5uu_ls6config16parse_time_style2ok(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %i.he, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) @244) #37
  br label %_RNvNtCs5EcwQX7phGK_5uu_ls6config16parse_time_style.exit

bb.mn:                                            ; preds = %bb.kc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !8257
  %i.bbv = load ptr, ptr @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4time6format8FULL_ISO, align 8, !noalias !8257, !nonnull !4, !noundef !4
  %i.bbw = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4time6format8FULL_ISO, i64 8), align 8, !noalias !8257, !noundef !4
  store ptr %i.bbv, ptr %i.ba, align 8, !noalias !8257
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %i.bbw, ptr %i.bbx, align 8, !noalias !8257
  %i.bby = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr null, ptr %i.bby, align 8, !noalias !8257
  call fastcc void @_RNvNvNtCs5EcwQX7phGK_5uu_ls6config16parse_time_style2ok(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %i.he, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %i.ba) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !8257
  br label %_RNvNtCs5EcwQX7phGK_5uu_ls6config16parse_time_style.exit

_RNvNtCs5EcwQX7phGK_5uu_ls6config16parse_time_style.exit: ; preds = %bb.mi, %bb.mj, %bb.mk, %bb.ml, %bb.mm, %bb.mn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %i.bbz = load i64, ptr %i.he, align 8, !range !15, !noundef !4 ; 2 uses
  %i.bca = icmp eq i64 %i.bbz, -1
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %.sroa.01145.0.copyload = load ptr, ptr %i.bcb, align 8 ; 2 uses
  %.sroa.41146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %.sroa.41146.0.copyload = load i64, ptr %.sroa.41146.0..sroa_idx, align 8 ; 2 uses
  %.sroa.51147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %.sroa.51147.0.copyload = load i64, ptr %.sroa.51147.0..sroa_idx, align 8 ; 2 uses
  %.sroa.61148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  %.sroa.61148.0.copyload = load ptr, ptr %.sroa.61148.0..sroa_idx, align 8 ; 2 uses
  %.sroa.71149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 40
  %.sroa.71149.0.copyload = load i64, ptr %.sroa.71149.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.he)
  br i1 %i.bca, label %bb.mp, label %bb.mo

bb.mo:                                            ; preds = %_RNvNtCs5EcwQX7phGK_5uu_ls6config16parse_time_style.exit, %_RNvNtCs5EcwQX7phGK_5uu_ls6config23extract_indicator_style.exit
  %.sroa.11.0 = phi i64 [ undef, %_RNvNtCs5EcwQX7phGK_5uu_ls6config23extract_indicator_style.exit ], [ %.sroa.71149.0.copyload, %_RNvNtCs5EcwQX7phGK_5uu_ls6config16parse_time_style.exit ]
  %.sroa.10985.0 = phi ptr [ undef, %_RNvNtCs5EcwQX7phGK_5uu_ls6config23extract_indicator_style.exit ], [ %.sroa.61148.0.copyload, %_RNvNtCs5EcwQX7phGK_5uu_ls6config16parse_time_style.exit ] ; 3 uses
  %.sroa.8984.0 = phi i64 [ -1, %_RNvNtCs5EcwQX7phGK_5uu_ls6config23extract_indicator_style.exit ], [ %.sroa.51147.0.copyload, %_RNvNtCs5EcwQX7phGK_5uu_ls6config16parse_time_style.exit ] ; 3 uses
  %.sroa.6983.0 = phi i64 [ 0, %_RNvNtCs5EcwQX7phGK_5uu_ls6config23extract_indicator_style.exit ], [ %.sroa.41146.0.copyload, %_RNvNtCs5EcwQX7phGK_5uu_ls6config16parse_time_style.exit ]
  %.sroa.3.01221 = phi ptr [ inttoptr (i64 1 to ptr), %_RNvNtCs5EcwQX7phGK_5uu_ls6config23extract_indicator_style.exit ], [ %.sroa.01145.0.copyload, %_RNvNtCs5EcwQX7phGK_5uu_ls6config16parse_time_style.exit ] ; 3 uses
  %.sroa.0982.0 = phi i64 [ 0, %_RNvNtCs5EcwQX7phGK_5uu_ls6config23extract_indicator_style.exit ], [ %i.bbz, %_RNvNtCs5EcwQX7phGK_5uu_ls6config16parse_time_style.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hd)
  store i64 0, ptr %i.hd, align 8
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 6 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bcc, align 8
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.hd, i64 16 ; 10 uses
  store i64 0, ptr %i.bcd, align 8
  %i.bce = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @277, i64 noundef 14) #37
  br i1 %i.bce, label %bb.mr, label %bb.mw

bb.mp:                                            ; preds = %_RNvNtCs5EcwQX7phGK_5uu_ls6config16parse_time_style.exit
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !8286
  %i.bcf = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !8286 ; 7 uses
  %i.bcg = icmp eq ptr %i.bcf, null
  br i1 %i.bcg, label %bb.mq, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit609, !prof !23

bb.mq:                                            ; preds = %bb.mp
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #39, !noalias !8286
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit609: ; preds = %bb.mp
  store ptr %.sroa.01145.0.copyload, ptr %i.bcf, align 8
  %.sroa.41151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bcf, i64 8
  store i64 %.sroa.41146.0.copyload, ptr %.sroa.41151.0..sroa_idx, align 8
  %.sroa.51152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bcf, i64 16
  store i64 %.sroa.51147.0.copyload, ptr %.sroa.51152.0..sroa_idx, align 8
  %.sroa.61153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bcf, i64 24
  store ptr %.sroa.61148.0.copyload, ptr %.sroa.61153.0..sroa_idx, align 8
  %.sroa.71154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bcf, i64 32
  store i64 %.sroa.71149.0.copyload, ptr %.sroa.71154.0..sroa_idx, align 8
  %i.bch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bcf, ptr %i.bch, align 8
  %i.bci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @213, ptr %i.bci, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5EcwQX7phGK_5uu_ls.exit824

bb.mr:                                            ; preds = %bb.mo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hb)
  call void @_RNvMsa_Cs8P23TVsEbeF_4globNtB5_7Pattern3new(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.hb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @214, i64 noundef 2) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !8287)
  call void @llvm.experimental.noalias.scope.decl(metadata !8288)
  %i.bcj = load i64, ptr %i.hb, align 8, !range !15, !alias.scope !8288, !noalias !8289, !noundef !4
  %i.bck = icmp eq i64 %i.bcj, -1
  br i1 %i.bck, label %bb.ms, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtCs8P23TVsEbeF_4glob7PatternNtBJ_12PatternErrorE6unwrapCs5EcwQX7phGK_5uu_ls.exit471, !prof !7

bb.ms:                                            ; preds = %bb.mr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fa), !noalias !8290
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bcl, i64 24, i1 false), !noalias !8289
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 43, ptr noundef nonnull %i.fa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @191, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @215) #38, !noalias !8291
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtCs8P23TVsEbeF_4glob7PatternNtBJ_12PatternErrorE6unwrapCs5EcwQX7phGK_5uu_ls.exit471: ; preds = %bb.mr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.hc, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.hb, i64 56, i1 false), !alias.scope !8291, !noalias !8292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hb)
  %i.bcm = load i64, ptr %i.bcd, align 8, !alias.scope !8293, !noalias !8294, !noundef !4 ; 3 uses
  %i.bcn = load i64, ptr %i.hd, align 8, !range !5, !alias.scope !8293, !noalias !8294, !noundef !4
  %i.bco = icmp eq i64 %i.bcm, %i.bcn
  br i1 %i.bco, label %bb.mt, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs8P23TVsEbeF_4glob7PatternE8push_mutCs5EcwQX7phGK_5uu_ls.exit

bb.mt:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtCs8P23TVsEbeF_4glob7PatternNtBJ_12PatternErrorE6unwrapCs5EcwQX7phGK_5uu_ls.exit471
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtCs8P23TVsEbeF_4glob7PatternE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hd) #36, !noalias !8294
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs8P23TVsEbeF_4glob7PatternE8push_mutCs5EcwQX7phGK_5uu_ls.exit

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs8P23TVsEbeF_4glob7PatternE8push_mutCs5EcwQX7phGK_5uu_ls.exit: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtCs8P23TVsEbeF_4glob7PatternNtBJ_12PatternErrorE6unwrapCs5EcwQX7phGK_5uu_ls.exit471, %bb.mt
  %i.bcp = load ptr, ptr %i.bcc, align 8, !alias.scope !8293, !noalias !8294, !nonnull !4, !noundef !4
  %i.bcq = getelementptr inbounds nuw [56 x i8], ptr %i.bcp, i64 %i.bcm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bcq, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.hc, i64 56, i1 false)
  %i.bcr = add i64 %i.bcm, 1
  store i64 %i.bcr, ptr %i.bcd, align 8, !alias.scope !8293, !noalias !8294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ha)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gz)
  call void @_RNvMsa_Cs8P23TVsEbeF_4globNtB5_7Pattern3new(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.gz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @216, i64 noundef 3) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !8295)
  call void @llvm.experimental.noalias.scope.decl(metadata !8296)
  %i.bcs = load i64, ptr %i.gz, align 8, !range !15, !alias.scope !8296, !noalias !8297, !noundef !4
  %i.bct = icmp eq i64 %i.bcs, -1
  br i1 %i.bct, label %bb.mu, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtCs8P23TVsEbeF_4glob7PatternNtBJ_12PatternErrorE6unwrapCs5EcwQX7phGK_5uu_ls.exit, !prof !7

bb.mu:                                            ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs8P23TVsEbeF_4glob7PatternE8push_mutCs5EcwQX7phGK_5uu_ls.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fb), !noalias !8298
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bcu, i64 24, i1 false), !noalias !8297
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 43, ptr noundef nonnull %i.fb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @191, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @217) #38, !noalias !8299
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtCs8P23TVsEbeF_4glob7PatternNtBJ_12PatternErrorE6unwrapCs5EcwQX7phGK_5uu_ls.exit: ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs8P23TVsEbeF_4glob7PatternE8push_mutCs5EcwQX7phGK_5uu_ls.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ha, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.gz, i64 56, i1 false), !alias.scope !8299, !noalias !8300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gz)
  %i.bcv = load i64, ptr %i.bcd, align 8, !alias.scope !8301, !noalias !8302, !noundef !4 ; 3 uses
  %i.bcw = load i64, ptr %i.hd, align 8, !range !5, !alias.scope !8301, !noalias !8302, !noundef !4
  %i.bcx = icmp eq i64 %i.bcv, %i.bcw
  br i1 %i.bcx, label %bb.mv, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs8P23TVsEbeF_4glob7PatternE8push_mutCs5EcwQX7phGK_5uu_ls.exit610

bb.mv:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtCs8P23TVsEbeF_4glob7PatternNtBJ_12PatternErrorE6unwrapCs5EcwQX7phGK_5uu_ls.exit
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtCs8P23TVsEbeF_4glob7PatternE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hd) #36, !noalias !8302
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs8P23TVsEbeF_4glob7PatternE8push_mutCs5EcwQX7phGK_5uu_ls.exit610

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs8P23TVsEbeF_4glob7PatternE8push_mutCs5EcwQX7phGK_5uu_ls.exit610: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtCs8P23TVsEbeF_4glob7PatternNtBJ_12PatternErrorE6unwrapCs5EcwQX7phGK_5uu_ls.exit, %bb.mv
  %i.bcy = load ptr, ptr %i.bcc, align 8, !alias.scope !8301, !noalias !8302, !nonnull !4, !noundef !4
  %i.bcz = getelementptr inbounds nuw [56 x i8], ptr %i.bcy, i64 %i.bcv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bcz, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.ha, i64 56, i1 false)
  %i.bda = add i64 %i.bcv, 1
  store i64 %i.bda, ptr %i.bcd, align 8, !alias.scope !8301, !noalias !8302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha)
  br label %bb.mw

bb.mw:                                            ; preds = %bb.mo, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs8P23TVsEbeF_4glob7PatternE8push_mutCs5EcwQX7phGK_5uu_ls.exit610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fe)
end_hunk_1
begin_hunk_2_@_RNvMs_NtCs5EcwQX7phGK_5uu_ls6configNtB4_6Config4from:bb.a
  call void @llvm.assume(i1 %i.blm)
  %i.bln = icmp eq i64 %.sroa.9.0.copyload.i, 0
  br i1 %i.bln, label %bb.pe, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !8327)
  %i.blo = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.blp = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.blq = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.blr = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  br label %bb.od

bb.od:                                            ; preds = %bb.og, %bb.oc
  %.sroa.035.0143.i.i = phi i64 [ 0, %bb.oc ], [ %.sroa.035.1.i.i, %bb.og ] ; 4 uses
  %i.bls = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 %.sroa.035.0143.i.i
  %i.blt = load i8, ptr %i.bls, align 1, !alias.scope !8327, !noalias !8328, !noundef !4 ; 2 uses
  %i.blu = add nuw nsw i64 %.sroa.035.0143.i.i, 1 ; 4 uses
  switch i8 %i.blt, label %bb.oe [
    i8 58, label %bb.og
    i8 42, label %bb.of
  ]

bb.oe:                                            ; preds = %bb.od
  %.not108.i.i = icmp samesign ult i64 %i.blu, %.sroa.9.0.copyload.i
  br i1 %.not108.i.i, label %bb.oo, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors18validate_ls_colors.exit.i

bb.of:                                            ; preds = %bb.od
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !8329
  call fastcc void @_RNvNtCs5EcwQX7phGK_5uu_ls6colors18parse_funky_string(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.an, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6.0.copyload.i, i64 noundef range(i64 1, -9223372036854775808) %.sroa.9.0.copyload.i, i64 noundef %i.blu, i1 noundef zeroext true) #37, !noalias !8328
  %i.blv = load i64, ptr %i.an, align 8, !range !27, !noalias !8329, !noundef !4 ; 2 uses
  %.not.i.i739 = icmp eq i64 %i.blv, -2
  %i.blw = load i64, ptr %i.blo, align 8, !noalias !8329 ; 4 uses
  br i1 %.not.i.i739, label %bb.oi, label %bb.oh

bb.og:                                            ; preds = %bb.pb, %bb.on, %bb.om, %bb.od
  %.sroa.035.1.i.i = phi i64 [ %.sroa.035.2.i.i, %bb.pb ], [ %spec.select.i.i, %bb.on ], [ %i.bmd, %bb.om ], [ %i.blu, %bb.od ] ; 2 uses
  %i.blx = icmp ult i64 %.sroa.035.1.i.i, %.sroa.9.0.copyload.i
  br i1 %i.blx, label %bb.od, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors18validate_ls_colors.exit.i

bb.oh:                                            ; preds = %bb.of
  %.sroa.563.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.563.0.copyload.i.i = load i64, ptr %.sroa.563.0..sroa_idx.i.i, align 8, !noalias !8329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !8329
  br label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors18validate_ls_colors.exit.i

bb.oi:                                            ; preds = %bb.of
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !8329
  %.not106.i.i = icmp ult i64 %i.blw, %.sroa.9.0.copyload.i
  br i1 %.not106.i.i, label %bb.oj, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors18validate_ls_colors.exit.i

bb.oj:                                            ; preds = %bb.oi
  %i.bly = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 %i.blw
  %i.blz = load i8, ptr %i.bly, align 1, !alias.scope !8327, !noalias !8328, !noundef !4
  %i.bma = icmp eq i8 %i.blz, 61
  br i1 %i.bma, label %bb.ok, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors18validate_ls_colors.exit.i

bb.ok:                                            ; preds = %bb.oj
  %i.bmb = add nuw nsw i64 %i.blw, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !8329
  call fastcc void @_RNvNtCs5EcwQX7phGK_5uu_ls6colors18parse_funky_string(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6.0.copyload.i, i64 noundef range(i64 1, -9223372036854775808) %.sroa.9.0.copyload.i, i64 noundef %i.bmb, i1 noundef zeroext false) #37, !noalias !8328
  %i.bmc = load i64, ptr %i.am, align 8, !range !27, !noalias !8329, !noundef !4 ; 2 uses
  %.not107.i.i = icmp eq i64 %i.bmc, -2
  %i.bmd = load i64, ptr %i.blp, align 8, !noalias !8329 ; 5 uses
  br i1 %.not107.i.i, label %bb.om, label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  %.sroa.572.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.572.0.copyload.i.i = load i64, ptr %.sroa.572.0..sroa_idx.i.i, align 8, !noalias !8329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !8329
  br label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors18validate_ls_colors.exit.i

bb.om:                                            ; preds = %bb.ok
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !8329
  %i.bme = icmp ult i64 %i.bmd, %.sroa.9.0.copyload.i
  br i1 %i.bme, label %bb.on, label %bb.og

bb.on:                                            ; preds = %bb.om
  %i.bmf = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 %i.bmd
  %i.bmg = load i8, ptr %i.bmf, align 1, !alias.scope !8327, !noalias !8328, !noundef !4
  %i.bmh = icmp eq i8 %i.bmg, 58
  %i.bmi = zext i1 %i.bmh to i64
  %spec.select.i.i = add nuw nsw i64 %i.bmd, %i.bmi
  br label %bb.og

bb.oo:                                            ; preds = %bb.oe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !8329
  %i.bmj = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 %i.blu
  %i.bmk = load i8, ptr %i.bmj, align 1, !alias.scope !8327, !noalias !8328, !noundef !4
  store i8 %i.blt, ptr %i.al, align 2, !noalias !8329
  store i8 %i.bmk, ptr %i.blq, align 1, !noalias !8329
  %i.bml = add nuw nsw i64 %.sroa.035.0143.i.i, 2 ; 2 uses
  %.not109.i.i = icmp samesign ult i64 %i.bml, %.sroa.9.0.copyload.i
  br i1 %.not109.i.i, label %bb.op, label %.loopexit1332

bb.op:                                            ; preds = %bb.oo
  %i.bmm = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 %i.bml
  %i.bmn = load i8, ptr %i.bmm, align 1, !alias.scope !8327, !noalias !8328, !noundef !4
  %i.bmo = icmp eq i8 %i.bmn, 61
  br i1 %i.bmo, label %bb.oq, label %.loopexit1332

bb.oq:                                            ; preds = %bb.op
  %.sroa.098.0.copyload.i.i = load i16, ptr %i.al, align 2, !noalias !8329 ; 2 uses
  %.sroa.013.0.extract.trunc.i.i.i = trunc i16 %.sroa.098.0.copyload.i.i to i8
  %.sroa.4.0.extract.shift.i.i.i = lshr i16 %.sroa.098.0.copyload.i.i, 8 ; 6 uses
  %.sroa.4.0.extract.trunc.i.i.i = trunc nuw i16 %.sroa.4.0.extract.shift.i.i.i to i8 ; 8 uses
  switch i8 %.sroa.013.0.extract.trunc.i.i.i, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread.i.i [
    i8 108, label %.split119.i.i
    i8 114, label %.split120.i.i
    i8 101, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.i.i
    i8 110, label %.split125.i.i
    i8 102, label %.split124.i.i
    i8 100, label %.split121.i.i
    i8 112, label %.split123.i.i
    i8 115, label %bb.or
    i8 98, label %.split122.i.i
    i8 99, label %bb.os
    i8 109, label %bb.ot
    i8 111, label %.split118.i.i
    i8 116, label %.split.i.i740
  ]

.split119.i.i:                                    ; preds = %bb.oq
  switch i8 %.sroa.4.0.extract.trunc.i.i.i, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread.i.i [
    i8 110, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread116.i.i
    i8 99, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread116.i.i
  ]

.split120.i.i:                                    ; preds = %bb.oq
  %i.bmp = add i8 %.sroa.4.0.extract.trunc.i.i.i, -99
  %switch.and.i.i.i = and i8 %i.bmp, -17
  %switch.selectcmp15.i.i.i = icmp eq i8 %switch.and.i.i.i, 0
  br i1 %switch.selectcmp15.i.i.i, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread116.i.i, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread.i.i

.split125.i.i:                                    ; preds = %bb.oq
  %i.bmq = icmp eq i16 %.sroa.4.0.extract.shift.i.i.i, 111
  br i1 %i.bmq, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread116.i.i, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread.i.i

.split124.i.i:                                    ; preds = %bb.oq
  %i.bmr = icmp eq i16 %.sroa.4.0.extract.shift.i.i.i, 105
  br i1 %i.bmr, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread116.i.i, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread.i.i

.split121.i.i:                                    ; preds = %bb.oq
  switch i8 %.sroa.4.0.extract.trunc.i.i.i, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread.i.i [
    i8 111, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread116.i.i
    i8 105, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread116.i.i
  ]

.split123.i.i:                                    ; preds = %bb.oq
  %i.bms = icmp eq i16 %.sroa.4.0.extract.shift.i.i.i, 105
  br i1 %i.bms, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread116.i.i, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread.i.i

bb.or:                                            ; preds = %bb.oq
  switch i8 %.sroa.4.0.extract.trunc.i.i.i, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread.i.i [
    i8 111, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread116.i.i
    i8 117, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread116.i.i
    i8 103, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread116.i.i
    i8 116, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread116.i.i
  ]

.split122.i.i:                                    ; preds = %bb.oq
  %i.bmt = icmp eq i16 %.sroa.4.0.extract.shift.i.i.i, 100
  br i1 %i.bmt, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread116.i.i, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread.i.i

bb.os:                                            ; preds = %bb.oq
  switch i8 %.sroa.4.0.extract.trunc.i.i.i, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread.i.i [
    i8 100, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread116.i.i
    i8 97, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread116.i.i
    i8 108, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread116.i.i
  ]

bb.ot:                                            ; preds = %bb.oq
  %i.bmu = and i8 %.sroa.4.0.extract.trunc.i.i.i, -2
  %switch.i.i.i = icmp eq i8 %i.bmu, 104
  br i1 %switch.i.i.i, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread116.i.i, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread.i.i

.split118.i.i:                                    ; preds = %bb.oq
  switch i8 %.sroa.4.0.extract.trunc.i.i.i, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread.i.i [
    i8 119, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread116.i.i
    i8 114, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread116.i.i
  ]

.split.i.i740:                                    ; preds = %bb.oq
  %i.bmv = icmp eq i16 %.sroa.4.0.extract.shift.i.i.i, 119
  br i1 %i.bmv, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread116.i.i, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread.i.i

_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.i.i: ; preds = %bb.oq
  switch i8 %.sroa.4.0.extract.trunc.i.i.i, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread.i.i [
    i8 120, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread116.i.i
    i8 99, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread116.i.i
  ]

_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread.i.i: ; preds = %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.i.i, %.split.i.i740, %.split118.i.i, %bb.ot, %bb.os, %.split122.i.i, %bb.or, %.split123.i.i, %.split121.i.i, %.split124.i.i, %.split125.i.i, %.split120.i.i, %.split119.i.i, %bb.oq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !8329
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef 2) #37, !noalias !8329
  %i.bmw = load i64, ptr %i.ak, align 8, !range !15, !noalias !8329, !noundef !4 ; 2 uses
  %.not110.i.i = icmp eq i64 %i.bmw, -1
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bmy = load ptr, ptr %i.bmx, align 8, !noalias !8329 ; 2 uses
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.bna = load i64, ptr %i.bmz, align 8, !noalias !8329 ; 8 uses
  br i1 %.not110.i.i, label %bb.ou, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit.thread131.i.i

_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread116.i.i: ; preds = %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.i.i, %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.i.i, %.split.i.i740, %.split118.i.i, %.split118.i.i, %bb.ot, %bb.os, %bb.os, %bb.os, %.split122.i.i, %bb.or, %bb.or, %bb.or, %bb.or, %.split123.i.i, %.split121.i.i, %.split121.i.i, %.split124.i.i, %.split125.i.i, %.split120.i.i, %.split119.i.i, %.split119.i.i
  %i.bnb = add nuw nsw i64 %.sroa.035.0143.i.i, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !8329
  call fastcc void @_RNvNtCs5EcwQX7phGK_5uu_ls6colors18parse_funky_string(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6.0.copyload.i, i64 noundef range(i64 1, -9223372036854775808) %.sroa.9.0.copyload.i, i64 noundef %i.bnb, i1 noundef zeroext false) #37, !noalias !8328
  %i.bnc = load i64, ptr %i.aj, align 8, !range !27, !noalias !8329, !noundef !4 ; 2 uses
  %.not112.i.i = icmp eq i64 %i.bnc, -2
  %i.bnd = load i64, ptr %i.blr, align 8, !noalias !8329 ; 5 uses
  br i1 %.not112.i.i, label %bb.pa, label %bb.oz

bb.ou:                                            ; preds = %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread.i.i
  %.not.i.i.i741 = icmp slt i64 %i.bna, 0
  br i1 %.not.i.i.i741, label %bb.ox, label %bb.ov, !prof !22

bb.ov:                                            ; preds = %bb.ou
  %i.bne = icmp eq i64 %i.bna, 0
  br i1 %i.bne, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit.thread131.i.i, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !8330
  %i.bnf = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.bna, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !8330 ; 3 uses
  %i.bng = icmp eq ptr %i.bnf, null
  br i1 %i.bng, label %bb.ox, label %bb.oy

bb.ox:                                            ; preds = %bb.ow, %bb.ou
  %.sroa.4.0.ph.i.i742 = phi i64 [ 1, %bb.ow ], [ 0, %bb.ou ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i742, i64 %i.bna) #39, !noalias !8329
  unreachable

bb.oy:                                            ; preds = %bb.ow
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bnf, ptr nonnull align 1 %i.bmy, i64 %i.bna, i1 false), !noalias !8329
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit.thread131.i.i

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit.thread131.i.i: ; preds = %bb.oy, %bb.ov, %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread.i.i
  %.sroa.079.0.i.i = phi i64 [ 0, %bb.ov ], [ %i.bna, %bb.oy ], [ %i.bmw, %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread.i.i ]
  %.sroa.3.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.ov ], [ %i.bnf, %bb.oy ], [ %i.bmy, %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread.i.i ]
  %.sroa.483.0.i.i = phi i64 [ 0, %bb.ov ], [ %i.bna, %bb.oy ], [ %i.bna, %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !8329
  %i.bnh = ptrtoint ptr %.sroa.3.0.i.i to i64
  br label %.loopexit1332

.loopexit1332:                                    ; preds = %bb.oo, %bb.op, %bb.oz, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit.thread131.i.i
  %.sroa.19.1 = phi i64 [ %.sroa.483.0.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit.thread131.i.i ], [ %.sroa.594.0.copyload.i.i, %bb.oz ], [ undef, %bb.op ], [ undef, %bb.oo ]
  %.sroa.151095.1 = phi i64 [ %i.bnh, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit.thread131.i.i ], [ %i.bnd, %bb.oz ], [ undef, %bb.op ], [ undef, %bb.oo ]
  %.sroa.01094.1 = phi i64 [ %.sroa.079.0.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit.thread131.i.i ], [ %i.bnc, %bb.oz ], [ -1, %bb.op ], [ -1, %bb.oo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !8329
  br label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors18validate_ls_colors.exit.i

bb.oz:                                            ; preds = %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread116.i.i
  %.sroa.594.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.594.0.copyload.i.i = load i64, ptr %.sroa.594.0..sroa_idx.i.i, align 8, !noalias !8329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !8329
  br label %.loopexit1332

bb.pa:                                            ; preds = %_RNvNtCs5EcwQX7phGK_5uu_ls6colors25is_valid_ls_colors_prefix.exit.thread116.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !8329
  %i.bni = icmp ult i64 %i.bnd, %.sroa.9.0.copyload.i
  br i1 %i.bni, label %bb.pc, label %bb.pb

bb.pb:                                            ; preds = %bb.pc, %bb.pa
  %.sroa.035.2.i.i = phi i64 [ %i.bnd, %bb.pa ], [ %spec.select113.i.i, %bb.pc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !8329
  br label %bb.og

bb.pc:                                            ; preds = %bb.pa
  %i.bnj = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 %i.bnd
  %i.bnk = load i8, ptr %i.bnj, align 1, !alias.scope !8327, !noalias !8328, !noundef !4
  %i.bnl = icmp eq i8 %i.bnk, 58
  %i.bnm = zext i1 %i.bnl to i64
  %spec.select113.i.i = add nuw nsw i64 %i.bnd, %i.bnm
  br label %bb.pb

_RNvNtCs5EcwQX7phGK_5uu_ls6colors18validate_ls_colors.exit.i: ; preds = %bb.oe, %bb.oi, %bb.oj, %bb.og, %.loopexit1332, %bb.ol, %bb.oh
  %.sroa.19.0 = phi i64 [ %.sroa.19.1, %.loopexit1332 ], [ %.sroa.563.0.copyload.i.i, %bb.oh ], [ %.sroa.572.0.copyload.i.i, %bb.ol ], [ undef, %bb.og ], [ undef, %bb.oj ], [ undef, %bb.oi ], [ undef, %bb.oe ]
  %.sroa.151095.0 = phi i64 [ %.sroa.151095.1, %.loopexit1332 ], [ %i.blw, %bb.oh ], [ %i.bmd, %bb.ol ], [ undef, %bb.og ], [ undef, %bb.oj ], [ undef, %bb.oi ], [ undef, %bb.oe ] ; 2 uses
  %.sroa.01094.0 = phi i64 [ %.sroa.01094.1, %.loopexit1332 ], [ %i.blv, %bb.oh ], [ %i.bmc, %bb.ol ], [ -1, %bb.oe ], [ -1, %bb.oi ], [ -1, %bb.oj ], [ -2, %bb.og ] ; 3 uses
  %i.bnn = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.bnn, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors22validate_ls_colors_env.exit, label %bb.pd

bb.pd:                                            ; preds = %_RNvNtCs5EcwQX7phGK_5uu_ls6colors18validate_ls_colors.exit.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !8331
  br label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors22validate_ls_colors_env.exit

bb.pe:                                            ; preds = %bb.ob
  %i.bno = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.bno, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors22validate_ls_colors_env.exit.thread, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !8332
  br label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors22validate_ls_colors_env.exit.thread

bb.pg:                                            ; preds = %bb.oa
  call void @llvm.experimental.noalias.scope.decl(metadata !8333)
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.val.i4.i = load i64, ptr %i.bnp, align 8, !range !15, !alias.scope !8333, !noalias !8326, !noundef !4 ; 2 uses
  %i.bnq = icmp sgt i64 %.val.i4.i, 0
  br i1 %i.bnq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5EcwQX7phGK_5uu_ls.exit.sink.split.i5.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECs5EcwQX7phGK_5uu_ls.exit9.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5EcwQX7phGK_5uu_ls.exit.sink.split.i5.i: ; preds = %bb.pg
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.val1.i7.i = load ptr, ptr %i.bnr, align 8, !alias.scope !8333, !noalias !8326, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i7.i, i64 noundef %.val.i4.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !8334
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECs5EcwQX7phGK_5uu_ls.exit9.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECs5EcwQX7phGK_5uu_ls.exit9.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5EcwQX7phGK_5uu_ls.exit.sink.split.i5.i, %bb.pg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !8326
  br label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors22validate_ls_colors_env.exit.thread

_RNvNtCs5EcwQX7phGK_5uu_ls6colors22validate_ls_colors_env.exit: ; preds = %_RNvNtCs5EcwQX7phGK_5uu_ls6colors18validate_ls_colors.exit.i, %bb.pd
  switch i64 %.sroa.01094.0, label %bb.qe [
    i64 -2, label %_RNvNtCs5EcwQX7phGK_5uu_ls6colors22validate_ls_colors_env.exit.thread
    i64 -1, label %bb.ph
  ]

bb.ph:                                            ; preds = %_RNvNtCs5EcwQX7phGK_5uu_ls6colors22validate_ls_colors_env.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs5EcwQX7phGK_5uu_ls.exit794
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fo)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.fo, align 8
  %i.bns = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fo) #37
  store ptr %i.bns, ptr %i.fp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn)
  %i.bnt = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #37 ; 2 uses
  %i.bnu = extractvalue { ptr, i64 } %i.bnt, 0
  %i.bnv = extractvalue { ptr, i64 } %i.bnt, 1
  store ptr %i.bnu, ptr %i.fn, align 8
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store i64 %i.bnv, ptr %i.bnw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm)
  store ptr %i.fn, ptr %i.fm, align 8
  %.sroa.4438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs5EcwQX7phGK_5uu_ls, ptr %.sroa.4438.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !8335
  store ptr %i.fp, ptr %i.ai, align 8, !noalias !8335
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  store ptr null, ptr %i.bnx, align 8, !noalias !8335
  %i.bny = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @47, ptr noundef nonnull @218, ptr noundef nonnull %i.fm) #37
  %i.bnz = load ptr, ptr %i.bnx, align 8, !noalias !8335, !noundef !4 ; 7 uses
  %.not.i5.i = icmp eq ptr %i.bnz, null           ; 2 uses
  br i1 %i.bny, label %bb.pi, label %bb.pj

bb.pi:                                            ; preds = %bb.ph
  br i1 %.not.i5.i, label %bb.pn, label %bb.po, !prof !7

bb.pj:                                            ; preds = %bb.ph
  br i1 %.not.i5.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs5EcwQX7phGK_5uu_ls.exit.i.thread, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !8336
  %i.boa = ptrtoint ptr %i.bnz to i64             ; 2 uses
  %i.bob = and i64 %i.boa, 3
  switch i64 %i.bob, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EcwQX7phGK_5uu_ls.exit.i.i.i744
    i64 3, label %bb.pl
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EcwQX7phGK_5uu_ls.exit.i.i.i744
    i64 1, label %bb.pm
  ], !prof !13

bb.pl:                                            ; preds = %bb.pk
  %i.boc = icmp ult ptr %i.bnz, inttoptr (i64 188978561024 to ptr)
  %i.bod = and i64 %i.boa, 1095216660480
  %i.boe = icmp ne i64 %i.bod, 1095216660480
  call void @llvm.assume(i1 %i.boc)
  call void @llvm.assume(i1 %i.boe)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EcwQX7phGK_5uu_ls.exit.i.i.i744

bb.pm:                                            ; preds = %bb.pk
  %i.bof = getelementptr i8, ptr %i.bnz, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bof) ]
  %i.bog = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  store ptr %i.bof, ptr %i.bog, align 8, !alias.scope !8337, !noalias !8336
  store i8 3, ptr %i.ah, align 8, !alias.scope !8337, !noalias !8336
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bog) #37, !noalias !8338
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EcwQX7phGK_5uu_ls.exit.i.i.i744

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EcwQX7phGK_5uu_ls.exit.i.i.i744: ; preds = %bb.pm, %bb.pl, %bb.pk, %bb.pk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !8336
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs5EcwQX7phGK_5uu_ls.exit.i.thread

bb.pn:                                            ; preds = %bb.pi
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @43, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #38
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs5EcwQX7phGK_5uu_ls.exit.i.thread: ; preds = %bb.pj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EcwQX7phGK_5uu_ls.exit.i.i.i744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !8335
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5EcwQX7phGK_5uu_ls.exit

bb.po:                                            ; preds = %bb.pi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !8335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !8339
  %i.boh = ptrtoint ptr %i.bnz to i64             ; 2 uses
  %i.boi = and i64 %i.boh, 3
  switch i64 %i.boi, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EcwQX7phGK_5uu_ls.exit.i
    i64 3, label %bb.pp
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EcwQX7phGK_5uu_ls.exit.i
    i64 1, label %bb.pq
  ], !prof !13

bb.pp:                                            ; preds = %bb.po
  %i.boj = icmp ult ptr %i.bnz, inttoptr (i64 188978561024 to ptr)
  %i.bok = and i64 %i.boh, 1095216660480
  %i.bol = icmp ne i64 %i.bok, 1095216660480
  call void @llvm.assume(i1 %i.boj)
  call void @llvm.assume(i1 %i.bol)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EcwQX7phGK_5uu_ls.exit.i

bb.pq:                                            ; preds = %bb.po
  %i.bom = getelementptr i8, ptr %i.bnz, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bom) ]
  %i.bon = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  store ptr %i.bom, ptr %i.bon, align 8, !alias.scope !8340, !noalias !8339
  store i8 3, ptr %i.ag, align 8, !alias.scope !8340, !noalias !8339
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bon) #37, !noalias !8339
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EcwQX7phGK_5uu_ls.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EcwQX7phGK_5uu_ls.exit.i: ; preds = %bb.pq, %bb.pp, %bb.po, %bb.po
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !8339
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5EcwQX7phGK_5uu_ls.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5EcwQX7phGK_5uu_ls.exit: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs5EcwQX7phGK_5uu_ls.exit.i.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EcwQX7phGK_5uu_ls.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fl)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @221, i64 noundef 31) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fk)
  store ptr %i.fl, ptr %i.fk, align 8
  %.sroa.4442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4442.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !8341
  store ptr %i.fp, ptr %i.af, align 8, !noalias !8341
  %i.boo = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr null, ptr %i.boo, align 8, !noalias !8341
  %i.bop = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @47, ptr noundef nonnull @65, ptr noundef nonnull %i.fk) #37
  %i.boq = load ptr, ptr %i.boo, align 8, !noalias !8341, !noundef !4 ; 7 uses
  %.not.i5.i750 = icmp eq ptr %i.boq, null        ; 2 uses
  br i1 %i.bop, label %bb.pr, label %bb.ps

bb.pr:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5EcwQX7phGK_5uu_ls.exit
  br i1 %.not.i5.i750, label %bb.pw, label %bb.px, !prof !7

bb.ps:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5EcwQX7phGK_5uu_ls.exit
end_hunk_2
