inline.NumInlined: 132
inline.NumDeleted: 91
begin_hunk_0_@_RNvXs0_NtNtCsd1Od0hvlDsw_4toml2de5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt:bb.a
  %.lcssa313325 = phi i64 [ %.lcssa313326, %bb.t ], [ %.lcssa313326, %bb.x ], [ %.lcssa313326, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i ], [ %i.dc, %bb.y ] ; 3 uses
  %.lcssa320322 = phi i64 [ %.lcssa320324, %bb.t ], [ %i.dc, %bb.x ], [ %i.z, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i ], [ %i.dc, %bb.y ] ; 3 uses
  %i.di = phi i64 [ %i.ck, %bb.t ], [ %i.dc, %bb.x ], [ %i.z, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i ], [ %i.dc, %bb.y ]
  %i.dj = phi i1 [ true, %bb.t ], [ true, %bb.x ], [ true, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i ], [ false, %bb.y ]
  %i.dk = add i64 %.sroa.01.0.i, -1               ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECsd1Od0hvlDsw_4toml.exit.thread, label %.split.i

_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECsd1Od0hvlDsw_4toml.exit.thread: ; preds = %select.unfold.i
  %i.dm = trunc nuw i8 %i.dh to i1
  br i1 %i.dm, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECsd1Od0hvlDsw_4toml.exit, label %bb.z

bb.z:                                             ; preds = %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECsd1Od0hvlDsw_4toml.exit.thread
  %i.dn = icmp ult i64 %i.z, %.lcssa320322
  br i1 %i.dn, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsd1Od0hvlDsw_4toml.exit, %bb.z
  %.pre.i2.i372379 = phi i64 [ %.lcssa313325, %bb.z ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsd1Od0hvlDsw_4toml.exit ] ; 3 uses
  %.promoted.i.i373376 = phi i64 [ %.lcssa320322, %bb.z ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsd1Od0hvlDsw_4toml.exit ]
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.split.i.i
  %i.do = phi i64 [ %.promoted.i.i373376, %.lr.ph.split.i.i ], [ %i.ed, %.backedge.backedge ] ; 5 uses
  %i.dp = sub nuw i64 %i.z, %i.do                 ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.ptr298, i64 %i.do ; 2 uses
  %i.dr = icmp samesign ult i64 %i.dp, 16
  br i1 %i.dr, label %.preheader.i.i.i, label %bb.aa

.preheader.i.i.i:                                 ; preds = %.backedge
  %.not.i.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.aa:                                            ; preds = %.backedge
  %i.ds = call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dq, i64 noundef range(i64 0, -9223372036854775808) %i.dp), !noalias !183
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ab, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.dp, %bb.ab ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.ab ], [ 1, %.lr.ph.i.i.i ]
  %i.dt = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.du = insertvalue { i64, i64 } %i.dt, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.ab
  %.sroa.01.05.i.i.i = phi i64 [ %i.dy, %bb.ab ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sroa.01.05.i.i.i
  %i.dw = load i8, ptr %i.dv, align 1, !alias.scope !189, !noalias !183, !noundef !3
  %i.dx = icmp eq i8 %i.dw, 10
  br i1 %i.dx, label %._crit_edge.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i
  %i.dy = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.dy, %i.dp
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.aa
  %.merged.i.i.i = phi { i64, i64 } [ %i.du, %._crit_edge.i.i.i ], [ %i.ds, %bb.aa ] ; 2 uses
  %i.dz = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.ea = trunc nuw i64 %i.dz to i1
  br i1 %i.ea, label %bb.ac, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i

bb.ac:                                            ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i
  %i.eb = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 3 uses
  %i.ec = add i64 %i.do, 1
  %i.ed = add i64 %i.ec, %i.eb                    ; 2 uses
  %.not13.i.i = icmp ugt i64 %i.ed, %i.z          ; 2 uses
  %i.ee = add i64 %i.do, %i.eb
  %or.cond.i.i.not = icmp ult i64 %i.ee, %i.z
  br i1 %or.cond.i.i.not, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %.not13.i.i, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.ad, %bb.ae
  br label %.backedge

bb.ae:                                            ; preds = %bb.ac
  %i.ef = add i64 %i.do, %i.eb                    ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.ptr298, i64 %i.ef
  %lhsc368 = load i8, ptr %i.eg, align 1
  %i.eh = icmp eq i8 %lhsc368, 10                 ; 2 uses
  %brmerge390 = or i1 %i.eh, %.not13.i.i
  br i1 %brmerge390, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.loopexit.split.loop.exit427, label %.backedge.backedge

_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECsd1Od0hvlDsw_4toml.exit: ; preds = %.split.i, %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECsd1Od0hvlDsw_4toml.exit.thread
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #15
  unreachable

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.loopexit.split.loop.exit427: ; preds = %bb.ae
  %.mux391.le = select i1 %i.eh, i64 %i.ef, i64 %i.z
  br label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.loopexit.split.loop.exit427, %bb.ad, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i, %bb.z
  %.pre.i2.i372377 = phi i64 [ %.lcssa313325, %bb.z ], [ %.pre.i2.i372379, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i ], [ %.pre.i2.i372379, %bb.ad ], [ %.pre.i2.i372379, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.loopexit.split.loop.exit427 ] ; 2 uses
  %.pn = phi i64 [ %i.z, %bb.z ], [ %i.z, %bb.ad ], [ %.mux391.le, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.loopexit.split.loop.exit427 ], [ %i.z, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i ]
  %.sroa.4.1.i.ph = sub nuw i64 %.pn, %.pre.i2.i372377 ; 2 uses
  %.sroa.0.1.i.ph = getelementptr inbounds nuw i8, ptr %.ptr298, i64 %.pre.i2.i372377
  store ptr %.sroa.0.1.i.ph, ptr %i.j, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sroa.4.1.i.ph, ptr %i.ei, align 8
  %i.ej = sub i64 %.val1.i, %.val.i
  %i.ek = call i64 @llvm.usub.sat.i64(i64 %.sroa.4.1.i.ph, i64 %.sroa.3.0.i)
  %.sroa.0.0.i233 = call noundef i64 @llvm.umin.i64(i64 %i.ek, i64 %i.ej) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.m, ptr %i.i, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.441.0..sroa_idx, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.l, ptr %i.el, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.445.0..sroa_idx, align 8
  %i.em = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 11 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !nonnull !3, !align !81, !noundef !3 ; 4 uses
  %i.ep = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.eo, ptr noundef nonnull @12, ptr noundef nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.ep, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 24 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %bb.af
  %.sroa.8.0 = phi i1 [ false, %bb.af ], [ %i.er, %bb.ah ]
  %.sroa.0246.0 = phi i64 [ 0, %bb.af ], [ %spec.select291, %bb.ah ] ; 3 uses
  %.not.i = icmp ugt i64 %.sroa.0246.0, %i.by
  %or.cond = select i1 %.sroa.8.0, i1 true, i1 %.not.i
  br i1 %or.cond, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.er = icmp uge i64 %.sroa.0246.0, %i.by       ; 2 uses
  %not. = xor i1 %i.er, true
  %i.es = zext i1 %not. to i64
  %spec.select291 = add nuw i64 %.sroa.0246.0, %i.es
  %i.et = load ptr, ptr %i.eq, align 8, !invariant.load !3, !nonnull !3
  %i.eu = call noundef zeroext i1 %i.et(ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 1)
  br i1 %i.eu, label %.loopexit, label %bb.ag

bb.ai:                                            ; preds = %bb.ag
  %i.ev = load ptr, ptr %i.eq, align 8, !invariant.load !3, !nonnull !3 ; 7 uses
  %i.ew = call noundef zeroext i1 %i.ev(ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 2)
  br i1 %i.ew, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.m, ptr %i.h, align 8
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.485.0..sroa_idx, align 8
  %i.ex = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.eo, ptr noundef nonnull @14, ptr noundef nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.ex, label %.loopexit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.j, ptr %i.g, align 8
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsd1Od0hvlDsw_4toml, ptr %.sroa.4101.0..sroa_idx, align 8
  %i.ey = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.eo, ptr noundef nonnull @15, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %i.ey, label %.loopexit, label %.preheader393

.preheader393:                                    ; preds = %bb.ak, %bb.al
  %.sroa.8249.0 = phi i1 [ %i.ez, %bb.al ], [ false, %bb.ak ]
  %.sroa.0247.0 = phi i64 [ %spec.select293, %bb.al ], [ 0, %bb.ak ] ; 3 uses
  %.not.i236 = icmp ugt i64 %.sroa.0247.0, %i.by
  %or.cond305 = select i1 %.sroa.8249.0, i1 true, i1 %.not.i236
  br i1 %or.cond305, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.preheader393
  %i.ez = icmp uge i64 %.sroa.0247.0, %i.by       ; 2 uses
  %not.302 = xor i1 %i.ez, true
  %i.fa = zext i1 %not.302 to i64
  %spec.select293 = add nuw i64 %.sroa.0247.0, %i.fa
  %i.fb = call noundef zeroext i1 %i.ev(ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 1)
  br i1 %i.fb, label %.loopexit, label %.preheader393

bb.am:                                            ; preds = %.preheader393
  %i.fc = call noundef zeroext i1 %i.ev(ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 1)
  br i1 %i.fc, label %.loopexit, label %.preheader307

.preheader307:                                    ; preds = %bb.am, %bb.an
  %.sroa.0251.0 = phi i64 [ %spec.select294, %bb.an ], [ 0, %bb.am ] ; 3 uses
  %.sroa.8253.0 = phi i1 [ %i.fd, %bb.an ], [ false, %bb.am ]
  %.not.i240 = icmp ugt i64 %.sroa.0251.0, %.sroa.3.0.i
  %or.cond306 = select i1 %.sroa.8253.0, i1 true, i1 %.not.i240
  br i1 %or.cond306, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.preheader307
  %i.fd = icmp uge i64 %.sroa.0251.0, %.sroa.3.0.i ; 2 uses
  %not.304 = xor i1 %i.fd, true
  %i.fe = zext i1 %not.304 to i64
  %spec.select294 = add nuw i64 %.sroa.0251.0, %i.fe
  %i.ff = call noundef zeroext i1 %i.ev(ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 1)
  br i1 %i.ff, label %.loopexit, label %.preheader307

bb.ao:                                            ; preds = %.preheader307
  %i.fg = call noundef zeroext i1 %i.ev(ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 1)
  br i1 %i.fg, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.ao
  %umax = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i233, i64 1)
  %exitcond.not402 = icmp ult i64 %.sroa.0.0.i233, 2
  br i1 %exitcond.not402, label %.preheader._crit_edge, label %.lr.ph404

.preheader:                                       ; preds = %.lr.ph404
  %i.fh = add i64 %.sroa.0218.0403, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.fh, %umax
  br i1 %exitcond.not, label %.preheader._crit_edge, label %.lr.ph404

.lr.ph404:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.0218.0403 = phi i64 [ %i.fh, %.preheader ], [ 1, %.preheader.preheader ]
  %i.fi = call noundef zeroext i1 %i.ev(ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 1)
  br i1 %i.fi, label %.loopexit, label %.preheader

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  %i.fj = call noundef zeroext i1 %i.ev(ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 1)
  br i1 %i.fj, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %.preheader._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RNvMNtNtCsd1Od0hvlDsw_4toml2de5errorNtB2_5Error4span.exit.thread

.loopexit:                                        ; preds = %bb.ah, %bb.al, %bb.an, %.lr.ph404, %bb.ak, %bb.aj, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, %.preheader._crit_edge, %bb.ao, %bb.am, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ax

bb.aq:                                            ; preds = %_RNvMNtNtCsd1Od0hvlDsw_4toml2de5errorNtB2_5Error4span.exit.thread
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fl = load i64, ptr %i.fk, align 8, !noundef !3 ; 3 uses
  %i.fm = icmp ult i64 %i.fl, 384307168202282326
  call void @llvm.assume(i1 %i.fm)
  %i.fn = icmp eq i64 %i.fl, 0
  br i1 %i.fn, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fp = load ptr, ptr %i.fo, align 8, !nonnull !3, !noundef !3
  call void @_RINvNtCscdodAO9FK5_5alloc3str17join_generic_copyehNtNtB4_6string6StringECsd1Od0hvlDsw_4toml(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.fp, i64 noundef %i.fl, ptr noalias noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.4205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.4205.0..sroa_idx, align 8
  %i.fq = invoke noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.w, ptr noundef nonnull @20, ptr noundef nonnull %i.d)
          to label %bb.at unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsd1Od0hvlDsw_4toml(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #16
          to label %common.resume unwind label %bb.aw

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsd1Od0hvlDsw_4toml(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsd1Od0hvlDsw_4toml.exit245 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsd1Od0hvlDsw_4toml(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsd1Od0hvlDsw_4toml.exit245: ; preds = %bb.at
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsd1Od0hvlDsw_4toml(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ax

bb.aw:                                            ; preds = %bb.as
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.ax:                                            ; preds = %_RNvMNtNtCsd1Od0hvlDsw_4toml2de5errorNtB2_5Error4span.exit.thread, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsd1Od0hvlDsw_4toml.exit245, %bb.aq, %.loopexit
  %.sroa.0.1 = phi i1 [ true, %.loopexit ], [ false, %bb.aq ], [ %i.fq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsd1Od0hvlDsw_4toml.exit245 ], [ %i.x, %_RNvMNtNtCsd1Od0hvlDsw_4toml2de5errorNtB2_5Error4span.exit.thread ]
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCsd1Od0hvlDsw_4toml2de5errorINtB5_8TomlSinkINtNtCs4NRVxsYgnAr_4core6option6OptionNtB5_5ErrorEENtNtCs2wlUPplZW3b_11toml_parser5error9ErrorSink12report_error(ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !192, !noundef !3
  %.not = icmp eq i64 %i.c, 2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !range !25, !alias.scope !193, !noundef !3
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2wlUPplZW3b_11toml_parser5error10ParseErrorECsd1Od0hvlDsw_4toml.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsd1Od0hvlDsw_4toml(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsd1Od0hvlDsw_4toml.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsd1Od0hvlDsw_4toml(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.d ], [ %lpad.thr_comm, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsd1Od0hvlDsw_4toml.exit.i.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsd1Od0hvlDsw_4toml(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2wlUPplZW3b_11toml_parser5error10ParseErrorECsd1Od0hvlDsw_4toml.exit

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !198, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.g, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEE18get_or_insert_withNCNvXs3_NtNtCsd1Od0hvlDsw_4toml2de5errorINtB1K_8TomlSinkIBw_NtB1K_5ErrorEENtNtCs2wlUPplZW3b_11toml_parser5error9ErrorSink12report_error0EB1O_.exit

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val4 = load i64, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = invoke { ptr, i64 } @_RNvMsq_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE15copy_from_sliceCsd1Od0hvlDsw_4toml(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val4)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %bb.g
  %i.o = extractvalue { ptr, i64 } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.n, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.r = invoke noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offseteECsd1Od0hvlDsw_4toml(ptr noundef nonnull %i.q, i64 noundef %i.p)
          to label %.noexc5 unwind label %bb.i

.noexc5:                                          ; preds = %.noexc
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s ; 2 uses
  store ptr %i.t, ptr %i.i, align 8, !alias.scope !198
  store i64 %i.p, ptr %i.m, align 8, !alias.scope !198
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEE18get_or_insert_withNCNvXs3_NtNtCsd1Od0hvlDsw_4toml2de5errorINtB1K_8TomlSinkIBw_NtB1K_5ErrorEENtNtCs2wlUPplZW3b_11toml_parser5error9ErrorSink12report_error0EB1O_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2wlUPplZW3b_11toml_parser5error10ParseErrorECsd1Od0hvlDsw_4toml.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsd1Od0hvlDsw_4toml.exit.i.i, %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEEB13_.exit
  ret void

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEE18get_or_insert_withNCNvXs3_NtNtCsd1Od0hvlDsw_4toml2de5errorINtB1K_8TomlSinkIBw_NtB1K_5ErrorEENtNtCs2wlUPplZW3b_11toml_parser5error9ErrorSink12report_error0EB1O_.exit: ; preds = %.noexc5, %bb.f
  %i.u = phi ptr [ %i.t, %.noexc5 ], [ %i.j, %bb.f ] ; 2 uses
  %i.v = atomicrmw add ptr %i.u, i64 1 monotonic, align 8
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEEB13_.exit

bb.h:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEE18get_or_insert_withNCNvXs3_NtNtCsd1Od0hvlDsw_4toml2de5errorINtB1K_8TomlSinkIBw_NtB1K_5ErrorEENtNtCs2wlUPplZW3b_11toml_parser5error9ErrorSink12report_error0EB1O_.exit
  tail call void @llvm.trap()
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEEB13_.exit: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEE18get_or_insert_withNCNvXs3_NtNtCsd1Od0hvlDsw_4toml2de5errorINtB1K_8TomlSinkIBw_NtB1K_5ErrorEENtNtCs2wlUPplZW3b_11toml_parser5error9ErrorSink12report_error0EB1O_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load i64, ptr %i.x, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMNtNtCsd1Od0hvlDsw_4toml2de5errorNtB2_5Error3new(ptr noalias noundef align 8 captures(none) dereferenceable(88) %i.a, ptr noundef nonnull %i.u, i64 noundef %i.y, ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2wlUPplZW3b_11toml_parser5error10ParseErrorECsd1Od0hvlDsw_4toml.exit

bb.i:                                             ; preds = %.noexc, %bb.g
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2wlUPplZW3b_11toml_parser5error10ParseErrorECsd1Od0hvlDsw_4toml(ptr noalias noundef align 8 dereferenceable(88) %1) #16
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCsd1Od0hvlDsw_4toml2de5errorINtB5_8TomlSinkINtNtCscdodAO9FK5_5alloc3vec3VecNtB5_5ErrorEENtNtCs2wlUPplZW3b_11toml_parser5error9ErrorSink12report_error(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !201, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.b, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEE18get_or_insert_withNCNvXs4_NtNtCsd1Od0hvlDsw_4toml2de5errorINtB1K_8TomlSinkINtNtBN_3vec3VecNtB1K_5ErrorEENtNtCs2wlUPplZW3b_11toml_parser5error9ErrorSink12report_error0EB1O_.exit

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_char:bb.a

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsd1Od0hvlDsw_4toml(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !212
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !215, !noalias !212, !noundef !3 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !215, !noalias !212, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !215, !noalias !212
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !215, !noalias !212
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
_RINvXs_NtNtCsd1Od0hvlDsw_4toml2de5errorNtB5_5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error6customNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsEB9_.exit:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %3, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXNtCs6nZeqdiIoCH_10serde_core2deNtB2_10UnexpectedNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRDNtNtCs6nZeqdiIoCH_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsd1Od0hvlDsw_4toml, ptr %.sroa.46.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !219
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @26, ptr noundef nonnull %i.c), !noalias !222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !219
  store i64 0, ptr %i.a, align 8, !noalias !219
  call void @_RINvMNtNtCsd1Od0hvlDsw_4toml2de5errorNtB3_5Error6customNtNtCscdodAO9FK5_5alloc6string6StringEB7_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsd1Od0hvlDsw_4toml(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsd1Od0hvlDsw_4toml(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsd1Od0hvlDsw_4toml(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsd1Od0hvlDsw_4toml(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMsq_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE15copy_from_sliceCsd1Od0hvlDsw_4toml(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsd1Od0hvlDsw_4toml(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsd1Od0hvlDsw_4toml(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorE8grow_oneBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs2AWtUsOyxgP_3std(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offseteECsd1Od0hvlDsw_4toml(ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsd1Od0hvlDsw_4toml(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs4NRVxsYgnAr_4core3stre12escape_debug(ptr dead_on_unwind noalias noundef writable sret([120 x i8]) align 8 captures(none) dereferenceable(120), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs20_NtNtCs4NRVxsYgnAr_4core3str4iterNtB6_11EscapeDebugNtNtBa_3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtCs4NRVxsYgnAr_4core3str5count14do_count_chars(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtCs4NRVxsYgnAr_4core3str5count23char_count_general_case(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMsk_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impj4__fmt(i64 noundef, ptr noalias noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCscdodAO9FK5_5alloc3str17join_generic_copyehNtNtB4_6string6StringECsd1Od0hvlDsw_4toml(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 384307168202282326), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtCsd1Od0hvlDsw_4toml(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsc_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_18DatetimeParseErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCsd1Od0hvlDsw_4toml(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs6nZeqdiIoCH_10serde_core2deNtB2_10UnexpectedNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRDNtNtCs6nZeqdiIoCH_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsd1Od0hvlDsw_4toml(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #12

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { noreturn }
attributes #16 = { cold }
attributes #17 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = !{!5, !7, !8, !10}
!5 = distinct !{!5, !6, !"_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsd1Od0hvlDsw_4toml: argument 0"}
!6 = distinct !{!6, !"_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsd1Od0hvlDsw_4toml"}
!7 = distinct !{!7, !6, !"_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsd1Od0hvlDsw_4toml: argument 1"}
!8 = distinct !{!8, !9, !"_RNvXs1T_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtB6_12SpecToString14spec_to_string: argument 0"}
!9 = distinct !{!9, !"_RNvXs1T_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtB6_12SpecToString14spec_to_string"}
!10 = distinct !{!10, !11, !"_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsd1Od0hvlDsw_4toml: argument 0"}
!11 = distinct !{!11, !"_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsd1Od0hvlDsw_4toml"}
!12 = !{i64 0, i64 2}
!13 = !{i64 0, i64 -9223372036854775807}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{!5, !8, !10}
!16 = !{!17, !19, !20, !22}
!17 = distinct !{!17, !18, !"_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsd1Od0hvlDsw_4toml: argument 0"}
!18 = distinct !{!18, !"_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsd1Od0hvlDsw_4toml"}
!19 = distinct !{!19, !18, !"_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsd1Od0hvlDsw_4toml: argument 1"}
!20 = distinct !{!20, !21, !"_RNvXs25_NtCscdodAO9FK5_5alloc6stringReNtB6_12SpecToString14spec_to_string: argument 0"}
!21 = distinct !{!21, !"_RNvXs25_NtCscdodAO9FK5_5alloc6stringReNtB6_12SpecToString14spec_to_string"}
!22 = distinct !{!22, !23, !"_RNvXsB_NtCscdodAO9FK5_5alloc6stringReNtB5_8ToString9to_stringCsd1Od0hvlDsw_4toml: argument 0"}
!23 = distinct !{!23, !"_RNvXsB_NtCscdodAO9FK5_5alloc6stringReNtB5_8ToString9to_stringCsd1Od0hvlDsw_4toml"}
!24 = !{!17, !20, !22}
!25 = !{i64 -1, i64 -9223372036854775808}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsd1Od0hvlDsw_4toml: argument 0"}
!28 = distinct !{!28, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsd1Od0hvlDsw_4toml"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECsd1Od0hvlDsw_4toml: argument 0"}
!31 = distinct !{!31, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECsd1Od0hvlDsw_4toml"}
!32 = !{!33, !35, !30}
!33 = distinct !{!33, !34, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsd1Od0hvlDsw_4toml: argument 0"}
!34 = distinct !{!34, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsd1Od0hvlDsw_4toml"}
!35 = distinct !{!35, !36, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsd1Od0hvlDsw_4toml: argument 0"}
!36 = distinct !{!36, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsd1Od0hvlDsw_4toml"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECsd1Od0hvlDsw_4toml: argument 0"}
!39 = distinct !{!39, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECsd1Od0hvlDsw_4toml"}
!40 = !{!41, !43, !38}
!41 = distinct !{!41, !42, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsd1Od0hvlDsw_4toml: argument 0"}
!42 = distinct !{!42, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsd1Od0hvlDsw_4toml"}
!43 = distinct !{!43, !44, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsd1Od0hvlDsw_4toml: argument 0"}
!44 = distinct !{!44, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsd1Od0hvlDsw_4toml"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsd1Od0hvlDsw_4toml: argument 0"}
!47 = distinct !{!47, !"_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsd1Od0hvlDsw_4toml"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_RNvXs1T_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtB6_12SpecToString14spec_to_string: argument 0"}
!50 = distinct !{!50, !"_RNvXs1T_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtB6_12SpecToString14spec_to_string"}
!51 = !{!52, !54, !49, !46}
!52 = distinct !{!52, !53, !"_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsd1Od0hvlDsw_4toml: argument 0"}
!53 = distinct !{!53, !"_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsd1Od0hvlDsw_4toml"}
!54 = distinct !{!54, !53, !"_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsd1Od0hvlDsw_4toml: argument 1"}
!55 = !{!52, !49, !46}
!56 = !{!49, !46}
!57 = !{!58, !60, !61, !63}
!58 = distinct !{!58, !59, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCsekQk4x1rPVl_13toml_datetime8datetime18DatetimeParseErrorNtB5_12SpecToString14spec_to_stringCsd1Od0hvlDsw_4toml: argument 0"}
!59 = distinct !{!59, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCsekQk4x1rPVl_13toml_datetime8datetime18DatetimeParseErrorNtB5_12SpecToString14spec_to_stringCsd1Od0hvlDsw_4toml"}
!60 = distinct !{!60, !59, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCsekQk4x1rPVl_13toml_datetime8datetime18DatetimeParseErrorNtB5_12SpecToString14spec_to_stringCsd1Od0hvlDsw_4toml: argument 1"}
!61 = distinct !{!61, !62, !"_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtNtCsekQk4x1rPVl_13toml_datetime8datetime18DatetimeParseErrorNtB5_8ToString9to_stringCsd1Od0hvlDsw_4toml: argument 0"}
!62 = distinct !{!62, !"_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtNtCsekQk4x1rPVl_13toml_datetime8datetime18DatetimeParseErrorNtB5_8ToString9to_stringCsd1Od0hvlDsw_4toml"}
!63 = distinct !{!63, !62, !"_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtNtCsekQk4x1rPVl_13toml_datetime8datetime18DatetimeParseErrorNtB5_8ToString9to_stringCsd1Od0hvlDsw_4toml: argument 1"}
!64 = !{!58, !61}
!65 = !{!60, !63}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_RNvXsB_NtCscdodAO9FK5_5alloc6stringReNtB5_8ToString9to_stringCsd1Od0hvlDsw_4toml: argument 0"}
!68 = distinct !{!68, !"_RNvXsB_NtCscdodAO9FK5_5alloc6stringReNtB5_8ToString9to_stringCsd1Od0hvlDsw_4toml"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_RNvXs25_NtCscdodAO9FK5_5alloc6stringReNtB6_12SpecToString14spec_to_string: argument 0"}
!71 = distinct !{!71, !"_RNvXs25_NtCscdodAO9FK5_5alloc6stringReNtB6_12SpecToString14spec_to_string"}
!72 = !{!73, !75, !70, !67}
!73 = distinct !{!73, !74, !"_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsd1Od0hvlDsw_4toml: argument 0"}
!74 = distinct !{!74, !"_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsd1Od0hvlDsw_4toml"}
!75 = distinct !{!75, !74, !"_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsd1Od0hvlDsw_4toml: argument 1"}
!76 = !{!73, !70, !67}
!77 = !{!70, !67}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsd1Od0hvlDsw_4toml: argument 0"}
!80 = distinct !{!80, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsd1Od0hvlDsw_4toml"}
!81 = !{i64 8}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsd1Od0hvlDsw_4toml: argument 0"}
!84 = distinct !{!84, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsd1Od0hvlDsw_4toml"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsd1Od0hvlDsw_4toml: argument 0"}
!87 = distinct !{!87, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsd1Od0hvlDsw_4toml"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsd1Od0hvlDsw_4toml: argument 0"}
!90 = distinct !{!90, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsd1Od0hvlDsw_4toml"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsd1Od0hvlDsw_4toml: argument 0"}
!93 = distinct !{!93, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsd1Od0hvlDsw_4toml"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_RNvNtNtCsd1Od0hvlDsw_4toml2de5error14render_literal: argument 0"}
!96 = distinct !{!96, !"_RNvNtNtCsd1Od0hvlDsw_4toml2de5error14render_literal"}
!97 = !{!98}
!98 = distinct !{!98, !96, !"_RNvNtNtCsd1Od0hvlDsw_4toml2de5error14render_literal: argument 1"}
!99 = !{!95, !98}
!100 = !{!101, !103, !105, !95}
!101 = distinct !{!101, !102, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsd1Od0hvlDsw_4toml: argument 0"}
!102 = distinct !{!102, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsd1Od0hvlDsw_4toml"}
!103 = distinct !{!103, !104, !"_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next: argument 0"}
!104 = distinct !{!104, !"_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next"}
!105 = distinct !{!105, !106, !"_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3all5checkcNCNvNtNtCsd1Od0hvlDsw_4toml2de5error14render_literal0E0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1Z_: argument 0"}
!106 = distinct !{!106, !"_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3all5checkcNCNvNtNtCsd1Od0hvlDsw_4toml2de5error14render_literal0E0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1Z_"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsd1Od0hvlDsw_4toml: argument 0"}
!109 = distinct !{!109, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsd1Od0hvlDsw_4toml"}
!110 = !{!111, !113}
!111 = distinct !{!111, !112, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsd1Od0hvlDsw_4toml: argument 0"}
!112 = distinct !{!112, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsd1Od0hvlDsw_4toml"}
!113 = distinct !{!113, !114, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2wlUPplZW3b_11toml_parser5error10ParseErrorECsd1Od0hvlDsw_4toml: argument 0"}
!114 = distinct !{!114, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2wlUPplZW3b_11toml_parser5error10ParseErrorECsd1Od0hvlDsw_4toml"}
!115 = !{!116, !118}
!116 = distinct !{!116, !117, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsd1Od0hvlDsw_4toml: argument 0"}
!117 = distinct !{!117, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsd1Od0hvlDsw_4toml"}
!118 = distinct !{!118, !119, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsd1Od0hvlDsw_4toml: argument 0"}
!119 = distinct !{!119, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsd1Od0hvlDsw_4toml"}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10insert_mutCsd1Od0hvlDsw_4toml: argument 0"}
!122 = distinct !{!122, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10insert_mutCsd1Od0hvlDsw_4toml"}
!123 = !{!124}
!124 = distinct !{!124, !122, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10insert_mutCsd1Od0hvlDsw_4toml: argument 1"}
!125 = !{i64 0, i64 -9223372036854775808}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECsd1Od0hvlDsw_4toml: argument 0"}
!128 = distinct !{!128, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECsd1Od0hvlDsw_4toml"}
!129 = !{!130, !132, !127}
!130 = distinct !{!130, !131, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsd1Od0hvlDsw_4toml: argument 0"}
!131 = distinct !{!131, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsd1Od0hvlDsw_4toml"}
!132 = distinct !{!132, !133, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsd1Od0hvlDsw_4toml: argument 0"}
!133 = distinct !{!133, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsd1Od0hvlDsw_4toml"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_RNvMNtNtCsd1Od0hvlDsw_4toml2de5errorNtB2_5Error4span: argument 1"}
!136 = distinct !{!136, !"_RNvMNtNtCsd1Od0hvlDsw_4toml2de5errorNtB2_5Error4span"}
!137 = !{!138}
!138 = distinct !{!138, !136, !"_RNvMNtNtCsd1Od0hvlDsw_4toml2de5errorNtB2_5Error4span: argument 0"}
!139 = !{!140, !135}
!140 = distinct !{!140, !141, !"_RNvXs7_NtNtCs4NRVxsYgnAr_4core5clone5implsjNtB7_5Clone5clone: argument 0"}
!141 = distinct !{!141, !"_RNvXs7_NtNtCs4NRVxsYgnAr_4core5clone5implsjNtB7_5Clone5clone"}
!142 = !{!143, !135}
!143 = distinct !{!143, !144, !"_RNvXs7_NtNtCs4NRVxsYgnAr_4core5clone5implsjNtB7_5Clone5clone: argument 0"}
!144 = distinct !{!144, !"_RNvXs7_NtNtCs4NRVxsYgnAr_4core5clone5implsjNtB7_5Clone5clone"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"_RNvNtNtCsd1Od0hvlDsw_4toml2de5error18translate_position: argument 0"}
!147 = distinct !{!147, !"_RNvNtNtCsd1Od0hvlDsw_4toml2de5error18translate_position"}
!148 = !{!149, !151, !146}
!149 = distinct !{!149, !150, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvNtNtCsd1Od0hvlDsw_4toml2de5error18translate_position0E0B1p_: argument 0"}
!150 = distinct !{!150, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvNtNtCsd1Od0hvlDsw_4toml2de5error18translate_position0E0B1p_"}
!151 = distinct !{!151, !152, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvNtNtCsd1Od0hvlDsw_4toml2de5error18translate_position0E0E0B3t_: argument 0"}
!152 = distinct !{!152, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvNtNtCsd1Od0hvlDsw_4toml2de5error18translate_position0E0E0B3t_"}
!153 = !{!154, !156}
!154 = distinct !{!154, !155, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs_NtNtBR_8adapters9enumerateINtB22_9EnumeratepENtNtBP_8iterator8Iterator8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB3t_EENCINvNvB2L_4find5checkB4b_NCNvNtNtCsd1Od0hvlDsw_4toml2de5error18translate_position0E0E0B3w_EB4R_: argument 0"}
!155 = distinct !{!155, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs_NtNtBR_8adapters9enumerateINtB22_9EnumeratepENtNtBP_8iterator8Iterator8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB3t_EENCINvNvB2L_4find5checkB4b_NCNvNtNtCsd1Od0hvlDsw_4toml2de5error18translate_position0E0E0B3w_EB4R_"}
!156 = distinct !{!156, !155, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs_NtNtBR_8adapters9enumerateINtB22_9EnumeratepENtNtBP_8iterator8Iterator8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB3t_EENCINvNvB2L_4find5checkB4b_NCNvNtNtCsd1Od0hvlDsw_4toml2de5error18translate_position0E0E0B3w_EB4R_: argument 1"}
!157 = !{!"branch_weights", i32 4360970, i32 2143122678}
!158 = !{!159, !146}
!159 = distinct !{!159, !160, !"_RNCINvNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCNvNtNtCsd1Od0hvlDsw_4toml2de5error18translate_positions0_0E0B27_: argument 0"}
!160 = distinct !{!160, !"_RNCINvNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCNvNtNtCsd1Od0hvlDsw_4toml2de5error18translate_positions0_0E0B27_"}
!161 = distinct !{!161, !162, !163}
!162 = !{!"llvm.loop.isvectorized", i32 1}
!163 = !{!"llvm.loop.unroll.runtime.disable"}
!164 = distinct !{!164, !163, !162}
!165 = !{!"branch_weights", !"expected", i32 3493254, i32 2143990394}
!166 = !{!167, !169, !146}
!167 = distinct !{!167, !168, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsd1Od0hvlDsw_4toml: argument 0"}
!168 = distinct !{!168, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsd1Od0hvlDsw_4toml"}
!169 = distinct !{!169, !168, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsd1Od0hvlDsw_4toml: argument 1"}
!170 = !{!171, !173, !174, !176, !178}
!171 = distinct !{!171, !172, !"_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!172 = distinct !{!172, !"_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!173 = distinct !{!173, !172, !"_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!174 = distinct !{!174, !175, !"_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE4nextCsd1Od0hvlDsw_4toml: argument 0"}
!175 = distinct !{!175, !"_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE4nextCsd1Od0hvlDsw_4toml"}
end_hunk_1
