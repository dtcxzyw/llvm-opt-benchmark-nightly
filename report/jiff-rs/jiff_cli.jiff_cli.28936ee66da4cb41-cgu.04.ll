Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_cli.jiff_cli.28936ee66da4cb41-cgu.04?download=true
inline.NumInlined: 78
inline.NumDeleted: 49
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2B_:bb.a
  %i.bi = icmp eq i64 %.sroa.16.097227, %.neg
  br i1 %i.bi, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.bg, -2
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.bm, %bb.s ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.s ]
  %i.bj = xor i64 %.sroa.06.014.i, -1
  %i.bk = getelementptr [24 x i8], ptr %i.am, i64 %i.bj
  %i.bl = getelementptr [24 x i8], ptr %i.bh, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false), !alias.scope !186
  %i.bm = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.bn = xor i64 %.sroa.06.014.i, -2
  %i.bo = getelementptr [24 x i8], ptr %i.am, i64 %i.bn
  %i.bp = getelementptr [24 x i8], ptr %i.bh, i64 %.sroa.06.014.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false), !alias.scope !186
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.s

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.bm, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod290 = trunc i64 %i.bg to i1
  call void @llvm.assume(i1 %lcmp.mod290)
  %i.br = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.bs = getelementptr [24 x i8], ptr %i.am, i64 %i.br
  %i.bt = getelementptr [24 x i8], ptr %i.bh, i64 %.sroa.06.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !alias.scope !186
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.r
  %i.bu = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.bu, label %.thread, label %bb.t

bb.t:                                             ; preds = %.loopexit
  %.not.i44 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.097227
  br i1 %.not.i44, label %bb.u, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE12split_at_mutCs3tZ2SXJA1qv_8jiff_cli.exit, !prof !12

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #12, !noalias !189
  unreachable

_RNvMNtCs3oUPovFnLWP_4core5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE12split_at_mutCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.t
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph104) ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2B_(ptr noalias nofree noundef nonnull align 8 %i.bv, i64 noundef %i.bg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bw = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.bw, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %.split, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !190)
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %.not72 = icmp samesign ult i64 %3, %.sroa.16.097227
  br i1 %.not72, label %bb.w, label %bb.v, !prof !11

bb.v:                                             ; preds = %.thread
  %i.bx = getelementptr [24 x i8], ptr %2, i64 %.sroa.16.097227 ; 4 uses
  %i.by = getelementptr i8, ptr %i.ag, i64 8
  br label %bb.x

bb.w:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.z, %bb.v
  %.sroa.19.0.i47 = phi ptr [ %i.bx, %bb.v ], [ %i.co, %bb.z ] ; 2 uses
  %.sroa.11.0.i48 = phi i64 [ 0, %bb.v ], [ %i.cq, %bb.z ] ; 2 uses
  %.sroa.5.0.i49 = phi ptr [ %.sroa.0.0.ph104, %bb.v ], [ %i.cr, %bb.z ] ; 3 uses
  %.sroa.0.0.i50 = phi i64 [ %.sroa.0.0.i, %bb.v ], [ %.sroa.16.097227, %bb.z ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.0.0.i50 ; 2 uses
  %i.ca = icmp ult ptr %.sroa.5.0.i49, %i.bz
  br i1 %i.ca, label %.lr.ph.i59, label %._crit_edge.i51

._crit_edge.i51:                                  ; preds = %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0B2D_.exit.i, %bb.x
  %.sroa.19.1.lcssa.i52 = phi ptr [ %.sroa.19.0.i47, %bb.x ], [ %i.ci, %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0B2D_.exit.i ]
  %.sroa.11.1.lcssa.i53 = phi i64 [ %.sroa.11.0.i48, %bb.x ], [ %i.cl, %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0B2D_.exit.i ] ; 10 uses
  %.sroa.5.1.lcssa.i54 = phi ptr [ %.sroa.5.0.i49, %bb.x ], [ %i.cm, %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0B2D_.exit.i ] ; 2 uses
  %i.cb = icmp eq i64 %.sroa.0.0.i50, %.sroa.16.097227
  br i1 %i.cb, label %bb.aa, label %bb.z

.lr.ph.i59:                                       ; preds = %bb.x, %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0B2D_.exit.i
  %.sroa.5.111.i60 = phi ptr [ %i.cm, %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0B2D_.exit.i ], [ %.sroa.5.0.i49, %bb.x ] ; 4 uses
  %.sroa.11.110.i61 = phi i64 [ %i.cl, %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0B2D_.exit.i ], [ %.sroa.11.0.i48, %bb.x ] ; 2 uses
  %.sroa.19.19.i62 = phi ptr [ %i.ci, %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0B2D_.exit.i ], [ %.sroa.19.0.i47, %bb.x ]
  %i.cc = getelementptr i8, ptr %.sroa.5.111.i60, i64 8
  %.val12.i63 = load i64, ptr %i.cc, align 8, !alias.scope !190, !noundef !5 ; 3 uses
  %.val14.i64 = load i64, ptr %i.by, align 8, !alias.scope !190, !noundef !5 ; 2 uses
  %i.cd = icmp eq i64 %.val14.i64, %.val12.i63
  %i.ce = icmp ult i64 %.val12.i63, %.val14.i64
  br i1 %i.cd, label %bb.y, label %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0B2D_.exit.i

bb.y:                                             ; preds = %.lr.ph.i59
  %.val13.i66 = load ptr, ptr %i.ag, align 8, !alias.scope !190, !nonnull !5, !noundef !5
  %.val.i67 = load ptr, ptr %.sroa.5.111.i60, align 8, !alias.scope !190, !nonnull !5, !noundef !5
  %i.cf = call i32 @memcmp(ptr nonnull readonly %.val13.i66, ptr nonnull readonly %.val.i67, i64 %.val12.i63), !noalias !192
  %i.cg = icmp sgt i32 %i.cf, 0
  br label %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0B2D_.exit.i

_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0B2D_.exit.i: ; preds = %bb.y, %.lr.ph.i59
  %.sroa.01.0.neg.i.i.i.i = phi i1 [ %i.cg, %bb.y ], [ %i.ce, %.lr.ph.i59 ] ; 2 uses
  %i.ch = xor i1 %.sroa.01.0.neg.i.i.i.i, true
  %i.ci = getelementptr inbounds i8, ptr %.sroa.19.19.i62, i64 -24 ; 3 uses
  %.sroa.01.0.i.i65 = select i1 %.sroa.01.0.neg.i.i.i.i, ptr %i.ci, ptr %2
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0.i.i65, i64 %.sroa.11.110.i61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.111.i60, i64 24, i1 false), !alias.scope !192, !noalias !193
  %i.ck = zext i1 %i.ch to i64
  %i.cl = add i64 %.sroa.11.110.i61, %i.ck        ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i60, i64 24 ; 3 uses
  %i.cn = icmp ult ptr %i.cm, %i.bz
  br i1 %i.cn, label %.lr.ph.i59, label %._crit_edge.i51

bb.z:                                             ; preds = %._crit_edge.i51
  %i.co = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i52, i64 -24
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.1.lcssa.i54, i64 24, i1 false), !alias.scope !192, !noalias !194
  %i.cq = add i64 %.sroa.11.1.lcssa.i53, 1
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i54, i64 24
  br label %bb.x

bb.aa:                                            ; preds = %._crit_edge.i51
  %i.cs = mul nuw nsw i64 %.sroa.11.1.lcssa.i53, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph104, ptr nonnull align 8 %2, i64 %i.cs, i1 false), !alias.scope !192
  %i.ct = sub i64 %.sroa.16.097227, %.sroa.11.1.lcssa.i53 ; 6 uses
  %.not18.i55 = icmp eq i64 %.sroa.16.097227, %.sroa.11.1.lcssa.i53
  %i.cu = getelementptr [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i53 ; 4 uses
  br i1 %.not18.i55, label %.outer.thread, label %.lr.ph16.i56.preheader

.lr.ph16.i56.preheader:                           ; preds = %bb.aa
  %.neg302 = add i64 %.sroa.11.1.lcssa.i53, 1
  %xtraiter297 = and i64 %i.ct, 1
  %i.cv = icmp eq i64 %.sroa.16.097227, %.neg302
  br i1 %i.cv, label %.lr.ph16.i56.epil.preheader, label %.lr.ph16.i56.preheader.new

.lr.ph16.i56.preheader.new:                       ; preds = %.lr.ph16.i56.preheader
  %unroll_iter300 = and i64 %i.ct, -2
  br label %.lr.ph16.i56

.lr.ph16.i56:                                     ; preds = %.lr.ph16.i56, %.lr.ph16.i56.preheader.new
  %.sroa.06.014.i57 = phi i64 [ 0, %.lr.ph16.i56.preheader.new ], [ %i.cz, %.lr.ph16.i56 ] ; 5 uses
  %niter301 = phi i64 [ 0, %.lr.ph16.i56.preheader.new ], [ %niter301.next.1, %.lr.ph16.i56 ]
  %i.cw = xor i64 %.sroa.06.014.i57, -1
  %i.cx = getelementptr [24 x i8], ptr %i.bx, i64 %i.cw
  %i.cy = getelementptr [24 x i8], ptr %i.cu, i64 %.sroa.06.014.i57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false), !alias.scope !192
  %i.cz = add nuw i64 %.sroa.06.014.i57, 2        ; 2 uses
  %i.da = xor i64 %.sroa.06.014.i57, -2
  %i.db = getelementptr [24 x i8], ptr %i.bx, i64 %i.da
  %i.dc = getelementptr [24 x i8], ptr %i.cu, i64 %.sroa.06.014.i57
  %i.dd = getelementptr i8, ptr %i.dc, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr noundef nonnull align 8 dereferenceable(24) %i.db, i64 24, i1 false), !alias.scope !192
  %niter301.next.1 = add i64 %niter301, 2         ; 2 uses
  %niter301.ncmp.1 = icmp eq i64 %niter301.next.1, %unroll_iter300
  br i1 %niter301.ncmp.1, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0EB35_.exit.unr-lcssa, label %.lr.ph16.i56

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0EB35_.exit.unr-lcssa: ; preds = %.lr.ph16.i56
  %lcmp.mod298.not = icmp eq i64 %xtraiter297, 0
  br i1 %lcmp.mod298.not, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0EB35_.exit, label %.lr.ph16.i56.epil.preheader

.lr.ph16.i56.epil.preheader:                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0EB35_.exit.unr-lcssa, %.lr.ph16.i56.preheader
  %.sroa.06.014.i57.epil.init = phi i64 [ 0, %.lr.ph16.i56.preheader ], [ %i.cz, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0EB35_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod299 = trunc i64 %i.ct to i1
  call void @llvm.assume(i1 %lcmp.mod299)
  %i.de = xor i64 %.sroa.06.014.i57.epil.init, -1
  %i.df = getelementptr [24 x i8], ptr %i.bx, i64 %i.de
  %i.dg = getelementptr [24 x i8], ptr %i.cu, i64 %.sroa.06.014.i57.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 24, i1 false), !alias.scope !192
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0EB35_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0EB35_.exit: ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0EB35_.exit.unr-lcssa, %.lr.ph16.i56.epil.preheader
  %i.dh = icmp ugt i64 %.sroa.11.1.lcssa.i53, %.sroa.16.097227
  br i1 %i.dh, label %bb.ab, label %.outer, !prof !12

.outer.thread:                                    ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0EB35_.exit
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i53 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dj = icmp ult i64 %i.ct, 33
  br i1 %i.dj, label %.outer._crit_edge, label %.lr.ph

bb.ab:                                            ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0EB35_.exit
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i53, i64 noundef %.sroa.16.097227, i64 noundef %.sroa.16.097227, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #12
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr nonnull %.0.val, i64 %.8.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !223
  call void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.0.val, i64 noundef %.8.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 2), !noalias !224
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.b = load i64, ptr %i.a, align 8, !range !226, !alias.scope !225, !noalias !223, !noundef !5
  switch i64 %i.b, label %default.unreachable [
    i64 0, label %.preheader.i.i
    i64 1, label %bb.o
    i64 2, label %bb.p
  ]

.preheader.i.i:                                   ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.d = load i8, ptr %i.c, align 2, !range !227, !alias.scope !225, !noalias !223
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !225, !noalias !223, !nonnull !5 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !225, !noalias !223 ; 16 uses
  br i1 %i.e, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.promoted206.i.i = load i8, ptr %i.j, align 8, !alias.scope !225, !noalias !223
  %.promoted157.i.i = load i64, ptr %i.k, align 8, !alias.scope !225, !noalias !223 ; 13 uses
  %i.l = trunc nuw i8 %.promoted206.i.i to i1     ; 2 uses
  %i.m = icmp eq i64 %.promoted157.i.i, 0
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader.i.i
  %.not.i.i.us.i.peel.i = icmp ult i64 %.promoted157.i.i, %i.i
  br i1 %.not.i.i.us.i.peel.i, label %bb.c, label %.split.i.i.us.i.peel.i

.split.i.i.us.i.peel.i:                           ; preds = %bb.b
  %i.n = icmp eq i64 %.promoted157.i.i, %i.i
  br i1 %i.n, label %bb.d, label %.split.us161.i.i

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %.promoted157.i.i
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !228, !noalias !229, !noundef !5
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.d, label %.split.us161.i.i

bb.d:                                             ; preds = %bb.c, %.split.i.i.us.i.peel.i, %.lr.ph.preheader.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 %.promoted157.i.i ; 4 uses
  %i.s = icmp samesign eq i64 %.promoted157.i.i, %i.i
  br i1 %i.s, label %.split166.us.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.r, align 1, !noalias !230, !noundef !5 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.f, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.peel.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.peel.i: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = and i8 %i.t, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = add nuw nsw i64 %.promoted157.i.i, 1
  %i.z = icmp samesign ne i64 %i.y, %i.i
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load i8, ptr %i.v, align 1, !noalias !230, !noundef !5
  %i.ab = shl nuw nsw i32 %i.x, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32               ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = icmp samesign ugt i8 %i.t, -33
  br i1 %i.af, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.peel.i, label %bb.g

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.peel.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.peel.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.ah = add nuw nsw i64 %.promoted157.i.i, 2
  %i.ai = icmp samesign ne i64 %i.ah, %i.i
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !230, !noundef !5
  %i.ak = shl nuw nsw i32 %i.ad, 6
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.t, -17
  br i1 %i.aq, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.i.peel.i, label %bb.g

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.i.peel.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.peel.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.as = add nuw nsw i64 %.promoted157.i.i, 3
  %i.at = icmp samesign ne i64 %i.as, %i.i
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i8, ptr %i.ar, align 1, !noalias !230, !noundef !5
  %i.av = shl nuw nsw i32 %i.x, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.an, 6
  %i.ay = and i8 %i.au, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.aw
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = zext nneg i8 %i.t to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.i.peel.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.peel.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.peel.i
  %.sroa.4.0.i.ph.i.us.i.peel.i = phi i32 [ %i.ap, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.peel.i ], [ %i.bb, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.i.peel.i ], [ %i.ae, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.peel.i ], [ %i.bc, %bb.f ] ; 4 uses
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i, 1114112
  tail call void @llvm.assume(i1 %i.bd)
  br i1 %i.l, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i, 128
  br i1 %i.be, label %.lr.ph.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i, 2048
  br i1 %i.bf, label %.lr.ph.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i, 65536
  %..i.us.i.peel.i = select i1 %i.bg, i64 3, i64 4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.i.us.i.peel.i = phi i64 [ 2, %bb.i ], [ %..i.us.i.peel.i, %bb.j ], [ 1, %bb.h ]
  %i.bh = add i64 %.sroa.01.0.i.us.i.peel.i, %.promoted157.i.i ; 15 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %.not.i.i.us.i.i = icmp ult i64 %i.bh, %i.i
  br i1 %.not.i.i.us.i.i, label %bb.l, label %.split.i.i.us.i.i

.split.i.i.us.i.i:                                ; preds = %bb.k
  %i.bj = icmp eq i64 %i.bh, %i.i
  br i1 %i.bj, label %bb.m, label %.split.us161.i.i

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bh
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !228, !noalias !231, !noundef !5
  %i.bm = icmp sgt i8 %i.bl, -65
  br i1 %i.bm, label %bb.m, label %.split.us161.i.i

bb.m:                                             ; preds = %bb.l, %.split.i.i.us.i.i, %.lr.ph.i.i
  %i.bn = icmp samesign eq i64 %i.bh, %i.i
  br i1 %i.bn, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bh
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !232, !noundef !5 ; 3 uses
  %i.bq = icmp sgt i8 %i.bp, -1
  br i1 %i.bq, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.i: ; preds = %bb.n
  %i.br = add nuw nsw i64 %i.bh, 1
  %i.bs = icmp samesign ne i64 %i.br, %i.i
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = icmp samesign ugt i8 %i.bp, -33
  br i1 %i.bt, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.i
  %i.bu = add nuw nsw i64 %i.bh, 2
  %i.bv = icmp samesign ne i64 %i.bu, %i.i
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = icmp samesign ugt i8 %i.bp, -17
  br i1 %i.bw, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.i
  %i.bx = add nuw nsw i64 %i.bh, 3
  %i.by = icmp samesign ne i64 %i.bx, %i.i
  tail call void @llvm.assume(i1 %i.by)
  br label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6

.split.us161.i.i:                                 ; preds = %bb.l, %.split.i.i.us.i.i, %bb.c, %.split.i.i.us.i.peel.i
  %.lcssa40.i = phi i64 [ %.promoted157.i.i, %.split.i.i.us.i.peel.i ], [ %.promoted157.i.i, %bb.c ], [ %i.bh, %.split.i.i.us.i.i ], [ %i.bh, %bb.l ]
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i, i64 noundef %.lcssa40.i, i64 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #12, !noalias !231
  unreachable

.split166.us.i.i:                                 ; preds = %bb.d
  br i1 %i.l, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.o:                                             ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !225, !noalias !223, !noundef !5 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !225, !noalias !223, !noundef !5 ; 4 uses
  %.not.i.i = icmp ult i64 %i.cc, %i.ca
  br i1 %.not.i.i, label %bb.q, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread

bb.p:                                             ; preds = %bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !225, !noalias !223, !noundef !5 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, -1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !225, !noalias !223, !nonnull !5, !noundef !5 ; 8 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !225, !noalias !223, !noundef !5 ; 10 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !225, !noalias !223, !nonnull !5, !noundef !5 ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !225, !noalias !223, !noundef !5 ; 16 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.cq = add nsw i64 %i.co, -1                   ; 5 uses
  br i1 %i.cg, label %bb.ab, label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !225, !noalias !223, !nonnull !5, !noundef !5
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cu = load i8, ptr %i.ct, align 8, !alias.scope !225, !noalias !223, !noundef !5 ; 2 uses
  %i.cv = sub nuw i64 %i.ca, %i.cc                ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cc ; 2 uses
  %i.cx = icmp samesign ult i64 %i.cv, 16
  br i1 %i.cx, label %.lr.ph.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cy = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %i.cu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cw, i64 noundef range(i64 0, -9223372036854775808) %i.cv), !noalias !233 ; 2 uses
  %i.cz = extractvalue { i64, i64 } %i.cy, 0
  %i.da = extractvalue { i64, i64 } %i.cy, 1
  %i.db = trunc nuw i64 %i.cz to i1
  br i1 %i.db, label %.loopexit43.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread

.lr.ph.i.i.i:                                     ; preds = %bb.q, %bb.s
  %.sroa.04.011.i.i.i = phi i64 [ %i.df, %bb.s ], [ 0, %bb.q ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.04.011.i.i.i
  %i.dd = load i8, ptr %i.dc, align 1, !alias.scope !234, !noalias !233, !noundef !5
  %i.de = icmp eq i8 %i.dd, %i.cu
  br i1 %i.de, label %.loopexit43.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i
  %i.df = add nuw nsw i64 %.sroa.04.011.i.i.i, 1  ; 2 uses
  %exitcond.not.i7.i.i = icmp eq i64 %i.df, %i.cv
  br i1 %exitcond.not.i7.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread, label %.lr.ph.i.i.i

.loopexit43.i.i:                                  ; preds = %.lr.ph.i.i.i, %bb.r
  %.sroa.5.0.i.i.i = phi i64 [ %i.da, %bb.r ], [ %.sroa.04.011.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.dg = icmp ult i64 %.sroa.5.0.i.i.i, %i.cv
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = add nuw i64 %i.cc, 1
  %i.di = add i64 %i.dh, %.sroa.5.0.i.i.i
  br label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6

bb.t:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %.promoted.i.i.i = load i64, ptr %i.cp, align 8, !alias.scope !238, !noalias !223 ; 2 uses
  %i.dj = add i64 %.promoted.i.i.i, %i.cq         ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.ck
  br i1 %i.dk, label %.lr.ph.i8.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread

.lr.ph.i8.i.i:                                    ; preds = %bb.t
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !238, !noalias !223, !noundef !5
  %i.dn = load i64, ptr %i.cd, align 8, !alias.scope !238, !noalias !223 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !238, !noalias !223 ; 2 uses
  %i.dq = sub i64 %i.co, %i.dp
  %invariant.op = sub i64 1, %i.dn
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.w, %.lr.ph.i8.i.i
  %.sink70.i.i25.i = phi i64 [ %.sink70.i.i.i, %bb.w ], [ %i.cf, %.lr.ph.i8.i.i ] ; 3 uses
  %.sink71.i.i22.i = phi i64 [ %.sink71.i.i.i, %bb.w ], [ %.promoted.i.i.i, %.lr.ph.i8.i.i ] ; 6 uses
  %i.dr = phi i64 [ %i.ea, %bb.w ], [ %i.dj, %.lr.ph.i8.i.i ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !alias.scope !236, !noalias !233, !noundef !5
  %i.du = and i8 %i.dt, 63
  %i.dv = zext nneg i8 %i.du to i64
  %i.dw = shl nuw i64 1, %i.dv
  %i.dx = and i64 %i.dw, %i.dm
  %.not.i9.i.i = icmp eq i64 %i.dx, 0
  br i1 %.not.i9.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.split.i.i.i
  %i.dy = add i64 %.sink71.i.i22.i, %i.co
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph.split.i.i.i
  %..i.i10.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sink70.i.i25.i, i64 %i.dn) ; 2 uses
  %i.dz = icmp ult i64 %..i.i10.i.i, %i.co
  br i1 %i.dz, label %.lr.ph, label %.preheader36.i.i.i.preheader

bb.w:                                             ; preds = %bb.aa, %bb.z, %bb.u
  %.sink71.i.i.i = phi i64 [ %i.ew, %bb.aa ], [ %i.ev, %bb.z ], [ %i.dy, %bb.u ] ; 2 uses
  %.sink70.i.i.i = phi i64 [ 0, %bb.aa ], [ %i.dq, %bb.z ], [ 0, %bb.u ]
  %i.ea = add i64 %.sink71.i.i.i, %i.cq           ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.ck
  br i1 %i.eb, label %.lr.ph.split.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread

bb.x:                                             ; preds = %.lr.ph
  %i.ec = add nuw nsw i64 %.sroa.04.0.i.i.i84, 1  ; 2 uses
  %i.ed = icmp ult i64 %i.ec, %i.co
  br i1 %i.ed, label %.lr.ph, label %.preheader36.i.i.i.preheader

.preheader36.i.i.i.preheader:                     ; preds = %bb.x, %bb.v
  %i.ee = icmp ult i64 %.sink70.i.i25.i, %i.dn
  br i1 %i.ee, label %.lr.ph86, label %.split.us.i11.i.i

.lr.ph:                                           ; preds = %bb.v, %bb.x
  %.sroa.04.0.i.i.i84 = phi i64 [ %i.ec, %bb.x ], [ %..i.i10.i.i, %bb.v ] ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.sroa.04.0.i.i.i84
  %i.eg = load i8, ptr %i.ef, align 1, !alias.scope !237, !noalias !233, !noundef !5
  %i.eh = add i64 %.sroa.04.0.i.i.i84, %.sink71.i.i22.i ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.ck
  tail call void @llvm.assume(i1 %i.ei)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.eh
  %i.ek = load i8, ptr %i.ej, align 1, !alias.scope !236, !noalias !233, !noundef !5
  %.not21.i.i.i = icmp eq i8 %i.eg, %i.ek
  br i1 %.not21.i.i.i, label %bb.x, label %bb.aa

.preheader36.i.i.i:                               ; preds = %bb.y
  %i.el = icmp ult i64 %.sink70.i.i25.i, %i.en
  br i1 %i.el, label %.lr.ph86, label %.split.us.i11.i.i

.split.us.i11.i.i:                                ; preds = %.preheader36.i.i.i.preheader, %.preheader36.i.i.i
  %i.em = add i64 %.sink71.i.i22.i, %i.co
  br label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6

.lr.ph86:                                         ; preds = %.preheader36.i.i.i.preheader, %.preheader36.i.i.i
  %.sroa.2.0.i.i.i85 = phi i64 [ %i.en, %.preheader36.i.i.i ], [ %i.dn, %.preheader36.i.i.i.preheader ]
  %i.en = add i64 %.sroa.2.0.i.i.i85, -1          ; 6 uses
  %i.eo = icmp ult i64 %i.en, %i.co
  br i1 %i.eo, label %bb.y, label %.split32.us.i.i.i

bb.y:                                             ; preds = %.lr.ph86
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.en
  %i.eq = load i8, ptr %i.ep, align 1, !alias.scope !237, !noalias !233, !noundef !5
  %i.er = add i64 %i.en, %.sink71.i.i22.i         ; 2 uses
  %i.es = icmp ult i64 %i.er, %i.ck
  tail call void @llvm.assume(i1 %i.es)
  %i.et = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.er
  %i.eu = load i8, ptr %i.et, align 1, !alias.scope !236, !noalias !233, !noundef !5
  %.not20.i.i.i = icmp eq i8 %i.eq, %i.eu
  br i1 %.not20.i.i.i, label %.preheader36.i.i.i, label %bb.z

.split32.us.i.i.i:                                ; preds = %.lr.ph86
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.en, i64 noundef range(i64 0, -9223372036854775808) %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #12, !noalias !239
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.ev = add i64 %.sink71.i.i22.i, %i.dp
  br label %bb.w

bb.aa:                                            ; preds = %.lr.ph
  %.reass.i.reass.i.reass.reass = add i64 %.sink71.i.i22.i, %invariant.op
  %i.ew = add i64 %.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i84
  br label %bb.w

bb.ab:                                            ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %.promoted.i12.i.i = load i64, ptr %i.cp, align 8, !alias.scope !243, !noalias !223 ; 3 uses
  %i.ex = add i64 %.promoted.i12.i.i, %i.cq       ; 3 uses
  %i.ey = icmp ult i64 %i.ex, %i.ck
  br i1 %i.ey, label %.lr.ph.i15.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread

.lr.ph.i15.i.i:                                   ; preds = %bb.ab
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !243, !noalias !223, !noundef !5 ; 2 uses
  %i.fb = load i64, ptr %i.cd, align 8, !alias.scope !243, !noalias !223
  %.fr215.i.i = freeze i64 %i.fb                  ; 10 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.fd = load i64, ptr %i.fc, align 8, !alias.scope !243, !noalias !223
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr215.i.i, i64 range(i64 0, -9223372036854775808) %i.co) ; 2 uses
  %i.fe = add i64 %.fr215.i.i, -1                 ; 2 uses
  %.first_iter.i16.i.i = icmp ult i64 %i.fe, %i.co
  %reass.sub95.i = sub i64 1, %.fr215.i.i         ; 2 uses
  br i1 %.first_iter.i16.i.i, label %.lr.ph.split.us.i.i.i.us.preheader, label %.lr.ph.split.us.i.i.i.preheader

.lr.ph.split.us.i.i.i.preheader:                  ; preds = %.lr.ph.i15.i.i
  %exitcond.not.i17.i.i88.not = icmp ult i64 %.fr215.i.i, %i.co
  br label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i.us.preheader:               ; preds = %.lr.ph.i15.i.i
  %exitcond.not.i17.i.i.us93.not = icmp ult i64 %.fr215.i.i, %i.co
  %.not34.i.us.i.i.us96 = icmp eq i64 %.fr215.i.i, 0
  br label %.lr.ph.split.us.i.i.i.us

.lr.ph.split.us.i.i.i.us:                         ; preds = %.lr.ph.split.us.i.i.i.us.preheader, %bb.ae
  %.sink.i18.i28.i.us = phi i64 [ %.sink.i18.i.i.us, %bb.ae ], [ %.promoted.i12.i.i, %.lr.ph.split.us.i.i.i.us.preheader ] ; 7 uses
  %i.ff = phi i64 [ %i.gd, %bb.ae ], [ %i.ex, %.lr.ph.split.us.i.i.i.us.preheader ]
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !alias.scope !241, !noalias !233, !noundef !5
  %i.fi = and i8 %i.fh, 63
  %i.fj = zext nneg i8 %i.fi to i64
  %i.fk = shl nuw i64 1, %i.fj
  %i.fl = and i64 %i.fk, %i.fa
  %.not.us.i.i.i.us = icmp eq i64 %i.fl, 0
  br i1 %.not.us.i.i.i.us, label %bb.ad, label %.preheader35.i.i.i.us.preheader

.preheader35.i.i.i.us.preheader:                  ; preds = %.lr.ph.split.us.i.i.i.us
  br i1 %exitcond.not.i17.i.i.us93.not, label %.lr.ph95, label %.preheader.i19.us.i.i.us.preheader

.preheader35.i.i.i.us:                            ; preds = %.lr.ph95
  %i.fm = add i64 %.sroa.04.0.us.i.i.i.us94, 1    ; 2 uses
  %exitcond.not.i17.i.i.us = icmp eq i64 %i.fm, %umax.i.i.i
  br i1 %exitcond.not.i17.i.i.us, label %.preheader.i19.us.i.i.us.preheader, label %.lr.ph95

.preheader.i19.us.i.i.us.preheader:               ; preds = %.preheader35.i.i.i.us, %.preheader35.i.i.i.us.preheader
  br i1 %.not34.i.us.i.i.us96, label %.split.us.i21.i.i, label %.lr.ph98

.lr.ph95:                                         ; preds = %.preheader35.i.i.i.us.preheader, %.preheader35.i.i.i.us
  %.sroa.04.0.us.i.i.i.us94 = phi i64 [ %i.fm, %.preheader35.i.i.i.us ], [ %.fr215.i.i, %.preheader35.i.i.i.us.preheader ] ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.sroa.04.0.us.i.i.i.us94
  %i.fo = load i8, ptr %i.fn, align 1, !alias.scope !242, !noalias !233, !noundef !5
  %i.fp = add i64 %.sroa.04.0.us.i.i.i.us94, %.sink.i18.i28.i.us ; 2 uses
  %i.fq = icmp ult i64 %i.fp, %i.ck
  tail call void @llvm.assume(i1 %i.fq)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.fp
  %i.fs = load i8, ptr %i.fr, align 1, !alias.scope !241, !noalias !233, !noundef !5
  %.not21.us.i.i.i.us = icmp eq i8 %i.fo, %i.fs
  br i1 %.not21.us.i.i.i.us, label %.preheader35.i.i.i.us, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph95
  %.reass282.i.reass.i.us = add i64 %reass.sub95.i, %.sink.i18.i28.i.us
  %i.ft = add i64 %.reass282.i.reass.i.us, %.sroa.04.0.us.i.i.i.us94
  br label %bb.ae

.preheader.i19.us.i.i.us:                         ; preds = %.lr.ph98
  %.not34.i.us.i.i.us = icmp eq i64 %i.fu, 0
  br i1 %.not34.i.us.i.i.us, label %.split.us.i21.i.i, label %.lr.ph98

.lr.ph98:                                         ; preds = %.preheader.i19.us.i.i.us.preheader, %.preheader.i19.us.i.i.us
  %.sroa.2.0.us.i.us.i.i.us97 = phi i64 [ %i.fu, %.preheader.i19.us.i.i.us ], [ %.fr215.i.i, %.preheader.i19.us.i.i.us.preheader ]
  %i.fu = add i64 %.sroa.2.0.us.i.us.i.i.us97, -1 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !242, !noalias !233, !noundef !5
  %i.fx = add i64 %i.fu, %.sink.i18.i28.i.us      ; 2 uses
  %i.fy = icmp ult i64 %i.fx, %i.ck
  tail call void @llvm.assume(i1 %i.fy)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.fx
  %i.ga = load i8, ptr %i.fz, align 1, !alias.scope !241, !noalias !233, !noundef !5
  %.not20.us.i.us.i.i.us = icmp eq i8 %i.fw, %i.ga
  br i1 %.not20.us.i.us.i.i.us, label %.preheader.i19.us.i.i.us, label %.split.us.i.i.us

.split.us.i.i.us:                                 ; preds = %.lr.ph98
  %i.gb = add i64 %.sink.i18.i28.i.us, %i.fd
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.split.us.i.i.i.us
  %i.gc = add i64 %.sink.i18.i28.i.us, %i.co
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.split.us.i.i.us, %bb.ac
  %.sink.i18.i.i.us = phi i64 [ %i.gc, %bb.ad ], [ %i.ft, %bb.ac ], [ %i.gb, %.split.us.i.i.us ] ; 2 uses
  %i.gd = add i64 %.sink.i18.i.i.us, %i.cq        ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.ck
  br i1 %i.ge, label %.lr.ph.split.us.i.i.i.us, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.split.us.i.i.i.preheader, %bb.ah
  %.sink.i18.i28.i = phi i64 [ %.sink.i18.i.i, %bb.ah ], [ %.promoted.i12.i.i, %.lr.ph.split.us.i.i.i.preheader ] ; 4 uses
  %i.gf = phi i64 [ %i.gv, %bb.ah ], [ %i.ex, %.lr.ph.split.us.i.i.i.preheader ]
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !alias.scope !241, !noalias !233, !noundef !5
  %i.gi = and i8 %i.gh, 63
  %i.gj = zext nneg i8 %i.gi to i64
  %i.gk = shl nuw i64 1, %i.gj
  %i.gl = and i64 %i.gk, %i.fa
  %.not.us.i.i.i = icmp eq i64 %i.gl, 0
  br i1 %.not.us.i.i.i, label %bb.ag, label %.preheader35.i.i.i.preheader

.preheader35.i.i.i.preheader:                     ; preds = %.lr.ph.split.us.i.i.i
  br i1 %exitcond.not.i17.i.i88.not, label %.lr.ph90, label %.preheader.i19.i.i

.preheader35.i.i.i:                               ; preds = %.lr.ph90
  %i.gm = add i64 %.sroa.04.0.us.i.i.i89, 1       ; 2 uses
  %exitcond.not.i17.i.i = icmp eq i64 %i.gm, %umax.i.i.i
  br i1 %exitcond.not.i17.i.i, label %.preheader.i19.i.i, label %.lr.ph90

.lr.ph90:                                         ; preds = %.preheader35.i.i.i.preheader, %.preheader35.i.i.i
  %.sroa.04.0.us.i.i.i89 = phi i64 [ %i.gm, %.preheader35.i.i.i ], [ %.fr215.i.i, %.preheader35.i.i.i.preheader ] ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.sroa.04.0.us.i.i.i89
  %i.go = load i8, ptr %i.gn, align 1, !alias.scope !242, !noalias !233, !noundef !5
  %i.gp = add i64 %.sroa.04.0.us.i.i.i89, %.sink.i18.i28.i ; 2 uses
  %i.gq = icmp ult i64 %i.gp, %i.ck
  tail call void @llvm.assume(i1 %i.gq)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.gp
  %i.gs = load i8, ptr %i.gr, align 1, !alias.scope !241, !noalias !233, !noundef !5
  %.not21.us.i.i.i = icmp eq i8 %i.go, %i.gs
  br i1 %.not21.us.i.i.i, label %.preheader35.i.i.i, label %bb.af

.preheader.i19.i.i:                               ; preds = %.preheader35.i.i.i.preheader, %.preheader35.i.i.i
  %.not34.i.i.i = icmp eq i64 %.fr215.i.i, 0
  br i1 %.not34.i.i.i, label %.split.us.i21.i.i, label %.split32.us.i20.i.i

.split32.us.i20.i.i:                              ; preds = %.preheader.i19.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.fe, i64 noundef range(i64 0, -9223372036854775808) %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #12, !noalias !244
  unreachable

bb.af:                                            ; preds = %.lr.ph90
  %.reass282.i.reass.i = add i64 %reass.sub95.i, %.sink.i18.i28.i
  %i.gt = add i64 %.reass282.i.reass.i, %.sroa.04.0.us.i.i.i89
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.split.us.i.i.i
  %i.gu = add i64 %.sink.i18.i28.i, %i.co
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sink.i18.i.i = phi i64 [ %i.gu, %bb.ag ], [ %i.gt, %bb.af ] ; 2 uses
  %i.gv = add i64 %.sink.i18.i.i, %i.cq           ; 2 uses
  %i.gw = icmp ult i64 %i.gv, %i.ck
  br i1 %i.gw, label %.lr.ph.split.us.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread

.split.us.i21.i.i:                                ; preds = %.preheader.i19.us.i.i.us.preheader, %.preheader.i19.us.i.i.us, %.preheader.i19.i.i
  %.sink.i18.i28.i16 = phi i64 [ %.sink.i18.i28.i, %.preheader.i19.i.i ], [ %.sink.i18.i28.i.us, %.preheader.i19.us.i.i.us ], [ %.sink.i18.i28.i.us, %.preheader.i19.us.i.i.us.preheader ]
  %i.gx = add i64 %.sink.i18.i28.i16, %i.co
  br label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6

_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread: ; preds = %bb.w, %bb.ah, %bb.ae, %bb.s, %.preheader.i.i, %.split166.us.i.i, %bb.o, %bb.r, %bb.t, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !223
  br label %bb.ai

_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.i.i, %bb.n, %.split.us.i21.i.i, %.split.us.i11.i.i, %.loopexit43.i.i, %.split166.us.i.i, %bb.m, %bb.g
  %.sroa.10.0.i.ph.pn = phi i64 [ %i.i, %.split166.us.i.i ], [ %i.gx, %.split.us.i21.i.i ], [ %.promoted157.i.i, %bb.g ], [ %i.i, %bb.m ], [ %i.di, %.loopexit43.i.i ], [ %i.em, %.split.us.i11.i.i ], [ %i.bh, %bb.n ], [ %i.bh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.i.i ], [ %i.bh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.i ], [ %i.bh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !223
  %i.gy = sub nuw i64 %.8.val, %.sroa.10.0.i.ph.pn
  %i.gz = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.10.0.i.ph.pn
  br label %bb.ai

bb.ai:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6
  %.sroa.3.0 = phi i64 [ %i.gy, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6 ], [ %.8.val, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread ]
  %.sroa.0.0 = phi ptr [ %i.gz, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6 ], [ %.0.val, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread ]
  %i.ha = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.hb = insertvalue { ptr, i64 } %i.ha, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.hb
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsm_NtCs3oUPovFnLWP_4core5arrayAlj1_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitReENCINvMBN_BK_10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB22_8Captures7extractKBz_E0E0ECs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), i32 noundef, ptr noalias nofree noundef align 8 dereferenceable(112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsm_NtCs3oUPovFnLWP_4core5arrayAlj2_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitReENCINvMBN_BK_10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB22_8Captures7extractKBz_E0E0ECs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(112)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_11sort_by_keyReNCNvB16_9configure0E0EB18_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #8

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2A_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keyReNCNvBY_9configure0E0EB10_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 192153584101141163), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 192153584101141163), i1 noundef zeroext, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2r_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), i1 noundef zeroext, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1s_11sort_by_keyReNCNvB1u_9configure0E0EB1w_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 192153584101141163), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 192153584101141163), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1s_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2Y_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { noinline noreturn }
attributes #13 = { inlinehint }
attributes #14 = { noinline }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!5 = !{}
!6 = !{i64 0, i64 2}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = !{!"branch_weights", i32 1073205, i32 2146410443}
!9 = !{!"branch_weights", i32 2146410443, i32 1073205}
!10 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!11 = !{!"branch_weights", i32 4001, i32 4000000}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = distinct !{!13, i1 true, !"_RNvXsI_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatNtNtCslhCKBzvegwQ_10regex_lite6string17SubCaptureMatchesINtNtBb_6option8IntoIterNtB1d_5MatchEENtNtNtB9_6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli"}
!14 = distinct !{!14, !13, !"_RNvXsI_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatNtNtCslhCKBzvegwQ_10regex_lite6string17SubCaptureMatchesINtNtBb_6option8IntoIterNtB1d_5MatchEENtNtNtB9_6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!15 = distinct !{!15, !13, !"_RNvXsI_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatNtNtCslhCKBzvegwQ_10regex_lite6string17SubCaptureMatchesINtNtBb_6option8IntoIterNtB1d_5MatchEENtNtNtB9_6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!16 = distinct !{!16, i1 true, !"_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseNtNtCslhCKBzvegwQ_10regex_lite6string17SubCaptureMatchesEINtB5_8FuseImplBY_E4nextCs3tZ2SXJA1qv_8jiff_cli"}
!17 = distinct !{!17, !16, !"_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseNtNtCslhCKBzvegwQ_10regex_lite6string17SubCaptureMatchesEINtB5_8FuseImplBY_E4nextCs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!18 = distinct !{!18, !16, !"_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseNtNtCslhCKBzvegwQ_10regex_lite6string17SubCaptureMatchesEINtB5_8FuseImplBY_E4nextCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!19 = distinct !{!19, i1 true, !"_RNvXsr_NtCslhCKBzvegwQ_10regex_lite6stringNtB5_17SubCaptureMatchesNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next"}
!20 = distinct !{!20, !19, !"_RNvXsr_NtCslhCKBzvegwQ_10regex_lite6stringNtB5_17SubCaptureMatchesNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next: argument 1"}
!21 = distinct !{!21, !19, !"_RNvXsr_NtCslhCKBzvegwQ_10regex_lite6stringNtB5_17SubCaptureMatchesNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next: argument 0"}
!22 = distinct !{!22, i1 true, !"_RNvMsf_NtCslhCKBzvegwQ_10regex_lite6stringNtB5_16CaptureLocations3get"}
!23 = distinct !{!23, !22, !"_RNvMsf_NtCslhCKBzvegwQ_10regex_lite6stringNtB5_16CaptureLocations3get: argument 0"}
!24 = distinct !{!24, i1 true, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCslhCKBzvegwQ_10regex_lite3nfa12CaptureNamesENtNtNtB8_6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli"}
!25 = distinct !{!25, !24, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCslhCKBzvegwQ_10regex_lite3nfa12CaptureNamesENtNtNtB8_6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!26 = distinct !{!26, i1 true, !"_RNvXs1_NtCslhCKBzvegwQ_10regex_lite3nfaNtB5_12CaptureNamesNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next"}
!27 = distinct !{!27, !26, !"_RNvXs1_NtCslhCKBzvegwQ_10regex_lite3nfaNtB5_12CaptureNamesNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next: argument 1"}
!28 = distinct !{!28, i1 true, !"_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range"}
!29 = distinct !{!29, !28, !"_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range: argument 0"}
!30 = distinct !{!30, i1 true, !"_RNvMs7_NtCslhCKBzvegwQ_10regex_lite6stringNtB5_5Match6as_str"}
!31 = distinct !{!31, !30, !"_RNvMs7_NtCslhCKBzvegwQ_10regex_lite6stringNtB5_5Match6as_str: argument 0"}
!32 = !{!14}
!33 = !{!21, !20, !18, !17, !15, !14}
!34 = !{!17}
!35 = !{!20}
!36 = !{!23, !21, !20, !18, !17, !15, !14}
!37 = !{!27, !25, !20, !17, !14}
!38 = !{!25, !20, !17, !14}
!39 = !{!29}
!40 = !{!31}
!41 = distinct !{!41, i1 true, !"_RNvXsI_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatNtNtCslhCKBzvegwQ_10regex_lite6string17SubCaptureMatchesINtNtBb_6option8IntoIterNtB1d_5MatchEENtNtNtB9_6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli"}
!42 = distinct !{!42, !41, !"_RNvXsI_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatNtNtCslhCKBzvegwQ_10regex_lite6string17SubCaptureMatchesINtNtBb_6option8IntoIterNtB1d_5MatchEENtNtNtB9_6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!43 = distinct !{!43, !41, !"_RNvXsI_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatNtNtCslhCKBzvegwQ_10regex_lite6string17SubCaptureMatchesINtNtBb_6option8IntoIterNtB1d_5MatchEENtNtNtB9_6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!44 = distinct !{!44, i1 true, !"_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseNtNtCslhCKBzvegwQ_10regex_lite6string17SubCaptureMatchesEINtB5_8FuseImplBY_E4nextCs3tZ2SXJA1qv_8jiff_cli"}
!45 = distinct !{!45, !44, !"_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseNtNtCslhCKBzvegwQ_10regex_lite6string17SubCaptureMatchesEINtB5_8FuseImplBY_E4nextCs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!46 = distinct !{!46, !44, !"_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseNtNtCslhCKBzvegwQ_10regex_lite6string17SubCaptureMatchesEINtB5_8FuseImplBY_E4nextCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!47 = distinct !{!47, i1 true, !"_RNvXsr_NtCslhCKBzvegwQ_10regex_lite6stringNtB5_17SubCaptureMatchesNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next"}
!48 = distinct !{!48, !47, !"_RNvXsr_NtCslhCKBzvegwQ_10regex_lite6stringNtB5_17SubCaptureMatchesNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next: argument 1"}
!49 = distinct !{!49, !47, !"_RNvXsr_NtCslhCKBzvegwQ_10regex_lite6stringNtB5_17SubCaptureMatchesNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next: argument 0"}
!50 = distinct !{!50, i1 true, !"_RNvMsf_NtCslhCKBzvegwQ_10regex_lite6stringNtB5_16CaptureLocations3get"}
!51 = distinct !{!51, !50, !"_RNvMsf_NtCslhCKBzvegwQ_10regex_lite6stringNtB5_16CaptureLocations3get: argument 0"}
!52 = distinct !{!52, i1 true, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCslhCKBzvegwQ_10regex_lite3nfa12CaptureNamesENtNtNtB8_6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli"}
!53 = distinct !{!53, !52, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCslhCKBzvegwQ_10regex_lite3nfa12CaptureNamesENtNtNtB8_6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!54 = distinct !{!54, i1 true, !"_RNvXs1_NtCslhCKBzvegwQ_10regex_lite3nfaNtB5_12CaptureNamesNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next"}
!55 = distinct !{!55, !54, !"_RNvXs1_NtCslhCKBzvegwQ_10regex_lite3nfaNtB5_12CaptureNamesNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next: argument 1"}
!56 = distinct !{!56, i1 true, !"_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range"}
!57 = distinct !{!57, !56, !"_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range: argument 0"}
!58 = distinct !{!58, i1 true, !"_RNvMs7_NtCslhCKBzvegwQ_10regex_lite6stringNtB5_5Match6as_str"}
!59 = distinct !{!59, !58, !"_RNvMs7_NtCslhCKBzvegwQ_10regex_lite6stringNtB5_5Match6as_str: argument 0"}
!60 = !{!42}
!61 = !{!49, !48, !46, !45, !43, !42}
!62 = !{!45}
!63 = !{!48}
!64 = !{!51, !49, !48, !46, !45, !43, !42}
!65 = !{!55, !53, !48, !45, !42}
!66 = !{!53, !48, !45, !42}
!67 = !{!57}
!68 = !{!59}
!69 = distinct !{!69, i1 true, !"_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot12choose_pivotNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyReNCNvB17_9configure0E0EB19_"}
!70 = distinct !{!70, !69, !"_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot12choose_pivotNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyReNCNvB17_9configure0E0EB19_: argument 0"}
!71 = distinct !{!71, !69, !"_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot12choose_pivotNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyReNCNvB17_9configure0E0EB19_: argument 1"}
!72 = distinct !{!72, i1 true, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli"}
!73 = distinct !{!73, !72, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!74 = distinct !{!74, !72, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!75 = distinct !{!75, i1 true, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp"}
!76 = distinct !{!76, !75, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 1"}
!77 = distinct !{!77, !75, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 0"}
!78 = distinct !{!78, i1 true, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!79 = distinct !{!79, !78, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!80 = distinct !{!80, !78, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!81 = distinct !{!81, i1 true, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli"}
!82 = distinct !{!82, !81, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!83 = distinct !{!83, !81, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!84 = distinct !{!84, i1 true, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp"}
!85 = distinct !{!85, !84, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 1"}
!86 = distinct !{!86, !84, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 0"}
!87 = distinct !{!87, i1 true, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!88 = distinct !{!88, !87, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!89 = distinct !{!89, !87, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!90 = distinct !{!90, i1 true, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli"}
!91 = distinct !{!91, !90, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!92 = distinct !{!92, !90, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!93 = distinct !{!93, i1 true, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp"}
!94 = distinct !{!94, !93, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 1"}
!95 = distinct !{!95, !93, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 0"}
!96 = distinct !{!96, i1 true, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!97 = distinct !{!97, !96, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!98 = distinct !{!98, !96, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!99 = distinct !{!99, i1 true, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli"}
!100 = distinct !{!100, !99, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!101 = distinct !{!101, !99, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!102 = distinct !{!102, i1 true, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp"}
!103 = distinct !{!103, !102, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 1"}
!104 = distinct !{!104, !102, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 0"}
!105 = distinct !{!105, i1 true, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!106 = distinct !{!106, !105, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!107 = distinct !{!107, !105, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!108 = distinct !{!108, i1 true, !"_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_11sort_by_keyReNCNvB1f_9configure0E0EB1h_"}
!109 = distinct !{!109, !108, !"_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_11sort_by_keyReNCNvB1f_9configure0E0EB1h_: argument 0"}
!110 = distinct !{!110, !108, !"_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_11sort_by_keyReNCNvB1f_9configure0E0EB1h_: argument 1"}
!111 = distinct !{!111, i1 true, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli"}
!112 = distinct !{!112, !111, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!113 = distinct !{!113, !111, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!114 = distinct !{!114, i1 true, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp"}
!115 = distinct !{!115, !114, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 1"}
!116 = distinct !{!116, !114, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 0"}
!117 = distinct !{!117, i1 true, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!118 = distinct !{!118, !117, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!119 = distinct !{!119, !117, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!120 = distinct !{!120, i1 true, !"_RNvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageE13partition_oneB1l_"}
!121 = distinct !{!121, !120, !"_RNvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageE13partition_oneB1l_: argument 0"}
!122 = distinct !{!122, i1 true, !"_RNvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageE13partition_oneB1l_"}
!123 = distinct !{!123, !122, !"_RNvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageE13partition_oneB1l_: argument 0"}
!124 = distinct !{!124, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage12split_at_mutBy_"}
!125 = distinct !{!125, !124, !"_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage12split_at_mutBy_: argument 1"}
!126 = distinct !{!126, !124, !"_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage12split_at_mutBy_: argument 0"}
!127 = distinct !{!127, i1 true, !"_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_11sort_by_keyReNCNvB1f_9configure0E0E0EB1h_"}
!128 = distinct !{!128, !127, !"_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_11sort_by_keyReNCNvB1f_9configure0E0E0EB1h_: argument 0"}
!129 = distinct !{!129, !127, !"_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_11sort_by_keyReNCNvB1f_9configure0E0E0EB1h_: argument 1"}
!130 = distinct !{!130, i1 true, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli"}
!131 = distinct !{!131, !130, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!132 = distinct !{!132, !130, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!133 = distinct !{!133, i1 true, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp"}
!134 = distinct !{!134, !133, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 1"}
!135 = distinct !{!135, !133, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 0"}
!136 = distinct !{!136, i1 true, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!137 = distinct !{!137, !136, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!138 = distinct !{!138, !136, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!139 = distinct !{!139, i1 true, !"_RNvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageE13partition_oneB1l_"}
!140 = distinct !{!140, !139, !"_RNvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageE13partition_oneB1l_: argument 0"}
!141 = distinct !{!141, i1 true, !"_RNvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageE13partition_oneB1l_"}
!142 = distinct !{!142, !141, !"_RNvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageE13partition_oneB1l_: argument 0"}
!143 = !{!70}
!144 = !{!70, !71}
!145 = !{!80, !79, !77, !76, !74, !73}
!146 = !{!89, !88, !86, !85, !83, !82}
!147 = !{!98, !97, !95, !94, !92, !91}
!148 = !{!107, !106, !104, !103, !101, !100}
!149 = !{!109}
!150 = !{!110}
!151 = !{!109, !110}
!152 = !{!119, !118, !116, !115, !113, !112}
!153 = !{!121}
!154 = !{!123}
!155 = !{!126, !125}
!156 = !{!128}
!157 = !{!129}
!158 = !{!128, !129}
!159 = !{!138, !137, !135, !134, !132, !131}
!160 = !{!140}
!161 = !{!142}
!162 = distinct !{!162, i1 true, !"_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot12choose_pivotTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2B_"}
!163 = distinct !{!163, !162, !"_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot12choose_pivotTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2B_: argument 0"}
!164 = distinct !{!164, !162, !"_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot12choose_pivotTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2B_: argument 1"}
!165 = distinct !{!165, i1 true, !"_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2J_"}
!166 = distinct !{!166, !165, !"_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2J_: argument 0"}
!167 = distinct !{!167, !165, !"_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2J_: argument 1"}
!168 = distinct !{!168, i1 true, !"_RNvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEE13partition_oneCs3tZ2SXJA1qv_8jiff_cli"}
!169 = distinct !{!169, !168, !"_RNvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEE13partition_oneCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!170 = distinct !{!170, i1 true, !"_RNvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEE13partition_oneCs3tZ2SXJA1qv_8jiff_cli"}
!171 = distinct !{!171, !170, !"_RNvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEE13partition_oneCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!172 = distinct !{!172, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE12split_at_mutCs3tZ2SXJA1qv_8jiff_cli"}
!173 = distinct !{!173, !172, !"_RNvMNtCs3oUPovFnLWP_4core5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE12split_at_mutCs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!174 = distinct !{!174, !172, !"_RNvMNtCs3oUPovFnLWP_4core5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE12split_at_mutCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!175 = distinct !{!175, i1 true, !"_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0EB35_"}
!176 = distinct !{!176, !175, !"_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0EB35_: argument 0"}
!177 = distinct !{!177, !175, !"_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0E0EB35_: argument 1"}
!178 = distinct !{!178, i1 true, !"_RNvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEE13partition_oneCs3tZ2SXJA1qv_8jiff_cli"}
!179 = distinct !{!179, !178, !"_RNvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEE13partition_oneCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!180 = distinct !{!180, i1 true, !"_RNvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEE13partition_oneCs3tZ2SXJA1qv_8jiff_cli"}
!181 = distinct !{!181, !180, !"_RNvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEE13partition_oneCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!182 = !{!163}
!183 = !{!163, !164}
!184 = !{!166}
!185 = !{!167}
!186 = !{!166, !167}
!187 = !{!169}
!188 = !{!171}
!189 = !{!174, !173}
!190 = !{!176}
!191 = !{!177}
!192 = !{!176, !177}
!193 = !{!179}
!194 = !{!181}
!195 = distinct !{!195, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli"}
!196 = distinct !{!196, !195, !"_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!197 = distinct !{!197, !195, !"_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!198 = distinct !{!198, i1 true, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match"}
!199 = distinct !{!199, !198, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 1"}
!200 = distinct !{!200, i1 true, !"_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!201 = distinct !{!201, !200, !"_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!202 = distinct !{!202, !198, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 0"}
!203 = distinct !{!203, i1 true, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!204 = distinct !{!204, !203, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!205 = distinct !{!205, !203, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0:Peel0"}
!206 = distinct !{!206, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3tZ2SXJA1qv_8jiff_cli"}
!207 = distinct !{!207, !206, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!208 = distinct !{!208, i1 true, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!209 = distinct !{!209, !208, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!210 = distinct !{!210, !208, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!211 = distinct !{!211, i1 true, !"_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchr"}
!212 = distinct !{!212, !211, !"_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchr: argument 0"}
!213 = distinct !{!213, i1 true, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli"}
!214 = distinct !{!214, !213, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!215 = distinct !{!215, !213, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 2"}
!216 = distinct !{!216, !213, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 3"}
!217 = distinct !{!217, !213, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!218 = distinct !{!218, i1 true, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli"}
!219 = distinct !{!219, !218, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!220 = distinct !{!220, !218, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 2"}
!221 = distinct !{!221, !218, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 3"}
!222 = distinct !{!222, !218, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!223 = !{!197, !196}
!224 = !{!197}
!225 = !{!199}
!226 = !{i64 0, i64 3}
!227 = !{i8 0, i8 2}
!228 = !{!201}
!229 = !{!205, !204, !202, !199, !197}
!230 = !{!207, !205, !204, !202, !199, !197}
!231 = !{!210, !209, !202, !199, !197}
!232 = !{!207, !210, !209, !202, !199, !197}
!233 = !{!202, !199, !197}
!234 = !{!212}
!235 = !{!214}
!236 = !{!215}
!237 = !{!216}
!238 = !{!214, !199}
!239 = !{!217, !214, !215, !216, !202, !199, !197}
!240 = !{!219}
!241 = !{!220}
!242 = !{!221}
!243 = !{!219, !199}
!244 = !{!222, !219, !220, !221, !202, !199, !197}
end_hunk_0
