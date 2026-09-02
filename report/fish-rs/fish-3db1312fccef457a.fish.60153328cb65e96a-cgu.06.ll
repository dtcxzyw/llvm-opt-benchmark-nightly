Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.06?download=true
inline.NumInlined: 2315
inline.NumDeleted: 936
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_RINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_:bb.a
  br i1 %i.n, label %.split.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit

.split.i.i.i:                                     ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2013
  store i32 %i.k, ptr %i.h, align 4, !noalias !2013
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @518) #41, !noalias !2005
  unreachable

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  %i.o = icmp ult i32 %i.k, 1114112
  tail call void @llvm.assume(i1 %i.o)
  switch i32 %i.k, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit108 [
    i32 45, label %bb.d
    i32 43, label %bb.c
  ]

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit
  br label %bb.d

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit, %bb.c
  %.sroa.023.0.ph = phi double [ 1.000000e+00, %bb.c ], [ -1.000000e+00, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit ] ; 2 uses
  %.sroa.017.2.ph = phi i64 [ 0, %bb.c ], [ -9223372036854775808, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit ] ; 2 uses
  %i.p = icmp eq ptr %i.j, %2
  br i1 %i.p, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit108, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr %i.j, align 4, !noalias !2016, !noundef !9 ; 4 uses
  %i.r = xor i32 %i.q, 55296
  %i.s = add i32 %i.r, -1114112
  %i.t = icmp ult i32 %i.s, -1112064
  br i1 %i.t, label %.split.i107, label %.split7.i105

.split7.i105:                                     ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = icmp ult i32 %i.q, 1114112
  tail call void @llvm.assume(i1 %i.v)
  br label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit108

.split.i107:                                      ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2019
  store i32 %i.q, ptr %i.g, align 4, !noalias !2019
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @518) #41, !noalias !2016
  unreachable

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit108: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit, %bb.a, %bb.d, %.split7.i105
  %.sroa.0.2266 = phi i64 [ 3, %.split7.i105 ], [ 2, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit ], [ 3, %bb.d ], [ 2, %bb.a ] ; 3 uses
  %.sroa.017.2264 = phi i64 [ %.sroa.017.2.ph, %.split7.i105 ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit ], [ %.sroa.017.2.ph, %bb.d ], [ 0, %bb.a ]
  %.sroa.023.0262 = phi double [ %.sroa.023.0.ph, %.split7.i105 ], [ 1.000000e+00, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit ], [ %.sroa.023.0.ph, %bb.d ], [ 1.000000e+00, %bb.a ] ; 2 uses
  %.sroa.0.3238 = phi ptr [ %i.u, %.split7.i105 ], [ %i.j, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit ], [ %i.j, %bb.d ], [ %1, %bb.a ] ; 4 uses
  %.sroa.025.0 = phi i32 [ %i.q, %.split7.i105 ], [ %i.k, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit ], [ -1, %bb.d ], [ -1, %bb.a ] ; 2 uses
  %i.w = icmp eq ptr %.sroa.0.3238, %2
  br i1 %i.w, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit112, label %bb.f

bb.f:                                             ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit108
  %i.x = load i32, ptr %.sroa.0.3238, align 4, !noalias !2022, !noundef !9 ; 4 uses
  %i.y = xor i32 %i.x, 55296
  %i.z = add i32 %i.y, -1114112
  %i.aa = icmp ult i32 %i.z, -1112064
  br i1 %i.aa, label %.split.i111, label %.split7.i109

.split7.i109:                                     ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.3238, i64 4
  %i.ac = icmp ult i32 %i.x, 1114112
  tail call void @llvm.assume(i1 %i.ac)
  br label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit112

.split.i111:                                      ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2025
  store i32 %i.x, ptr %i.f, align 4, !noalias !2025
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @518) #41, !noalias !2022
  unreachable

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit112: ; preds = %.split7.i109, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit108
  %.sroa.0.20 = phi ptr [ %.sroa.0.3238, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit108 ], [ %i.ab, %.split7.i109 ] ; 4 uses
  %.sroa.0.0.i110 = phi i32 [ -1, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit108 ], [ %i.x, %.split7.i109 ] ; 2 uses
  %.not87 = icmp eq i32 %.sroa.025.0, -1
  br i1 %.not87, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread.thread, label %bb.g

bb.g:                                             ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit112
  %i.ad = icmp ne i32 %.sroa.0.0.i110, -1
  %i.ae = icmp eq i32 %.sroa.025.0, 48
  %or.cond = and i1 %i.ae, %i.ad
  br i1 %or.cond, label %bb.h, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread.thread

bb.h:                                             ; preds = %bb.g
  switch i32 %.sroa.0.0.i110, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread.thread [
    i32 120, label %bb.i
    i32 88, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.af = icmp eq ptr %.sroa.0.20, %2
  br i1 %i.af, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit119.thread.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.20, i64 4 ; 4 uses
  %i.ah = load i32, ptr %.sroa.0.20, align 4, !noalias !2028, !noundef !9 ; 5 uses
  %i.ai = xor i32 %i.ah, 55296
  %i.aj = add i32 %i.ai, -1114112
  %i.ak = icmp ult i32 %i.aj, -1112064
  br i1 %i.ak, label %.split.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.preheader
  %i.al = icmp ult i32 %i.ah, 1114112
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i32 %i.ah, 48                   ; 2 uses
  br i1 %i.am, label %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit.peel, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i

_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit.peel: ; preds = %bb.j
  %i.an = add nuw nsw i64 %.sroa.0.2266, 1        ; 2 uses
  %i.ao = icmp eq ptr %i.ag, %2
  br i1 %i.ao, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit119.thread.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit.peel, %bb.bg
  %.sroa.0.3344 = phi i64 [ %i.gz, %bb.bg ], [ %i.an, %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit.peel ] ; 3 uses
  %.sroa.0.5240342 = phi ptr [ %i.ap, %bb.bg ], [ %i.ag, %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit.peel ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.5240342, i64 4 ; 4 uses
  %i.aq = load i32, ptr %.sroa.0.5240342, align 4, !noalias !2028, !noundef !9 ; 5 uses
  %i.ar = xor i32 %i.aq, 55296
  %i.as = add i32 %i.ar, -1114112
  %i.at = icmp ult i32 %i.as, -1112064
  br i1 %i.at, label %.split.i.i, label %bb.k

.split.i.i:                                       ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa396 = phi i32 [ %i.ah, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2033
  store i32 %.lcssa396, ptr %i.e, align 4, !noalias !2033
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @518) #41, !noalias !2028
  unreachable

bb.k:                                             ; preds = %.lr.ph
  %i.au = icmp ult i32 %i.aq, 1114112
  tail call void @llvm.assume(i1 %i.au)
  %i.av = icmp eq i32 %i.aq, 48
  br i1 %i.av, label %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i: ; preds = %bb.k, %bb.j
  %.sroa.0.3.lcssa = phi i64 [ %.sroa.0.2266, %bb.j ], [ %.sroa.0.3344, %bb.k ] ; 5 uses
  %.sroa.53.9.ph = phi i32 [ %i.ah, %bb.j ], [ %i.aq, %bb.k ] ; 4 uses
  %.sroa.0.23.ph = phi ptr [ %i.ag, %bb.j ], [ %i.ap, %bb.k ] ; 4 uses
  %i.aw = icmp samesign ugt i32 %.sroa.53.9.ph, 57
  %i.ax = add nsw i32 %.sroa.53.9.ph, -65
  %i.ay = and i32 %i.ax, -33
  %i.az = add nuw nsw i32 %i.ay, 10
  %i.ba = add nsw i32 %.sroa.53.9.ph, -48
  %.sroa.02.0.i.peel = select i1 %i.aw, i32 %i.az, i32 %i.ba ; 2 uses
  %i.bb = icmp ult i32 %.sroa.02.0.i.peel, 16
  br i1 %i.bb, label %bb.l, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit119.thread.thread

bb.l:                                             ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i
  %i.bc = icmp eq i64 %.sroa.0.3.lcssa, -1
  br i1 %i.bc, label %.loopexit404, label %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit.peel

_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit.peel: ; preds = %bb.l
  %i.bd = zext nneg i32 %.sroa.02.0.i.peel to i64
  %i.be = shl nuw i64 %i.bd, 60                   ; 2 uses
  %.sroa.0.4590 = add nuw i64 %.sroa.0.3.lcssa, 1 ; 2 uses
  %i.bf = icmp eq ptr %.sroa.0.23.ph, %2
  br i1 %i.bf, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit119.thread, label %.lr.ph595

_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit: ; preds = %bb.k
  %i.bg = icmp eq i64 %.sroa.0.3344, -1
  br i1 %i.bg, label %.loopexit, label %bb.bg

.lr.ph595:                                        ; preds = %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit.peel, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit
  %.sroa.0.4594 = phi i64 [ %.sroa.0.4, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit ], [ %.sroa.0.4590, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit.peel ] ; 3 uses
  %.sroa.0.6241593 = phi ptr [ %i.bl, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit ], [ %.sroa.0.23.ph, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit.peel ] ; 2 uses
  %.sroa.0245.0592 = phi i64 [ %.sroa.0245.4, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit ], [ %i.be, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit.peel ] ; 3 uses
  %.sroa.0250.0591 = phi i32 [ %.sroa.0250.2, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit ], [ 60, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit.peel ] ; 4 uses
  %i.bh = load i32, ptr %.sroa.0.6241593, align 4, !noalias !2036, !noundef !9 ; 7 uses
  %i.bi = xor i32 %i.bh, 55296
  %i.bj = add i32 %i.bi, -1114112
  %i.bk = icmp ult i32 %i.bj, -1112064
  br i1 %i.bk, label %.split.i.i.i118, label %bb.m

.split.i.i.i118:                                  ; preds = %.lr.ph595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2044
  store i32 %i.bh, ptr %i.d, align 4, !noalias !2044
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @518) #41, !noalias !2036
  unreachable

bb.m:                                             ; preds = %.lr.ph595
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.6241593, i64 4 ; 4 uses
  %i.bm = icmp samesign ult i32 %i.bh, 1114112
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = icmp samesign ugt i32 %i.bh, 57
  %i.bo = add nsw i32 %i.bh, -65
  %i.bp = and i32 %i.bo, -33
  %i.bq = add nuw nsw i32 %i.bp, 10
  %i.br = add nsw i32 %i.bh, -48
  %.sroa.02.0.i = select i1 %i.bn, i32 %i.bq, i32 %i.br ; 2 uses
  %i.bs = icmp ult i32 %.sroa.02.0.i, 16
  br i1 %i.bs, label %bb.n, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit119.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit119.thread: ; preds = %bb.m, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit.peel
  %.sroa.0250.0.lcssa = phi i32 [ 60, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit.peel ], [ %.sroa.0250.0591, %bb.m ], [ %.sroa.0250.2, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit ]
  %.sroa.0245.0.lcssa = phi i64 [ %i.be, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit.peel ], [ %.sroa.0245.0592, %bb.m ], [ %.sroa.0245.4, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit ]
  %.sroa.0.4.lcssa = phi i64 [ %.sroa.0.4590, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit.peel ], [ %.sroa.0.4594, %bb.m ], [ %.sroa.0.4, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit ] ; 3 uses
  %.sroa.0.25278 = phi ptr [ %.sroa.0.23.ph, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit.peel ], [ %i.bl, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit ], [ %i.bl, %bb.m ]
  %.sroa.53.10277 = phi i32 [ -1, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit.peel ], [ %i.bh, %bb.m ], [ -1, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit ]
  %i.bt = sub nuw i64 %.sroa.0.4.lcssa, %.sroa.0.3.lcssa
  %i.bu = icmp ult i64 %.sroa.0.4.lcssa, %.sroa.0.3.lcssa
  br i1 %i.bu, label %bb.r, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit119.thread.thread

bb.n:                                             ; preds = %bb.m
  %i.bv = icmp eq i64 %.sroa.0.4594, -1
  br i1 %i.bv, label %.loopexit404, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = icmp sgt i32 %.sroa.0250.0591, 0
  br i1 %i.bw, label %bb.p, label %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit

bb.p:                                             ; preds = %bb.o
  %i.bx = add nsw i32 %.sroa.0250.0591, -4        ; 3 uses
  %i.by = icmp ult i32 %i.bx, 64
  br i1 %i.by, label %bb.q, label %.loopexit405

bb.q:                                             ; preds = %bb.p
  %i.bz = zext nneg i32 %.sroa.02.0.i to i64
  %i.ca = zext nneg i32 %i.bx to i64
  %i.cb = shl i64 %i.bz, %i.ca
  %i.cc = or i64 %i.cb, %.sroa.0245.0592
  br label %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit

.loopexit405:                                     ; preds = %bb.p
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_shl_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #41, !noalias !2047
  unreachable

.loopexit404:                                     ; preds = %bb.n, %bb.l
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #41
  unreachable

_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit: ; preds = %bb.q, %bb.o
  %.sroa.0250.2 = phi i32 [ %i.bx, %bb.q ], [ %.sroa.0250.0591, %bb.o ] ; 2 uses
  %.sroa.0245.4 = phi i64 [ %i.cc, %bb.q ], [ %.sroa.0245.0592, %bb.o ] ; 2 uses
  %.sroa.0.4 = add nuw i64 %.sroa.0.4594, 1       ; 2 uses
  %i.cd = icmp eq ptr %i.bl, %2
  br i1 %i.cd, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit119.thread, label %.lr.ph595, !llvm.loop !2050

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit119.thread.thread: ; preds = %bb.bg, %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit.peel, %bb.i, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit119.thread
  %i.ce = phi i64 [ %i.bt, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit119.thread ], [ 0, %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit.peel ], [ 0, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i ], [ 0, %bb.i ], [ 0, %bb.bg ] ; 2 uses
  %.sroa.53.10277456 = phi i32 [ %.sroa.53.10277, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit119.thread ], [ -1, %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit.peel ], [ %.sroa.53.9.ph, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i ], [ -1, %bb.i ], [ -1, %bb.bg ] ; 3 uses
  %.sroa.0.25278455 = phi ptr [ %.sroa.0.25278, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit119.thread ], [ %i.ag, %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit.peel ], [ %.sroa.0.23.ph, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i ], [ %.sroa.0.20, %bb.i ], [ %i.ap, %bb.bg ] ; 7 uses
  %.sroa.0.4.lcssa454 = phi i64 [ %.sroa.0.4.lcssa, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit119.thread ], [ %i.an, %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit.peel ], [ %.sroa.0.3.lcssa, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i ], [ %.sroa.0.2266, %bb.i ], [ %i.gz, %bb.bg ] ; 5 uses
  %.sroa.0252.0.lcssa453 = phi i1 [ true, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit119.thread ], [ true, %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit.peel ], [ %i.am, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i ], [ false, %bb.i ], [ true, %bb.bg ]
  %.sroa.0245.0.lcssa452 = phi i64 [ %.sroa.0245.0.lcssa, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit119.thread ], [ 0, %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit.peel ], [ 0, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i ], [ 0, %bb.i ], [ 0, %bb.bg ] ; 3 uses
  %.sroa.0250.0.lcssa451 = phi i32 [ %.sroa.0250.0.lcssa, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit119.thread ], [ 64, %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit.peel ], [ 64, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i ], [ 64, %bb.i ], [ 64, %bb.bg ] ; 3 uses
  %i.cf = icmp ugt i64 %i.ce, 2147483647
  br i1 %i.cf, label %bb.t, label %bb.s

bb.r:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit119.thread
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #41
  unreachable

bb.s:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit119.thread.thread
  %i.cg = trunc nuw nsw i64 %i.ce to i32
  %i.ch = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.cg, i32 4)
  br label %bb.t

bb.t:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit119.thread.thread, %bb.s
  %.sroa.032.0 = phi { i32, i1 } [ %i.ch, %bb.s ], [ { i32 -4, i1 true }, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit119.thread.thread ] ; 2 uses
  %cond = icmp eq i32 %.sroa.53.10277456, -1
  br i1 %cond, label %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit129.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = icmp eq i32 %.sroa.53.10277456, %3
  br i1 %i.ci, label %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit129, label %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit129.thread

_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit129: ; preds = %bb.u
  %i.cj = icmp eq i64 %.sroa.0.4.lcssa454, -1
  br i1 %i.cj, label %bb.aa, label %.preheader

.preheader:                                       ; preds = %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit129
  %.sroa.0.6353 = add nuw i64 %.sroa.0.4.lcssa454, 1 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.25278455) ]
  %i.ck = icmp eq ptr %.sroa.0.25278455, %2
  br i1 %i.ck, label %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit129.thread, label %.lr.ph359.preheader

.lr.ph359.preheader:                              ; preds = %.preheader
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.25278455, i64 4 ; 3 uses
  %i.cm = load i32, ptr %.sroa.0.25278455, align 4, !noalias !2051, !noundef !9 ; 7 uses
  %i.cn = xor i32 %i.cm, 55296
  %i.co = add i32 %i.cn, -1114112
  %i.cp = icmp ult i32 %i.co, -1112064
  br i1 %i.cp, label %.split.i.i.i134, label %bb.v

bb.v:                                             ; preds = %.lr.ph359.preheader
  %i.cq = icmp ult i32 %i.cm, 1114112
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = icmp samesign ugt i32 %i.cm, 57
  %i.cs = add nsw i32 %i.cm, -65
  %i.ct = and i32 %i.cs, -33
  %i.cu = add nuw nsw i32 %i.ct, 10
  %i.cv = add nsw i32 %i.cm, -48
  %.sroa.02.0.i136.peel = select i1 %i.cr, i32 %i.cu, i32 %i.cv ; 2 uses
  %i.cw = icmp ult i32 %.sroa.02.0.i136.peel, 16
  br i1 %i.cw, label %bb.w, label %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit129.thread

bb.w:                                             ; preds = %bb.v
  %i.cx = icmp eq i64 %.sroa.0.6353, -1
  br i1 %i.cx, label %.loopexit407, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cy = icmp sgt i32 %.sroa.0250.0.lcssa451, 0
  br i1 %i.cy, label %bb.y, label %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit138.peel

bb.y:                                             ; preds = %bb.x
  %i.cz = add nsw i32 %.sroa.0250.0.lcssa451, -4  ; 3 uses
  %i.da = icmp ult i32 %i.cz, 64
  br i1 %i.da, label %bb.z, label %.loopexit408

bb.z:                                             ; preds = %bb.y
  %i.db = zext nneg i32 %.sroa.02.0.i136.peel to i64
  %i.dc = zext nneg i32 %i.cz to i64
  %i.dd = shl nuw i64 %i.db, %i.dc
  %i.de = or i64 %i.dd, %.sroa.0245.0.lcssa452
  br label %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit138.peel

_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit138.peel: ; preds = %bb.z, %bb.x
  %.sroa.0250.3.peel = phi i32 [ %i.cz, %bb.z ], [ %.sroa.0250.0.lcssa451, %bb.x ]
  %.sroa.0245.5.peel = phi i64 [ %i.de, %bb.z ], [ %.sroa.0245.0.lcssa452, %bb.x ] ; 2 uses
  %.sroa.0.6.peel = add nuw i64 %.sroa.0.4.lcssa454, 2 ; 2 uses
  %i.df = icmp eq ptr %i.cl, %2
  br i1 %i.df, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit148.thread, label %.lr.ph359

_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit129.thread: ; preds = %bb.v, %.preheader, %bb.t, %bb.u
  %.sroa.53.4 = phi i32 [ -1, %bb.t ], [ %.sroa.53.10277456, %bb.u ], [ -1, %.preheader ], [ %i.cm, %bb.v ]
  %.sroa.0.8243 = phi ptr [ %.sroa.0.25278455, %bb.t ], [ %.sroa.0.25278455, %bb.u ], [ %.sroa.0.25278455, %.preheader ], [ %i.cl, %bb.v ]
  %.sroa.0.5 = phi i64 [ %.sroa.0.4.lcssa454, %bb.t ], [ %.sroa.0.4.lcssa454, %bb.u ], [ %.sroa.0.6353, %.preheader ], [ %.sroa.0.6353, %bb.v ]
  br i1 %.sroa.0252.0.lcssa453, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit148, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread.thread

bb.aa:                                            ; preds = %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit129
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #41
  unreachable

.lr.ph359:                                        ; preds = %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit138.peel, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit138
  %.sroa.0.6358 = phi i64 [ %.sroa.0.6, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit138 ], [ %.sroa.0.6.peel, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit138.peel ] ; 3 uses
  %.sroa.0.9244357 = phi ptr [ %i.dg, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit138 ], [ %i.cl, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit138.peel ] ; 2 uses
  %.sroa.0245.2355 = phi i64 [ %.sroa.0245.5, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit138 ], [ %.sroa.0245.5.peel, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit138.peel ] ; 3 uses
  %.sroa.0250.1354 = phi i32 [ %.sroa.0250.3, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit138 ], [ %.sroa.0250.3.peel, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit138.peel ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.9244357, i64 4 ; 3 uses
  %i.dh = load i32, ptr %.sroa.0.9244357, align 4, !noalias !2051, !noundef !9 ; 7 uses
  %i.di = xor i32 %i.dh, 55296
  %i.dj = add i32 %i.di, -1114112
  %i.dk = icmp ult i32 %i.dj, -1112064
  br i1 %i.dk, label %.split.i.i.i134, label %bb.ab

.split.i.i.i134:                                  ; preds = %.lr.ph359, %.lr.ph359.preheader
  %.lcssa375 = phi i32 [ %i.cm, %.lr.ph359.preheader ], [ %i.dh, %.lr.ph359 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2059
  store i32 %.lcssa375, ptr %i.c, align 4, !noalias !2059
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @518) #41, !noalias !2051
  unreachable

bb.ab:                                            ; preds = %.lr.ph359
  %i.dl = icmp ult i32 %i.dh, 1114112
  tail call void @llvm.assume(i1 %i.dl)
  %i.dm = icmp samesign ugt i32 %i.dh, 57
  %i.dn = add nsw i32 %i.dh, -65
  %i.do = and i32 %i.dn, -33
  %i.dp = add nuw nsw i32 %i.do, 10
  %i.dq = add nsw i32 %i.dh, -48
  %.sroa.02.0.i136 = select i1 %i.dm, i32 %i.dp, i32 %i.dq ; 2 uses
  %i.dr = icmp ult i32 %.sroa.02.0.i136, 16
  br i1 %i.dr, label %bb.ac, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit148

bb.ac:                                            ; preds = %bb.ab
  %i.ds = icmp eq i64 %.sroa.0.6358, -1
  br i1 %i.ds, label %.loopexit407, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dt = icmp sgt i32 %.sroa.0250.1354, 0
  br i1 %i.dt, label %bb.ae, label %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit138

bb.ae:                                            ; preds = %bb.ad
  %i.du = add nsw i32 %.sroa.0250.1354, -4        ; 3 uses
  %i.dv = icmp ult i32 %i.du, 64
  br i1 %i.dv, label %bb.af, label %.loopexit408

bb.af:                                            ; preds = %bb.ae
  %i.dw = zext nneg i32 %.sroa.02.0.i136 to i64
  %i.dx = zext nneg i32 %i.du to i64
  %i.dy = shl nuw nsw i64 %i.dw, %i.dx
  %i.dz = or i64 %i.dy, %.sroa.0245.2355
  br label %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit138

.loopexit408:                                     ; preds = %bb.ae, %bb.y
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_shl_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #41, !noalias !2062
  unreachable

.loopexit407:                                     ; preds = %bb.ac, %bb.w
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #41
  unreachable

_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit138: ; preds = %bb.af, %bb.ad
  %.sroa.0250.3 = phi i32 [ %i.du, %bb.af ], [ %.sroa.0250.1354, %bb.ad ]
  %.sroa.0245.5 = phi i64 [ %i.dz, %bb.af ], [ %.sroa.0245.2355, %bb.ad ] ; 2 uses
  %.sroa.0.6 = add nuw i64 %.sroa.0.6358, 1       ; 2 uses
  %i.ea = icmp eq ptr %i.dg, %2
  br i1 %i.ea, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit148.thread, label %.lr.ph359, !llvm.loop !2065

end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState20emit_gap_text_before:bb.a
  %i.y = icmp ult i64 %i.m, %i.h
  %i.z = zext i1 %i.y to i64
  %i.aa = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, %i.z
  %i.ab = icmp ule i64 %i.aa, %.val5
  tail call void @llvm.assume(i1 %i.ab)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = tail call { i32, i32 } @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange3new(i64 noundef 0, i64 noundef 0)
  br label %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState11gap_text_to.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ad = icmp ult i64 %.sroa.05.0.lcssa.i.i, %.val5
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = load i32, ptr %i.k, align 4, !noundef !9
  %i.af = load i32, ptr %i.l, align 4, !noundef !9
  %i.ag = insertvalue { i32, i32 } poison, i32 %i.ae, 0
  %i.ah = insertvalue { i32, i32 } %i.ag, i32 %i.af, 1
  br label %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState11gap_text_to.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i, i64 noundef %.val5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #41
  unreachable

_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState11gap_text_to.exit: ; preds = %bb.e, %bb.g
  %.merged.i = phi { i32, i32 } [ %i.ac, %bb.e ], [ %i.ah, %bb.g ] ; 2 uses
  %i.ai = extractvalue { i32, i32 } %.merged.i, 0 ; 7 uses
  %i.aj = extractvalue { i32, i32 } %.merged.i, 1 ; 7 uses
  %i.ak = tail call noundef i64 @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange6length(i32 noundef %i.ai, i32 noundef %i.aj)
  %.not3 = icmp eq i64 %i.ak, 0
  br i1 %.not3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState11gap_text_to.exit
  %i.al = tail call noundef i64 @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange5start(i32 noundef %i.ai, i32 noundef %i.aj)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = load i64, ptr %i.am, align 8, !noundef !9 ; 4 uses
  %i.ao = icmp ult i64 %i.an, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = icmp ult i64 %i.al, %i.an
  br i1 %i.ap, label %bb.k, label %bb.o

bb.j:                                             ; preds = %bb.r, %_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit, %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState11gap_text_to.exit
  %.sroa.0.0 = phi i1 [ false, %_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit ], [ %i.bl, %bb.r ], [ false, %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState11gap_text_to.exit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 0, ptr %i.aq, align 8
  ret i1 %.sroa.0.0

bb.k:                                             ; preds = %bb.i
  %i.ar = tail call noundef i64 @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange5start(i32 noundef %i.ai, i32 noundef %i.aj) ; 3 uses
  %i.as = icmp ult i64 %i.ar, %i.an
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val6 = load ptr, ptr %i.at, align 8, !nonnull !9, !noundef !9
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.val6, i64 %i.ar
  %i.av = load i32, ptr %i.au, align 4, !noundef !9 ; 2 uses
  %i.aw = icmp sgt i32 %i.av, -1
  br i1 %i.aw, label %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState6indent.exit, label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ar, i64 noundef %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #41
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3026
  store i8 3, ptr %i.c, align 1, !noalias !3026
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @68, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #41, !noalias !3030
  unreachable

_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState6indent.exit: ; preds = %bb.l
  %i.ax = zext nneg i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.ax, ptr %i.ay, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState6indent.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val8 = load ptr, ptr %i.az, align 8, !align !10, !noundef !9 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.ai, ptr %i.b, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.aj, ptr %i.ba, align 4
  %.not.i = icmp eq ptr %.val8, null
  br i1 %.not.i, label %bb.q, label %bb.p, !prof !524

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %.val8, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !9, !noundef !9
  %i.bd = getelementptr inbounds nuw i8, ptr %.val8, i64 16 ; 3 uses
  %i.be = load i64, ptr %i.bd, align 8, !noundef !9
  %i.bf = call noundef zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRange12is_sorted_byNCNvMs1_NtNtBz_8builtins11fish_indentNtB1I_18PrettyPrinterState21range_contained_errors_0EBz_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bc, i64 noundef %i.be, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a)
  br i1 %i.bf, label %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState21range_contained_error.exit, label %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState21range_contained_error.exit.thread

_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState21range_contained_error.exit.thread: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #41
  unreachable

_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState21range_contained_error.exit: ; preds = %bb.p
  %i.bg = load ptr, ptr %i.bb, align 8, !nonnull !9, !noundef !9
  %i.bh = load i64, ptr %i.bd, align 8, !noundef !9
  %i.bi = call noundef i64 @_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRange15partition_pointNCNvMs1_NtNtBz_8builtins11fish_indentNtB1L_18PrettyPrinterState21range_contained_errors0_0EBz_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bg, i64 noundef %i.bh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.b)
  %i.bj = load i64, ptr %i.bd, align 8, !noundef !9 ; 2 uses
  %i.bk = icmp ult i64 %i.bj, 1152921504606846976
  call void @llvm.assume(i1 %i.bk)
  %.not10 = icmp eq i64 %i.bi, %i.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %.not10, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState21range_contained_error.exit.thread, %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState21range_contained_error.exit
  %i.bl = call fastcc noundef zeroext i1 @_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState13emit_gap_text(ptr noalias nofree noundef align 8 dereferenceable(184) %0, i32 noundef %i.ai, i32 noundef %i.aj, i1 noundef zeroext %3)
  br label %bb.j

bb.s:                                             ; preds = %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState21range_contained_error.exit
  %i.bm = load ptr, ptr %i.e, align 8, !nonnull !9, !align !711, !noundef !9
  %i.bn = load i64, ptr %i.f, align 8, !noundef !9
  %i.bo = call noundef i64 @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange5start(i32 noundef %i.ai, i32 noundef %i.aj) ; 4 uses
  %i.bp = call noundef i64 @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange3end(i32 noundef %i.ai, i32 noundef %i.aj) ; 4 uses
  %i.bq = icmp ult i64 %i.bp, %i.bo
  %.not4 = icmp ugt i64 %i.bp, %i.bn
  %or.cond = or i1 %i.bq, %.not4
  br i1 %or.cond, label %bb.v, label %bb.t, !prof !2999

bb.t:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = sub nuw i64 %i.bp, %i.bo                ; 3 uses
  call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.br, i64 noundef range(i64 0, 4611686018427387904) %i.bs), !noalias !3031
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !3034, !noalias !3031, !noundef !9 ; 3 uses
  %i.bv = icmp ult i64 %i.bu, 2305843009213693952
  call void @llvm.assume(i1 %i.bv)
  %.not.i.i = icmp eq i64 %i.bp, %i.bo
  br i1 %.not.i.i, label %_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bo
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !3034, !noalias !3031, !nonnull !9, !noundef !9
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bu
  %i.ca = shl nuw nsw i64 %i.bs, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bz, ptr nonnull readonly align 4 %i.bw, i64 %i.ca, i1 false)
  %.pre.i.i = load i64, ptr %i.bt, align 8, !alias.scope !3034, !noalias !3031
  br label %_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit

_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit: ; preds = %bb.t, %bb.u
  %i.cb = phi i64 [ %.pre.i.i, %bb.u ], [ %i.bu, %bb.t ]
  %i.cc = add i64 %i.cb, %i.bs
  store i64 %i.cc, ptr %i.bt, align 8, !alias.scope !3034, !noalias !3031
  br label %bb.j

bb.v:                                             ; preds = %bb.s
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @177) #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState20emit_space_or_indent(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %0, i1 noundef zeroext %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %.val5 = load i64, ptr %i.b, align 8, !noundef !9 ; 2 uses
  %i.c = icmp eq i64 %.val5, 0
  br i1 %i.c, label %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState13at_line_start.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !nonnull !9, !noundef !9
  %.idx.i = shl nuw nsw i64 %.val5, 2
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !noalias !3038, !noundef !9 ; 4 uses
  %i.h = xor i32 %i.g, 55296
  %i.i = add i32 %i.h, -1114112
  %i.j = icmp ult i32 %i.i, -1112064
  br i1 %i.j, label %.split.i.i, label %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState13at_line_start.exit

.split.i.i:                                       ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3041
  store i32 %i.g, ptr %i.a, align 4, !noalias !3041
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @524) #41, !noalias !3038
  unreachable

_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState13at_line_start.exit: ; preds = %bb.b
  %i.k = icmp ult i32 %i.g, 1114112
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i32 %i.g, 10
  br i1 %i.l, label %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState13at_line_start.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState13at_line_start.exit
  br i1 %1, label %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendINtNtNtB18_7sources8repeat_n7RepeatNcEECs8frGy5WneL6_4fish.exit, label %bb.d

_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState13at_line_start.exit.thread: ; preds = %bb.a, %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState13at_line_start.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.o = load i64, ptr %i.n, align 8, !noundef !9 ; 3 uses
  %i.p = shl nuw i64 %i.o, 2                      ; 2 uses
  %i.q = icmp ugt i64 %i.o, 4611686018427387903
  br i1 %i.q, label %bb.h, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.r = tail call fastcc noundef zeroext i1 @_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState19has_preceding_space(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %0)
  br i1 %i.r, label %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendINtNtNtB18_7sources8repeat_n7RepeatNcEECs8frGy5WneL6_4fish.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.t = load i64, ptr %i.b, align 8, !alias.scope !3044, !noundef !9 ; 3 uses
  %i.u = load i64, ptr %i.s, align 8, !range !36, !alias.scope !3044, !noundef !9
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.f, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s) #40
  br label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit: ; preds = %bb.e, %bb.f
  %i.w = load ptr, ptr %i.d, align 8, !alias.scope !3044, !nonnull !9, !noundef !9
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.t
  store i32 32, ptr %i.x, align 4
  %i.y = add i64 %i.t, 1
  store i64 %i.y, ptr %i.b, align 8, !alias.scope !3044
  br label %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendINtNtNtB18_7sources8repeat_n7RepeatNcEECs8frGy5WneL6_4fish.exit

_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendINtNtNtB18_7sources8repeat_n7RepeatNcEECs8frGy5WneL6_4fish.exit: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_7sources8repeat_n7RepeatNcEE0E0Cs8frGy5WneL6_4fish.exit.i.i.i, %.split, %bb.d, %bb.c, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit
  ret void

bb.g:                                             ; preds = %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState13at_line_start.exit.thread
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %.split, label %.split4

bb.h:                                             ; preds = %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState13at_line_start.exit.thread
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #41
  unreachable

.split4:                                          ; preds = %bb.g
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.p)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !3047
  br label %bb.i

bb.i:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_7sources8repeat_n7RepeatNcEE0E0Cs8frGy5WneL6_4fish.exit.i.i.i, %.split4
  %i.aa = phi i64 [ %.pre.i.i.i, %.split4 ], [ %i.ag, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_7sources8repeat_n7RepeatNcEE0E0Cs8frGy5WneL6_4fish.exit.i.i.i ] ; 3 uses
  %.sroa.0.011.i.i.i = phi i64 [ %i.p, %.split4 ], [ %i.ab, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_7sources8repeat_n7RepeatNcEE0E0Cs8frGy5WneL6_4fish.exit.i.i.i ]
  %i.ab = add i64 %.sroa.0.011.i.i.i, -1          ; 2 uses
  %.not8.i.i.i.i = icmp eq i64 %i.ab, 0
  %i.ac = load i64, ptr %i.m, align 8, !range !36, !alias.scope !3047, !noundef !9
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.j, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_7sources8repeat_n7RepeatNcEE0E0Cs8frGy5WneL6_4fish.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #40
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_7sources8repeat_n7RepeatNcEE0E0Cs8frGy5WneL6_4fish.exit.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_7sources8repeat_n7RepeatNcEE0E0Cs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.j, %bb.i
  %i.ae = load ptr, ptr %i.z, align 8, !alias.scope !3047, !nonnull !9, !noundef !9
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.aa
  store i32 32, ptr %i.af, align 4
  %i.ag = add i64 %i.aa, 1                        ; 2 uses
  store i64 %i.ag, ptr %i.b, align 8, !alias.scope !3047
  br i1 %.not8.i.i.i.i, label %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendINtNtNtB18_7sources8repeat_n7RepeatNcEECs8frGy5WneL6_4fish.exit, label %bb.i

.split:                                           ; preds = %bb.g
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef 0)
  br label %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendINtNtNtB18_7sources8repeat_n7RepeatNcEECs8frGy5WneL6_4fish.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc i1 @_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState26gap_text_flags_before_node(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !9, !nonnull !9
  call void %i.j(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull %1) #44
  %i.k = load i64, ptr %i.h, align 8, !range !3014, !noundef !9
  switch i64 %i.k, label %bb.f [
    i64 0, label %bb.d
    i64 1, label %bb.b
    i64 3, label %bb.d
    i64 35, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !9, !noundef !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !9, !align !10, !noundef !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 176
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !9, !nonnull !9
  %i.r = call noundef i8 %i.q(ptr noundef nonnull %i.m) #44
  switch i8 %i.r, label %bb.f [
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 8, label %bb.d
    i8 9, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.s = call { ptr, ptr } @_RNvMsw_NtCs8frGy5WneL6_4fish3astNtB5_9Traversal6parent(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %2) ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.s, 0        ; 2 uses
  %i.u = extractvalue { ptr, ptr } %i.s, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !invariant.load !9, !nonnull !9
  call void %i.w(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef %i.t) #44
  %i.x = load i64, ptr %i.g, align 8, !range !3014, !noundef !9
  %i.y = icmp eq i64 %i.x, 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %i.y, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.b, %bb.b, %bb.b
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.z = call { ptr, ptr } @_RNvMsw_NtCs8frGy5WneL6_4fish3astNtB5_9Traversal6parent(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noundef nonnull %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.u) ; 2 uses
  %i.aa = extractvalue { ptr, ptr } %i.z, 0       ; 2 uses
  %i.ab = extractvalue { ptr, ptr } %i.z, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !9, !nonnull !9
  call void %i.ad(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef %i.aa) #44
  %i.ae = load i64, ptr %i.f, align 8, !range !3014, !noundef !9
  %i.af = icmp eq i64 %i.ae, 7
  br i1 %i.af, label %bb.g, label %bb.h, !prof !41

bb.f:                                             ; preds = %bb.c, %bb.a, %bb.d, %bb.b, %bb.m, %bb.n, %bb.k, %bb.i
  %.sroa.0.1 = phi i1 [ true, %bb.d ], [ false, %bb.a ], [ false, %bb.b ], [ %i.ar, %bb.i ], [ %i.ay, %bb.k ], [ %i.bf, %bb.m ], [ false, %bb.n ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret i1 %.sroa.0.1

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ag = call { ptr, ptr } @_RNvMsw_NtCs8frGy5WneL6_4fish3astNtB5_9Traversal6parent(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noundef nonnull %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.ab) ; 2 uses
  %i.ah = extractvalue { ptr, ptr } %i.ag, 0      ; 3 uses
  %i.ai = extractvalue { ptr, ptr } %i.ag, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !9, !nonnull !9 ; 3 uses
  call void %i.ak(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef %i.ah) #44
  %i.al = load i64, ptr %i.c, align 8, !range !3014, !noundef !9
  %i.am = icmp eq i64 %i.al, 8
  br i1 %i.am, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs8frGy5WneL6_4fish3ast4KindNtB6_5Debug3fmtBA_, ptr %.sroa.43.0..sroa_idx, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @190, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #41
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !9, !align !10, !noundef !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !9
  %i.ar = icmp ne i64 %i.aq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void %i.ak(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef %i.ah) #44
  %i.as = load i64, ptr %i.b, align 8, !range !3014, !noundef !9
  %i.at = icmp eq i64 %i.as, 26
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !9, !align !10, !noundef !9
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !9
  %i.ay = icmp ne i64 %i.ax, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.ak(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef %i.ah) #44
  %i.az = load i64, ptr %i.a, align 8, !range !3014, !noundef !9
  %i.ba = icmp eq i64 %i.az, 25
  br i1 %i.ba, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !9, !align !10, !noundef !9
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 88
  %i.be = load i64, ptr %i.bd, align 8, !noundef !9
  %i.bf = icmp ne i64 %i.be, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState9emit_text(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = alloca [1 x i8], align 1                 ; 3 uses
  %i.h = alloca [24 x i8], align 8                ; 15 uses
  %i.i = tail call fastcc noundef zeroext i1 @_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState20emit_gap_text_before(ptr noalias nofree noundef align 8 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) ; 0 uses
  %i.j = tail call noundef i64 @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange5start(i32 noundef %1, i32 noundef %2) ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val5 = load i64, ptr %i.k, align 8, !noundef !9 ; 2 uses
  %i.l = icmp ult i64 %i.j, %.val5
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_1
