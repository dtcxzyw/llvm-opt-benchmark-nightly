Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/simple_write.simple_write.3978bae4a5c9544f-cgu.6?download=true
inline.NumInlined: 15
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMNtNtCsi68uqYEhoRA_5gimli5write4lineNtB3_11LineProgram5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB12_:bb.a
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 72
  %.val712.pre = load ptr, ptr %i.dg, align 8
  %.val713.pre = load i64, ptr %i.dh, align 8
  %.val714.pre = load ptr, ptr %i.di, align 8
  %.val715.pre = load i64, ptr %i.dj, align 8
  br label %bb.at

bb.as:                                            ; preds = %bb.at
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0194.0754, i64 32 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.df
  br i1 %i.dl, label %._crit_edge, label %bb.at

bb.at:                                            ; preds = %.lr.ph, %bb.as
  %.sroa.0194.0754 = phi ptr [ %i.cs, %.lr.ph ], [ %i.dk, %bb.as ] ; 2 uses
  %i.dm = tail call fastcc i64 @_RINvMs1_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB6_10LineString5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB14_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0194.0754, ptr noalias nofree noundef align 8 dereferenceable(64) %2, i16 noundef %switch.masked, i32 noundef %.sroa.0203.0.copyload, ptr %.val712.pre, i64 %.val713.pre, ptr %.val714.pre, i64 %.val715.pre) ; 2 uses
  %i.dn = and i64 %i.dm, 255
  %.not672 = icmp eq i64 %i.dn, 255
  br i1 %.not672, label %bb.as, label %bb.au

._crit_edge:                                      ; preds = %bb.as
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 274
  %i.dp = load i8, ptr %i.do, align 2, !range !5, !noundef !6 ; 2 uses
  %i.dq = trunc nuw i8 %i.dp to i1
  %.704 = or disjoint i8 %i.dp, 2
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 275
  %i.ds = load i8, ptr %i.dr, align 1, !range !5, !noundef !6 ; 2 uses
  %i.dt = trunc nuw i8 %i.ds to i1
  %i.du = add nuw nsw i8 %.704, %i.ds
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 276
  %i.dw = load i8, ptr %i.dv, align 4, !range !5, !noundef !6 ; 2 uses
  %i.dx = trunc nuw i8 %i.dw to i1
  %i.dy = add nuw nsw i8 %i.du, %i.dw
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 277
  %i.ea = load i8, ptr %i.dz, align 1, !range !5, !noundef !6 ; 2 uses
  %i.eb = trunc nuw i8 %i.ea to i1
  %i.ec = add nuw nsw i8 %i.dy, %i.ea
  %i.ed = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer8write_u8B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i8 noundef %i.ec) ; 2 uses
  %i.ee = and i64 %i.ed, 255
  %.not673 = icmp eq i64 %i.ee, 255
  br i1 %.not673, label %bb.aw, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.dm, ptr %i.ef, align 4
  store i32 1, ptr %0, align 8
  br label %bb.cs

bb.av:                                            ; preds = %._crit_edge
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.ed, ptr %i.eg, align 4
  store i32 1, ptr %0, align 8
  br label %bb.cs

bb.aw:                                            ; preds = %._crit_edge
  %i.eh = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_uleb128B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i64 noundef 1) ; 2 uses
  %i.ei = and i64 %i.eh, 255
  %.not674 = icmp eq i64 %i.ei, 255
  br i1 %.not674, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.eh, ptr %i.ej, align 4
  store i32 1, ptr %0, align 8
  br label %bb.cs

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.el = load i64, ptr %i.ek, align 8, !noundef !6 ; 2 uses
  %.not675 = icmp eq i64 %i.el, 0
  br i1 %.not675, label %bb.az, label %switch.lookup831, !prof !12

bb.az:                                            ; preds = %bb.ay
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #9
  unreachable

switch.lookup831:                                 ; preds = %bb.ay
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.en = load ptr, ptr %i.em, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.eo = load i64, ptr %i.en, align 8, !range !7, !noundef !6 ; 2 uses
  %i.ep = icmp slt i64 %i.eo, 0
  %i.eq = add i64 %i.eo, -9223372036854775807
  %i.er = select i1 %i.ep, i64 %i.eq, i64 0       ; 2 uses
  %switch.cast832 = trunc i64 %i.er to i48
  %switch.shiftamt833 = shl nuw nsw i48 %switch.cast832, 4
  %switch.downshift834 = lshr i48 133144903688, %switch.shiftamt833
  %switch.masked835 = trunc i48 %switch.downshift834 to i16
  %switch.gep = getelementptr inbounds i8, ptr @switch.table._RINvMNtNtCsi68uqYEhoRA_5gimli5write4lineNtB3_11LineProgram5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB12_, i64 %i.er
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  store i16 %switch.masked835, ptr %i.d, align 2
  %i.es = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_uleb128B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %switch.ext) ; 2 uses
  %i.et = and i64 %i.es, 255
  %.not676 = icmp eq i64 %i.et, 255
  br i1 %.not676, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %switch.lookup831
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.es, ptr %i.eu, align 4
  store i32 1, ptr %0, align 8
  br label %bb.cg

bb.bb:                                            ; preds = %switch.lookup831
  %i.ev = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_uleb128B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i64 noundef 2) ; 2 uses
  %i.ew = and i64 %i.ev, 255
  %.not677 = icmp eq i64 %i.ew, 255
  br i1 %.not677, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.ev, ptr %i.ex, align 4
  store i32 1, ptr %0, align 8
  br label %bb.cg

bb.bd:                                            ; preds = %bb.bb
  %i.ey = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_uleb128B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i64 noundef 15) ; 2 uses
  %i.ez = and i64 %i.ey, 255
  %.not678 = icmp eq i64 %i.ez, 255
  br i1 %.not678, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.ey, ptr %i.fa, align 4
  store i32 1, ptr %0, align 8
  br label %bb.cg

bb.bf:                                            ; preds = %bb.bd
  br i1 %i.dq, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bj, %bb.bf
  br i1 %i.dt, label %bb.bm, label %bb.bl

bb.bh:                                            ; preds = %bb.bf
  %i.fb = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_uleb128B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i64 noundef 3) ; 2 uses
  %i.fc = and i64 %i.fb, 255
  %.not679 = icmp eq i64 %i.fc, 255
  br i1 %.not679, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.fb, ptr %i.fd, align 4
  store i32 1, ptr %0, align 8
  br label %bb.cg

bb.bj:                                            ; preds = %bb.bh
  %i.fe = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_uleb128B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i64 noundef 15) ; 2 uses
  %i.ff = and i64 %i.fe, 255
  %.not680 = icmp eq i64 %i.ff, 255
  br i1 %.not680, label %bb.bg, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.fe, ptr %i.fg, align 4
  store i32 1, ptr %0, align 8
  br label %bb.cg

bb.bl:                                            ; preds = %bb.bo, %bb.bg
  br i1 %i.dx, label %bb.br, label %.lr.ph817

bb.bm:                                            ; preds = %bb.bg
  %i.fh = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_uleb128B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i64 noundef 4) ; 2 uses
  %i.fi = and i64 %i.fh, 255
  %.not681 = icmp eq i64 %i.fi, 255
  br i1 %.not681, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.fh, ptr %i.fj, align 4
  store i32 1, ptr %0, align 8
  br label %bb.cg

bb.bo:                                            ; preds = %bb.bm
  %i.fk = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_uleb128B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i64 noundef 15) ; 2 uses
  %i.fl = and i64 %i.fk, 255
  %.not682 = icmp eq i64 %i.fl, 255
  br i1 %.not682, label %bb.bl, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.fk, ptr %i.fm, align 4
  store i32 1, ptr %0, align 8
  br label %bb.cg

.lr.ph817:                                        ; preds = %bb.bt, %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.idx828 = mul nuw nsw i64 %i.el, 96
  %i.fn = getelementptr inbounds nuw i8, ptr %i.en, i64 %.idx828 ; 2 uses
  br label %bb.bq

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkTRTNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringNtB1l_11DirectoryIdERNtB1l_8FileInfoENtNtB1p_9constants6DwFormNCINvMB1l_NtB1l_11LineProgram5writeNtCs4VV2qO6j7hb_12simple_write7SectionE0E0B3H_.exit.i: ; preds = %bb.bq
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fp, i64 96 ; 2 uses
  %.not739 = icmp eq ptr %i.fo, %i.fn
  br i1 %.not739, label %_RINvYINtNtNtCsbbt5GHOb4oK_8indexmap3map4iter4IterTNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringNtBO_11DirectoryIdENtBO_8FileInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB27_8find_map5checkTRBL_RB1S_ENtNtBS_9constants6DwFormNCINvMBO_NtBO_11LineProgram5writeNtCs4VV2qO6j7hb_12simple_write7SectionE0E0INtNtNtB2f_3ops12control_flow11ControlFlowB3N_EEB4K_.exit, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph817, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkTRTNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringNtB1l_11DirectoryIdERNtB1l_8FileInfoENtNtB1p_9constants6DwFormNCINvMB1l_NtB1l_11LineProgram5writeNtCs4VV2qO6j7hb_12simple_write7SectionE0E0B3H_.exit.i
  %i.fp = phi ptr [ %i.en, %.lr.ph817 ], [ %i.fo, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkTRTNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringNtB1l_11DirectoryIdERNtB1l_8FileInfoENtNtB1p_9constants6DwFormNCINvMB1l_NtB1l_11LineProgram5writeNtCs4VV2qO6j7hb_12simple_write7SectionE0E0B3H_.exit.i ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %.val.i = load i64, ptr %i.fq, align 8, !range !8, !noalias !15, !noundef !6 ; 2 uses
  %.not.i.not.i.not.i = icmp eq i64 %.val.i, -1
  br i1 %.not.i.not.i.not.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkTRTNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringNtB1l_11DirectoryIdERNtB1l_8FileInfoENtNtB1p_9constants6DwFormNCINvMB1l_NtB1l_11LineProgram5writeNtCs4VV2qO6j7hb_12simple_write7SectionE0E0B3H_.exit.i, label %switch.lookup836

switch.lookup836:                                 ; preds = %bb.bq
  %i.fr = tail call i64 @llvm.smin.i64(i64 %.val.i, i64 -1)
  %i.fs = add nsw i64 %i.fr, 1
  %switch.cast837 = trunc i64 %i.fs to i48
  %switch.shiftamt838 = shl nuw nsw i48 %switch.cast837, 4
  %switch.downshift839 = lshr i48 133144903688, %switch.shiftamt838
  %switch.masked840 = trunc i48 %switch.downshift839 to i16
  br label %_RINvYINtNtNtCsbbt5GHOb4oK_8indexmap3map4iter4IterTNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringNtBO_11DirectoryIdENtBO_8FileInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB27_8find_map5checkTRBL_RB1S_ENtNtBS_9constants6DwFormNCINvMBO_NtBO_11LineProgram5writeNtCs4VV2qO6j7hb_12simple_write7SectionE0E0INtNtNtB2f_3ops12control_flow11ControlFlowB3N_EEB4K_.exit

_RINvYINtNtNtCsbbt5GHOb4oK_8indexmap3map4iter4IterTNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringNtBO_11DirectoryIdENtBO_8FileInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB27_8find_map5checkTRBL_RB1S_ENtNtBS_9constants6DwFormNCINvMBO_NtBO_11LineProgram5writeNtCs4VV2qO6j7hb_12simple_write7SectionE0E0INtNtNtB2f_3ops12control_flow11ControlFlowB3N_EEB4K_.exit: ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkTRTNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringNtB1l_11DirectoryIdERNtB1l_8FileInfoENtNtB1p_9constants6DwFormNCINvMB1l_NtB1l_11LineProgram5writeNtCs4VV2qO6j7hb_12simple_write7SectionE0E0B3H_.exit.i, %switch.lookup836
  %i.ft = phi i16 [ %switch.masked840, %switch.lookup836 ], [ 8, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkTRTNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringNtB1l_11DirectoryIdERNtB1l_8FileInfoENtNtB1p_9constants6DwFormNCINvMB1l_NtB1l_11LineProgram5writeNtCs4VV2qO6j7hb_12simple_write7SectionE0E0B3H_.exit.i ] ; 2 uses
  store i16 %i.ft, ptr %i.c, align 2
  br i1 %i.eb, label %bb.bw, label %bb.bv

bb.br:                                            ; preds = %bb.bl
  %i.fu = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_uleb128B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i64 noundef 5) ; 2 uses
  %i.fv = and i64 %i.fu, 255
  %.not683 = icmp eq i64 %i.fv, 255
  br i1 %.not683, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.fu, ptr %i.fw, align 4
  store i32 1, ptr %0, align 8
  br label %bb.cg

bb.bt:                                            ; preds = %bb.br
  %i.fx = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_uleb128B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i64 noundef 30) ; 2 uses
  %i.fy = and i64 %i.fx, 255
  %.not684 = icmp eq i64 %i.fy, 255
  br i1 %.not684, label %.lr.ph817, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.fx, ptr %i.fz, align 4
  store i32 1, ptr %0, align 8
  br label %bb.cg

bb.bv:                                            ; preds = %bb.by, %_RINvYINtNtNtCsbbt5GHOb4oK_8indexmap3map4iter4IterTNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringNtBO_11DirectoryIdENtBO_8FileInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB27_8find_map5checkTRBL_RB1S_ENtNtBS_9constants6DwFormNCINvMBO_NtBO_11LineProgram5writeNtCs4VV2qO6j7hb_12simple_write7SectionE0E0INtNtNtB2f_3ops12control_flow11ControlFlowB3N_EEB4K_.exit
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.gb = load i64, ptr %i.ga, align 8, !noundef !6
  %i.gc = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_uleb128B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.gb) ; 2 uses
  %i.gd = and i64 %i.gc, 255
  %.not687 = icmp eq i64 %i.gd, 255
  br i1 %.not687, label %.lr.ph820, label %bb.ca

bb.bw:                                            ; preds = %_RINvYINtNtNtCsbbt5GHOb4oK_8indexmap3map4iter4IterTNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringNtBO_11DirectoryIdENtBO_8FileInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB27_8find_map5checkTRBL_RB1S_ENtNtBS_9constants6DwFormNCINvMBO_NtBO_11LineProgram5writeNtCs4VV2qO6j7hb_12simple_write7SectionE0E0INtNtNtB2f_3ops12control_flow11ControlFlowB3N_EEB4K_.exit
  %i.ge = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_uleb128B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i64 noundef 8193) ; 2 uses
  %i.gf = and i64 %i.ge, 255
  %.not685 = icmp eq i64 %i.gf, 255
  br i1 %.not685, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.ge, ptr %i.gg, align 4
  store i32 1, ptr %0, align 8
  br label %bb.cf

bb.by:                                            ; preds = %bb.bw
  %i.gh = zext nneg i16 %i.ft to i64
  %i.gi = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_uleb128B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.gh) ; 2 uses
  %i.gj = and i64 %i.gi, 255
  %.not686 = icmp eq i64 %i.gj, 255
  br i1 %.not686, label %bb.bv, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.gi, ptr %i.gk, align 4
  store i32 1, ptr %0, align 8
  br label %bb.cf

bb.ca:                                            ; preds = %bb.bv
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.gc, ptr %i.gl, align 4
  store i32 1, ptr %0, align 8
  br label %bb.cf

.lr.ph820:                                        ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %2, ptr %i.b, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.gm, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %i.gn, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %4, ptr %i.go, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %5, ptr %i.gp, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.c, ptr %i.gq, align 8
  br label %bb.cc

bb.cb:                                            ; preds = %bb.cc
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0726.0818, i64 96 ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.fn
  br i1 %i.gs, label %._crit_edge821, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph820, %bb.cb
  %.sroa.0726.0818 = phi ptr [ %i.en, %.lr.ph820 ], [ %i.gr, %bb.cb ] ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0726.0818, i64 32
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0726.0818, i64 24
  %i.gv = load i64, ptr %i.gu, align 8, !noundef !6
  %i.gw = call fastcc i64 @_RNCINvMNtNtCsi68uqYEhoRA_5gimli5write4lineNtB5_11LineProgram5writeNtCs4VV2qO6j7hb_12simple_write7SectionEs_0B14_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0726.0818, i64 noundef %i.gv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.gt) #10 ; 2 uses
  %i.gx = and i64 %i.gw, 255
  %.not689 = icmp eq i64 %i.gx, 255
  br i1 %.not689, label %bb.cb, label %bb.ce

._crit_edge821:                                   ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.cd

bb.cd:                                            ; preds = %._crit_edge827, %._crit_edge821
  %i.gy = call noundef i64 @_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer3lenBH_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %2)
  %i.gz = sub i64 %i.gy, %i.am
  %i.ha = call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer14write_udata_atB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.ae, i64 noundef %i.gz, i8 noundef %i.q) ; 2 uses
  %i.hb = and i64 %i.ha, 255
  %.not695 = icmp eq i64 %i.hb, 255
  br i1 %.not695, label %bb.cm, label %bb.cl

bb.ce:                                            ; preds = %bb.cc
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.gw, ptr %i.hc, align 4
  store i32 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.bx, %bb.bz, %bb.ce, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.cg

bb.cg:                                            ; preds = %bb.bi, %bb.bk, %bb.bn, %bb.bp, %bb.bs, %bb.bu, %bb.cf, %bb.be, %bb.bc, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.cs

.peel.next:                                       ; preds = %.lr.ph823
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0.0822, i64 32 ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.cb
  br i1 %i.he, label %.loopexit, label %.lr.ph823, !llvm.loop !11

.lr.ph823:                                        ; preds = %.lr.ph823.preheader, %.peel.next
  %.sroa.0.0822 = phi ptr [ %i.hd, %.peel.next ], [ %i.ck, %.lr.ph823.preheader ] ; 2 uses
  %i.hf = tail call fastcc i64 @_RINvMs1_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB6_10LineString5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB14_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0822, ptr noalias nofree noundef align 8 dereferenceable(64) %2, i16 noundef 8, i32 noundef %.sroa.0112.0.copyload, ptr %.val708.peel, i64 %.val709.peel, ptr %.val710.peel, i64 %.val711.peel) ; 2 uses
  %i.hg = and i64 %i.hf, 255
  %.not702 = icmp eq i64 %i.hg, 255
  br i1 %.not702, label %.peel.next, label %.loopexit776, !llvm.loop !11

.loopexit:                                        ; preds = %.peel.next, %.peel.next.preheader, %bb.ai
  %i.hh = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer8write_u8B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i8 noundef 0) ; 2 uses
  %i.hi = and i64 %i.hh, 255
  %.not692 = icmp eq i64 %i.hi, 255
  br i1 %.not692, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %.loopexit
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.hh, ptr %i.hj, align 4
  store i32 1, ptr %0, align 8
  br label %bb.cs

bb.ci:                                            ; preds = %.loopexit
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.hl = load ptr, ptr %i.hk, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.hn = load i64, ptr %i.hm, align 8, !noundef !6 ; 2 uses
  %.idx830 = mul nuw nsw i64 %i.hn, 96
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.idx830
  %i.hp = icmp eq i64 %i.hn, 0
  br i1 %i.hp, label %._crit_edge827, label %.lr.ph826

bb.cj:                                            ; preds = %bb.cy
  %i.hq = icmp eq ptr %i.hr, %i.ho
  br i1 %i.hq, label %._crit_edge827, label %.lr.ph826

.lr.ph826:                                        ; preds = %bb.ci, %bb.cj
  %.sroa.0724.0824 = phi ptr [ %i.hr, %bb.cj ], [ %i.hl, %bb.ci ] ; 5 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0724.0824, i64 96 ; 2 uses
  %.val = load ptr, ptr %i.cc, align 8
  %.val705 = load i64, ptr %i.cd, align 8
  %.val706 = load ptr, ptr %i.ce, align 8
  %.val707 = load i64, ptr %i.cf, align 8
  %i.hs = tail call fastcc i64 @_RINvMs1_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB6_10LineString5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB14_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0724.0824, ptr noalias nofree noundef align 8 dereferenceable(64) %2, i16 noundef 8, i32 noundef %.sroa.0112.0.copyload, ptr %.val, i64 %.val705, ptr %.val706, i64 %.val707) ; 2 uses
  %i.ht = and i64 %i.hs, 255
  %.not698 = icmp eq i64 %i.ht, 255
  br i1 %.not698, label %bb.cu, label %bb.ct

._crit_edge827:                                   ; preds = %bb.cj, %bb.ci
  %i.hu = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer8write_u8B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i8 noundef 0) ; 2 uses
  %i.hv = and i64 %i.hu, 255
  %.not694 = icmp eq i64 %i.hv, 255
  br i1 %.not694, label %bb.cd, label %bb.ck

bb.ck:                                            ; preds = %._crit_edge827
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.hu, ptr %i.hw, align 4
  store i32 1, ptr %0, align 8
  br label %bb.cs

bb.cl:                                            ; preds = %bb.cd
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.ha, ptr %i.hx, align 4
  store i32 1, ptr %0, align 8
  br label %bb.cs

bb.cm:                                            ; preds = %bb.cd
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.hz = load ptr, ptr %i.hy, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ib = load i64, ptr %i.ia, align 8, !noundef !6 ; 2 uses
  %.idx759 = mul nuw nsw i64 %i.ib, 24
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.idx759
  %i.id = icmp eq i64 %i.ib, 0
  br i1 %i.id, label %._crit_edge758, label %.lr.ph757

.lr.ph757:                                        ; preds = %bb.cm
  %.sroa.0342.0.copyload = load i32, ptr %i.j, align 8
  br label %bb.co

bb.cn:                                            ; preds = %bb.co
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0333.0755, i64 24 ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.ic
  br i1 %i.if, label %._crit_edge758, label %bb.co

bb.co:                                            ; preds = %.lr.ph757, %bb.cn
  %.sroa.0333.0755 = phi ptr [ %i.hz, %.lr.ph757 ], [ %i.ie, %bb.cn ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0333.0755, i64 24, i1 false)
  %i.ig = call fastcc i64 @_RINvMs0_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB6_15LineInstruction5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB19_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(64) %2, i32 noundef %.sroa.0342.0.copyload) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ih = and i64 %i.ig, 255
  %.not696 = icmp eq i64 %i.ih, 255
  br i1 %.not696, label %bb.cn, label %bb.cp

._crit_edge758:                                   ; preds = %bb.cn, %bb.cm
  %i.ii = call noundef i64 @_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer3lenBH_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %2)
  %i.ij = sub i64 %i.ii, %i.x
  %i.ik = call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer23write_initial_length_atB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.w, i64 noundef %i.ij, i8 noundef %i.q) ; 2 uses
  %i.il = and i64 %i.ik, 255
  %.not697 = icmp eq i64 %i.il, 255
  br i1 %.not697, label %bb.cr, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.ig, ptr %i.im, align 4
  store i32 1, ptr %0, align 8
  br label %bb.cs

bb.cq:                                            ; preds = %._crit_edge758
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.ik, ptr %i.in, align 4
  store i32 1, ptr %0, align 8
  br label %bb.cs

bb.cr:                                            ; preds = %._crit_edge758
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.io, align 8
  store i32 0, ptr %0, align 8
  br label %bb.cs

bb.cs:                                            ; preds = %bb.ct, %bb.cv, %bb.cx, %bb.cz, %bb.ap, %bb.ar, %bb.au, %bb.cg, %bb.ax, %bb.av, %bb.e, %bb.o, %bb.cl, %bb.cp, %bb.cq, %bb.ak, %bb.am, %bb.ch, %bb.ck, %.loopexit776, %bb.u, %bb.w, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.q, %bb.da, %bb.h, %bb.n, %bb.l, %bb.db, %bb.cr
  ret void

bb.ct:                                            ; preds = %.lr.ph826
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.hs, ptr %i.ip, align 4
  store i32 1, ptr %0, align 8
  br label %bb.cs

bb.cu:                                            ; preds = %.lr.ph826
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0724.0824, i64 24
  %i.ir = load i64, ptr %i.iq, align 8, !noundef !6
  %i.is = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_uleb128B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.ir) ; 2 uses
  %i.it = and i64 %i.is, 255
  %.not699 = icmp eq i64 %i.it, 255
  br i1 %.not699, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.is, ptr %i.iu, align 4
  store i32 1, ptr %0, align 8
  br label %bb.cs

bb.cw:                                            ; preds = %bb.cu
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0724.0824, i64 56
  %i.iw = load i64, ptr %i.iv, align 8, !noundef !6
  %i.ix = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_uleb128B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.iw) ; 2 uses
  %i.iy = and i64 %i.ix, 255
  %.not700 = icmp eq i64 %i.iy, 255
  br i1 %.not700, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.ix, ptr %i.iz, align 4
  store i32 1, ptr %0, align 8
  br label %bb.cs

bb.cy:                                            ; preds = %bb.cw
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0724.0824, i64 64
  %i.jb = load i64, ptr %i.ja, align 8, !noundef !6
  %i.jc = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_uleb128B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.jb) ; 2 uses
  %i.jd = and i64 %i.jc, 255
  %.not701 = icmp eq i64 %i.jd, 255
  br i1 %.not701, label %bb.cj, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.jc, ptr %i.je, align 4
  store i32 1, ptr %0, align 8
  br label %bb.cs

.loopexit776:                                     ; preds = %.lr.ph823, %bb.aj
  %.lcssa771 = phi i64 [ %i.ch, %bb.aj ], [ %i.hf, %.lr.ph823 ]
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.lcssa771, ptr %i.jf, align 4
  store i32 1, ptr %0, align 8
  br label %bb.cs

bb.da:                                            ; preds = %bb.f
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 5, ptr %i.jg, align 4
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %i.l, ptr %.sroa.420.0..sroa_idx, align 2
  store i32 1, ptr %0, align 8
  br label %bb.cs

bb.db:                                            ; preds = %bb.b
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 12, ptr %i.jh, align 4
  store i32 1, ptr %0, align 8
  br label %bb.cs
}

; Function Attrs: nonlazybind uwtable
define internal fastcc i64 @_RINvMs0_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB6_15LineInstruction5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB19_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 15 uses
  %.sroa.02.0.extract.trunc = trunc i32 %2 to i8
  %i.b = load i64, ptr %0, align 8, !range !17, !noundef !6 ; 3 uses
  %i.c = icmp ne i64 %i.b, 15
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i64 %i.b, -2
  %i.e = icmp samesign ugt i64 %i.b, 1
  %i.f = select i1 %i.e, i64 %i.d, i64 13
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i8, ptr %i.g, align 8, !noundef !6
  %i.i = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer8write_u8B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i8 noundef %i.h) ; 3 uses
  %i.j = and i64 %i.i, 255
  %.not540 = icmp eq i64 %i.j, 255                ; 2 uses
  %.sroa.4295.0.extract.shift = and i64 %i.i, -256
  %spec.select541 = select i1 %.not540, i64 0, i64 %.sroa.4295.0.extract.shift
  %spec.select542 = select i1 %.not540, i64 255, i64 %i.i
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.k = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer8write_u8B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i8 noundef 1) ; 3 uses
  %i.l = and i64 %i.k, 255
  %.not539 = icmp eq i64 %i.l, 255                ; 2 uses
  %.sroa.4301.0.extract.shift = and i64 %i.k, -256
  %spec.select543 = select i1 %.not539, i64 0, i64 %.sroa.4301.0.extract.shift
  %spec.select544 = select i1 %.not539, i64 255, i64 %i.k
  br label %bb.r

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !6
  %i.o = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer8write_u8B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i8 noundef 2) ; 3 uses
  %i.p = and i64 %i.o, 255
  %.not537 = icmp eq i64 %i.p, 255
  br i1 %.not537, label %bb.t, label %bb.s

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noundef !6
  %i.s = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer8write_u8B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i8 noundef 3) ; 3 uses
  %i.t = and i64 %i.s, 255
  %.not535 = icmp eq i64 %i.t, 255
  br i1 %.not535, label %bb.v, label %bb.u

bb.g:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noundef !6
  %i.w = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer8write_u8B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i8 noundef 4) ; 3 uses
  %i.x = and i64 %i.w, 255
  %.not533 = icmp eq i64 %i.x, 255
  br i1 %.not533, label %bb.x, label %bb.w

bb.h:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noundef !6
  %i.aa = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer8write_u8B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i8 noundef 5) ; 3 uses
  %i.ab = and i64 %i.aa, 255
  %.not531 = icmp eq i64 %i.ab, 255
  br i1 %.not531, label %bb.z, label %bb.y

bb.i:                                             ; preds = %bb.a
  %i.ac = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer8write_u8B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i8 noundef 6) ; 3 uses
  %i.ad = and i64 %i.ac, 255
  %.not530 = icmp eq i64 %i.ad, 255               ; 2 uses
  %.sroa.4355.0.extract.shift = and i64 %i.ac, -256
  %spec.select545 = select i1 %.not530, i64 0, i64 %.sroa.4355.0.extract.shift
  %spec.select546 = select i1 %.not530, i64 255, i64 %i.ac
  br label %bb.r

bb.j:                                             ; preds = %bb.a
  %i.ae = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer8write_u8B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i8 noundef 7) ; 3 uses
  %i.af = and i64 %i.ae, 255
  %.not529 = icmp eq i64 %i.af, 255               ; 2 uses
  %.sroa.4361.0.extract.shift = and i64 %i.ae, -256
  %spec.select547 = select i1 %.not529, i64 0, i64 %.sroa.4361.0.extract.shift
  %spec.select548 = select i1 %.not529, i64 255, i64 %i.ae
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.ag = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer8write_u8B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i8 noundef 8) ; 3 uses
  %i.ah = and i64 %i.ag, 255
  %.not528 = icmp eq i64 %i.ah, 255               ; 2 uses
  %.sroa.4367.0.extract.shift = and i64 %i.ag, -256
  %spec.select549 = select i1 %.not528, i64 0, i64 %.sroa.4367.0.extract.shift
  %spec.select550 = select i1 %.not528, i64 255, i64 %i.ag
  br label %bb.r

bb.l:                                             ; preds = %bb.a
  %i.ai = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer8write_u8B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i8 noundef 10) ; 3 uses
  %i.aj = and i64 %i.ai, 255
  %.not527 = icmp eq i64 %i.aj, 255               ; 2 uses
  %.sroa.4373.0.extract.shift = and i64 %i.ai, -256
  %spec.select551 = select i1 %.not527, i64 0, i64 %.sroa.4373.0.extract.shift
  %spec.select552 = select i1 %.not527, i64 255, i64 %i.ai
  br label %bb.r

bb.m:                                             ; preds = %bb.a
  %i.ak = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer8write_u8B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i8 noundef 11) ; 3 uses
  %i.al = and i64 %i.ak, 255
  %.not526 = icmp eq i64 %i.al, 255               ; 2 uses
  %.sroa.4379.0.extract.shift = and i64 %i.ak, -256
  %spec.select553 = select i1 %.not526, i64 0, i64 %.sroa.4379.0.extract.shift
  %spec.select554 = select i1 %.not526, i64 255, i64 %i.ak
  br label %bb.r

bb.n:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i64, ptr %i.am, align 8, !noundef !6
  %i.ao = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer8write_u8B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i8 noundef 12) ; 3 uses
  %i.ap = and i64 %i.ao, 255
  %.not524 = icmp eq i64 %i.ap, 255
  br i1 %.not524, label %bb.ab, label %bb.aa

bb.o:                                             ; preds = %bb.a
  %i.aq = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer8write_u8B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i8 noundef 0) ; 3 uses
  %i.ar = and i64 %i.aq, 255
  %.not521 = icmp eq i64 %i.ar, 255
  br i1 %.not521, label %bb.ad, label %bb.ac

bb.p:                                             ; preds = %bb.a
  %i.as = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer8write_u8B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i8 noundef 0) ; 2 uses
  %i.at = and i64 %i.as, 255
  %.not517 = icmp eq i64 %i.at, 255
  br i1 %.not517, label %bb.ag, label %bb.aj

bb.q:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load i64, ptr %i.au, align 8, !noundef !6 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aw = lshr i64 %i.av, 7                       ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0                    ; 2 uses
  %i.ay = trunc i64 %i.av to i8
  %i.az = and i8 %i.ay, 127
  %masksel = select i1 %i.ax, i8 0, i8 -128
  %spec.select = or disjoint i8 %masksel, %i.az
  br i1 %i.ax, label %bb.at, label %bb.ak

bb.r:                                             ; preds = %bb.x, %bb.af, %bb.ab, %bb.z, %bb.v, %bb.t, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.d, %bb.c, %bb.ai, %bb.ax, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.ay, %bb.aj, %bb.ae, %bb.ac
  %.sroa.30.sroa.0.0 = phi i64 [ 0, %bb.ai ], [ %.sroa.30.sroa.0.2.in, %bb.ay ], [ %spec.select561, %bb.ab ], [ %.sroa.4307.0.extract.shift, %bb.s ], [ %spec.select543, %bb.d ], [ %.sroa.4319.0.extract.shift, %bb.u ], [ %spec.select547, %bb.j ], [ %.sroa.4331.0.extract.shift, %bb.w ], [ %spec.select551, %bb.l ], [ %.sroa.4343.0.extract.shift, %bb.y ], [ %spec.select549, %bb.k ], [ %spec.select563, %bb.af ], [ %spec.select555, %bb.t ], [ %spec.select557, %bb.v ], [ %spec.select565, %bb.x ], [ %spec.select559, %bb.z ], [ %.sroa.4385.0.extract.shift, %bb.aa ], [ %spec.select545, %bb.i ], [ %.sroa.4397.0.extract.shift, %bb.ac ], [ %.sroa.4403.0.extract.shift, %bb.ae ], [ %spec.select553, %bb.m ], [ %.sroa.30.sroa.0.1.in, %bb.aj ], [ %spec.select541, %bb.c ], [ 0, %bb.ax ]
  %.sroa.03.0 = phi i64 [ 255, %bb.ai ], [ %.sroa.30.sroa.0.2.in.in, %bb.ay ], [ %spec.select562, %bb.ab ], [ %i.o, %bb.s ], [ %spec.select544, %bb.d ], [ %i.s, %bb.u ], [ %spec.select548, %bb.j ], [ %i.w, %bb.w ], [ %spec.select552, %bb.l ], [ %i.aa, %bb.y ], [ %spec.select550, %bb.k ], [ %spec.select564, %bb.af ], [ %spec.select556, %bb.t ], [ %spec.select558, %bb.v ], [ %spec.select566, %bb.x ], [ %spec.select560, %bb.z ], [ %i.ao, %bb.aa ], [ %spec.select546, %bb.i ], [ %i.aq, %bb.ac ], [ %i.bm, %bb.ae ], [ %spec.select554, %bb.m ], [ %.sroa.30.sroa.0.1.in.in, %bb.aj ], [ %spec.select542, %bb.c ], [ 255, %bb.ax ]
  %.sroa.03.0.insert.ext = and i64 %.sroa.03.0, 255
  %.sroa.03.0.insert.insert = or disjoint i64 %.sroa.03.0.insert.ext, %.sroa.30.sroa.0.0
  ret i64 %.sroa.03.0.insert.insert

bb.s:                                             ; preds = %bb.e
  %.sroa.4307.0.extract.shift = and i64 %i.o, -256
  br label %bb.r

bb.t:                                             ; preds = %bb.e
  %i.ba = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_uleb128B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.n) ; 3 uses
  %i.bb = and i64 %i.ba, 255
  %.not538 = icmp eq i64 %i.bb, 255               ; 2 uses
  %.sroa.4313.0.extract.shift = and i64 %i.ba, -256
  %spec.select555 = select i1 %.not538, i64 0, i64 %.sroa.4313.0.extract.shift
  %spec.select556 = select i1 %.not538, i64 255, i64 %i.ba
  br label %bb.r

bb.u:                                             ; preds = %bb.f
  %.sroa.4319.0.extract.shift = and i64 %i.s, -256
  br label %bb.r

bb.v:                                             ; preds = %bb.f
  %i.bc = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_sleb128B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.r) ; 3 uses
  %i.bd = and i64 %i.bc, 255
  %.not536 = icmp eq i64 %i.bd, 255               ; 2 uses
  %.sroa.4325.0.extract.shift = and i64 %i.bc, -256
  %spec.select557 = select i1 %.not536, i64 0, i64 %.sroa.4325.0.extract.shift
  %spec.select558 = select i1 %.not536, i64 255, i64 %i.bc
  br label %bb.r

bb.w:                                             ; preds = %bb.g
  %.sroa.4331.0.extract.shift = and i64 %i.w, -256
  br label %bb.r

bb.x:                                             ; preds = %bb.g
  %i.be = icmp ult i32 %2, 327680
  %i.bf = zext i1 %i.be to i64
  %.sroa.0139.0 = add i64 %i.v, %i.bf
  %i.bg = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_uleb128B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %.sroa.0139.0) ; 3 uses
  %i.bh = and i64 %i.bg, 255
  %.not534 = icmp eq i64 %i.bh, 255               ; 2 uses
  %.sroa.4337.0.extract.shift = and i64 %i.bg, -256
end_hunk_0
begin_hunk_1_@_RINvMs0_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB6_15LineInstruction5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB19_:bb.a
  %.sroa.30.sroa.0.2.in = and i64 %.sroa.30.sroa.0.2.in.in, -256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.r
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB6_10LineString3newAhj4_ECs4VV2qO6j7hb_12simple_write(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i32 noundef %1, i32 noundef %2, ptr noalias nofree noundef align 8 dereferenceable(88) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsA_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechEINtNtCskKLDkoKarTP_4core7convert4FromAhj4_E4fromCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i32 noundef %1)
  %i.b = icmp ult i32 %2, 327680
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call noundef i64 @_RINvMsq_NtNtCsi68uqYEhoRA_5gimli5write3strNtB6_15LineStringTable3addINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.d, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB6_10LineString3newAhj7_ECs4VV2qO6j7hb_12simple_write(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i56 %1, i32 noundef %2, ptr noalias nofree noundef align 8 dereferenceable(88) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsA_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechEINtNtCskKLDkoKarTP_4core7convert4FromAhj7_E4fromCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i56 %1)
  %i.b = icmp ult i32 %2, 327680
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call noundef i64 @_RINvMsq_NtNtCsi68uqYEhoRA_5gimli5write3strNtB6_15LineStringTable3addINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.d, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc i64 @_RINvMs1_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB6_10LineString5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB14_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i16 noundef %2, i32 noundef %3, ptr nofree readonly captures(none) %.64.val, i64 %.72.val, ptr nofree readonly captures(none) %.64.val1, i64 %.72.val3) unnamed_addr #0 {
switch.lookup:
  %.sroa.4.0.extract.shift = lshr i32 %3, 8
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8 ; 2 uses
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !6 ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  %i.c = add i64 %i.a, -9223372036854775807
  %i.d = select i1 %i.b, i64 %i.c, i64 0          ; 2 uses
  %switch.cast = trunc i64 %i.d to i48
  %switch.shiftamt = shl nuw nsw i48 %switch.cast, 4
  %switch.downshift = lshr i48 133144903688, %switch.shiftamt
  %switch.masked = trunc i48 %switch.downshift to i16
  %.not = icmp eq i16 %2, %switch.masked
  br i1 %.not, label %bb.b, label %bb.h

bb.a:                                             ; preds = %bb.b
  unreachable

bb.b:                                             ; preds = %switch.lookup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.d, label %bb.a [
    i64 0, label %bb.e
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 3 uses
  %i.g = icmp ult i32 %3, 327680
  br i1 %i.g, label %bb.h, label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.e, align 8, !noundef !6 ; 3 uses
  %i.i = icmp ult i32 %3, 327680
  br i1 %i.i, label %bb.h, label %bb.l

bb.e:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !6
  %i.m = tail call i64 @_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer5writeBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l) ; 3 uses
  %i.n = and i64 %i.m, 255
  %.not98 = icmp eq i64 %i.n, 255
  br i1 %.not98, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.464.0.extract.shift = and i64 %i.m, -256
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.o = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer8write_u8B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i8 noundef 0) ; 3 uses
  %i.p = and i64 %i.o, 255
  %.not99 = icmp eq i64 %i.p, 255                 ; 2 uses
  %.sroa.470.0.extract.shift = and i64 %i.o, -256
  %spec.select = select i1 %.not99, i64 0, i64 %.sroa.470.0.extract.shift
  %spec.select100 = select i1 %.not99, i64 255, i64 %i.o
  br label %bb.h

bb.h:                                             ; preds = %bb.m, %bb.j, %bb.g, %bb.d, %bb.c, %switch.lookup, %bb.f
  %.sroa.9.sroa.0.0 = phi i64 [ 327680, %bb.d ], [ %.sroa.464.0.extract.shift, %bb.f ], [ %spec.select, %bb.g ], [ 0, %switch.lookup ], [ 327680, %bb.c ], [ %spec.select103, %bb.m ], [ %spec.select101, %bb.j ]
  %.sroa.04.0 = phi i64 [ 9, %bb.d ], [ %i.m, %bb.f ], [ %spec.select100, %bb.g ], [ 10, %switch.lookup ], [ 9, %bb.c ], [ %spec.select104, %bb.m ], [ %spec.select102, %bb.j ]
  %.sroa.04.0.insert.ext = and i64 %.sroa.04.0, 255
  %.sroa.04.0.insert.insert = or disjoint i64 %.sroa.04.0.insert.ext, %.sroa.9.sroa.0.0
  ret i64 %.sroa.04.0.insert.insert

bb.i:                                             ; preds = %bb.c
  %i.q = icmp ult i64 %i.f, %.72.val3
  br i1 %i.q, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.64.val1) ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.64.val1, i64 %i.f
  %i.s = load i64, ptr %i.r, align 8, !noundef !6
  %i.t = tail call i64 @_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer12write_offsetBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.s, i8 noundef 21, i8 noundef %.sroa.4.0.extract.trunc) ; 3 uses
  %i.u = and i64 %i.t, 255
  %.not97 = icmp eq i64 %i.u, 255                 ; 2 uses
  %.sroa.476.0.extract.shift = and i64 %i.t, -256
  %spec.select101 = select i1 %.not97, i64 0, i64 %.sroa.476.0.extract.shift
  %spec.select102 = select i1 %.not97, i64 255, i64 %i.t
  br label %bb.h

bb.k:                                             ; preds = %bb.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef %.72.val3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #9
  unreachable

bb.l:                                             ; preds = %bb.d
  %i.v = icmp ult i64 %i.h, %.72.val
  br i1 %i.v, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.64.val) ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.64.val, i64 %i.h
  %i.x = load i64, ptr %i.w, align 8, !noundef !6
  %i.y = tail call i64 @_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer12write_offsetBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.x, i8 noundef 11, i8 noundef %.sroa.4.0.extract.trunc) ; 3 uses
  %i.z = and i64 %i.y, 255
  %.not96 = icmp eq i64 %i.z, 255                 ; 2 uses
  %.sroa.482.0.extract.shift = and i64 %i.y, -256
  %spec.select103 = select i1 %.not96, i64 0, i64 %.sroa.482.0.extract.shift
  %spec.select104 = select i1 %.not96, i64 255, i64 %i.y
  br label %bb.h

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %.72.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !6
  %i.b = icmp sgt i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4VV2qO6j7hb_12simple_write.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs4VV2qO6j7hb_12simple_write.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs4VV2qO6j7hb_12simple_write.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4VV2qO6j7hb_12simple_write.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4VV2qO6j7hb_12simple_write.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc i64 @_RNCINvMNtNtCsi68uqYEhoRA_5gimli5write4lineNtB5_11LineProgram5writeNtCs4VV2qO6j7hb_12simple_write7SectionEs_0B14_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !18, !noundef !6 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !19, !noundef !6
  %i.e = load i16, ptr %i.d, align 2, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !align !18, !noundef !6 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 264 ; 3 uses
  %.sroa.024.0.copyload = load i32, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !align !18, !noundef !6 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !align !18, !noundef !6 ; 3 uses
  %i.m = getelementptr i8, ptr %i.j, i64 64       ; 3 uses
  %.val151 = load ptr, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %i.j, i64 72       ; 3 uses
  %.val152 = load i64, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %i.l, i64 64       ; 3 uses
  %.val153 = load ptr, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %i.l, i64 72       ; 3 uses
  %.val154 = load i64, ptr %i.p, align 8
  %i.q = tail call fastcc i64 @_RINvMs1_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB6_10LineString5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB14_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(64) %i.b, i16 noundef %i.e, i32 noundef %.sroa.024.0.copyload, ptr %.val151, i64 %.val152, ptr %.val153, i64 %.val154) ; 3 uses
  %i.r = and i64 %i.q, 255
  %.not = icmp eq i64 %i.r, 255
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.480.0.extract.shift = and i64 %i.q, -256
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.s = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_uleb128B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef %2) ; 3 uses
  %i.t = and i64 %i.s, 255
  %.not136 = icmp eq i64 %i.t, 255
  br i1 %.not136, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.486.0.extract.shift = and i64 %i.s, -256
  br label %bb.ab

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 274
  %i.v = load i8, ptr %i.u, align 2, !range !5, !noundef !6
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 275
  %i.y = load i8, ptr %i.x, align 1, !range !5, !noundef !6
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.j, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !6
  %i.ac = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_uleb128B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef %i.ab) ; 3 uses
  %i.ad = and i64 %i.ac, 255
  %.not137 = icmp eq i64 %i.ad, 255
  br i1 %.not137, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.492.0.extract.shift = and i64 %i.ac, -256
  br label %bb.ab

bb.i:                                             ; preds = %bb.j, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 276
  %i.af = load i8, ptr %i.ae, align 4, !range !5, !noundef !6
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !6
  %i.aj = tail call i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_uleb128B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef %i.ai) ; 3 uses
  %i.ak = and i64 %i.aj, 255
  %.not138 = icmp eq i64 %i.ak, 255
  br i1 %.not138, label %bb.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.498.0.extract.shift = and i64 %i.aj, -256
  br label %bb.ab

bb.l:                                             ; preds = %bb.m, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 277
  %i.am = load i8, ptr %i.al, align 1, !range !5, !noundef !6
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.o, label %bb.ab

bb.m:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ap = tail call i64 @_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer5writeBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef 16) ; 3 uses
  %i.aq = and i64 %i.ap, 255
  %.not139 = icmp eq i64 %i.aq, 255
  br i1 %.not139, label %bb.l, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.4104.0.extract.shift = and i64 %i.ap, -256
  br label %bb.ab

bb.o:                                             ; preds = %bb.l
  %i.ar = load i64, ptr %3, align 8, !range !8, !noundef !6
  %.not140 = icmp eq i64 %i.ar, -1
  br i1 %.not140, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !6, !align !19, !noundef !6
  %i.au = load i16, ptr %i.at, align 2, !noundef !6
  %.sroa.062.0.copyload = load i32, ptr %i.h, align 8
  %.val147 = load ptr, ptr %i.m, align 8
  %.val148 = load i64, ptr %i.n, align 8
  %.val149 = load ptr, ptr %i.o, align 8
  %.val150 = load i64, ptr %i.p, align 8
  %i.av = tail call fastcc i64 @_RINvMs1_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB6_10LineString5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB14_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, ptr noalias nofree noundef align 8 dereferenceable(64) %i.b, i16 noundef %i.au, i32 noundef %.sroa.062.0.copyload, ptr %.val147, i64 %.val148, ptr %.val149, i64 %.val150) ; 3 uses
  %i.aw = and i64 %i.av, 255
  %.not142 = icmp eq i64 %i.aw, 255               ; 2 uses
  %.sroa.4110.0.extract.shift = and i64 %i.av, -256
  %spec.select = select i1 %.not142, i64 0, i64 %.sroa.4110.0.extract.shift
  %spec.select143 = select i1 %.not142, i64 255, i64 %i.av
  br label %bb.ab

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !6, !align !19, !noundef !6 ; 2 uses
  %i.az = load i16, ptr %i.ay, align 2, !noundef !6
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  switch i16 %i.az, label %bb.r [
    i16 31, label %bb.s
    i16 14, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  store i64 0, ptr %i.a, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.ba = tail call noundef i64 @_RINvMsq_NtNtCsi68uqYEhoRA_5gimli5write3strNtB6_15LineStringTable3addAhj0_ECs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.j)
  store i64 %i.ba, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 -9223372036854775807, ptr %i.a, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.bb = tail call noundef i64 @_RINvMs7_NtNtCsi68uqYEhoRA_5gimli5write3strNtB6_11StringTable3addAhj0_ECs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.l)
  store i64 %i.bb, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %i.a, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.bc = load i16, ptr %i.ay, align 2, !noundef !6
  %.sroa.072.0.copyload = load i32, ptr %i.h, align 8
  %.val = load ptr, ptr %i.m, align 8
  %.val144 = load i64, ptr %i.n, align 8
  %.val145 = load ptr, ptr %i.o, align 8
  %.val146 = load i64, ptr %i.p, align 8
  %i.bd = invoke fastcc i64 @_RINvMs1_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB6_10LineString5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB14_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(64) %i.b, i16 noundef %i.bc, i32 noundef %.sroa.072.0.copyload, ptr %.val, i64 %.val144, ptr %.val145, i64 %.val146)
          to label %bb.w unwind label %bb.v       ; 3 uses

bb.v:                                             ; preds = %bb.u
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #12
          to label %bb.aa unwind label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.bf = and i64 %i.bd, 255
  %.not141 = icmp eq i64 %i.bf, 255
  br i1 %.not141, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.4116.0.extract.shift = and i64 %i.bd, -256
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ab

bb.z:                                             ; preds = %bb.v
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.aa:                                            ; preds = %bb.v
  resume { ptr, i32 } %i.be

bb.ab:                                            ; preds = %bb.p, %bb.l, %bb.y, %bb.x, %bb.n, %bb.k, %bb.h, %bb.d, %bb.b
  %.sroa.9.sroa.0.0 = phi i64 [ %.sroa.480.0.extract.shift, %bb.b ], [ %.sroa.486.0.extract.shift, %bb.d ], [ %.sroa.492.0.extract.shift, %bb.h ], [ %.sroa.498.0.extract.shift, %bb.k ], [ %.sroa.4104.0.extract.shift, %bb.n ], [ %spec.select, %bb.p ], [ %.sroa.4116.0.extract.shift, %bb.x ], [ 0, %bb.l ], [ 0, %bb.y ]
  %.sroa.0.0 = phi i64 [ %i.q, %bb.b ], [ %i.s, %bb.d ], [ %i.ac, %bb.h ], [ %i.aj, %bb.k ], [ %i.ap, %bb.n ], [ %spec.select143, %bb.p ], [ %i.bd, %bb.x ], [ 255, %bb.l ], [ 255, %bb.y ]
  %.sroa.0.0.insert.ext = and i64 %.sroa.0.0, 255
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, %.sroa.9.sroa.0.0
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer3lenBH_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer20write_initial_lengthB4_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(64), i8 noundef range(i8 4, 9)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer9write_u16B4_(ptr noalias nofree noundef align 8 dereferenceable(64), i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer8write_u8B4_(ptr noalias nofree noundef align 8 dereferenceable(64), i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer11write_udataB4_(ptr noalias nofree noundef align 8 dereferenceable(64), i64 noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i64 @_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer5writeBH_(ptr noalias nofree noundef align 8 dereferenceable(64), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_uleb128B4_(ptr noalias nofree noundef align 8 dereferenceable(64), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer14write_udata_atB4_(ptr noalias nofree noundef align 8 dereferenceable(64), i64 noundef, i64 noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer23write_initial_length_atB4_(ptr noalias nofree noundef align 8 dereferenceable(64), i64 noundef, i64 noundef, i8 noundef range(i8 4, 9)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_sleb128B4_(ptr noalias nofree noundef align 8 dereferenceable(64), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i64 @_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer13write_addressBH_(ptr noalias nofree noundef align 8 dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i8 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtNtCsi68uqYEhoRA_5gimli6leb1285writeNtB2_6Leb1285bytes(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(11)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvMsq_NtNtCsi68uqYEhoRA_5gimli5write3strNtB6_15LineStringTable3addINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef align 8 dereferenceable(88), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i64 @_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer12write_offsetBH_(ptr noalias nofree noundef align 8 dereferenceable(64), i64 noundef, i8 noundef range(i8 0, 25), i8 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvMsq_NtNtCsi68uqYEhoRA_5gimli5write3strNtB6_15LineStringTable3addAhj0_ECs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef align 8 dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvMs7_NtNtCsi68uqYEhoRA_5gimli5write3strNtB6_11StringTable3addAhj0_ECs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef align 8 dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsA_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechEINtNtCskKLDkoKarTP_4core7convert4FromAhj4_E4fromCs4VV2qO6j7hb_12simple_write(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsA_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechEINtNtCskKLDkoKarTP_4core7convert4FromAhj7_E4fromCs4VV2qO6j7hb_12simple_write(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i56) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noinline noreturn }
attributes #10 = { inlinehint }
attributes #11 = { cold noreturn nounwind }
attributes #12 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = !{i64 0, i64 -9223372036854775806}
!8 = !{i64 -1, i64 -9223372036854775806}
!9 = distinct !{!9, i1 false, !"_RINvYINtNtNtCsbbt5GHOb4oK_8indexmap3map4iter4IterTNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringNtBO_11DirectoryIdENtBO_8FileInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB27_8find_map5checkTRBL_RB1S_ENtNtBS_9constants6DwFormNCINvMBO_NtBO_11LineProgram5writeNtCs4VV2qO6j7hb_12simple_write7SectionE0E0INtNtNtB2f_3ops12control_flow11ControlFlowB3N_EEB4K_"}
!10 = distinct !{!10, !9, !"_RINvYINtNtNtCsbbt5GHOb4oK_8indexmap3map4iter4IterTNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringNtBO_11DirectoryIdENtBO_8FileInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB27_8find_map5checkTRBL_RB1S_ENtNtBS_9constants6DwFormNCINvMBO_NtBO_11LineProgram5writeNtCs4VV2qO6j7hb_12simple_write7SectionE0E0INtNtNtB2f_3ops12control_flow11ControlFlowB3N_EEB4K_: argument 0"}
!11 = distinct !{!11, !16}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{i8 4, i8 9}
!14 = !{i32 0, i32 2}
!15 = !{!10}
!16 = !{!"llvm.loop.peeled.count", i32 1}
!17 = !{i64 0, i64 17}
!18 = !{i64 8}
!19 = !{i64 2}
end_hunk_1
