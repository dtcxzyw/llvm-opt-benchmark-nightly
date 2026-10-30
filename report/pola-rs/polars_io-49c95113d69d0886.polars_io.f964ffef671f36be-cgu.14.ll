Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_io-49c95113d69d0886.polars_io.f964ffef671f36be-cgu.14?download=true
inline.NumInlined: 3784
inline.NumDeleted: 1574
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift4sortTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBW_11sort_by_keyjNCNCNvB10_26count_rows_from_reader_par0s0_0E0EB16_:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cf, ptr noundef nonnull align 8 dereferenceable(56) %..i.i, i64 56, i1 false), !dbg !33658, !alias.scope !33536, !noalias !33538
  %i.cj = xor i1 %i.ci, true, !dbg !33659
  %i.ck = zext i1 %i.cj to i64, !dbg !33659
  %i.cl = getelementptr inbounds nuw [56 x i8], ptr %i.cd, i64 %i.ck, !dbg !33660 ; 3 uses
  %i.cm = zext i1 %i.ci to i64, !dbg !33661
  %i.cn = getelementptr inbounds nuw [56 x i8], ptr %i.ce, i64 %i.cm, !dbg !33662 ; 3 uses
  %i.co = icmp eq ptr %i.cl, %i.bj, !dbg !33663
  %i.cp = icmp eq ptr %i.cn, %2
  %or.cond.i.i = select i1 %i.co, i1 true, i1 %i.cp, !dbg !33663
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_11sort_by_keyjNCNCNvB1e_26count_rows_from_reader_par0s0_0E0EB1k_.exit.i, label %.preheader.i, !dbg !33663

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.cq = phi ptr [ %i.da, %.lr.ph.i.i ], [ %i.bj, %.critedge.i ], !dbg !33664 ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %i.by, %.critedge.i ] ; 3 uses
  %i.cr = phi ptr [ %i.cx, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.cs = getelementptr i8, ptr %.sroa.0.02.i.i, i64 48, !dbg !33664
  %.sroa.0.0.val.i.i = load i64, ptr %i.cs, align 8, !dbg !33664, !alias.scope !33532, !noalias !33539, !noundef !1512
  %i.ct = getelementptr i8, ptr %i.cr, i64 48, !dbg !33664
  %.val.i19.i = load i64, ptr %i.ct, align 8, !dbg !33664, !alias.scope !33533, !noalias !33539, !noundef !1512
  %i.cu = icmp ult i64 %.sroa.0.0.val.i.i, %.val.i19.i, !dbg !33665 ; 3 uses
  %i.cv = xor i1 %i.cu, true, !dbg !33666
  %spec.select.i.i = select i1 %i.cu, ptr %.sroa.0.02.i.i, ptr %i.cr, !dbg !33667
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cq, ptr noundef nonnull align 8 dereferenceable(56) %spec.select.i.i, i64 56, i1 false), !dbg !33668, !alias.scope !33536, !noalias !33539
  %i.cw = zext i1 %i.cv to i64, !dbg !33669
  %i.cx = getelementptr inbounds nuw [56 x i8], ptr %i.cr, i64 %i.cw, !dbg !33670 ; 3 uses
  %i.cy = zext i1 %i.cu to i64, !dbg !33671
  %i.cz = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.02.i.i, i64 %i.cy, !dbg !33672 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 56, !dbg !33673 ; 2 uses
  %i.db = icmp ne ptr %i.cx, %i.ca, !dbg !33674
  %i.dc = icmp ne ptr %i.cz, %i.m
  %or.cond.i20.i = select i1 %i.db, i1 %i.dc, i1 false, !dbg !33674
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_11sort_by_keyjNCNCNvB1e_26count_rows_from_reader_par0s0_0E0EB1k_.exit.i, !dbg !33674

_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_11sort_by_keyjNCNCNvB1e_26count_rows_from_reader_par0s0_0E0EB1k_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cl, %.preheader.i ], [ %i.da, %.lr.ph.i.i ], !dbg !33675
  %.sroa.7.0.i = phi ptr [ %i.cn, %.preheader.i ], [ %i.ca, %.lr.ph.i.i ], !dbg !33676
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.cx, %.lr.ph.i.i ], !dbg !33676 ; 2 uses
  %i.dd = ptrtoint ptr %.sroa.7.0.i to i64, !dbg !33677
  %i.de = ptrtoint ptr %.sroa.0.1.i to i64, !dbg !33677
  %i.df = sub nuw i64 %i.dd, %i.de, !dbg !33677
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.df, i1 false), !dbg !33678, !alias.scope !33536, !noalias !33541
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_11sort_by_keyjNCNCNvB11_26count_rows_from_reader_par0s0_0E0EB17_.exit, !dbg !33679

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_11sort_by_keyjNCNCNvB11_26count_rows_from_reader_par0s0_0E0EB17_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jEE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_11sort_by_keyjNCNCNvB1e_26count_rows_from_reader_par0s0_0E0EB1k_.exit.i
  %i.dg = shl nuw nsw i64 %i.bh, 1, !dbg !33680
  %i.dh = or disjoint i64 %i.dg, 1, !dbg !33680
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_11sort_by_keyjNCNCNvB1a_26count_rows_from_reader_par0s0_0E0EB1g_.exit, !dbg !33634

bb.z:                                             ; preds = %bb.v
  %i.di = getelementptr inbounds nuw [56 x i8], ptr %i.bj, i64 %i.bf, !dbg !33681
  %i.dj = or i64 %i.bg, 1, !dbg !33682
  %i.dk = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.dj, i1 true), !dbg !33683
  %i.dl = trunc nuw nsw i64 %i.dk to i32, !dbg !33683
  %i.dm = shl nuw nsw i32 %i.dl, 1, !dbg !33684
  %i.dn = xor i32 %i.dm, 126, !dbg !33684
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_11sort_by_keyjNCNCNvB19_26count_rows_from_reader_par0s0_0E0EB1f_(ptr noalias noundef nonnull align 8 %i.di, i64 noundef range(i64 0, 164703072086692426) %i.bg, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.dn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #38, !dbg !33685, !inline_history !33403
  br label %bb.x, !dbg !33686

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_11sort_by_keyjNCNCNvB1a_26count_rows_from_reader_par0s0_0E0EB1g_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_11sort_by_keyjNCNCNvB11_26count_rows_from_reader_par0s0_0E0EB17_.exit
  %.sroa.0.0.i = phi i64 [ %i.dh, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_11sort_by_keyjNCNCNvB11_26count_rows_from_reader_par0s0_0E0EB17_.exit ], [ %i.bp, %bb.u ], !dbg !33687 ; 2 uses
  %i.do = icmp ugt i64 %i.ay, 1, !dbg !33564
  br i1 %i.do, label %bb.r, label %._crit_edge, !dbg !33564

bb.aa:                                            ; preds = %._crit_edge
  %i.dp = add nuw nsw i64 %.sroa.02.1.lcssa, 1, !dbg !33688
  %i.dq = lshr i64 %.sroa.018.0, 1, !dbg !33689
  %i.dr = add nuw i64 %i.dq, %.sroa.09.0, !dbg !33690
  br label %bb.f, !dbg !33558

bb.ab:                                            ; preds = %._crit_edge
  %i.ds = and i64 %.sroa.023.1.lcssa, 1, !dbg !33691
  %.not31 = icmp eq i64 %i.ds, 0, !dbg !33692
  br i1 %.not31, label %bb.ac, label %bb.ad, !dbg !33692

bb.ac:                                            ; preds = %bb.ab
  %i.dt = or i64 %1, 1, !dbg !33693
  %i.du = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.dt, i1 true), !dbg !33694
  %i.dv = trunc nuw nsw i64 %i.du to i32, !dbg !33694
  %i.dw = shl nuw nsw i32 %i.dv, 1, !dbg !33695
  %i.dx = xor i32 %i.dw, 126, !dbg !33695
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_11sort_by_keyjNCNCNvB19_26count_rows_from_reader_par0s0_0E0EB1f_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.dx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #38, !dbg !33696, !inline_history !33403
  br label %bb.ad, !dbg !33697

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !33698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !33699
  br label %bb.ae, !dbg !33700

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void, !dbg !33700
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_11sort_by_keyjNCNCNvB19_26count_rows_from_reader_par0s0_0E0EB1f_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(56) %5, ptr noalias noundef align 8 dereferenceable(8) %6) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !33701 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33, !dbg !33900
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph, !dbg !33900

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph96 = phi ptr [ %i.cp, %.outer ], [ %0, %bb.a ] ; 20 uses
  %.sroa.16.0.ph95 = phi i64 [ %i.ca, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph94 = phi i32 [ %i.h, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph93 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = getelementptr i8, ptr %.sroa.0.0.ph96, i64 48
  %i.d = ptrtoint ptr %.sroa.0.0.ph96 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph93, null
  %i.e = getelementptr i8, ptr %.sroa.028.0.ph93, i64 48
  %i.f = icmp eq i32 %.sroa.025.0.ph94, 0, !dbg !33901
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph219, !dbg !33901

bb.b:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jE12split_at_mutBE_.exit
  %i.g = icmp eq i32 %i.h, 0, !dbg !33901
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph219, !dbg !33901

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jE12split_at_mutBE_.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa87 = phi ptr [ %i.cb, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph96, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jE12split_at_mutBE_.exit ], [ %i.cp, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jE12split_at_mutBE_.exit ], [ %i.ca, %.outer ]
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1s_11sort_by_keyjNCNCNvB1w_26count_rows_from_reader_par0s0_0E0EB1C_(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph.lcssa87, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, ptr noalias noundef nonnull align 8 dereferenceable(8) %6), !dbg !33902
  br label %bb.d, !dbg !33903

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.089.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph95, %.lr.ph ]
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift4sortTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBW_11sort_by_keyjNCNCNvB10_26count_rows_from_reader_par0s0_0E0EB16_(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph96, i64 noundef %.sroa.16.089.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 dereferenceable(8) %6), !dbg !33904
  br label %bb.d, !dbg !33903

.lr.ph219:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.088218 = phi i32 [ %i.h, %bb.b ], [ %.sroa.025.0.ph94, %.lr.ph ]
  %.sroa.16.089217 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph95, %.lr.ph ] ; 21 uses
  %i.h = add i32 %.sroa.025.088218, -1, !dbg !33905 ; 4 uses
  %i.i = lshr i64 %.sroa.16.089217, 3, !dbg !33906 ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.i, 224, !dbg !33907
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 %.idx.i, !dbg !33907 ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.i, 392, !dbg !33908
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 %.idx2.i, !dbg !33908 ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.16.089217, 64, !dbg !33909
  br i1 %i.l, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBZ_11sort_by_keyjNCNCNvB13_26count_rows_from_reader_par0s0_0E0EB19_.exit.i, label %bb.c, !dbg !33909

bb.c:                                             ; preds = %.lr.ph219
  %i.m = call fastcc noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB14_11sort_by_keyjNCNCNvB18_26count_rows_from_reader_par0s0_0E0EB1e_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph96, ptr noundef readonly %i.j, ptr noundef readonly %i.k, i64 noundef %i.i), !dbg !33910
  br label %bb.e, !dbg !33911

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBZ_11sort_by_keyjNCNCNvB13_26count_rows_from_reader_par0s0_0E0EB19_.exit.i: ; preds = %.lr.ph219
  %.val6.i = load i64, ptr %i.c, align 8, !dbg !33912, !alias.scope !33880, !noundef !1512 ; 2 uses
  %i.n = getelementptr i8, ptr %i.j, i64 48, !dbg !33912
  %.val7.i = load i64, ptr %i.n, align 8, !dbg !33912, !alias.scope !33880, !noundef !1512 ; 2 uses
  %i.o = icmp ult i64 %.val6.i, %.val7.i, !dbg !33913 ; 2 uses
  %i.p = getelementptr i8, ptr %i.k, i64 48, !dbg !33914
  %.val5.i = load i64, ptr %i.p, align 8, !dbg !33914, !alias.scope !33880, !noundef !1512 ; 2 uses
  %i.q = icmp ult i64 %.val6.i, %.val5.i, !dbg !33915
  %i.r = xor i1 %i.o, %i.q, !dbg !33916
  %i.s = icmp ult i64 %.val7.i, %.val5.i, !dbg !33916
  %i.t = xor i1 %i.o, %i.s, !dbg !33916
  %..i.i = select i1 %i.t, ptr %i.k, ptr %i.j, !dbg !33916
  %.sroa.0.0.i.i = select i1 %i.r, ptr %.sroa.0.0.ph96, ptr %..i.i, !dbg !33916
  br label %bb.e, !dbg !33911

bb.d:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void, !dbg !33917

bb.e:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBZ_11sort_by_keyjNCNCNvB13_26count_rows_from_reader_par0s0_0E0EB19_.exit.i, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBZ_11sort_by_keyjNCNCNvB13_26count_rows_from_reader_par0s0_0E0EB19_.exit.i ], [ %i.m, %bb.c ]
  %i.u = ptrtoint ptr %.sroa.0.0.i.sink.i to i64, !dbg !33918
  %i.v = sub nuw i64 %i.u, %i.d, !dbg !33918      ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.v, 56, !dbg !33918 ; 3 uses
  %i.w = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.089217, !dbg !33919
  call void @llvm.assume(i1 %i.w), !dbg !33920
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !33921
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 %i.v, !dbg !33922 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.x, i64 56, i1 false), !dbg !33923
  br i1 %.not, label %bb.g, label %bb.f, !dbg !33924

bb.f:                                             ; preds = %bb.e
  %.sroa.028.0.val = load i64, ptr %i.e, align 8, !dbg !33925, !noundef !1512
  %i.y = getelementptr i8, ptr %i.x, i64 48, !dbg !33925
  %.val = load i64, ptr %i.y, align 8, !dbg !33925, !noundef !1512
  %i.z = icmp ult i64 %.sroa.028.0.val, %.val, !dbg !33926
  br i1 %i.z, label %bb.g, label %.thread, !dbg !33927

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !33882), !dbg !33928
  %.not63 = icmp samesign ult i64 %3, %.sroa.16.089217, !dbg !33929
  br i1 %.not63, label %bb.i, label %bb.h, !dbg !33929, !prof !1931

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr [56 x i8], ptr %2, i64 %.sroa.16.089217, !dbg !33930 ; 4 uses
  %i.ab = getelementptr i8, ptr %i.x, i64 48
  br label %bb.j, !dbg !33931

bb.i:                                             ; preds = %bb.g
  call void @llvm.trap(), !dbg !33932
  unreachable, !dbg !33932

bb.j:                                             ; preds = %bb.k, %bb.h
  %.sroa.19.0.i = phi ptr [ %i.aa, %bb.h ], [ %i.an, %bb.k ], !dbg !33933 ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.h ], [ %.sroa.11.1.lcssa.i, %bb.k ], !dbg !33933 ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph96, %bb.h ], [ %i.ap, %bb.k ], !dbg !33933 ; 3 uses
  %.sroa.0.0.i37 = phi i64 [ %.sroa.0.0.i, %bb.h ], [ %.sroa.16.089217, %bb.k ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.0.0.i37, !dbg !33934 ; 2 uses
  %i.ad = icmp ult ptr %.sroa.5.0.i, %i.ac, !dbg !33935
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i, !dbg !33935

.lr.ph.i:                                         ; preds = %bb.j
  %.val12.i = load i64, ptr %i.ab, align 8, !alias.scope !33884, !noundef !1512
  br label %.lr.ph.i.a, !dbg !33935

._crit_edge.i:                                    ; preds = %.lr.ph.i.a, %bb.j
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.j ], [ %i.ah, %.lr.ph.i.a ], !dbg !33933
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.j ], [ %i.ak, %.lr.ph.i.a ], !dbg !33933 ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.j ], [ %i.al, %.lr.ph.i.a ], !dbg !33933 ; 2 uses
  %i.ae = icmp eq i64 %.sroa.0.0.i37, %.sroa.16.089217, !dbg !33936
  br i1 %i.ae, label %bb.l, label %bb.k, !dbg !33936

.lr.ph.i.a:                                       ; preds = %.lr.ph.i.a, %.lr.ph.i
  %.sroa.5.111.i = phi ptr [ %.sroa.5.0.i, %.lr.ph.i ], [ %i.al, %.lr.ph.i.a ] ; 3 uses
  %.sroa.11.110.i = phi i64 [ %.sroa.11.0.i, %.lr.ph.i ], [ %i.ak, %.lr.ph.i.a ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %.sroa.19.0.i, %.lr.ph.i ], [ %i.ah, %.lr.ph.i.a ]
  %i.af = getelementptr i8, ptr %.sroa.5.111.i, i64 48, !dbg !33937
  %.val12.i.a = load i64, ptr %i.af, align 8, !dbg !33937, !alias.scope !33884, !noundef !1512
  %i.ag = icmp ult i64 %.val12.i.a, %.val12.i, !dbg !33938 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -56, !dbg !33939 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.ag, ptr %2, ptr %i.ah, !dbg !33940
  %i.ai = getelementptr inbounds nuw [56 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i, !dbg !33941
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ai, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.111.i, i64 56, i1 false), !dbg !33942, !alias.scope !33885, !noalias !33886
  %i.aj = zext i1 %i.ag to i64, !dbg !33943
  %i.ak = add i64 %.sroa.11.110.i, %i.aj, !dbg !33944 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 56, !dbg !33945 ; 3 uses
  %i.am = icmp ult ptr %i.al, %i.ac, !dbg !33935
  br i1 %i.am, label %.lr.ph.i.a, label %._crit_edge.i, !dbg !33935

bb.k:                                             ; preds = %._crit_edge.i
  %i.an = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -56, !dbg !33946 ; 2 uses
  %i.ao = getelementptr inbounds nuw [56 x i8], ptr %i.an, i64 %.sroa.11.1.lcssa.i, !dbg !33947
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ao, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.1.lcssa.i, i64 56, i1 false), !dbg !33948, !alias.scope !33885, !noalias !33887
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 56, !dbg !33949
  br label %bb.j, !dbg !33931

bb.l:                                             ; preds = %._crit_edge.i
  %i.aq = mul i64 %.sroa.11.1.lcssa.i, 56, !dbg !33950
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph96, ptr nonnull align 8 %2, i64 %i.aq, i1 false), !dbg !33950, !alias.scope !33885
  %i.ar = sub i64 %.sroa.16.089217, %.sroa.11.1.lcssa.i, !dbg !33951 ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.16.089217, %.sroa.11.1.lcssa.i, !dbg !33952
  br i1 %.not18.i, label %.loopexit, label %.lr.ph16.i, !dbg !33953

.lr.ph16.i:                                       ; preds = %bb.l
  %i.as = getelementptr [56 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1, !dbg !33953
  %xtraiter = and i64 %i.ar, 1, !dbg !33953
  %i.at = icmp eq i64 %.sroa.16.089217, %.neg, !dbg !33953
  br i1 %i.at, label %.epil.preheader, label %.lr.ph16.i.new, !dbg !33953

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.ar, -2, !dbg !33953
  br label %bb.m, !dbg !33953

bb.m:                                             ; preds = %bb.m, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.ax, %bb.m ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.m ]
  %i.au = xor i64 %.sroa.06.014.i, -1, !dbg !33954
  %i.av = getelementptr [56 x i8], ptr %i.aa, i64 %i.au, !dbg !33955
  %i.aw = getelementptr [56 x i8], ptr %i.as, i64 %.sroa.06.014.i, !dbg !33956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aw, ptr noundef nonnull align 8 dereferenceable(56) %i.av, i64 56, i1 false), !dbg !33957, !alias.scope !33885
  %i.ax = add nuw i64 %.sroa.06.014.i, 2, !dbg !33958 ; 2 uses
  %i.ay = xor i64 %.sroa.06.014.i, -2, !dbg !33954
  %i.az = getelementptr [56 x i8], ptr %i.aa, i64 %i.ay, !dbg !33955
  %i.ba = getelementptr [56 x i8], ptr %i.as, i64 %.sroa.06.014.i, !dbg !33956
  %i.bb = getelementptr i8, ptr %i.ba, i64 56, !dbg !33956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bb, ptr noundef nonnull align 8 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !33957, !alias.scope !33885
  %niter.next.1 = add i64 %niter, 2, !dbg !33953  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !33953
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.m, !dbg !33953

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !33953
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader, !dbg !33953

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.ax, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod280 = trunc i64 %i.ar to i1, !dbg !33953
  call void @llvm.assume(i1 %lcmp.mod280), !dbg !33953
  %i.bc = xor i64 %.sroa.06.014.i.epil.init, -1, !dbg !33954
  %i.bd = getelementptr [56 x i8], ptr %i.aa, i64 %i.bc, !dbg !33955
  %i.be = getelementptr [56 x i8], ptr %i.as, i64 %.sroa.06.014.i.epil.init, !dbg !33956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.be, ptr noundef nonnull align 8 dereferenceable(56) %i.bd, i64 56, i1 false), !dbg !33957, !alias.scope !33885
  br label %.loopexit, !dbg !33959

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.l
  %i.bf = icmp eq i64 %.sroa.11.1.lcssa.i, 0, !dbg !33959
  br i1 %i.bf, label %.thread, label %bb.n, !dbg !33960

bb.n:                                             ; preds = %.loopexit
  %.not.i38 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.089217, !dbg !33961
  br i1 %.not.i38, label %bb.o, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jE12split_at_mutBE_.exit, !dbg !33961, !prof !1622

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #39, !dbg !33962, !noalias !33889
  unreachable, !dbg !33962

_RNvMNtCscgRAwXFJnXP_4core5sliceSTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jE12split_at_mutBE_.exit: ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.11.1.lcssa.i, !dbg !33963
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph96) ]
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_11sort_by_keyjNCNCNvB19_26count_rows_from_reader_par0s0_0E0EB1f_(ptr noalias noundef nonnull align 8 %i.bg, i64 noundef %i.ar, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %6) #38, !dbg !33964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !33965
  %i.bh = icmp ult i64 %.sroa.11.1.lcssa.i, 33, !dbg !33900
  br i1 %i.bh, label %.outer._crit_edge, label %bb.b, !dbg !33900

.thread:                                          ; preds = %bb.f, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !33890), !dbg !33966
  %.not64 = icmp samesign ult i64 %3, %.sroa.16.089217, !dbg !33967
  br i1 %.not64, label %bb.q, label %bb.p, !dbg !33967, !prof !1931

bb.p:                                             ; preds = %.thread
  %i.bi = getelementptr [56 x i8], ptr %2, i64 %.sroa.16.089217, !dbg !33968 ; 4 uses
  %i.bj = getelementptr i8, ptr %i.x, i64 48
  br label %bb.r, !dbg !33969

bb.q:                                             ; preds = %.thread
  call void @llvm.trap(), !dbg !33970
  unreachable, !dbg !33970

bb.r:                                             ; preds = %bb.s, %bb.p
  %.sroa.19.0.i41 = phi ptr [ %i.bi, %bb.p ], [ %i.bv, %bb.s ], !dbg !33971 ; 2 uses
  %.sroa.11.0.i42 = phi i64 [ 0, %bb.p ], [ %i.bx, %bb.s ], !dbg !33971 ; 2 uses
  %.sroa.5.0.i43 = phi ptr [ %.sroa.0.0.ph96, %bb.p ], [ %i.by, %bb.s ], !dbg !33971 ; 3 uses
  %.sroa.0.0.i44 = phi i64 [ %.sroa.0.0.i, %bb.p ], [ %.sroa.16.089217, %bb.s ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.0.0.i44, !dbg !33972 ; 2 uses
  %i.bl = icmp ult ptr %.sroa.5.0.i43, %i.bk, !dbg !33973
  br i1 %i.bl, label %.lr.ph.i53, label %._crit_edge.i45, !dbg !33973

.lr.ph.i53:                                       ; preds = %bb.r
  %.val12.i54 = load i64, ptr %i.bj, align 8, !alias.scope !33891, !noundef !1512
  br label %.lr.ph.i53.a, !dbg !33973

._crit_edge.i45:                                  ; preds = %.lr.ph.i53.a, %bb.r
  %.sroa.19.1.lcssa.i46 = phi ptr [ %.sroa.19.0.i41, %bb.r ], [ %i.bp, %.lr.ph.i53.a ], !dbg !33971
  %.sroa.11.1.lcssa.i47 = phi i64 [ %.sroa.11.0.i42, %bb.r ], [ %i.bs, %.lr.ph.i53.a ], !dbg !33971 ; 10 uses
  %.sroa.5.1.lcssa.i48 = phi ptr [ %.sroa.5.0.i43, %bb.r ], [ %i.bt, %.lr.ph.i53.a ], !dbg !33971 ; 2 uses
  %i.bm = icmp eq i64 %.sroa.0.0.i44, %.sroa.16.089217, !dbg !33974
  br i1 %i.bm, label %bb.t, label %bb.s, !dbg !33974

.lr.ph.i53.a:                                     ; preds = %.lr.ph.i53.a, %.lr.ph.i53
  %.sroa.5.111.i54 = phi ptr [ %.sroa.5.0.i43, %.lr.ph.i53 ], [ %i.bt, %.lr.ph.i53.a ] ; 3 uses
  %.sroa.11.110.i55 = phi i64 [ %.sroa.11.0.i42, %.lr.ph.i53 ], [ %i.bs, %.lr.ph.i53.a ] ; 2 uses
  %.sroa.19.19.i56 = phi ptr [ %.sroa.19.0.i41, %.lr.ph.i53 ], [ %i.bp, %.lr.ph.i53.a ]
  %i.bn = getelementptr i8, ptr %.sroa.5.111.i54, i64 48, !dbg !33975
  %.val12.i58 = load i64, ptr %i.bn, align 8, !dbg !33975, !alias.scope !33891, !noundef !1512
  %i.bo = icmp uge i64 %.val12.i54, %.val12.i58, !dbg !33976 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %.sroa.19.19.i56, i64 -56, !dbg !33977 ; 3 uses
  %.sroa.01.0.i.i59 = select i1 %i.bo, ptr %2, ptr %i.bp, !dbg !33978
  %i.bq = getelementptr inbounds nuw [56 x i8], ptr %.sroa.01.0.i.i59, i64 %.sroa.11.110.i55, !dbg !33979
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bq, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.111.i54, i64 56, i1 false), !dbg !33980, !alias.scope !33893, !noalias !33894
  %i.br = zext i1 %i.bo to i64, !dbg !33981
  %i.bs = add i64 %.sroa.11.110.i55, %i.br, !dbg !33982 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i54, i64 56, !dbg !33983 ; 3 uses
  %i.bu = icmp ult ptr %i.bt, %i.bk, !dbg !33973
  br i1 %i.bu, label %.lr.ph.i53.a, label %._crit_edge.i45, !dbg !33973

bb.s:                                             ; preds = %._crit_edge.i45
  %i.bv = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i46, i64 -56, !dbg !33984
  %i.bw = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i47, !dbg !33985
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bw, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.1.lcssa.i48, i64 56, i1 false), !dbg !33986, !alias.scope !33893, !noalias !33895
  %i.bx = add i64 %.sroa.11.1.lcssa.i47, 1, !dbg !33987
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i48, i64 56, !dbg !33988
  br label %bb.r, !dbg !33969

bb.t:                                             ; preds = %._crit_edge.i45
  %i.bz = mul i64 %.sroa.11.1.lcssa.i47, 56, !dbg !33989
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph96, ptr nonnull align 8 %2, i64 %i.bz, i1 false), !dbg !33989, !alias.scope !33893
  %i.ca = sub i64 %.sroa.16.089217, %.sroa.11.1.lcssa.i47, !dbg !33990 ; 6 uses
  %.not18.i49 = icmp eq i64 %.sroa.16.089217, %.sroa.11.1.lcssa.i47, !dbg !33991
  %i.cb = getelementptr [56 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.11.1.lcssa.i47 ; 4 uses
  br i1 %.not18.i49, label %.outer.thread, label %.lr.ph16.i50.preheader, !dbg !33992

.lr.ph16.i50.preheader:                           ; preds = %bb.t
  %.neg292 = add i64 %.sroa.11.1.lcssa.i47, 1, !dbg !33992
  %xtraiter287 = and i64 %i.ca, 1, !dbg !33992
  %i.cc = icmp eq i64 %.sroa.16.089217, %.neg292, !dbg !33992
  br i1 %i.cc, label %.lr.ph16.i50.epil.preheader, label %.lr.ph16.i50.preheader.new, !dbg !33992

.lr.ph16.i50.preheader.new:                       ; preds = %.lr.ph16.i50.preheader
  %unroll_iter290 = and i64 %i.ca, -2, !dbg !33992
  br label %.lr.ph16.i50, !dbg !33992

.lr.ph16.i50:                                     ; preds = %.lr.ph16.i50, %.lr.ph16.i50.preheader.new
  %.sroa.06.014.i51 = phi i64 [ 0, %.lr.ph16.i50.preheader.new ], [ %i.cg, %.lr.ph16.i50 ] ; 5 uses
  %niter291 = phi i64 [ 0, %.lr.ph16.i50.preheader.new ], [ %niter291.next.1, %.lr.ph16.i50 ]
  %i.cd = xor i64 %.sroa.06.014.i51, -1, !dbg !33993
  %i.ce = getelementptr [56 x i8], ptr %i.bi, i64 %i.cd, !dbg !33994
  %i.cf = getelementptr [56 x i8], ptr %i.cb, i64 %.sroa.06.014.i51, !dbg !33995
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cf, ptr noundef nonnull align 8 dereferenceable(56) %i.ce, i64 56, i1 false), !dbg !33996, !alias.scope !33893
  %i.cg = add nuw i64 %.sroa.06.014.i51, 2, !dbg !33997 ; 2 uses
  %i.ch = xor i64 %.sroa.06.014.i51, -2, !dbg !33993
  %i.ci = getelementptr [56 x i8], ptr %i.bi, i64 %i.ch, !dbg !33994
  %i.cj = getelementptr [56 x i8], ptr %i.cb, i64 %.sroa.06.014.i51, !dbg !33995
  %i.ck = getelementptr i8, ptr %i.cj, i64 56, !dbg !33995
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ck, ptr noundef nonnull align 8 dereferenceable(56) %i.ci, i64 56, i1 false), !dbg !33996, !alias.scope !33893
  %niter291.next.1 = add i64 %niter291, 2, !dbg !33992 ; 2 uses
  %niter291.ncmp.1 = icmp eq i64 %niter291.next.1, %unroll_iter290, !dbg !33992
  br i1 %niter291.ncmp.1, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keyjNCNCNvB1h_26count_rows_from_reader_par0s0_0E0E0EB1n_.exit.unr-lcssa, label %.lr.ph16.i50, !dbg !33992

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keyjNCNCNvB1h_26count_rows_from_reader_par0s0_0E0E0EB1n_.exit.unr-lcssa: ; preds = %.lr.ph16.i50
  %lcmp.mod288.not = icmp eq i64 %xtraiter287, 0, !dbg !33992
  br i1 %lcmp.mod288.not, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keyjNCNCNvB1h_26count_rows_from_reader_par0s0_0E0E0EB1n_.exit, label %.lr.ph16.i50.epil.preheader, !dbg !33992

.lr.ph16.i50.epil.preheader:                      ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keyjNCNCNvB1h_26count_rows_from_reader_par0s0_0E0E0EB1n_.exit.unr-lcssa, %.lr.ph16.i50.preheader
  %.sroa.06.014.i51.epil.init = phi i64 [ 0, %.lr.ph16.i50.preheader ], [ %i.cg, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keyjNCNCNvB1h_26count_rows_from_reader_par0s0_0E0E0EB1n_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod289 = trunc i64 %i.ca to i1, !dbg !33992
  call void @llvm.assume(i1 %lcmp.mod289), !dbg !33992
  %i.cl = xor i64 %.sroa.06.014.i51.epil.init, -1, !dbg !33993
  %i.cm = getelementptr [56 x i8], ptr %i.bi, i64 %i.cl, !dbg !33994
  %i.cn = getelementptr [56 x i8], ptr %i.cb, i64 %.sroa.06.014.i51.epil.init, !dbg !33995
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cn, ptr noundef nonnull align 8 dereferenceable(56) %i.cm, i64 56, i1 false), !dbg !33996, !alias.scope !33893
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keyjNCNCNvB1h_26count_rows_from_reader_par0s0_0E0E0EB1n_.exit, !dbg !33998

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keyjNCNCNvB1h_26count_rows_from_reader_par0s0_0E0E0EB1n_.exit: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keyjNCNCNvB1h_26count_rows_from_reader_par0s0_0E0E0EB1n_.exit.unr-lcssa, %.lr.ph16.i50.epil.preheader
  %i.co = icmp ugt i64 %.sroa.11.1.lcssa.i47, %.sroa.16.089217, !dbg !33998
  br i1 %i.co, label %bb.u, label %.outer, !dbg !33998, !prof !1622

.outer.thread:                                    ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !33965
  br label %.outer._crit_edge, !dbg !33900

.outer:                                           ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keyjNCNCNvB1h_26count_rows_from_reader_par0s0_0E0E0EB1n_.exit
  %i.cp = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.11.1.lcssa.i47, !dbg !33999 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !33965
  %i.cq = icmp ult i64 %i.ca, 33, !dbg !33900
  br i1 %i.cq, label %.outer._crit_edge, label %.lr.ph, !dbg !33900

bb.u:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTANtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser9LineStatsj2_jENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keyjNCNCNvB1h_26count_rows_from_reader_par0s0_0E0E0EB1n_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i47, i64 noundef %.sroa.16.089217, i64 noundef %.sroa.16.089217, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #39, !dbg !34000
  unreachable, !dbg !34000
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB19_6option6OptionNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextEEECslpwjCj2YNBy_9polars_io(ptr noundef %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !34001 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !34045 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !dbg !34046, !range !1571, !noundef !1512
  store i8 2, ptr %i.a, align 1, !dbg !34047
  %i.c = icmp eq i8 %i.b, 1, !dbg !34048
  br i1 %i.c, label %bb.b, label %_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1D_6option6OptionNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextEEE0ECslpwjCj2YNBy_9polars_io.exit, !dbg !34048

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34040), !dbg !34049
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34041), !dbg !34050
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34042), !dbg !34051
  %i.d = load ptr, ptr %0, align 8, !dbg !34052, !alias.scope !34043, !noundef !1512 ; 2 uses
  %i.e = icmp eq ptr %i.d, null, !dbg !34052
  br i1 %i.e, label %_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1D_6option6OptionNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextEEE0ECslpwjCj2YNBy_9polars_io.exit, label %bb.c, !dbg !34052

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw add ptr %i.d, i64 -1 release, align 8, !dbg !34053, !noalias !34044
  %i.g = icmp eq i64 %i.f, 1, !dbg !34054
  br i1 %i.g, label %bb.d, label %_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1D_6option6OptionNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextEEE0ECslpwjCj2YNBy_9polars_io.exit, !dbg !34054

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !34055
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCslovz2ii29zg_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #38
          to label %_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1D_6option6OptionNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextEEE0ECslpwjCj2YNBy_9polars_io.exit unwind label %bb.e, !dbg !34056

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop() #40
          to label %.noexc1.i unwind label %bb.f, !dbg !34057

.noexc1.i:                                        ; preds = %bb.e
  unreachable, !dbg !34057

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !34058
  unreachable, !dbg !34058

_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1D_6option6OptionNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextEEE0ECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void, !dbg !34059
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell7RefCellNtNtCs4BcJZGCY6Ba_10rayon_core11thread_pool10ThreadPoolEECslpwjCj2YNBy_9polars_io(ptr noundef %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !34060 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !34117 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !dbg !34118, !range !1571, !noundef !1512
  store i8 2, ptr %i.a, align 1, !dbg !34119
  %i.c = icmp eq i8 %i.b, 1, !dbg !34120
  br i1 %i.c, label %bb.b, label %_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell7RefCellNtNtCs4BcJZGCY6Ba_10rayon_core11thread_pool10ThreadPoolEE0ECslpwjCj2YNBy_9polars_io.exit, !dbg !34120

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !34121 ; 5 uses
  invoke void @_RNvXs_NtCs4BcJZGCY6Ba_10rayon_core11thread_poolNtB4_10ThreadPoolNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.e unwind label %bb.c, !dbg !34122

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34109), !dbg !34122
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34110), !dbg !34123
  %i.f = load ptr, ptr %i.d, align 8, !dbg !34124, !alias.scope !34111, !nonnull !1512, !noundef !1512
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !dbg !34125, !noalias !34112
  %i.h = icmp eq i64 %i.g, 1, !dbg !34126
  br i1 %i.h, label %bb.d, label %.body.i, !dbg !34126

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !34127
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #38
          to label %.body.i unwind label %bb.g, !dbg !34128

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34113), !dbg !34122
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34114), !dbg !34129
  %i.i = load ptr, ptr %i.d, align 8, !dbg !34130, !alias.scope !34115, !nonnull !1512, !noundef !1512
  %i.j = atomicrmw add ptr %i.i, i64 -1 release, align 8, !dbg !34131, !noalias !34116
  %i.k = icmp eq i64 %i.j, 1, !dbg !34132
  br i1 %i.k, label %bb.f, label %_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell7RefCellNtNtCs4BcJZGCY6Ba_10rayon_core11thread_pool10ThreadPoolEE0ECslpwjCj2YNBy_9polars_io.exit, !dbg !34132

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !34133
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #38
          to label %_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell7RefCellNtNtCs4BcJZGCY6Ba_10rayon_core11thread_pool10ThreadPoolEE0ECslpwjCj2YNBy_9polars_io.exit unwind label %bb.h, !dbg !34134

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !34122
  unreachable, !dbg !34122

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i, !dbg !34135

.body.i:                                          ; preds = %bb.h, %bb.d, %bb.c
  invoke fastcc void @_RNvXNvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop() #40
          to label %.noexc1.i unwind label %bb.i, !dbg !34136

.noexc1.i:                                        ; preds = %.body.i
  unreachable, !dbg !34136

bb.i:                                             ; preds = %.body.i
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !34137
  unreachable, !dbg !34137

_RINvNtNtCsh8eZTKRCwoO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell7RefCellNtNtCs4BcJZGCY6Ba_10rayon_core11thread_pool10ThreadPoolEE0ECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.f, %bb.e, %bb.a
  ret void, !dbg !34138
end_hunk_0
