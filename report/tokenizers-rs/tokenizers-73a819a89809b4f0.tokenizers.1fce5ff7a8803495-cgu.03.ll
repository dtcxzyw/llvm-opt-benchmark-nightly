Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.03?download=true
inline.NumInlined: 920
inline.NumDeleted: 323
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB17_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2w_9WordPieceNtNtB2A_9tokenizer5Model4save0E0EB2A_:bb.a
  %i.ge = ptrtoint ptr %.sroa.0.092157 to i64
  %i.gf = sub nuw i64 %i.gd, %i.ge                ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.gf, 4          ; 3 uses
  %i.gg = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.091158
  tail call void @llvm.assume(i1 %i.gg)
  %.not = icmp eq ptr %.sroa.023.090159, null
  br i1 %.not, label %bb.s, label %bb.v

bb.r:                                             ; preds = %._crit_edge162, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB1f_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2E_9WordPieceNtNtB2I_9tokenizer5Model4save0E0EB2I_.exit
  ret void

bb.s:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB15_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2u_9WordPieceNtNtB2y_9tokenizer5Model4save0E0EB2y_.exit, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE14swap_uncheckedCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %.sroa.0.092157, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.091158, i64 noundef 0, i64 noundef range(i64 0, 576460752303423487) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0.092157, i64 16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1369
  %i.gi = load <2 x ptr>, ptr %i.gh, align 8, !alias.scope !1370
  store <2 x ptr> %i.gi, ptr %i.b, align 16, !noalias !1369
  %i.gj = getelementptr [16 x i8], ptr %.sroa.0.092157, i64 %.sroa.15.091158 ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 -16    ; 2 uses
  %.sroa.13.033.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.092157, i64 32 ; 3 uses
  %i.gl = icmp ult ptr %.sroa.13.033.i.i, %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.092157, i64 8
  %.val1.i12.i.i = load ptr, ptr %i.gm, align 8, !alias.scope !1371, !noalias !3 ; 2 uses
  br i1 %i.gl, label %.lr.ph.i.i37, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.t, %bb.s
  %.sroa.23.1.i.i.ph = phi i64 [ 0, %bb.s ], [ %i.hh, %bb.t ]
  %.sroa.13.1.i.i.ph = phi ptr [ %.sroa.13.033.i.i, %bb.s ], [ %.sroa.13.0.i.i, %bb.t ]
  %.sroa.015.1.i.i.ph = phi ptr [ %i.gh, %bb.s ], [ %i.hb, %bb.t ]
  br label %.preheader.i.i

.lr.ph.i.i37:                                     ; preds = %bb.s
  %i.gn = load i32, ptr %.val1.i12.i.i, align 4, !noalias !1372, !noundef !3 ; 2 uses
  br label %bb.t

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.23.1.i.i = phi i64 [ %i.gu, %.preheader.i.i ], [ %.sroa.23.1.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.1.sroa.gep26.i.i, %.preheader.i.i ], [ %.sroa.13.1.i.i.ph, %.preheader.i.i.preheader ] ; 5 uses
  %.sroa.015.1.i.i = phi ptr [ %.sroa.13.1.i.i, %.preheader.i.i ], [ %.sroa.015.1.i.i.ph, %.preheader.i.i.preheader ]
  %i.go = icmp eq ptr %.sroa.13.1.i.i, %i.gj      ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.go, ptr %i.b, ptr %.sroa.13.1.i.i
  %.sroa.01.0.sroa.sel.i.i.v.sroa.sel.v = select i1 %i.go, ptr %i.b, ptr %.sroa.13.1.i.i
  %.sroa.01.0.sroa.sel.i.i.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.i.i.v.sroa.sel.v, i64 8
  %.val.i.i.i36 = load ptr, ptr %.sroa.01.0.sroa.sel.i.i.v.sroa.sel, align 8, !noalias !1373, !nonnull !3, !align !4, !noundef !3
  %i.gp = load i32, ptr %.val.i.i.i36, align 4, !noalias !1374, !noundef !3
  %i.gq = load i32, ptr %.val1.i12.i.i, align 4, !noalias !1374, !noundef !3
  %i.gr = icmp ult i32 %i.gp, %i.gq
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %i.gh, i64 %.sroa.23.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gs, i64 16, i1 false), !alias.scope !1370, !noalias !1375
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gs, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i, i64 16, i1 false), !noalias !1373
  %i.gt = zext i1 %i.gr to i64
  %i.gu = add i64 %.sroa.23.1.i.i, %i.gt          ; 6 uses
  %.sroa.13.1.sroa.gep26.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i, i64 16
  br i1 %i.go, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2W_9WordPieceNtNtB30_9tokenizer5Model4save0E0EB30_.exit.i, label %.preheader.i.i

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.i37
  %.sroa.13.036.i.i = phi ptr [ %.sroa.13.033.i.i, %.lr.ph.i.i37 ], [ %.sroa.13.0.i.i, %bb.t ] ; 2 uses
  %.sroa.015.035.i.i = phi ptr [ %i.gh, %.lr.ph.i.i37 ], [ %i.hb, %bb.t ] ; 5 uses
  %.sroa.23.034.i.i = phi i64 [ 0, %.lr.ph.i.i37 ], [ %i.hh, %bb.t ] ; 2 uses
  %i.gv = getelementptr i8, ptr %.sroa.015.035.i.i, i64 24
  %.val.i11.i.i = load ptr, ptr %i.gv, align 8, !alias.scope !1370, !noalias !1376, !nonnull !3, !align !4, !noundef !3
  %i.gw = load i32, ptr %.val.i11.i.i, align 4, !noalias !1372, !noundef !3
  %i.gx = icmp ult i32 %i.gw, %i.gn
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.gh, i64 %.sroa.23.034.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.035.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i64 16, i1 false), !alias.scope !1370, !noalias !1376
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.036.i.i, i64 16, i1 false), !alias.scope !1370, !noalias !1376
  %i.gz = zext i1 %i.gx to i64
  %i.ha = add i64 %.sroa.23.034.i.i, %i.gz        ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.015.035.i.i, i64 32 ; 3 uses
  %i.hc = getelementptr i8, ptr %.sroa.015.035.i.i, i64 40
  %.val.i13.i.i = load ptr, ptr %i.hc, align 8, !alias.scope !1370, !noalias !1377, !nonnull !3, !align !4, !noundef !3
  %i.hd = load i32, ptr %.val.i13.i.i, align 4, !noalias !1378, !noundef !3
  %i.he = icmp ult i32 %i.hd, %i.gn
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %i.gh, i64 %i.ha ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.036.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.hf, i64 16, i1 false), !alias.scope !1370, !noalias !1377
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hf, ptr noundef nonnull align 8 dereferenceable(16) %i.hb, i64 16, i1 false), !alias.scope !1370, !noalias !1377
  %i.hg = zext i1 %i.he to i64
  %i.hh = add i64 %i.ha, %i.hg                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.035.i.i, i64 48 ; 3 uses
  %i.hi = icmp ult ptr %.sroa.13.0.i.i, %i.gk
  br i1 %i.hi, label %bb.t, label %.preheader.i.i.preheader

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2W_9WordPieceNtNtB30_9tokenizer5Model4save0E0EB30_.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1369
  %.not7.i = icmp ult i64 %i.gu, %.sroa.15.091158
  br i1 %.not7.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit, label %bb.u

bb.u:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2W_9WordPieceNtNtB30_9tokenizer5Model4save0E0EB30_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2W_9WordPieceNtNtB30_9tokenizer5Model4save0E0EB30_.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE14swap_uncheckedCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %.sroa.0.092157, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.091158, i64 noundef 0, i64 noundef %i.gu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.092157, i64 %i.gu ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = xor i64 %i.gu, -1
  %i.hm = add i64 %.sroa.15.091158, %i.hl
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB17_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2w_9WordPieceNtNtB2A_9tokenizer5Model4save0E0EB2A_(ptr noalias noundef nonnull align 8 %.sroa.0.092157, i64 noundef %i.gu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %.sroa.023.090159, i32 noundef %i.fm, ptr noalias noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.v:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB15_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2u_9WordPieceNtNtB2y_9tokenizer5Model4save0E0EB2y_.exit
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0.092157, i64 %i.gf
  %i.ho = getelementptr i8, ptr %.sroa.023.090159, i64 8
  %.sroa.023.0.val = load ptr, ptr %i.ho, align 8, !nonnull !3, !align !4, !noundef !3
  %i.hp = getelementptr i8, ptr %i.hn, i64 8
  %.val = load ptr, ptr %i.hp, align 8, !nonnull !3, !align !4, !noundef !3
  %i.hq = load i32, ptr %.sroa.023.0.val, align 4, !noundef !3
  %i.hr = load i32, ptr %.val, align 4, !noundef !3
  %i.hs = icmp ult i32 %i.hq, %i.hr
  br i1 %i.hs, label %bb.s, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1379)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE14swap_uncheckedCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %.sroa.0.092157, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.091158, i64 noundef 0, i64 noundef range(i64 0, 576460752303423487) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.0.092157, i64 16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1382
  %i.hu = load <2 x ptr>, ptr %i.ht, align 8, !alias.scope !1383
  store <2 x ptr> %i.hu, ptr %i.a, align 16, !noalias !1382
  %i.hv = getelementptr [16 x i8], ptr %.sroa.0.092157, i64 %.sroa.15.091158 ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 -16    ; 2 uses
  %.sroa.13.033.i.i45 = getelementptr inbounds nuw i8, ptr %.sroa.0.092157, i64 32 ; 3 uses
  %i.hx = icmp ult ptr %.sroa.13.033.i.i45, %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0.092157, i64 8
  %.val1.i12.i.i46 = load ptr, ptr %i.hy, align 8, !alias.scope !1384, !noalias !3 ; 2 uses
  br i1 %i.hx, label %.lr.ph.i.i60, label %.preheader.i.i47.preheader

.preheader.i.i47.preheader:                       ; preds = %bb.x, %bb.w
  %.sroa.23.1.i.i51.ph = phi i64 [ 0, %bb.w ], [ %i.it, %bb.x ]
  %.sroa.13.1.i.i52.ph = phi ptr [ %.sroa.13.033.i.i45, %bb.w ], [ %.sroa.13.0.i.i66, %bb.x ]
  %.sroa.015.1.i.i53.ph = phi ptr [ %i.ht, %bb.w ], [ %i.in, %bb.x ]
  br label %.preheader.i.i47

.lr.ph.i.i60:                                     ; preds = %bb.w
  %i.hz = load i32, ptr %.val1.i12.i.i46, align 4, !noalias !1385, !noundef !3 ; 2 uses
  br label %bb.x

.preheader.i.i47:                                 ; preds = %.preheader.i.i47.preheader, %.preheader.i.i47
  %.sroa.23.1.i.i51 = phi i64 [ %i.ig, %.preheader.i.i47 ], [ %.sroa.23.1.i.i51.ph, %.preheader.i.i47.preheader ] ; 2 uses
  %.sroa.13.1.i.i52 = phi ptr [ %.sroa.13.1.sroa.gep26.i.i58, %.preheader.i.i47 ], [ %.sroa.13.1.i.i52.ph, %.preheader.i.i47.preheader ] ; 5 uses
  %.sroa.015.1.i.i53 = phi ptr [ %.sroa.13.1.i.i52, %.preheader.i.i47 ], [ %.sroa.015.1.i.i53.ph, %.preheader.i.i47.preheader ]
  %i.ia = icmp eq ptr %.sroa.13.1.i.i52, %i.hv    ; 3 uses
  %.sroa.01.0.i.i54 = select i1 %i.ia, ptr %i.a, ptr %.sroa.13.1.i.i52
  %.sroa.01.0.sroa.sel.i.i56.v.sroa.sel.v = select i1 %i.ia, ptr %i.a, ptr %.sroa.13.1.i.i52
  %.sroa.01.0.sroa.sel.i.i56.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.i.i56.v.sroa.sel.v, i64 8
  %.val.i.i.i57 = load ptr, ptr %.sroa.01.0.sroa.sel.i.i56.v.sroa.sel, align 8, !noalias !1386, !nonnull !3, !align !4, !noundef !3
  %i.ib = load i32, ptr %.val1.i12.i.i46, align 4, !noalias !1387, !noundef !3
  %i.ic = load i32, ptr %.val.i.i.i57, align 4, !noalias !1387, !noundef !3
  %i.id = icmp uge i32 %i.ib, %i.ic
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %.sroa.23.1.i.i51 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.1.i.i53, ptr noundef nonnull align 8 dereferenceable(16) %i.ie, i64 16, i1 false), !alias.scope !1383, !noalias !1388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ie, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i54, i64 16, i1 false), !noalias !1386
  %i.if = zext i1 %i.id to i64
  %i.ig = add i64 %.sroa.23.1.i.i51, %i.if        ; 4 uses
  %.sroa.13.1.sroa.gep26.i.i58 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i52, i64 16
  br i1 %i.ia, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB3i_9WordPieceNtNtB3m_9tokenizer5Model4save0E0E0EB3m_.exit.i, label %.preheader.i.i47

bb.x:                                             ; preds = %bb.x, %.lr.ph.i.i60
  %.sroa.13.036.i.i61 = phi ptr [ %.sroa.13.033.i.i45, %.lr.ph.i.i60 ], [ %.sroa.13.0.i.i66, %bb.x ] ; 2 uses
  %.sroa.015.035.i.i62 = phi ptr [ %i.ht, %.lr.ph.i.i60 ], [ %i.in, %bb.x ] ; 5 uses
  %.sroa.23.034.i.i63 = phi i64 [ 0, %.lr.ph.i.i60 ], [ %i.it, %bb.x ] ; 2 uses
  %i.ih = getelementptr i8, ptr %.sroa.015.035.i.i62, i64 24
  %.val.i11.i.i64 = load ptr, ptr %i.ih, align 8, !alias.scope !1383, !noalias !1389, !nonnull !3, !align !4, !noundef !3
  %i.ii = load i32, ptr %.val.i11.i.i64, align 4, !noalias !1385, !noundef !3
  %i.ij = icmp uge i32 %i.hz, %i.ii
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %.sroa.23.034.i.i63 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.035.i.i62, ptr noundef nonnull align 8 dereferenceable(16) %i.ik, i64 16, i1 false), !alias.scope !1383, !noalias !1389
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ik, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.036.i.i61, i64 16, i1 false), !alias.scope !1383, !noalias !1389
  %i.il = zext i1 %i.ij to i64
  %i.im = add i64 %.sroa.23.034.i.i63, %i.il      ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.015.035.i.i62, i64 32 ; 3 uses
  %i.io = getelementptr i8, ptr %.sroa.015.035.i.i62, i64 40
  %.val.i13.i.i65 = load ptr, ptr %i.io, align 8, !alias.scope !1383, !noalias !1390, !nonnull !3, !align !4, !noundef !3
  %i.ip = load i32, ptr %.val.i13.i.i65, align 4, !noalias !1391, !noundef !3
  %i.iq = icmp uge i32 %i.hz, %i.ip
  %i.ir = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %i.im ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.036.i.i61, ptr noundef nonnull align 8 dereferenceable(16) %i.ir, i64 16, i1 false), !alias.scope !1383, !noalias !1390
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ir, ptr noundef nonnull align 8 dereferenceable(16) %i.in, i64 16, i1 false), !alias.scope !1383, !noalias !1390
  %i.is = zext i1 %i.iq to i64
  %i.it = add i64 %i.im, %i.is                    ; 2 uses
  %.sroa.13.0.i.i66 = getelementptr inbounds nuw i8, ptr %.sroa.015.035.i.i62, i64 48 ; 3 uses
  %i.iu = icmp ult ptr %.sroa.13.0.i.i66, %i.hw
  br i1 %i.iu, label %bb.x, label %.preheader.i.i47.preheader

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB3i_9WordPieceNtNtB3m_9tokenizer5Model4save0E0E0EB3m_.exit.i: ; preds = %.preheader.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1382
  %.not7.i59 = icmp ult i64 %i.ig, %.sroa.15.091158
  br i1 %.not7.i59, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB3i_9WordPieceNtNtB3m_9tokenizer5Model4save0E0E0EB3m_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.z:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB3i_9WordPieceNtNtB3m_9tokenizer5Model4save0E0E0EB3m_.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE14swap_uncheckedCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %.sroa.0.092157, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.091158, i64 noundef 0, i64 noundef %i.ig, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  %i.iv = add nuw nsw i64 %i.ig, 1                ; 2 uses
  %i.iw = sub nuw nsw i64 %.sroa.15.091158, %i.iv
  %i.ix = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.092157, i64 %i.iv
  br label %.backedge

.backedge:                                        ; preds = %bb.z, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.023.0.be = phi ptr [ %i.hj, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit ], [ null, %bb.z ]
  %.sroa.15.0.be = phi i64 [ %i.hm, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit ], [ %i.iw, %bb.z ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.hk, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit ], [ %i.ix, %bb.z ] ; 3 uses
  %i.iy = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.iy, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTRTmmERmENCINvMB8_SB17_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1Z_3BPENtNtB25_9tokenizer5Model4saves_0E0EB25_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(16) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = alloca [768 x i8], align 8               ; 20 uses
  %i.d = icmp samesign ult i64 %1, 33
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = icmp eq i32 %3, 0
  br i1 %i.e, label %._crit_edge162, label %.lr.ph161

bb.b:                                             ; preds = %.backedge
  %i.f = icmp eq i32 %i.fm, 0
  br i1 %i.f, label %._crit_edge162, label %.lr.ph161

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 9 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1437
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  %i.g = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.g, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTRTmmERmENCINvMB8_SB1f_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB27_3BPENtNtB2d_9tokenizer5Model4saves_0E0EB2d_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.h = lshr i64 %.sroa.15.0.lcssa, 1            ; 12 uses
  %i.i = icmp samesign ugt i64 %.sroa.15.0.lcssa, 15
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  br i1 %i.j, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.sroa.15.0.lcssa ; 2 uses
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableTRTmmERmENCINvMB8_SB19_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB21_3BPENtNtB27_9tokenizer5Model4saves_0E0EB27_(ptr noundef nonnull align 8 %.sroa.0.0.lcssa, ptr noundef nonnull align 8 %i.c, ptr noundef %i.k)
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.h
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableTRTmmERmENCINvMB8_SB19_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB21_3BPENtNtB27_9tokenizer5Model4saves_0E0EB27_(ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.n)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 24
  %.val8.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !1440, !nonnull !3, !align !4, !noundef !3
  %i.p = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 8
  %.val9.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !1440, !nonnull !3, !align !4, !noundef !3
  %i.q = load i32, ptr %.val8.i.i.i, align 4, !noalias !1441, !noundef !3
  %i.r = load i32, ptr %.val9.i.i.i, align 4, !noalias !1441, !noundef !3
  %i.s = icmp ult i32 %i.q, %i.r                  ; 2 uses
  %i.t = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 56
  %.val6.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !1440, !nonnull !3, !align !4, !noundef !3
  %i.u = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 40
  %.val7.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !1440, !nonnull !3, !align !4, !noundef !3
  %i.v = load i32, ptr %.val6.i.i.i, align 4, !noalias !1441, !noundef !3
  %i.w = load i32, ptr %.val7.i.i.i, align 4, !noalias !1441, !noundef !3
  %i.x = icmp ult i32 %i.v, %i.w                  ; 2 uses
  %i.y = zext i1 %i.s to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.y ; 3 uses
  %i.aa = xor i1 %i.s, true
  %i.ab = zext i1 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.ab ; 4 uses
  %i.ad = select i1 %i.x, i64 3, i64 2
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.ad ; 4 uses
  %i.af = select i1 %i.x, i64 2, i64 3
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.af ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ae, i64 8
  %.val4.i.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !1440, !nonnull !3, !align !4, !noundef !3
  %i.ai = getelementptr i8, ptr %i.z, i64 8
  %.val5.i.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !1440, !nonnull !3, !align !4, !noundef !3
  %i.aj = load i32, ptr %.val4.i.i.i, align 4, !noalias !1441, !noundef !3
  %i.ak = load i32, ptr %.val5.i.i.i, align 4, !noalias !1441, !noundef !3
  %i.al = icmp ult i32 %i.aj, %i.ak               ; 3 uses
  %i.am = getelementptr i8, ptr %i.ag, i64 8
  %.val2.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !1440, !nonnull !3, !align !4, !noundef !3
  %i.an = getelementptr i8, ptr %i.ac, i64 8
  %.val3.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !1440, !nonnull !3, !align !4, !noundef !3
  %i.ao = load i32, ptr %.val2.i.i.i, align 4, !noalias !1441, !noundef !3
  %i.ap = load i32, ptr %.val3.i.i.i, align 4, !noalias !1441, !noundef !3
  %i.aq = icmp ult i32 %i.ao, %i.ap               ; 3 uses
  %i.ar = select i1 %i.al, ptr %i.ae, ptr %i.z, !unpredictable !3
  %i.as = select i1 %i.aq, ptr %i.ac, ptr %i.ag, !unpredictable !3
  %i.at = select i1 %i.aq, ptr %i.ae, ptr %i.ac, !unpredictable !3
  %i.au = select i1 %i.al, ptr %i.z, ptr %i.at, !unpredictable !3 ; 3 uses
  %i.av = select i1 %i.al, ptr %i.ac, ptr %i.ae, !unpredictable !3
  %i.aw = select i1 %i.aq, ptr %i.ag, ptr %i.av, !unpredictable !3 ; 3 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %.val.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !1440, !nonnull !3, !align !4, !noundef !3
  %i.ay = getelementptr i8, ptr %i.au, i64 8
  %.val1.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !1440, !nonnull !3, !align !4, !noundef !3
  %i.az = load i32, ptr %.val.i.i.i, align 4, !noalias !1441, !noundef !3
  %i.ba = load i32, ptr %.val1.i.i.i, align 4, !noalias !1441, !noundef !3
  %i.bb = icmp ult i32 %i.az, %i.ba               ; 2 uses
  %i.bc = select i1 %i.bb, ptr %i.aw, ptr %i.au, !unpredictable !3
  %i.bd = select i1 %i.bb, ptr %i.au, ptr %i.aw, !unpredictable !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !alias.scope !1442
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !alias.scope !1442
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !alias.scope !1442
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !alias.scope !1442
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.h ; 8 uses
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.h ; 4 uses
  %i.bj = getelementptr i8, ptr %i.bh, i64 24
  %.val8.i30.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !1440, !nonnull !3, !align !4, !noundef !3
  %i.bk = getelementptr i8, ptr %i.bh, i64 8
  %.val9.i31.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !1440, !nonnull !3, !align !4, !noundef !3
  %i.bl = load i32, ptr %.val8.i30.i.i, align 4, !noalias !1441, !noundef !3
  %i.bm = load i32, ptr %.val9.i31.i.i, align 4, !noalias !1441, !noundef !3
  %i.bn = icmp ult i32 %i.bl, %i.bm               ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bh, i64 56
  %.val6.i32.i.i = load ptr, ptr %i.bo, align 8, !alias.scope !1440, !nonnull !3, !align !4, !noundef !3
  %i.bp = getelementptr i8, ptr %i.bh, i64 40
  %.val7.i33.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !1440, !nonnull !3, !align !4, !noundef !3
  %i.bq = load i32, ptr %.val6.i32.i.i, align 4, !noalias !1441, !noundef !3
  %i.br = load i32, ptr %.val7.i33.i.i, align 4, !noalias !1441, !noundef !3
  %i.bs = icmp ult i32 %i.bq, %i.br               ; 2 uses
  %i.bt = zext i1 %i.bn to i64
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bt ; 3 uses
  %i.bv = xor i1 %i.bn, true
  %i.bw = zext i1 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bw ; 4 uses
  %i.by = select i1 %i.bs, i64 3, i64 2
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.by ; 4 uses
  %i.ca = select i1 %i.bs, i64 2, i64 3
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.ca ; 3 uses
  %i.cc = getelementptr i8, ptr %i.bz, i64 8
  %.val4.i34.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !1440, !nonnull !3, !align !4, !noundef !3
  %i.cd = getelementptr i8, ptr %i.bu, i64 8
  %.val5.i35.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !1440, !nonnull !3, !align !4, !noundef !3
  %i.ce = load i32, ptr %.val4.i34.i.i, align 4, !noalias !1441, !noundef !3
  %i.cf = load i32, ptr %.val5.i35.i.i, align 4, !noalias !1441, !noundef !3
  %i.cg = icmp ult i32 %i.ce, %i.cf               ; 3 uses
  %i.ch = getelementptr i8, ptr %i.cb, i64 8
  %.val2.i36.i.i = load ptr, ptr %i.ch, align 8, !alias.scope !1440, !nonnull !3, !align !4, !noundef !3
  %i.ci = getelementptr i8, ptr %i.bx, i64 8
  %.val3.i37.i.i = load ptr, ptr %i.ci, align 8, !alias.scope !1440, !nonnull !3, !align !4, !noundef !3
  %i.cj = load i32, ptr %.val2.i36.i.i, align 4, !noalias !1441, !noundef !3
  %i.ck = load i32, ptr %.val3.i37.i.i, align 4, !noalias !1441, !noundef !3
  %i.cl = icmp ult i32 %i.cj, %i.ck               ; 3 uses
  %i.cm = select i1 %i.cg, ptr %i.bz, ptr %i.bu, !unpredictable !3
  %i.cn = select i1 %i.cl, ptr %i.bx, ptr %i.cb, !unpredictable !3
  %i.co = select i1 %i.cl, ptr %i.bz, ptr %i.bx, !unpredictable !3
  %i.cp = select i1 %i.cg, ptr %i.bu, ptr %i.co, !unpredictable !3 ; 3 uses
  %i.cq = select i1 %i.cg, ptr %i.bx, ptr %i.bz, !unpredictable !3
  %i.cr = select i1 %i.cl, ptr %i.cb, ptr %i.cq, !unpredictable !3 ; 3 uses
  %i.cs = getelementptr i8, ptr %i.cr, i64 8
  %.val.i38.i.i = load ptr, ptr %i.cs, align 8, !alias.scope !1440, !nonnull !3, !align !4, !noundef !3
  %i.ct = getelementptr i8, ptr %i.cp, i64 8
  %.val1.i39.i.i = load ptr, ptr %i.ct, align 8, !alias.scope !1440, !nonnull !3, !align !4, !noundef !3
  %i.cu = load i32, ptr %.val.i38.i.i, align 4, !noalias !1441, !noundef !3
  %i.cv = load i32, ptr %.val1.i39.i.i, align 4, !noalias !1441, !noundef !3
  %i.cw = icmp ult i32 %i.cu, %i.cv               ; 2 uses
  %i.cx = select i1 %i.cw, ptr %i.cr, ptr %i.cp, !unpredictable !3
  %i.cy = select i1 %i.cw, ptr %i.cp, ptr %i.cr, !unpredictable !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i64 16, i1 false), !alias.scope !1442
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i64 16, i1 false), !alias.scope !1442
  %i.da = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i64 16, i1 false), !alias.scope !1442
  %i.db = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i64 16, i1 false), !alias.scope !1442
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.lcssa, i64 16, i1 false), !alias.scope !1442
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.h
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i64 16, i1 false), !alias.scope !1442
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.0.i.i = phi i64 [ 8, %bb.e ], [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.de = sub nuw nsw i64 %.sroa.15.0.lcssa, %i.h ; 2 uses
  %i.df = icmp samesign ult i64 %.sroa.0.0.i.i, %i.h
  br i1 %i.df, label %.lr.ph.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTRTmmERmENCINvMB8_SB18_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB20_3BPENtNtB26_9tokenizer5Model4saves_0E0EB26_.exit.i.i, %bb.h
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.h
  %i.dh = getelementptr [16 x i8], ptr %i.c, i64 %i.h ; 6 uses
  %i.di = icmp samesign ult i64 %.sroa.0.0.i.i, %i.de
  br i1 %i.di, label %.lr.ph.1.i.i, label %.loopexit.1.i.i

.lr.ph.1.i.i:                                     ; preds = %.loopexit.i.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTRTmmERmENCINvMB8_SB18_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB20_3BPENtNtB26_9tokenizer5Model4saves_0E0EB26_.exit.1.i.i
  %.sroa.05.08.1.i.i = phi i64 [ %i.dw, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTRTmmERmENCINvMB8_SB18_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB20_3BPENtNtB26_9tokenizer5Model4saves_0E0EB26_.exit.1.i.i ], [ %.sroa.0.0.i.i, %.loopexit.i.i ] ; 4 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTRTmmERmENCINvMB8_SB17_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1Z_3BPENtNtB25_9tokenizer5Model4saves_0E0EB25_:bb.a
  %i.ge = ptrtoint ptr %.sroa.0.092157 to i64
  %i.gf = sub nuw i64 %i.gd, %i.ge                ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.gf, 4          ; 3 uses
  %i.gg = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.091158
  tail call void @llvm.assume(i1 %i.gg)
  %.not = icmp eq ptr %.sroa.023.090159, null
  br i1 %.not, label %bb.s, label %bb.v

bb.r:                                             ; preds = %._crit_edge162, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTRTmmERmENCINvMB8_SB1f_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB27_3BPENtNtB2d_9tokenizer5Model4saves_0E0EB2d_.exit
  ret void

bb.s:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTRTmmERmENCINvMB8_SB15_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1X_3BPENtNtB23_9tokenizer5Model4saves_0E0EB23_.exit, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE14swap_uncheckedCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %.sroa.0.092157, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.091158, i64 noundef 0, i64 noundef range(i64 0, 576460752303423487) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0.092157, i64 16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1454
  %i.gi = load <2 x ptr>, ptr %i.gh, align 8, !alias.scope !1455
  store <2 x ptr> %i.gi, ptr %i.b, align 16, !noalias !1454
  %i.gj = getelementptr [16 x i8], ptr %.sroa.0.092157, i64 %.sroa.15.091158 ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 -16    ; 2 uses
  %.sroa.13.033.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.092157, i64 32 ; 3 uses
  %i.gl = icmp ult ptr %.sroa.13.033.i.i, %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.092157, i64 8
  %.val1.i12.i.i = load ptr, ptr %i.gm, align 8, !alias.scope !1456, !noalias !3 ; 2 uses
  br i1 %i.gl, label %.lr.ph.i.i37, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.t, %bb.s
  %.sroa.23.1.i.i.ph = phi i64 [ 0, %bb.s ], [ %i.hh, %bb.t ]
  %.sroa.13.1.i.i.ph = phi ptr [ %.sroa.13.033.i.i, %bb.s ], [ %.sroa.13.0.i.i, %bb.t ]
  %.sroa.015.1.i.i.ph = phi ptr [ %i.gh, %bb.s ], [ %i.hb, %bb.t ]
  br label %.preheader.i.i

.lr.ph.i.i37:                                     ; preds = %bb.s
  %i.gn = load i32, ptr %.val1.i12.i.i, align 4, !noalias !1457, !noundef !3 ; 2 uses
  br label %bb.t

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.23.1.i.i = phi i64 [ %i.gu, %.preheader.i.i ], [ %.sroa.23.1.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.1.sroa.gep26.i.i, %.preheader.i.i ], [ %.sroa.13.1.i.i.ph, %.preheader.i.i.preheader ] ; 5 uses
  %.sroa.015.1.i.i = phi ptr [ %.sroa.13.1.i.i, %.preheader.i.i ], [ %.sroa.015.1.i.i.ph, %.preheader.i.i.preheader ]
  %i.go = icmp eq ptr %.sroa.13.1.i.i, %i.gj      ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.go, ptr %i.b, ptr %.sroa.13.1.i.i
  %.sroa.01.0.sroa.sel.i.i.v.sroa.sel.v = select i1 %i.go, ptr %i.b, ptr %.sroa.13.1.i.i
  %.sroa.01.0.sroa.sel.i.i.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.i.i.v.sroa.sel.v, i64 8
  %.val.i.i.i36 = load ptr, ptr %.sroa.01.0.sroa.sel.i.i.v.sroa.sel, align 8, !noalias !1458, !nonnull !3, !align !4, !noundef !3
  %i.gp = load i32, ptr %.val.i.i.i36, align 4, !noalias !1459, !noundef !3
  %i.gq = load i32, ptr %.val1.i12.i.i, align 4, !noalias !1459, !noundef !3
  %i.gr = icmp ult i32 %i.gp, %i.gq
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %i.gh, i64 %.sroa.23.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gs, i64 16, i1 false), !alias.scope !1455, !noalias !1460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gs, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i, i64 16, i1 false), !noalias !1458
  %i.gt = zext i1 %i.gr to i64
  %i.gu = add i64 %.sroa.23.1.i.i, %i.gt          ; 6 uses
  %.sroa.13.1.sroa.gep26.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i, i64 16
  br i1 %i.go, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2p_3BPENtNtB2v_9tokenizer5Model4saves_0E0EB2v_.exit.i, label %.preheader.i.i

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.i37
  %.sroa.13.036.i.i = phi ptr [ %.sroa.13.033.i.i, %.lr.ph.i.i37 ], [ %.sroa.13.0.i.i, %bb.t ] ; 2 uses
  %.sroa.015.035.i.i = phi ptr [ %i.gh, %.lr.ph.i.i37 ], [ %i.hb, %bb.t ] ; 5 uses
  %.sroa.23.034.i.i = phi i64 [ 0, %.lr.ph.i.i37 ], [ %i.hh, %bb.t ] ; 2 uses
  %i.gv = getelementptr i8, ptr %.sroa.015.035.i.i, i64 24
  %.val.i11.i.i = load ptr, ptr %i.gv, align 8, !alias.scope !1455, !noalias !1461, !nonnull !3, !align !4, !noundef !3
  %i.gw = load i32, ptr %.val.i11.i.i, align 4, !noalias !1457, !noundef !3
  %i.gx = icmp ult i32 %i.gw, %i.gn
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.gh, i64 %.sroa.23.034.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.035.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i64 16, i1 false), !alias.scope !1455, !noalias !1461
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.036.i.i, i64 16, i1 false), !alias.scope !1455, !noalias !1461
  %i.gz = zext i1 %i.gx to i64
  %i.ha = add i64 %.sroa.23.034.i.i, %i.gz        ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.015.035.i.i, i64 32 ; 3 uses
  %i.hc = getelementptr i8, ptr %.sroa.015.035.i.i, i64 40
  %.val.i13.i.i = load ptr, ptr %i.hc, align 8, !alias.scope !1455, !noalias !1462, !nonnull !3, !align !4, !noundef !3
  %i.hd = load i32, ptr %.val.i13.i.i, align 4, !noalias !1463, !noundef !3
  %i.he = icmp ult i32 %i.hd, %i.gn
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %i.gh, i64 %i.ha ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.036.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.hf, i64 16, i1 false), !alias.scope !1455, !noalias !1462
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hf, ptr noundef nonnull align 8 dereferenceable(16) %i.hb, i64 16, i1 false), !alias.scope !1455, !noalias !1462
  %i.hg = zext i1 %i.he to i64
  %i.hh = add i64 %i.ha, %i.hg                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.035.i.i, i64 48 ; 3 uses
  %i.hi = icmp ult ptr %.sroa.13.0.i.i, %i.gk
  br i1 %i.hi, label %bb.t, label %.preheader.i.i.preheader

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2p_3BPENtNtB2v_9tokenizer5Model4saves_0E0EB2v_.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1454
  %.not7.i = icmp ult i64 %i.gu, %.sroa.15.091158
  br i1 %.not7.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit, label %bb.u

bb.u:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2p_3BPENtNtB2v_9tokenizer5Model4saves_0E0EB2v_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2p_3BPENtNtB2v_9tokenizer5Model4saves_0E0EB2v_.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE14swap_uncheckedCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %.sroa.0.092157, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.091158, i64 noundef 0, i64 noundef %i.gu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.092157, i64 %i.gu ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = xor i64 %i.gu, -1
  %i.hm = add i64 %.sroa.15.091158, %i.hl
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTRTmmERmENCINvMB8_SB17_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1Z_3BPENtNtB25_9tokenizer5Model4saves_0E0EB25_(ptr noalias noundef nonnull align 8 %.sroa.0.092157, i64 noundef %i.gu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %.sroa.023.090159, i32 noundef %i.fm, ptr noalias noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.v:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTRTmmERmENCINvMB8_SB15_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1X_3BPENtNtB23_9tokenizer5Model4saves_0E0EB23_.exit
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0.092157, i64 %i.gf
  %i.ho = getelementptr i8, ptr %.sroa.023.090159, i64 8
  %.sroa.023.0.val = load ptr, ptr %i.ho, align 8, !nonnull !3, !align !4, !noundef !3
  %i.hp = getelementptr i8, ptr %i.hn, i64 8
  %.val = load ptr, ptr %i.hp, align 8, !nonnull !3, !align !4, !noundef !3
  %i.hq = load i32, ptr %.sroa.023.0.val, align 4, !noundef !3
  %i.hr = load i32, ptr %.val, align 4, !noundef !3
  %i.hs = icmp ult i32 %i.hq, %i.hr
  br i1 %i.hs, label %bb.s, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE14swap_uncheckedCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %.sroa.0.092157, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.091158, i64 noundef 0, i64 noundef range(i64 0, 576460752303423487) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.0.092157, i64 16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1466)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1467
  %i.hu = load <2 x ptr>, ptr %i.ht, align 8, !alias.scope !1468
  store <2 x ptr> %i.hu, ptr %i.a, align 16, !noalias !1467
  %i.hv = getelementptr [16 x i8], ptr %.sroa.0.092157, i64 %.sroa.15.091158 ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 -16    ; 2 uses
  %.sroa.13.033.i.i45 = getelementptr inbounds nuw i8, ptr %.sroa.0.092157, i64 32 ; 3 uses
  %i.hx = icmp ult ptr %.sroa.13.033.i.i45, %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0.092157, i64 8
  %.val1.i12.i.i46 = load ptr, ptr %i.hy, align 8, !alias.scope !1469, !noalias !3 ; 2 uses
  br i1 %i.hx, label %.lr.ph.i.i60, label %.preheader.i.i47.preheader

.preheader.i.i47.preheader:                       ; preds = %bb.x, %bb.w
  %.sroa.23.1.i.i51.ph = phi i64 [ 0, %bb.w ], [ %i.it, %bb.x ]
  %.sroa.13.1.i.i52.ph = phi ptr [ %.sroa.13.033.i.i45, %bb.w ], [ %.sroa.13.0.i.i66, %bb.x ]
  %.sroa.015.1.i.i53.ph = phi ptr [ %i.ht, %bb.w ], [ %i.in, %bb.x ]
  br label %.preheader.i.i47

.lr.ph.i.i60:                                     ; preds = %bb.w
  %i.hz = load i32, ptr %.val1.i12.i.i46, align 4, !noalias !1470, !noundef !3 ; 2 uses
  br label %bb.x

.preheader.i.i47:                                 ; preds = %.preheader.i.i47.preheader, %.preheader.i.i47
  %.sroa.23.1.i.i51 = phi i64 [ %i.ig, %.preheader.i.i47 ], [ %.sroa.23.1.i.i51.ph, %.preheader.i.i47.preheader ] ; 2 uses
  %.sroa.13.1.i.i52 = phi ptr [ %.sroa.13.1.sroa.gep26.i.i58, %.preheader.i.i47 ], [ %.sroa.13.1.i.i52.ph, %.preheader.i.i47.preheader ] ; 5 uses
  %.sroa.015.1.i.i53 = phi ptr [ %.sroa.13.1.i.i52, %.preheader.i.i47 ], [ %.sroa.015.1.i.i53.ph, %.preheader.i.i47.preheader ]
  %i.ia = icmp eq ptr %.sroa.13.1.i.i52, %i.hv    ; 3 uses
  %.sroa.01.0.i.i54 = select i1 %i.ia, ptr %i.a, ptr %.sroa.13.1.i.i52
  %.sroa.01.0.sroa.sel.i.i56.v.sroa.sel.v = select i1 %i.ia, ptr %i.a, ptr %.sroa.13.1.i.i52
  %.sroa.01.0.sroa.sel.i.i56.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.i.i56.v.sroa.sel.v, i64 8
  %.val.i.i.i57 = load ptr, ptr %.sroa.01.0.sroa.sel.i.i56.v.sroa.sel, align 8, !noalias !1471, !nonnull !3, !align !4, !noundef !3
  %i.ib = load i32, ptr %.val1.i12.i.i46, align 4, !noalias !1472, !noundef !3
  %i.ic = load i32, ptr %.val.i.i.i57, align 4, !noalias !1472, !noundef !3
  %i.id = icmp uge i32 %i.ib, %i.ic
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %.sroa.23.1.i.i51 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.1.i.i53, ptr noundef nonnull align 8 dereferenceable(16) %i.ie, i64 16, i1 false), !alias.scope !1468, !noalias !1473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ie, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i54, i64 16, i1 false), !noalias !1471
  %i.if = zext i1 %i.id to i64
  %i.ig = add i64 %.sroa.23.1.i.i51, %i.if        ; 4 uses
  %.sroa.13.1.sroa.gep26.i.i58 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i52, i64 16
  br i1 %i.ia, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2L_3BPENtNtB2R_9tokenizer5Model4saves_0E0E0EB2R_.exit.i, label %.preheader.i.i47

bb.x:                                             ; preds = %bb.x, %.lr.ph.i.i60
  %.sroa.13.036.i.i61 = phi ptr [ %.sroa.13.033.i.i45, %.lr.ph.i.i60 ], [ %.sroa.13.0.i.i66, %bb.x ] ; 2 uses
  %.sroa.015.035.i.i62 = phi ptr [ %i.ht, %.lr.ph.i.i60 ], [ %i.in, %bb.x ] ; 5 uses
  %.sroa.23.034.i.i63 = phi i64 [ 0, %.lr.ph.i.i60 ], [ %i.it, %bb.x ] ; 2 uses
  %i.ih = getelementptr i8, ptr %.sroa.015.035.i.i62, i64 24
  %.val.i11.i.i64 = load ptr, ptr %i.ih, align 8, !alias.scope !1468, !noalias !1474, !nonnull !3, !align !4, !noundef !3
  %i.ii = load i32, ptr %.val.i11.i.i64, align 4, !noalias !1470, !noundef !3
  %i.ij = icmp uge i32 %i.hz, %i.ii
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %.sroa.23.034.i.i63 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.035.i.i62, ptr noundef nonnull align 8 dereferenceable(16) %i.ik, i64 16, i1 false), !alias.scope !1468, !noalias !1474
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ik, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.036.i.i61, i64 16, i1 false), !alias.scope !1468, !noalias !1474
  %i.il = zext i1 %i.ij to i64
  %i.im = add i64 %.sroa.23.034.i.i63, %i.il      ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.015.035.i.i62, i64 32 ; 3 uses
  %i.io = getelementptr i8, ptr %.sroa.015.035.i.i62, i64 40
  %.val.i13.i.i65 = load ptr, ptr %i.io, align 8, !alias.scope !1468, !noalias !1475, !nonnull !3, !align !4, !noundef !3
  %i.ip = load i32, ptr %.val.i13.i.i65, align 4, !noalias !1476, !noundef !3
  %i.iq = icmp uge i32 %i.hz, %i.ip
  %i.ir = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %i.im ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.036.i.i61, ptr noundef nonnull align 8 dereferenceable(16) %i.ir, i64 16, i1 false), !alias.scope !1468, !noalias !1475
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ir, ptr noundef nonnull align 8 dereferenceable(16) %i.in, i64 16, i1 false), !alias.scope !1468, !noalias !1475
  %i.is = zext i1 %i.iq to i64
  %i.it = add i64 %i.im, %i.is                    ; 2 uses
  %.sroa.13.0.i.i66 = getelementptr inbounds nuw i8, ptr %.sroa.015.035.i.i62, i64 48 ; 3 uses
  %i.iu = icmp ult ptr %.sroa.13.0.i.i66, %i.hw
  br i1 %i.iu, label %bb.x, label %.preheader.i.i47.preheader

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2L_3BPENtNtB2R_9tokenizer5Model4saves_0E0E0EB2R_.exit.i: ; preds = %.preheader.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1467
  %.not7.i59 = icmp ult i64 %i.ig, %.sroa.15.091158
  br i1 %.not7.i59, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2L_3BPENtNtB2R_9tokenizer5Model4saves_0E0E0EB2R_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.z:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2L_3BPENtNtB2R_9tokenizer5Model4saves_0E0E0EB2R_.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE14swap_uncheckedCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %.sroa.0.092157, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.091158, i64 noundef 0, i64 noundef %i.ig, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  %i.iv = add nuw nsw i64 %i.ig, 1                ; 2 uses
  %i.iw = sub nuw nsw i64 %.sroa.15.091158, %i.iv
  %i.ix = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.092157, i64 %i.iv
  br label %.backedge

.backedge:                                        ; preds = %bb.z, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.023.0.be = phi ptr [ %i.hj, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit ], [ null, %bb.z ]
  %.sroa.15.0.be = phi i64 [ %i.hm, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit ], [ %i.iw, %bb.z ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.hk, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit ], [ %i.ix, %bb.z ] ; 3 uses
  %i.iy = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.iy, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTRcRjENCINvMB8_SB17_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1W_10BpeTrainer16compute_alphabets_0E0EB22_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(16) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = alloca [768 x i8], align 8               ; 20 uses
  %i.d = icmp samesign ult i64 %1, 33
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = icmp eq i32 %3, 0
  br i1 %i.e, label %._crit_edge162, label %.lr.ph161

bb.b:                                             ; preds = %.backedge
  %i.f = icmp eq i32 %i.fm, 0
  br i1 %i.f, label %._crit_edge162, label %.lr.ph161

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 9 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1522)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1522
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1524)
  %i.g = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.g, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTRcRjENCINvMB8_SB1f_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB24_10BpeTrainer16compute_alphabets_0E0EB2a_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.h = lshr i64 %.sroa.15.0.lcssa, 1            ; 12 uses
  %i.i = icmp samesign ugt i64 %.sroa.15.0.lcssa, 15
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  br i1 %i.j, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.sroa.15.0.lcssa ; 2 uses
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableTRcRjENCINvMB8_SB19_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1Y_10BpeTrainer16compute_alphabets_0E0EB24_(ptr noundef nonnull align 8 %.sroa.0.0.lcssa, ptr noundef nonnull align 8 %i.c, ptr noundef %i.k)
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.h
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableTRcRjENCINvMB8_SB19_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1Y_10BpeTrainer16compute_alphabets_0E0EB24_(ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.n)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 24
  %.val8.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !1525, !nonnull !3, !align !5, !noundef !3
  %i.p = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 8
  %.val9.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !1525, !nonnull !3, !align !5, !noundef !3
  %i.q = load i64, ptr %.val8.i.i.i, align 8, !noalias !1526, !noundef !3
  %i.r = load i64, ptr %.val9.i.i.i, align 8, !noalias !1526, !noundef !3
  %i.s = icmp ult i64 %i.q, %i.r                  ; 2 uses
  %i.t = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 56
  %.val6.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !1525, !nonnull !3, !align !5, !noundef !3
  %i.u = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 40
  %.val7.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !1525, !nonnull !3, !align !5, !noundef !3
  %i.v = load i64, ptr %.val6.i.i.i, align 8, !noalias !1526, !noundef !3
  %i.w = load i64, ptr %.val7.i.i.i, align 8, !noalias !1526, !noundef !3
  %i.x = icmp ult i64 %i.v, %i.w                  ; 2 uses
  %i.y = zext i1 %i.s to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.y ; 3 uses
  %i.aa = xor i1 %i.s, true
  %i.ab = zext i1 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.ab ; 4 uses
  %i.ad = select i1 %i.x, i64 3, i64 2
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.ad ; 4 uses
  %i.af = select i1 %i.x, i64 2, i64 3
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.af ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ae, i64 8
  %.val4.i.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !1525, !nonnull !3, !align !5, !noundef !3
  %i.ai = getelementptr i8, ptr %i.z, i64 8
  %.val5.i.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !1525, !nonnull !3, !align !5, !noundef !3
  %i.aj = load i64, ptr %.val4.i.i.i, align 8, !noalias !1526, !noundef !3
  %i.ak = load i64, ptr %.val5.i.i.i, align 8, !noalias !1526, !noundef !3
  %i.al = icmp ult i64 %i.aj, %i.ak               ; 3 uses
  %i.am = getelementptr i8, ptr %i.ag, i64 8
  %.val2.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !1525, !nonnull !3, !align !5, !noundef !3
  %i.an = getelementptr i8, ptr %i.ac, i64 8
  %.val3.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !1525, !nonnull !3, !align !5, !noundef !3
  %i.ao = load i64, ptr %.val2.i.i.i, align 8, !noalias !1526, !noundef !3
  %i.ap = load i64, ptr %.val3.i.i.i, align 8, !noalias !1526, !noundef !3
  %i.aq = icmp ult i64 %i.ao, %i.ap               ; 3 uses
  %i.ar = select i1 %i.al, ptr %i.ae, ptr %i.z, !unpredictable !3
  %i.as = select i1 %i.aq, ptr %i.ac, ptr %i.ag, !unpredictable !3
  %i.at = select i1 %i.aq, ptr %i.ae, ptr %i.ac, !unpredictable !3
  %i.au = select i1 %i.al, ptr %i.z, ptr %i.at, !unpredictable !3 ; 3 uses
  %i.av = select i1 %i.al, ptr %i.ac, ptr %i.ae, !unpredictable !3
  %i.aw = select i1 %i.aq, ptr %i.ag, ptr %i.av, !unpredictable !3 ; 3 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %.val.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !1525, !nonnull !3, !align !5, !noundef !3
  %i.ay = getelementptr i8, ptr %i.au, i64 8
  %.val1.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !1525, !nonnull !3, !align !5, !noundef !3
  %i.az = load i64, ptr %.val.i.i.i, align 8, !noalias !1526, !noundef !3
  %i.ba = load i64, ptr %.val1.i.i.i, align 8, !noalias !1526, !noundef !3
  %i.bb = icmp ult i64 %i.az, %i.ba               ; 2 uses
  %i.bc = select i1 %i.bb, ptr %i.aw, ptr %i.au, !unpredictable !3
  %i.bd = select i1 %i.bb, ptr %i.au, ptr %i.aw, !unpredictable !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !alias.scope !1527
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !alias.scope !1527
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !alias.scope !1527
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !alias.scope !1527
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.h ; 8 uses
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.h ; 4 uses
  %i.bj = getelementptr i8, ptr %i.bh, i64 24
  %.val8.i30.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !1525, !nonnull !3, !align !5, !noundef !3
  %i.bk = getelementptr i8, ptr %i.bh, i64 8
  %.val9.i31.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !1525, !nonnull !3, !align !5, !noundef !3
  %i.bl = load i64, ptr %.val8.i30.i.i, align 8, !noalias !1526, !noundef !3
  %i.bm = load i64, ptr %.val9.i31.i.i, align 8, !noalias !1526, !noundef !3
  %i.bn = icmp ult i64 %i.bl, %i.bm               ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bh, i64 56
  %.val6.i32.i.i = load ptr, ptr %i.bo, align 8, !alias.scope !1525, !nonnull !3, !align !5, !noundef !3
  %i.bp = getelementptr i8, ptr %i.bh, i64 40
  %.val7.i33.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !1525, !nonnull !3, !align !5, !noundef !3
  %i.bq = load i64, ptr %.val6.i32.i.i, align 8, !noalias !1526, !noundef !3
  %i.br = load i64, ptr %.val7.i33.i.i, align 8, !noalias !1526, !noundef !3
  %i.bs = icmp ult i64 %i.bq, %i.br               ; 2 uses
  %i.bt = zext i1 %i.bn to i64
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bt ; 3 uses
  %i.bv = xor i1 %i.bn, true
  %i.bw = zext i1 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bw ; 4 uses
  %i.by = select i1 %i.bs, i64 3, i64 2
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.by ; 4 uses
  %i.ca = select i1 %i.bs, i64 2, i64 3
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.ca ; 3 uses
  %i.cc = getelementptr i8, ptr %i.bz, i64 8
  %.val4.i34.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !1525, !nonnull !3, !align !5, !noundef !3
  %i.cd = getelementptr i8, ptr %i.bu, i64 8
  %.val5.i35.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !1525, !nonnull !3, !align !5, !noundef !3
  %i.ce = load i64, ptr %.val4.i34.i.i, align 8, !noalias !1526, !noundef !3
  %i.cf = load i64, ptr %.val5.i35.i.i, align 8, !noalias !1526, !noundef !3
  %i.cg = icmp ult i64 %i.ce, %i.cf               ; 3 uses
  %i.ch = getelementptr i8, ptr %i.cb, i64 8
  %.val2.i36.i.i = load ptr, ptr %i.ch, align 8, !alias.scope !1525, !nonnull !3, !align !5, !noundef !3
  %i.ci = getelementptr i8, ptr %i.bx, i64 8
  %.val3.i37.i.i = load ptr, ptr %i.ci, align 8, !alias.scope !1525, !nonnull !3, !align !5, !noundef !3
  %i.cj = load i64, ptr %.val2.i36.i.i, align 8, !noalias !1526, !noundef !3
  %i.ck = load i64, ptr %.val3.i37.i.i, align 8, !noalias !1526, !noundef !3
  %i.cl = icmp ult i64 %i.cj, %i.ck               ; 3 uses
  %i.cm = select i1 %i.cg, ptr %i.bz, ptr %i.bu, !unpredictable !3
  %i.cn = select i1 %i.cl, ptr %i.bx, ptr %i.cb, !unpredictable !3
  %i.co = select i1 %i.cl, ptr %i.bz, ptr %i.bx, !unpredictable !3
  %i.cp = select i1 %i.cg, ptr %i.bu, ptr %i.co, !unpredictable !3 ; 3 uses
  %i.cq = select i1 %i.cg, ptr %i.bx, ptr %i.bz, !unpredictable !3
  %i.cr = select i1 %i.cl, ptr %i.cb, ptr %i.cq, !unpredictable !3 ; 3 uses
  %i.cs = getelementptr i8, ptr %i.cr, i64 8
  %.val.i38.i.i = load ptr, ptr %i.cs, align 8, !alias.scope !1525, !nonnull !3, !align !5, !noundef !3
  %i.ct = getelementptr i8, ptr %i.cp, i64 8
  %.val1.i39.i.i = load ptr, ptr %i.ct, align 8, !alias.scope !1525, !nonnull !3, !align !5, !noundef !3
  %i.cu = load i64, ptr %.val.i38.i.i, align 8, !noalias !1526, !noundef !3
  %i.cv = load i64, ptr %.val1.i39.i.i, align 8, !noalias !1526, !noundef !3
  %i.cw = icmp ult i64 %i.cu, %i.cv               ; 2 uses
  %i.cx = select i1 %i.cw, ptr %i.cr, ptr %i.cp, !unpredictable !3
  %i.cy = select i1 %i.cw, ptr %i.cp, ptr %i.cr, !unpredictable !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i64 16, i1 false), !alias.scope !1527
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i64 16, i1 false), !alias.scope !1527
  %i.da = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i64 16, i1 false), !alias.scope !1527
  %i.db = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i64 16, i1 false), !alias.scope !1527
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.lcssa, i64 16, i1 false), !alias.scope !1527
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.h
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i64 16, i1 false), !alias.scope !1527
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.0.i.i = phi i64 [ 8, %bb.e ], [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.de = sub nuw nsw i64 %.sroa.15.0.lcssa, %i.h ; 2 uses
  %i.df = icmp samesign ult i64 %.sroa.0.0.i.i, %i.h
  br i1 %i.df, label %.lr.ph.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTRcRjENCINvMB8_SB18_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1X_10BpeTrainer16compute_alphabets_0E0EB23_.exit.i.i, %bb.h
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.h
  %i.dh = getelementptr [16 x i8], ptr %i.c, i64 %i.h ; 6 uses
  %i.di = icmp samesign ult i64 %.sroa.0.0.i.i, %i.de
  br i1 %i.di, label %.lr.ph.1.i.i, label %.loopexit.1.i.i

.lr.ph.1.i.i:                                     ; preds = %.loopexit.i.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTRcRjENCINvMB8_SB18_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1X_10BpeTrainer16compute_alphabets_0E0EB23_.exit.1.i.i
  %.sroa.05.08.1.i.i = phi i64 [ %i.dw, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTRcRjENCINvMB8_SB18_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1X_10BpeTrainer16compute_alphabets_0E0EB23_.exit.1.i.i ], [ %.sroa.0.0.i.i, %.loopexit.i.i ] ; 4 uses
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTRcRjENCINvMB8_SB17_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1W_10BpeTrainer16compute_alphabets_0E0EB22_:bb.a
  %i.ge = ptrtoint ptr %.sroa.0.092157 to i64
  %i.gf = sub nuw i64 %i.gd, %i.ge                ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.gf, 4          ; 3 uses
  %i.gg = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.091158
  tail call void @llvm.assume(i1 %i.gg)
  %.not = icmp eq ptr %.sroa.023.090159, null
  br i1 %.not, label %bb.s, label %bb.v

bb.r:                                             ; preds = %._crit_edge162, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTRcRjENCINvMB8_SB1f_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB24_10BpeTrainer16compute_alphabets_0E0EB2a_.exit
  ret void

bb.s:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTRcRjENCINvMB8_SB15_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1U_10BpeTrainer16compute_alphabets_0E0EB20_.exit, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1536)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE14swap_uncheckedCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %.sroa.0.092157, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.091158, i64 noundef 0, i64 noundef range(i64 0, 576460752303423487) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0.092157, i64 16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1539
  %i.gi = load <2 x ptr>, ptr %i.gh, align 8, !alias.scope !1540
  store <2 x ptr> %i.gi, ptr %i.b, align 16, !noalias !1539
  %i.gj = getelementptr [16 x i8], ptr %.sroa.0.092157, i64 %.sroa.15.091158 ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 -16    ; 2 uses
  %.sroa.13.033.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.092157, i64 32 ; 3 uses
  %i.gl = icmp ult ptr %.sroa.13.033.i.i, %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.092157, i64 8
  %.val1.i12.i.i = load ptr, ptr %i.gm, align 8, !alias.scope !1541, !noalias !3 ; 2 uses
  br i1 %i.gl, label %.lr.ph.i.i37, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.t, %bb.s
  %.sroa.23.1.i.i.ph = phi i64 [ 0, %bb.s ], [ %i.hh, %bb.t ]
  %.sroa.13.1.i.i.ph = phi ptr [ %.sroa.13.033.i.i, %bb.s ], [ %.sroa.13.0.i.i, %bb.t ]
  %.sroa.015.1.i.i.ph = phi ptr [ %i.gh, %bb.s ], [ %i.hb, %bb.t ]
  br label %.preheader.i.i

.lr.ph.i.i37:                                     ; preds = %bb.s
  %i.gn = load i64, ptr %.val1.i12.i.i, align 8, !noalias !1542, !noundef !3 ; 2 uses
  br label %bb.t

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.23.1.i.i = phi i64 [ %i.gu, %.preheader.i.i ], [ %.sroa.23.1.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.1.sroa.gep26.i.i, %.preheader.i.i ], [ %.sroa.13.1.i.i.ph, %.preheader.i.i.preheader ] ; 5 uses
  %.sroa.015.1.i.i = phi ptr [ %.sroa.13.1.i.i, %.preheader.i.i ], [ %.sroa.015.1.i.i.ph, %.preheader.i.i.preheader ]
  %i.go = icmp eq ptr %.sroa.13.1.i.i, %i.gj      ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.go, ptr %i.b, ptr %.sroa.13.1.i.i
  %.sroa.01.0.sroa.sel.i.i.v.sroa.sel.v = select i1 %i.go, ptr %i.b, ptr %.sroa.13.1.i.i
  %.sroa.01.0.sroa.sel.i.i.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.i.i.v.sroa.sel.v, i64 8
  %.val.i.i.i36 = load ptr, ptr %.sroa.01.0.sroa.sel.i.i.v.sroa.sel, align 8, !noalias !1543, !nonnull !3, !align !5, !noundef !3
  %i.gp = load i64, ptr %.val.i.i.i36, align 8, !noalias !1544, !noundef !3
  %i.gq = load i64, ptr %.val1.i12.i.i, align 8, !noalias !1544, !noundef !3
  %i.gr = icmp ult i64 %i.gp, %i.gq
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %i.gh, i64 %.sroa.23.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gs, i64 16, i1 false), !alias.scope !1540, !noalias !1545
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gs, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i, i64 16, i1 false), !noalias !1543
  %i.gt = zext i1 %i.gr to i64
  %i.gu = add i64 %.sroa.23.1.i.i, %i.gt          ; 6 uses
  %.sroa.13.1.sroa.gep26.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i, i64 16
  br i1 %i.go, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRcRjENCINvMB8_SB1x_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2m_10BpeTrainer16compute_alphabets_0E0EB2s_.exit.i, label %.preheader.i.i

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.i37
  %.sroa.13.036.i.i = phi ptr [ %.sroa.13.033.i.i, %.lr.ph.i.i37 ], [ %.sroa.13.0.i.i, %bb.t ] ; 2 uses
  %.sroa.015.035.i.i = phi ptr [ %i.gh, %.lr.ph.i.i37 ], [ %i.hb, %bb.t ] ; 5 uses
  %.sroa.23.034.i.i = phi i64 [ 0, %.lr.ph.i.i37 ], [ %i.hh, %bb.t ] ; 2 uses
  %i.gv = getelementptr i8, ptr %.sroa.015.035.i.i, i64 24
  %.val.i11.i.i = load ptr, ptr %i.gv, align 8, !alias.scope !1540, !noalias !1546, !nonnull !3, !align !5, !noundef !3
  %i.gw = load i64, ptr %.val.i11.i.i, align 8, !noalias !1542, !noundef !3
  %i.gx = icmp ult i64 %i.gw, %i.gn
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.gh, i64 %.sroa.23.034.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.035.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i64 16, i1 false), !alias.scope !1540, !noalias !1546
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.036.i.i, i64 16, i1 false), !alias.scope !1540, !noalias !1546
  %i.gz = zext i1 %i.gx to i64
  %i.ha = add i64 %.sroa.23.034.i.i, %i.gz        ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.015.035.i.i, i64 32 ; 3 uses
  %i.hc = getelementptr i8, ptr %.sroa.015.035.i.i, i64 40
  %.val.i13.i.i = load ptr, ptr %i.hc, align 8, !alias.scope !1540, !noalias !1547, !nonnull !3, !align !5, !noundef !3
  %i.hd = load i64, ptr %.val.i13.i.i, align 8, !noalias !1548, !noundef !3
  %i.he = icmp ult i64 %i.hd, %i.gn
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %i.gh, i64 %i.ha ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.036.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.hf, i64 16, i1 false), !alias.scope !1540, !noalias !1547
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hf, ptr noundef nonnull align 8 dereferenceable(16) %i.hb, i64 16, i1 false), !alias.scope !1540, !noalias !1547
  %i.hg = zext i1 %i.he to i64
  %i.hh = add i64 %i.ha, %i.hg                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.035.i.i, i64 48 ; 3 uses
  %i.hi = icmp ult ptr %.sroa.13.0.i.i, %i.gk
  br i1 %i.hi, label %bb.t, label %.preheader.i.i.preheader

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRcRjENCINvMB8_SB1x_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2m_10BpeTrainer16compute_alphabets_0E0EB2s_.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1539
  %.not7.i = icmp ult i64 %i.gu, %.sroa.15.091158
  br i1 %.not7.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit, label %bb.u

bb.u:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRcRjENCINvMB8_SB1x_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2m_10BpeTrainer16compute_alphabets_0E0EB2s_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRcRjENCINvMB8_SB1x_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2m_10BpeTrainer16compute_alphabets_0E0EB2s_.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE14swap_uncheckedCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %.sroa.0.092157, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.091158, i64 noundef 0, i64 noundef %i.gu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.092157, i64 %i.gu ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = xor i64 %i.gu, -1
  %i.hm = add i64 %.sroa.15.091158, %i.hl
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTRcRjENCINvMB8_SB17_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1W_10BpeTrainer16compute_alphabets_0E0EB22_(ptr noalias noundef nonnull align 8 %.sroa.0.092157, i64 noundef %i.gu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %.sroa.023.090159, i32 noundef %i.fm, ptr noalias noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.v:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTRcRjENCINvMB8_SB15_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1U_10BpeTrainer16compute_alphabets_0E0EB20_.exit
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0.092157, i64 %i.gf
  %i.ho = getelementptr i8, ptr %.sroa.023.090159, i64 8
  %.sroa.023.0.val = load ptr, ptr %i.ho, align 8, !nonnull !3, !align !5, !noundef !3
  %i.hp = getelementptr i8, ptr %i.hn, i64 8
  %.val = load ptr, ptr %i.hp, align 8, !nonnull !3, !align !5, !noundef !3
  %i.hq = load i64, ptr %.sroa.023.0.val, align 8, !noundef !3
  %i.hr = load i64, ptr %.val, align 8, !noundef !3
  %i.hs = icmp ult i64 %i.hq, %i.hr
  br i1 %i.hs, label %bb.s, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1549)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE14swap_uncheckedCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %.sroa.0.092157, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.091158, i64 noundef 0, i64 noundef range(i64 0, 576460752303423487) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.0.092157, i64 16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1551)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1552
  %i.hu = load <2 x ptr>, ptr %i.ht, align 8, !alias.scope !1553
  store <2 x ptr> %i.hu, ptr %i.a, align 16, !noalias !1552
  %i.hv = getelementptr [16 x i8], ptr %.sroa.0.092157, i64 %.sroa.15.091158 ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 -16    ; 2 uses
  %.sroa.13.033.i.i45 = getelementptr inbounds nuw i8, ptr %.sroa.0.092157, i64 32 ; 3 uses
  %i.hx = icmp ult ptr %.sroa.13.033.i.i45, %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0.092157, i64 8
  %.val1.i12.i.i46 = load ptr, ptr %i.hy, align 8, !alias.scope !1554, !noalias !3 ; 2 uses
  br i1 %i.hx, label %.lr.ph.i.i60, label %.preheader.i.i47.preheader

.preheader.i.i47.preheader:                       ; preds = %bb.x, %bb.w
  %.sroa.23.1.i.i51.ph = phi i64 [ 0, %bb.w ], [ %i.it, %bb.x ]
  %.sroa.13.1.i.i52.ph = phi ptr [ %.sroa.13.033.i.i45, %bb.w ], [ %.sroa.13.0.i.i66, %bb.x ]
  %.sroa.015.1.i.i53.ph = phi ptr [ %i.ht, %bb.w ], [ %i.in, %bb.x ]
  br label %.preheader.i.i47

.lr.ph.i.i60:                                     ; preds = %bb.w
  %i.hz = load i64, ptr %.val1.i12.i.i46, align 8, !noalias !1555, !noundef !3 ; 2 uses
  br label %bb.x

.preheader.i.i47:                                 ; preds = %.preheader.i.i47.preheader, %.preheader.i.i47
  %.sroa.23.1.i.i51 = phi i64 [ %i.ig, %.preheader.i.i47 ], [ %.sroa.23.1.i.i51.ph, %.preheader.i.i47.preheader ] ; 2 uses
  %.sroa.13.1.i.i52 = phi ptr [ %.sroa.13.1.sroa.gep26.i.i58, %.preheader.i.i47 ], [ %.sroa.13.1.i.i52.ph, %.preheader.i.i47.preheader ] ; 5 uses
  %.sroa.015.1.i.i53 = phi ptr [ %.sroa.13.1.i.i52, %.preheader.i.i47 ], [ %.sroa.015.1.i.i53.ph, %.preheader.i.i47.preheader ]
  %i.ia = icmp eq ptr %.sroa.13.1.i.i52, %i.hv    ; 3 uses
  %.sroa.01.0.i.i54 = select i1 %i.ia, ptr %i.a, ptr %.sroa.13.1.i.i52
  %.sroa.01.0.sroa.sel.i.i56.v.sroa.sel.v = select i1 %i.ia, ptr %i.a, ptr %.sroa.13.1.i.i52
  %.sroa.01.0.sroa.sel.i.i56.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.i.i56.v.sroa.sel.v, i64 8
  %.val.i.i.i57 = load ptr, ptr %.sroa.01.0.sroa.sel.i.i56.v.sroa.sel, align 8, !noalias !1556, !nonnull !3, !align !5, !noundef !3
  %i.ib = load i64, ptr %.val1.i12.i.i46, align 8, !noalias !1557, !noundef !3
  %i.ic = load i64, ptr %.val.i.i.i57, align 8, !noalias !1557, !noundef !3
  %i.id = icmp uge i64 %i.ib, %i.ic
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %.sroa.23.1.i.i51 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.1.i.i53, ptr noundef nonnull align 8 dereferenceable(16) %i.ie, i64 16, i1 false), !alias.scope !1553, !noalias !1558
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ie, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i54, i64 16, i1 false), !noalias !1556
  %i.if = zext i1 %i.id to i64
  %i.ig = add i64 %.sroa.23.1.i.i51, %i.if        ; 4 uses
  %.sroa.13.1.sroa.gep26.i.i58 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i52, i64 16
  br i1 %i.ia, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRcRjENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2I_10BpeTrainer16compute_alphabets_0E0E0EB2O_.exit.i, label %.preheader.i.i47

bb.x:                                             ; preds = %bb.x, %.lr.ph.i.i60
  %.sroa.13.036.i.i61 = phi ptr [ %.sroa.13.033.i.i45, %.lr.ph.i.i60 ], [ %.sroa.13.0.i.i66, %bb.x ] ; 2 uses
  %.sroa.015.035.i.i62 = phi ptr [ %i.ht, %.lr.ph.i.i60 ], [ %i.in, %bb.x ] ; 5 uses
  %.sroa.23.034.i.i63 = phi i64 [ 0, %.lr.ph.i.i60 ], [ %i.it, %bb.x ] ; 2 uses
  %i.ih = getelementptr i8, ptr %.sroa.015.035.i.i62, i64 24
  %.val.i11.i.i64 = load ptr, ptr %i.ih, align 8, !alias.scope !1553, !noalias !1559, !nonnull !3, !align !5, !noundef !3
  %i.ii = load i64, ptr %.val.i11.i.i64, align 8, !noalias !1555, !noundef !3
  %i.ij = icmp uge i64 %i.hz, %i.ii
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %.sroa.23.034.i.i63 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.035.i.i62, ptr noundef nonnull align 8 dereferenceable(16) %i.ik, i64 16, i1 false), !alias.scope !1553, !noalias !1559
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ik, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.036.i.i61, i64 16, i1 false), !alias.scope !1553, !noalias !1559
  %i.il = zext i1 %i.ij to i64
  %i.im = add i64 %.sroa.23.034.i.i63, %i.il      ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.015.035.i.i62, i64 32 ; 3 uses
  %i.io = getelementptr i8, ptr %.sroa.015.035.i.i62, i64 40
  %.val.i13.i.i65 = load ptr, ptr %i.io, align 8, !alias.scope !1553, !noalias !1560, !nonnull !3, !align !5, !noundef !3
  %i.ip = load i64, ptr %.val.i13.i.i65, align 8, !noalias !1561, !noundef !3
  %i.iq = icmp uge i64 %i.hz, %i.ip
  %i.ir = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %i.im ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.036.i.i61, ptr noundef nonnull align 8 dereferenceable(16) %i.ir, i64 16, i1 false), !alias.scope !1553, !noalias !1560
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ir, ptr noundef nonnull align 8 dereferenceable(16) %i.in, i64 16, i1 false), !alias.scope !1553, !noalias !1560
  %i.is = zext i1 %i.iq to i64
  %i.it = add i64 %i.im, %i.is                    ; 2 uses
  %.sroa.13.0.i.i66 = getelementptr inbounds nuw i8, ptr %.sroa.015.035.i.i62, i64 48 ; 3 uses
  %i.iu = icmp ult ptr %.sroa.13.0.i.i66, %i.hw
  br i1 %i.iu, label %bb.x, label %.preheader.i.i47.preheader

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRcRjENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2I_10BpeTrainer16compute_alphabets_0E0E0EB2O_.exit.i: ; preds = %.preheader.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1552
  %.not7.i59 = icmp ult i64 %i.ig, %.sroa.15.091158
  br i1 %.not7.i59, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRcRjENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2I_10BpeTrainer16compute_alphabets_0E0E0EB2O_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.z:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRcRjENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2I_10BpeTrainer16compute_alphabets_0E0E0EB2O_.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE14swap_uncheckedCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %.sroa.0.092157, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.091158, i64 noundef 0, i64 noundef %i.ig, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  %i.iv = add nuw nsw i64 %i.ig, 1                ; 2 uses
  %i.iw = sub nuw nsw i64 %.sroa.15.091158, %i.iv
  %i.ix = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.092157, i64 %i.iv
  br label %.backedge

.backedge:                                        ; preds = %bb.z, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.023.0.be = phi ptr [ %i.hj, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit ], [ null, %bb.z ]
  %.sroa.15.0.be = phi i64 [ %i.hm, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit ], [ %i.iw, %bb.z ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.hk, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit ], [ %i.ix, %bb.z ] ; 3 uses
  %i.iy = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.iy, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTRcRjENCINvMB8_SB17_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1W_10BpeTrainer16compute_alphabets0_0E0EB22_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(16) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [768 x i8], align 8               ; 20 uses
  %i.d = icmp samesign ult i64 %1, 33
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = icmp eq i32 %3, 0
  br i1 %i.e, label %._crit_edge160, label %.lr.ph159

bb.b:                                             ; preds = %.backedge
  %i.f = icmp eq i32 %i.eu, 0
  br i1 %i.f, label %._crit_edge160, label %.lr.ph159

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 9 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1607)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1607
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1609)
  %i.g = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.g, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTRcRjENCINvMB8_SB1f_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB24_10BpeTrainer16compute_alphabets0_0E0EB2a_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.h = lshr i64 %.sroa.15.0.lcssa, 1            ; 12 uses
  %i.i = icmp samesign ugt i64 %.sroa.15.0.lcssa, 15
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  br i1 %i.j, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.sroa.15.0.lcssa ; 2 uses
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableTRcRjENCINvMB8_SB19_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1Y_10BpeTrainer16compute_alphabets0_0E0EB24_(ptr noundef nonnull align 8 %.sroa.0.0.lcssa, ptr noundef nonnull align 8 %i.c, ptr noundef %i.k)
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.h
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableTRcRjENCINvMB8_SB19_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1Y_10BpeTrainer16compute_alphabets0_0E0EB24_(ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.n)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 16
  %.val8.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !1610, !nonnull !3, !align !4, !noundef !3
  %.val9.i.i.i = load ptr, ptr %.sroa.0.0.lcssa, align 8, !alias.scope !1610, !nonnull !3, !align !4, !noundef !3
  %i.p = load i32, ptr %.val8.i.i.i, align 4, !range !6, !noalias !1611, !noundef !3
  %i.q = load i32, ptr %.val9.i.i.i, align 4, !range !6, !noalias !1611, !noundef !3
  %i.r = icmp samesign ult i32 %i.p, %i.q         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 32
  %.val6.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !1610, !nonnull !3, !align !4, !noundef !3
  %.val7.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !1610, !nonnull !3, !align !4, !noundef !3
  %i.u = load i32, ptr %.val6.i.i.i, align 4, !range !6, !noalias !1611, !noundef !3
  %i.v = load i32, ptr %.val7.i.i.i, align 4, !range !6, !noalias !1611, !noundef !3
  %i.w = icmp samesign ult i32 %i.u, %i.v         ; 2 uses
  %i.x = zext i1 %i.r to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.x ; 3 uses
  %i.z = xor i1 %i.r, true
  %i.aa = zext i1 %i.z to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.aa ; 4 uses
  %i.ac = select i1 %i.w, i64 3, i64 2
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.ac ; 4 uses
  %i.ae = select i1 %i.w, i64 2, i64 3
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.ae ; 3 uses
  %.val4.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !1610, !nonnull !3, !align !4, !noundef !3
  %.val5.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !1610, !nonnull !3, !align !4, !noundef !3
  %i.ag = load i32, ptr %.val4.i.i.i, align 4, !range !6, !noalias !1611, !noundef !3
  %i.ah = load i32, ptr %.val5.i.i.i, align 4, !range !6, !noalias !1611, !noundef !3
  %i.ai = icmp samesign ult i32 %i.ag, %i.ah      ; 3 uses
  %.val2.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !1610, !nonnull !3, !align !4, !noundef !3
  %.val3.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !1610, !nonnull !3, !align !4, !noundef !3
  %i.aj = load i32, ptr %.val2.i.i.i, align 4, !range !6, !noalias !1611, !noundef !3
  %i.ak = load i32, ptr %.val3.i.i.i, align 4, !range !6, !noalias !1611, !noundef !3
  %i.al = icmp samesign ult i32 %i.aj, %i.ak      ; 3 uses
  %i.am = select i1 %i.ai, ptr %i.ad, ptr %i.y, !unpredictable !3
  %i.an = select i1 %i.al, ptr %i.ab, ptr %i.af, !unpredictable !3
  %i.ao = select i1 %i.al, ptr %i.ad, ptr %i.ab, !unpredictable !3
  %i.ap = select i1 %i.ai, ptr %i.y, ptr %i.ao, !unpredictable !3 ; 3 uses
  %i.aq = select i1 %i.ai, ptr %i.ab, ptr %i.ad, !unpredictable !3
  %i.ar = select i1 %i.al, ptr %i.af, ptr %i.aq, !unpredictable !3 ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !1610, !nonnull !3, !align !4, !noundef !3
  %.val1.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !1610, !nonnull !3, !align !4, !noundef !3
  %i.as = load i32, ptr %.val.i.i.i, align 4, !range !6, !noalias !1611, !noundef !3
  %i.at = load i32, ptr %.val1.i.i.i, align 4, !range !6, !noalias !1611, !noundef !3
  %i.au = icmp samesign ult i32 %i.as, %i.at      ; 2 uses
  %i.av = select i1 %i.au, ptr %i.ar, ptr %i.ap, !unpredictable !3
  %i.aw = select i1 %i.au, ptr %i.ap, ptr %i.ar, !unpredictable !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !alias.scope !1612
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false), !alias.scope !1612
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false), !alias.scope !1612
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !alias.scope !1612
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.h ; 8 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.h ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.val8.i30.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !1610, !nonnull !3, !align !4, !noundef !3
  %.val9.i31.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !1610, !nonnull !3, !align !4, !noundef !3
  %i.bd = load i32, ptr %.val8.i30.i.i, align 4, !range !6, !noalias !1611, !noundef !3
  %i.be = load i32, ptr %.val9.i31.i.i, align 4, !range !6, !noalias !1611, !noundef !3
  %i.bf = icmp samesign ult i32 %i.bd, %i.be      ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %.val6.i32.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !1610, !nonnull !3, !align !4, !noundef !3
  %.val7.i33.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !1610, !nonnull !3, !align !4, !noundef !3
  %i.bi = load i32, ptr %.val6.i32.i.i, align 4, !range !6, !noalias !1611, !noundef !3
  %i.bj = load i32, ptr %.val7.i33.i.i, align 4, !range !6, !noalias !1611, !noundef !3
  %i.bk = icmp samesign ult i32 %i.bi, %i.bj      ; 2 uses
  %i.bl = zext i1 %i.bf to i64
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.bl ; 3 uses
  %i.bn = xor i1 %i.bf, true
  %i.bo = zext i1 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.bo ; 4 uses
  %i.bq = select i1 %i.bk, i64 3, i64 2
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.bq ; 4 uses
  %i.bs = select i1 %i.bk, i64 2, i64 3
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.bs ; 3 uses
  %.val4.i34.i.i = load ptr, ptr %i.br, align 8, !alias.scope !1610, !nonnull !3, !align !4, !noundef !3
  %.val5.i35.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !1610, !nonnull !3, !align !4, !noundef !3
  %i.bu = load i32, ptr %.val4.i34.i.i, align 4, !range !6, !noalias !1611, !noundef !3
  %i.bv = load i32, ptr %.val5.i35.i.i, align 4, !range !6, !noalias !1611, !noundef !3
  %i.bw = icmp samesign ult i32 %i.bu, %i.bv      ; 3 uses
  %.val2.i36.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !1610, !nonnull !3, !align !4, !noundef !3
  %.val3.i37.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !1610, !nonnull !3, !align !4, !noundef !3
  %i.bx = load i32, ptr %.val2.i36.i.i, align 4, !range !6, !noalias !1611, !noundef !3
  %i.by = load i32, ptr %.val3.i37.i.i, align 4, !range !6, !noalias !1611, !noundef !3
  %i.bz = icmp samesign ult i32 %i.bx, %i.by      ; 3 uses
  %i.ca = select i1 %i.bw, ptr %i.br, ptr %i.bm, !unpredictable !3
  %i.cb = select i1 %i.bz, ptr %i.bp, ptr %i.bt, !unpredictable !3
  %i.cc = select i1 %i.bz, ptr %i.br, ptr %i.bp, !unpredictable !3
  %i.cd = select i1 %i.bw, ptr %i.bm, ptr %i.cc, !unpredictable !3 ; 3 uses
  %i.ce = select i1 %i.bw, ptr %i.bp, ptr %i.br, !unpredictable !3
  %i.cf = select i1 %i.bz, ptr %i.bt, ptr %i.ce, !unpredictable !3 ; 3 uses
  %.val.i38.i.i = load ptr, ptr %i.cf, align 8, !alias.scope !1610, !nonnull !3, !align !4, !noundef !3
  %.val1.i39.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !1610, !nonnull !3, !align !4, !noundef !3
  %i.cg = load i32, ptr %.val.i38.i.i, align 4, !range !6, !noalias !1611, !noundef !3
  %i.ch = load i32, ptr %.val1.i39.i.i, align 4, !range !6, !noalias !1611, !noundef !3
  %i.ci = icmp samesign ult i32 %i.cg, %i.ch      ; 2 uses
  %i.cj = select i1 %i.ci, ptr %i.cf, ptr %i.cd, !unpredictable !3
  %i.ck = select i1 %i.ci, ptr %i.cd, ptr %i.cf, !unpredictable !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i64 16, i1 false), !alias.scope !1612
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false), !alias.scope !1612
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i64 16, i1 false), !alias.scope !1612
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !alias.scope !1612
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.lcssa, i64 16, i1 false), !alias.scope !1612
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.h
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %i.co, i64 16, i1 false), !alias.scope !1612
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.0.i.i = phi i64 [ 8, %bb.e ], [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.cq = sub nuw nsw i64 %.sroa.15.0.lcssa, %i.h ; 2 uses
  %i.cr = icmp samesign ult i64 %.sroa.0.0.i.i, %i.h
  br i1 %i.cr, label %.lr.ph.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTRcRjENCINvMB8_SB18_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1X_10BpeTrainer16compute_alphabets0_0E0EB23_.exit.i.i, %bb.h
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.h
  %i.ct = getelementptr [16 x i8], ptr %i.c, i64 %i.h ; 6 uses
  %i.cu = icmp samesign ult i64 %.sroa.0.0.i.i, %i.cq
  br i1 %i.cu, label %.lr.ph.1.i.i, label %.loopexit.1.i.i

.lr.ph.1.i.i:                                     ; preds = %.loopexit.i.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTRcRjENCINvMB8_SB18_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1X_10BpeTrainer16compute_alphabets0_0E0EB23_.exit.1.i.i
  %.sroa.05.08.1.i.i = phi i64 [ %i.di, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTRcRjENCINvMB8_SB18_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1X_10BpeTrainer16compute_alphabets0_0E0EB23_.exit.1.i.i ], [ %.sroa.0.0.i.i, %.loopexit.i.i ] ; 4 uses
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %.sroa.05.08.1.i.i
  %.idx176 = shl nuw nsw i64 %.sroa.05.08.1.i.i, 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx176 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i64 16, i1 false), !alias.scope !1612
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -16 ; 3 uses
  %.val9.i40.1.i.i = load ptr, ptr %i.cw, align 8, !alias.scope !1609, !noalias !1607, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %.val10.i.1.i.i = load ptr, ptr %i.cx, align 8, !alias.scope !1609, !noalias !1607, !nonnull !3, !align !4, !noundef !3
  %i.cy = load i32, ptr %.val9.i40.1.i.i, align 4, !range !6, !noalias !1611, !noundef !3 ; 2 uses
  %i.cz = load i32, ptr %.val10.i.1.i.i, align 4, !range !6, !noalias !1611, !noundef !3
  %i.da = icmp samesign ult i32 %i.cy, %i.cz
  br i1 %i.da, label %bb.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTRcRjENCINvMB8_SB18_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1X_10BpeTrainer16compute_alphabets0_0E0EB23_.exit.1.i.i

bb.i:                                             ; preds = %.lr.ph.1.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTRcRjENCINvMB8_SB17_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1W_10BpeTrainer16compute_alphabets0_0E0EB22_:bb.a
  %i.fd = load i32, ptr %.val5.i, align 4, !range !6, !noalias !1620, !noundef !3 ; 2 uses
  %i.fe = icmp samesign ult i32 %i.fa, %i.fd
  %i.ff = xor i1 %i.fc, %i.fe
  %i.fg = icmp samesign ult i32 %i.fb, %i.fd
  %i.fh = xor i1 %i.fc, %i.fg
  %..i.i = select i1 %i.fh, ptr %i.ex, ptr %i.ew
  %.sroa.0.0.i.i34 = select i1 %i.ff, ptr %.sroa.0.090155, ptr %..i.i
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTRcRjENCINvMB8_SB15_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1U_10BpeTrainer16compute_alphabets0_0E0EB20_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTRcRjENCINvMB8_SB15_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1U_10BpeTrainer16compute_alphabets0_0E0EB20_.exit: ; preds = %bb.q, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRcRjENCINvMB8_SBZ_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1N_10BpeTrainer16compute_alphabets0_0E0EB1T_.exit.i
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRcRjENCINvMB8_SBZ_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1N_10BpeTrainer16compute_alphabets0_0E0EB1T_.exit.i ], [ %i.ez, %bb.q ]
  %i.fi = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.fj = ptrtoint ptr %.sroa.0.090155 to i64
  %i.fk = sub nuw i64 %i.fi, %i.fj                ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.fk, 4          ; 3 uses
  %i.fl = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.089156
  tail call void @llvm.assume(i1 %i.fl)
  %.not = icmp eq ptr %.sroa.023.088157, null
  br i1 %.not, label %bb.s, label %bb.v

bb.r:                                             ; preds = %._crit_edge160, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTRcRjENCINvMB8_SB1f_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB24_10BpeTrainer16compute_alphabets0_0E0EB2a_.exit
  ret void

bb.s:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTRcRjENCINvMB8_SB15_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1U_10BpeTrainer16compute_alphabets0_0E0EB20_.exit, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1621)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE14swap_uncheckedCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %.sroa.0.090155, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.089156, i64 noundef 0, i64 noundef range(i64 0, 576460752303423487) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0.090155, i64 16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1623)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1624
  %i.fn = load <2 x ptr>, ptr %i.fm, align 8, !alias.scope !1625
  store <2 x ptr> %i.fn, ptr %i.b, align 16, !noalias !1624
  %i.fo = getelementptr [16 x i8], ptr %.sroa.0.090155, i64 %.sroa.15.089156 ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 -16    ; 2 uses
  %.sroa.13.030.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.090155, i64 32 ; 3 uses
  %i.fq = icmp ult ptr %.sroa.13.030.i.i, %i.fp
  %.val1.i.pre.i.i = load ptr, ptr %.sroa.0.090155, align 8, !alias.scope !1626, !noalias !3 ; 2 uses
  br i1 %i.fq, label %.lr.ph.i.i37, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.t, %bb.s
  %.sroa.23.1.i.i.ph = phi i64 [ 0, %bb.s ], [ %i.gj, %bb.t ]
  %.sroa.13.1.i.i.ph = phi ptr [ %.sroa.13.030.i.i, %bb.s ], [ %.sroa.13.0.i.i, %bb.t ]
  %.sroa.015.1.i.i.ph = phi ptr [ %i.fm, %bb.s ], [ %i.ge, %bb.t ]
  br label %.preheader.i.i

.lr.ph.i.i37:                                     ; preds = %bb.s
  %i.fr = load i32, ptr %.val1.i.pre.i.i, align 4, !range !6, !noalias !1627, !noundef !3 ; 2 uses
  br label %bb.t

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.23.1.i.i = phi i64 [ %i.fy, %.preheader.i.i ], [ %.sroa.23.1.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.1.sroa.gep.i.i, %.preheader.i.i ], [ %.sroa.13.1.i.i.ph, %.preheader.i.i.preheader ] ; 4 uses
  %.sroa.015.1.i.i = phi ptr [ %.sroa.13.1.i.i, %.preheader.i.i ], [ %.sroa.015.1.i.i.ph, %.preheader.i.i.preheader ]
  %i.fs = icmp eq ptr %.sroa.13.1.i.i, %i.fo      ; 2 uses
  %.sroa.01.0.i.i = select i1 %i.fs, ptr %i.b, ptr %.sroa.13.1.i.i ; 2 uses
  %.val.i.i.i36 = load ptr, ptr %.sroa.01.0.i.i, align 8, !noalias !1628, !nonnull !3, !align !4, !noundef !3
  %i.ft = load i32, ptr %.val.i.i.i36, align 4, !range !6, !noalias !1629, !noundef !3
  %i.fu = load i32, ptr %.val1.i.pre.i.i, align 4, !range !6, !noalias !1629, !noundef !3
  %i.fv = icmp samesign ult i32 %i.ft, %i.fu
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %.sroa.23.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.fw, i64 16, i1 false), !alias.scope !1625, !noalias !1630
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i, i64 16, i1 false), !noalias !1628
  %i.fx = zext i1 %i.fv to i64
  %i.fy = add i64 %.sroa.23.1.i.i, %i.fx          ; 6 uses
  %.sroa.13.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i, i64 16
  br i1 %i.fs, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRcRjENCINvMB8_SB1x_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2m_10BpeTrainer16compute_alphabets0_0E0EB2s_.exit.i, label %.preheader.i.i

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.i37
  %.sroa.13.033.i.i = phi ptr [ %.sroa.13.030.i.i, %.lr.ph.i.i37 ], [ %.sroa.13.0.i.i, %bb.t ] ; 3 uses
  %.sroa.015.032.i.i = phi ptr [ %i.fm, %.lr.ph.i.i37 ], [ %i.ge, %bb.t ] ; 3 uses
  %.sroa.23.031.i.i = phi i64 [ 0, %.lr.ph.i.i37 ], [ %i.gj, %bb.t ] ; 2 uses
  %.val.i11.i.i = load ptr, ptr %.sroa.13.033.i.i, align 8, !alias.scope !1625, !noalias !1631, !nonnull !3, !align !4, !noundef !3
  %i.fz = load i32, ptr %.val.i11.i.i, align 4, !range !6, !noalias !1627, !noundef !3
  %i.ga = icmp samesign ult i32 %i.fz, %i.fr
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %.sroa.23.031.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.032.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gb, i64 16, i1 false), !alias.scope !1625, !noalias !1631
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gb, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.033.i.i, i64 16, i1 false), !alias.scope !1625, !noalias !1631
  %i.gc = zext i1 %i.ga to i64
  %i.gd = add i64 %.sroa.23.031.i.i, %i.gc        ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 32 ; 4 uses
  %.val.i13.i.i = load ptr, ptr %i.ge, align 8, !alias.scope !1625, !noalias !1632, !nonnull !3, !align !4, !noundef !3
  %i.gf = load i32, ptr %.val.i13.i.i, align 4, !range !6, !noalias !1633, !noundef !3
  %i.gg = icmp samesign ult i32 %i.gf, %i.fr
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %i.gd ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.033.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gh, i64 16, i1 false), !alias.scope !1625, !noalias !1632
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gh, ptr noundef nonnull align 8 dereferenceable(16) %i.ge, i64 16, i1 false), !alias.scope !1625, !noalias !1632
  %i.gi = zext i1 %i.gg to i64
  %i.gj = add i64 %i.gd, %i.gi                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 48 ; 3 uses
  %i.gk = icmp ult ptr %.sroa.13.0.i.i, %i.fp
  br i1 %i.gk, label %bb.t, label %.preheader.i.i.preheader

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRcRjENCINvMB8_SB1x_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2m_10BpeTrainer16compute_alphabets0_0E0EB2s_.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1624
  %.not7.i = icmp ult i64 %i.fy, %.sroa.15.089156
  br i1 %.not7.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit, label %bb.u

bb.u:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRcRjENCINvMB8_SB1x_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2m_10BpeTrainer16compute_alphabets0_0E0EB2s_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRcRjENCINvMB8_SB1x_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2m_10BpeTrainer16compute_alphabets0_0E0EB2s_.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE14swap_uncheckedCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %.sroa.0.090155, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.089156, i64 noundef 0, i64 noundef %i.fy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.090155, i64 %i.fy ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = xor i64 %i.fy, -1
  %i.go = add i64 %.sroa.15.089156, %i.gn
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTRcRjENCINvMB8_SB17_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1W_10BpeTrainer16compute_alphabets0_0E0EB22_(ptr noalias noundef nonnull align 8 %.sroa.0.090155, i64 noundef %i.fy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %.sroa.023.088157, i32 noundef %i.eu, ptr noalias noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.v:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTRcRjENCINvMB8_SB15_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1U_10BpeTrainer16compute_alphabets0_0E0EB20_.exit
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0.090155, i64 %i.fk
  %.sroa.023.0.val = load ptr, ptr %.sroa.023.088157, align 8, !nonnull !3, !align !4, !noundef !3
  %.val = load ptr, ptr %i.gp, align 8, !nonnull !3, !align !4, !noundef !3
  %i.gq = load i32, ptr %.sroa.023.0.val, align 4, !range !6, !noundef !3
  %i.gr = load i32, ptr %.val, align 4, !range !6, !noundef !3
  %i.gs = icmp samesign ult i32 %i.gq, %i.gr
  br i1 %i.gs, label %bb.s, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1634)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE14swap_uncheckedCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %.sroa.0.090155, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.089156, i64 noundef 0, i64 noundef range(i64 0, 576460752303423487) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0.090155, i64 16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1636)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1637
  %i.gu = load <2 x ptr>, ptr %i.gt, align 8, !alias.scope !1638
  store <2 x ptr> %i.gu, ptr %i.a, align 16, !noalias !1637
  %i.gv = getelementptr [16 x i8], ptr %.sroa.0.090155, i64 %.sroa.15.089156 ; 2 uses
  %i.gw = getelementptr i8, ptr %i.gv, i64 -16    ; 2 uses
  %.sroa.13.030.i.i45 = getelementptr inbounds nuw i8, ptr %.sroa.0.090155, i64 32 ; 3 uses
  %i.gx = icmp ult ptr %.sroa.13.030.i.i45, %i.gw
  %.val1.i.pre.i.i46 = load ptr, ptr %.sroa.0.090155, align 8, !alias.scope !1639, !noalias !3 ; 2 uses
  br i1 %i.gx, label %.lr.ph.i.i58, label %.preheader.i.i47.preheader

.preheader.i.i47.preheader:                       ; preds = %bb.x, %bb.w
  %.sroa.23.1.i.i51.ph = phi i64 [ 0, %bb.w ], [ %i.hq, %bb.x ]
  %.sroa.13.1.i.i52.ph = phi ptr [ %.sroa.13.030.i.i45, %bb.w ], [ %.sroa.13.0.i.i64, %bb.x ]
  %.sroa.015.1.i.i53.ph = phi ptr [ %i.gt, %bb.w ], [ %i.hl, %bb.x ]
  br label %.preheader.i.i47

.lr.ph.i.i58:                                     ; preds = %bb.w
  %i.gy = load i32, ptr %.val1.i.pre.i.i46, align 4, !range !6, !noalias !1640, !noundef !3 ; 2 uses
  br label %bb.x

.preheader.i.i47:                                 ; preds = %.preheader.i.i47.preheader, %.preheader.i.i47
  %.sroa.23.1.i.i51 = phi i64 [ %i.hf, %.preheader.i.i47 ], [ %.sroa.23.1.i.i51.ph, %.preheader.i.i47.preheader ] ; 2 uses
  %.sroa.13.1.i.i52 = phi ptr [ %.sroa.13.1.sroa.gep.i.i56, %.preheader.i.i47 ], [ %.sroa.13.1.i.i52.ph, %.preheader.i.i47.preheader ] ; 4 uses
  %.sroa.015.1.i.i53 = phi ptr [ %.sroa.13.1.i.i52, %.preheader.i.i47 ], [ %.sroa.015.1.i.i53.ph, %.preheader.i.i47.preheader ]
  %i.gz = icmp eq ptr %.sroa.13.1.i.i52, %i.gv    ; 2 uses
  %.sroa.01.0.i.i54 = select i1 %i.gz, ptr %i.a, ptr %.sroa.13.1.i.i52 ; 2 uses
  %.val.i.i.i55 = load ptr, ptr %.sroa.01.0.i.i54, align 8, !noalias !1641, !nonnull !3, !align !4, !noundef !3
  %i.ha = load i32, ptr %.val1.i.pre.i.i46, align 4, !range !6, !noalias !1642, !noundef !3
  %i.hb = load i32, ptr %.val.i.i.i55, align 4, !range !6, !noalias !1642, !noundef !3
  %i.hc = icmp samesign uge i32 %i.ha, %i.hb
  %i.hd = getelementptr inbounds nuw [16 x i8], ptr %i.gt, i64 %.sroa.23.1.i.i51 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.1.i.i53, ptr noundef nonnull align 8 dereferenceable(16) %i.hd, i64 16, i1 false), !alias.scope !1638, !noalias !1643
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hd, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i54, i64 16, i1 false), !noalias !1641
  %i.he = zext i1 %i.hc to i64
  %i.hf = add i64 %.sroa.23.1.i.i51, %i.he        ; 4 uses
  %.sroa.13.1.sroa.gep.i.i56 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i52, i64 16
  br i1 %i.gz, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRcRjENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2I_10BpeTrainer16compute_alphabets0_0E0E0EB2O_.exit.i, label %.preheader.i.i47

bb.x:                                             ; preds = %bb.x, %.lr.ph.i.i58
  %.sroa.13.033.i.i59 = phi ptr [ %.sroa.13.030.i.i45, %.lr.ph.i.i58 ], [ %.sroa.13.0.i.i64, %bb.x ] ; 3 uses
  %.sroa.015.032.i.i60 = phi ptr [ %i.gt, %.lr.ph.i.i58 ], [ %i.hl, %bb.x ] ; 3 uses
  %.sroa.23.031.i.i61 = phi i64 [ 0, %.lr.ph.i.i58 ], [ %i.hq, %bb.x ] ; 2 uses
  %.val.i11.i.i62 = load ptr, ptr %.sroa.13.033.i.i59, align 8, !alias.scope !1638, !noalias !1644, !nonnull !3, !align !4, !noundef !3
  %i.hg = load i32, ptr %.val.i11.i.i62, align 4, !range !6, !noalias !1640, !noundef !3
  %i.hh = icmp samesign uge i32 %i.gy, %i.hg
  %i.hi = getelementptr inbounds nuw [16 x i8], ptr %i.gt, i64 %.sroa.23.031.i.i61 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.032.i.i60, ptr noundef nonnull align 8 dereferenceable(16) %i.hi, i64 16, i1 false), !alias.scope !1638, !noalias !1644
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hi, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.033.i.i59, i64 16, i1 false), !alias.scope !1638, !noalias !1644
  %i.hj = zext i1 %i.hh to i64
  %i.hk = add i64 %.sroa.23.031.i.i61, %i.hj      ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i60, i64 32 ; 4 uses
  %.val.i13.i.i63 = load ptr, ptr %i.hl, align 8, !alias.scope !1638, !noalias !1645, !nonnull !3, !align !4, !noundef !3
  %i.hm = load i32, ptr %.val.i13.i.i63, align 4, !range !6, !noalias !1646, !noundef !3
  %i.hn = icmp samesign uge i32 %i.gy, %i.hm
  %i.ho = getelementptr inbounds nuw [16 x i8], ptr %i.gt, i64 %i.hk ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.033.i.i59, ptr noundef nonnull align 8 dereferenceable(16) %i.ho, i64 16, i1 false), !alias.scope !1638, !noalias !1645
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ho, ptr noundef nonnull align 8 dereferenceable(16) %i.hl, i64 16, i1 false), !alias.scope !1638, !noalias !1645
  %i.hp = zext i1 %i.hn to i64
  %i.hq = add i64 %i.hk, %i.hp                    ; 2 uses
  %.sroa.13.0.i.i64 = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i60, i64 48 ; 3 uses
  %i.hr = icmp ult ptr %.sroa.13.0.i.i64, %i.gw
  br i1 %i.hr, label %bb.x, label %.preheader.i.i47.preheader

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRcRjENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2I_10BpeTrainer16compute_alphabets0_0E0E0EB2O_.exit.i: ; preds = %.preheader.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1637
  %.not7.i57 = icmp ult i64 %i.hf, %.sroa.15.089156
  br i1 %.not7.i57, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRcRjENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2I_10BpeTrainer16compute_alphabets0_0E0E0EB2O_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.z:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRcRjENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2I_10BpeTrainer16compute_alphabets0_0E0E0EB2O_.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE14swap_uncheckedCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %.sroa.0.090155, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.089156, i64 noundef 0, i64 noundef %i.hf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  %i.hs = add nuw nsw i64 %i.hf, 1                ; 2 uses
  %i.ht = sub nuw nsw i64 %.sroa.15.089156, %i.hs
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.090155, i64 %i.hs
  br label %.backedge

.backedge:                                        ; preds = %bb.z, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.023.0.be = phi ptr [ %i.gl, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit ], [ null, %bb.z ]
  %.sroa.15.0.be = phi i64 [ %i.go, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit ], [ %i.ht, %bb.z ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.gm, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit ], [ %i.hu, %bb.z ] ; 3 uses
  %i.hv = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.hv, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_9enumerate17EnumerateProducerINtNtB8_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB6_3map11MapConsumerINtNtB6_6reduce14ReduceConsumerNCNvMs4_NtB2k_7trainerNtB4d_10BpeTrainer11count_pairss0_0NCB47_s_0ENCB47_0EEB2o_(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 12 uses
  %i.b = alloca [144 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [144 x i8], align 8               ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = alloca [64 x i8], align 8                ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = alloca [256 x i8], align 8               ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [144 x i8], align 8               ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %4, ptr %i.o, align 8
  %i.p = tail call noundef zeroext i1 @_RNvXs4_NtNtCsgbNVBrIJ05E_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_6reduce14ReduceConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1y_10BpeTrainer11count_pairss0_0NCB1s_s_0ENCB1s_0EINtNtB7_8plumbing8ConsumerTjRNtNtB1A_4word4WordEE4fullB1E_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %6)
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = lshr i64 %1, 1                           ; 4 uses
  %.not = icmp ult i64 %i.q, %4
  br i1 %.not, label %_RNvMNtNtCsgbNVBrIJ05E_5rayon4iter8plumbingNtB2_8Splitter9try_split.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvXs4_NtNtCsgbNVBrIJ05E_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_6reduce14ReduceConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1y_10BpeTrainer11count_pairss0_0NCB1s_s_0ENCB1s_0EINtNtB7_8plumbing8ConsumerTjRNtNtB1A_4word4WordEE11into_folderB1E_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.l, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6)
  call void @_RNvXs6_NtNtCsgbNVBrIJ05E_5rayon4iter3mapINtB5_9MapFolderINtNtB7_6reduce12ReduceFolderNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1t_10BpeTrainer11count_pairss0_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB2T_B3z_INtNtB2X_8hash_set8AHashSetjEEEENCB1n_0EINtNtB7_8plumbing6FolderTjRNtNtB1v_4word4WordEE8completeB1z_(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(144) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1649)
  br i1 %2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_RNvMNtNtCsgbNVBrIJ05E_5rayon4iter8plumbingNtB2_8Splitter9try_split.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.r = tail call noundef i64 @_RNvCs5NXVUOdy9du_10rayon_core19current_num_threads(), !noalias !1649
  %i.s = lshr i64 %3, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.s, i64 %i.r)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = lshr i64 %3, 1
  br label %bb.h

_RNvMNtNtCsgbNVBrIJ05E_5rayon4iter8plumbingNtB2_8Splitter9try_split.exit: ; preds = %bb.e, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs4_NtNtCsgbNVBrIJ05E_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_6reduce14ReduceConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1y_10BpeTrainer11count_pairss0_0NCB1s_s_0ENCB1s_0EINtNtB7_8plumbing8ConsumerTjRNtNtB1A_4word4WordEE11into_folderB1E_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6)
  call void @_RINvYINtNtNtCsgbNVBrIJ05E_5rayon4iter9enumerate17EnumerateProducerINtNtBa_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEENtNtB8_8plumbing8Producer9fold_withINtNtB8_3map9MapFolderINtNtB8_6reduce12ReduceFolderNCNvMs4_NtB1y_7trainerNtB3V_10BpeTrainer11count_pairss0_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB4K_B5q_INtNtB4O_8hash_set8AHashSetjEEEENCB3P_0EEB1C_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(144) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvXs6_NtNtCsgbNVBrIJ05E_5rayon4iter3mapINtB5_9MapFolderINtNtB7_6reduce12ReduceFolderNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1t_10BpeTrainer11count_pairss0_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB2T_B3z_INtNtB2X_8hash_set8AHashSetjEEEENCB1n_0EINtNtB7_8plumbing6FolderTjRNtNtB1v_4word4WordEE8completeB1z_(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(144) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sink.i = phi i64 [ %i.t, %bb.g ], [ %.sroa.0.0.i.i, %bb.f ]
  store i64 %.sink.i, ptr %i.m, align 8, !alias.scope !1649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %i.q, ptr %i.k, align 8
  call void @_RNvXs1_NtNtCsgbNVBrIJ05E_5rayon4iter9enumerateINtB5_17EnumerateProducerINtNtB9_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEENtNtB7_8plumbing8Producer8split_atB1H_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, i64 noundef %i.q)
  call void @_RNvXs4_NtNtCsgbNVBrIJ05E_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_6reduce14ReduceConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1y_10BpeTrainer11count_pairss0_0NCB1s_s_0ENCB1s_0EINtNtB7_8plumbing8ConsumerTjRNtNtB1A_4word4WordEE8split_atB1E_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.g, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, i64 noundef %i.q)
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !3, !noundef !3
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.n, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.k, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.m, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.64.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.k, ptr %i.y, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @_RINvNtCs5NXVUOdy9du_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_9enumerate17EnumerateProducerINtNtB1r_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB1p_3map11MapConsumerINtNtB1p_6reduce14ReduceConsumerNCNvMs4_NtB3F_7trainerNtB5A_10BpeTrainer11count_pairss0_0NCB5u_s_0ENCB5u_0EE0NCB1i_s_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB6S_B7y_INtNtB6W_8hash_set8AHashSetjEEEB6Q_E0TB6Q_B6Q_EEB3J_(ptr noalias noundef nonnull sret([256 x i8]) align 8 captures(address) dereferenceable(256) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXs2_NtNtCsgbNVBrIJ05E_5rayon4iter6reduceINtB5_14ReduceConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB19_10BpeTrainer11count_pairss0_0NCB13_s_0EINtNtB7_8plumbing7ReducerTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB38_B3O_INtNtB3c_8hash_set8AHashSetjEEEE6reduceB1f_(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(128) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(128) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.i

bb.i:                                             ; preds = %_RNvMNtNtCsgbNVBrIJ05E_5rayon4iter8plumbingNtB2_8Splitter9try_split.exit, %bb.h, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerRjEINtNtB6_8flat_map15FlatMapConsumerINtNtNtB6_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3g_10BpeTrainer8do_trains_0EEB3m_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef nonnull align 8 %5, i64 noundef %6, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 14 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [56 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %4, ptr %i.p, align 8
  store ptr %5, ptr %i.m, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store i64 %6, ptr %i.q, align 8
  %i.r = invoke noundef zeroext i1 @_RNvXs2_NtNtCsgbNVBrIJ05E_5rayon4iter8flat_mapINtB5_15FlatMapConsumerINtNtNtB7_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB25_10BpeTrainer8do_trains_0EINtNtB7_8plumbing8ConsumerRjE4fullB2b_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %7)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %bb.a
  br i1 %i.r, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = lshr i64 %1, 1                           ; 4 uses
  %.not = icmp ult i64 %i.s, %4
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %bb.i, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.t = invoke noundef i64 @_RNvCs5NXVUOdy9du_10rayon_core19current_num_threads()
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.f
  %i.u = lshr i64 %3, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.u, i64 %i.t)
  %.pre = load ptr, ptr %i.m, align 8
  %.pre36 = load i64, ptr %i.q, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = lshr i64 %3, 1
  br label %bb.h

bb.h:                                             ; preds = %.noexc, %bb.g
  %i.w = phi i64 [ %6, %bb.g ], [ %.pre36, %.noexc ]
  %i.x = phi ptr [ %5, %bb.g ], [ %.pre, %.noexc ]
  %.sink.i = phi i64 [ %i.v, %bb.g ], [ %.sroa.0.0.i.i, %.noexc ]
  store i64 %.sink.i, ptr %i.n, align 8, !alias.scope !1658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %i.s, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvXs9_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtB7_4iter8plumbing8Producer8split_atCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias noundef nonnull align 8 %i.x, i64 noundef %i.w, i64 noundef %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.y = load ptr, ptr %i.h, align 8, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !noundef !3 ; 2 uses
  store ptr %i.y, ptr %i.j, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.aa, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !noundef !3 ; 2 uses
  store ptr %i.ad, ptr %i.i, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.af, ptr %i.ag, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvXs2_NtNtCsgbNVBrIJ05E_5rayon4iter8flat_mapINtB5_15FlatMapConsumerINtNtNtB7_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB25_10BpeTrainer8do_trains_0EINtNtB7_8plumbing8ConsumerRjE8split_atB2b_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %7, i64 noundef %i.s)
end_hunk_3
