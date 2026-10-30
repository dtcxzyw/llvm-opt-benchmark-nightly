Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.10?download=true
inline.NumInlined: 7695
inline.NumDeleted: 2631
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift4sortTmmmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBW_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB1Z_10ProbeState17ordered_unmatcheds_0E0EB25_:bb.a
  %i.cr = zext i1 %i.cq to i64, !dbg !92534
  %i.cs = getelementptr inbounds nuw [12 x i8], ptr %i.co, i64 %i.cr, !dbg !92535 ; 3 uses
  %i.ct = zext i1 %i.cp to i64, !dbg !92536
  %i.cu = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.02.i.i, i64 %i.ct, !dbg !92537 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 12, !dbg !92538 ; 2 uses
  %i.cw = icmp ne ptr %i.cs, %i.bz, !dbg !92539
  %i.cx = icmp ne ptr %i.cu, %i.m
  %or.cond.i20.i = select i1 %i.cw, i1 %i.cx, i1 false, !dbg !92539
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTmmmEE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB2r_10ProbeState17ordered_unmatcheds_0E0EB2x_.exit.i, !dbg !92539

_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTmmmEE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB2r_10ProbeState17ordered_unmatcheds_0E0EB2x_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.ci, %.preheader.i ], [ %i.cv, %.lr.ph.i.i ], !dbg !92540
  %.sroa.7.0.i = phi ptr [ %i.ck, %.preheader.i ], [ %i.bz, %.lr.ph.i.i ], !dbg !92541
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.cs, %.lr.ph.i.i ], !dbg !92541 ; 2 uses
  %i.cy = ptrtoint ptr %.sroa.7.0.i to i64, !dbg !92542
  %i.cz = ptrtoint ptr %.sroa.0.1.i to i64, !dbg !92542
  %i.da = sub nuw i64 %i.cy, %i.cz, !dbg !92542
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.1.i, ptr align 4 %.sroa.0.1.i, i64 %i.da, i1 false), !dbg !92543, !alias.scope !92393, !noalias !92396
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTmmmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB20_10ProbeState17ordered_unmatcheds_0E0EB26_.exit, !dbg !92544

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTmmmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB20_10ProbeState17ordered_unmatcheds_0E0EB26_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTmmmEE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB2r_10ProbeState17ordered_unmatcheds_0E0EB2x_.exit.i
  %i.db = shl nuw nsw i64 %i.bg, 1, !dbg !92545
  %i.dc = or disjoint i64 %i.db, 1, !dbg !92545
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTmmmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB2a_10ProbeState17ordered_unmatcheds_0E0EB2g_.exit, !dbg !92499

bb.aa:                                            ; preds = %bb.w
  %i.dd = getelementptr inbounds nuw [12 x i8], ptr %i.bi, i64 %i.be, !dbg !92546
  %i.de = or i64 %i.bf, 1, !dbg !92547
  %i.df = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.de, i1 true), !dbg !92548
  %i.dg = trunc nuw nsw i64 %i.df to i32, !dbg !92548
  %i.dh = shl nuw nsw i32 %i.dg, 1, !dbg !92549
  %i.di = xor i32 %i.dh, 126, !dbg !92549
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmmmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB29_10ProbeState17ordered_unmatcheds_0E0EB2f_(ptr noalias noundef nonnull align 4 %i.dd, i64 noundef range(i64 0, 768614336404564651) %i.bf, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 768614336404564651) %3, i32 noundef %i.di, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(12) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #39, !dbg !92550, !inline_history !92261
  br label %bb.y, !dbg !92551

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTmmmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB2a_10ProbeState17ordered_unmatcheds_0E0EB2g_.exit: ; preds = %bb.v, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTmmmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB20_10ProbeState17ordered_unmatcheds_0E0EB26_.exit
  %.sroa.0.0.i = phi i64 [ %i.dc, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTmmmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB20_10ProbeState17ordered_unmatcheds_0E0EB26_.exit ], [ %i.bo, %bb.v ], !dbg !92552 ; 2 uses
  %i.dj = icmp ugt i64 %i.ax, 1, !dbg !92419
  br i1 %i.dj, label %bb.s, label %._crit_edge, !dbg !92419

bb.ab:                                            ; preds = %._crit_edge
  %i.dk = add nuw nsw i64 %.sroa.02.1.lcssa, 1, !dbg !92553
  %i.dl = lshr i64 %.sroa.018.0, 1, !dbg !92554
  %i.dm = add nuw i64 %i.dl, %.sroa.09.0, !dbg !92555
  br label %bb.f, !dbg !92413

bb.ac:                                            ; preds = %._crit_edge
  %i.dn = and i64 %.sroa.023.1.lcssa, 1, !dbg !92556
  %.not31 = icmp eq i64 %i.dn, 0, !dbg !92557
  br i1 %.not31, label %bb.ad, label %bb.ae, !dbg !92557

bb.ad:                                            ; preds = %bb.ac
  %i.do = or i64 %1, 1, !dbg !92558
  %i.dp = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.do, i1 true), !dbg !92559
  %i.dq = trunc nuw nsw i64 %i.dp to i32, !dbg !92559
  %i.dr = shl nuw nsw i32 %i.dq, 1, !dbg !92560
  %i.ds = xor i32 %i.dr, 126, !dbg !92560
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmmmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB29_10ProbeState17ordered_unmatcheds_0E0EB2f_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 768614336404564651) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 768614336404564651) %3, i32 noundef %i.ds, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(12) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #39, !dbg !92561, !inline_history !92261
  br label %bb.ae, !dbg !92562

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !92563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !92564
  br label %bb.af, !dbg !92565

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void, !dbg !92565
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtBa_4time8DurationNtNtCsgZ49sUHp3tW_5alloc6string6StringENCINvMNtB1v_5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseB16_ENCNvMNtCs2g09Ig8GZd6_13polars_stream8skeletonNtB38_14StreamingQuery7execute0E0EB3a_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(40) %5, ptr noalias noundef align 8 dereferenceable(8) %6) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !92566 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33, !dbg !92782
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph, !dbg !92782

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph102 = phi ptr [ %i.dh, %.outer ], [ %0, %bb.a ] ; 21 uses
  %.sroa.16.0.ph101 = phi i64 [ %i.cs, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph100 = phi i32 [ %i.h, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph99 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 3 uses
  %i.c = getelementptr i8, ptr %.sroa.0.0.ph102, i64 8
  %i.d = ptrtoint ptr %.sroa.0.0.ph102 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph99, null
  %i.e = getelementptr i8, ptr %.sroa.028.0.ph99, i64 8
  %i.f = icmp eq i32 %.sroa.025.0.ph100, 0, !dbg !92783
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph225, !dbg !92783

bb.b:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtB4_4time8DurationNtNtCsgZ49sUHp3tW_5alloc6string6StringE12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit
  %i.g = icmp eq i32 %i.h, 0, !dbg !92783
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph225, !dbg !92783

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtB4_4time8DurationNtNtCsgZ49sUHp3tW_5alloc6string6StringE12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa93 = phi ptr [ %i.ct, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph102, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtB4_4time8DurationNtNtCsgZ49sUHp3tW_5alloc6string6StringE12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit ], [ %i.dh, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtB4_4time8DurationNtNtCsgZ49sUHp3tW_5alloc6string6StringE12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit ], [ %i.cs, %.outer ]
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtBa_4time8DurationNtNtCsgZ49sUHp3tW_5alloc6string6StringENCINvMNtB1S_5sliceSB1s_11sort_by_keyINtNtBa_3cmp7ReverseB1t_ENCNvMNtCs2g09Ig8GZd6_13polars_stream8skeletonNtB3v_14StreamingQuery7execute0E0EB3x_(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph.lcssa93, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, ptr noalias noundef nonnull align 8 dereferenceable(8) %6), !dbg !92784
  br label %bb.f, !dbg !92785

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.095.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph101, %.lr.ph ]
  call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift4sortTNtNtBa_4time8DurationNtNtCsgZ49sUHp3tW_5alloc6string6StringENCINvMNtB1m_5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReverseBX_ENCNvMNtCs2g09Ig8GZd6_13polars_stream8skeletonNtB2X_14StreamingQuery7execute0E0EB2Z_(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph102, i64 noundef %.sroa.16.095.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %6), !dbg !92786
  br label %bb.f, !dbg !92785

.lr.ph225:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.094224 = phi i32 [ %i.h, %bb.b ], [ %.sroa.025.0.ph100, %.lr.ph ]
  %.sroa.16.095223 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph101, %.lr.ph ] ; 21 uses
  %i.h = add i32 %.sroa.025.094224, -1, !dbg !92787 ; 4 uses
  %i.i = lshr i64 %.sroa.16.095223, 3, !dbg !92788 ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.i, 160, !dbg !92789
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph102, i64 %.idx.i, !dbg !92789 ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.i, 280, !dbg !92790
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph102, i64 %.idx2.i, !dbg !92790 ; 4 uses
  %i.l = icmp samesign ult i64 %.sroa.16.095223, 64, !dbg !92791
  br i1 %i.l, label %bb.d, label %bb.c, !dbg !92791

bb.c:                                             ; preds = %.lr.ph225
  %i.m = call noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recTNtNtBa_4time8DurationNtNtCsgZ49sUHp3tW_5alloc6string6StringENCINvMNtB1u_5sliceSB14_11sort_by_keyINtNtBa_3cmp7ReverseB15_ENCNvMNtCs2g09Ig8GZd6_13polars_stream8skeletonNtB37_14StreamingQuery7execute0E0EB39_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph102, ptr noundef nonnull readonly %i.j, ptr noundef nonnull readonly %i.k, i64 noundef %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %6), !dbg !92792
  br label %bb.g, !dbg !92793

bb.d:                                             ; preds = %.lr.ph225
  %.val10.i = load i64, ptr %.sroa.0.0.ph102, align 8, !dbg !92794, !alias.scope !92764, !noundef !2595 ; 4 uses
  %.val11.i = load i32, ptr %i.c, align 8, !dbg !92794, !range !3127, !alias.scope !92764, !noundef !2595 ; 2 uses
  %.val12.i = load i64, ptr %i.j, align 8, !dbg !92794, !alias.scope !92764, !noundef !2595 ; 4 uses
  %i.n = getelementptr i8, ptr %i.j, i64 8, !dbg !92794
  %.val13.i = load i32, ptr %i.n, align 8, !dbg !92794, !range !3127, !alias.scope !92764, !noundef !2595 ; 2 uses
  %i.o = icmp eq i64 %.val12.i, %.val10.i, !dbg !92795
  %i.p = icmp samesign ult i32 %.val13.i, %.val11.i, !dbg !92796
  %i.q = icmp ult i64 %.val12.i, %.val10.i, !dbg !92796
  %i.r = select i1 %i.o, i1 %i.p, i1 %i.q, !dbg !92795 ; 2 uses
  %.val8.i = load i64, ptr %i.k, align 8, !dbg !92797, !alias.scope !92764, !noundef !2595 ; 4 uses
  %i.s = getelementptr i8, ptr %i.k, i64 8, !dbg !92797
  %.val9.i = load i32, ptr %i.s, align 8, !dbg !92797, !range !3127, !alias.scope !92764, !noundef !2595 ; 2 uses
  %i.t = icmp eq i64 %.val8.i, %.val10.i, !dbg !92798
  %i.u = icmp samesign ult i32 %.val9.i, %.val11.i, !dbg !92799
  %i.v = icmp ult i64 %.val8.i, %.val10.i, !dbg !92799
  %i.w = select i1 %i.t, i1 %i.u, i1 %i.v, !dbg !92798
  %i.x = xor i1 %i.r, %i.w, !dbg !92800
  br i1 %i.x, label %bb.g, label %bb.e, !dbg !92800

bb.e:                                             ; preds = %bb.d
  %i.y = icmp eq i64 %.val8.i, %.val12.i, !dbg !92801
  %i.z = icmp samesign ult i32 %.val9.i, %.val13.i, !dbg !92802
  %i.aa = icmp ult i64 %.val8.i, %.val12.i, !dbg !92802
  %i.ab = select i1 %i.y, i1 %i.z, i1 %i.aa, !dbg !92801
  %i.ac = xor i1 %i.r, %i.ab, !dbg !92803
  %..i.i = select i1 %i.ac, ptr %i.k, ptr %i.j, !dbg !92804
  br label %bb.g, !dbg !92804

bb.f:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void, !dbg !92805

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.m, %bb.c ], [ %.sroa.0.0.ph102, %bb.d ], [ %..i.i, %bb.e ]
  %i.ad = ptrtoint ptr %.sroa.0.0.i.sink.i to i64, !dbg !92806
  %i.ae = sub nuw i64 %i.ad, %i.d, !dbg !92806    ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.ae, 40, !dbg !92806 ; 3 uses
  %i.af = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.095223, !dbg !92807
  call void @llvm.assume(i1 %i.af), !dbg !92808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !92809
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph102, i64 %i.ae, !dbg !92810 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.ag, i64 40, i1 false), !dbg !92811
  br i1 %.not, label %bb.i, label %bb.h, !dbg !92812

bb.h:                                             ; preds = %bb.g
  %.sroa.028.0.val = load i64, ptr %.sroa.028.0.ph99, align 8, !dbg !92813, !noundef !2595 ; 2 uses
  %.sroa.028.0.val37 = load i32, ptr %i.e, align 8, !dbg !92813, !range !3127, !noundef !2595
  %.val = load i64, ptr %i.ag, align 8, !dbg !92813, !noundef !2595 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8, !dbg !92813
  %.val38 = load i32, ptr %i.ah, align 8, !dbg !92813, !range !3127, !noundef !2595
  %i.ai = icmp eq i64 %.val, %.sroa.028.0.val, !dbg !92814
  %i.aj = icmp samesign ult i32 %.val38, %.sroa.028.0.val37, !dbg !92815
  %i.ak = icmp ult i64 %.val, %.sroa.028.0.val, !dbg !92815
  %i.al = select i1 %i.ai, i1 %i.aj, i1 %i.ak, !dbg !92814
  br i1 %i.al, label %bb.i, label %.thread, !dbg !92816

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !92766), !dbg !92817
  %.not69 = icmp samesign ult i64 %3, %.sroa.16.095223, !dbg !92818
  br i1 %.not69, label %bb.k, label %bb.j, !dbg !92818, !prof !3155

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr [40 x i8], ptr %2, i64 %.sroa.16.095223, !dbg !92819 ; 4 uses
  %i.an = getelementptr i8, ptr %i.ag, i64 8
  br label %bb.l, !dbg !92820

bb.k:                                             ; preds = %bb.i
  call void @llvm.trap(), !dbg !92821
  unreachable, !dbg !92821

bb.l:                                             ; preds = %bb.n, %bb.j
  %.sroa.19.0.i = phi ptr [ %i.am, %bb.j ], [ %i.bc, %bb.n ], !dbg !92822 ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.j ], [ %.sroa.11.1.lcssa.i, %bb.n ], !dbg !92822 ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph102, %bb.j ], [ %i.be, %bb.n ], !dbg !92822 ; 3 uses
  %.sroa.0.0.i39 = phi i64 [ %.sroa.0.0.i, %bb.j ], [ %.sroa.16.095223, %bb.n ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph102, i64 %.sroa.0.0.i39, !dbg !92823 ; 2 uses
  %i.ap = icmp ult ptr %.sroa.5.0.i, %i.ao, !dbg !92824
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i, !dbg !92824

.lr.ph.i:                                         ; preds = %bb.l
  %.val13.i40 = load i64, ptr %i.ag, align 8, !alias.scope !92767, !noundef !2595 ; 2 uses
  br label %bb.m, !dbg !92824

._crit_edge.i:                                    ; preds = %bb.m, %bb.l
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.l ], [ %i.aw, %bb.m ], !dbg !92822
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.l ], [ %i.az, %bb.m ], !dbg !92822 ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.l ], [ %i.ba, %bb.m ], !dbg !92822 ; 2 uses
  %i.aq = icmp eq i64 %.sroa.0.0.i39, %.sroa.16.095223, !dbg !92825
  br i1 %i.aq, label %bb.o, label %bb.n, !dbg !92825

bb.m:                                             ; preds = %bb.m, %.lr.ph.i
  %.sroa.5.111.i = phi ptr [ %.sroa.5.0.i, %.lr.ph.i ], [ %i.ba, %bb.m ] ; 4 uses
  %.sroa.11.110.i = phi i64 [ %.sroa.11.0.i, %.lr.ph.i ], [ %i.az, %bb.m ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %.sroa.19.0.i, %.lr.ph.i ], [ %i.aw, %bb.m ]
  %.val.i = load i64, ptr %.sroa.5.111.i, align 8, !dbg !92826, !alias.scope !92767, !noundef !2595 ; 2 uses
  %i.ar = getelementptr i8, ptr %.sroa.5.111.i, i64 8, !dbg !92826
  %.val12.i41 = load i32, ptr %i.ar, align 8, !dbg !92826, !range !3127, !alias.scope !92767, !noundef !2595
  %.val14.i.a = load i32, ptr %i.an, align 8, !dbg !92826, !range !3127, !alias.scope !92767, !noundef !2595
  %i.as = icmp eq i64 %.val13.i40, %.val.i, !dbg !92827
  %i.at = icmp samesign ult i32 %.val14.i.a, %.val12.i41, !dbg !92828
  %i.au = icmp ult i64 %.val13.i40, %.val.i, !dbg !92828
  %i.av = select i1 %i.as, i1 %i.at, i1 %i.au, !dbg !92827 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -40, !dbg !92829 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.av, ptr %2, ptr %i.aw, !dbg !92830
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i, !dbg !92831
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.111.i, i64 40, i1 false), !dbg !92832, !alias.scope !92768, !noalias !92769
  %i.ay = zext i1 %i.av to i64, !dbg !92833
  %i.az = add i64 %.sroa.11.110.i, %i.ay, !dbg !92834 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 40, !dbg !92835 ; 3 uses
  %i.bb = icmp ult ptr %i.ba, %i.ao, !dbg !92824
  br i1 %i.bb, label %bb.m, label %._crit_edge.i, !dbg !92824

bb.n:                                             ; preds = %._crit_edge.i
  %i.bc = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -40, !dbg !92836 ; 2 uses
  %i.bd = getelementptr inbounds nuw [40 x i8], ptr %i.bc, i64 %.sroa.11.1.lcssa.i, !dbg !92837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bd, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.1.lcssa.i, i64 40, i1 false), !dbg !92838, !alias.scope !92768, !noalias !92770
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 40, !dbg !92839
  br label %bb.l, !dbg !92820

bb.o:                                             ; preds = %._crit_edge.i
  %i.bf = mul i64 %.sroa.11.1.lcssa.i, 40, !dbg !92840
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph102, ptr nonnull align 8 %2, i64 %i.bf, i1 false), !dbg !92840, !alias.scope !92768
  %i.bg = sub i64 %.sroa.16.095223, %.sroa.11.1.lcssa.i, !dbg !92841 ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.16.095223, %.sroa.11.1.lcssa.i, !dbg !92842
  br i1 %.not18.i, label %.loopexit, label %.lr.ph16.i, !dbg !92843

.lr.ph16.i:                                       ; preds = %bb.o
  %i.bh = getelementptr [40 x i8], ptr %.sroa.0.0.ph102, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1, !dbg !92843
  %xtraiter = and i64 %i.bg, 1, !dbg !92843
  %i.bi = icmp eq i64 %.sroa.16.095223, %.neg, !dbg !92843
  br i1 %i.bi, label %.epil.preheader, label %.lr.ph16.i.new, !dbg !92843

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.bg, -2, !dbg !92843
  br label %bb.p, !dbg !92843

bb.p:                                             ; preds = %bb.p, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.bm, %bb.p ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.p ]
  %i.bj = xor i64 %.sroa.06.014.i, -1, !dbg !92844
  %i.bk = getelementptr [40 x i8], ptr %i.am, i64 %i.bj, !dbg !92845
  %i.bl = getelementptr [40 x i8], ptr %i.bh, i64 %.sroa.06.014.i, !dbg !92846
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bl, ptr noundef nonnull align 8 dereferenceable(40) %i.bk, i64 40, i1 false), !dbg !92847, !alias.scope !92768
  %i.bm = add nuw i64 %.sroa.06.014.i, 2, !dbg !92848 ; 2 uses
  %i.bn = xor i64 %.sroa.06.014.i, -2, !dbg !92844
  %i.bo = getelementptr [40 x i8], ptr %i.am, i64 %i.bn, !dbg !92845
  %i.bp = getelementptr [40 x i8], ptr %i.bh, i64 %.sroa.06.014.i, !dbg !92846
  %i.bq = getelementptr i8, ptr %i.bp, i64 40, !dbg !92846
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, ptr noundef nonnull align 8 dereferenceable(40) %i.bo, i64 40, i1 false), !dbg !92847, !alias.scope !92768
  %niter.next.1 = add i64 %niter, 2, !dbg !92843  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !92843
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.p, !dbg !92843

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !92843
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader, !dbg !92843

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.bm, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod286 = trunc i64 %i.bg to i1, !dbg !92843
  call void @llvm.assume(i1 %lcmp.mod286), !dbg !92843
  %i.br = xor i64 %.sroa.06.014.i.epil.init, -1, !dbg !92844
  %i.bs = getelementptr [40 x i8], ptr %i.am, i64 %i.br, !dbg !92845
  %i.bt = getelementptr [40 x i8], ptr %i.bh, i64 %.sroa.06.014.i.epil.init, !dbg !92846
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bt, ptr noundef nonnull align 8 dereferenceable(40) %i.bs, i64 40, i1 false), !dbg !92847, !alias.scope !92768
  br label %.loopexit, !dbg !92849

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.o
  %i.bu = icmp eq i64 %.sroa.11.1.lcssa.i, 0, !dbg !92849
  br i1 %i.bu, label %.thread, label %bb.q, !dbg !92850

bb.q:                                             ; preds = %.loopexit
  %.not.i42 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.095223, !dbg !92851
  br i1 %.not.i42, label %bb.r, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtB4_4time8DurationNtNtCsgZ49sUHp3tW_5alloc6string6StringE12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit, !dbg !92851, !prof !2619

bb.r:                                             ; preds = %bb.q
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @276, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @216) #41, !dbg !92852, !noalias !92772
  unreachable, !dbg !92852

_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtB4_4time8DurationNtNtCsgZ49sUHp3tW_5alloc6string6StringE12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph102, i64 %.sroa.11.1.lcssa.i, !dbg !92853
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph102) ]
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtBa_4time8DurationNtNtCsgZ49sUHp3tW_5alloc6string6StringENCINvMNtB1v_5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseB16_ENCNvMNtCs2g09Ig8GZd6_13polars_stream8skeletonNtB38_14StreamingQuery7execute0E0EB3a_(ptr noalias noundef nonnull align 8 %i.bv, i64 noundef %i.bg, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %6) #39, !dbg !92854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !92855
  %i.bw = icmp ult i64 %.sroa.11.1.lcssa.i, 33, !dbg !92782
  br i1 %i.bw, label %.outer._crit_edge, label %bb.b, !dbg !92782

.thread:                                          ; preds = %bb.h, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !92773), !dbg !92856
  %.not70 = icmp samesign ult i64 %3, %.sroa.16.095223, !dbg !92857
  br i1 %.not70, label %bb.t, label %bb.s, !dbg !92857, !prof !3155

bb.s:                                             ; preds = %.thread
  %i.bx = getelementptr [40 x i8], ptr %2, i64 %.sroa.16.095223, !dbg !92858 ; 4 uses
  %i.by = getelementptr i8, ptr %i.ag, i64 8
  br label %bb.u, !dbg !92859

bb.t:                                             ; preds = %.thread
  call void @llvm.trap(), !dbg !92860
  unreachable, !dbg !92860

bb.u:                                             ; preds = %bb.w, %bb.s
  %.sroa.19.0.i45 = phi ptr [ %i.bx, %bb.s ], [ %i.cn, %bb.w ], !dbg !92861 ; 2 uses
  %.sroa.11.0.i46 = phi i64 [ 0, %bb.s ], [ %i.cp, %bb.w ], !dbg !92861 ; 2 uses
  %.sroa.5.0.i47 = phi ptr [ %.sroa.0.0.ph102, %bb.s ], [ %i.cq, %bb.w ], !dbg !92861 ; 3 uses
  %.sroa.0.0.i48 = phi i64 [ %.sroa.0.0.i, %bb.s ], [ %.sroa.16.095223, %bb.w ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph102, i64 %.sroa.0.0.i48, !dbg !92862 ; 2 uses
  %i.ca = icmp ult ptr %.sroa.5.0.i47, %i.bz, !dbg !92863
  br i1 %i.ca, label %.lr.ph.i57, label %._crit_edge.i49, !dbg !92863

.lr.ph.i57:                                       ; preds = %bb.u
  %.val13.i58 = load i64, ptr %i.ag, align 8, !alias.scope !92774, !noundef !2595 ; 2 uses
  br label %bb.v, !dbg !92863

._crit_edge.i49:                                  ; preds = %bb.v, %bb.u
  %.sroa.19.1.lcssa.i50 = phi ptr [ %.sroa.19.0.i45, %bb.u ], [ %i.ch, %bb.v ], !dbg !92861
  %.sroa.11.1.lcssa.i51 = phi i64 [ %.sroa.11.0.i46, %bb.u ], [ %i.ck, %bb.v ], !dbg !92861 ; 10 uses
  %.sroa.5.1.lcssa.i52 = phi ptr [ %.sroa.5.0.i47, %bb.u ], [ %i.cl, %bb.v ], !dbg !92861 ; 2 uses
  %i.cb = icmp eq i64 %.sroa.0.0.i48, %.sroa.16.095223, !dbg !92864
  br i1 %i.cb, label %bb.x, label %bb.w, !dbg !92864

bb.v:                                             ; preds = %bb.v, %.lr.ph.i57
  %.sroa.5.111.i59 = phi ptr [ %.sroa.5.0.i47, %.lr.ph.i57 ], [ %i.cl, %bb.v ] ; 4 uses
  %.sroa.11.110.i60 = phi i64 [ %.sroa.11.0.i46, %.lr.ph.i57 ], [ %i.ck, %bb.v ] ; 2 uses
  %.sroa.19.19.i61 = phi ptr [ %.sroa.19.0.i45, %.lr.ph.i57 ], [ %i.ch, %bb.v ]
  %.val.i62 = load i64, ptr %.sroa.5.111.i59, align 8, !dbg !92865, !alias.scope !92774, !noundef !2595 ; 2 uses
  %i.cc = getelementptr i8, ptr %.sroa.5.111.i59, i64 8, !dbg !92865
  %.val12.i63 = load i32, ptr %i.cc, align 8, !dbg !92865, !range !3127, !alias.scope !92774, !noundef !2595
  %.val14.i64 = load i32, ptr %i.by, align 8, !dbg !92865, !range !3127, !alias.scope !92774, !noundef !2595
  %i.cd = icmp eq i64 %.val.i62, %.val13.i58, !dbg !92866
  %i.ce = icmp samesign uge i32 %.val12.i63, %.val14.i64, !dbg !92867
  %i.cf = icmp uge i64 %.val.i62, %.val13.i58, !dbg !92867
  %i.cg = select i1 %i.cd, i1 %i.ce, i1 %i.cf, !dbg !92866 ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %.sroa.19.19.i61, i64 -40, !dbg !92868 ; 3 uses
  %.sroa.01.0.i.i65 = select i1 %i.cg, ptr %2, ptr %i.ch, !dbg !92869
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %.sroa.01.0.i.i65, i64 %.sroa.11.110.i60, !dbg !92870
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ci, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.111.i59, i64 40, i1 false), !dbg !92871, !alias.scope !92775, !noalias !92776
  %i.cj = zext i1 %i.cg to i64, !dbg !92872
  %i.ck = add i64 %.sroa.11.110.i60, %i.cj, !dbg !92873 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i59, i64 40, !dbg !92874 ; 3 uses
  %i.cm = icmp ult ptr %i.cl, %i.bz, !dbg !92863
  br i1 %i.cm, label %bb.v, label %._crit_edge.i49, !dbg !92863

bb.w:                                             ; preds = %._crit_edge.i49
  %i.cn = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i50, i64 -40, !dbg !92875
  %i.co = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i51, !dbg !92876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.co, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.1.lcssa.i52, i64 40, i1 false), !dbg !92877, !alias.scope !92775, !noalias !92777
  %i.cp = add i64 %.sroa.11.1.lcssa.i51, 1, !dbg !92878
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i52, i64 40, !dbg !92879
  br label %bb.u, !dbg !92859

bb.x:                                             ; preds = %._crit_edge.i49
  %i.cr = mul i64 %.sroa.11.1.lcssa.i51, 40, !dbg !92880
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph102, ptr nonnull align 8 %2, i64 %i.cr, i1 false), !dbg !92880, !alias.scope !92775
  %i.cs = sub i64 %.sroa.16.095223, %.sroa.11.1.lcssa.i51, !dbg !92881 ; 6 uses
  %.not18.i53 = icmp eq i64 %.sroa.16.095223, %.sroa.11.1.lcssa.i51, !dbg !92882
  %i.ct = getelementptr [40 x i8], ptr %.sroa.0.0.ph102, i64 %.sroa.11.1.lcssa.i51 ; 4 uses
  br i1 %.not18.i53, label %.outer.thread, label %.lr.ph16.i54.preheader, !dbg !92883

.lr.ph16.i54.preheader:                           ; preds = %bb.x
  %.neg298 = add i64 %.sroa.11.1.lcssa.i51, 1, !dbg !92883
  %xtraiter293 = and i64 %i.cs, 1, !dbg !92883
  %i.cu = icmp eq i64 %.sroa.16.095223, %.neg298, !dbg !92883
  br i1 %i.cu, label %.lr.ph16.i54.epil.preheader, label %.lr.ph16.i54.preheader.new, !dbg !92883

.lr.ph16.i54.preheader.new:                       ; preds = %.lr.ph16.i54.preheader
  %unroll_iter296 = and i64 %i.cs, -2, !dbg !92883
  br label %.lr.ph16.i54, !dbg !92883

.lr.ph16.i54:                                     ; preds = %.lr.ph16.i54, %.lr.ph16.i54.preheader.new
  %.sroa.06.014.i55 = phi i64 [ 0, %.lr.ph16.i54.preheader.new ], [ %i.cy, %.lr.ph16.i54 ] ; 5 uses
  %niter297 = phi i64 [ 0, %.lr.ph16.i54.preheader.new ], [ %niter297.next.1, %.lr.ph16.i54 ]
  %i.cv = xor i64 %.sroa.06.014.i55, -1, !dbg !92884
  %i.cw = getelementptr [40 x i8], ptr %i.bx, i64 %i.cv, !dbg !92885
  %i.cx = getelementptr [40 x i8], ptr %i.ct, i64 %.sroa.06.014.i55, !dbg !92886
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cx, ptr noundef nonnull align 8 dereferenceable(40) %i.cw, i64 40, i1 false), !dbg !92887, !alias.scope !92775
  %i.cy = add nuw i64 %.sroa.06.014.i55, 2, !dbg !92888 ; 2 uses
  %i.cz = xor i64 %.sroa.06.014.i55, -2, !dbg !92884
  %i.da = getelementptr [40 x i8], ptr %i.bx, i64 %i.cz, !dbg !92885
  %i.db = getelementptr [40 x i8], ptr %i.ct, i64 %.sroa.06.014.i55, !dbg !92886
  %i.dc = getelementptr i8, ptr %i.db, i64 40, !dbg !92886
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dc, ptr noundef nonnull align 8 dereferenceable(40) %i.da, i64 40, i1 false), !dbg !92887, !alias.scope !92775
  %niter297.next.1 = add i64 %niter297, 2, !dbg !92883 ; 2 uses
  %niter297.ncmp.1 = icmp eq i64 %niter297.next.1, %unroll_iter296, !dbg !92883
  br i1 %niter297.ncmp.1, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtBa_4time8DurationNtNtCsgZ49sUHp3tW_5alloc6string6StringENCINvB2_9quicksortB1d_NCINvMNtB1D_5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1e_ENCNvMNtCs2g09Ig8GZd6_13polars_stream8skeletonNtB3C_14StreamingQuery7execute0E0E0EB3E_.exit.unr-lcssa, label %.lr.ph16.i54, !dbg !92883

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtBa_4time8DurationNtNtCsgZ49sUHp3tW_5alloc6string6StringENCINvB2_9quicksortB1d_NCINvMNtB1D_5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1e_ENCNvMNtCs2g09Ig8GZd6_13polars_stream8skeletonNtB3C_14StreamingQuery7execute0E0E0EB3E_.exit.unr-lcssa: ; preds = %.lr.ph16.i54
  %lcmp.mod294.not = icmp eq i64 %xtraiter293, 0, !dbg !92883
  br i1 %lcmp.mod294.not, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtBa_4time8DurationNtNtCsgZ49sUHp3tW_5alloc6string6StringENCINvB2_9quicksortB1d_NCINvMNtB1D_5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1e_ENCNvMNtCs2g09Ig8GZd6_13polars_stream8skeletonNtB3C_14StreamingQuery7execute0E0E0EB3E_.exit, label %.lr.ph16.i54.epil.preheader, !dbg !92883

.lr.ph16.i54.epil.preheader:                      ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtBa_4time8DurationNtNtCsgZ49sUHp3tW_5alloc6string6StringENCINvB2_9quicksortB1d_NCINvMNtB1D_5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1e_ENCNvMNtCs2g09Ig8GZd6_13polars_stream8skeletonNtB3C_14StreamingQuery7execute0E0E0EB3E_.exit.unr-lcssa, %.lr.ph16.i54.preheader
  %.sroa.06.014.i55.epil.init = phi i64 [ 0, %.lr.ph16.i54.preheader ], [ %i.cy, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtBa_4time8DurationNtNtCsgZ49sUHp3tW_5alloc6string6StringENCINvB2_9quicksortB1d_NCINvMNtB1D_5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1e_ENCNvMNtCs2g09Ig8GZd6_13polars_stream8skeletonNtB3C_14StreamingQuery7execute0E0E0EB3E_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod295 = trunc i64 %i.cs to i1, !dbg !92883
  call void @llvm.assume(i1 %lcmp.mod295), !dbg !92883
  %i.dd = xor i64 %.sroa.06.014.i55.epil.init, -1, !dbg !92884
  %i.de = getelementptr [40 x i8], ptr %i.bx, i64 %i.dd, !dbg !92885
  %i.df = getelementptr [40 x i8], ptr %i.ct, i64 %.sroa.06.014.i55.epil.init, !dbg !92886
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.df, ptr noundef nonnull align 8 dereferenceable(40) %i.de, i64 40, i1 false), !dbg !92887, !alias.scope !92775
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtBa_4time8DurationNtNtCsgZ49sUHp3tW_5alloc6string6StringENCINvB2_9quicksortB1d_NCINvMNtB1D_5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1e_ENCNvMNtCs2g09Ig8GZd6_13polars_stream8skeletonNtB3C_14StreamingQuery7execute0E0E0EB3E_.exit, !dbg !92889

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtBa_4time8DurationNtNtCsgZ49sUHp3tW_5alloc6string6StringENCINvB2_9quicksortB1d_NCINvMNtB1D_5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1e_ENCNvMNtCs2g09Ig8GZd6_13polars_stream8skeletonNtB3C_14StreamingQuery7execute0E0E0EB3E_.exit: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtBa_4time8DurationNtNtCsgZ49sUHp3tW_5alloc6string6StringENCINvB2_9quicksortB1d_NCINvMNtB1D_5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1e_ENCNvMNtCs2g09Ig8GZd6_13polars_stream8skeletonNtB3C_14StreamingQuery7execute0E0E0EB3E_.exit.unr-lcssa, %.lr.ph16.i54.epil.preheader
  %i.dg = icmp ugt i64 %.sroa.11.1.lcssa.i51, %.sroa.16.095223, !dbg !92889
  br i1 %i.dg, label %bb.y, label %.outer, !dbg !92889, !prof !2619

.outer.thread:                                    ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !92855
  br label %.outer._crit_edge, !dbg !92782

.outer:                                           ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtBa_4time8DurationNtNtCsgZ49sUHp3tW_5alloc6string6StringENCINvB2_9quicksortB1d_NCINvMNtB1D_5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1e_ENCNvMNtCs2g09Ig8GZd6_13polars_stream8skeletonNtB3C_14StreamingQuery7execute0E0E0EB3E_.exit
  %i.dh = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph102, i64 %.sroa.11.1.lcssa.i51, !dbg !92890 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !92855
  %i.di = icmp ult i64 %i.cs, 33, !dbg !92782
  br i1 %i.di, label %.outer._crit_edge, label %.lr.ph, !dbg !92782

bb.y:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtBa_4time8DurationNtNtCsgZ49sUHp3tW_5alloc6string6StringENCINvB2_9quicksortB1d_NCINvMNtB1D_5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1e_ENCNvMNtCs2g09Ig8GZd6_13polars_stream8skeletonNtB3C_14StreamingQuery7execute0E0E0EB3E_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i51, i64 noundef %.sroa.16.095223, i64 noundef %.sroa.16.095223, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @217) #41, !dbg !92891
  unreachable, !dbg !92891
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2d_11collections5btree3mapINtB30_8BTreeMapjB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB40_8adapters3map3MapINtB30_4IterjB17_ENCINvMNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins5utilsNtB5I_21DataFrameSearchBuffer6selectINtNtB4X_5chain5ChainINtNtB8_4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtBa_5array4iter8IntoIterRB7M_Kj1_EEB96_Es_0EE0E0EB5O_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %4, ptr nofree noundef readonly align 8 captures(address) %5, ptr noalias noundef align 8 dereferenceable(8) %6) unnamed_addr #5 !dbg !92892 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 17, !dbg !93088
  br i1 %i.a, label %.outer._crit_edge, label %.lr.ph, !dbg !93088

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph97 = phi ptr [ %i.cg, %.outer ], [ %0, %bb.a ] ; 20 uses
  %.sroa.16.0.ph96 = phi i64 [ %i.br, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph95 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph94 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.b = ptrtoint ptr %.sroa.0.0.ph97 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph94, null
  %i.c = icmp eq i32 %.sroa.025.0.ph95, 0, !dbg !93089
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph222, !dbg !93089

bb.b:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit
  %i.d = icmp eq i32 %i.f, 0, !dbg !93089
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph222, !dbg !93089

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit, %bb.a
  %.sroa.0.0.ph.lcssa88 = phi ptr [ %.sroa.0.0.ph97, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit ], [ %0, %bb.a ], [ %i.cg, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit ], [ %1, %bb.a ], [ %i.br, %.outer ] ; 2 uses
  %i.e = icmp samesign ugt i64 %.sroa.16.0.lcssa, 1, !dbg !93090
  br i1 %i.e, label %bb.c, label %_RINvXNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsortTjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB2K_11collections5btree3mapINtB3w_8BTreeMapjBY_EINtNtNtNtBb_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB4v_8adapters3map3MapINtB3w_4IterjBY_ENCINvMNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins5utilsNtB6b_21DataFrameSearchBuffer6selectINtNtB5r_5chain5ChainINtNtB9_4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtBb_5array4iter8IntoIterRB8f_Kj1_EEB9z_Es_0EE0E0EB6h_.exit, !dbg !93090

bb.c:                                             ; preds = %.outer._crit_edge
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1m_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapjB1o_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1m_E9from_iterINtNtNtB4h_8adapters3map3MapINtB3h_4IterjB1o_ENCINvMNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins5utilsNtB5Z_21DataFrameSearchBuffer6selectINtNtB5e_5chain5ChainINtNtB8_4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtBa_5array4iter8IntoIterRB83_Kj1_EEB9n_Es_0EE0E0EB65_(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph.lcssa88, i64 noundef range(i64 0, 17) %.sroa.16.0.lcssa, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %6), !dbg !93091
  br label %_RINvXNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsortTjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB2K_11collections5btree3mapINtB3w_8BTreeMapjBY_EINtNtNtNtBb_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB4v_8adapters3map3MapINtB3w_4IterjBY_ENCINvMNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins5utilsNtB6b_21DataFrameSearchBuffer6selectINtNtB5r_5chain5ChainINtNtB9_4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtBb_5array4iter8IntoIterRB8f_Kj1_EEB9z_Es_0EE0E0EB6h_.exit, !dbg !93091

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.090.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph96, %.lr.ph ]
  tail call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift4sortTjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB24_11collections5btree3mapINtB2Q_8BTreeMapjBY_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2Q_4IterjBY_ENCINvMNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins5utilsNtB5v_21DataFrameSearchBuffer6selectINtNtB4L_5chain5ChainINtNtB8_4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtBa_5array4iter8IntoIterRB7z_Kj1_EEB8T_Es_0EE0E0EB5B_(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph97, i64 noundef %.sroa.16.090.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %6), !dbg !93092
  br label %_RINvXNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsortTjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB2K_11collections5btree3mapINtB3w_8BTreeMapjBY_EINtNtNtNtBb_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB4v_8adapters3map3MapINtB3w_4IterjBY_ENCINvMNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins5utilsNtB6b_21DataFrameSearchBuffer6selectINtNtB5r_5chain5ChainINtNtB9_4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtBb_5array4iter8IntoIterRB8f_Kj1_EEB9z_Es_0EE0E0EB6h_.exit, !dbg !93093

.lr.ph222:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.089221 = phi i32 [ %i.f, %bb.b ], [ %.sroa.025.0.ph95, %.lr.ph ]
  %.sroa.16.090220 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph96, %.lr.ph ] ; 21 uses
  %i.f = add i32 %.sroa.025.089221, -1, !dbg !93094 ; 4 uses
  %i.g = lshr i64 %.sroa.16.090220, 3, !dbg !93095 ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.g, 224, !dbg !93096
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph97, i64 %.idx.i, !dbg !93096 ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 392, !dbg !93097
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph97, i64 %.idx2.i, !dbg !93097 ; 3 uses
  %i.j = icmp samesign ult i64 %.sroa.16.090220, 64, !dbg !93098
  br i1 %i.j, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB27_11collections5btree3mapINtB2T_8BTreeMapjB11_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB3T_8adapters3map3MapINtB2T_4IterjB11_ENCINvMNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins5utilsNtB5A_21DataFrameSearchBuffer6selectINtNtB4P_5chain5ChainINtNtB8_4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtBa_5array4iter8IntoIterRB7E_Kj1_EEB8Y_Es_0EE0E0EB5G_.exit.i, label %bb.d, !dbg !93098

bb.d:                                             ; preds = %.lr.ph222
  %i.k = tail call noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recTjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB14_7sort_byNCINvXs1o_NtNtNtB2c_11collections5btree3mapINtB2Z_8BTreeMapjB16_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB3Z_8adapters3map3MapINtB2Z_4IterjB16_ENCINvMNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins5utilsNtB5H_21DataFrameSearchBuffer6selectINtNtB4W_5chain5ChainINtNtB8_4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtBa_5array4iter8IntoIterRB7L_Kj1_EEB95_Es_0EE0E0EB5N_(ptr noundef nonnull align 8 %.sroa.0.0.ph97, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i64 noundef %i.g, ptr noalias noundef nonnull align 8 dereferenceable(8) %6), !dbg !93099
  br label %bb.e, !dbg !93100

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB27_11collections5btree3mapINtB2T_8BTreeMapjB11_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB3T_8adapters3map3MapINtB2T_4IterjB11_ENCINvMNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins5utilsNtB5A_21DataFrameSearchBuffer6selectINtNtB4P_5chain5ChainINtNtB8_4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtBa_5array4iter8IntoIterRB7E_Kj1_EEB8Y_Es_0EE0E0EB5G_.exit.i: ; preds = %.lr.ph222
  %.val6.i = load i64, ptr %.sroa.0.0.ph97, align 8, !dbg !93101, !noalias !93071, !noundef !2595 ; 2 uses
  %.val7.i = load i64, ptr %i.h, align 8, !dbg !93101, !noalias !93071, !noundef !2595 ; 2 uses
  %i.l = icmp ult i64 %.val6.i, %.val7.i, !dbg !93102 ; 2 uses
  %.val5.i = load i64, ptr %i.i, align 8, !dbg !93103, !noalias !93071, !noundef !2595 ; 2 uses
  %i.m = icmp ult i64 %.val6.i, %.val5.i, !dbg !93104
  %i.n = xor i1 %i.l, %i.m, !dbg !93105
  %i.o = icmp ult i64 %.val7.i, %.val5.i, !dbg !93105
  %i.p = xor i1 %i.l, %i.o, !dbg !93105
  %..i.i = select i1 %i.p, ptr %i.i, ptr %i.h, !dbg !93105
  %.sroa.0.0.i.i = select i1 %i.n, ptr %.sroa.0.0.ph97, ptr %..i.i, !dbg !93105
  br label %bb.e, !dbg !93100

_RINvXNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsortTjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB2K_11collections5btree3mapINtB3w_8BTreeMapjBY_EINtNtNtNtBb_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB4v_8adapters3map3MapINtB3w_4IterjBY_ENCINvMNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins5utilsNtB6b_21DataFrameSearchBuffer6selectINtNtB5r_5chain5ChainINtNtB9_4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtBb_5array4iter8IntoIterRB8f_Kj1_EEB9z_Es_0EE0E0EB6h_.exit: ; preds = %bb.v, %bb.c, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void, !dbg !93106

bb.e:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB27_11collections5btree3mapINtB2T_8BTreeMapjB11_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB3T_8adapters3map3MapINtB2T_4IterjB11_ENCINvMNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins5utilsNtB5A_21DataFrameSearchBuffer6selectINtNtB4P_5chain5ChainINtNtB8_4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtBa_5array4iter8IntoIterRB7E_Kj1_EEB8Y_Es_0EE0E0EB5G_.exit.i, %bb.d
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB27_11collections5btree3mapINtB2T_8BTreeMapjB11_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB3T_8adapters3map3MapINtB2T_4IterjB11_ENCINvMNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins5utilsNtB5A_21DataFrameSearchBuffer6selectINtNtB4P_5chain5ChainINtNtB8_4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtBa_5array4iter8IntoIterRB7E_Kj1_EEB8Y_Es_0EE0E0EB5G_.exit.i ], [ %i.k, %bb.d ]
  %i.q = ptrtoint ptr %.sroa.0.0.i.sink.i to i64, !dbg !93107
  %i.r = sub nuw i64 %i.q, %i.b, !dbg !93107      ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.r, 56, !dbg !93107 ; 3 uses
  %i.s = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.090220, !dbg !93108
  tail call void @llvm.assume(i1 %i.s), !dbg !93109
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph97, i64 %i.r, !dbg !93110 ; 5 uses
  br i1 %.not, label %bb.g, label %bb.f, !dbg !93111

bb.f:                                             ; preds = %bb.e
  %.sroa.028.0.val = load i64, ptr %.sroa.028.0.ph94, align 8, !dbg !93112, !noundef !2595
  %.val = load i64, ptr %i.t, align 8, !dbg !93112, !noundef !2595
  %i.u = icmp ult i64 %.sroa.028.0.val, %.val, !dbg !93113
  br i1 %i.u, label %bb.g, label %.thread, !dbg !93114

bb.g:                                             ; preds = %bb.e, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93072), !dbg !93115
  %.not64 = icmp samesign ult i64 %3, %.sroa.16.090220, !dbg !93116
  br i1 %.not64, label %bb.i, label %bb.h, !dbg !93116, !prof !3155

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr [56 x i8], ptr %2, i64 %.sroa.16.090220, !dbg !93117 ; 4 uses
  br label %bb.j, !dbg !93118

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.trap(), !dbg !93119
  unreachable, !dbg !93119

bb.j:                                             ; preds = %bb.l, %bb.h
  %.sroa.19.0.i = phi ptr [ %i.v, %bb.h ], [ %i.ag, %bb.l ], !dbg !93120 ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.h ], [ %.sroa.11.1.lcssa.i, %bb.l ], !dbg !93120 ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph97, %bb.h ], [ %i.ai, %bb.l ], !dbg !93120 ; 3 uses
  %.sroa.05.0.i = phi ptr [ null, %bb.h ], [ %i.ah, %bb.l ], !dbg !93121
  %.sroa.0.0.i37 = phi i64 [ %.sroa.0.0.i, %bb.h ], [ %.sroa.16.090220, %bb.l ] ; 2 uses
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph97, i64 %.sroa.0.0.i37, !dbg !93122 ; 2 uses
  %i.x = icmp ult ptr %.sroa.5.0.i, %i.w, !dbg !93123
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i, !dbg !93123

.lr.ph.i:                                         ; preds = %bb.j
  %.val12.i = load i64, ptr %i.t, align 8, !alias.scope !93073, !noundef !2595
  br label %bb.k, !dbg !93123

._crit_edge.i:                                    ; preds = %bb.k, %bb.j
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.j ], [ %i.aa, %bb.k ], !dbg !93120
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2d_11collections5btree3mapINtB30_8BTreeMapjB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB40_8adapters3map3MapINtB30_4IterjB17_ENCINvMNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins5utilsNtB5I_21DataFrameSearchBuffer6selectINtNtB4X_5chain5ChainINtNtB8_4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtBa_5array4iter8IntoIterRB7M_Kj1_EEB96_Es_0EE0E0EB5O_:bb.a
  %i.bu = xor i64 %.sroa.06.014.i52, -1, !dbg !93183
  %i.bv = getelementptr [56 x i8], ptr %i.bb, i64 %i.bu, !dbg !93184
  %i.bw = getelementptr [56 x i8], ptr %i.bs, i64 %.sroa.06.014.i52, !dbg !93185
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bw, ptr noundef nonnull align 8 dereferenceable(56) %i.bv, i64 56, i1 false), !dbg !93186, !alias.scope !93081
  %i.bx = add nuw i64 %.sroa.06.014.i52, 2, !dbg !93187 ; 2 uses
  %i.by = xor i64 %.sroa.06.014.i52, -2, !dbg !93183
  %i.bz = getelementptr [56 x i8], ptr %i.bb, i64 %i.by, !dbg !93184
  %i.ca = getelementptr [56 x i8], ptr %i.bs, i64 %.sroa.06.014.i52, !dbg !93185
  %i.cb = getelementptr i8, ptr %i.ca, i64 56, !dbg !93185
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cb, ptr noundef nonnull align 8 dereferenceable(56) %i.bz, i64 56, i1 false), !dbg !93186, !alias.scope !93081
  %niter292.next.1 = add i64 %niter292, 2, !dbg !93182 ; 2 uses
  %niter292.ncmp.1 = icmp eq i64 %niter292.next.1, %unroll_iter291, !dbg !93182
  br i1 %niter292.ncmp.1, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapjB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4u_8adapters3map3MapINtB3u_4IterjB1f_ENCINvMNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins5utilsNtB6c_21DataFrameSearchBuffer6selectINtNtB5r_5chain5ChainINtNtB8_4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtBa_5array4iter8IntoIterRB8g_Kj1_EEB9A_Es_0EE0E0E0EB6i_.exit.unr-lcssa, label %bb.w, !dbg !93182

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapjB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4u_8adapters3map3MapINtB3u_4IterjB1f_ENCINvMNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins5utilsNtB6c_21DataFrameSearchBuffer6selectINtNtB5r_5chain5ChainINtNtB8_4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtBa_5array4iter8IntoIterRB8g_Kj1_EEB9A_Es_0EE0E0E0EB6i_.exit.unr-lcssa: ; preds = %bb.w
  %lcmp.mod289.not = icmp eq i64 %xtraiter288, 0, !dbg !93182
  br i1 %lcmp.mod289.not, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapjB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4u_8adapters3map3MapINtB3u_4IterjB1f_ENCINvMNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins5utilsNtB6c_21DataFrameSearchBuffer6selectINtNtB5r_5chain5ChainINtNtB8_4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtBa_5array4iter8IntoIterRB8g_Kj1_EEB9A_Es_0EE0E0E0EB6i_.exit, label %.epil.preheader281, !dbg !93182

.epil.preheader281:                               ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapjB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4u_8adapters3map3MapINtB3u_4IterjB1f_ENCINvMNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins5utilsNtB6c_21DataFrameSearchBuffer6selectINtNtB5r_5chain5ChainINtNtB8_4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtBa_5array4iter8IntoIterRB8g_Kj1_EEB9A_Es_0EE0E0E0EB6i_.exit.unr-lcssa, %.lr.ph16.i51
  %.sroa.06.014.i52.epil.init = phi i64 [ 0, %.lr.ph16.i51 ], [ %i.bx, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapjB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4u_8adapters3map3MapINtB3u_4IterjB1f_ENCINvMNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins5utilsNtB6c_21DataFrameSearchBuffer6selectINtNtB5r_5chain5ChainINtNtB8_4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtBa_5array4iter8IntoIterRB8g_Kj1_EEB9A_Es_0EE0E0E0EB6i_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod290 = trunc i64 %i.br to i1, !dbg !93182
  tail call void @llvm.assume(i1 %lcmp.mod290), !dbg !93182
  %i.cc = xor i64 %.sroa.06.014.i52.epil.init, -1, !dbg !93183
  %i.cd = getelementptr [56 x i8], ptr %i.bb, i64 %i.cc, !dbg !93184
  %i.ce = getelementptr [56 x i8], ptr %i.bs, i64 %.sroa.06.014.i52.epil.init, !dbg !93185
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ce, ptr noundef nonnull align 8 dereferenceable(56) %i.cd, i64 56, i1 false), !dbg !93186, !alias.scope !93081
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapjB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4u_8adapters3map3MapINtB3u_4IterjB1f_ENCINvMNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins5utilsNtB6c_21DataFrameSearchBuffer6selectINtNtB5r_5chain5ChainINtNtB8_4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtBa_5array4iter8IntoIterRB8g_Kj1_EEB9A_Es_0EE0E0E0EB6i_.exit, !dbg !93188

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapjB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4u_8adapters3map3MapINtB3u_4IterjB1f_ENCINvMNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins5utilsNtB6c_21DataFrameSearchBuffer6selectINtNtB5r_5chain5ChainINtNtB8_4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtBa_5array4iter8IntoIterRB8g_Kj1_EEB9A_Es_0EE0E0E0EB6i_.exit: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapjB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4u_8adapters3map3MapINtB3u_4IterjB1f_ENCINvMNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins5utilsNtB6c_21DataFrameSearchBuffer6selectINtNtB5r_5chain5ChainINtNtB8_4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtBa_5array4iter8IntoIterRB8g_Kj1_EEB9A_Es_0EE0E0E0EB6i_.exit.unr-lcssa, %.epil.preheader281
  %i.cf = icmp ugt i64 %.sroa.11.1.lcssa.i48, %.sroa.16.090220, !dbg !93188
  br i1 %i.cf, label %bb.x, label %.outer, !dbg !93188, !prof !2619

.outer:                                           ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapjB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4u_8adapters3map3MapINtB3u_4IterjB1f_ENCINvMNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins5utilsNtB6c_21DataFrameSearchBuffer6selectINtNtB5r_5chain5ChainINtNtB8_4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtBa_5array4iter8IntoIterRB8g_Kj1_EEB9A_Es_0EE0E0E0EB6i_.exit
  %i.cg = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph97, i64 %.sroa.11.1.lcssa.i48, !dbg !93189 ; 2 uses
  %i.ch = icmp ult i64 %i.br, 17, !dbg !93088
  br i1 %i.ch, label %.outer._crit_edge, label %.lr.ph, !dbg !93088

bb.x:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapjB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4u_8adapters3map3MapINtB3u_4IterjB1f_ENCINvMNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins5utilsNtB6c_21DataFrameSearchBuffer6selectINtNtB5r_5chain5ChainINtNtB8_4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtBa_5array4iter8IntoIterRB8g_Kj1_EEB9A_Es_0EE0E0E0EB6i_.exit
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i48, i64 noundef %.sroa.16.090220, i64 noundef %.sroa.16.090220, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @217) #41, !dbg !93190
  unreachable, !dbg !93190
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmmmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB29_10ProbeState17ordered_unmatcheds_0E0EB2f_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 768614336404564651) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 768614336404564651) %3, i32 noundef %4, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(12) %5, ptr noalias noundef align 8 dereferenceable(8) %6) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !93191 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33, !dbg !93478
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph, !dbg !93478

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph119 = phi ptr [ %i.ek, %.outer ], [ %0, %bb.a ] ; 22 uses
  %.sroa.16.0.ph118 = phi i64 [ %i.dv, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph117 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph116 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph119 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph116, null
  %i.d = icmp eq i32 %.sroa.025.0.ph117, 0, !dbg !93479
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph264, !dbg !93479

bb.b:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmmmE12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit
  %i.e = icmp eq i32 %i.f, 0, !dbg !93479
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph264, !dbg !93479

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmmmE12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa110 = phi ptr [ %i.dw, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph119, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmmmE12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit ], [ %i.ek, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.27.2.lcssa.i, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmmmE12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit ], [ %i.dv, %.outer ]
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmmmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1s_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB2w_10ProbeState17ordered_unmatcheds_0E0EB2C_(ptr noalias noundef nonnull align 4 %.sroa.0.0.ph.lcssa110, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 768614336404564651) %3, ptr noalias noundef nonnull align 8 dereferenceable(8) %6), !dbg !93480
  br label %bb.d, !dbg !93481

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0112.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph118, %.lr.ph ]
  call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift4sortTmmmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBW_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB1Z_10ProbeState17ordered_unmatcheds_0E0EB25_(ptr noalias noundef nonnull align 4 %.sroa.0.0.ph119, i64 noundef %.sroa.16.0112.lcssa, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %6), !dbg !93482
  br label %bb.d, !dbg !93481

.lr.ph264:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0111263 = phi i32 [ %i.f, %bb.b ], [ %.sroa.025.0.ph117, %.lr.ph ]
  %.sroa.16.0112262 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph118, %.lr.ph ] ; 21 uses
  %i.f = add i32 %.sroa.025.0111263, -1, !dbg !93483 ; 4 uses
  %i.g = lshr i64 %.sroa.16.0112262, 3, !dbg !93484 ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.g, 48, !dbg !93485
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph119, i64 %.idx.i, !dbg !93485 ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 84, !dbg !93486
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph119, i64 %.idx2.i, !dbg !93486 ; 3 uses
  %i.j = icmp samesign ult i64 %.sroa.16.0112262, 64, !dbg !93487
  br i1 %i.j, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmmmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBZ_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB22_10ProbeState17ordered_unmatcheds_0E0EB28_.exit.i, label %bb.c, !dbg !93487

bb.c:                                             ; preds = %.lr.ph264
  %i.k = call noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recTmmmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB14_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB28_10ProbeState17ordered_unmatcheds_0E0EB2e_(ptr noundef nonnull readonly align 4 %.sroa.0.0.ph119, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.i, i64 noundef %i.g, ptr noalias noundef nonnull align 8 dereferenceable(8) %6), !dbg !93488
  br label %bb.e, !dbg !93489

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmmmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBZ_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB22_10ProbeState17ordered_unmatcheds_0E0EB28_.exit.i: ; preds = %.lr.ph264
  %.val6.i = load i32, ptr %.sroa.0.0.ph119, align 4, !dbg !93490, !alias.scope !93452, !noundef !2595 ; 2 uses
  %.val7.i = load i32, ptr %i.h, align 4, !dbg !93490, !alias.scope !93452, !noundef !2595 ; 2 uses
  %i.l = icmp ult i32 %.val6.i, %.val7.i, !dbg !93491 ; 2 uses
  %.val5.i = load i32, ptr %i.i, align 4, !dbg !93492, !alias.scope !93452, !noundef !2595 ; 2 uses
  %i.m = icmp ult i32 %.val6.i, %.val5.i, !dbg !93493
  %i.n = xor i1 %i.l, %i.m, !dbg !93494
  %i.o = icmp ult i32 %.val7.i, %.val5.i, !dbg !93494
  %i.p = xor i1 %i.l, %i.o, !dbg !93494
  %..i.i = select i1 %i.p, ptr %i.i, ptr %i.h, !dbg !93494
  %.sroa.0.0.i.i = select i1 %i.n, ptr %.sroa.0.0.ph119, ptr %..i.i, !dbg !93494
  br label %bb.e, !dbg !93489

bb.d:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void, !dbg !93495

bb.e:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmmmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBZ_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB22_10ProbeState17ordered_unmatcheds_0E0EB28_.exit.i, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmmmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBZ_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB22_10ProbeState17ordered_unmatcheds_0E0EB28_.exit.i ], [ %i.k, %bb.c ]
  %i.q = ptrtoint ptr %.sroa.0.0.i.sink.i to i64, !dbg !93496
  %i.r = sub nuw i64 %i.q, %i.c, !dbg !93496      ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.r, 12, !dbg !93496 ; 3 uses
  %i.s = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0112262, !dbg !93497
  call void @llvm.assume(i1 %i.s), !dbg !93498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !93499
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph119, i64 %i.r, !dbg !93500 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.t, i64 12, i1 false), !dbg !93501
  br i1 %.not, label %bb.g, label %bb.f, !dbg !93502

bb.f:                                             ; preds = %bb.e
  %.sroa.028.0.val = load i32, ptr %.sroa.028.0.ph116, align 4, !dbg !93503, !noundef !2595
  %.val = load i32, ptr %i.t, align 4, !dbg !93503, !noundef !2595
  %i.u = icmp ult i32 %.sroa.028.0.val, %.val, !dbg !93504
  br i1 %i.u, label %bb.g, label %.thread, !dbg !93505

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !93454), !dbg !93506
  %.not80 = icmp samesign ult i64 %3, %.sroa.16.0112262, !dbg !93507
  br i1 %.not80, label %bb.i, label %bb.h, !dbg !93507, !prof !3155

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr [12 x i8], ptr %2, i64 %.sroa.16.0112262, !dbg !93508 ; 4 uses
  br label %bb.j, !dbg !93509

bb.i:                                             ; preds = %bb.g
  call void @llvm.trap(), !dbg !93510
  unreachable, !dbg !93510

bb.j:                                             ; preds = %bb.l, %bb.h
  %.sroa.43.0.i = phi ptr [ %i.v, %bb.h ], [ %i.bi, %bb.l ], !dbg !93511 ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.h ], [ %.sroa.27.2.lcssa.i, %bb.l ], !dbg !93511 ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph119, %bb.h ], [ %i.bk, %bb.l ], !dbg !93511 ; 3 uses
  %.sroa.0.0.i37 = phi i64 [ %.sroa.0.0.i, %bb.h ], [ %.sroa.16.0112262, %bb.l ] ; 3 uses
  %i.w = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i37, i64 3), !dbg !93512
  %i.x = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.ph119, i64 %i.w, !dbg !93513 ; 2 uses
  %i.y = icmp ult ptr %.sroa.9.0.i, %i.x, !dbg !93514
  br i1 %i.y, label %.lr.ph.i, label %._crit_edge.i, !dbg !93514

.lr.ph.i:                                         ; preds = %bb.j
  %.val23.i = load i32, ptr %i.t, align 4, !alias.scope !93455, !noundef !2595 ; 4 uses
  br label %bb.k, !dbg !93514

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.sroa.9.131.i = phi ptr [ %.sroa.9.0.i, %.lr.ph.i ], [ %i.aw, %bb.k ] ; 6 uses
  %.sroa.27.130.i = phi i64 [ %.sroa.27.0.i, %.lr.ph.i ], [ %i.av, %bb.k ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %.sroa.43.0.i, %.lr.ph.i ], [ %i.as, %bb.k ] ; 4 uses
  %.val22.i = load i32, ptr %.sroa.9.131.i, align 4, !dbg !93515, !alias.scope !93455, !noundef !2595
  %i.z = icmp ult i32 %.val22.i, %.val23.i, !dbg !93516 ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -12, !dbg !93517
  %.sroa.01.0.i.i = select i1 %i.z, ptr %2, ptr %i.aa, !dbg !93518
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i, !dbg !93519
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ab, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.131.i, i64 12, i1 false), !dbg !93520, !alias.scope !93456, !noalias !93457
  %i.ac = zext i1 %i.z to i64, !dbg !93521
  %i.ad = add i64 %.sroa.27.130.i, %i.ac, !dbg !93522 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 12, !dbg !93523 ; 2 uses
  %.val20.i = load i32, ptr %i.ae, align 4, !dbg !93524, !alias.scope !93455, !noundef !2595
  %i.af = icmp ult i32 %.val20.i, %.val23.i, !dbg !93525 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -24, !dbg !93526
  %.sroa.01.0.i24.i = select i1 %i.af, ptr %2, ptr %i.ag, !dbg !93527
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %.sroa.01.0.i24.i, i64 %i.ad, !dbg !93528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ah, ptr noundef nonnull align 4 dereferenceable(12) %i.ae, i64 12, i1 false), !dbg !93529, !alias.scope !93456, !noalias !93458
  %i.ai = zext i1 %i.af to i64, !dbg !93530
  %i.aj = add i64 %i.ad, %i.ai, !dbg !93531       ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 24, !dbg !93532 ; 2 uses
  %.val18.i = load i32, ptr %i.ak, align 4, !dbg !93533, !alias.scope !93455, !noundef !2595
  %i.al = icmp ult i32 %.val18.i, %.val23.i, !dbg !93534 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -36, !dbg !93535
  %.sroa.01.0.i25.i = select i1 %i.al, ptr %2, ptr %i.am, !dbg !93536
  %i.an = getelementptr inbounds nuw [12 x i8], ptr %.sroa.01.0.i25.i, i64 %i.aj, !dbg !93537
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.an, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, i64 12, i1 false), !dbg !93538, !alias.scope !93456, !noalias !93459
  %i.ao = zext i1 %i.al to i64, !dbg !93539
  %i.ap = add i64 %i.aj, %i.ao, !dbg !93540       ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 36, !dbg !93541 ; 2 uses
  %.val16.i = load i32, ptr %i.aq, align 4, !dbg !93542, !alias.scope !93455, !noundef !2595
  %i.ar = icmp ult i32 %.val16.i, %.val23.i, !dbg !93543 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -48, !dbg !93544 ; 3 uses
  %.sroa.01.0.i26.i = select i1 %i.ar, ptr %2, ptr %i.as, !dbg !93545
  %i.at = getelementptr inbounds nuw [12 x i8], ptr %.sroa.01.0.i26.i, i64 %i.ap, !dbg !93546
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.at, ptr noundef nonnull align 4 dereferenceable(12) %i.aq, i64 12, i1 false), !dbg !93547, !alias.scope !93456, !noalias !93460
  %i.au = zext i1 %i.ar to i64, !dbg !93548
  %i.av = add i64 %i.ap, %i.au, !dbg !93549       ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 48, !dbg !93550 ; 3 uses
  %i.ax = icmp ult ptr %i.aw, %i.x, !dbg !93514
  br i1 %i.ax, label %bb.k, label %._crit_edge.i, !dbg !93514

._crit_edge.i:                                    ; preds = %bb.k, %bb.j
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.j ], [ %i.as, %bb.k ], !dbg !93511 ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.j ], [ %i.av, %bb.k ], !dbg !93511 ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.j ], [ %i.aw, %bb.k ], !dbg !93511 ; 3 uses
  %i.ay = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.0.0.i37, !dbg !93551 ; 2 uses
  %i.az = icmp ult ptr %.sroa.9.1.lcssa.i, %i.ay, !dbg !93552
  br i1 %i.az, label %.lr.ph38.i.a, label %._crit_edge39.i, !dbg !93552

._crit_edge39.i:                                  ; preds = %.lr.ph38.i.a, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.bc, %.lr.ph38.i.a ], !dbg !93511
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.bf, %.lr.ph38.i.a ], !dbg !93511 ; 14 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.bg, %.lr.ph38.i.a ], !dbg !93511 ; 2 uses
  %i.ba = icmp eq i64 %.sroa.0.0.i37, %.sroa.16.0112262, !dbg !93553
  br i1 %i.ba, label %bb.m, label %bb.l, !dbg !93553

.lr.ph38.i.a:                                     ; preds = %._crit_edge.i, %.lr.ph38.i.a
  %.sroa.9.236.i = phi ptr [ %i.bg, %.lr.ph38.i.a ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.27.235.i = phi i64 [ %i.bf, %.lr.ph38.i.a ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.bc, %.lr.ph38.i.a ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load i32, ptr %.sroa.9.236.i, align 4, !dbg !93554, !alias.scope !93455, !noundef !2595
  %.val15.i.a = load i32, ptr %i.t, align 4, !dbg !93554, !alias.scope !93455, !noundef !2595
  %i.bb = icmp ult i32 %.val.i, %.val15.i.a, !dbg !93555 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -12, !dbg !93556 ; 3 uses
  %.sroa.01.0.i27.i = select i1 %i.bb, ptr %2, ptr %i.bc, !dbg !93557
  %i.bd = getelementptr inbounds nuw [12 x i8], ptr %.sroa.01.0.i27.i, i64 %.sroa.27.235.i, !dbg !93558
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bd, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.236.i, i64 12, i1 false), !dbg !93559, !alias.scope !93456, !noalias !93461
  %i.be = zext i1 %i.bb to i64, !dbg !93560
  %i.bf = add i64 %.sroa.27.235.i, %i.be, !dbg !93561 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 12, !dbg !93562 ; 3 uses
  %i.bh = icmp ult ptr %i.bg, %i.ay, !dbg !93552
  br i1 %i.bh, label %.lr.ph38.i.a, label %._crit_edge39.i, !dbg !93552

bb.l:                                             ; preds = %._crit_edge39.i
  %i.bi = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -12, !dbg !93563 ; 2 uses
  %i.bj = getelementptr inbounds nuw [12 x i8], ptr %i.bi, i64 %.sroa.27.2.lcssa.i, !dbg !93564
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bj, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.2.lcssa.i, i64 12, i1 false), !dbg !93565, !alias.scope !93456, !noalias !93462
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 12, !dbg !93566
  br label %bb.j, !dbg !93509

bb.m:                                             ; preds = %._crit_edge39.i
  %i.bl = mul i64 %.sroa.27.2.lcssa.i, 12, !dbg !93567
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph119, ptr nonnull align 4 %2, i64 %i.bl, i1 false), !dbg !93567, !alias.scope !93456
  %i.bm = sub i64 %.sroa.16.0112262, %.sroa.27.2.lcssa.i, !dbg !93568 ; 4 uses
  %.not47.i = icmp eq i64 %.sroa.16.0112262, %.sroa.27.2.lcssa.i, !dbg !93569
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i, !dbg !93570

.lr.ph45.i:                                       ; preds = %bb.m
  %i.bn = getelementptr [12 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.27.2.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.27.2.lcssa.i, 1, !dbg !93570
  %xtraiter = and i64 %i.bm, 1, !dbg !93570
  %i.bo = icmp eq i64 %.sroa.16.0112262, %.neg, !dbg !93570
  br i1 %i.bo, label %.epil.preheader, label %.lr.ph45.i.new, !dbg !93570

.lr.ph45.i.new:                                   ; preds = %.lr.ph45.i
  %unroll_iter = and i64 %i.bm, -2, !dbg !93570
  br label %bb.n, !dbg !93570

bb.n:                                             ; preds = %bb.n, %.lr.ph45.i.new
  %.sroa.07.043.i = phi i64 [ 0, %.lr.ph45.i.new ], [ %i.bs, %bb.n ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph45.i.new ], [ %niter.next.1, %bb.n ]
  %i.bp = xor i64 %.sroa.07.043.i, -1, !dbg !93571
  %i.bq = getelementptr [12 x i8], ptr %i.v, i64 %i.bp, !dbg !93572
  %i.br = getelementptr [12 x i8], ptr %i.bn, i64 %.sroa.07.043.i, !dbg !93573
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.br, ptr noundef nonnull align 4 dereferenceable(12) %i.bq, i64 12, i1 false), !dbg !93574, !alias.scope !93456
  %i.bs = add nuw i64 %.sroa.07.043.i, 2, !dbg !93575 ; 2 uses
  %i.bt = xor i64 %.sroa.07.043.i, -2, !dbg !93571
  %i.bu = getelementptr [12 x i8], ptr %i.v, i64 %i.bt, !dbg !93572
  %i.bv = getelementptr [12 x i8], ptr %i.bn, i64 %.sroa.07.043.i, !dbg !93573
  %i.bw = getelementptr i8, ptr %i.bv, i64 12, !dbg !93573
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bw, ptr noundef nonnull align 4 dereferenceable(12) %i.bu, i64 12, i1 false), !dbg !93574, !alias.scope !93456
  %niter.next.1 = add i64 %niter, 2, !dbg !93570  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !93570
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.n, !dbg !93570

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !93570
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader, !dbg !93570

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph45.i
  %.sroa.07.043.i.epil.init = phi i64 [ 0, %.lr.ph45.i ], [ %i.bs, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod331 = trunc i64 %i.bm to i1, !dbg !93570
  call void @llvm.assume(i1 %lcmp.mod331), !dbg !93570
  %i.bx = xor i64 %.sroa.07.043.i.epil.init, -1, !dbg !93571
  %i.by = getelementptr [12 x i8], ptr %i.v, i64 %i.bx, !dbg !93572
  %i.bz = getelementptr [12 x i8], ptr %i.bn, i64 %.sroa.07.043.i.epil.init, !dbg !93573
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bz, ptr noundef nonnull align 4 dereferenceable(12) %i.by, i64 12, i1 false), !dbg !93574, !alias.scope !93456
  br label %.loopexit, !dbg !93576

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.m
  %i.ca = icmp eq i64 %.sroa.27.2.lcssa.i, 0, !dbg !93576
  br i1 %i.ca, label %.thread, label %bb.o, !dbg !93577

bb.o:                                             ; preds = %.loopexit
  %.not.i38 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0112262, !dbg !93578
  br i1 %.not.i38, label %bb.p, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmmmE12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit, !dbg !93578, !prof !2619

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @276, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @216) #41, !dbg !93579, !noalias !93464
  unreachable, !dbg !93579

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmmmE12split_at_mutCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.27.2.lcssa.i, !dbg !93580
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph119) ]
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmmmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB29_10ProbeState17ordered_unmatcheds_0E0EB2f_(ptr noalias noundef nonnull align 4 %i.cb, i64 noundef %i.bm, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.f, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(12) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %6) #39, !dbg !93581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !93582
  %i.cc = icmp ult i64 %.sroa.27.2.lcssa.i, 33, !dbg !93478
  br i1 %i.cc, label %.outer._crit_edge, label %bb.b, !dbg !93478

.thread:                                          ; preds = %bb.f, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !93465), !dbg !93583
  %.not81 = icmp samesign ult i64 %3, %.sroa.16.0112262, !dbg !93584
  br i1 %.not81, label %bb.r, label %bb.q, !dbg !93584, !prof !3155

bb.q:                                             ; preds = %.thread
  %i.cd = getelementptr [12 x i8], ptr %2, i64 %.sroa.16.0112262, !dbg !93585 ; 4 uses
  br label %bb.s, !dbg !93586

bb.r:                                             ; preds = %.thread
  call void @llvm.trap(), !dbg !93587
  unreachable, !dbg !93587

bb.s:                                             ; preds = %bb.u, %bb.q
  %.sroa.43.0.i41 = phi ptr [ %i.cd, %bb.q ], [ %i.dq, %bb.u ], !dbg !93588 ; 2 uses
  %.sroa.27.0.i42 = phi i64 [ 0, %bb.q ], [ %i.ds, %bb.u ], !dbg !93588 ; 2 uses
  %.sroa.9.0.i43 = phi ptr [ %.sroa.0.0.ph119, %bb.q ], [ %i.dt, %bb.u ], !dbg !93588 ; 3 uses
  %.sroa.0.0.i44 = phi i64 [ %.sroa.0.0.i, %bb.q ], [ %.sroa.16.0112262, %bb.u ] ; 3 uses
  %i.ce = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i44, i64 3), !dbg !93589
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.ph119, i64 %i.ce, !dbg !93590 ; 2 uses
  %i.cg = icmp ult ptr %.sroa.9.0.i43, %i.cf, !dbg !93591
  br i1 %i.cg, label %.lr.ph.i64, label %._crit_edge.i45, !dbg !93591

.lr.ph.i64:                                       ; preds = %bb.s
  %.val23.i65 = load i32, ptr %i.t, align 4, !alias.scope !93466, !noundef !2595 ; 4 uses
  br label %bb.t, !dbg !93591

bb.t:                                             ; preds = %bb.t, %.lr.ph.i64
  %.sroa.9.131.i66 = phi ptr [ %.sroa.9.0.i43, %.lr.ph.i64 ], [ %i.de, %bb.t ] ; 6 uses
  %.sroa.27.130.i67 = phi i64 [ %.sroa.27.0.i42, %.lr.ph.i64 ], [ %i.dd, %bb.t ] ; 2 uses
  %.sroa.43.129.i68 = phi ptr [ %.sroa.43.0.i41, %.lr.ph.i64 ], [ %i.da, %bb.t ] ; 4 uses
  %.val22.i69 = load i32, ptr %.sroa.9.131.i66, align 4, !dbg !93592, !alias.scope !93466, !noundef !2595
  %i.ch = icmp uge i32 %.val23.i65, %.val22.i69, !dbg !93593 ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -12, !dbg !93594
  %.sroa.01.0.i.i70 = select i1 %i.ch, ptr %2, ptr %i.ci, !dbg !93595
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %.sroa.01.0.i.i70, i64 %.sroa.27.130.i67, !dbg !93596
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cj, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.131.i66, i64 12, i1 false), !dbg !93597, !alias.scope !93467, !noalias !93468
  %i.ck = zext i1 %i.ch to i64, !dbg !93598
  %i.cl = add i64 %.sroa.27.130.i67, %i.ck, !dbg !93599 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 12, !dbg !93600 ; 2 uses
  %.val20.i71 = load i32, ptr %i.cm, align 4, !dbg !93601, !alias.scope !93466, !noundef !2595
  %i.cn = icmp uge i32 %.val23.i65, %.val20.i71, !dbg !93602 ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -24, !dbg !93603
  %.sroa.01.0.i24.i72 = select i1 %i.cn, ptr %2, ptr %i.co, !dbg !93604
  %i.cp = getelementptr inbounds nuw [12 x i8], ptr %.sroa.01.0.i24.i72, i64 %i.cl, !dbg !93605
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cp, ptr noundef nonnull align 4 dereferenceable(12) %i.cm, i64 12, i1 false), !dbg !93606, !alias.scope !93467, !noalias !93469
  %i.cq = zext i1 %i.cn to i64, !dbg !93607
  %i.cr = add i64 %i.cl, %i.cq, !dbg !93608       ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 24, !dbg !93609 ; 2 uses
  %.val18.i73 = load i32, ptr %i.cs, align 4, !dbg !93610, !alias.scope !93466, !noundef !2595
  %i.ct = icmp uge i32 %.val23.i65, %.val18.i73, !dbg !93611 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -36, !dbg !93612
  %.sroa.01.0.i25.i74 = select i1 %i.ct, ptr %2, ptr %i.cu, !dbg !93613
  %i.cv = getelementptr inbounds nuw [12 x i8], ptr %.sroa.01.0.i25.i74, i64 %i.cr, !dbg !93614
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cv, ptr noundef nonnull align 4 dereferenceable(12) %i.cs, i64 12, i1 false), !dbg !93615, !alias.scope !93467, !noalias !93470
  %i.cw = zext i1 %i.ct to i64, !dbg !93616
  %i.cx = add i64 %i.cr, %i.cw, !dbg !93617       ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 36, !dbg !93618 ; 2 uses
  %.val16.i75 = load i32, ptr %i.cy, align 4, !dbg !93619, !alias.scope !93466, !noundef !2595
  %i.cz = icmp uge i32 %.val23.i65, %.val16.i75, !dbg !93620 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -48, !dbg !93621 ; 3 uses
  %.sroa.01.0.i26.i76 = select i1 %i.cz, ptr %2, ptr %i.da, !dbg !93622
  %i.db = getelementptr inbounds nuw [12 x i8], ptr %.sroa.01.0.i26.i76, i64 %i.cx, !dbg !93623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.db, ptr noundef nonnull align 4 dereferenceable(12) %i.cy, i64 12, i1 false), !dbg !93624, !alias.scope !93467, !noalias !93471
  %i.dc = zext i1 %i.cz to i64, !dbg !93625
  %i.dd = add i64 %i.cx, %i.dc, !dbg !93626       ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 48, !dbg !93627 ; 3 uses
  %i.df = icmp ult ptr %i.de, %i.cf, !dbg !93591
  br i1 %i.df, label %bb.t, label %._crit_edge.i45, !dbg !93591

._crit_edge.i45:                                  ; preds = %bb.t, %bb.s
  %.sroa.43.1.lcssa.i46 = phi ptr [ %.sroa.43.0.i41, %bb.s ], [ %i.da, %bb.t ], !dbg !93588 ; 2 uses
  %.sroa.27.1.lcssa.i47 = phi i64 [ %.sroa.27.0.i42, %bb.s ], [ %i.dd, %bb.t ], !dbg !93588 ; 2 uses
  %.sroa.9.1.lcssa.i48 = phi ptr [ %.sroa.9.0.i43, %bb.s ], [ %i.de, %bb.t ], !dbg !93588 ; 3 uses
  %i.dg = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.0.0.i44, !dbg !93628 ; 2 uses
  %i.dh = icmp ult ptr %.sroa.9.1.lcssa.i48, %i.dg, !dbg !93629
  br i1 %i.dh, label %.lr.ph38.i57.a, label %._crit_edge39.i49, !dbg !93629

._crit_edge39.i49:                                ; preds = %.lr.ph38.i57.a, %._crit_edge.i45
  %.sroa.43.2.lcssa.i50 = phi ptr [ %.sroa.43.1.lcssa.i46, %._crit_edge.i45 ], [ %i.dk, %.lr.ph38.i57.a ], !dbg !93588
  %.sroa.27.2.lcssa.i51 = phi i64 [ %.sroa.27.1.lcssa.i47, %._crit_edge.i45 ], [ %i.dn, %.lr.ph38.i57.a ], !dbg !93588 ; 10 uses
  %.sroa.9.2.lcssa.i52 = phi ptr [ %.sroa.9.1.lcssa.i48, %._crit_edge.i45 ], [ %i.do, %.lr.ph38.i57.a ], !dbg !93588 ; 2 uses
  %i.di = icmp eq i64 %.sroa.0.0.i44, %.sroa.16.0112262, !dbg !93630
  br i1 %i.di, label %bb.v, label %bb.u, !dbg !93630

.lr.ph38.i57.a:                                   ; preds = %._crit_edge.i45, %.lr.ph38.i57.a
  %.sroa.9.236.i58 = phi ptr [ %i.do, %.lr.ph38.i57.a ], [ %.sroa.9.1.lcssa.i48, %._crit_edge.i45 ] ; 3 uses
  %.sroa.27.235.i59 = phi i64 [ %i.dn, %.lr.ph38.i57.a ], [ %.sroa.27.1.lcssa.i47, %._crit_edge.i45 ] ; 2 uses
  %.sroa.43.234.i60 = phi ptr [ %i.dk, %.lr.ph38.i57.a ], [ %.sroa.43.1.lcssa.i46, %._crit_edge.i45 ]
  %.val.i61 = load i32, ptr %.sroa.9.236.i58, align 4, !dbg !93631, !alias.scope !93466, !noundef !2595
  %.val15.i62 = load i32, ptr %i.t, align 4, !dbg !93631, !alias.scope !93466, !noundef !2595
  %i.dj = icmp uge i32 %.val15.i62, %.val.i61, !dbg !93632 ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.43.234.i60, i64 -12, !dbg !93633 ; 3 uses
  %.sroa.01.0.i27.i63 = select i1 %i.dj, ptr %2, ptr %i.dk, !dbg !93634
  %i.dl = getelementptr inbounds nuw [12 x i8], ptr %.sroa.01.0.i27.i63, i64 %.sroa.27.235.i59, !dbg !93635
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dl, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.236.i58, i64 12, i1 false), !dbg !93636, !alias.scope !93467, !noalias !93472
  %i.dm = zext i1 %i.dj to i64, !dbg !93637
  %i.dn = add i64 %.sroa.27.235.i59, %i.dm, !dbg !93638 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i58, i64 12, !dbg !93639 ; 3 uses
  %i.dp = icmp ult ptr %i.do, %i.dg, !dbg !93629
  br i1 %i.dp, label %.lr.ph38.i57.a, label %._crit_edge39.i49, !dbg !93629

bb.u:                                             ; preds = %._crit_edge39.i49
  %i.dq = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i50, i64 -12, !dbg !93640
  %i.dr = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i51, !dbg !93641
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dr, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.2.lcssa.i52, i64 12, i1 false), !dbg !93642, !alias.scope !93467, !noalias !93473
  %i.ds = add i64 %.sroa.27.2.lcssa.i51, 1, !dbg !93643
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i52, i64 12, !dbg !93644
  br label %bb.s, !dbg !93586

bb.v:                                             ; preds = %._crit_edge39.i49
  %i.du = mul i64 %.sroa.27.2.lcssa.i51, 12, !dbg !93645
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph119, ptr nonnull align 4 %2, i64 %i.du, i1 false), !dbg !93645, !alias.scope !93467
  %i.dv = sub i64 %.sroa.16.0112262, %.sroa.27.2.lcssa.i51, !dbg !93646 ; 6 uses
  %.not47.i53 = icmp eq i64 %.sroa.16.0112262, %.sroa.27.2.lcssa.i51, !dbg !93647
  %i.dw = getelementptr [12 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.27.2.lcssa.i51 ; 4 uses
  br i1 %.not47.i53, label %.outer.thread, label %.lr.ph45.i54.preheader, !dbg !93648

.lr.ph45.i54.preheader:                           ; preds = %bb.v
  %.neg343 = add i64 %.sroa.27.2.lcssa.i51, 1, !dbg !93648
  %xtraiter338 = and i64 %i.dv, 1, !dbg !93648
  %i.dx = icmp eq i64 %.sroa.16.0112262, %.neg343, !dbg !93648
  br i1 %i.dx, label %.lr.ph45.i54.epil.preheader, label %.lr.ph45.i54.preheader.new, !dbg !93648

.lr.ph45.i54.preheader.new:                       ; preds = %.lr.ph45.i54.preheader
  %unroll_iter341 = and i64 %i.dv, -2, !dbg !93648
  br label %.lr.ph45.i54, !dbg !93648

.lr.ph45.i54:                                     ; preds = %.lr.ph45.i54, %.lr.ph45.i54.preheader.new
  %.sroa.07.043.i55 = phi i64 [ 0, %.lr.ph45.i54.preheader.new ], [ %i.eb, %.lr.ph45.i54 ] ; 5 uses
  %niter342 = phi i64 [ 0, %.lr.ph45.i54.preheader.new ], [ %niter342.next.1, %.lr.ph45.i54 ]
  %i.dy = xor i64 %.sroa.07.043.i55, -1, !dbg !93649
  %i.dz = getelementptr [12 x i8], ptr %i.cd, i64 %i.dy, !dbg !93650
  %i.ea = getelementptr [12 x i8], ptr %i.dw, i64 %.sroa.07.043.i55, !dbg !93651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ea, ptr noundef nonnull align 4 dereferenceable(12) %i.dz, i64 12, i1 false), !dbg !93652, !alias.scope !93467
  %i.eb = add nuw i64 %.sroa.07.043.i55, 2, !dbg !93653 ; 2 uses
  %i.ec = xor i64 %.sroa.07.043.i55, -2, !dbg !93649
  %i.ed = getelementptr [12 x i8], ptr %i.cd, i64 %i.ec, !dbg !93650
  %i.ee = getelementptr [12 x i8], ptr %i.dw, i64 %.sroa.07.043.i55, !dbg !93651
  %i.ef = getelementptr i8, ptr %i.ee, i64 12, !dbg !93651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ef, ptr noundef nonnull align 4 dereferenceable(12) %i.ed, i64 12, i1 false), !dbg !93652, !alias.scope !93467
  %niter342.next.1 = add i64 %niter342, 2, !dbg !93648 ; 2 uses
  %niter342.ncmp.1 = icmp eq i64 %niter342.next.1, %unroll_iter341, !dbg !93648
  br i1 %niter342.ncmp.1, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTmmmENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB2D_10ProbeState17ordered_unmatcheds_0E0E0EB2J_.exit.unr-lcssa, label %.lr.ph45.i54, !dbg !93648

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTmmmENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB2D_10ProbeState17ordered_unmatcheds_0E0E0EB2J_.exit.unr-lcssa: ; preds = %.lr.ph45.i54
  %lcmp.mod339.not = icmp eq i64 %xtraiter338, 0, !dbg !93648
  br i1 %lcmp.mod339.not, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTmmmENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB2D_10ProbeState17ordered_unmatcheds_0E0E0EB2J_.exit, label %.lr.ph45.i54.epil.preheader, !dbg !93648

.lr.ph45.i54.epil.preheader:                      ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTmmmENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB2D_10ProbeState17ordered_unmatcheds_0E0E0EB2J_.exit.unr-lcssa, %.lr.ph45.i54.preheader
  %.sroa.07.043.i55.epil.init = phi i64 [ 0, %.lr.ph45.i54.preheader ], [ %i.eb, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTmmmENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB2D_10ProbeState17ordered_unmatcheds_0E0E0EB2J_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod340 = trunc i64 %i.dv to i1, !dbg !93648
  call void @llvm.assume(i1 %lcmp.mod340), !dbg !93648
  %i.eg = xor i64 %.sroa.07.043.i55.epil.init, -1, !dbg !93649
  %i.eh = getelementptr [12 x i8], ptr %i.cd, i64 %i.eg, !dbg !93650
  %i.ei = getelementptr [12 x i8], ptr %i.dw, i64 %.sroa.07.043.i55.epil.init, !dbg !93651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ei, ptr noundef nonnull align 4 dereferenceable(12) %i.eh, i64 12, i1 false), !dbg !93652, !alias.scope !93467
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTmmmENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB2D_10ProbeState17ordered_unmatcheds_0E0E0EB2J_.exit, !dbg !93654

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTmmmENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB2D_10ProbeState17ordered_unmatcheds_0E0E0EB2J_.exit: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTmmmENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB2D_10ProbeState17ordered_unmatcheds_0E0E0EB2J_.exit.unr-lcssa, %.lr.ph45.i54.epil.preheader
  %i.ej = icmp ugt i64 %.sroa.27.2.lcssa.i51, %.sroa.16.0112262, !dbg !93654
  br i1 %i.ej, label %bb.w, label %.outer, !dbg !93654, !prof !2619

.outer.thread:                                    ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !93582
  br label %.outer._crit_edge, !dbg !93478

.outer:                                           ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTmmmENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB2D_10ProbeState17ordered_unmatcheds_0E0E0EB2J_.exit
  %i.ek = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.27.2.lcssa.i51, !dbg !93655 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !93582
  %i.el = icmp ult i64 %i.dv, 33, !dbg !93478
  br i1 %i.el, label %.outer._crit_edge, label %.lr.ph, !dbg !93478

bb.w:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTmmmENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keymNCNvMs1_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_joinNtB2D_10ProbeState17ordered_unmatcheds_0E0E0EB2J_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i51, i64 noundef %.sroa.16.0112262, i64 noundef %.sroa.16.0112262, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @217) #41, !dbg !93656
  unreachable, !dbg !93656
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB8_8AnyValue10eq_missing17struct_eq_missingINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterBX_ENCNvB2_23struct_owned_value_iter0EB1G_ECs2g09Ig8GZd6_13polars_stream(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !93657 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 9 uses
  %i.b = alloca [48 x i8], align 16               ; 14 uses
  %.sroa.415 = alloca [95 x i8], align 1          ; 5 uses
  %i.c = alloca [48 x i8], align 16               ; 6 uses
  %i.d = alloca [48 x i8], align 16               ; 7 uses
  %.sroa.8 = alloca [95 x i8], align 1            ; 3 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 3 uses
  %i.g = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %1, ptr %i.h, align 8
  store ptr %2, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %3, ptr %i.i, align 8
  %i.j = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENCNvNvMsa_B1o_B1m_10eq_missing23struct_owned_value_iter0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g), !dbg !93781
  %i.k = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENCNvNvMsa_B1o_B1m_10eq_missing23struct_owned_value_iter0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f), !dbg !93782
  %.not = icmp eq i64 %i.j, %i.k, !dbg !93783
  br i1 %.not, label %bb.b, label %bb.ac, !dbg !93783

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !93784
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENCNvNvMsa_B1E_B1C_10eq_missing23struct_owned_value_iter0EBW_EINtB5_7ZipImplBW_BW_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3), !dbg !93785
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !93756, !noundef !2595 ; 2 uses
  %.promoted = load i64, ptr %i.l, align 8, !alias.scope !93756 ; 2 uses
  %i.o = icmp ult i64 %.promoted, %i.n, !dbg !93786
  br i1 %i.o, label %.lr.ph, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENCNvNvMsa_B1z_B1x_10eq_missing23struct_owned_value_iter0EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3x_3all5checkTB1x_B1x_ENCINvB2C_17struct_eq_missingBR_BR_E0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !93786

.lr.ph:                                           ; preds = %bb.b
  %.val1.i.i = load ptr, ptr %i.e, align 8, !alias.scope !93756, !nonnull !2595, !noundef !2595
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val.i.i = load ptr, ptr %i.t, align 8, !nonnull !2595
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.415.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.415, i64 47
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 47
  br label %bb.c, !dbg !93786

bb.c:                                             ; preds = %.lr.ph, %bb.ab
  %i.z = phi i64 [ %.promoted, %.lr.ph ], [ %i.aa, %bb.ab ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93758), !dbg !93787
  call void @llvm.experimental.noalias.scope.decl(metadata !93759), !dbg !93788
  %i.aa = add i64 %i.z, 1, !dbg !93789            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.415), !dbg !93790
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !93791, !noalias !93760
  call void @llvm.experimental.noalias.scope.decl(metadata !93761), !dbg !93792
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %.val1.i.i, i64 %i.z, !dbg !93793 ; 14 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93762), !dbg !93794
  call void @llvm.experimental.noalias.scope.decl(metadata !93763), !dbg !93794
  call void @llvm.experimental.noalias.scope.decl(metadata !93764), !dbg !93795
  call void @llvm.experimental.noalias.scope.decl(metadata !93765), !dbg !93795
  %i.ac = load i8, ptr %i.ab, align 16, !dbg !93796, !range !2666, !alias.scope !93766, !noalias !93767, !noundef !2595
  switch i8 %i.ac, label %bb.d [
    i8 18, label %bb.e
    i8 22, label %bb.f
    i8 24, label %bb.g
    i8 31, label %bb.h
    i8 33, label %bb.k
  ], !dbg !93797

bb.d:                                             ; preds = %bb.c
  call fastcc void @_RNvXsl_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.ab) #40, !dbg !93798, !noalias !93760
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENCNvNvMsa_B1o_B1m_10eq_missing23struct_owned_value_iter0ENtNtNtB9_6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream.exit.i.i, !dbg !93798

bb.e:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !93799
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !93799, !alias.scope !93766, !noalias !93767, !noundef !2595
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 1, !dbg !93800
  %i.ag = load i8, ptr %i.af, align 1, !dbg !93800, !range !2841, !alias.scope !93766, !noalias !93767, !noundef !2595
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16, !dbg !93801
  %i.ai = load ptr, ptr %i.ah, align 16, !dbg !93801, !alias.scope !93766, !noalias !93767, !noundef !2595 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, null, !dbg !93801
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !93802
  %.sroa.0.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr null, ptr %i.aj, !dbg !93802
  store i64 %i.ae, ptr %i.p, align 8, !dbg !93803, !alias.scope !93768, !noalias !93760
  store i8 %i.ag, ptr %i.s, align 1, !dbg !93803, !alias.scope !93768, !noalias !93760
  store ptr %.sroa.0.0.i.i.i.i.i, ptr %i.q, align 16, !dbg !93803, !alias.scope !93768, !noalias !93760
  store i8 17, ptr %i.b, align 16, !dbg !93803, !alias.scope !93768, !noalias !93760
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENCNvNvMsa_B1o_B1m_10eq_missing23struct_owned_value_iter0ENtNtNtB9_6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream.exit.i.i, !dbg !93804

bb.f:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !93805
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 4, !dbg !93806
  %i.am = load i32, ptr %i.al, align 4, !dbg !93806, !alias.scope !93766, !noalias !93767, !noundef !2595
  store i32 %i.am, ptr %i.r, align 4, !dbg !93807, !alias.scope !93768, !noalias !93760
  store ptr %i.ak, ptr %i.p, align 8, !dbg !93807, !alias.scope !93768, !noalias !93760
  store i8 21, ptr %i.b, align 16, !dbg !93807, !alias.scope !93768, !noalias !93760
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENCNvNvMsa_B1o_B1m_10eq_missing23struct_owned_value_iter0ENtNtNtB9_6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream.exit.i.i, !dbg !93808

bb.g:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !93809
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 4, !dbg !93810
  %i.ap = load i32, ptr %i.ao, align 4, !dbg !93810, !alias.scope !93766, !noalias !93767, !noundef !2595
  store i32 %i.ap, ptr %i.r, align 4, !dbg !93811, !alias.scope !93768, !noalias !93760
  store ptr %i.an, ptr %i.p, align 8, !dbg !93811, !alias.scope !93768, !noalias !93760
  store i8 23, ptr %i.b, align 16, !dbg !93811, !alias.scope !93768, !noalias !93760
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENCNvNvMsa_B1o_B1m_10eq_missing23struct_owned_value_iter0ENtNtNtB9_6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream.exit.i.i, !dbg !93812

bb.h:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !93813 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 31, !dbg !93814
  %i.as = load i8, ptr %i.ar, align 1, !dbg !93814, !range !2747, !alias.scope !93769, !noalias !93767, !noundef !2595 ; 2 uses
end_hunk_1
