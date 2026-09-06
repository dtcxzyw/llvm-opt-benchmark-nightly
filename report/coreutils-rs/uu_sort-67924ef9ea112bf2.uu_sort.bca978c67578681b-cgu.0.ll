Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_sort-67924ef9ea112bf2.uu_sort.bca978c67578681b-cgu.0?download=true
inline.NumInlined: 5661
inline.NumDeleted: 2556
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 129
begin_hunk_0_@_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector5parse:bb.a
  %i.t = load i8, ptr %i.o, align 1, !range !18, !noundef !11 ; 7 uses
  store <4 x i8> %i.s, ptr %i.i, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i8 %i.q, ptr %i.u, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.h, i8 0, i64 6, i1 false)
  switch i8 %i.n, label %default.unreachable116 [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
    i8 6, label %bb.i
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.v = tail call { i64, i64 } @_RNvCsgcf5BHVXlUt_7uu_sort13fd_soft_limit() #34, !noalias !14368 ; 0 uses
  store i48 6597069766656, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.h, i8 0, i64 6, i1 false)
  br label %bb.i

default.unreachable116:                           ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkhNvCsgcf5BHVXlUt_7uu_sort23is_ordering_option_charE0E0B2E_.exit.i._crit_edge
  unreachable

bb.c:                                             ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkhNvCsgcf5BHVXlUt_7uu_sort23is_ordering_option_charE0E0B2E_.exit.i._crit_edge
  store i8 1, ptr %i.h, align 8
  br label %bb.i

bb.d:                                             ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkhNvCsgcf5BHVXlUt_7uu_sort23is_ordering_option_charE0E0B2E_.exit.i._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store i8 1, ptr %i.w, align 2
  br label %bb.i

bb.e:                                             ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkhNvCsgcf5BHVXlUt_7uu_sort23is_ordering_option_charE0E0B2E_.exit.i._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store i8 1, ptr %i.x, align 1
  br label %bb.i

bb.f:                                             ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkhNvCsgcf5BHVXlUt_7uu_sort23is_ordering_option_charE0E0B2E_.exit.i._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  store i8 1, ptr %i.y, align 1
  br label %bb.i

bb.g:                                             ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkhNvCsgcf5BHVXlUt_7uu_sort23is_ordering_option_charE0E0B2E_.exit.i._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i8 1, ptr %i.z, align 4
  br label %bb.i

bb.h:                                             ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkhNvCsgcf5BHVXlUt_7uu_sort23is_ordering_option_charE0E0B2E_.exit.i._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 5
  store i8 1, ptr %i.aa, align 1
  br label %bb.i

bb.i:                                             ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkhNvCsgcf5BHVXlUt_7uu_sort23is_ordering_option_charE0E0B2E_.exit.i._crit_edge, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.b
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ %i.t, %bb.h ], [ %i.t, %bb.g ], [ %i.t, %bb.f ], [ %i.t, %bb.e ], [ %i.t, %bb.d ], [ %i.t, %bb.c ], [ %i.t, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkhNvCsgcf5BHVXlUt_7uu_sort23is_ordering_option_charE0E0B2E_.exit.i._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call fastcc void @_RNvCsgcf5BHVXlUt_7uu_sort17parse_field_count(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @440, i64 noundef 34) #34
  %i.ab = load i64, ptr %i.g, align 8, !range !34, !noundef !11
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !11, !noundef !11 ; 5 uses
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %i.ad, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr %i.ag, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 55
  store i8 2, ptr %i.ai, align 1
  br label %bb.aj

bb.k:                                             ; preds = %bb.i
  %.sroa.032.0.copyload = load i64, ptr %i.ad, align 8 ; 3 uses
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.534.0.copyload = load i64, ptr %.sroa.534.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.aj = icmp eq i64 %.sroa.032.0.copyload, 0
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ak = tail call fastcc ptr @_RNvCsgcf5BHVXlUt_7uu_sort14bad_field_spec(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @441, i64 noundef 25) #34
  store ptr %i.ak, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @89, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 55
  store i8 2, ptr %i.am, align 1
  br label %bb.aj

bb.m:                                             ; preds = %bb.k
  %.not.i = icmp eq i64 %.sroa.534.0.copyload, 0
  br i1 %.not.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit.thread, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %bb.m
  %rhsc = load i8, ptr %i.af, align 1
  %i.an = icmp eq i8 %rhsc, 46
  br i1 %i.an, label %bb.n, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit.thread

bb.n:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit
  %i.ao = add i64 %.sroa.534.0.copyload, -1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call fastcc void @_RNvCsgcf5BHVXlUt_7uu_sort17parse_field_count(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @442, i64 noundef 29) #34
  %i.aq = load i64, ptr %i.f, align 8, !range !34, !noundef !11
  %i.ar = trunc nuw i64 %i.aq to i1
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !11, !noundef !11 ; 2 uses
  br i1 %i.ar, label %bb.o, label %bb.p

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit.thread: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit, %bb.m, %bb.p
  %.sroa.044.0 = phi ptr [ %i.au, %bb.p ], [ %i.af, %bb.m ], [ %i.af, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit ]
  %.sroa.446.0 = phi i64 [ %.sroa.537.0.copyload, %bb.p ], [ 0, %bb.m ], [ %.sroa.534.0.copyload, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit ]
  %.sroa.048.0 = phi i64 [ %.sroa.035.0.copyload, %bb.p ], [ 1, %bb.m ], [ 1, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvCsgcf5BHVXlUt_7uu_sort22parse_ordering_options(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.044.0, i64 noundef %.sroa.446.0, ptr noalias nofree noundef dereferenceable(6) %i.i, ptr noalias nofree noundef dereferenceable(6) %i.h) #34
  %i.av = load ptr, ptr %i.e, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !11 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.az = load i8, ptr %i.ay, align 8, !range !18, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %spec.select = or i8 %i.az, %.sroa.0.0          ; 2 uses
  %.not.i70 = icmp eq i64 %i.ax, 0
  br i1 %.not.i70, label %.thread, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit73

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit73: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit.thread
  %rhsc93 = load i8, ptr %i.av, align 1
  %i.ba = icmp eq i8 %rhsc93, 44
  br i1 %i.ba, label %bb.r, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.as, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr %i.bb, ptr %0, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 55
  store i8 2, ptr %i.bd, align 1
  br label %bb.aj

bb.p:                                             ; preds = %bb.n
  %.sroa.035.0.copyload = load i64, ptr %i.as, align 8 ; 2 uses
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.537.0.copyload = load i64, ptr %.sroa.537.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.be = icmp eq i64 %.sroa.035.0.copyload, 0
  br i1 %i.be, label %bb.q, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.bf = tail call fastcc ptr @_RNvCsgcf5BHVXlUt_7uu_sort14bad_field_spec(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @443, i64 noundef 29) #34
  store ptr %i.bf, ptr %0, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @89, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 55
  store i8 2, ptr %i.bh, align 1
  br label %bb.aj

bb.r:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit73
  %i.bi = add i64 %i.ax, -1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RNvCsgcf5BHVXlUt_7uu_sort17parse_field_count(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bj, i64 noundef %i.bi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @445, i64 noundef 31) #34
  %i.bk = load i64, ptr %i.d, align 8, !range !34, !noundef !11
  %i.bl = trunc nuw i64 %i.bk to i1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !11, !noundef !11 ; 5 uses
  br i1 %i.bl, label %bb.v, label %bb.w

bb.s:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit73
  %i.bp = tail call fastcc ptr @_RNvCsgcf5BHVXlUt_7uu_sort14bad_field_spec(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @444, i64 noundef 31) #34
  store ptr %i.bp, ptr %0, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @89, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 55
  store i8 2, ptr %i.br, align 1
  br label %bb.aj

.thread:                                          ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit.thread, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit78.thread
  %.sroa.3.0 = phi i8 [ %spec.select66, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit78.thread ], [ 2, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit.thread ] ; 2 uses
  %.sroa.2.0 = phi i64 [ %.sroa.050.0, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit78.thread ], [ undef, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit.thread ]
  %.sroa.080.0 = phi i64 [ %.sroa.038.0.copyload, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit78.thread ], [ undef, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit.thread ]
  %.sroa.059.0.copyload = load i48, ptr %i.h, align 8 ; 10 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.bt = load i8, ptr %i.bs, align 2, !range !18, !noundef !11 ; 2 uses
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.bw = load i8, ptr %i.bv, align 1, !range !18, !noundef !11 ; 2 uses
  %i.bx = trunc nuw i8 %i.bw to i1
  %.sroa.01.0.extract.trunc.i = trunc i48 %.sroa.059.0.copyload to i8
  %.sroa.01.1.extract.shift.i = lshr i48 %.sroa.059.0.copyload, 8
  %.sroa.01.1.extract.trunc.i = trunc i48 %.sroa.01.1.extract.shift.i to i8 ; 3 uses
  %.sroa.01.2.extract.shift.i = lshr i48 %.sroa.059.0.copyload, 16
  %.sroa.01.2.extract.trunc.i = trunc i48 %.sroa.01.2.extract.shift.i to i8 ; 2 uses
  %.sroa.01.3.extract.shift.i = lshr i48 %.sroa.059.0.copyload, 24 ; 2 uses
  %.sroa.01.3.extract.trunc.i = trunc i48 %.sroa.01.3.extract.shift.i to i8
  %i.by = add i8 %.sroa.01.1.extract.trunc.i, %.sroa.01.0.extract.trunc.i
  %i.bz = add i8 %i.by, %.sroa.01.2.extract.trunc.i
  %i.ca = add i8 %i.bz, %.sroa.01.3.extract.trunc.i ; 2 uses
  %i.cb = icmp ugt i8 %i.ca, 1
  br i1 %i.cb, label %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit.thread, label %bb.t

bb.t:                                             ; preds = %.thread
  %i.cc = icmp eq i8 %i.ca, 1
  br i1 %i.cc, label %bb.u, label %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit.thread89

bb.u:                                             ; preds = %bb.t
  %i.cd = and i48 %.sroa.059.0.copyload, 4294967296
  %.not.i74 = icmp eq i48 %i.cd, 0
  br i1 %.not.i74, label %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit, label %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit.thread

_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit: ; preds = %bb.u
  %i.ce = and i48 %.sroa.059.0.copyload, 1099511627776
  %i.cf = icmp ne i48 %i.ce, 0
  %i.cg = or i8 %i.bw, %i.bt
  %i.ch = icmp ne i8 %i.cg, 0
  %spec.select.i = or i1 %i.cf, %i.ch
  br i1 %spec.select.i, label %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit.thread, label %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit.thread89

bb.v:                                             ; preds = %bb.r
  %i.ci = load ptr, ptr %i.bm, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.ci, ptr %0, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bo, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 55
  store i8 2, ptr %i.ck, align 1
  br label %bb.aj

bb.w:                                             ; preds = %bb.r
  %.sroa.038.0.copyload = load i64, ptr %i.bm, align 8 ; 2 uses
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.540.0.copyload = load i64, ptr %.sroa.540.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cl = icmp eq i64 %.sroa.038.0.copyload, 0
  br i1 %i.cl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cm = tail call fastcc ptr @_RNvCsgcf5BHVXlUt_7uu_sort14bad_field_spec(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @441, i64 noundef 25) #34
  store ptr %i.cm, ptr %0, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @89, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 55
  store i8 2, ptr %i.co, align 1
  br label %bb.aj

bb.y:                                             ; preds = %bb.w
  %.not.i75 = icmp eq i64 %.sroa.540.0.copyload, 0
  br i1 %.not.i75, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit78.thread, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit78

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit78: ; preds = %bb.y
  %rhsc95 = load i8, ptr %i.bo, align 1
  %i.cp = icmp eq i8 %rhsc95, 46
  br i1 %i.cp, label %bb.z, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit78.thread

bb.z:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit78
  %i.cq = add i64 %.sroa.540.0.copyload, -1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvCsgcf5BHVXlUt_7uu_sort17parse_field_count(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef %i.cq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @442, i64 noundef 29) #34
  %i.cs = load i64, ptr %i.c, align 8, !range !34, !noundef !11
  %i.ct = trunc nuw i64 %i.cs to i1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !11, !noundef !11 ; 2 uses
  br i1 %i.ct, label %bb.aa, label %bb.ab

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit78.thread: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit78, %bb.y, %bb.ab
  %.sroa.050.0 = phi i64 [ %.sroa.041.0.copyload, %bb.ab ], [ 0, %bb.y ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit78 ]
  %.sroa.051.0 = phi ptr [ %i.cw, %bb.ab ], [ %i.bo, %bb.y ], [ %i.bo, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit78 ]
  %.sroa.453.0 = phi i64 [ %.sroa.543.0.copyload, %bb.ab ], [ 0, %bb.y ], [ %.sroa.540.0.copyload, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit78 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvCsgcf5BHVXlUt_7uu_sort22parse_ordering_options(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.051.0, i64 noundef %.sroa.453.0, ptr noalias nofree noundef dereferenceable(6) %i.i, ptr noalias nofree noundef dereferenceable(6) %i.h) #34
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !11
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.da = load i8, ptr %i.cz, align 8, !range !18, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %spec.select66 = or i8 %i.da, %.sroa.0.0
  %i.db = icmp eq i64 %i.cy, 0
  br i1 %i.db, label %.thread, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dc = load ptr, ptr %i.cu, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.dc, ptr %0, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cw, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 55
  store i8 2, ptr %i.de, align 1
  br label %bb.aj

bb.ab:                                            ; preds = %bb.z
  %.sroa.041.0.copyload = load i64, ptr %i.cu, align 8
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.543.0.copyload = load i64, ptr %.sroa.543.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit78.thread

bb.ac:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsgcf5BHVXlUt_7uu_sort.exit78.thread
  %i.df = tail call fastcc ptr @_RNvCsgcf5BHVXlUt_7uu_sort14bad_field_spec(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @444, i64 noundef 31) #34
  store ptr %i.df, ptr %0, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @89, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 55
  store i8 2, ptr %i.dh, align 1
  br label %bb.aj

_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit.thread89: ; preds = %bb.t, %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit
  %i.di = trunc i48 %.sroa.059.0.copyload to i1
  %i.dj = and i48 %.sroa.059.0.copyload, 4294967296
  %.not = icmp eq i48 %i.dj, 0
  %i.dk = and i48 %.sroa.059.0.copyload, 1099511627776
  %.not117 = icmp eq i48 %i.dk, 0
  br i1 %i.di, label %bb.ag, label %bb.ae

_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit.thread: ; preds = %bb.u, %.thread, %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !range !18, !noundef !11
  %i.dn = trunc nuw i8 %i.dm to i1
  call void @_RNvCsgcf5BHVXlUt_7uu_sort20ordering_opts_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i48 %.sroa.059.0.copyload, i1 noundef zeroext %i.bu, i1 noundef zeroext %i.bx, i1 noundef zeroext %i.dn) #34
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !noundef !11
  %i.ds = tail call { ptr, ptr } @_RNvCsgcf5BHVXlUt_7uu_sort26incompatible_options_error(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dp, i64 noundef %i.dr) #34
  %i.dt = extractvalue { ptr, ptr } %i.ds, 0
  store ptr %i.dt, ptr %0, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @89, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 55
  store i8 2, ptr %i.dv, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14370)
  %.val.i.i = load i64, ptr %i.a, align 8, !range !22, !alias.scope !14371, !noundef !11 ; 2 uses
  %i.dw = icmp eq i64 %.val.i.i, 0
  br i1 %i.dw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit, label %bb.ad

bb.ad:                                            ; preds = %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit.thread
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dp, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !14371
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit: ; preds = %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit.thread, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aj

bb.ae:                                            ; preds = %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit.thread89
  %4 = trunc i48 %.sroa.01.3.extract.shift.i to i1
  %i.dx = or i8 %.sroa.01.1.extract.trunc.i, %.sroa.01.2.extract.trunc.i
  %brmerge = icmp ne i8 %i.dx, 0                  ; 2 uses
  %.mux = add nuw nsw i8 %.sroa.01.1.extract.trunc.i, 1
  %brmerge67 = or i1 %brmerge, %4
  %.mux.mux = select i1 %brmerge, i8 %.mux, i8 3
  br i1 %brmerge67, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %. = select i1 %.not, i8 6, i8 4
  %spec.select68 = select i1 %.not117, i8 %., i8 5
  br label %bb.ag

bb.ag:                                            ; preds = %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit.thread89, %bb.ae, %bb.af
  %.sroa.031.0 = phi i8 [ %spec.select68, %bb.af ], [ 0, %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit.thread89 ], [ %.mux.mux, %bb.ae ]
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  store i8 %.sroa.031.0, ptr %i.dy, align 1
  %.sroa.062.0.copyload = load i48, ptr %i.i, align 8 ; 2 uses
  %.sroa.05.0.extract.trunc.i = trunc i48 %.sroa.062.0.copyload to i40
  %.sroa.05.5.extract.shift.i = lshr i48 %.sroa.062.0.copyload, 40 ; 3 uses
  %.sroa.05.5.extract.trunc.i = trunc nuw i48 %.sroa.05.5.extract.shift.i to i8 ; 2 uses
  %i.dz = icmp eq i64 %.sroa.032.0.copyload, 1
  br i1 %i.dz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ea = icmp ne i64 %.sroa.048.0, 1
  %.not.i79 = icmp ne i8 %.sroa.3.0, 2            ; 2 uses
  %or.cond.not19.i = or i1 %i.ea, %.not.i79
  %switch.i = icmp ult i8 %.sroa.05.5.extract.trunc.i, 2
  %or.cond14.i = select i1 %or.cond.not19.i, i1 true, i1 %switch.i
  %i.eb = trunc nuw i8 %spec.select to i1
  %or.cond17.i = or i1 %or.cond14.i, %i.eb
  %i.ec = icmp ne i48 %.sroa.05.5.extract.shift.i, 2
  %narrow.i = select i1 %or.cond17.i, i1 %i.ec, i1 false
  %i.ed = zext i1 %.not.i79 to i8
  br label %_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector3new.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ee = icmp ne i48 %.sroa.05.5.extract.shift.i, 2
  br label %_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector3new.exit

_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector3new.exit: ; preds = %bb.ah, %bb.ai
  %.sroa.07.1.in.i = phi i1 [ %narrow.i, %bb.ah ], [ %i.ee, %bb.ai ]
  %.sroa.012.0.i = phi i8 [ %i.ed, %bb.ah ], [ 1, %bb.ai ]
  %.sroa.07.1.i = zext i1 %.sroa.07.1.in.i to i8
  store i64 %.sroa.080.0, ptr %0, align 8
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.2.0, ptr %.sroa.4105.0..sroa_idx, align 8
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.3.0, ptr %.sroa.5106.0..sroa_idx, align 8
  %.sroa.7108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.032.0.copyload, ptr %.sroa.7108.0..sroa_idx, align 8
  %.sroa.8109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.048.0, ptr %.sroa.8109.0..sroa_idx, align 8
  %.sroa.9110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %spec.select, ptr %.sroa.9110.0..sroa_idx, align 8
  %.sroa.11112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i40 %.sroa.05.0.extract.trunc.i, ptr %.sroa.11112.0..sroa_idx, align 8
  %.sroa.12113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 53
  store i8 %.sroa.05.5.extract.trunc.i, ptr %.sroa.12113.0..sroa_idx, align 1
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 54
  store i8 %.sroa.012.0.i, ptr %.sroa.13.0..sroa_idx, align 2
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 55
  store i8 %.sroa.07.1.i, ptr %.sroa.14.0..sroa_idx, align 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.j, %bb.l, %bb.s, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit, %bb.q, %bb.o, %bb.aa, %bb.ac, %bb.x, %bb.v, %_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector3new.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs_Csgcf5BHVXlUt_7uu_sortNtB4_6Output10into_write(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = load i64, ptr %1, align 8, !range !10, !noundef !11 ; 3 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !range !16, !noundef !11 ; 2 uses
  store i32 %i.e, ptr %i.b, align 4
  %i.f = call noundef ptr @_RNvMs2_NtCs2vKOLqTMYjT_3std2fsNtB5_4File7set_len(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b, i64 noundef 0) #34 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14390
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = and i64 %i.h, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i
    i64 1, label %bb.e
  ], !prof !31

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %i.k = and i64 %i.h, 1095216660480
  %i.l = icmp ne i64 %i.k, 1095216660480
  call void @llvm.assume(i1 %i.j)
  call void @llvm.assume(i1 %i.l)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.f, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !alias.scope !14391, !noalias !14390
  store i8 3, ptr %i.a, align 8, !alias.scope !14391, !noalias !14390
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #34, !noalias !14390
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14390
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit: ; preds = %bb.b, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  %i.o = call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 4) #34 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !15

bb.f:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 4) #37
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit
  store i32 %i.e, ptr %i.o, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = icmp eq i64 %i.c, 0
  br i1 %i.q, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsgcf5BHVXlUt_7uu_sort.exit, label %bb.g

bb.g:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !14392
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsgcf5BHVXlUt_7uu_sort.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsgcf5BHVXlUt_7uu_sort.exit: ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.g
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !14393
  %i.r = call noundef dereferenceable_or_null(8192) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 8192, i64 noundef range(i64 1, 9) 1) #34, !noalias !14393 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.h, label %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterINtNtB8_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EE13with_capacityCsgcf5BHVXlUt_7uu_sort.exit

bb.h:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsgcf5BHVXlUt_7uu_sort.exit
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 8192) #37, !noalias !14394
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.t = tail call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() #34
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  %i.u = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #34 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.j, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit3, !prof !15

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #37
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit3: ; preds = %bb.i
  store ptr %i.t, ptr %i.u, align 8
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !14395
  %i.w = tail call noundef dereferenceable_or_null(8192) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 8192, i64 noundef range(i64 1, 9) 1) #34, !noalias !14395 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.k, label %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterINtNtB8_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EE13with_capacityCsgcf5BHVXlUt_7uu_sort.exit

bb.k:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit3
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 8192) #37, !noalias !14396
  unreachable

_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterINtNtB8_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EE13with_capacityCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit3, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsgcf5BHVXlUt_7uu_sort.exit
  %.sink17 = phi ptr [ %i.r, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsgcf5BHVXlUt_7uu_sort.exit ], [ %i.w, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit3 ]
  %.sink14 = phi ptr [ %i.o, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsgcf5BHVXlUt_7uu_sort.exit ], [ %i.u, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit3 ]
  %.sink = phi ptr [ @449, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsgcf5BHVXlUt_7uu_sort.exit ], [ @448, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit3 ]
  store i64 8192, ptr %0, align 8, !noalias !11
  %.sroa.42.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink17, ptr %.sroa.42.0..sroa_idx.i4, align 8, !noalias !11
  %.sroa.5.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i5, align 8, !noalias !11
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.y, align 8, !noalias !11
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sink14, ptr %i.z, align 8, !noalias !11
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sink, ptr %i.aa, align 8, !noalias !11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RNvMs_NtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmpNtB4_7NumInfo5parse(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly captures(none) dereferenceable(5) %3) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 10 uses
  %i.b = icmp samesign eq i64 %2, 0
  br i1 %i.b, label %.outer._crit_edge.thread952, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 1
end_hunk_0
