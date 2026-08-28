Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.03?download=true
inline.NumInlined: 204
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1c_2id2IdENCINvMB8_SB17_16sort_unstable_byNCNvMs1_B1a_NtB1a_11IdentityMap5drain0E0EB1c_:bb.a
  br i1 %i.bn, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1C_2id2IdENCINvMB8_SB1x_16sort_unstable_byNCNvMs1_B1A_NtB1A_11IdentityMap5drain0E0EB1C_.exit.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1E_2id2IdENCINvMBa_SB1z_16sort_unstable_byNCNvMs1_B1C_NtB1C_11IdentityMap5drain0E0E0B1E_.exit11.i.i, %bb.i
  %.sroa.11.035.i.i = phi ptr [ %.sroa.11.0.i.i, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1E_2id2IdENCINvMBa_SB1z_16sort_unstable_byNCNvMs1_B1C_NtB1C_11IdentityMap5drain0E0E0B1E_.exit11.i.i ], [ %.sroa.11.032.i.i, %bb.i ] ; 4 uses
  %.sroa.012.034.i.i = phi ptr [ %.sroa.11.035.i.i, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1E_2id2IdENCINvMBa_SB1z_16sort_unstable_byNCNvMs1_B1C_NtB1C_11IdentityMap5drain0E0E0B1E_.exit11.i.i ], [ %i.bk, %bb.i ] ; 4 uses
  %.sroa.19.033.i.i = phi i64 [ %i.cm, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1E_2id2IdENCINvMBa_SB1z_16sort_unstable_byNCNvMs1_B1C_NtB1C_11IdentityMap5drain0E0E0B1E_.exit11.i.i ], [ 0, %bb.i ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i.i, i64 32
  %i.ca = load i32, ptr %i.bz, align 8, !alias.scope !630, !noalias !635, !noundef !16 ; 2 uses
  %i.cb = icmp eq i32 %i.ca, %.pre.i.i
  %i.cc = icmp ult i32 %i.ca, %.pre.i.i
  br i1 %i.cb, label %bb.l, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1E_2id2IdENCINvMBa_SB1z_16sort_unstable_byNCNvMs1_B1C_NtB1C_11IdentityMap5drain0E0E0B1E_.exit11.i.i

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i.i, i64 44
  %i.ce = load i32, ptr %i.cd, align 4, !alias.scope !630, !noalias !635, !noundef !16
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i.i, i64 40
  %i.cg = load i32, ptr %i.cf, align 8, !range !53, !alias.scope !630, !noalias !635, !noundef !16 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, %.pre47.i.i
  %i.ci = icmp ult i32 %i.cg, %.pre47.i.i
  %i.cj = icmp ult i32 %i.ce, %.pre45.i.i
  %spec.select.i.i10.i.i = select i1 %i.ch, i1 %i.cj, i1 %i.ci
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1E_2id2IdENCINvMBa_SB1z_16sort_unstable_byNCNvMs1_B1C_NtB1C_11IdentityMap5drain0E0E0B1E_.exit11.i.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1E_2id2IdENCINvMBa_SB1z_16sort_unstable_byNCNvMs1_B1C_NtB1C_11IdentityMap5drain0E0E0B1E_.exit11.i.i: ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.0.0.i.i.i9.i.i = phi i1 [ %i.cc, %.lr.ph.i.i ], [ %spec.select.i.i10.i.i, %bb.l ]
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.sroa.19.033.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.034.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 24, i1 false), !alias.scope !628, !noalias !640
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.035.i.i, i64 24, i1 false), !alias.scope !628, !noalias !640
  %i.cl = zext i1 %.sroa.0.0.i.i.i9.i.i to i64
  %i.cm = add i64 %.sroa.19.033.i.i, %i.cl        ; 2 uses
  %.sroa.11.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.035.i.i, i64 24 ; 3 uses
  %i.cn = icmp ult ptr %.sroa.11.0.i.i, %i.bm
  br i1 %i.cn, label %.lr.ph.i.i, label %.preheader.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1C_2id2IdENCINvMB8_SB1x_16sort_unstable_byNCNvMs1_B1A_NtB1A_11IdentityMap5drain0E0EB1C_.exit.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !616
  %.not7.i = icmp ult i64 %i.by, %.sroa.15.091139
  br i1 %.not7.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBz_2id2IdE12split_at_mutBz_.exit, label %bb.m

bb.m:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1C_2id2IdENCINvMB8_SB1x_16sort_unstable_byNCNvMs1_B1A_NtB1A_11IdentityMap5drain0E0EB1C_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBz_2id2IdE12split_at_mutBz_.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1C_2id2IdENCINvMB8_SB1x_16sort_unstable_byNCNvMs1_B1A_NtB1A_11IdentityMap5drain0E0EB1C_.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBz_2id2IdE14swap_uncheckedBz_(ptr noalias noundef nonnull align 8 %.sroa.0.092138, i64 noundef range(i64 33, 384307168202282326) %.sroa.15.091139, i64 noundef 0, i64 noundef %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.092138, i64 %i.by ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = xor i64 %i.by, -1
  %i.cr = add i64 %.sroa.15.091139, %i.cq
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1c_2id2IdENCINvMB8_SB17_16sort_unstable_byNCNvMs1_B1a_NtB1a_11IdentityMap5drain0E0EB1c_(ptr noalias noundef nonnull align 8 %.sroa.0.092138, i64 noundef %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.sroa.023.090140, i32 noundef %i.f, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %.backedge

bb.n:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1a_2id2IdENCINvMB8_SB15_16sort_unstable_byNCNvMs1_B18_NtB18_11IdentityMap5drain0E0EB1a_.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.092138, i64 %i.bi ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.023.090140, i64 8
  %i.cu = load i32, ptr %i.ct, align 8, !alias.scope !651, !noalias !652, !noundef !16 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cw = load i32, ptr %i.cv, align 8, !alias.scope !652, !noalias !651, !noundef !16 ; 2 uses
  %i.cx = icmp eq i32 %i.cu, %i.cw
  br i1 %i.cx, label %.split, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit

.split:                                           ; preds = %bb.n
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 20
  %i.cz = load i32, ptr %i.cy, align 4, !alias.scope !652, !noalias !651, !noundef !16
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.023.090140, i64 20
  %i.db = load i32, ptr %i.da, align 4, !alias.scope !651, !noalias !652, !noundef !16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.dd = load i32, ptr %i.dc, align 8, !range !53, !alias.scope !652, !noalias !651, !noundef !16 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.023.090140, i64 16
  %i.df = load i32, ptr %i.de, align 8, !range !53, !alias.scope !651, !noalias !652, !noundef !16 ; 2 uses
  %i.dg = icmp eq i32 %i.df, %i.dd
  %i.dh = icmp ult i32 %i.df, %i.dd
  %i.di = icmp ult i32 %i.db, %i.cz
  %spec.select.i = select i1 %i.dg, i1 %i.di, i1 %i.dh
  br i1 %spec.select.i, label %bb.i, label %bb.o

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit: ; preds = %bb.n
  %i.dj = icmp ult i32 %i.cu, %i.cw
  br i1 %i.dj, label %bb.i, label %bb.o

bb.o:                                             ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit, %.split
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBz_2id2IdE14swap_uncheckedBz_(ptr noalias noundef nonnull align 8 %.sroa.0.092138, i64 noundef range(i64 33, 384307168202282326) %.sroa.15.091139, i64 noundef 0, i64 noundef range(i64 0, 384307168202282325) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.092138, i64 24 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !661
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false), !noalias !659
  %i.dl = mul nuw nsw i64 %.sroa.15.091139, 24
  %i.dm = getelementptr i8, ptr %.sroa.0.092138, i64 %i.dl ; 2 uses
  %.sroa.11.032.i.i41 = getelementptr inbounds nuw i8, ptr %.sroa.0.092138, i64 48
  %.phi.trans.insert.i.i42 = getelementptr inbounds nuw i8, ptr %.sroa.0.092138, i64 8
  %.pre.i.i43 = load i32, ptr %.phi.trans.insert.i.i42, align 8, !alias.scope !662, !noalias !656 ; 4 uses
  %.phi.trans.insert44.i.i44 = getelementptr inbounds nuw i8, ptr %.sroa.0.092138, i64 20
  %.pre45.i.i45 = load i32, ptr %.phi.trans.insert44.i.i44, align 4, !alias.scope !662, !noalias !656 ; 2 uses
  %.phi.trans.insert46.i.i46 = getelementptr inbounds nuw i8, ptr %.sroa.0.092138, i64 16
  %.pre47.i.i47 = load i32, ptr %.phi.trans.insert46.i.i46, align 8, !range !53, !alias.scope !662, !noalias !656 ; 4 uses
  br label %.lr.ph.i.i48

.preheader.i.i53:                                 ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1E_2id2IdENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_B1C_NtB1C_11IdentityMap5drain0E0E0E0B1E_.exit11.i.i, %bb.q
  %.sroa.19.1.i.i54 = phi i64 [ %i.dz, %bb.q ], [ %i.eo, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1E_2id2IdENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_B1C_NtB1C_11IdentityMap5drain0E0E0E0B1E_.exit11.i.i ] ; 2 uses
  %.sroa.11.1.i.i55 = phi ptr [ %.sroa.11.1.sroa.gep20.i.i60, %bb.q ], [ %.sroa.11.0.i.i52, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1E_2id2IdENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_B1C_NtB1C_11IdentityMap5drain0E0E0E0B1E_.exit11.i.i ] ; 7 uses
  %.sroa.012.1.i.i56 = phi ptr [ %.sroa.11.1.i.i55, %bb.q ], [ %.sroa.11.035.i.i49, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1E_2id2IdENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_B1C_NtB1C_11IdentityMap5drain0E0E0E0B1E_.exit11.i.i ]
  %i.dn = icmp eq ptr %.sroa.11.1.i.i55, %i.dm    ; 5 uses
  %.sroa.01.0.i.i57 = select i1 %i.dn, ptr %i.a, ptr %.sroa.11.1.i.i55
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i58.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.dn, ptr %i.a, ptr %.sroa.11.1.i.i55
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i58.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i58.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %i.do = load i32, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i58.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !alias.scope !663, !noalias !670, !noundef !16 ; 2 uses
  %i.dp = icmp eq i32 %.pre.i.i43, %i.do
  %i.dq = icmp ult i32 %.pre.i.i43, %i.do
  br i1 %i.dp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.preheader.i.i53
  %.sroa.01.0.sroa.sel24.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i62.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.dn, ptr %i.a, ptr %.sroa.11.1.i.i55
  %.sroa.01.0.sroa.sel24.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i62.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.01.0.sroa.sel24.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i62.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 20
  %i.dr = load i32, ptr %.sroa.01.0.sroa.sel24.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i62.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !alias.scope !663, !noalias !670, !noundef !16
  %.sroa.01.0.sroa.sel27.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i64.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.dn, ptr %i.a, ptr %.sroa.11.1.i.i55
  %.sroa.01.0.sroa.sel27.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i64.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.01.0.sroa.sel27.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i64.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16
  %i.ds = load i32, ptr %.sroa.01.0.sroa.sel27.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i64.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !range !53, !alias.scope !663, !noalias !670, !noundef !16 ; 2 uses
  %i.dt = icmp eq i32 %.pre47.i.i47, %i.ds
  %i.du = icmp ult i32 %.pre47.i.i47, %i.ds
  %i.dv = icmp ult i32 %.pre45.i.i45, %i.dr
  %spec.select.i.i.i.i.i = select i1 %i.dt, i1 %i.dv, i1 %i.du
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.preheader.i.i53
  %.sroa.0.0.i.i.i.i.i.i = phi i1 [ %i.dq, %.preheader.i.i53 ], [ %spec.select.i.i.i.i.i, %bb.p ]
  %i.dw = xor i1 %.sroa.0.0.i.i.i.i.i.i, true
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %.sroa.19.1.i.i54 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.1.i.i56, ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i64 24, i1 false), !alias.scope !676, !noalias !677
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.0.i.i57, i64 24, i1 false), !noalias !677
  %i.dy = zext i1 %i.dw to i64
  %i.dz = add i64 %.sroa.19.1.i.i54, %i.dy        ; 4 uses
  %.sroa.11.1.sroa.gep20.i.i60 = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i55, i64 24
  br i1 %i.dn, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1C_2id2IdENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs1_B1A_NtB1A_11IdentityMap5drain0E0E0EB1C_.exit.i, label %.preheader.i.i53

.lr.ph.i.i48:                                     ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1E_2id2IdENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_B1C_NtB1C_11IdentityMap5drain0E0E0E0B1E_.exit11.i.i, %bb.o
  %.sroa.11.035.i.i49 = phi ptr [ %.sroa.11.0.i.i52, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1E_2id2IdENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_B1C_NtB1C_11IdentityMap5drain0E0E0E0B1E_.exit11.i.i ], [ %.sroa.11.032.i.i41, %bb.o ] ; 4 uses
  %.sroa.012.034.i.i50 = phi ptr [ %.sroa.11.035.i.i49, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1E_2id2IdENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_B1C_NtB1C_11IdentityMap5drain0E0E0E0B1E_.exit11.i.i ], [ %i.dk, %bb.o ] ; 4 uses
  %.sroa.19.033.i.i51 = phi i64 [ %i.eo, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1E_2id2IdENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_B1C_NtB1C_11IdentityMap5drain0E0E0E0B1E_.exit11.i.i ], [ 0, %bb.o ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i.i50, i64 32
  %i.eb = load i32, ptr %i.ea, align 8, !alias.scope !678, !noalias !685, !noundef !16 ; 2 uses
  %i.ec = icmp eq i32 %.pre.i.i43, %i.eb
  %i.ed = icmp ult i32 %.pre.i.i43, %i.eb
  br i1 %i.ec, label %bb.r, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1E_2id2IdENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_B1C_NtB1C_11IdentityMap5drain0E0E0E0B1E_.exit11.i.i

bb.r:                                             ; preds = %.lr.ph.i.i48
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i.i50, i64 44
  %i.ef = load i32, ptr %i.ee, align 4, !alias.scope !678, !noalias !685, !noundef !16
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i.i50, i64 40
  %i.eh = load i32, ptr %i.eg, align 8, !range !53, !alias.scope !678, !noalias !685, !noundef !16 ; 2 uses
  %i.ei = icmp eq i32 %.pre47.i.i47, %i.eh
  %i.ej = icmp ult i32 %.pre47.i.i47, %i.eh
  %i.ek = icmp ult i32 %.pre45.i.i45, %i.ef
  %spec.select.i.i.i10.i.i = select i1 %i.ei, i1 %i.ek, i1 %i.ej
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1E_2id2IdENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_B1C_NtB1C_11IdentityMap5drain0E0E0E0B1E_.exit11.i.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1E_2id2IdENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_B1C_NtB1C_11IdentityMap5drain0E0E0E0B1E_.exit11.i.i: ; preds = %bb.r, %.lr.ph.i.i48
  %.sroa.0.0.i.i.i.i9.i.i = phi i1 [ %i.ed, %.lr.ph.i.i48 ], [ %spec.select.i.i.i10.i.i, %bb.r ]
  %i.el = xor i1 %.sroa.0.0.i.i.i.i9.i.i, true
  %i.em = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %.sroa.19.033.i.i51 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.034.i.i50, ptr noundef nonnull align 8 dereferenceable(24) %i.em, i64 24, i1 false), !alias.scope !676, !noalias !691
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.em, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.035.i.i49, i64 24, i1 false), !alias.scope !676, !noalias !691
  %i.en = zext i1 %i.el to i64
  %i.eo = add i64 %.sroa.19.033.i.i51, %i.en      ; 2 uses
  %.sroa.11.0.i.i52 = getelementptr inbounds nuw i8, ptr %.sroa.11.035.i.i49, i64 24 ; 3 uses
  %i.ep = icmp ult ptr %.sroa.11.0.i.i52, %i.dm
  br i1 %i.ep, label %.lr.ph.i.i48, label %.preheader.i.i53

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1C_2id2IdENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs1_B1A_NtB1A_11IdentityMap5drain0E0E0EB1C_.exit.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !661
  %.not7.i61 = icmp ult i64 %i.dz, %.sroa.15.091139
  br i1 %.not7.i61, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1C_2id2IdENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs1_B1A_NtB1A_11IdentityMap5drain0E0E0EB1C_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1C_2id2IdENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs1_B1A_NtB1A_11IdentityMap5drain0E0E0EB1C_.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBz_2id2IdE14swap_uncheckedBz_(ptr noalias noundef nonnull align 8 %.sroa.0.092138, i64 noundef range(i64 33, 384307168202282326) %.sroa.15.091139, i64 noundef 0, i64 noundef %i.dz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  %i.eq = add nuw nsw i64 %i.dz, 1                ; 2 uses
  %i.er = sub nuw i64 %.sroa.15.091139, %i.eq
  %i.es = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.092138, i64 %i.eq
  br label %.backedge

.backedge:                                        ; preds = %bb.t, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBz_2id2IdE12split_at_mutBz_.exit
  %.sroa.023.0.be = phi ptr [ %i.co, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBz_2id2IdE12split_at_mutBz_.exit ], [ null, %bb.t ]
  %.sroa.15.0.be = phi i64 [ %i.cr, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBz_2id2IdE12split_at_mutBz_.exit ], [ %i.er, %bb.t ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.cp, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBz_2id2IdE12split_at_mutBz_.exit ], [ %i.es, %bb.t ] ; 3 uses
  %i.et = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.et, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(8) %2, i32 noundef %3, ptr noalias noundef nonnull %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %5 = alloca [8 x i8], align 8                   ; 4 uses
  %6 = alloca [8 x i8], align 8                   ; 4 uses
  %i.a = alloca [256 x i8], align 8               ; 5 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = icmp eq i32 %3, 0
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph154

.lr.ph:                                           ; preds = %.backedge
  %i.d = icmp eq i32 %i.hg, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph154

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 8 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  %i.e = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.e, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_networkjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !692
  %i.f = lshr i64 %.sroa.15.0.lcssa, 1            ; 4 uses
  %i.g = icmp samesign ult i64 %.sroa.15.0.lcssa, 18 ; 2 uses
  %..i = select i1 %i.g, i64 %.sroa.15.0.lcssa, i64 %i.f
  %i.h = getelementptr [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.f ; 3 uses
  %i.i = sub nuw nsw i64 %.sroa.15.0.lcssa, %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %bb.b
  %.sroa.8.0.i = phi i64 [ %..i, %bb.b ], [ %i.i, %bb.j ] ; 5 uses
  %.sroa.02.0.i = phi ptr [ %.sroa.0.0.lcssa, %bb.b ], [ %i.h, %bb.j ] ; 31 uses
  %i.j = icmp ugt i64 %.sroa.8.0.i, 12
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp samesign ugt i64 %.sroa.8.0.i, 8
  br i1 %i.k, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 96 ; 2 uses
  %.val.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !695, !noalias !700, !noundef !16 ; 2 uses
  %.val1.i.i.i = load i64, ptr %.sroa.02.0.i, align 8, !alias.scope !702, !noalias !703, !noundef !16 ; 2 uses
  %i.m = tail call i64 @llvm.umax.i64(i64 %.val.i.i.i, i64 %.val1.i.i.i) ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.val.i.i.i, i64 %.val1.i.i.i) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 80 ; 2 uses
  %.val.i1.i.i = load i64, ptr %i.p, align 8, !alias.scope !704, !noalias !707, !noundef !16 ; 2 uses
  %.val1.i2.i.i = load i64, ptr %i.o, align 8, !alias.scope !709, !noalias !710, !noundef !16 ; 2 uses
  %i.q = tail call i64 @llvm.umax.i64(i64 %.val.i1.i.i, i64 %.val1.i2.i.i) ; 2 uses
  %i.r = tail call i64 @llvm.umin.i64(i64 %.val.i1.i.i, i64 %.val1.i2.i.i) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 72 ; 2 uses
  %.val.i3.i.i = load i64, ptr %i.t, align 8, !alias.scope !711, !noalias !714, !noundef !16 ; 2 uses
  %.val1.i4.i.i = load i64, ptr %i.s, align 8, !alias.scope !716, !noalias !717, !noundef !16 ; 2 uses
  %i.u = tail call i64 @llvm.umax.i64(i64 %.val.i3.i.i, i64 %.val1.i4.i.i) ; 2 uses
  %i.v = tail call i64 @llvm.umin.i64(i64 %.val.i3.i.i, i64 %.val1.i4.i.i) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 56 ; 2 uses
  %.val.i5.i.i = load i64, ptr %i.x, align 8, !alias.scope !718, !noalias !721, !noundef !16 ; 2 uses
  %.val1.i6.i.i = load i64, ptr %i.w, align 8, !alias.scope !723, !noalias !724, !noundef !16 ; 2 uses
  %i.y = tail call i64 @llvm.umax.i64(i64 %.val.i5.i.i, i64 %.val1.i6.i.i) ; 2 uses
  %i.z = tail call i64 @llvm.umin.i64(i64 %.val.i5.i.i, i64 %.val1.i6.i.i) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 40 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 88 ; 2 uses
  %.val.i7.i.i = load i64, ptr %i.ab, align 8, !alias.scope !725, !noalias !728, !noundef !16 ; 2 uses
  %.val1.i8.i.i = load i64, ptr %i.aa, align 8, !alias.scope !730, !noalias !731, !noundef !16 ; 2 uses
  %i.ac = tail call i64 @llvm.umax.i64(i64 %.val.i7.i.i, i64 %.val1.i8.i.i) ; 2 uses
  %i.ad = tail call i64 @llvm.umin.i64(i64 %.val.i7.i.i, i64 %.val1.i8.i.i) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 48 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 64 ; 2 uses
  %.val.i9.i.i = load i64, ptr %i.af, align 8, !alias.scope !732, !noalias !735, !noundef !16 ; 2 uses
  %.val1.i10.i.i = load i64, ptr %i.ae, align 8, !alias.scope !737, !noalias !738, !noundef !16 ; 2 uses
  %i.ag = tail call i64 @llvm.umax.i64(i64 %.val.i9.i.i, i64 %.val1.i10.i.i) ; 2 uses
  %i.ah = tail call i64 @llvm.umin.i64(i64 %.val.i9.i.i, i64 %.val1.i10.i.i) ; 2 uses
  %i.ai = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.r) ; 2 uses
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.r) ; 2 uses
  %i.ak = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %i.v) ; 2 uses
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.v) ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 32 ; 2 uses
  %.val1.i16.i.i = load i64, ptr %i.am, align 8, !alias.scope !739, !noalias !742, !noundef !16 ; 2 uses
  %i.an = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %.val1.i16.i.i) ; 2 uses
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %.val1.i16.i.i) ; 2 uses
  %i.ap = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.y) ; 2 uses
  %i.aq = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.y) ; 2 uses
  %i.ar = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %i.ag) ; 2 uses
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.ag) ; 2 uses
  %i.at = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.n) ; 2 uses
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 %i.n) ; 2 uses
  %i.av = tail call i64 @llvm.umax.i64(i64 %i.al, i64 %i.aj) ; 2 uses
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.al, i64 %i.aj) ; 2 uses
  %i.ax = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 %i.ak) ; 2 uses
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 %i.ak) ; 2 uses
  %i.az = tail call i64 @llvm.umax.i64(i64 %i.as, i64 %i.aq) ; 2 uses
  %i.ba = tail call i64 @llvm.umin.i64(i64 %i.as, i64 %i.aq) ; 2 uses
  %i.bb = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.ap) ; 2 uses
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 %i.ap) ; 2 uses
  %i.bd = tail call i64 @llvm.umax.i64(i64 %i.m, i64 %i.an) ; 2 uses
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.an) ; 2 uses
  %i.bf = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.at) ; 2 uses
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 %i.at) ; 2 uses
  %i.bh = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %i.ad) ; 2 uses
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 %i.ad) ; 2 uses
  %i.bj = tail call i64 @llvm.umax.i64(i64 %i.be, i64 %i.az) ; 2 uses
  %i.bk = tail call i64 @llvm.umin.i64(i64 %i.be, i64 %i.az) ; 2 uses
  %i.bl = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 %i.bb)
  %i.bm = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 %i.bb) ; 2 uses
  store i64 %i.bl, ptr %i.l, align 8, !alias.scope !744
  %i.bn = tail call i64 @llvm.umax.i64(i64 %i.bi, i64 %i.au) ; 2 uses
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 %i.au) ; 2 uses
  %i.bp = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 %i.ay) ; 2 uses
  %i.bq = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 %i.ay) ; 2 uses
  %i.br = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.bg) ; 2 uses
  %i.bs = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 %i.bg) ; 2 uses
  %i.bt = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 %i.bf) ; 2 uses
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 %i.bf) ; 2 uses
  %i.bv = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 %i.bh) ; 2 uses
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bh) ; 2 uses
  %i.bx = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 %i.bo) ; 2 uses
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.bo)
  store i64 %i.by, ptr %.sroa.02.0.i, align 8, !alias.scope !744
  %i.bz = tail call i64 @llvm.umax.i64(i64 %i.bn, i64 %i.av) ; 2 uses
  %i.ca = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 %i.av) ; 2 uses
  %i.cb = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 %i.bu) ; 2 uses
  %i.cc = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 %i.bu) ; 2 uses
  %i.cd = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 %i.br) ; 2 uses
  %i.ce = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 %i.br) ; 2 uses
  %i.cf = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bv)
  %i.cg = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bv) ; 2 uses
  store i64 %i.cf, ptr %i.ab, align 8, !alias.scope !744
  %i.ch = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 %i.bx) ; 2 uses
  %i.ci = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 %i.bx) ; 2 uses
  %i.cj = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 %i.ca) ; 2 uses
  %i.ck = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 %i.ca) ; 2 uses
  %i.cl = tail call i64 @llvm.umax.i64(i64 %i.cc, i64 %i.bz) ; 2 uses
  %i.cm = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 %i.bz) ; 2 uses
  %i.cn = tail call i64 @llvm.umax.i64(i64 %i.cg, i64 %i.cb)
  %i.co = tail call i64 @llvm.umin.i64(i64 %i.cg, i64 %i.cb) ; 2 uses
  store i64 %i.cn, ptr %i.p, align 8, !alias.scope !744
  %i.cp = tail call i64 @llvm.umax.i64(i64 %i.ck, i64 %i.ci) ; 2 uses
  %i.cq = tail call i64 @llvm.umin.i64(i64 %i.ck, i64 %i.ci)
  store i64 %i.cq, ptr %i.o, align 8, !alias.scope !744
  %i.cr = tail call i64 @llvm.umax.i64(i64 %i.cj, i64 %i.ch) ; 2 uses
  %i.cs = tail call i64 @llvm.umin.i64(i64 %i.cj, i64 %i.ch) ; 2 uses
  %i.ct = tail call i64 @llvm.umax.i64(i64 %i.ce, i64 %i.cm) ; 2 uses
  %i.cu = tail call i64 @llvm.umin.i64(i64 %i.ce, i64 %i.cm) ; 2 uses
  %i.cv = tail call i64 @llvm.umax.i64(i64 %i.cd, i64 %i.cl) ; 2 uses
  %i.cw = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 %i.cl) ; 2 uses
  %i.cx = tail call i64 @llvm.umax.i64(i64 %i.cs, i64 %i.cp) ; 2 uses
  %i.cy = tail call i64 @llvm.umin.i64(i64 %i.cs, i64 %i.cp)
  store i64 %i.cy, ptr %i.s, align 8, !alias.scope !744
  %i.cz = tail call i64 @llvm.umax.i64(i64 %i.cu, i64 %i.cr) ; 2 uses
  %i.da = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 %i.cr) ; 2 uses
  %i.db = tail call i64 @llvm.umax.i64(i64 %i.ct, i64 %i.cw)
  %i.dc = tail call i64 @llvm.umin.i64(i64 %i.ct, i64 %i.cw) ; 2 uses
  store i64 %i.db, ptr %i.x, align 8, !alias.scope !744
  %i.dd = tail call i64 @llvm.umax.i64(i64 %i.co, i64 %i.cv)
  %i.de = tail call i64 @llvm.umin.i64(i64 %i.co, i64 %i.cv)
  store i64 %i.de, ptr %i.af, align 8, !alias.scope !744
  store i64 %i.dd, ptr %i.t, align 8, !alias.scope !744
  %i.df = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cx)
  %i.dg = tail call i64 @llvm.umin.i64(i64 %i.da, i64 %i.cx)
  store i64 %i.dg, ptr %i.w, align 8, !alias.scope !744
  store i64 %i.df, ptr %i.am, align 8, !alias.scope !744
  %i.dh = tail call i64 @llvm.umax.i64(i64 %i.dc, i64 %i.cz)
  %i.di = tail call i64 @llvm.umin.i64(i64 %i.dc, i64 %i.cz)
  store i64 %i.di, ptr %i.aa, align 8, !alias.scope !744
  store i64 %i.dh, ptr %i.ae, align 8, !alias.scope !744
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 24 ; 2 uses
  %.val.i.i14.i = load i64, ptr %i.dj, align 8, !alias.scope !745, !noalias !750, !noundef !16 ; 2 uses
  %.val1.i.i15.i = load i64, ptr %.sroa.02.0.i, align 8, !alias.scope !752, !noalias !753, !noundef !16 ; 2 uses
  %i.dk = tail call i64 @llvm.umax.i64(i64 %.val.i.i14.i, i64 %.val1.i.i15.i) ; 2 uses
  %i.dl = tail call i64 @llvm.umin.i64(i64 %.val.i.i14.i, i64 %.val1.i.i15.i) ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 56 ; 2 uses
  %.val.i1.i16.i = load i64, ptr %i.dn, align 8, !alias.scope !754, !noalias !757, !noundef !16 ; 2 uses
  %.val1.i2.i17.i = load i64, ptr %i.dm, align 8, !alias.scope !759, !noalias !760, !noundef !16 ; 2 uses
  %i.do = tail call i64 @llvm.umax.i64(i64 %.val.i1.i16.i, i64 %.val1.i2.i17.i) ; 2 uses
  %i.dp = tail call i64 @llvm.umin.i64(i64 %.val.i1.i16.i, i64 %.val1.i2.i17.i) ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 16 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 40 ; 2 uses
  %.val.i3.i18.i = load i64, ptr %i.dr, align 8, !alias.scope !761, !noalias !764, !noundef !16 ; 2 uses
  %.val1.i4.i19.i = load i64, ptr %i.dq, align 8, !alias.scope !766, !noalias !767, !noundef !16 ; 2 uses
  %i.ds = tail call i64 @llvm.umax.i64(i64 %.val.i3.i18.i, i64 %.val1.i4.i19.i) ; 2 uses
  %i.dt = tail call i64 @llvm.umin.i64(i64 %.val.i3.i18.i, i64 %.val1.i4.i19.i) ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 32 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 64 ; 2 uses
  %.val.i5.i20.i = load i64, ptr %i.dv, align 8, !alias.scope !768, !noalias !771, !noundef !16 ; 2 uses
  %.val1.i6.i21.i = load i64, ptr %i.du, align 8, !alias.scope !773, !noalias !774, !noundef !16 ; 2 uses
  %i.dw = tail call i64 @llvm.umax.i64(i64 %.val.i5.i20.i, i64 %.val1.i6.i21.i) ; 2 uses
  %i.dx = tail call i64 @llvm.umin.i64(i64 %.val.i5.i20.i, i64 %.val1.i6.i21.i) ; 2 uses
  %i.dy = tail call i64 @llvm.umax.i64(i64 %i.do, i64 %i.dl) ; 2 uses
  %i.dz = tail call i64 @llvm.umin.i64(i64 %i.do, i64 %i.dl) ; 2 uses
  %i.ea = tail call i64 @llvm.umax.i64(i64 %i.dx, i64 %i.dt) ; 2 uses
  %i.eb = tail call i64 @llvm.umin.i64(i64 %i.dx, i64 %i.dt) ; 2 uses
  %i.ec = tail call i64 @llvm.umax.i64(i64 %i.dw, i64 %i.dk) ; 2 uses
  %i.ed = tail call i64 @llvm.umin.i64(i64 %i.dw, i64 %i.dk) ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 48 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa:bb.a
  %i.fo = tail call i64 @llvm.umin.i64(i64 %i.fi, i64 %i.ff)
  store i64 %i.fo, ptr %i.dr, align 8, !alias.scope !780
  store i64 %i.fn, ptr %i.ee, align 8, !alias.scope !780
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.01.0.i = phi i64 [ 13, %bb.e ], [ 9, %bb.f ], [ 1, %bb.d ] ; 3 uses
  %i.fp = add nsw i64 %.sroa.01.0.i, -1
  %or.cond.not.i.i = icmp ult i64 %i.fp, %.sroa.8.0.i
  br i1 %or.cond.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.02.0.i, i64 %.sroa.8.0.i
  %.not4.i.i = icmp samesign eq i64 %.sroa.01.0.i, %.sroa.8.0.i
  br i1 %.not4.i.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.i
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.02.0.i, i64 %.sroa.01.0.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.fy, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i.i ], [ %i.fr, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.fs = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8 ; 3 uses
  %.val9.i.i.i = load i64, ptr %.sroa.0.05.i.i, align 8, !alias.scope !781, !noalias !786, !noundef !16 ; 3 uses
  %.val10.i.i.i = load i64, ptr %i.fs, align 8, !alias.scope !788, !noalias !789, !noundef !16 ; 2 uses
  %i.ft = icmp ult i64 %.val9.i.i.i, %.val10.i.i.i
  br i1 %i.ft, label %.preheader.i.i.preheader, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i.i

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i
  store i64 %.val10.i.i.i, ptr %.sroa.0.05.i.i, align 8, !alias.scope !790
  %i.fu = icmp eq ptr %i.fs, %.sroa.02.0.i
  br i1 %i.fu, label %._crit_edge158, label %.lr.ph157

.preheader.i.i:                                   ; preds = %.lr.ph157
  store i64 %.val8.i.i.i, ptr %.sroa.0.0.i.i.i156, align 8, !alias.scope !790
  %i.fv = icmp eq ptr %i.fw, %.sroa.02.0.i
  br i1 %i.fv, label %._crit_edge158, label %.lr.ph157

.lr.ph157:                                        ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.i.i.i156 = phi ptr [ %i.fw, %.preheader.i.i ], [ %i.fs, %.preheader.i.i.preheader ] ; 3 uses
  %i.fw = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i156, i64 -8 ; 3 uses
  %.val8.i.i.i = load i64, ptr %i.fw, align 8, !alias.scope !788, !noalias !789, !noundef !16 ; 2 uses
  %i.fx = icmp ult i64 %.val9.i.i.i, %.val8.i.i.i
  br i1 %i.fx, label %.preheader.i.i, label %._crit_edge158

._crit_edge158:                                   ; preds = %.preheader.i.i, %.lr.ph157, %.preheader.i.i.preheader
  %.sroa.0.0.i.lcssa.i.i = phi ptr [ %.sroa.02.0.i, %.preheader.i.i.preheader ], [ %.sroa.02.0.i, %.preheader.i.i ], [ %.sroa.0.0.i.i.i156, %.lr.ph157 ]
  store i64 %.val9.i.i.i, ptr %.sroa.0.0.i.lcssa.i.i, align 8, !alias.scope !790, !noalias !791
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i.i: ; preds = %._crit_edge158, %.lr.ph.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fy, %i.fq
  br i1 %.not.i.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i, label %.lr.ph.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i.i, %bb.i
  br i1 %i.g, label %.sink.split.i, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i
  %.not.i = icmp eq ptr %.sroa.02.0.i, %.sroa.0.0.lcssa
  br i1 %.not.i, label %bb.c, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !796)
  %i.fz = add nsw i64 %.sroa.15.0.lcssa, -1       ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fz
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.fz
  %i.gc = getelementptr i8, ptr %i.h, i64 -8
  br label %.lr.ph.i23.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i23.i
  %i.gd = getelementptr i8, ptr %i.gu, i64 8      ; 2 uses
  %i.ge = getelementptr i8, ptr %i.gt, i64 8
  %i.gf = and i64 %.sroa.15.0.lcssa, 1
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %bb.m, label %bb.l

.lr.ph.i23.i:                                     ; preds = %.lr.ph.i23.i, %bb.k
  %.sroa.0.014.i.i = phi ptr [ %i.gp, %.lr.ph.i23.i ], [ %i.a, %bb.k ] ; 2 uses
  %.sroa.04.013.i.i = phi i64 [ %i.gh, %.lr.ph.i23.i ], [ 0, %bb.k ]
  %.sroa.06.012.i.i = phi ptr [ %i.go, %.lr.ph.i23.i ], [ %.sroa.0.0.lcssa, %bb.k ] ; 2 uses
  %.sroa.011.011.i.i = phi ptr [ %i.gm, %.lr.ph.i23.i ], [ %i.h, %bb.k ] ; 2 uses
  %.sroa.015.010.i.i = phi ptr [ %i.gu, %.lr.ph.i23.i ], [ %i.gc, %bb.k ] ; 2 uses
  %.sroa.017.09.i.i = phi ptr [ %i.gt, %.lr.ph.i23.i ], [ %i.gb, %bb.k ] ; 2 uses
  %.sroa.019.08.i.i = phi ptr [ %i.gv, %.lr.ph.i23.i ], [ %i.ga, %bb.k ] ; 2 uses
  %i.gh = add nuw nsw i64 %.sroa.04.013.i.i, 1    ; 2 uses
  %.sroa.011.0.val.i.i = load i64, ptr %.sroa.011.011.i.i, align 8, !alias.scope !799, !noalias !802, !noundef !16 ; 2 uses
  %.sroa.06.0.val.i.i = load i64, ptr %.sroa.06.012.i.i, align 8, !alias.scope !804, !noalias !805, !noundef !16 ; 2 uses
  %i.gi = icmp ult i64 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i ; 2 uses
  %i.gj = xor i1 %i.gi, true
  %i.gk = tail call i64 @llvm.umin.i64(i64 %.sroa.011.0.val.i.i, i64 %.sroa.06.0.val.i.i)
  store i64 %i.gk, ptr %.sroa.0.014.i.i, align 8, !noalias !806
  %i.gl = zext i1 %i.gi to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.011.i.i, i64 %i.gl ; 4 uses
  %i.gn = zext i1 %i.gj to i64
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.012.i.i, i64 %i.gn ; 5 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i, i64 8 ; 2 uses
  %.sroa.017.0.val.i.i = load i64, ptr %.sroa.017.09.i.i, align 8, !alias.scope !799, !noalias !802, !noundef !16 ; 2 uses
  %.sroa.015.0.val.i.i = load i64, ptr %.sroa.015.010.i.i, align 8, !alias.scope !804, !noalias !805, !noundef !16 ; 2 uses
  %i.gq = icmp ult i64 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i ; 2 uses
  %i.gr = xor i1 %i.gq, true
  %i.gs = tail call i64 @llvm.umax.i64(i64 %.sroa.017.0.val.i.i, i64 %.sroa.015.0.val.i.i)
  store i64 %i.gs, ptr %.sroa.019.08.i.i, align 8, !noalias !810
  %.neg.i.i.i = sext i1 %i.gr to i64
  %i.gt = getelementptr [8 x i8], ptr %.sroa.017.09.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.gq to i64
  %i.gu = getelementptr [8 x i8], ptr %.sroa.015.010.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.gv = getelementptr inbounds i8, ptr %.sroa.019.08.i.i, i64 -8
  %exitcond.not.i.i = icmp eq i64 %i.gh, %i.f
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i23.i

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.gw = icmp ult ptr %i.go, %i.gd               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.gw, ptr %i.go, ptr %i.gm
  %i.gx = load i64, ptr %.sroa.06.0..sroa.011.0.i.i, align 8, !alias.scope !814
  store i64 %i.gx, ptr %i.gp, align 8, !noalias !814
  %i.gy = zext i1 %i.gw to i64
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.gy
  %i.ha = xor i1 %i.gw, true
  %i.hb = zext i1 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.hb
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.gm, %._crit_edge.i.i ], [ %i.hc, %bb.l ]
  %.sroa.06.1.i.i = phi ptr [ %i.go, %._crit_edge.i.i ], [ %i.gz, %bb.l ]
  %i.hd = icmp ne ptr %.sroa.06.1.i.i, %i.gd
  %i.he = icmp ne ptr %.sroa.011.1.i.i, %i.ge
  %or.cond.i.i = select i1 %i.hd, i1 true, i1 %i.he, !prof !308
  br i1 %or.cond.i.i, label %bb.n, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergejNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i, !prof !308

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #15, !noalias !796
  unreachable

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergejNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i: ; preds = %bb.m
  %i.hf = shl nuw nsw i64 %.sroa.15.0.lcssa, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.lcssa, ptr nonnull align 8 %i.a, i64 %i.hf, i1 false)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergejNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !692
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_networkjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.091.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.090.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 %.sroa.0.091.lcssa, i64 noundef %.sroa.15.090.lcssa, ptr noalias noundef nonnull %4)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_networkjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit

.lr.ph154:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.088153 = phi i32 [ %i.hg, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.089152 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.15.090151 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.091150 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 22 uses
  %i.hg = add i32 %.sroa.026.088153, -1           ; 3 uses
  %i.hh = lshr i64 %.sroa.15.090151, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.hh, 5
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0.091150, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.hh, 56
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0.091150, i64 %.idx2.i ; 3 uses
  %i.hk = icmp samesign ult i64 %.sroa.15.090151, 64
  br i1 %i.hk, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3jNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph154
  %i.hl = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa(ptr noundef nonnull readonly align 8 %.sroa.0.091150, ptr noundef readonly %i.hi, ptr noundef readonly %i.hj, i64 noundef %i.hh)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3jNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i: ; preds = %.lr.ph154
  %.val6.i = load i64, ptr %.sroa.0.091150, align 8, !alias.scope !815, !noalias !820, !noundef !16 ; 2 uses
  %.val7.i = load i64, ptr %i.hi, align 8, !alias.scope !822, !noalias !823, !noundef !16 ; 2 uses
  %i.hm = icmp ult i64 %.val6.i, %.val7.i         ; 2 uses
  %.val5.i = load i64, ptr %i.hj, align 8, !alias.scope !822, !noalias !823, !noundef !16 ; 2 uses
  %i.hn = icmp ult i64 %.val6.i, %.val5.i
  %i.ho = xor i1 %i.hm, %i.hn
  %i.hp = icmp ult i64 %.val7.i, %.val5.i
  %i.hq = xor i1 %i.hm, %i.hp
  %..i.i = select i1 %i.hq, ptr %i.hj, ptr %i.hi
  %.sroa.0.0.i.i = select i1 %i.ho, ptr %.sroa.0.091150, ptr %..i.i
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.o, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3jNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3jNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i ], [ %i.hl, %bb.o ]
  %i.hr = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.hs = ptrtoint ptr %.sroa.0.091150 to i64
  %i.ht = sub nuw i64 %i.hr, %i.hs                ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.ht, 3          ; 3 uses
  %i.hu = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.090151
  tail call void @llvm.assume(i1 %i.hu)
  %.not = icmp eq ptr %.sroa.023.089152, null
  br i1 %.not, label %bb.p, label %bb.r

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_networkjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit: ; preds = %.sink.split.i, %._crit_edge, %.lr.ph._crit_edge
  ret void

bb.p:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit, %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !824)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSj14swap_uncheckedCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 %.sroa.0.091150, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.090151, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846975) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0.091150, i64 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.hw = load i64, ptr %i.hv, align 8, !alias.scope !832, !noalias !830, !noundef !16
  store i64 %i.hw, ptr %6, align 8, !noalias !833
  %i.hx = getelementptr [8 x i8], ptr %.sroa.0.091150, i64 %.sroa.15.090151 ; 2 uses
  %i.hy = getelementptr i8, ptr %i.hx, i64 -8     ; 2 uses
  %.sroa.13.030.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.091150, i64 16 ; 3 uses
  %i.hz = icmp ult ptr %.sroa.13.030.i.i, %i.hy
  %.val1.i.pre.i.i = load i64, ptr %.sroa.0.091150, align 8, !alias.scope !834, !noalias !827 ; 3 uses
  br i1 %i.hz, label %.lr.ph.i.i36, label %.preheader.i.i35.a

.preheader.i.i35.a:                               ; preds = %.lr.ph.i.i36, %bb.p
  %.sroa.23.0.lcssa.i.i = phi i64 [ 0, %bb.p ], [ %i.ip, %.lr.ph.i.i36 ]
  %.sroa.015.0.lcssa.i.i = phi ptr [ %.sroa.13.030.i.i, %bb.p ], [ %.sroa.13.0.i.i, %.lr.ph.i.i36 ]
  %.sroa.13.0.lcssa.i.i = phi ptr [ %i.hv, %bb.p ], [ %i.ik, %.lr.ph.i.i36 ]
  br label %.cont.i.i

.cont.i.i:                                        ; preds = %.preheader.i.i35.a, %.cont.i.i
  %.sroa.23.1.i.i = phi i64 [ %i.ie, %.cont.i.i ], [ %.sroa.23.0.lcssa.i.i, %.preheader.i.i35.a ] ; 2 uses
  %.sroa.015.1.i7.i = phi ptr [ %.sroa.13.1.sroa.gep.i.i, %.cont.i.i ], [ %.sroa.015.0.lcssa.i.i, %.preheader.i.i35.a ] ; 4 uses
  %.sroa.13.1.i6.i = phi ptr [ %.sroa.015.1.i7.i, %.cont.i.i ], [ %.sroa.13.0.lcssa.i.i, %.preheader.i.i35.a ]
  %7 = icmp eq ptr %.sroa.015.1.i7.i, %i.hx       ; 2 uses
  %.sroa.01.0.i.i = select i1 %7, ptr %6, ptr %.sroa.015.1.i7.i ; 2 uses
  %.val.i.else.val.i.i = load i64, ptr %.sroa.01.0.i.i, align 8, !alias.scope !835, !noalias !838, !noundef !16
  %i.ia = icmp ult i64 %.val.i.else.val.i.i, %.val1.i.pre.i.i
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %.sroa.23.1.i.i ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !alias.scope !832, !noalias !842
  store i64 %i.ic, ptr %.sroa.13.1.i6.i, align 8, !alias.scope !832, !noalias !842
  %8 = load i64, ptr %.sroa.01.0.i.i, align 8, !noalias !842
  store i64 %8, ptr %i.ib, align 8, !alias.scope !832, !noalias !842
  %i.id = zext i1 %i.ia to i64
  %i.ie = add i64 %.sroa.23.1.i.i, %i.id          ; 6 uses
  %.sroa.13.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i7.i, i64 8
  br i1 %7, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i, label %.cont.i.i

.lr.ph.i.i36:                                     ; preds = %bb.p, %.lr.ph.i.i36
  %.sroa.13.033.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i36 ], [ %.sroa.13.030.i.i, %bb.p ] ; 2 uses
  %.sroa.015.032.i.i = phi ptr [ %i.ik, %.lr.ph.i.i36 ], [ %i.hv, %bb.p ] ; 3 uses
  %.sroa.23.031.i.i = phi i64 [ %i.ip, %.lr.ph.i.i36 ], [ 0, %bb.p ] ; 2 uses
  %.val.i11.i.i = load i64, ptr %.sroa.13.033.i.i, align 8, !alias.scope !843, !noalias !846, !noundef !16 ; 2 uses
  %i.if = icmp ult i64 %.val.i11.i.i, %.val1.i.pre.i.i
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %.sroa.23.031.i.i ; 2 uses
  %i.ih = load i64, ptr %i.ig, align 8, !alias.scope !832, !noalias !850
  store i64 %i.ih, ptr %.sroa.015.032.i.i, align 8, !alias.scope !832, !noalias !850
  store i64 %.val.i11.i.i, ptr %i.ig, align 8, !alias.scope !832, !noalias !850
  %i.ii = zext i1 %i.if to i64
  %i.ij = add i64 %.sroa.23.031.i.i, %i.ii        ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 16 ; 3 uses
  %.val.i13.i.i37 = load i64, ptr %i.ik, align 8, !alias.scope !851, !noalias !854, !noundef !16 ; 2 uses
  %i.il = icmp ult i64 %.val.i13.i.i37, %.val1.i.pre.i.i
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.ij ; 2 uses
  %i.in = load i64, ptr %i.im, align 8, !alias.scope !832, !noalias !858
  store i64 %i.in, ptr %.sroa.13.033.i.i, align 8, !alias.scope !832, !noalias !858
  store i64 %.val.i13.i.i37, ptr %i.im, align 8, !alias.scope !832, !noalias !858
  %i.io = zext i1 %i.il to i64
  %i.ip = add i64 %i.ij, %i.io                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 24 ; 3 uses
  %i.iq = icmp ult ptr %.sroa.13.0.i.i, %i.hy
  br i1 %i.iq, label %.lr.ph.i.i36, label %.preheader.i.i35.a

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i: ; preds = %.cont.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not7.i = icmp ult i64 %i.ie, %.sroa.15.090151
  br i1 %.not7.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSj12split_at_mutCsC8CapfvpQ1_5salsa.exit, label %bb.q

bb.q:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSj12split_at_mutCsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSj14swap_uncheckedCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 %.sroa.0.091150, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.090151, i64 noundef 0, i64 noundef %i.ie, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.091150, i64 %i.ie ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = xor i64 %i.ie, -1
  %i.iu = add i64 %.sroa.15.090151, %i.it
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 %.sroa.0.091150, i64 noundef %i.ie, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.023.089152, i32 noundef %i.hg, ptr noalias noundef nonnull %4)
  br label %.backedge

bb.r:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0.091150, i64 %i.ht
  %.sroa.023.0.val = load i64, ptr %.sroa.023.089152, align 8, !alias.scope !78, !noalias !81, !noundef !16
  %.val = load i64, ptr %i.iv, align 8, !alias.scope !81, !noalias !78, !noundef !16
  %i.iw = icmp ult i64 %.sroa.023.0.val, %.val
  br i1 %i.iw, label %bb.p, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSj14swap_uncheckedCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 %.sroa.0.091150, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.090151, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846975) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0.091150, i64 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.iy = load i64, ptr %i.ix, align 8, !alias.scope !867, !noalias !865, !noundef !16
  store i64 %i.iy, ptr %5, align 8, !noalias !868
  %i.iz = getelementptr [8 x i8], ptr %.sroa.0.091150, i64 %.sroa.15.090151 ; 2 uses
  %i.ja = getelementptr i8, ptr %i.iz, i64 -8     ; 2 uses
  %.sroa.13.030.i.i45 = getelementptr inbounds nuw i8, ptr %.sroa.0.091150, i64 16 ; 3 uses
  %i.jb = icmp ult ptr %.sroa.13.030.i.i45, %i.ja
  %.val1.i.pre.i.i46 = load i64, ptr %.sroa.0.091150, align 8, !alias.scope !869, !noalias !862 ; 3 uses
  br i1 %i.jb, label %.lr.ph.i.i60, label %.preheader.i.i47

.preheader.i.i47:                                 ; preds = %.lr.ph.i.i60, %bb.s
  %.sroa.23.0.lcssa.i.i48 = phi i64 [ 0, %bb.s ], [ %i.jr, %.lr.ph.i.i60 ]
  %.sroa.015.0.lcssa.i.i49 = phi ptr [ %.sroa.13.030.i.i45, %bb.s ], [ %.sroa.13.0.i.i66, %.lr.ph.i.i60 ]
  %.sroa.13.0.lcssa.i.i50 = phi ptr [ %i.ix, %bb.s ], [ %i.jm, %.lr.ph.i.i60 ]
  br label %.cont.i.i51

.cont.i.i51:                                      ; preds = %.preheader.i.i47, %.cont.i.i51
  %.sroa.23.1.i.i52 = phi i64 [ %i.jg, %.cont.i.i51 ], [ %.sroa.23.0.lcssa.i.i48, %.preheader.i.i47 ] ; 2 uses
  %.sroa.015.1.i7.i52 = phi ptr [ %.sroa.13.1.sroa.gep.i.i56, %.cont.i.i51 ], [ %.sroa.015.0.lcssa.i.i49, %.preheader.i.i47 ] ; 4 uses
  %.sroa.13.1.i6.i53 = phi ptr [ %.sroa.015.1.i7.i52, %.cont.i.i51 ], [ %.sroa.13.0.lcssa.i.i50, %.preheader.i.i47 ]
  %9 = icmp eq ptr %.sroa.015.1.i7.i52, %i.iz     ; 2 uses
  %.sroa.01.0.i.i55 = select i1 %9, ptr %5, ptr %.sroa.015.1.i7.i52 ; 2 uses
  %.val.i.else.val.i.i55 = load i64, ptr %.sroa.01.0.i.i55, align 8, !alias.scope !870, !noalias !873, !noundef !16
  %i.jc = icmp uge i64 %.val1.i.pre.i.i46, %.val.i.else.val.i.i55
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %.sroa.23.1.i.i52 ; 2 uses
  %i.je = load i64, ptr %i.jd, align 8, !alias.scope !867, !noalias !877
  store i64 %i.je, ptr %.sroa.13.1.i6.i53, align 8, !alias.scope !867, !noalias !877
  %10 = load i64, ptr %.sroa.01.0.i.i55, align 8, !noalias !877
  store i64 %10, ptr %i.jd, align 8, !alias.scope !867, !noalias !877
  %i.jf = zext i1 %i.jc to i64
  %i.jg = add i64 %.sroa.23.1.i.i52, %i.jf        ; 4 uses
  %.sroa.13.1.sroa.gep.i.i56 = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i7.i52, i64 8
  br i1 %9, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB2_9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltE0ECsC8CapfvpQ1_5salsa.exit.i, label %.cont.i.i51

.lr.ph.i.i60:                                     ; preds = %bb.s, %.lr.ph.i.i60
  %.sroa.13.033.i.i61 = phi ptr [ %.sroa.13.0.i.i66, %.lr.ph.i.i60 ], [ %.sroa.13.030.i.i45, %bb.s ] ; 2 uses
  %.sroa.015.032.i.i62 = phi ptr [ %i.jm, %.lr.ph.i.i60 ], [ %i.ix, %bb.s ] ; 3 uses
  %.sroa.23.031.i.i63 = phi i64 [ %i.jr, %.lr.ph.i.i60 ], [ 0, %bb.s ] ; 2 uses
  %.val.i11.i.i64 = load i64, ptr %.sroa.13.033.i.i61, align 8, !alias.scope !878, !noalias !881, !noundef !16 ; 2 uses
  %i.jh = icmp uge i64 %.val1.i.pre.i.i46, %.val.i11.i.i64
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %.sroa.23.031.i.i63 ; 2 uses
  %i.jj = load i64, ptr %i.ji, align 8, !alias.scope !867, !noalias !885
  store i64 %i.jj, ptr %.sroa.015.032.i.i62, align 8, !alias.scope !867, !noalias !885
  store i64 %.val.i11.i.i64, ptr %i.ji, align 8, !alias.scope !867, !noalias !885
  %i.jk = zext i1 %i.jh to i64
  %i.jl = add i64 %.sroa.23.031.i.i63, %i.jk      ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i62, i64 16 ; 3 uses
  %.val.i13.i.i65 = load i64, ptr %i.jm, align 8, !alias.scope !886, !noalias !889, !noundef !16 ; 2 uses
  %i.jn = icmp uge i64 %.val1.i.pre.i.i46, %.val.i13.i.i65
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %i.jl ; 2 uses
  %i.jp = load i64, ptr %i.jo, align 8, !alias.scope !867, !noalias !893
  store i64 %i.jp, ptr %.sroa.13.033.i.i61, align 8, !alias.scope !867, !noalias !893
  store i64 %.val.i13.i.i65, ptr %i.jo, align 8, !alias.scope !867, !noalias !893
  %i.jq = zext i1 %i.jn to i64
  %i.jr = add i64 %i.jl, %i.jq                    ; 2 uses
  %.sroa.13.0.i.i66 = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i62, i64 24 ; 3 uses
  %i.js = icmp ult ptr %.sroa.13.0.i.i66, %i.ja
  br i1 %i.js, label %.lr.ph.i.i60, label %.preheader.i.i47

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB2_9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltE0ECsC8CapfvpQ1_5salsa.exit.i: ; preds = %.cont.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.not7.i59 = icmp ult i64 %i.jg, %.sroa.15.090151
  br i1 %.not7.i59, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB2_9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltE0ECsC8CapfvpQ1_5salsa.exit.i
  tail call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB2_9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltE0ECsC8CapfvpQ1_5salsa.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSj14swap_uncheckedCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 %.sroa.0.091150, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.090151, i64 noundef 0, i64 noundef %i.jg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  %i.jt = add nuw nsw i64 %i.jg, 1                ; 2 uses
  %i.ju = sub nuw i64 %.sroa.15.090151, %i.jt
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.091150, i64 %i.jt
  br label %.backedge

.backedge:                                        ; preds = %bb.u, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSj12split_at_mutCsC8CapfvpQ1_5salsa.exit
  %.sroa.023.0.be = phi ptr [ %i.ir, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSj12split_at_mutCsC8CapfvpQ1_5salsa.exit ], [ null, %bb.u ]
  %.sroa.15.0.be = phi i64 [ %i.iu, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSj12split_at_mutCsC8CapfvpQ1_5salsa.exit ], [ %i.ju, %bb.u ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.is, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSj12split_at_mutCsC8CapfvpQ1_5salsa.exit ], [ %i.jv, %bb.u ] ; 3 uses
  %i.jw = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.jw, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort22panic_on_ord_violation() unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSBW_7sort_byNCINvMs1_BY_NtBY_5Zalsa3newNtNtB10_13database_impl12DatabaseImplE0E0EB10_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), i1 noundef zeroext, ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBz_2id2IdE14swap_uncheckedBz_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSj14swap_uncheckedCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1a_2id2IdENCINvMB8_SB15_16sort_unstable_byNCNvMs1_B18_NtB18_11IdentityMap5drain0E0EB1a_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias noundef nonnull) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7sort_byNCINvMs1_Bz_NtBz_5Zalsa3newNtNtBB_13database_impl12DatabaseImplE0E0BB_: argument 0"}
!5 = distinct !{!5, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7sort_byNCINvMs1_Bz_NtBz_5Zalsa3newNtNtBB_13database_impl12DatabaseImplE0E0BB_"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7sort_byNCINvMs1_Bz_NtBz_5Zalsa3newNtNtBB_13database_impl12DatabaseImplE0E0BB_: argument 1"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_RNCINvMs1_NtCsC8CapfvpQ1_5salsa5zalsaNtB8_5Zalsa3newNtNtBa_13database_impl12DatabaseImplE0Ba_: argument 0"}
!10 = distinct !{!10, !"_RNCINvMs1_NtCsC8CapfvpQ1_5salsa5zalsaNtB8_5Zalsa3newNtNtBa_13database_impl12DatabaseImplE0Ba_"}
!11 = !{!12}
!12 = distinct !{!12, !10, !"_RNCINvMs1_NtCsC8CapfvpQ1_5salsa5zalsaNtB8_5Zalsa3newNtNtBa_13database_impl12DatabaseImplE0Ba_: argument 1"}
!13 = !{i8 0, i8 2}
!14 = !{!9, !4}
!15 = !{!12, !7}
!16 = !{}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7sort_byNCINvMs1_Bz_NtBz_5Zalsa3newNtNtBB_13database_impl12DatabaseImplE0E0BB_: argument 0"}
!19 = distinct !{!19, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7sort_byNCINvMs1_Bz_NtBz_5Zalsa3newNtNtBB_13database_impl12DatabaseImplE0E0BB_"}
!20 = !{!21}
!21 = distinct !{!21, !19, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7sort_byNCINvMs1_Bz_NtBz_5Zalsa3newNtNtBB_13database_impl12DatabaseImplE0E0BB_: argument 1"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_RNCINvMs1_NtCsC8CapfvpQ1_5salsa5zalsaNtB8_5Zalsa3newNtNtBa_13database_impl12DatabaseImplE0Ba_: argument 0"}
!24 = distinct !{!24, !"_RNCINvMs1_NtCsC8CapfvpQ1_5salsa5zalsaNtB8_5Zalsa3newNtNtBa_13database_impl12DatabaseImplE0Ba_"}
!25 = !{!26}
!26 = distinct !{!26, !24, !"_RNCINvMs1_NtCsC8CapfvpQ1_5salsa5zalsaNtB8_5Zalsa3newNtNtBa_13database_impl12DatabaseImplE0Ba_: argument 1"}
!27 = !{!23, !18}
!28 = !{!26, !21}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7sort_byNCINvMs1_Bz_NtBz_5Zalsa3newNtNtBB_13database_impl12DatabaseImplE0E0BB_: argument 0"}
!31 = distinct !{!31, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7sort_byNCINvMs1_Bz_NtBz_5Zalsa3newNtNtBB_13database_impl12DatabaseImplE0E0BB_"}
!32 = !{!33}
!33 = distinct !{!33, !31, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7sort_byNCINvMs1_Bz_NtBz_5Zalsa3newNtNtBB_13database_impl12DatabaseImplE0E0BB_: argument 1"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_RNCINvMs1_NtCsC8CapfvpQ1_5salsa5zalsaNtB8_5Zalsa3newNtNtBa_13database_impl12DatabaseImplE0Ba_: argument 0"}
!36 = distinct !{!36, !"_RNCINvMs1_NtCsC8CapfvpQ1_5salsa5zalsaNtB8_5Zalsa3newNtNtBa_13database_impl12DatabaseImplE0Ba_"}
!37 = !{!38}
!38 = distinct !{!38, !36, !"_RNCINvMs1_NtCsC8CapfvpQ1_5salsa5zalsaNtB8_5Zalsa3newNtNtBa_13database_impl12DatabaseImplE0Ba_: argument 1"}
!39 = !{!35, !30}
!40 = !{!38, !33}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_: argument 0"}
!43 = distinct !{!43, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_"}
!44 = !{!45}
!45 = distinct !{!45, !43, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_: argument 1"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5drain0B9_: argument 0"}
!48 = distinct !{!48, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5drain0B9_"}
!49 = !{!50}
!50 = distinct !{!50, !48, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5drain0B9_: argument 1"}
!51 = !{!47, !42}
!52 = !{!50, !45}
!53 = !{i32 1, i32 0}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_: argument 0"}
!56 = distinct !{!56, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_"}
!57 = !{!58}
!58 = distinct !{!58, !56, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_: argument 1"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5drain0B9_: argument 0"}
!61 = distinct !{!61, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5drain0B9_"}
!62 = !{!63}
!63 = distinct !{!63, !61, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5drain0B9_: argument 1"}
!64 = !{!63, !58}
!65 = !{!60, !55}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_: argument 0"}
!68 = distinct !{!68, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_"}
!69 = !{!70}
!70 = distinct !{!70, !68, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_: argument 1"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5drain0B9_: argument 0"}
!73 = distinct !{!73, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5drain0B9_"}
!74 = !{!75}
!75 = distinct !{!75, !73, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5drain0B9_: argument 1"}
!76 = !{!75, !70}
!77 = !{!72, !67}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!80 = distinct !{!80, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!81 = !{!82}
!82 = distinct !{!82, !80, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7sort_byNCINvMs1_Bz_NtBz_5Zalsa3newNtNtBB_13database_impl12DatabaseImplE0E0BB_: argument 0"}
!85 = distinct !{!85, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7sort_byNCINvMs1_Bz_NtBz_5Zalsa3newNtNtBB_13database_impl12DatabaseImplE0E0BB_"}
!86 = !{!87}
!87 = distinct !{!87, !85, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7sort_byNCINvMs1_Bz_NtBz_5Zalsa3newNtNtBB_13database_impl12DatabaseImplE0E0BB_: argument 1"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_RNCINvMs1_NtCsC8CapfvpQ1_5salsa5zalsaNtB8_5Zalsa3newNtNtBa_13database_impl12DatabaseImplE0Ba_: argument 0"}
!90 = distinct !{!90, !"_RNCINvMs1_NtCsC8CapfvpQ1_5salsa5zalsaNtB8_5Zalsa3newNtNtBa_13database_impl12DatabaseImplE0Ba_"}
!91 = !{!92}
!92 = distinct !{!92, !90, !"_RNCINvMs1_NtCsC8CapfvpQ1_5salsa5zalsaNtB8_5Zalsa3newNtNtBa_13database_impl12DatabaseImplE0Ba_: argument 1"}
!93 = !{!89, !84}
!94 = !{!92, !87}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7sort_byNCINvMs1_Bz_NtBz_5Zalsa3newNtNtBB_13database_impl12DatabaseImplE0E0BB_: argument 0"}
!97 = distinct !{!97, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7sort_byNCINvMs1_Bz_NtBz_5Zalsa3newNtNtBB_13database_impl12DatabaseImplE0E0BB_"}
!98 = !{!99}
!99 = distinct !{!99, !97, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7sort_byNCINvMs1_Bz_NtBz_5Zalsa3newNtNtBB_13database_impl12DatabaseImplE0E0BB_: argument 1"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_RNCINvMs1_NtCsC8CapfvpQ1_5salsa5zalsaNtB8_5Zalsa3newNtNtBa_13database_impl12DatabaseImplE0Ba_: argument 0"}
!102 = distinct !{!102, !"_RNCINvMs1_NtCsC8CapfvpQ1_5salsa5zalsaNtB8_5Zalsa3newNtNtBa_13database_impl12DatabaseImplE0Ba_"}
!103 = !{!104}
!104 = distinct !{!104, !102, !"_RNCINvMs1_NtCsC8CapfvpQ1_5salsa5zalsaNtB8_5Zalsa3newNtNtBa_13database_impl12DatabaseImplE0Ba_: argument 1"}
!105 = !{!101, !96}
!106 = !{!104, !99}
!107 = !{!108, !110}
end_hunk_1
begin_hunk_2_@llvm.umax.i64
!625 = distinct !{!625, !622, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_: argument 1"}
!626 = distinct !{!626, !627, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1E_2id2IdENCINvMBa_SB1z_16sort_unstable_byNCNvMs1_B1C_NtB1C_11IdentityMap5drain0E0E0B1E_: argument 0"}
!627 = distinct !{!627, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1E_2id2IdENCINvMBa_SB1z_16sort_unstable_byNCNvMs1_B1C_NtB1C_11IdentityMap5drain0E0E0B1E_"}
!628 = !{!612, !609}
!629 = !{!626, !615}
!630 = !{!631, !633, !612, !609}
!631 = distinct !{!631, !632, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5drain0B9_: argument 0"}
!632 = distinct !{!632, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5drain0B9_"}
!633 = distinct !{!633, !634, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_: argument 0"}
!634 = distinct !{!634, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_"}
!635 = !{!636, !637, !638, !615}
!636 = distinct !{!636, !632, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5drain0B9_: argument 1"}
!637 = distinct !{!637, !634, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_: argument 1"}
!638 = distinct !{!638, !639, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1E_2id2IdENCINvMBa_SB1z_16sort_unstable_byNCNvMs1_B1C_NtB1C_11IdentityMap5drain0E0E0B1E_: argument 0"}
!639 = distinct !{!639, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1E_2id2IdENCINvMBa_SB1z_16sort_unstable_byNCNvMs1_B1C_NtB1C_11IdentityMap5drain0E0E0B1E_"}
!640 = !{!638, !615}
!641 = !{!642}
!642 = distinct !{!642, !643, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_: argument 0"}
!643 = distinct !{!643, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_"}
!644 = !{!645}
!645 = distinct !{!645, !643, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_: argument 1"}
!646 = !{!647}
!647 = distinct !{!647, !648, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5drain0B9_: argument 0"}
!648 = distinct !{!648, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5drain0B9_"}
!649 = !{!650}
!650 = distinct !{!650, !648, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5drain0B9_: argument 1"}
!651 = !{!647, !642}
!652 = !{!650, !645}
!653 = !{!654}
!654 = distinct !{!654, !655, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9partitionTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1c_2id2IdENCINvB2_9quicksortB17_NCINvMB8_SB17_16sort_unstable_byNCNvMs1_B1a_NtB1a_11IdentityMap5drain0E0E0EB1c_: argument 0"}
!655 = distinct !{!655, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9partitionTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1c_2id2IdENCINvB2_9quicksortB17_NCINvMB8_SB17_16sort_unstable_byNCNvMs1_B1a_NtB1a_11IdentityMap5drain0E0E0EB1c_"}
!656 = !{!657}
!657 = distinct !{!657, !658, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1C_2id2IdENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs1_B1A_NtB1A_11IdentityMap5drain0E0E0EB1C_: argument 0"}
!658 = distinct !{!658, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1C_2id2IdENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs1_B1A_NtB1A_11IdentityMap5drain0E0E0EB1C_"}
!659 = !{!660}
!660 = distinct !{!660, !658, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1C_2id2IdENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs1_B1A_NtB1A_11IdentityMap5drain0E0E0EB1C_: argument 1"}
!661 = !{!657, !660, !654}
!662 = !{!660, !654}
!663 = !{!664, !666, !668}
!664 = distinct !{!664, !665, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5drain0B9_: argument 1"}
!665 = distinct !{!665, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5drain0B9_"}
!666 = distinct !{!666, !667, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_: argument 1"}
!667 = distinct !{!667, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_"}
!668 = distinct !{!668, !669, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdENCINvMBa_SB19_16sort_unstable_byNCNvMs1_B1c_NtB1c_11IdentityMap5drain0E0E0B1e_: argument 0"}
!669 = distinct !{!669, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdENCINvMBa_SB19_16sort_unstable_byNCNvMs1_B1c_NtB1c_11IdentityMap5drain0E0E0B1e_"}
!670 = !{!671, !672, !673, !674, !660}
!671 = distinct !{!671, !665, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5drain0B9_: argument 0"}
!672 = distinct !{!672, !667, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_: argument 0"}
!673 = distinct !{!673, !669, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdENCINvMBa_SB19_16sort_unstable_byNCNvMs1_B1c_NtB1c_11IdentityMap5drain0E0E0B1e_: argument 1"}
!674 = distinct !{!674, !675, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1E_2id2IdENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_B1C_NtB1C_11IdentityMap5drain0E0E0E0B1E_: argument 0"}
!675 = distinct !{!675, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1E_2id2IdENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_B1C_NtB1C_11IdentityMap5drain0E0E0E0B1E_"}
!676 = !{!657, !654}
!677 = !{!674, !660}
!678 = !{!679, !681, !683, !657, !654}
!679 = distinct !{!679, !680, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5drain0B9_: argument 1"}
!680 = distinct !{!680, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5drain0B9_"}
!681 = distinct !{!681, !682, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_: argument 1"}
!682 = distinct !{!682, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_"}
!683 = distinct !{!683, !684, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdENCINvMBa_SB19_16sort_unstable_byNCNvMs1_B1c_NtB1c_11IdentityMap5drain0E0E0B1e_: argument 0"}
!684 = distinct !{!684, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdENCINvMBa_SB19_16sort_unstable_byNCNvMs1_B1c_NtB1c_11IdentityMap5drain0E0E0B1e_"}
!685 = !{!686, !687, !688, !689, !660}
!686 = distinct !{!686, !680, !"_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap5drain0B9_: argument 0"}
!687 = distinct !{!687, !682, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_: argument 0"}
!688 = distinct !{!688, !684, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdENCINvMBa_SB19_16sort_unstable_byNCNvMs1_B1c_NtB1c_11IdentityMap5drain0E0E0B1e_: argument 1"}
!689 = distinct !{!689, !690, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1E_2id2IdENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_B1C_NtB1C_11IdentityMap5drain0E0E0E0B1E_: argument 0"}
!690 = distinct !{!690, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1E_2id2IdENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNvMs1_B1C_NtB1C_11IdentityMap5drain0E0E0E0B1E_"}
!691 = !{!689, !660}
!692 = !{!693}
!693 = distinct !{!693, !694, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_networkjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa: argument 0"}
!694 = distinct !{!694, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_networkjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa"}
!695 = !{!696, !698, !693}
!696 = distinct !{!696, !697, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!697 = distinct !{!697, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!698 = distinct !{!698, !699, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort14sort13_optimaljNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa: argument 0"}
!699 = distinct !{!699, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort14sort13_optimaljNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa"}
!700 = !{!701}
!701 = distinct !{!701, !697, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!702 = !{!701, !698, !693}
!703 = !{!696}
!704 = !{!705, !698, !693}
!705 = distinct !{!705, !706, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!706 = distinct !{!706, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!707 = !{!708}
!708 = distinct !{!708, !706, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!709 = !{!708, !698, !693}
!710 = !{!705}
!711 = !{!712, !698, !693}
!712 = distinct !{!712, !713, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!713 = distinct !{!713, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!714 = !{!715}
!715 = distinct !{!715, !713, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!716 = !{!715, !698, !693}
!717 = !{!712}
!718 = !{!719, !698, !693}
!719 = distinct !{!719, !720, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!720 = distinct !{!720, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!721 = !{!722}
!722 = distinct !{!722, !720, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!723 = !{!722, !698, !693}
!724 = !{!719}
!725 = !{!726, !698, !693}
!726 = distinct !{!726, !727, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!727 = distinct !{!727, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!728 = !{!729}
!729 = distinct !{!729, !727, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!730 = !{!729, !698, !693}
!731 = !{!726}
!732 = !{!733, !698, !693}
!733 = distinct !{!733, !734, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!734 = distinct !{!734, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!735 = !{!736}
!736 = distinct !{!736, !734, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!737 = !{!736, !698, !693}
!738 = !{!733}
!739 = !{!740, !698, !693}
!740 = distinct !{!740, !741, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!741 = distinct !{!741, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!742 = !{!743}
!743 = distinct !{!743, !741, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!744 = !{!698, !693}
!745 = !{!746, !748, !693}
!746 = distinct !{!746, !747, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!747 = distinct !{!747, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!748 = distinct !{!748, !749, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort13sort9_optimaljNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa: argument 0"}
!749 = distinct !{!749, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort13sort9_optimaljNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa"}
!750 = !{!751}
!751 = distinct !{!751, !747, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!752 = !{!751, !748, !693}
!753 = !{!746}
!754 = !{!755, !748, !693}
!755 = distinct !{!755, !756, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!756 = distinct !{!756, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!757 = !{!758}
!758 = distinct !{!758, !756, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!759 = !{!758, !748, !693}
!760 = !{!755}
!761 = !{!762, !748, !693}
!762 = distinct !{!762, !763, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!763 = distinct !{!763, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!764 = !{!765}
!765 = distinct !{!765, !763, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!766 = !{!765, !748, !693}
!767 = !{!762}
!768 = !{!769, !748, !693}
!769 = distinct !{!769, !770, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!770 = distinct !{!770, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!771 = !{!772}
!772 = distinct !{!772, !770, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!773 = !{!772, !748, !693}
!774 = !{!769}
!775 = !{!776, !748, !693}
!776 = distinct !{!776, !777, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!777 = distinct !{!777, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!778 = !{!779}
!779 = distinct !{!779, !777, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!780 = !{!748, !693}
!781 = !{!782, !784, !693}
!782 = distinct !{!782, !783, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!783 = distinct !{!783, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!784 = distinct !{!784, !785, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa: argument 0"}
!785 = distinct !{!785, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa"}
!786 = !{!787}
!787 = distinct !{!787, !783, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!788 = !{!787, !784, !693}
!789 = !{!782}
!790 = !{!784, !693}
!791 = !{!792, !794}
!792 = distinct !{!792, !793, !"_RNvXs5_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropjENtNtNtBd_3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa: argument 0"}
!793 = distinct !{!793, !"_RNvXs5_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropjENtNtNtBd_3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa"}
!794 = distinct !{!794, !795, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropjEECsC8CapfvpQ1_5salsa: argument 0"}
!795 = distinct !{!795, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropjEECsC8CapfvpQ1_5salsa"}
!796 = !{!797}
!797 = distinct !{!797, !798, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergejNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa: argument 0"}
!798 = distinct !{!798, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergejNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa"}
!799 = !{!800, !797, !693}
!800 = distinct !{!800, !801, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!801 = distinct !{!801, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!802 = !{!803}
!803 = distinct !{!803, !801, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!804 = !{!803, !797, !693}
!805 = !{!800}
!806 = !{!807, !809, !797, !693}
!807 = distinct !{!807, !808, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort8merge_upjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa: argument 0"}
!808 = distinct !{!808, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort8merge_upjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa"}
!809 = distinct !{!809, !808, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort8merge_upjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa: argument 1"}
!810 = !{!811, !813, !797, !693}
!811 = distinct !{!811, !812, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort10merge_downjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa: argument 0"}
!812 = distinct !{!812, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort10merge_downjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa"}
!813 = distinct !{!813, !812, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort10merge_downjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa: argument 1"}
!814 = !{!797, !693}
!815 = !{!816, !818}
!816 = distinct !{!816, !817, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!817 = distinct !{!817, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!818 = distinct !{!818, !819, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa: argument 0"}
!819 = distinct !{!819, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa"}
!820 = !{!821}
!821 = distinct !{!821, !817, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!822 = !{!821, !818}
!823 = !{!816}
!824 = !{!825}
!825 = distinct !{!825, !826, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9partitionjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa: argument 0"}
!826 = distinct !{!826, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9partitionjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa"}
!827 = !{!828}
!828 = distinct !{!828, !829, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa: argument 0"}
!829 = distinct !{!829, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa"}
!830 = !{!831}
!831 = distinct !{!831, !829, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa: argument 1"}
!832 = !{!828, !825}
!833 = !{!828, !831, !825}
!834 = !{!831, !825}
!835 = !{!836}
!836 = distinct !{!836, !837, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!837 = distinct !{!837, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!838 = !{!839, !840, !831}
!839 = distinct !{!839, !837, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!840 = distinct !{!840, !841, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBc_3cmp10PartialOrd2ltE0CsC8CapfvpQ1_5salsa: argument 0"}
!841 = distinct !{!841, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBc_3cmp10PartialOrd2ltE0CsC8CapfvpQ1_5salsa"}
!842 = !{!840, !831}
!843 = !{!844, !828, !825}
!844 = distinct !{!844, !845, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!845 = distinct !{!845, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!846 = !{!847, !848, !831}
!847 = distinct !{!847, !845, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!848 = distinct !{!848, !849, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBc_3cmp10PartialOrd2ltE0CsC8CapfvpQ1_5salsa: argument 0"}
!849 = distinct !{!849, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBc_3cmp10PartialOrd2ltE0CsC8CapfvpQ1_5salsa"}
!850 = !{!848, !831}
!851 = !{!852, !828, !825}
!852 = distinct !{!852, !853, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!853 = distinct !{!853, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!854 = !{!855, !856, !831}
!855 = distinct !{!855, !853, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!856 = distinct !{!856, !857, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBc_3cmp10PartialOrd2ltE0CsC8CapfvpQ1_5salsa: argument 0"}
!857 = distinct !{!857, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBc_3cmp10PartialOrd2ltE0CsC8CapfvpQ1_5salsa"}
!858 = !{!856, !831}
!859 = !{!860}
!860 = distinct !{!860, !861, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9partitionjNCINvB2_9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltE0ECsC8CapfvpQ1_5salsa: argument 0"}
!861 = distinct !{!861, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9partitionjNCINvB2_9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltE0ECsC8CapfvpQ1_5salsa"}
!862 = !{!863}
!863 = distinct !{!863, !864, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB2_9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltE0ECsC8CapfvpQ1_5salsa: argument 0"}
!864 = distinct !{!864, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB2_9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltE0ECsC8CapfvpQ1_5salsa"}
!865 = !{!866}
!866 = distinct !{!866, !864, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB2_9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltE0ECsC8CapfvpQ1_5salsa: argument 1"}
!867 = !{!863, !860}
!868 = !{!863, !866, !860}
!869 = !{!866, !860}
!870 = !{!871}
!871 = distinct !{!871, !872, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!872 = distinct !{!872, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!873 = !{!874, !875, !866}
!874 = distinct !{!874, !872, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!875 = distinct !{!875, !876, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNvYjNtNtBc_3cmp10PartialOrd2ltE0E0CsC8CapfvpQ1_5salsa: argument 0"}
!876 = distinct !{!876, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNvYjNtNtBc_3cmp10PartialOrd2ltE0E0CsC8CapfvpQ1_5salsa"}
!877 = !{!875, !866}
!878 = !{!879, !863, !860}
!879 = distinct !{!879, !880, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!880 = distinct !{!880, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!881 = !{!882, !883, !866}
!882 = distinct !{!882, !880, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!883 = distinct !{!883, !884, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNvYjNtNtBc_3cmp10PartialOrd2ltE0E0CsC8CapfvpQ1_5salsa: argument 0"}
!884 = distinct !{!884, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNvYjNtNtBc_3cmp10PartialOrd2ltE0E0CsC8CapfvpQ1_5salsa"}
!885 = !{!883, !866}
!886 = !{!887, !863, !860}
!887 = distinct !{!887, !888, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!888 = distinct !{!888, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!889 = !{!890, !891, !866}
!890 = distinct !{!890, !888, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!891 = distinct !{!891, !892, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNvYjNtNtBc_3cmp10PartialOrd2ltE0E0CsC8CapfvpQ1_5salsa: argument 0"}
!892 = distinct !{!892, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNvYjNtNtBc_3cmp10PartialOrd2ltE0E0CsC8CapfvpQ1_5salsa"}
!893 = !{!891, !866}
end_hunk_2
