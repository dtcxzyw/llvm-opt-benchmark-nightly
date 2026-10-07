Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_graph-16977beae1024313.ruff_graph.63996861029cb498-cgu.05?download=true
inline.NumInlined: 290
inline.NumDeleted: 158
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNvYB1s_NtNtBa_3cmp10PartialOrd2ltECs8yaccCKGz54_10ruff_graph:bb.a
  %i.cq = getelementptr i8, ptr %i.df, i64 24     ; 2 uses
  %i.cr = getelementptr i8, ptr %i.de, i64 24
  %i.cs = and i64 %1, 1
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.l, label %bb.k

.lr.ph.i:                                         ; preds = %.noexc32, %.loopexit39.1
  %.sroa.0.011.i = phi ptr [ %i.cy, %.noexc32 ], [ %0, %.loopexit39.1 ] ; 2 uses
  %.sroa.04.010.i = phi i64 [ %i.cu, %.noexc32 ], [ 0, %.loopexit39.1 ]
  %.sroa.06.09.i = phi ptr [ %i.da, %.noexc32 ], [ %2, %.loopexit39.1 ] ; 3 uses
  %.sroa.011.08.i = phi ptr [ %i.dc, %.noexc32 ], [ %i.bz, %.loopexit39.1 ] ; 3 uses
  %.sroa.015.07.i = phi ptr [ %i.df, %.noexc32 ], [ %i.cp, %.loopexit39.1 ] ; 3 uses
  %.sroa.017.06.i = phi ptr [ %i.de, %.noexc32 ], [ %i.co, %.loopexit39.1 ] ; 3 uses
  %.sroa.019.05.i = phi ptr [ %i.dg, %.noexc32 ], [ %i.cn, %.loopexit39.1 ] ; 2 uses
  %i.cu = add nuw nsw i64 %.sroa.04.010.i, 1      ; 2 uses
  %i.cv = invoke noundef range(i8 -1, 2) i8 @_RNvXs1H_CshFWUtO0bu8g_6caminoNtB6_11Utf8PathBufNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.011.08.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.06.09.i)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.cw = icmp sgt i8 %i.cv, -1                   ; 2 uses
  %..i23.i = select i1 %i.cw, ptr %.sroa.06.09.i, ptr %.sroa.011.08.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.011.i, ptr noundef nonnull align 8 dereferenceable(24) %..i23.i, i64 24, i1 false), !noalias !487
  %i.cx = invoke noundef range(i8 -1, 2) i8 @_RNvXs1H_CshFWUtO0bu8g_6caminoNtB6_11Utf8PathBufNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.017.06.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.015.07.i)
          to label %.noexc32 unwind label %.loopexit ; 2 uses

.noexc32:                                         ; preds = %.noexc
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 24 ; 2 uses
  %i.cz = zext i1 %i.cw to i64
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %.sroa.06.09.i, i64 %i.cz ; 5 uses
  %.lobit.i31 = lshr i8 %i.cv, 7
  %i.db = zext nneg i8 %.lobit.i31 to i64
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %.sroa.011.08.i, i64 %i.db ; 4 uses
  %i.dd = icmp sgt i8 %i.cx, -1                   ; 2 uses
  %..i.i = select i1 %i.dd, ptr %.sroa.017.06.i, ptr %.sroa.015.07.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.019.05.i, ptr noundef nonnull align 8 dereferenceable(24) %..i.i, i64 24, i1 false), !noalias !488
  %.neg.i.i = sext i1 %i.dd to i64
  %i.de = getelementptr [24 x i8], ptr %.sroa.017.06.i, i64 %.neg.i.i ; 2 uses
  %.lobit4.i = ashr i8 %i.cx, 7
  %.neg15.i.i = sext i8 %.lobit4.i to i64
  %i.df = getelementptr [24 x i8], ptr %.sroa.015.07.i, i64 %.neg15.i.i ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.019.05.i, i64 -24
  %exitcond.not.i = icmp eq i64 %i.cu, %i.e
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.k:                                             ; preds = %._crit_edge.i
  %i.dh = icmp ult ptr %i.da, %i.cq               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.dh, ptr %i.da, ptr %i.dc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.0..sroa.011.0.i, i64 24, i1 false)
  %i.di = zext i1 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %i.di
  %i.dk = xor i1 %i.dh, true
  %i.dl = zext i1 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %i.dl
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.dc, %._crit_edge.i ], [ %i.dm, %bb.k ]
  %.sroa.06.1.i = phi ptr [ %i.da, %._crit_edge.i ], [ %i.dj, %bb.k ]
  %i.dn = icmp ne ptr %.sroa.06.1.i, %i.cq
  %i.do = icmp ne ptr %.sroa.011.1.i, %i.cr
  %or.cond.i = select i1 %i.dn, i1 true, i1 %i.do, !prof !489
  br i1 %or.cond.i, label %bb.m, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNvYB1g_NtNtBa_3cmp10PartialOrd2ltECs8yaccCKGz54_10ruff_graph.exit, !prof !489

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #19
          to label %.noexc33 unwind label %.loopexit.split-lp

.noexc33:                                         ; preds = %bb.m
  unreachable

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.dp = mul nuw nsw i64 %1, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.dp, i1 false), !noalias !490
  br label %.body

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNvYB1g_NtNtBa_3cmp10PartialOrd2ltECs8yaccCKGz54_10ruff_graph.exit: ; preds = %bb.l, %bb.a
  ret void

.body:                                            ; preds = %bb.r, %bb.n
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.n ], [ %lpad.phi56, %bb.r ]
  resume { ptr, i32 } %.pn

.noexc35:                                         ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNvYB18_NtNtBa_3cmp10PartialOrd2ltECs8yaccCKGz54_10ruff_graph.exit
  %.sroa.05.045 = phi i64 [ %i.ea, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNvYB18_NtNtBa_3cmp10PartialOrd2ltECs8yaccCKGz54_10ruff_graph.exit ], [ %.sroa.0.0, %bb.g ] ; 4 uses
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.05.045 ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.05.045, 24
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i64 24, i1 false)
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -24 ; 3 uses
  %i.dt = call noundef range(i8 -1, 2) i8 @_RNvXs1H_CshFWUtO0bu8g_6caminoNtB6_11Utf8PathBufNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ds)
  %i.du = icmp slt i8 %i.dt, 0
  br i1 %i.du, label %bb.o, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNvYB18_NtNtBa_3cmp10PartialOrd2ltECs8yaccCKGz54_10ruff_graph.exit

bb.o:                                             ; preds = %.noexc35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i64 24, i1 false)
  %i.dv = icmp eq i64 %.sroa.05.045, 1
  br i1 %i.dv, label %._crit_edge, label %.lr.ph

bb.p:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i3477, ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i64 24, i1 false)
  %i.dw = icmp eq ptr %i.dx, %2
  br i1 %i.dw, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %bb.p
  %.sroa.0.0.i3477 = phi ptr [ %i.dx, %bb.p ], [ %i.ds, %bb.o ] ; 4 uses
  %i.dx = getelementptr inbounds i8, ptr %.sroa.0.0.i3477, i64 -24 ; 4 uses
  %i.dy = invoke noundef range(i8 -1, 2) i8 @_RNvXs1H_CshFWUtO0bu8g_6caminoNtB6_11Utf8PathBufNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dx)
          to label %bb.q unwind label %.loopexit51

bb.q:                                             ; preds = %.lr.ph
  %i.dz = icmp slt i8 %i.dy, 0
  br i1 %i.dz, label %bb.p, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %bb.q, %bb.o
  %.sroa.0.0.i34.lcssa = phi ptr [ %2, %bb.o ], [ %2, %bb.p ], [ %.sroa.0.0.i3477, %bb.q ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i34.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNvYB18_NtNtBa_3cmp10PartialOrd2ltECs8yaccCKGz54_10ruff_graph.exit

.loopexit51:                                      ; preds = %.lr.ph
  %lpad.loopexit54 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp52:                             ; preds = %.lr.ph82
  %lpad.loopexit.split-lp55 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp52, %.loopexit51
  %.sroa.0.0.i34.lcssa50 = phi ptr [ %.sroa.0.0.i3477, %.loopexit51 ], [ %.sroa.0.0.i34.180, %.loopexit.split-lp52 ]
  %lpad.phi56 = phi { ptr, i32 } [ %lpad.loopexit54, %.loopexit51 ], [ %lpad.loopexit.split-lp55, %.loopexit.split-lp52 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i34.lcssa50, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !491
  br label %.body

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNvYB18_NtNtBa_3cmp10PartialOrd2ltECs8yaccCKGz54_10ruff_graph.exit: ; preds = %._crit_edge, %.noexc35
  %i.ea = add nuw nsw i64 %.sroa.05.045, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ea, %i.e
  br i1 %exitcond.not, label %.loopexit39, label %.noexc35
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCs8yaccCKGz54_10ruff_graphNtB2_13ModuleImports11relative_to(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 13 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = load ptr, ptr %1, align 8, !noundef !3   ; 3 uses
  %.not = icmp ne ptr %i.d, null                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %.sroa.0.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.h, i64 undef ; 2 uses
  %.sroa.0.sroa.0.0 = zext i1 %.not to i64        ; 2 uses
  %.sroa.5.0 = select i1 %.not, i64 %i.f, i64 0
  store i64 %.sroa.0.sroa.0.0, ptr %i.a, align 8
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.01.sroa.4.0..sroa_idx, align 8
  %.sroa.01.sroa.4.sroa.4.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %.sroa.01.sroa.4.sroa.4.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.01.sroa.4.sroa.5.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.0.sroa.5.sroa.6.0, ptr %.sroa.01.sroa.4.sroa.5.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sroa.0.sroa.0.0, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8
  %.sroa.01.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.01.sroa.6.0..sroa_idx, align 8
  %.sroa.01.sroa.6.sroa.4.0..sroa.01.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.d, ptr %.sroa.01.sroa.6.sroa.4.0..sroa.01.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.01.sroa.6.sroa.5.0..sroa.01.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.0.sroa.5.sroa.6.0, ptr %.sroa.01.sroa.6.sroa.5.0..sroa.01.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.b, ptr %i.i, align 8
  call void @_RINvXsd_NtNtNtCscdodAO9FK5_5alloc11collections5btree3setINtB6_8BTreeSetNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB28_8adapters3map3MapINtB6_8IntoIterB17_ENCNvMCs8yaccCKGz54_10ruff_graphNtB47_13ModuleImports11relative_to0EEB47_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCs8yaccCKGz54_10ruff_graphNtB2_13ModuleImports6detect(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6, ptr noalias noundef readonly captures(address, read_provenance) %7, i64 %8, i64 noundef %9, i1 noundef zeroext %10, i1 noundef zeroext %11) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [64 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [64 x i8], align 8                ; 12 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 12 uses
  %i.k = alloca [104 x i8], align 8               ; 7 uses
  %.sroa.67 = alloca [40 x i8], align 8           ; 6 uses
  %i.l = alloca [104 x i8], align 8               ; 8 uses
  %i.m = load i64, ptr %4, align 8, !range !498, !noundef !3 ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  %i.o = add i64 %i.m, -9223372036854775807
  %i.p = select i1 %i.n, i64 %i.o, i64 0          ; 2 uses
  %i.q = icmp eq i64 %i.p, 1
  %i.r = tail call { i8, i8 } @_RINvMs9_NvNtCsfDzkztWVnn_18ty_module_resolver11environment1__NtB8_19ResolverEnvironment14python_versionNtNtCs8yaccCKGz54_10ruff_graph2db8ModuleDbEB1H_(i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 %1) ; 2 uses
  %i.s = extractvalue { i8, i8 } %i.r, 0
  %i.t = extractvalue { i8, i8 } %i.r, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  switch i64 %i.p, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 368
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 376
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.sroa.026.0 = phi ptr [ %i.y, %bb.d ], [ %4, %bb.a ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.026.0, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.026.0, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.311.0.in = phi ptr [ %i.aa, %bb.e ], [ %i.x, %bb.c ]
  %.sroa.010.0.in = phi ptr [ %i.z, %bb.e ], [ %i.w, %bb.c ]
  %.sroa.010.0 = load ptr, ptr %.sroa.010.0.in, align 8, !nonnull !3, !noundef !3
  %.sroa.311.0 = load i64, ptr %.sroa.311.0.in, align 8, !noundef !3
  %.sroa.040.0.insert.ext = zext i8 %i.s to i48
  %.sroa.040.1.insert.ext = zext i8 %i.t to i48
  %.sroa.040.1.insert.shift = shl nuw nsw i48 %.sroa.040.1.insert.ext, 8
  %.sroa.040.1.insert.insert = or disjoint i48 %.sroa.040.1.insert.shift, %.sroa.040.0.insert.ext
  %.sroa.040.4.insert.ext = select i1 %i.q, i48 12884901888, i48 0
  %.sroa.040.2.insert.insert = or disjoint i48 %.sroa.040.1.insert.insert, %.sroa.040.4.insert.ext
  %.sroa.040.4.insert.insert = or disjoint i48 %.sroa.040.2.insert.insert, 13238272
  call void @_RNvCsb6FLkjZuKG_18ruff_python_parser5parse(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.010.0, i64 noundef %.sroa.311.0, i48 %.sroa.040.4.insert.insert)
  %i.ab = load i64, ptr %i.k, align 8, !range !13, !noundef !3 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.67, ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i64 40, i1 false)
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.67, i64 40, i1 false)
  %i.ae = call noundef nonnull ptr @_RNvXs_NtCsiXichZnxgbf_6anyhow5errorNtB6_5ErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorE4fromCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.af, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  br label %bb.w

bb.h:                                             ; preds = %bb.f
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.513.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.530.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.67, i64 40, i1 false)
  store i64 %i.ab, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %.thread69, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers14to_module_path(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %7, i64 noundef %8, ptr noalias noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6)
          to label %bb.j unwind label %bb.l

.thread69:                                        ; preds = %bb.h
  store i64 -1, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %.pre = load i64, ptr %i.j, align 8, !range !7
  %.pre.fr = freeze i64 %.pre
  %i.ag = icmp eq i64 %.pre.fr, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ak = load i64, ptr %i.aj, align 8
  %spec.select = select i1 %i.ag, ptr null, ptr %i.ai
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread69
  %i.al = phi i64 [ %i.ak, %bb.j ], [ undef, %.thread69 ]
  %i.am = phi ptr [ %spec.select, %bb.j ], [ null, %.thread69 ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %i.am, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i64 %i.al, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %9, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ar = zext i1 %10 to i8
  store i8 %i.ar, ptr %i.aq, align 8
  store i64 0, ptr %i.h, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %.sroa.533.0..sroa_idx, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.at = zext i1 %11 to i8
  store i8 %i.at, ptr %i.as, align 8
  invoke void @_RNvMNtCs8yaccCKGz54_10ruff_graph9collectorNtB2_9Collector7collect(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.h, ptr noundef nonnull align 8 %i.l)
          to label %bb.o unwind label %bb.n

.body:                                            ; preds = %bb.u, %bb.l, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.m ], [ %i.au, %bb.l ], [ %i.bk, %bb.u ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsb6FLkjZuKG_18ruff_python_parser6ParsedNtNtCskLngH8kgpZI_15ruff_python_ast9generated3ModEECs8yaccCKGz54_10ruff_graph(ptr noalias noundef align 8 dereferenceable(104) %i.l) #17
          to label %bb.ae unwind label %bb.ac

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs8yaccCKGz54_10ruff_graph.exit.i, %bb.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.ad, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs8yaccCKGz54_10ruff_graph13ModuleImportsEBD_.exit, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ad ], [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs8yaccCKGz54_10ruff_graph13ModuleImportsEBD_.exit ], [ %i.av, %bb.n ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECs8yaccCKGz54_10ruff_graph(ptr noalias noundef align 8 dereferenceable(24) %i.j) #17
          to label %.body unwind label %bb.ac

bb.n:                                             ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.o:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr null, ptr %i.g, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.539.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMNtCs8yaccCKGz54_10ruff_graph8resolverNtB2_8Resolver3new(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6, i32 noundef %2, i32 noundef %3)
          to label %bb.q unwind label %bb.p

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs8yaccCKGz54_10ruff_graph9collector15CollectedImportEEB1s_.exit: ; preds = %bb.r, %bb.p
  %.sroa.024.0 = phi i1 [ %.sroa.024.1, %bb.p ], [ false, %bb.r ]
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.p ], [ %lpad.phi, %bb.r ] ; 2 uses
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtB4_7set_val9SetValZSTENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs8yaccCKGz54_10ruff_graph13ModuleImportsEBD_.exit unwind label %bb.ac

bb.p:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8yaccCKGz54_10ruff_graph9collector15CollectedImportENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread, %bb.o
  %.sroa.024.1 = phi i1 [ false, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8yaccCKGz54_10ruff_graph9collector15CollectedImportENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread ], [ true, %bb.o ]
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs8yaccCKGz54_10ruff_graph9collector15CollectedImportEEB1s_.exit

bb.q:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.az = load i64, ptr %i.i, align 8, !range !14, !noundef !3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !3 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 288230376151711744
  call void @llvm.assume(i1 %i.bc)
  %.idx = shl nuw nsw i64 %i.bb, 5
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.ay, ptr %i.e, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.ay, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.az, ptr %.sroa.518.0..sroa_idx, align 8
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store ptr %i.bd, ptr %.sroa.619.0..sroa_idx, align 8
  %i.be = icmp eq i64 %i.bb, 0
  br i1 %i.be, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8yaccCKGz54_10ruff_graph9collector15CollectedImportENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8yaccCKGz54_10ruff_graph9collector15CollectedImportENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.lr.ph

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8yaccCKGz54_10ruff_graph9collector15CollectedImportENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.lr.ph: ; preds = %bb.q
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 31
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.855.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8yaccCKGz54_10ruff_graph9collector15CollectedImportENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit

.loopexit.a:                                      ; preds = %bb.aa, %bb.ab
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp:                               ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split.us, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtB8_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8yaccCKGz54_10ruff_graph.exit.thread.i.i.i.fold.split, %.loopexit.a, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit, %.loopexit.a ], [ %lpad.loopexit.us91, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtB8_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8yaccCKGz54_10ruff_graph.exit.thread.i.i.i.fold.split ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8yaccCKGz54_10ruff_graph9collector15CollectedImportENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs8yaccCKGz54_10ruff_graph9collector15CollectedImportEEB1s_.exit unwind label %bb.ac

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8yaccCKGz54_10ruff_graph9collector15CollectedImportENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8yaccCKGz54_10ruff_graph9collector15CollectedImportENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.lr.ph, %bb.z
  %i.bf = phi ptr [ %i.ay, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8yaccCKGz54_10ruff_graph9collector15CollectedImportENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.lr.ph ], [ %i.bo, %bb.z ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  store ptr %i.bg, ptr %.sroa.417.0..sroa_idx, align 8, !alias.scope !499, !noalias !500
  %.sroa.5.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.bf, i64 31
  %.sroa.5.0.copyload52 = load i8, ptr %.sroa.5.0..sroa_idx51, align 1, !noalias !499 ; 2 uses
  %.not44 = icmp eq i8 %.sroa.5.0.copyload52, -1
  br i1 %.not44, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8yaccCKGz54_10ruff_graph9collector15CollectedImportENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread, label %bb.s

bb.s:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8yaccCKGz54_10ruff_graph9collector15CollectedImportENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(31) %i.d, ptr noundef nonnull align 8 dereferenceable(31) %i.bf, i64 31, i1 false)
  store i8 %.sroa.5.0.copyload52, ptr %.sroa.5.0..sroa_idx, align 1
  invoke void @_RNvMNtCs8yaccCKGz54_10ruff_graph8resolverNtB2_8Resolver7resolve(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d)
          to label %bb.x unwind label %.loopexit.split-lp

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8yaccCKGz54_10ruff_graph9collector15CollectedImportENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8yaccCKGz54_10ruff_graph9collector15CollectedImportENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit, %bb.z, %bb.q
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8yaccCKGz54_10ruff_graph9collector15CollectedImportENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs8yaccCKGz54_10ruff_graph9collector15CollectedImportEEB1s_.exit49 unwind label %bb.p

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs8yaccCKGz54_10ruff_graph9collector15CollectedImportEEB1s_.exit49: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8yaccCKGz54_10ruff_graph9collector15CollectedImportENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bi = load i64, ptr %i.j, align 8, !range !7, !alias.scope !501, !noundef !3
  %i.bj = icmp eq i64 %i.bi, -1
  br i1 %i.bj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECs8yaccCKGz54_10ruff_graph.exit, label %bb.t

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs8yaccCKGz54_10ruff_graph9collector15CollectedImportEEB1s_.exit49
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs8yaccCKGz54_10ruff_graph.exit.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs8yaccCKGz54_10ruff_graph.exit.i: ; preds = %bb.t
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECs8yaccCKGz54_10ruff_graph.exit unwind label %bb.l

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECs8yaccCKGz54_10ruff_graph.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs8yaccCKGz54_10ruff_graph9collector15CollectedImportEEB1s_.exit49, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs8yaccCKGz54_10ruff_graph.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsb6FLkjZuKG_18ruff_python_parser6ParsedNtNtCskLngH8kgpZI_15ruff_python_ast9generated3ModEECs8yaccCKGz54_10ruff_graph(ptr noalias noundef align 8 dereferenceable(104) %i.l)
  br label %bb.w

bb.w:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECs8yaccCKGz54_10ruff_graph.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.x:                                             ; preds = %bb.s
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.3.0.copyload.fr = freeze i64 %.sroa.3.0.copyload ; 4 uses
  %.sroa.554.0.copyload = load ptr, ptr %.sroa.554.0..sroa_idx, align 8
  %.sroa.6.0.copyload.fr = freeze ptr %.sroa.554.0.copyload ; 5 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.855.0.copyload = load ptr, ptr %.sroa.855.0..sroa_idx, align 8
  %.sroa.9.0.copyload.fr = freeze ptr %.sroa.855.0.copyload ; 5 uses
  %.not.jt0.i = icmp eq ptr %.sroa.6.0.copyload.fr, null ; 2 uses
  %.not.jt2.i = icmp eq ptr %.sroa.9.0.copyload.fr, null
  br i1 %.not.jt2.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.x
  switch i64 %.sroa.3.0.copyload.fr, label %bb.y [
    i64 -1, label %bb.z
    i64 2, label %bb.z
  ]

bb.y:                                             ; preds = %.split.us
  %12 = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.fr, i64 8
  %13 = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.fr, i64 16
  %14 = icmp ne i64 %.sroa.3.0.copyload.fr, 1
  %brmerge124 = or i1 %.not.jt0.i, %14
  br i1 %brmerge124, label %bb.z, label %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1v_EINtB20_8IntoIterB2j_EENtNtNtB9_6traits8iterator8Iterator4nextCs8yaccCKGz54_10ruff_graph.exit.thread60.us

_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1v_EINtB20_8IntoIterB2j_EENtNtNtB9_6traits8iterator8Iterator4nextCs8yaccCKGz54_10ruff_graph.exit.thread60.us: ; preds = %bb.y
  %15 = load i64, ptr %.sroa.6.0.copyload.fr, align 8, !range !13, !noundef !3
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %bb.z

17:                                               ; preds = %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1v_EINtB20_8IntoIterB2j_EENtNtNtB9_6traits8iterator8Iterator4nextCs8yaccCKGz54_10ruff_graph.exit.thread60.us
  %18 = load ptr, ptr %12, align 8, !nonnull !3, !noundef !3
  %19 = load i64, ptr %13, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB2_10SystemPath11to_path_buf(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %18, i64 noundef %19)
          to label %20 unwind label %.loopexit.split.us

20:                                               ; preds = %17
  %21 = invoke noundef zeroext i1 @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtB7_7set_val9SetValZSTE6insertCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1v_EINtB20_8IntoIterB2j_EENtNtNtB9_6traits8iterator8Iterator4nextCs8yaccCKGz54_10ruff_graph.exit unwind label %.loopexit.split.us ; 0 uses

.loopexit.split.us:                               ; preds = %20, %17
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.split:                                           ; preds = %bb.x
  br i1 %.not.jt0.i, label %.split.split.us.preheader, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtB8_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8yaccCKGz54_10ruff_graph.exit.thread.i.i.i

.split.split.us.preheader:                        ; preds = %.split
  %22 = getelementptr inbounds nuw i8, ptr %.sroa.9.0.copyload.fr, i64 8
  %23 = getelementptr inbounds nuw i8, ptr %.sroa.9.0.copyload.fr, i64 16
  %.not125 = icmp eq i64 %.sroa.3.0.copyload.fr, -1
  br i1 %.not125, label %bb.z, label %switch.early.test

switch.early.test:                                ; preds = %.split.split.us.preheader
  switch i64 %.sroa.6.0.copyload, label %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1v_EINtB20_8IntoIterB2j_EENtNtNtB9_6traits8iterator8Iterator4nextCs8yaccCKGz54_10ruff_graph.exit.thread60.us86 [
    i64 2, label %bb.z
    i64 0, label %bb.z
  ]

_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1v_EINtB20_8IntoIterB2j_EENtNtNtB9_6traits8iterator8Iterator4nextCs8yaccCKGz54_10ruff_graph.exit.thread60.us86: ; preds = %switch.early.test
  %24 = load i64, ptr %.sroa.9.0.copyload.fr, align 8, !range !13, !noundef !3
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %bb.z

26:                                               ; preds = %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1v_EINtB20_8IntoIterB2j_EENtNtNtB9_6traits8iterator8Iterator4nextCs8yaccCKGz54_10ruff_graph.exit.thread60.us86
  %27 = load ptr, ptr %22, align 8, !nonnull !3, !noundef !3
  %28 = load i64, ptr %23, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB2_10SystemPath11to_path_buf(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %27, i64 noundef %28)
          to label %29 unwind label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtB8_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8yaccCKGz54_10ruff_graph.exit.thread.i.i.i.fold.split

29:                                               ; preds = %26
  %30 = invoke noundef zeroext i1 @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtB7_7set_val9SetValZSTE6insertCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1v_EINtB20_8IntoIterB2j_EENtNtNtB9_6traits8iterator8Iterator4nextCs8yaccCKGz54_10ruff_graph.exit unwind label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtB8_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8yaccCKGz54_10ruff_graph.exit.thread.i.i.i.fold.split ; 0 uses

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtB8_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8yaccCKGz54_10ruff_graph.exit.thread.i.i.i.fold.split: ; preds = %29, %26
  %lpad.loopexit.us91 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtB8_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8yaccCKGz54_10ruff_graph.exit.thread.i.i.i: ; preds = %.split, %.backedge
  %.sroa.7.0 = phi i64 [ %spec.store.select.i.i.i11.i, %.backedge ], [ %.sroa.6.0.copyload, %.split ] ; 2 uses
  %.sroa.3.2 = phi i64 [ %i.bm, %.backedge ], [ %.sroa.3.0.copyload.fr, %.split ]
  switch i64 %.sroa.3.2, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtB8_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8yaccCKGz54_10ruff_graph.exit.thread.i.i.preheader.i [
    i64 -1, label %bb.z
    i64 1, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1i_EEINtB5_8FuseImplBY_E4nextCs8yaccCKGz54_10ruff_graph.exit.thread7.i
  ]

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtB8_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8yaccCKGz54_10ruff_graph.exit.thread.i.i.preheader.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtB8_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8yaccCKGz54_10ruff_graph.exit.thread.i.i.i
  %31 = and i64 %.sroa.7.0, 1
  %or.cond = icmp eq i64 %31, 0
  br i1 %or.cond, label %bb.z, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1i_EEINtB5_8FuseImplBY_E4nextCs8yaccCKGz54_10ruff_graph.exit.thread7.i

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1i_EEINtB5_8FuseImplBY_E4nextCs8yaccCKGz54_10ruff_graph.exit.thread7.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtB8_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8yaccCKGz54_10ruff_graph.exit.thread.i.i.preheader.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtB8_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8yaccCKGz54_10ruff_graph.exit.thread.i.i.i
  %.sroa.0.0.i67 = phi ptr [ %.sroa.9.0.copyload.fr, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtB8_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8yaccCKGz54_10ruff_graph.exit.thread.i.i.preheader.i ], [ %.sroa.6.0.copyload.fr, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtB8_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8yaccCKGz54_10ruff_graph.exit.thread.i.i.i ] ; 3 uses
  %i.bm = phi i64 [ 2, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtB8_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8yaccCKGz54_10ruff_graph.exit.thread.i.i.preheader.i ], [ 0, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtB8_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8yaccCKGz54_10ruff_graph.exit.thread.i.i.i ]
  %spec.store.select.i.i.i11.i = phi i64 [ 0, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtB8_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8yaccCKGz54_10ruff_graph.exit.thread.i.i.preheader.i ], [ %.sroa.7.0, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtB8_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8yaccCKGz54_10ruff_graph.exit.thread.i.i.i ]
  %32 = load i64, ptr %.sroa.0.0.i67, align 8, !range !13, !noundef !3
  %.not.i = icmp eq i64 %32, 0
  br i1 %.not.i, label %bb.aa, label %.backedge

.backedge:                                        ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1i_EEINtB5_8FuseImplBY_E4nextCs8yaccCKGz54_10ruff_graph.exit.thread7.i, %_RNvMCs8yaccCKGz54_10ruff_graphNtB2_13ModuleImports6insert.exit
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtB8_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8yaccCKGz54_10ruff_graph.exit.thread.i.i.i

_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1v_EINtB20_8IntoIterB2j_EENtNtNtB9_6traits8iterator8Iterator4nextCs8yaccCKGz54_10ruff_graph.exit: ; preds = %29, %20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.z

bb.z:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtB8_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8yaccCKGz54_10ruff_graph.exit.thread.i.i.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceINtNtB8_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8yaccCKGz54_10ruff_graph.exit.thread.i.i.preheader.i, %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1v_EINtB20_8IntoIterB2j_EENtNtNtB9_6traits8iterator8Iterator4nextCs8yaccCKGz54_10ruff_graph.exit, %.split.split.us.preheader, %switch.early.test, %switch.early.test, %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1v_EINtB20_8IntoIterB2j_EENtNtNtB9_6traits8iterator8Iterator4nextCs8yaccCKGz54_10ruff_graph.exit.thread60.us86, %bb.y, %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1v_EINtB20_8IntoIterB2j_EENtNtNtB9_6traits8iterator8Iterator4nextCs8yaccCKGz54_10ruff_graph.exit.thread60.us, %.split.us, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bn = load ptr, ptr %.sroa.619.0..sroa_idx, align 8, !alias.scope !502, !noalias !500, !nonnull !3, !noundef !3
  %i.bo = load ptr, ptr %.sroa.417.0..sroa_idx, align 8, !alias.scope !502, !noalias !500, !nonnull !3, !noundef !3 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.bn
  br i1 %i.bp, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8yaccCKGz54_10ruff_graph9collector15CollectedImportENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8yaccCKGz54_10ruff_graph9collector15CollectedImportENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit

bb.aa:                                            ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptionRNtNtNtCs56aZGHL6Dc6_7ruff_db5files4path8FilePathEEB1i_EEINtB5_8FuseImplBY_E4nextCs8yaccCKGz54_10ruff_graph.exit.thread7.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i67, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !3, !noundef !3
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i67, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB2_10SystemPath11to_path_buf(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.br, i64 noundef %i.bt)
          to label %bb.ab unwind label %.loopexit.a

bb.ab:                                            ; preds = %bb.aa
  %i.bu = invoke noundef zeroext i1 @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtB7_7set_val9SetValZSTE6insertCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RNvMCs8yaccCKGz54_10ruff_graphNtB2_13ModuleImports6insert.exit unwind label %.loopexit.a ; 0 uses

_RNvMCs8yaccCKGz54_10ruff_graphNtB2_13ModuleImports6insert.exit: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.backedge

bb.ac:                                            ; preds = %bb.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs8yaccCKGz54_10ruff_graph9collector15CollectedImportEEB1s_.exit, %bb.ad, %bb.m, %.body
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs8yaccCKGz54_10ruff_graph13ModuleImportsEBD_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs8yaccCKGz54_10ruff_graph9collector15CollectedImportEEB1s_.exit
  br i1 %.sroa.024.0, label %bb.ad, label %bb.m

bb.ad:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs8yaccCKGz54_10ruff_graph13ModuleImportsEBD_.exit
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs8yaccCKGz54_10ruff_graph9collector15CollectedImportEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.i) #17
          to label %bb.m unwind label %bb.ac

bb.ae:                                            ; preds = %.body
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCs8yaccCKGz54_10ruff_graphNtB2_13ModuleImports6insert(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtB7_7set_val9SetValZSTE6insertCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %1) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapINtNtCscdodAO9FK5_5alloc5boxed3BoxShENtNtCsb9zoKkpXuBA_3zip5types11ZipFileDataE11insert_fullCs8yaccCKGz54_10ruff_graph(ptr dead_on_unwind noalias noundef writable sret([240 x i8]) align 8 captures(none) dereferenceable(240) %0, ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull %2, i64 noundef %3, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(232) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [232 x i8], align 8               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = invoke noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRINtNtCscdodAO9FK5_5alloc5boxed3BoxShEECs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.a, ptr noundef nonnull align 8 dereferenceable(232) %4, i64 232, i1 false)
  call void @_RNvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB4_4CoreINtNtCscdodAO9FK5_5alloc5boxed3BoxShENtNtCsb9zoKkpXuBA_3zip5types11ZipFileDataE11insert_fullCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull sret([240 x i8]) align 8 captures(none) dereferenceable(240) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.e, ptr noalias noundef nonnull %2, i64 noundef %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb9zoKkpXuBA_3zip5types11ZipFileDataECs8yaccCKGz54_10ruff_graph(ptr noalias noundef align 8 dereferenceable(232) %4) #17
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

.critedge:                                        ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %3, 0
  br i1 %i.h, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3, i64 noundef 1) #16
  br label %.critedge
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNvNtCs8yaccCKGz54_10ruff_graph8settingss0_1__NtB4_9DirectionNtCscuBBDlOF0VN_8schemars10JsonSchema11json_schema(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(200) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  %.sroa.45 = alloca [31 x i8], align 1           ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr null, ptr %i.j, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 5, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.x, %bb.ab, %bb.c
  %.pn10 = phi { ptr, i32 } [ %i.k, %bb.c ], [ %.pn, %bb.ab ], [ %i.ap, %bb.x ]
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscvBHLZPbXnS_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBG_5value5ValueEECs8yaccCKGz54_10ruff_graph.exit unwind label %bb.aa

bb.c:                                             ; preds = %bb.z, %bb.e, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.c, align 8, !range !4, !noundef !3
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !511, !noundef !3 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.q = load i64, ptr %i.p, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #19
          to label %bb.ac unwind label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.s = icmp samesign ugt i64 %i.o, 4
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.r, ptr noundef nonnull align 1 dereferenceable(5) @3, i64 5, i1 false)
  store i64 %i.o, ptr %i.h, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.r, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 5, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  store i64 0, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvNtCscuBBDlOF0VN_8schemars8__private21new_unit_enum_variant(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 12)
          to label %bb.h unwind label %bb.g

.body:                                            ; preds = %bb.u, %bb.q, %bb.m, %bb.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.aa, %bb.m ], [ %i.w, %bb.i ], [ %i.v, %bb.g ], [ %i.aj, %bb.u ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCscvBHLZPbXnS_10serde_json5value5ValueEECs8yaccCKGz54_10ruff_graph(ptr noalias noundef align 8 dereferenceable(24) %i.f) #17
          to label %bb.ab unwind label %bb.aa

bb.g:                                             ; preds = %bb.o, %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.f
  invoke void @_RINvNtCscuBBDlOF0VN_8schemars8__private36insert_metadata_property_if_nonemptyReECs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 5, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscvBHLZPbXnS_10serde_json5value5ValueECs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.body unwind label %bb.aa

bb.j:                                             ; preds = %bb.h
  invoke void @_RINvNtCscuBBDlOF0VN_8schemars8__private36insert_metadata_property_if_nonemptyReECs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 84)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.x = load i64, ptr %i.u, align 8, !alias.scope !512, !noalias !513, !noundef !3 ; 3 uses
  %i.y = load i64, ptr %i.f, align 8, !range !14, !alias.scope !512, !noalias !513, !noundef !3
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCscvBHLZPbXnS_10serde_json5value5ValueE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.o unwind label %bb.m, !noalias !513

bb.m:                                             ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscvBHLZPbXnS_10serde_json5value5ValueECs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #17
          to label %.body unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.o:                                             ; preds = %bb.l, %bb.k
  %i.ac = load ptr, ptr %i.t, align 8, !alias.scope !512, !noalias !513, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %i.x
end_hunk_0
