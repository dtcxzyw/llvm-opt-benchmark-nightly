Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_client-75c402fe18a1f54a.xet_client.d88642a81e22a8c9-cgu.06?download=true
inline.NumInlined: 1225
inline.NumDeleted: 657
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTReRShENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_11sort_by_keyB1t_NCNvNtNtCsiAynQAjgDuT_10xet_client6common11http_client11headers_tags_0E0EB2B_:bb.a
  %i.ag = add nuw nsw i64 %.sroa.05.040.1, 1      ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.ag, %i.h
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTReRShENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keyB19_NCNvNtNtCsiAynQAjgDuT_10xet_client6common11http_client11headers_tags_0E0EB2h_.exit.1, %.loopexit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  %i.ah = add nsw i64 %1, -1                      ; 2 uses
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ah
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.ah
  %i.ak = getelementptr i8, ptr %i.k, i64 -32
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.al = getelementptr i8, ptr %i.bj, i64 32     ; 2 uses
  %i.am = getelementptr i8, ptr %i.bi, i64 32
  %i.an = and i64 %1, 1
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.k, label %bb.j

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.loopexit.1
  %.sroa.0.010.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.ap, %.lr.ph.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.08.i = phi ptr [ %i.az, %.lr.ph.i ], [ %2, %.loopexit.1 ] ; 4 uses
  %.sroa.011.07.i = phi ptr [ %i.ax, %.lr.ph.i ], [ %i.k, %.loopexit.1 ] ; 4 uses
  %.sroa.015.06.i = phi ptr [ %i.bj, %.lr.ph.i ], [ %i.ak, %.loopexit.1 ] ; 4 uses
  %.sroa.017.05.i = phi ptr [ %i.bi, %.lr.ph.i ], [ %i.aj, %.loopexit.1 ] ; 4 uses
  %.sroa.019.04.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %i.ai, %.loopexit.1 ] ; 2 uses
  %i.ap = add nuw nsw i64 %.sroa.04.09.i, 1       ; 2 uses
  %.sroa.011.0.val.i = load ptr, ptr %.sroa.011.07.i, align 8, !alias.scope !1516, !nonnull !16, !noundef !16
  %i.aq = getelementptr i8, ptr %.sroa.011.07.i, i64 8
  %.sroa.011.0.val22.i = load i64, ptr %i.aq, align 8, !alias.scope !1516, !noundef !16 ; 2 uses
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.08.i, align 8, !alias.scope !1516, !nonnull !16, !noundef !16
  %i.ar = getelementptr i8, ptr %.sroa.06.08.i, i64 8
  %.sroa.06.0.val23.i = load i64, ptr %i.ar, align 8, !alias.scope !1516, !noundef !16 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.011.0.val22.i, i64 %.sroa.06.0.val23.i)
  %i.as = tail call i32 @memcmp(ptr nonnull readonly %.sroa.011.0.val.i, ptr nonnull readonly %.sroa.06.0.val.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !1517, !noalias !1516 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp eq i32 %i.as, 0
  %i.av = sub i64 %.sroa.011.0.val22.i, %.sroa.06.0.val23.i
  %spec.select.i.i.i.i.i.i = select i1 %i.au, i64 %i.av, i64 %i.at ; 2 uses
  %i.aw = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1 ; 2 uses
  %..i21.i = select i1 %i.aw, ptr %.sroa.06.08.i, ptr %.sroa.011.07.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.010.i, ptr noundef nonnull align 8 dereferenceable(32) %..i21.i, i64 32, i1 false), !noalias !1518
  %spec.select.i.i.i.i.i.lobit.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %.sroa.011.07.i, i64 %spec.select.i.i.i.i.i.lobit.i ; 4 uses
  %i.ay = zext i1 %i.aw to i64
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %.sroa.06.08.i, i64 %i.ay ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 32 ; 2 uses
  %.sroa.017.0.val.i = load ptr, ptr %.sroa.017.05.i, align 8, !alias.scope !1516, !nonnull !16, !noundef !16
  %i.bb = getelementptr i8, ptr %.sroa.017.05.i, i64 8
  %.sroa.017.0.val24.i = load i64, ptr %i.bb, align 8, !alias.scope !1516, !noundef !16 ; 2 uses
  %.sroa.015.0.val.i = load ptr, ptr %.sroa.015.06.i, align 8, !alias.scope !1516, !nonnull !16, !noundef !16
  %i.bc = getelementptr i8, ptr %.sroa.015.06.i, i64 8
  %.sroa.015.0.val25.i = load i64, ptr %i.bc, align 8, !alias.scope !1516, !noundef !16 ; 2 uses
  %spec.store.select.i.i.i.i.i26.i = tail call i64 @llvm.umin.i64(i64 %.sroa.017.0.val24.i, i64 %.sroa.015.0.val25.i)
  %i.bd = tail call i32 @memcmp(ptr nonnull readonly %.sroa.017.0.val.i, ptr nonnull readonly %.sroa.015.0.val.i, i64 %spec.store.select.i.i.i.i.i26.i), !alias.scope !1519, !noalias !1516 ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp eq i32 %i.bd, 0
  %i.bg = sub i64 %.sroa.017.0.val24.i, %.sroa.015.0.val25.i
  %spec.select.i.i.i.i.i27.i = select i1 %i.bf, i64 %i.bg, i64 %i.be ; 2 uses
  %i.bh = icmp sgt i64 %spec.select.i.i.i.i.i27.i, -1 ; 2 uses
  %..i.i = select i1 %i.bh, ptr %.sroa.017.05.i, ptr %.sroa.015.06.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.019.04.i, ptr noundef nonnull align 8 dereferenceable(32) %..i.i, i64 32, i1 false), !noalias !1520
  %.neg.i.i = sext i1 %i.bh to i64
  %i.bi = getelementptr [32 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i ; 2 uses
  %spec.select.i.i.i.i.i27.lobit.i = ashr i64 %spec.select.i.i.i.i.i27.i, 63
  %i.bj = getelementptr [32 x i8], ptr %.sroa.015.06.i, i64 %spec.select.i.i.i.i.i27.lobit.i ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -32
  %exitcond.not.i = icmp eq i64 %i.ap, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.bl = icmp ult ptr %i.az, %i.al               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.bl, ptr %i.az, ptr %i.ax
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.0..sroa.011.0.i, i64 32, i1 false)
  %i.bm = zext i1 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.az, i64 %i.bm
  %i.bo = xor i1 %i.bl, true
  %i.bp = zext i1 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %i.bp
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.ax, %._crit_edge.i ], [ %i.bq, %bb.j ]
  %.sroa.06.1.i = phi ptr [ %i.az, %._crit_edge.i ], [ %i.bn, %bb.j ]
  %i.br = icmp ne ptr %.sroa.06.1.i, %i.al
  %i.bs = icmp ne ptr %.sroa.011.1.i, %i.am
  %or.cond.i = select i1 %i.br, i1 true, i1 %i.bs, !prof !28
  br i1 %or.cond.i, label %bb.l, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeTReRShENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1g_11sort_by_keyB1h_NCNvNtNtCsiAynQAjgDuT_10xet_client6common11http_client11headers_tags_0E0EB2p_.exit, !prof !28

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #34
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = shl nuw nsw i64 %1, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.bu, i1 false), !noalias !1521
  resume { ptr, i32 } %i.bt

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeTReRShENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1g_11sort_by_keyB1h_NCNvNtNtCsiAynQAjgDuT_10xet_client6common11http_client11headers_tags_0E0EB2p_.exit: ; preds = %bb.k, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTReRShENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keyB19_NCNvNtNtCsiAynQAjgDuT_10xet_client6common11http_client11headers_tags_0E0EB2h_.exit
  %.sroa.05.040 = phi i64 [ %i.cp, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTReRShENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keyB19_NCNvNtNtCsiAynQAjgDuT_10xet_client6common11http_client11headers_tags_0E0EB2h_.exit ], [ %.sroa.0.0, %bb.g ] ; 4 uses
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.05.040 ; 2 uses
  %.idx = shl nuw nsw i64 %.sroa.05.040, 5
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i64 32, i1 false)
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -32 ; 3 uses
  %.val11.i = load ptr, ptr %i.bw, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.by = getelementptr i8, ptr %i.bw, i64 8
  %.val12.i = load i64, ptr %i.by, align 8, !noundef !16 ; 5 uses
  %.val13.i = load ptr, ptr %i.bx, align 8, !nonnull !16, !noundef !16
  %i.bz = getelementptr i8, ptr %i.bw, i64 -24
  %.val14.i = load i64, ptr %i.bz, align 8, !noundef !16 ; 2 uses
  %spec.store.select.i.i.i.i.i.i30 = tail call i64 @llvm.umin.i64(i64 %.val12.i, i64 %.val14.i)
  %i.ca = tail call i32 @memcmp(ptr nonnull readonly %.val11.i, ptr nonnull readonly %.val13.i, i64 %spec.store.select.i.i.i.i.i.i30), !alias.scope !1513 ; 2 uses
  %i.cb = sext i32 %i.ca to i64
  %i.cc = icmp eq i32 %i.ca, 0
  %i.cd = sub i64 %.val12.i, %.val14.i
  %spec.select.i.i.i.i.i.i31 = select i1 %i.cc, i64 %i.cd, i64 %i.cb
  %i.ce = icmp slt i64 %spec.select.i.i.i.i.i.i31, 0
  br i1 %i.ce, label %bb.n, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTReRShENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keyB19_NCNvNtNtCsiAynQAjgDuT_10xet_client6common11http_client11headers_tags_0E0EB2h_.exit

bb.n:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 32, i1 false)
  %i.cg = icmp eq i64 %.sroa.05.040, 1
  br i1 %i.cg, label %._crit_edge, label %.lr.ph62

bb.o:                                             ; preds = %.lr.ph62
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i3261, ptr noundef nonnull align 8 dereferenceable(32) %i.ci, i64 32, i1 false)
  %i.ch = icmp eq ptr %i.ci, %2
  br i1 %i.ch, label %._crit_edge, label %.lr.ph62

.lr.ph62:                                         ; preds = %bb.n, %bb.o
  %.sroa.0.0.i3261 = phi ptr [ %i.ci, %bb.o ], [ %i.bx, %bb.n ] ; 4 uses
  %i.ci = getelementptr inbounds i8, ptr %.sroa.0.0.i3261, i64 -32 ; 4 uses
  %.val9.i = load ptr, ptr %i.ci, align 8, !nonnull !16, !noundef !16
  %i.cj = getelementptr i8, ptr %.sroa.0.0.i3261, i64 -24
  %.val10.i = load i64, ptr %i.cj, align 8, !noundef !16 ; 2 uses
  %spec.store.select.i.i.i.i.i15.i = tail call i64 @llvm.umin.i64(i64 %.val12.i, i64 %.val10.i)
  %i.ck = tail call i32 @memcmp(ptr nonnull readonly %.val11.i, ptr nonnull readonly %.val9.i, i64 %spec.store.select.i.i.i.i.i15.i), !alias.scope !1514 ; 2 uses
  %i.cl = sext i32 %i.ck to i64
  %i.cm = icmp eq i32 %i.ck, 0
  %i.cn = sub i64 %.val12.i, %.val10.i
  %spec.select.i.i.i.i.i16.i = select i1 %i.cm, i64 %i.cn, i64 %i.cl
  %i.co = icmp slt i64 %spec.select.i.i.i.i.i16.i, 0
  br i1 %i.co, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o, %.lr.ph62, %bb.n
  %.sroa.0.0.i32.lcssa = phi ptr [ %2, %bb.n ], [ %2, %bb.o ], [ %.sroa.0.0.i3261, %.lr.ph62 ] ; 3 uses
  store ptr %.val11.i, ptr %.sroa.0.0.i32.lcssa, align 8, !noalias !1515
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i32.lcssa, i64 8
  store i64 %.val12.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1515
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i32.lcssa, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !noalias !1515
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTReRShENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keyB19_NCNvNtNtCsiAynQAjgDuT_10xet_client6common11http_client11headers_tags_0E0EB2h_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTReRShENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keyB19_NCNvNtNtCsiAynQAjgDuT_10xet_client6common11http_client11headers_tags_0E0EB2h_.exit: ; preds = %._crit_edge, %.lr.ph
  %i.cp = add nuw nsw i64 %.sroa.05.040, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.cp, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: cold noreturn nonlazybind uwtable
define hidden noundef { i64, ptr } @_RINvXNtNtNtCsexYYUdYSQU6_5alloc2io4copy7genericINtNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompress12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1P_6cursor6CursorRINtNtB9_3vec3VechEEEENtB3_18BufferedReaderSpec7copy_toB2M_ECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(184) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @10, ptr noundef nonnull inttoptr (i64 149 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #34
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define hidden noundef { i64, ptr } @_RINvXNtNtNtCsexYYUdYSQU6_5alloc2io4copy7genericINtNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompress12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1P_6cursor6CursorRShEEENtB3_18BufferedReaderSpec7copy_toINtNtB9_3vec3VechEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(184) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @10, ptr noundef nonnull inttoptr (i64 149 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #34
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB10_2__FEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB21_8adapters3map12map_try_foldBX_BX_B2Z_INtNtB23_6result6ResultB2Z_zENCINvNtNtB12_10cas_client20chunk_window_builder32build_file_chunk_hashes_responseINtB8_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEE0NCINvNtB3K_6filter15filter_try_foldBX_B2Z_B4r_NCB4W_s_0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0E0B4r_EB12_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %.not12 = icmp eq ptr %i.d, %i.c
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val9 = load ptr, ptr %i.e, align 8, !nonnull !16, !align !23, !noundef !16 ; 2 uses
  %.val = load ptr, ptr %3, align 8
  %.val.i.pre14 = load ptr, ptr %.val9, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB12_2__FEBZ_INtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1Z_zENCINvNtNtB14_10cas_client20chunk_window_builder32build_file_chunk_hashes_responseINtB24_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEE0NCINvNtB6_6filter15filter_try_foldBZ_B1Z_B30_NCB3u_s_0NCINvNtB24_16in_place_collect24write_in_place_with_dropBZ_E0E0E0B14_.exit
  %i.f = phi ptr [ %i.c, %.lr.ph ], [ %i.s, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB12_2__FEBZ_INtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1Z_zENCINvNtNtB14_10cas_client20chunk_window_builder32build_file_chunk_hashes_responseINtB24_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEE0NCINvNtB6_6filter15filter_try_foldBZ_B1Z_B30_NCB3u_s_0NCINvNtB24_16in_place_collect24write_in_place_with_dropBZ_E0E0E0B14_.exit ] ; 2 uses
  %.val.i = phi ptr [ %.val.i.pre14, %.lr.ph ], [ %.val.i15, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB12_2__FEBZ_INtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1Z_zENCINvNtNtB14_10cas_client20chunk_window_builder32build_file_chunk_hashes_responseINtB24_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEE0NCINvNtB6_6filter15filter_try_foldBZ_B1Z_B30_NCB3u_s_0NCINvNtB24_16in_place_collect24write_in_place_with_dropBZ_E0E0E0B14_.exit ] ; 3 uses
  %i.g = phi ptr [ %i.d, %.lr.ph ], [ %i.r, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB12_2__FEBZ_INtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1Z_zENCINvNtNtB14_10cas_client20chunk_window_builder32build_file_chunk_hashes_responseINtB24_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEE0NCINvNtB6_6filter15filter_try_foldBZ_B1Z_B30_NCB3u_s_0NCINvNtB24_16in_place_collect24write_in_place_with_dropBZ_E0E0E0B14_.exit ] ; 3 uses
  %storemerge13 = phi ptr [ %2, %.lr.ph ], [ %.pn3.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB12_2__FEBZ_INtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1Z_zENCINvNtNtB14_10cas_client20chunk_window_builder32build_file_chunk_hashes_responseINtB24_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEE0NCINvNtB6_6filter15filter_try_foldBZ_B1Z_B30_NCB3u_s_0NCINvNtB24_16in_place_collect24write_in_place_with_dropBZ_E0E0E0B14_.exit ] ; 5 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store ptr %i.k, ptr %i.b, align 8
  %i.l = load i64, ptr %.val.i, align 8, !noundef !16
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %i.j) ; 2 uses
  %i.m = icmp ult i64 %i.h, %..i.i.i
  br i1 %i.m, label %_RNCINvNtNtCsiAynQAjgDuT_10xet_client10cas_client20chunk_window_builder32build_file_chunk_hashes_responseINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEEs_0B8_.exit.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB12_2__FEBZ_INtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1Z_zENCINvNtNtB14_10cas_client20chunk_window_builder32build_file_chunk_hashes_responseINtB24_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEE0NCINvNtB6_6filter15filter_try_foldBZ_B1Z_B30_NCB3u_s_0NCINvNtB24_16in_place_collect24write_in_place_with_dropBZ_E0E0E0B14_.exit

_RNCINvNtNtCsiAynQAjgDuT_10xet_client10cas_client20chunk_window_builder32build_file_chunk_hashes_responseINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEEs_0B8_.exit.i.i: ; preds = %bb.b
  %.val.i.i = load ptr, ptr %.val, align 8, !nonnull !16, !noundef !16
  %i.n = load i64, ptr %.val.i.i, align 8, !noundef !16
  %i.o = icmp ult i64 %i.h, %i.n
  br i1 %i.o, label %bb.c, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB12_2__FEBZ_INtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1Z_zENCINvNtNtB14_10cas_client20chunk_window_builder32build_file_chunk_hashes_responseINtB24_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEE0NCINvNtB6_6filter15filter_try_foldBZ_B1Z_B30_NCB3u_s_0NCINvNtB24_16in_place_collect24write_in_place_with_dropBZ_E0E0E0B14_.exit

bb.c:                                             ; preds = %_RNCINvNtNtCsiAynQAjgDuT_10xet_client10cas_client20chunk_window_builder32build_file_chunk_hashes_responseINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEEs_0B8_.exit.i.i
  store i64 %i.h, ptr %storemerge13, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge13, i64 8
  store i64 %..i.i.i, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %storemerge13, i64 16
  %.val.i.pre = load ptr, ptr %.val9, align 8
  %.pre = load ptr, ptr %i.a, align 8
  %.pre17 = load ptr, ptr %i.b, align 8
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB12_2__FEBZ_INtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1Z_zENCINvNtNtB14_10cas_client20chunk_window_builder32build_file_chunk_hashes_responseINtB24_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEE0NCINvNtB6_6filter15filter_try_foldBZ_B1Z_B30_NCB3u_s_0NCINvNtB24_16in_place_collect24write_in_place_with_dropBZ_E0E0E0B14_.exit

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB12_2__FEBZ_INtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1Z_zENCINvNtNtB14_10cas_client20chunk_window_builder32build_file_chunk_hashes_responseINtB24_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEE0NCINvNtB6_6filter15filter_try_foldBZ_B1Z_B30_NCB3u_s_0NCINvNtB24_16in_place_collect24write_in_place_with_dropBZ_E0E0E0B14_.exit: ; preds = %bb.b, %_RNCINvNtNtCsiAynQAjgDuT_10xet_client10cas_client20chunk_window_builder32build_file_chunk_hashes_responseINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEEs_0B8_.exit.i.i, %bb.c
  %i.r = phi ptr [ %.pre17, %bb.c ], [ %i.k, %bb.b ], [ %i.k, %_RNCINvNtNtCsiAynQAjgDuT_10xet_client10cas_client20chunk_window_builder32build_file_chunk_hashes_responseINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEEs_0B8_.exit.i.i ] ; 2 uses
  %i.s = phi ptr [ %.pre, %bb.c ], [ %i.f, %bb.b ], [ %i.f, %_RNCINvNtNtCsiAynQAjgDuT_10xet_client10cas_client20chunk_window_builder32build_file_chunk_hashes_responseINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEEs_0B8_.exit.i.i ] ; 2 uses
  %.val.i15 = phi ptr [ %.val.i.pre, %bb.c ], [ %.val.i, %bb.b ], [ %.val.i, %_RNCINvNtNtCsiAynQAjgDuT_10xet_client10cas_client20chunk_window_builder32build_file_chunk_hashes_responseINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEEs_0B8_.exit.i.i ]
  %.pn3.i.i = phi ptr [ %i.q, %bb.c ], [ %storemerge13, %bb.b ], [ %storemerge13, %_RNCINvNtNtCsiAynQAjgDuT_10xet_client10cas_client20chunk_window_builder32build_file_chunk_hashes_responseINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEEs_0B8_.exit.i.i ] ; 2 uses
  %.not = icmp eq ptr %i.r, %i.s
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB12_2__FEBZ_INtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1Z_zENCINvNtNtB14_10cas_client20chunk_window_builder32build_file_chunk_hashes_responseINtB24_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEE0NCINvNtB6_6filter15filter_try_foldBZ_B1Z_B30_NCB3u_s_0NCINvNtB24_16in_place_collect24write_in_place_with_dropBZ_E0E0E0B14_.exit, %bb.a
  %storemerge.lcssa = phi ptr [ %2, %bb.a ], [ %.pn3.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB12_2__FEBZ_INtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1Z_zENCINvNtNtB14_10cas_client20chunk_window_builder32build_file_chunk_hashes_responseINtB24_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEE0NCINvNtB6_6filter15filter_try_foldBZ_B1Z_B30_NCB3u_s_0NCINvNtB24_16in_place_collect24write_in_place_with_dropBZ_E0E0E0B14_.exit ]
  %i.t = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.u = insertvalue { ptr, ptr } %i.t, ptr %storemerge.lcssa, 1
  ret { ptr, ptr } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsiAynQAjgDuT_10xet_client9cas_types22XorbReconstructionTermENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryENCINvNtNtB26_8adapters3map12map_try_foldBX_B3E_B34_INtNtB28_6result6ResultB34_zENCNCNCNvXs0_NtNtB11_10cas_client13remote_clientNtB6F_12RemoteClientNtNtB6H_9interface6Client28get_file_reconstruction_info00s_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3E_E0E0B60_EB11_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not10 = icmp eq ptr %.promoted, %i.e
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldNtNtCsiAynQAjgDuT_10xet_client9cas_types22XorbReconstructionTermNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB21_EINtNtBa_6result6ResultB3x_zENCNCNCNvXs0_NtNtB13_10cas_client13remote_clientNtB5d_12RemoteClientNtNtB5f_9interface6Client28get_file_reconstruction_info00s_0NCINvNtB3C_16in_place_collect24write_in_place_with_dropB21_E0E0B13_.exit
  %.sroa.4.011 = phi ptr [ %2, %.lr.ph ], [ %i.u, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldNtNtCsiAynQAjgDuT_10xet_client9cas_types22XorbReconstructionTermNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB21_EINtNtBa_6result6ResultB3x_zENCNCNCNvXs0_NtNtB13_10cas_client13remote_clientNtB5d_12RemoteClientNtNtB5f_9interface6Client28get_file_reconstruction_info00s_0NCINvNtB3C_16in_place_collect24write_in_place_with_dropB21_E0E0B13_.exit ] ; 4 uses
  %i.m = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldNtNtCsiAynQAjgDuT_10xet_client9cas_types22XorbReconstructionTermNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB21_EINtNtBa_6result6ResultB3x_zENCNCNCNvXs0_NtNtB13_10cas_client13remote_clientNtB5d_12RemoteClientNtNtB5f_9interface6Client28get_file_reconstruction_info00s_0NCINvNtB3C_16in_place_collect24write_in_place_with_dropB21_E0E0B13_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 3 uses
  store ptr %i.n, ptr %i.f, align 8
  store ptr %1, ptr %i.c, align 8
  store ptr %.sroa.4.011, ptr %i.g, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1527
  store ptr %1, ptr %i.b, align 8, !noalias !1527
  store ptr %.sroa.4.011, ptr %i.i, align 8, !noalias !1527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1527
  %i.o = load i32, ptr %i.j, align 8, !alias.scope !1528, !noalias !1529, !noundef !16
  %i.p = load i32, ptr %i.k, align 8, !alias.scope !1528, !noalias !1529, !noundef !16
  %i.q = load i32, ptr %i.l, align 4, !alias.scope !1528, !noalias !1529, !noundef !16
  invoke void @_RINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB5_21FileDataSequenceEntry3newmECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.h, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.q)
          to label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldNtNtCsiAynQAjgDuT_10xet_client9cas_types22XorbReconstructionTermNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB21_EINtNtBa_6result6ResultB3x_zENCNCNCNvXs0_NtNtB13_10cas_client13remote_clientNtB5d_12RemoteClientNtNtB5f_9interface6Client28get_file_reconstruction_info00s_0NCINvNtB3C_16in_place_collect24write_in_place_with_dropB21_E0E0B13_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.r

bb.d:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = invoke noundef i64 @_RNvMNtNtCsexYYUdYSQU6_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryE3lenCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.c unwind label %bb.e, !noalias !1527 ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !1527
  unreachable

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldNtNtCsiAynQAjgDuT_10xet_client9cas_types22XorbReconstructionTermNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB21_EINtNtBa_6result6ResultB3x_zENCNCNCNvXs0_NtNtB13_10cas_client13remote_clientNtB5d_12RemoteClientNtNtB5f_9interface6Client28get_file_reconstruction_info00s_0NCINvNtB3C_16in_place_collect24write_in_place_with_dropB21_E0E0B13_.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.011, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !1527
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.4.011, i64 48 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq ptr %i.n, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldNtNtCsiAynQAjgDuT_10xet_client9cas_types22XorbReconstructionTermNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB21_EINtNtBa_6result6ResultB3x_zENCNCNCNvXs0_NtNtB13_10cas_client13remote_clientNtB5d_12RemoteClientNtNtB5f_9interface6Client28get_file_reconstruction_info00s_0NCINvNtB3C_16in_place_collect24write_in_place_with_dropB21_E0E0B13_.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.u, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldNtNtCsiAynQAjgDuT_10xet_client9cas_types22XorbReconstructionTermNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB21_EINtNtBa_6result6ResultB3x_zENCNCNCNvXs0_NtNtB13_10cas_client13remote_clientNtB5d_12RemoteClientNtNtB5f_9interface6Client28get_file_reconstruction_info00s_0NCINvNtB3C_16in_place_collect24write_in_place_with_dropB21_E0E0B13_.exit ]
  %i.v = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.w = insertvalue { ptr, ptr } %i.v, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.w
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsiAynQAjgDuT_10xet_client9cas_types27XorbReconstructionFetchInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtBZ_19XorbMultiRangeFetchENCINvNtNtB2b_8adapters3map12map_try_foldBX_B3J_B39_INtNtB2d_6result6ResultB39_zENCNCNvXs8_BZ_NtBZ_29QueryReconstructionResponseV2INtNtB2d_7convert4FromNtBZ_27QueryReconstructionResponseE4from00NCINvNtB8_16in_place_collect24write_in_place_with_dropB3J_E0E0B4Z_EB11_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.410 = alloca [24 x i8], align 8          ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not15 = icmp eq ptr %.promoted, %i.d
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldNtNtCsiAynQAjgDuT_10xet_client9cas_types27XorbReconstructionFetchInfoNtB11_19XorbMultiRangeFetchINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB26_EINtNtBa_6result6ResultB2x_zENCNCNvXs8_B11_NtB11_29QueryReconstructionResponseV2INtNtBa_7convert4FromNtB11_27QueryReconstructionResponseE4from00NCINvNtB2C_16in_place_collect24write_in_place_with_dropB26_E0E0B13_.exit
  %.sroa.4.016 = phi ptr [ %2, %.lr.ph ], [ %i.p, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldNtNtCsiAynQAjgDuT_10xet_client9cas_types27XorbReconstructionFetchInfoNtB11_19XorbMultiRangeFetchINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB26_EINtNtBa_6result6ResultB2x_zENCNCNvXs8_B11_NtB11_29QueryReconstructionResponseV2INtNtBa_7convert4FromNtB11_27QueryReconstructionResponseE4from00NCINvNtB2C_16in_place_collect24write_in_place_with_dropB26_E0E0B13_.exit ] ; 6 uses
  %i.g = phi ptr [ %.promoted, %.lr.ph ], [ %i.j, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldNtNtCsiAynQAjgDuT_10xet_client9cas_types27XorbReconstructionFetchInfoNtB11_19XorbMultiRangeFetchINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB26_EINtNtBa_6result6ResultB2x_zENCNCNvXs8_B11_NtB11_29QueryReconstructionResponseV2INtNtBa_7convert4FromNtB11_27QueryReconstructionResponseE4from00NCINvNtB2C_16in_place_collect24write_in_place_with_dropB26_E0E0B13_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.410, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.h = load <2 x i32>, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load <2 x i64>, ptr %.sroa.6.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  store ptr %i.j, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1535
  store ptr %1, ptr %i.b, align 8, !noalias !1535
  store ptr %.sroa.4.016, ptr %i.f, align 8, !noalias !1535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !1536
  %i.k = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #31, !noalias !1536 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldNtNtCsiAynQAjgDuT_10xet_client9cas_types27XorbReconstructionFetchInfoNtB11_19XorbMultiRangeFetchINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB26_EINtNtBa_6result6ResultB2x_zENCNCNvXs8_B11_NtB11_29QueryReconstructionResponseV2INtNtBa_7convert4FromNtB11_27QueryReconstructionResponseE4from00NCINvNtB2C_16in_place_collect24write_in_place_with_dropB26_E0E0B13_.exit, !prof !18

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #29
          to label %.noexc.i.i unwind label %bb.d, !noalias !1536

.noexc.i.i:                                       ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.e, !noalias !1536

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !1536
  unreachable

.body.i:                                          ; preds = %bb.f
  resume { ptr, i32 } %i.m

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropNtNtCsiAynQAjgDuT_10xet_client9cas_types19XorbMultiRangeFetchEEB1C_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b) #32
          to label %.body.i unwind label %bb.g, !noalias !1535

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !1535
  unreachable

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldNtNtCsiAynQAjgDuT_10xet_client9cas_types27XorbReconstructionFetchInfoNtB11_19XorbMultiRangeFetchINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB26_EINtNtBa_6result6ResultB2x_zENCNCNvXs8_B11_NtB11_29QueryReconstructionResponseV2INtNtBa_7convert4FromNtB11_27QueryReconstructionResponseE4from00NCINvNtB2C_16in_place_collect24write_in_place_with_dropB26_E0E0B13_.exit: ; preds = %bb.b
  store <2 x i64> %i.i, ptr %i.k, align 8, !noalias !1536
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <2 x i32> %i.h, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !1536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.016, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.410, i64 24, i1 false)
  %.sroa.4.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.016, i64 24
  store i64 1, ptr %.sroa.4.sroa.4.0..sroa_idx.i, align 8, !noalias !1535
end_hunk_0
