Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 258
loop-unroll.NumUnrolled: 402
begin_hunk_0_@_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort8unstable9quicksort9quicksortTjjdENCINvMB8_SB17_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB21_10TriMatIterINtNtB8_4iter4IterjEB30_IB31_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx:bb.a
  %i.gm = icmp eq i64 %.val12.i, %.val8.i
  %i.gn = icmp ult i64 %.val12.i, %.val8.i
  %i.go = icmp ult i64 %.val13.i, %.val9.i
  %.sroa.0.0.i.i15.i = select i1 %i.gm, i1 %i.go, i1 %i.gn
  %i.gp = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i15.i
  %..i.i = select i1 %i.gp, ptr %i.fz, ptr %i.fy
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared5pivot12choose_pivotTjjdENCINvMB8_SB15_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB1Z_10TriMatIterINtNtB8_4iter4IterjEB2Y_IB2Z_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared5pivot12choose_pivotTjjdENCINvMB8_SB15_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB1Z_10TriMatIterINtNtB8_4iter4IterjEB2Y_IB2Z_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.n, %bb.o, %bb.p
  %.sroa.0.0.i.sink.i = phi ptr [ %i.gb, %bb.n ], [ %.sroa.0.09413, %bb.o ], [ %..i.i, %bb.p ]
  %i.gq = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.gr = ptrtoint ptr %.sroa.0.09413 to i64
  %i.gs = sub nuw i64 %i.gq, %i.gr                ; 3 uses
  %.sroa.0.0.i36 = udiv exact i64 %i.gs, 24
  %i.gt = icmp samesign ult i64 %.sroa.0.0.i36, %.sroa.15.09314
  tail call void @llvm.assume(i1 %i.gt)
  %.not = icmp eq ptr %.sroa.023.09215, null
  br i1 %.not, label %bb.r, label %bb.t

bb.q:                                             ; preds = %.lr.ph._crit_edge, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTjjdENCINvMB8_SB1s_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB2m_10TriMatIterINtNtB8_4iter4IterjEB3l_IB3m_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit
  ret void

bb.r:                                             ; preds = %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared5pivot12choose_pivotTjjdENCINvMB8_SB15_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB1Z_10TriMatIterINtNtB8_4iter4IterjEB2Y_IB2Z_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit, %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36584)
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0.09413, i64 %i.gs ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.09413, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.09413, ptr noundef nonnull align 8 dereferenceable(24) %i.gu, i64 24, i1 false), !alias.scope !36585
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gu, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0.09413, i64 24 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36587)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !36588
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.gv, i64 24, i1 false), !noalias !36587
  %i.gw = mul nuw nsw i64 %.sroa.15.09314, 24
  %i.gx = getelementptr i8, ptr %.sroa.0.09413, i64 %i.gw ; 2 uses
  %.sroa.11.028.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.09413, i64 48
  %.val2.i.pre.i.i = load i64, ptr %.sroa.0.09413, align 8, !alias.scope !36589, !noalias !56 ; 4 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.09413, i64 8
  %.val3.i.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !36589, !noalias !56 ; 2 uses
  br label %.lr.ph.i.i37

.preheader.i.i:                                   ; preds = %.lr.ph.i.i37, %.preheader.i.i
  %.sroa.19.1.i.i = phi i64 [ %i.he, %.preheader.i.i ], [ %i.hl, %.lr.ph.i.i37 ] ; 2 uses
  %.sroa.11.1.i.i = phi ptr [ %.sroa.11.1.sroa.gep22.i.i, %.preheader.i.i ], [ %.sroa.11.0.i.i, %.lr.ph.i.i37 ] ; 5 uses
  %.sroa.014.1.i.i = phi ptr [ %.sroa.11.1.i.i, %.preheader.i.i ], [ %.sroa.11.031.i.i, %.lr.ph.i.i37 ]
  %i.gy = icmp eq ptr %.sroa.11.1.i.i, %i.gx      ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.gy, ptr %i.e, ptr %.sroa.11.1.i.i ; 2 uses
  %.val.i.i.i = load i64, ptr %.sroa.01.0.i.i, align 8, !noalias !36590, !noundef !56 ; 2 uses
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.gy, ptr %i.e, ptr %.sroa.11.1.i.i
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.val1.i.i.i = load i64, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !36590, !noundef !56
  %i.gz = icmp eq i64 %.val.i.i.i, %.val2.i.pre.i.i
  %i.ha = icmp ult i64 %.val.i.i.i, %.val2.i.pre.i.i
  %i.hb = icmp ult i64 %.val1.i.i.i, %.val3.i.pre.i.i
  %.sroa.0.0.i.i.i.i.i = select i1 %i.gz, i1 %i.hb, i1 %i.ha
  %i.hc = getelementptr inbounds nuw [24 x i8], ptr %i.gv, i64 %.sroa.19.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.014.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.hc, i64 24, i1 false), !alias.scope !36591, !noalias !36592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hc, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.0.i.i, i64 24, i1 false), !noalias !36590
  %i.hd = zext i1 %.sroa.0.0.i.i.i.i.i to i64
  %i.he = add i64 %.sroa.19.1.i.i, %i.hd          ; 5 uses
  %.sroa.11.1.sroa.gep22.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i, i64 24
  br i1 %i.gy, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTjjdENCINvMB8_SB1x_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB2r_10TriMatIterINtNtB8_4iter4IterjEB3q_IB3r_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit.i, label %.preheader.i.i

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37, %bb.r
  %.sroa.11.031.i.i = phi ptr [ %.sroa.11.0.i.i, %.lr.ph.i.i37 ], [ %.sroa.11.028.i.i, %bb.r ] ; 5 uses
  %.sroa.014.030.i.i = phi ptr [ %.sroa.11.031.i.i, %.lr.ph.i.i37 ], [ %i.gv, %bb.r ] ; 2 uses
  %.sroa.19.029.i.i = phi i64 [ %i.hl, %.lr.ph.i.i37 ], [ 0, %bb.r ] ; 2 uses
  %.val.i9.i.i = load i64, ptr %.sroa.11.031.i.i, align 8, !alias.scope !36591, !noalias !36593, !noundef !56 ; 2 uses
  %i.hf = getelementptr i8, ptr %.sroa.014.030.i.i, i64 32
  %.val1.i10.i.i = load i64, ptr %i.hf, align 8, !alias.scope !36591, !noalias !36593, !noundef !56
  %i.hg = icmp eq i64 %.val.i9.i.i, %.val2.i.pre.i.i
  %i.hh = icmp ult i64 %.val.i9.i.i, %.val2.i.pre.i.i
  %i.hi = icmp ult i64 %.val1.i10.i.i, %.val3.i.pre.i.i
  %.sroa.0.0.i.i.i13.i.i = select i1 %i.hg, i1 %i.hi, i1 %i.hh
  %i.hj = getelementptr inbounds nuw [24 x i8], ptr %i.gv, i64 %.sroa.19.029.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.014.030.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.hj, i64 24, i1 false), !alias.scope !36591, !noalias !36593
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hj, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.031.i.i, i64 24, i1 false), !alias.scope !36591, !noalias !36593
  %i.hk = zext i1 %.sroa.0.0.i.i.i13.i.i to i64
  %i.hl = add i64 %.sroa.19.029.i.i, %i.hk        ; 2 uses
  %.sroa.11.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.031.i.i, i64 24 ; 3 uses
  %i.hm = icmp ult ptr %.sroa.11.0.i.i, %i.gx
  br i1 %i.hm, label %.lr.ph.i.i37, label %.preheader.i.i

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTjjdENCINvMB8_SB1x_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB2r_10TriMatIterINtNtB8_4iter4IterjEB3q_IB3r_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !36588
  %.not7.i = icmp ult i64 %i.he, %.sroa.15.09314
  br i1 %.not7.i, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTjjdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit, label %bb.s

bb.s:                                             ; preds = %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTjjdENCINvMB8_SB1x_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB2r_10TriMatIterINtNtB8_4iter4IterjEB3q_IB3r_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCslwFuT2d6ECx_4core5sliceSTjjdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTjjdENCINvMB8_SB1x_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB2r_10TriMatIterINtNtB8_4iter4IterjEB3q_IB3r_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit.i
  %i.hn = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.09413, i64 %i.he ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.09413, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.09413, ptr noundef nonnull align 8 dereferenceable(24) %i.hn, i64 24, i1 false), !alias.scope !36594
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hn, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hp = xor i64 %i.he, -1
  %i.hq = add i64 %.sroa.15.09314, %i.hp
  tail call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort8unstable9quicksort9quicksortTjjdENCINvMB8_SB17_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB21_10TriMatIterINtNtB8_4iter4IterjEB30_IB31_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 %.sroa.0.09413, i64 noundef %i.he, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.sroa.023.09215, i32 noundef %i.fw)
  br label %.backedge

bb.t:                                             ; preds = %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared5pivot12choose_pivotTjjdENCINvMB8_SB15_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB1Z_10TriMatIterINtNtB8_4iter4IterjEB2Y_IB2Z_dEE7into_csjE0E0ECskcxRuJ53GpR_9rustworkx.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0.09413, i64 %i.gs ; 4 uses
  %.sroa.023.0.val = load i64, ptr %.sroa.023.09215, align 8, !noundef !56 ; 2 uses
  %i.hs = getelementptr i8, ptr %.sroa.023.09215, i64 8
  %.sroa.023.0.val34 = load i64, ptr %i.hs, align 8, !noundef !56
  %.val = load i64, ptr %i.hr, align 8, !noundef !56 ; 2 uses
  %i.ht = getelementptr i8, ptr %i.hr, i64 8
  %.val35 = load i64, ptr %i.ht, align 8, !noundef !56
  %i.hu = icmp eq i64 %.sroa.023.0.val, %.val
  %i.hv = icmp ult i64 %.sroa.023.0.val, %.val
  %i.hw = icmp ult i64 %.sroa.023.0.val34, %.val35
  %.sroa.0.0.i.i44 = select i1 %i.hu, i1 %i.hw, i1 %i.hv
  br i1 %.sroa.0.0.i.i44, label %bb.r, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36595)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.09413, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.09413, ptr noundef nonnull align 8 dereferenceable(24) %i.hr, i64 24, i1 false), !alias.scope !36596
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hr, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0.09413, i64 24 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36598)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36599
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.hx, i64 24, i1 false), !noalias !36598
  %i.hy = mul nuw nsw i64 %.sroa.15.09314, 24
  %i.hz = getelementptr i8, ptr %.sroa.0.09413, i64 %i.hy ; 2 uses
  %.sroa.11.028.i.i46 = getelementptr inbounds nuw i8, ptr %.sroa.0.09413, i64 48
  %.val2.i.pre.i.i47 = load i64, ptr %.sroa.0.09413, align 8, !alias.scope !36600, !noalias !56 ; 4 uses
  %.phi.trans.insert.i.i48 = getelementptr inbounds nuw i8, ptr %.sroa.0.09413, i64 8
  %.val3.i.pre.i.i49 = load i64, ptr %.phi.trans.insert.i.i48, align 8, !alias.scope !36600, !noalias !56 ; 2 uses
  br label %.lr.ph.i.i50

.preheader.i.i57:                                 ; preds = %.lr.ph.i.i50, %.preheader.i.i57
  %.sroa.19.1.i.i58 = phi i64 [ %i.ig, %.preheader.i.i57 ], [ %i.in, %.lr.ph.i.i50 ] ; 2 uses
  %.sroa.11.1.i.i59 = phi ptr [ %.sroa.11.1.sroa.gep22.i.i66, %.preheader.i.i57 ], [ %.sroa.11.0.i.i56, %.lr.ph.i.i50 ] ; 5 uses
  %.sroa.014.1.i.i60 = phi ptr [ %.sroa.11.1.i.i59, %.preheader.i.i57 ], [ %.sroa.11.031.i.i51, %.lr.ph.i.i50 ]
  %i.ia = icmp eq ptr %.sroa.11.1.i.i59, %i.hz    ; 3 uses
  %.sroa.01.0.i.i61 = select i1 %i.ia, ptr %i.b, ptr %.sroa.11.1.i.i59 ; 2 uses
  %.val.i.i.i62 = load i64, ptr %.sroa.01.0.i.i61, align 8, !noalias !36601, !noundef !56 ; 2 uses
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i63.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ia, ptr %i.b, ptr %.sroa.11.1.i.i59
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i63.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i63.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.val1.i.i.i65 = load i64, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i63.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !36601, !noundef !56
  %i.ib = icmp eq i64 %.val2.i.pre.i.i47, %.val.i.i.i62
  %i.ic = icmp uge i64 %.val2.i.pre.i.i47, %.val.i.i.i62
  %i.id = icmp uge i64 %.val3.i.pre.i.i49, %.val1.i.i.i65
  %.sroa.0.0.i.i.i.i.i.i = select i1 %i.ib, i1 %i.id, i1 %i.ic
  %i.ie = getelementptr inbounds nuw [24 x i8], ptr %i.hx, i64 %.sroa.19.1.i.i58 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.014.1.i.i60, ptr noundef nonnull align 8 dereferenceable(24) %i.ie, i64 24, i1 false), !alias.scope !36602, !noalias !36603
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ie, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.0.i.i61, i64 24, i1 false), !noalias !36601
  %i.if = zext i1 %.sroa.0.0.i.i.i.i.i.i to i64
  %i.ig = add i64 %.sroa.19.1.i.i58, %i.if        ; 4 uses
  %.sroa.11.1.sroa.gep22.i.i66 = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i59, i64 24
  br i1 %i.ia, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTjjdENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB2N_10TriMatIterINtNtB8_4iter4IterjEB3M_IB3N_dEE7into_csjE0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i, label %.preheader.i.i57

.lr.ph.i.i50:                                     ; preds = %.lr.ph.i.i50, %bb.u
  %.sroa.11.031.i.i51 = phi ptr [ %.sroa.11.0.i.i56, %.lr.ph.i.i50 ], [ %.sroa.11.028.i.i46, %bb.u ] ; 5 uses
  %.sroa.014.030.i.i52 = phi ptr [ %.sroa.11.031.i.i51, %.lr.ph.i.i50 ], [ %i.hx, %bb.u ] ; 2 uses
  %.sroa.19.029.i.i53 = phi i64 [ %i.in, %.lr.ph.i.i50 ], [ 0, %bb.u ] ; 2 uses
  %.val.i9.i.i54 = load i64, ptr %.sroa.11.031.i.i51, align 8, !alias.scope !36602, !noalias !36604, !noundef !56 ; 2 uses
  %i.ih = getelementptr i8, ptr %.sroa.014.030.i.i52, i64 32
  %.val1.i10.i.i55 = load i64, ptr %i.ih, align 8, !alias.scope !36602, !noalias !36604, !noundef !56
  %i.ii = icmp eq i64 %.val2.i.pre.i.i47, %.val.i9.i.i54
  %i.ij = icmp uge i64 %.val2.i.pre.i.i47, %.val.i9.i.i54
  %i.ik = icmp uge i64 %.val3.i.pre.i.i49, %.val1.i10.i.i55
  %.sroa.0.0.i.i.i.i13.i.i = select i1 %i.ii, i1 %i.ik, i1 %i.ij
  %i.il = getelementptr inbounds nuw [24 x i8], ptr %i.hx, i64 %.sroa.19.029.i.i53 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.014.030.i.i52, ptr noundef nonnull align 8 dereferenceable(24) %i.il, i64 24, i1 false), !alias.scope !36602, !noalias !36604
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.il, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.031.i.i51, i64 24, i1 false), !alias.scope !36602, !noalias !36604
  %i.im = zext i1 %.sroa.0.0.i.i.i.i13.i.i to i64
  %i.in = add i64 %.sroa.19.029.i.i53, %i.im      ; 2 uses
  %.sroa.11.0.i.i56 = getelementptr inbounds nuw i8, ptr %.sroa.11.031.i.i51, i64 24 ; 3 uses
  %i.io = icmp ult ptr %.sroa.11.0.i.i56, %i.hz
  br i1 %i.io, label %.lr.ph.i.i50, label %.preheader.i.i57

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTjjdENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB2N_10TriMatIterINtNtB8_4iter4IterjEB3M_IB3N_dEE7into_csjE0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %.preheader.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36599
  %.not7.i67 = icmp ult i64 %i.ig, %.sroa.15.09314
  br i1 %.not7.i67, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTjjdENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB2N_10TriMatIterINtNtB8_4iter4IterjEB3M_IB3N_dEE7into_csjE0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i
  tail call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTjjdENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyTjjENCINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB2N_10TriMatIterINtNtB8_4iter4IterjEB3M_IB3N_dEE7into_csjE0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i
  %i.ip = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.09413, i64 %i.ig ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.09413, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.09413, ptr noundef nonnull align 8 dereferenceable(24) %i.ip, i64 24, i1 false), !alias.scope !36605
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ip, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.iq = add nuw nsw i64 %i.ig, 1                ; 2 uses
  %i.ir = sub nuw nsw i64 %.sroa.15.09314, %i.iq
  %i.is = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.09413, i64 %i.iq
  br label %.backedge

.backedge:                                        ; preds = %bb.w, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTjjdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit
  %.sroa.023.0.be = phi ptr [ %i.hn, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTjjdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit ], [ null, %bb.w ]
  %.sroa.15.0.be = phi i64 [ %i.hq, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTjjdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit ], [ %i.ir, %bb.w ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.ho, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTjjdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit ], [ %i.is, %bb.w ] ; 3 uses
  %i.it = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.it, label %._crit_edge, label %.lr.ph
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 17) %3, i64 noundef range(i64 1, 81) %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36608)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !59, !alias.scope !36608, !noundef !56 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %i.f = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.b)
  %i.g = icmp eq i64 %4, 1
  %.sroa.07.0.i = select i1 %i.g, i64 8, i64 4
  %i.h = tail call i64 @llvm.umax.i64(i64 %.sroa.07.0.i, i64 %i.f) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36608
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i = load ptr, ptr %i.i, align 8, !alias.scope !36608
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val12.i, i64 noundef %i.h, i64 noundef range(i64 1, 17) %3, i64 noundef range(i64 0, 145) %4), !noalias !36608
  %i.j = load i64, ptr %i.a, align 8, !range !57, !noalias !36608, !noundef !56
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.l, align 8, !range !112, !noalias !36608, !noundef !56
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !36608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36608
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.5.0.i.ph = phi i64 [ %i.o, %bb.c ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ %i.m, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #61
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.l, align 8, !noalias !36608, !nonnull !56, !noundef !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36608
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !36608
  %i.q = icmp sgt i64 %i.h, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %i.h, ptr %0, align 8, !alias.scope !36608
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNvMs_NtCsj855HSQkgLM_15crossbeam_epoch8deferredNtB7_8Deferred3new4callNCINvMNtB9_5guardNtB1g_5Guard15defer_uncheckedNCNvMs4_NtCs2cN7l8c8gSC_15crossbeam_deque5dequeINtB22_6WorkerNtNtCslLviULm4Laq_10rayon_core3job6JobRefE6resize0uE0ECskcxRuJ53GpR_9rustworkx(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !56
  %i.b = and i64 %i.a, -8                         ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = icmp ne i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !56 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNCINvMNtCsj855HSQkgLM_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCNvMs4_NtCs2cN7l8c8gSC_15crossbeam_deque5dequeINtB1i_6WorkerNtNtCslLviULm4Laq_10rayon_core3job6JobRefE6resize0uE0CskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !nonnull !56, !noundef !56
  %i.i = shl nuw nsw i64 %i.f, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.i, i64 noundef 8) #59
  br label %_RNCINvMNtCsj855HSQkgLM_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCNvMs4_NtCs2cN7l8c8gSC_15crossbeam_deque5dequeINtB1i_6WorkerNtNtCslLviULm4Laq_10rayon_core3job6JobRefE6resize0uE0CskcxRuJ53GpR_9rustworkx.exit

_RNCINvMNtCsj855HSQkgLM_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCNvMs4_NtCs2cN7l8c8gSC_15crossbeam_deque5dequeINtB1i_6WorkerNtNtCslLviULm4Laq_10rayon_core3job6JobRefE6resize0uE0CskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.a, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 16, i64 noundef 8) #59
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvMsb_NtCsi0YPOvDEjiZ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEB18_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36623
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs8_NtCskcxRuJ53GpR_9rustworkx5graphNtB7_7PyGraphNtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 88) acquire, align 8, !noalias !36624
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RNvXs3_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraphNtNtCsi0YPOvDEjiZ_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i.i, label %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphE15get_or_try_initB1p_.exit.i.i.i, !prof !66

_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphE15get_or_try_initB1p_.exit.i.i.i: ; preds = %bb.a
  call fastcc void @_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphE8try_initB1p_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.b), !noalias !36623, !inline_history !36615
  %.pre.i.i.i = load i64, ptr %i.b, align 8, !range !57, !noalias !36623
  %i.e = trunc nuw i64 %.pre.i.i.i to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphE15get_or_try_initB1p_.exit.i._RNvXs3_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraphNtNtCsi0YPOvDEjiZ_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i.i, !prof !73

_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphE15get_or_try_initB1p_.exit.i._RNvXs3_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraphNtNtCsi0YPOvDEjiZ_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i.i: ; preds = %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphE15get_or_try_initB1p_.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.f, align 8, !noalias !36623
  br label %_RNvXs3_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraphNtNtCsi0YPOvDEjiZ_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i.i

bb.b:                                             ; preds = %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphE15get_or_try_initB1p_.exit.i.i.i
  call void @_RNvNtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_object23type_object_init_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @864, i64 noundef 7) #61, !noalias !36623, !inline_history !36616
  unreachable

_RNvXs3_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraphNtNtCsi0YPOvDEjiZ_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i.i: ; preds = %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphE15get_or_try_initB1p_.exit.i._RNvXs3_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraphNtNtCsi0YPOvDEjiZ_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphE15get_or_try_initB1p_.exit.i._RNvXs3_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraphNtNtCsi0YPOvDEjiZ_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i.i ], [ getelementptr inbounds nuw (i8, ptr @_RNvNvXs8_NtCskcxRuJ53GpR_9rustworkx5graphNtB7_7PyGraphNtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 80), %bb.a ]
  %i.h = load ptr, ptr %i.g, align 8, !noalias !36623, !nonnull !56, !noundef !56 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36623
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !36623, !noundef !56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i, label %_RNvXNtCsi0YPOvDEjiZ_4pyo311type_objectNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtB2_11PyTypeCheck10type_checkBE_.exit.thread, label %_RNvXNtCsi0YPOvDEjiZ_4pyo311type_objectNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtB2_11PyTypeCheck10type_checkBE_.exit

_RNvXNtCsi0YPOvDEjiZ_4pyo311type_objectNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtB2_11PyTypeCheck10type_checkBE_.exit: ; preds = %_RNvXs3_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraphNtNtCsi0YPOvDEjiZ_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i.i
  %i.k = call noundef i32 @PyType_IsSubtype(ptr noundef %i.j, ptr noundef nonnull %i.h) #59, !noalias !36623, !inline_history !36617
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %_RNvXNtCsi0YPOvDEjiZ_4pyo311type_objectNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtB2_11PyTypeCheck10type_checkBE_.exit.thread

bb.c:                                             ; preds = %_RNvXNtCsi0YPOvDEjiZ_4pyo311type_objectNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtB2_11PyTypeCheck10type_checkBE_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs8_NtCskcxRuJ53GpR_9rustworkx5graphNtB7_7PyGraphNtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 88) acquire, align 8, !noalias !36625
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_RNvXNtCsi0YPOvDEjiZ_4pyo311type_objectNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtB2_11PyTypeCheck16classinfo_objectBE_.exit, label %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphE15get_or_try_initB1p_.exit.i.i.i1, !prof !66

_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphE15get_or_try_initB1p_.exit.i.i.i1: ; preds = %bb.c
  call fastcc void @_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphE8try_initB1p_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a), !inline_history !36620
  %.pre.i.i.i2 = load i64, ptr %i.a, align 8, !range !57
  %i.n = trunc nuw i64 %.pre.i.i.i2 to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.n, label %bb.d, label %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphE15get_or_try_initB1p_.exit.i._RNvXs3_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraphNtNtCsi0YPOvDEjiZ_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i.i3, !prof !73

_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphE15get_or_try_initB1p_.exit.i._RNvXs3_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraphNtNtCsi0YPOvDEjiZ_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i.i3: ; preds = %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphE15get_or_try_initB1p_.exit.i.i.i1
  %.pre.i.i4 = load ptr, ptr %i.o, align 8
  br label %_RNvXNtCsi0YPOvDEjiZ_4pyo311type_objectNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtB2_11PyTypeCheck16classinfo_objectBE_.exit

bb.d:                                             ; preds = %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphE15get_or_try_initB1p_.exit.i.i.i1
  call void @_RNvNtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_object23type_object_init_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @864, i64 noundef 7) #61, !inline_history !36621
  unreachable

_RNvXNtCsi0YPOvDEjiZ_4pyo311type_objectNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtB2_11PyTypeCheck16classinfo_objectBE_.exit: ; preds = %bb.c, %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphE15get_or_try_initB1p_.exit.i._RNvXs3_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraphNtNtCsi0YPOvDEjiZ_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i.i3
  %i.p = phi ptr [ %.pre.i.i4, %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphE15get_or_try_initB1p_.exit.i._RNvXs3_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraphNtNtCsi0YPOvDEjiZ_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i.i3 ], [ getelementptr inbounds nuw (i8, ptr @_RNvNvXs8_NtCskcxRuJ53GpR_9rustworkx5graphNtB7_7PyGraphNtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 80), %bb.c ]
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !56, !noundef !56 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_Py_IncRef(ptr noundef nonnull %i.q) #59, !inline_history !36622
  store ptr %1, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8
  br label %bb.e

_RNvXNtCsi0YPOvDEjiZ_4pyo311type_objectNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtB2_11PyTypeCheck10type_checkBE_.exit.thread: ; preds = %_RNvXs3_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraphNtNtCsi0YPOvDEjiZ_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i.i, %_RNvXNtCsi0YPOvDEjiZ_4pyo311type_objectNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtB2_11PyTypeCheck10type_checkBE_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.s, align 8
  store ptr null, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RNvXNtCsi0YPOvDEjiZ_4pyo311type_objectNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtB2_11PyTypeCheck10type_checkBE_.exit.thread, %_RNvXNtCsi0YPOvDEjiZ_4pyo311type_objectNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtB2_11PyTypeCheck16classinfo_objectBE_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvMsb_NtCsi0YPOvDEjiZ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEB18_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36640
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsc_NtCskcxRuJ53GpR_9rustworkx7digraphNtB7_9PyDiGraphNtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 88) acquire, align 8, !noalias !36641
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RNvXs7_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5_9PyDiGraphNtNtCsi0YPOvDEjiZ_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i.i, label %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphE15get_or_try_initB1p_.exit.i.i.i, !prof !66

_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphE15get_or_try_initB1p_.exit.i.i.i: ; preds = %bb.a
  call fastcc void @_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphE8try_initB1p_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.b), !noalias !36640, !inline_history !36632
  %.pre.i.i.i = load i64, ptr %i.b, align 8, !range !57, !noalias !36640
  %i.e = trunc nuw i64 %.pre.i.i.i to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphE15get_or_try_initB1p_.exit.i._RNvXs7_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5_9PyDiGraphNtNtCsi0YPOvDEjiZ_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i.i, !prof !73

_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphE15get_or_try_initB1p_.exit.i._RNvXs7_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5_9PyDiGraphNtNtCsi0YPOvDEjiZ_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i.i: ; preds = %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphE15get_or_try_initB1p_.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.f, align 8, !noalias !36640
  br label %_RNvXs7_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5_9PyDiGraphNtNtCsi0YPOvDEjiZ_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i.i

bb.b:                                             ; preds = %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphE15get_or_try_initB1p_.exit.i.i.i
  call void @_RNvNtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_object23type_object_init_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @869, i64 noundef 9) #61, !noalias !36640, !inline_history !36633
  unreachable

_RNvXs7_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5_9PyDiGraphNtNtCsi0YPOvDEjiZ_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i.i: ; preds = %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphE15get_or_try_initB1p_.exit.i._RNvXs7_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5_9PyDiGraphNtNtCsi0YPOvDEjiZ_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphE15get_or_try_initB1p_.exit.i._RNvXs7_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5_9PyDiGraphNtNtCsi0YPOvDEjiZ_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i.i ], [ getelementptr inbounds nuw (i8, ptr @_RNvNvXsc_NtCskcxRuJ53GpR_9rustworkx7digraphNtB7_9PyDiGraphNtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 80), %bb.a ]
  %i.h = load ptr, ptr %i.g, align 8, !noalias !36640, !nonnull !56, !noundef !56 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36640
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !36640, !noundef !56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i, label %_RNvXNtCsi0YPOvDEjiZ_4pyo311type_objectNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphNtB2_11PyTypeCheck10type_checkBE_.exit.thread, label %_RNvXNtCsi0YPOvDEjiZ_4pyo311type_objectNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphNtB2_11PyTypeCheck10type_checkBE_.exit

_RNvXNtCsi0YPOvDEjiZ_4pyo311type_objectNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphNtB2_11PyTypeCheck10type_checkBE_.exit: ; preds = %_RNvXs7_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5_9PyDiGraphNtNtCsi0YPOvDEjiZ_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i.i
  %i.k = call noundef i32 @PyType_IsSubtype(ptr noundef %i.j, ptr noundef nonnull %i.h) #59, !noalias !36640, !inline_history !36634
  %.not = icmp eq i32 %i.k, 0
end_hunk_0
