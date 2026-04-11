inline.NumInlined: 2420
inline.NumDeleted: 745
begin_hunk_0_@_ZN6hermes2vmL21stringDirectedIndexOfERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_S5_bb:bb.a
bb.q:                                             ; preds = %bb.p
  %.sroa.19.12.extract.shift = lshr i64 %i.bp, 32 ; 3 uses
  %i.bt = zext i32 %i.bm to i64
  %.sroa.11.12.extract.shift = lshr i64 %i.bs, 32 ; 8 uses
  %i.bu = add nuw nsw i64 %.sroa.11.12.extract.shift, %i.bt
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.bu, i64 %.sroa.19.12.extract.shift) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %.sroa.19.8.extract.trunc = trunc i64 %i.bp to i32 ; 7 uses
  %i.bv = icmp slt i32 %.sroa.19.8.extract.trunc, 0 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes2vmL21stringDirectedIndexOfERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_S5_bb:bb.a
  %.not.i.i372 = icmp eq ptr %i.bo, null          ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.sroa.speculated
  %.sroa.3.0.idx.i.i373 = select i1 %.not.i.i372, i64 %.neg, i64 0
  %.sroa.3.0.i.i54374 = getelementptr inbounds [2 x i8], ptr null, i64 %.sroa.3.0.idx.i.i373
  %.sroa.0.0.i.i55375 = select i1 %.not.i.i372, ptr null, ptr %i.cz
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i69

end_hunk_1
begin_hunk_2_@_ZN6hermes2vmL21stringDirectedIndexOfERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_S5_bb:bb.a
  %.neg438 = sub nsw i64 %.sroa.speculated, %.sroa.19.12.extract.shift
  %.not.i.i372439 = icmp eq ptr %.0.i.sink.i.i.i.ph, null ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %.sroa.speculated
  %.sroa.3.0.idx.i.i373440 = select i1 %.not.i.i372439, i64 %.neg438, i64 0
  %.sroa.3.0.i.i54374441 = getelementptr inbounds [2 x i8], ptr null, i64 %.sroa.3.0.idx.i.i373440 ; 4 uses
  %.sroa.0.0.i.i55375442 = select i1 %.not.i.i372439, ptr null, ptr %i.dc ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i67 = load i64, ptr %i.bo, align 8, !tbaa !24, !noalias !325
  %i.dd = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i67, 281474976710655
end_hunk_2
begin_hunk_3_@_ZN6hermes2vmL21stringDirectedIndexOfERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_S5_bb:bb.a

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i69: ; preds = %bb.af, %bb.al, %bb.ak, %bb.aj, %bb.ah
  %.sroa.0.0.i.i55375446 = phi ptr [ %.sroa.0.0.i.i55375, %bb.af ], [ %.sroa.0.0.i.i55375442, %bb.ah ], [ %.sroa.0.0.i.i55375442, %bb.aj ], [ %.sroa.0.0.i.i55375442, %bb.ak ], [ %.sroa.0.0.i.i55375442, %bb.al ]
  %.sroa.3.0.i.i54374444 = phi ptr [ %.sroa.3.0.i.i54374, %bb.af ], [ %.sroa.3.0.i.i54374441, %bb.ah ], [ %.sroa.3.0.i.i54374441, %bb.aj ], [ %.sroa.3.0.i.i54374441, %bb.ak ], [ %.sroa.3.0.i.i54374441, %bb.al ]
  %i.dq = phi i64 [ %i.cx, %bb.af ], [ %i.da, %bb.ah ], [ %i.da, %bb.aj ], [ %i.da, %bb.ak ], [ %i.da, %bb.al ]
  %.0.i.sink.i.i.i70 = phi ptr [ %i.bo, %bb.af ], [ %i.di, %bb.ah ], [ %i.dj, %bb.aj ], [ %i.dk, %bb.ak ], [ %i.dp, %bb.al ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i.i70, i64 %i.dq
  br label %_ZNK6hermes2vm10StringView4rendEv.exit

bb.am:                                            ; preds = %bb.y
  %i.ds = and i64 %i.bp, 1073741823               ; 2 uses
  %13 = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.ds
  %.sroa.3.0.i.i54 = getelementptr inbounds nuw [2 x i8], ptr %13, i64 %.sroa.speculated
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i60

bb.an:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa
  %.0.i.sink.i4.i.i.ph = phi ptr [ %i.cw, %bb.ae ], [ %i.cr, %bb.ad ], [ %i.cq, %bb.ac ], [ %i.cp, %bb.aa ]
  %i.dt = and i64 %i.bp, 1073741823               ; 5 uses
  %14 = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i.i.ph, i64 %i.dt
  %.sroa.3.0.i.i54450 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %.sroa.speculated ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i2.i.i58 = load i64, ptr %i.bo, align 8, !tbaa !24, !noalias !325
  %i.du = and i64 %.sroa.0.0.copyload.i.i.i.i2.i.i58, 281474976710655
  %i.dv = inttoptr i64 %i.du to ptr               ; 5 uses
end_hunk_3
begin_hunk_4_@_ZN6hermes2vmL21stringDirectedIndexOfERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_S5_bb:bb.a
  %.sroa.3.0.i.i54452.a = phi ptr [ %.sroa.3.0.i.i54, %bb.am ], [ %.sroa.3.0.i.i54450, %bb.ao ], [ %.sroa.3.0.i.i54450, %bb.aq ], [ %.sroa.3.0.i.i54450, %bb.ar ], [ %.sroa.3.0.i.i54450, %bb.as ]
  %i.eh = phi i64 [ %i.ds, %bb.am ], [ %i.dt, %bb.ao ], [ %i.dt, %bb.aq ], [ %i.dt, %bb.ar ], [ %i.dt, %bb.as ]
  %.0.i.sink.i4.i.i61 = phi ptr [ %i.bo, %bb.am ], [ %i.dz, %bb.ao ], [ %i.ea, %bb.aq ], [ %i.eb, %bb.ar ], [ %i.eg, %bb.as ]
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i.i61, i64 %i.eh
  br label %_ZNK6hermes2vm10StringView4rendEv.exit

_ZNK6hermes2vm10StringView4rendEv.exit:           ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i69, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i60
  %.sroa.0.0.i.i55378 = phi ptr [ %.sroa.0.0.i.i55375446, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i69 ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i60 ]
  %.sroa.3.0.i.i54376 = phi ptr [ %.sroa.3.0.i.i54374444, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i69 ], [ %.sroa.3.0.i.i54452.a, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i60 ]
  %.sroa.3.0.i.i62 = phi ptr [ null, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i69 ], [ %i.ei, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i60 ]
  %.sroa.0.0.i.i63 = phi ptr [ %i.dr, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i69 ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i60 ]
  %.sroa.11.8.extract.trunc = trunc i64 %i.bs to i32 ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN6hermes2vmL21stringDirectedIndexOfERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_S5_bb:bb.a

bb.bg:                                            ; preds = %bb.at
  %i.fj = and i64 %i.bs, 1073741823               ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.fj
  %i.fk = getelementptr inbounds nuw i8, ptr %15, i64 %.sroa.11.12.extract.shift
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i100

bb.bh:                                            ; preds = %bb.av, %bb.ax, %bb.ay, %bb.az
  %.0.i.sink.i.i.i85.ph = phi ptr [ %i.ex, %bb.az ], [ %i.es, %bb.ay ], [ %i.er, %bb.ax ], [ %i.eq, %bb.av ]
  %i.fl = and i64 %i.bs, 1073741823               ; 5 uses
  %16 = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i.i85.ph, i64 %i.fl
  %i.fm = getelementptr inbounds nuw i8, ptr %16, i64 %.sroa.11.12.extract.shift ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i98 = load i64, ptr %i.br, align 8, !tbaa !24, !noalias !331
  %i.fn = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i98, 281474976710655
  %i.fo = inttoptr i64 %i.fn to ptr               ; 5 uses
end_hunk_5
begin_hunk_6_@_ZN6hermes2vmL21stringDirectedIndexOfERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_S5_bb:bb.a
  %i.ga = phi ptr [ %i.fk, %bb.bg ], [ %i.fm, %bb.bi ], [ %i.fm, %bb.bk ], [ %i.fm, %bb.bl ], [ %i.fm, %bb.bm ]
  %i.gb = phi i64 [ %i.fj, %bb.bg ], [ %i.fl, %bb.bi ], [ %i.fl, %bb.bk ], [ %i.fl, %bb.bl ], [ %i.fl, %bb.bm ]
  %.0.i.sink.i.i.i101 = phi ptr [ %i.br, %bb.bg ], [ %i.fs, %bb.bi ], [ %i.ft, %bb.bk ], [ %i.fu, %bb.bl ], [ %i.fz, %bb.bm ]
  %i.gc = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i.i101, i64 %i.gb
  br label %_ZNK6hermes2vm10StringView4rendEv.exit103

bb.bn:                                            ; preds = %bb.ba
  %i.gd = and i64 %i.bs, 1073741823               ; 2 uses
  %17 = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %i.gd
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %17, i64 %.sroa.11.12.extract.shift
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i91

bb.bo:                                            ; preds = %bb.bb
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !74, !noalias !328 ; 2 uses
  %i.gh = and i64 %i.bs, 1073741823               ; 2 uses
  %18 = getelementptr inbounds nuw [2 x i8], ptr %i.gg, i64 %i.gh
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %18, i64 %.sroa.11.12.extract.shift
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i91

bb.bp:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  %.0.i.sink.i4.i.i76.ph.ph = phi ptr [ %i.fc, %bb.bd ], [ %i.fd, %bb.be ], [ %i.fi, %bb.bf ]
  %i.gj = and i64 %i.bs, 1073741823               ; 4 uses
  %19 = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i.i76.ph.ph, i64 %i.gj
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %19, i64 %.sroa.11.12.extract.shift ; 3 uses
  %.mask.i.i.i.i.i.i.i.i.i3.i.i90 = and i32 %i.fa, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i.i90, label %bb.bs [
    i32 117440512, label %bb.bq
end_hunk_6
begin_hunk_7_@_ZN6hermes2vmL21stringDirectedIndexOfERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_S5_bb:bb.a
  %.pre-phi = phi i64 [ %i.gd, %bb.bn ], [ %i.gj, %bb.bs ], [ %i.gj, %bb.br ], [ %i.gj, %bb.bq ], [ %i.gh, %bb.bo ]
  %i.gs = phi ptr [ %i.ge, %bb.bn ], [ %i.gk, %bb.bs ], [ %i.gk, %bb.br ], [ %i.gk, %bb.bq ], [ %i.gi, %bb.bo ]
  %.0.i.sink.i4.i.i92 = phi ptr [ %i.br, %bb.bn ], [ %i.gr, %bb.bs ], [ %i.gm, %bb.br ], [ %i.gl, %bb.bq ], [ %i.gg, %bb.bo ]
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i.i92, i64 %.pre-phi
  br label %_ZNK6hermes2vm10StringView4rendEv.exit103

_ZNK6hermes2vm10StringView4rendEv.exit103:        ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i100, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i91
  %.sroa.0.0.i.i78384 = phi ptr [ %i.ga, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i100 ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i91 ]
  %.sroa.3.0.i.i77382 = phi ptr [ null, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i100 ], [ %i.gs, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i91 ]
  %.sroa.3.0.i.i93 = phi ptr [ null, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i100 ], [ %i.gt, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i91 ]
  %.sroa.0.0.i.i94 = phi ptr [ %i.gc, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i100 ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i91 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
end_hunk_7
