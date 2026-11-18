Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_cli.jiff_cli.28936ee66da4cb41-cgu.08?download=true
inline.NumInlined: 129
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2s_:bb.a
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.g = mul nuw nsw i64 %..i, 24                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 3 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i
  %i.i = phi ptr [ %i.x, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i ], [ %i.h, %.critedge ] ; 2 uses
  %i.j = phi ptr [ %i.v, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i ], [ %i.e, %.critedge ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.m, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i ], [ %i.f, %.critedge ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -24 ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -24 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -24 ; 2 uses
  %i.n = getelementptr i8, ptr %i.i, i64 -16
  %.val12.i = load i64, ptr %i.n, align 8, !noalias !246, !noundef !6 ; 3 uses
  %i.o = getelementptr i8, ptr %i.j, i64 -16
  %.val14.i = load i64, ptr %i.o, align 8, !noalias !246, !noundef !6 ; 2 uses
  %i.p = icmp eq i64 %.val12.i, %.val14.i
  %i.q = icmp ult i64 %.val14.i, %.val12.i
  br i1 %i.p, label %bb.c, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i

bb.c:                                             ; preds = %.preheader
  %.val13.i = load ptr, ptr %i.k, align 8, !noalias !246, !nonnull !6, !noundef !6
  %.val.i = load ptr, ptr %i.l, align 8, !noalias !246, !nonnull !6, !noundef !6
  %i.r = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val13.i, i64 %.val12.i), !noalias !246
  %i.s = icmp sgt i32 %i.r, 0
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i: ; preds = %bb.c, %.preheader
  %.sroa.01.0.neg.i.i.i = phi i1 [ %i.s, %bb.c ], [ %i.q, %.preheader ] ; 3 uses
  %..i17 = select i1 %.sroa.01.0.neg.i.i.i, ptr %i.k, ptr %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %..i17, i64 24, i1 false), !noalias !246
  %i.t = xor i1 %.sroa.01.0.neg.i.i.i, true
  %i.u = zext i1 %i.t to i64
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.u ; 3 uses
  %i.w = zext i1 %.sroa.01.0.neg.i.i.i to i64
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.w ; 3 uses
  %i.y = icmp eq ptr %i.v, %0
  %i.z = icmp eq ptr %i.x, %2
  %or.cond.i = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2T_.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i19
  %i.aa = phi ptr [ %i.an, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i19 ], [ %0, %.critedge ] ; 2 uses
  %.sroa.0.02.i = phi ptr [ %i.am, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i19 ], [ %i.e, %.critedge ] ; 4 uses
  %i.ab = phi ptr [ %i.ak, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i19 ], [ %2, %.critedge ] ; 4 uses
  %i.ac = getelementptr i8, ptr %.sroa.0.02.i, i64 8
  %.sroa.0.0.val6.i = load i64, ptr %i.ac, align 8, !noalias !247, !noundef !6 ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 8
  %.val7.i = load i64, ptr %i.ad, align 8, !noalias !247, !noundef !6 ; 2 uses
  %i.ae = icmp eq i64 %.sroa.0.0.val6.i, %.val7.i
  %i.af = icmp ult i64 %.val7.i, %.sroa.0.0.val6.i
  br i1 %i.ae, label %bb.d, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i19

bb.d:                                             ; preds = %.lr.ph.i
  %.val.i22 = load ptr, ptr %i.ab, align 8, !noalias !247, !nonnull !6, !noundef !6
  %.sroa.0.0.val.i = load ptr, ptr %.sroa.0.02.i, align 8, !noalias !247, !nonnull !6, !noundef !6
  %i.ag = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val.i, ptr nonnull readonly %.val.i22, i64 %.sroa.0.0.val6.i), !noalias !247
  %i.ah = icmp sgt i32 %i.ag, 0
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i19

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i19: ; preds = %bb.d, %.lr.ph.i
  %.sroa.01.0.neg.i.i.i20 = phi i1 [ %i.ah, %bb.d ], [ %i.af, %.lr.ph.i ] ; 3 uses
  %i.ai = xor i1 %.sroa.01.0.neg.i.i.i20, true
  %.sroa.05.0.i = select i1 %.sroa.01.0.neg.i.i.i20, ptr %.sroa.0.02.i, ptr %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.0.i, i64 24, i1 false), !noalias !247
  %i.aj = zext i1 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.aj ; 3 uses
  %i.al = zext i1 %.sroa.01.0.neg.i.i.i20 to i64
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.02.i, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ao = icmp ne ptr %i.ak, %i.h
  %i.ap = icmp ne ptr %i.am, %i.f
  %or.cond.i21 = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond.i21, label %.lr.ph.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2T_.exit

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2T_.exit: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i19, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i
  %.sroa.13.0 = phi ptr [ %i.v, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i ], [ %i.an, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i19 ]
  %.sroa.7.0 = phi ptr [ %i.x, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i ], [ %i.h, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i19 ]
  %.sroa.0.0 = phi ptr [ %2, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i ], [ %i.ak, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i19 ] ; 2 uses
  %i.aq = ptrtoint ptr %.sroa.7.0 to i64
  %i.ar = ptrtoint ptr %.sroa.0.0 to i64
  %i.as = sub nuw i64 %i.aq, %i.ar
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.as, i1 false), !noalias !248
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2T_.exit
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !5, !alias.scope !251, !noundef !6 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !251
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !251
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !251
  %i.j = load i64, ptr %i.a, align 8, !range !252, !noalias !251, !noundef !6
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !253, !noalias !251, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !251
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #27
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !251, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !251
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !251
  %i.q = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !251
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvXNtNtCs8WPnInWCYsb_6anyhow7context3extNtCsgWT32ugvpwR_6lexopt5ErrorNtB3_8StdError11ext_contextReECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 3 uses
  %i.d = invoke noundef align 8 ptr @_RNvNtCs8WPnInWCYsb_6anyhow7nightly21request_ref_backtrace(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @3)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %i.c, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs2_NtCsaL1QbXo9JQH_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  %i.e = call noundef nonnull ptr @_RINvMNtCs8WPnInWCYsb_6anyhow5errorNtB5_5Error22construct_from_contextReNtCsgWT32ugvpwR_6lexopt5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e

bb.g:                                             ; preds = %bb.h
  resume { ptr, i32 } %lpad.thr_comm

bb.h:                                             ; preds = %bb.d, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) #25
          to label %bb.g unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr nonnull %.0.val, i64 %.8.val) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !281
  call void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.0.val, i64 noundef %.8.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 2), !noalias !282
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.b = load i64, ptr %i.a, align 8, !range !284, !alias.scope !283, !noalias !281, !noundef !6
  switch i64 %i.b, label %default.unreachable [
    i64 0, label %.preheader.i.i
    i64 1, label %bb.o
    i64 2, label %bb.p
  ]

.preheader.i.i:                                   ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.d = load i8, ptr %i.c, align 2, !range !285, !alias.scope !283, !noalias !281
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !283, !noalias !281, !nonnull !6 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !283, !noalias !281 ; 16 uses
  br i1 %i.e, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.promoted206.i.i = load i8, ptr %i.j, align 8, !alias.scope !283, !noalias !281
  %.promoted157.i.i = load i64, ptr %i.k, align 8, !alias.scope !283, !noalias !281 ; 13 uses
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
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !286, !noalias !287, !noundef !6
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.d, label %.split.us161.i.i

bb.d:                                             ; preds = %bb.c, %.split.i.i.us.i.peel.i, %.lr.ph.preheader.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 %.promoted157.i.i ; 4 uses
  %i.s = icmp samesign eq i64 %.promoted157.i.i, %i.i
  br i1 %i.s, label %.split166.us.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.r, align 1, !noalias !288, !noundef !6 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.f, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.peel.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.peel.i: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = and i8 %i.t, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = add nuw nsw i64 %.promoted157.i.i, 1
  %i.z = icmp samesign ne i64 %i.y, %i.i
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load i8, ptr %i.v, align 1, !noalias !288, !noundef !6
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
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !288, !noundef !6
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
  %i.au = load i8, ptr %i.ar, align 1, !noalias !288, !noundef !6
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
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !286, !noalias !289, !noundef !6
  %i.bm = icmp sgt i8 %i.bl, -65
  br i1 %i.bm, label %bb.m, label %.split.us161.i.i

bb.m:                                             ; preds = %bb.l, %.split.i.i.us.i.i, %.lr.ph.i.i
  %i.bn = icmp samesign eq i64 %i.bh, %i.i
  br i1 %i.bn, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bh
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !290, !noundef !6 ; 3 uses
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
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i, i64 noundef %.lcssa40.i, i64 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #28, !noalias !289
  unreachable

.split166.us.i.i:                                 ; preds = %bb.d
  br i1 %i.l, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.o:                                             ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !283, !noalias !281, !noundef !6 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !283, !noalias !281, !noundef !6 ; 4 uses
  %.not.i.i = icmp ult i64 %i.cc, %i.ca
  br i1 %.not.i.i, label %bb.q, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread

bb.p:                                             ; preds = %bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !283, !noalias !281, !noundef !6 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, -1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !283, !noalias !281, !nonnull !6, !noundef !6 ; 8 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !283, !noalias !281, !noundef !6 ; 10 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !283, !noalias !281, !nonnull !6, !noundef !6 ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !283, !noalias !281, !noundef !6 ; 16 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.cq = add nsw i64 %i.co, -1                   ; 5 uses
  br i1 %i.cg, label %bb.ab, label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !283, !noalias !281, !nonnull !6, !noundef !6
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cu = load i8, ptr %i.ct, align 8, !alias.scope !283, !noalias !281, !noundef !6 ; 2 uses
  %i.cv = sub nuw i64 %i.ca, %i.cc                ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cc ; 2 uses
  %i.cx = icmp samesign ult i64 %i.cv, 16
  br i1 %i.cx, label %.lr.ph.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cy = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %i.cu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cw, i64 noundef range(i64 0, -9223372036854775808) %i.cv), !noalias !291 ; 2 uses
  %i.cz = extractvalue { i64, i64 } %i.cy, 0
  %i.da = extractvalue { i64, i64 } %i.cy, 1
  %i.db = trunc nuw i64 %i.cz to i1
  br i1 %i.db, label %.loopexit43.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread

.lr.ph.i.i.i:                                     ; preds = %bb.q, %bb.s
  %.sroa.04.011.i.i.i = phi i64 [ %i.df, %bb.s ], [ 0, %bb.q ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.04.011.i.i.i
  %i.dd = load i8, ptr %i.dc, align 1, !alias.scope !292, !noalias !291, !noundef !6
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %.promoted.i.i.i = load i64, ptr %i.cp, align 8, !alias.scope !296, !noalias !281 ; 2 uses
  %i.dj = add i64 %.promoted.i.i.i, %i.cq         ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.ck
  br i1 %i.dk, label %.lr.ph.i8.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread

.lr.ph.i8.i.i:                                    ; preds = %bb.t
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !296, !noalias !281, !noundef !6
  %i.dn = load i64, ptr %i.cd, align 8, !alias.scope !296, !noalias !281 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !296, !noalias !281 ; 2 uses
  %i.dq = sub i64 %i.co, %i.dp
  %invariant.op = sub i64 1, %i.dn
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.w, %.lr.ph.i8.i.i
  %.sink70.i.i25.i = phi i64 [ %.sink70.i.i.i, %bb.w ], [ %i.cf, %.lr.ph.i8.i.i ] ; 3 uses
  %.sink71.i.i22.i = phi i64 [ %.sink71.i.i.i, %bb.w ], [ %.promoted.i.i.i, %.lr.ph.i8.i.i ] ; 6 uses
  %i.dr = phi i64 [ %i.ea, %bb.w ], [ %i.dj, %.lr.ph.i8.i.i ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !alias.scope !294, !noalias !291, !noundef !6
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
  %i.eg = load i8, ptr %i.ef, align 1, !alias.scope !295, !noalias !291, !noundef !6
  %i.eh = add i64 %.sroa.04.0.i.i.i84, %.sink71.i.i22.i ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.ck
  tail call void @llvm.assume(i1 %i.ei)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.eh
  %i.ek = load i8, ptr %i.ej, align 1, !alias.scope !294, !noalias !291, !noundef !6
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
  %i.eq = load i8, ptr %i.ep, align 1, !alias.scope !295, !noalias !291, !noundef !6
  %i.er = add i64 %i.en, %.sink71.i.i22.i         ; 2 uses
  %i.es = icmp ult i64 %i.er, %i.ck
  tail call void @llvm.assume(i1 %i.es)
  %i.et = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.er
  %i.eu = load i8, ptr %i.et, align 1, !alias.scope !294, !noalias !291, !noundef !6
  %.not20.i.i.i = icmp eq i8 %i.eq, %i.eu
  br i1 %.not20.i.i.i, label %.preheader36.i.i.i, label %bb.z

.split32.us.i.i.i:                                ; preds = %.lr.ph86
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.en, i64 noundef range(i64 0, -9223372036854775808) %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #28, !noalias !297
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.ev = add i64 %.sink71.i.i22.i, %i.dp
  br label %bb.w

bb.aa:                                            ; preds = %.lr.ph
  %.reass.i.reass.i.reass.reass = add i64 %.sink71.i.i22.i, %invariant.op
  %i.ew = add i64 %.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i84
  br label %bb.w

bb.ab:                                            ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %.promoted.i12.i.i = load i64, ptr %i.cp, align 8, !alias.scope !301, !noalias !281 ; 3 uses
  %i.ex = add i64 %.promoted.i12.i.i, %i.cq       ; 3 uses
  %i.ey = icmp ult i64 %i.ex, %i.ck
  br i1 %i.ey, label %.lr.ph.i15.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread

.lr.ph.i15.i.i:                                   ; preds = %bb.ab
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !301, !noalias !281, !noundef !6 ; 2 uses
  %i.fb = load i64, ptr %i.cd, align 8, !alias.scope !301, !noalias !281
  %.fr215.i.i = freeze i64 %i.fb                  ; 10 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.fd = load i64, ptr %i.fc, align 8, !alias.scope !301, !noalias !281
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
  %i.fh = load i8, ptr %i.fg, align 1, !alias.scope !299, !noalias !291, !noundef !6
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
  %i.fo = load i8, ptr %i.fn, align 1, !alias.scope !300, !noalias !291, !noundef !6
  %i.fp = add i64 %.sroa.04.0.us.i.i.i.us94, %.sink.i18.i28.i.us ; 2 uses
  %i.fq = icmp ult i64 %i.fp, %i.ck
  tail call void @llvm.assume(i1 %i.fq)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.fp
  %i.fs = load i8, ptr %i.fr, align 1, !alias.scope !299, !noalias !291, !noundef !6
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
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !300, !noalias !291, !noundef !6
  %i.fx = add i64 %i.fu, %.sink.i18.i28.i.us      ; 2 uses
  %i.fy = icmp ult i64 %i.fx, %i.ck
  tail call void @llvm.assume(i1 %i.fy)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.fx
  %i.ga = load i8, ptr %i.fz, align 1, !alias.scope !299, !noalias !291, !noundef !6
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
  %i.gh = load i8, ptr %i.gg, align 1, !alias.scope !299, !noalias !291, !noundef !6
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
  %i.go = load i8, ptr %i.gn, align 1, !alias.scope !300, !noalias !291, !noundef !6
  %i.gp = add i64 %.sroa.04.0.us.i.i.i89, %.sink.i18.i28.i ; 2 uses
  %i.gq = icmp ult i64 %i.gp, %i.ck
  tail call void @llvm.assume(i1 %i.gq)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.gp
  %i.gs = load i8, ptr %i.gr, align 1, !alias.scope !299, !noalias !291, !noundef !6
  %.not21.us.i.i.i = icmp eq i8 %i.go, %i.gs
  br i1 %.not21.us.i.i.i, label %.preheader35.i.i.i, label %bb.af

.preheader.i19.i.i:                               ; preds = %.preheader35.i.i.i.preheader, %.preheader35.i.i.i
  %.not34.i.i.i = icmp eq i64 %.fr215.i.i, 0
  br i1 %.not34.i.i.i, label %.split.us.i21.i.i, label %.split32.us.i20.i.i

.split32.us.i20.i.i:                              ; preds = %.preheader.i19.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.fe, i64 noundef range(i64 0, -9223372036854775808) %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #28, !noalias !302
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !281
  br label %bb.ai

_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.i.i, %bb.n, %.split.us.i21.i.i, %.split.us.i11.i.i, %.loopexit43.i.i, %.split166.us.i.i, %bb.m, %bb.g
  %.sroa.10.0.i.ph.pn = phi i64 [ %i.i, %.split166.us.i.i ], [ %i.gx, %.split.us.i21.i.i ], [ %.promoted157.i.i, %bb.g ], [ %i.i, %bb.m ], [ %i.di, %.loopexit43.i.i ], [ %i.em, %.split.us.i11.i.i ], [ %i.bh, %bb.n ], [ %i.bh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.i.i ], [ %i.bh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.i ], [ %i.bh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !281
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

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #5 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !11
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #24
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.k = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #24
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !11
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  br i1 %2, label %bb.g, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #24
  br label %bb.h

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutuEp6OutputINtNtB1c_6result6ResultuNtNtNtB1c_2io5error5ErrorENtNtB1c_6marker4SendNtB2O_4SyncEL_EENtNtB1a_4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxNtNtCslhCKBzvegwQ_10regex_lite6pikevm5CacheEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCslhCKBzvegwQ_10regex_lite3int11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
end_hunk_0
begin_hunk_1_@_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCsaL1QbXo9JQH_3std9backtrace14BacktraceFrameENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli:bb.a
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = mul nuw i64 %.val, 56
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCsaL1QbXo9JQH_3std9backtrace15BacktraceSymbolENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = mul nuw i64 %.val, 72
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslhCKBzvegwQ_10regex_lite6pikevm13FollowEpsilonENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecPaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #24
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = shl nuw i64 %.val, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #24
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVectENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = shl nuw i64 %.val, 1
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 2) #24
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvXs5_CsgWT32ugvpwR_6lexoptNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !6 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775805
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 3
  switch i64 %i.e, label %bb.d [
    i64 4, label %bb.c
    i64 6, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ 8, %bb.b ], [ 32, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.sink ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !6, !align !9, !noundef !6
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.3.0 = phi ptr [ %i.i, %bb.c ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.g, %bb.c ], [ null, %bb.a ]
  %i.j = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtCsgWT32ugvpwR_6lexopt5ErrorNtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @6, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, ptr } @_RNvYNtCsgWT32ugvpwR_6lexopt5ErrorNtNtCs3oUPovFnLWP_4core5error5Error5causeCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !alias.scope !305, !noundef !6 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775805
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 3
  switch i64 %i.e, label %_RNvXs5_CsgWT32ugvpwR_6lexoptNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source.exit [
    i64 4, label %bb.c
    i64 6, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink.i = phi i64 [ 8, %bb.b ], [ 32, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !305, !nonnull !6, !noundef !6
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !305, !nonnull !6, !align !9, !noundef !6
  br label %_RNvXs5_CsgWT32ugvpwR_6lexoptNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source.exit

_RNvXs5_CsgWT32ugvpwR_6lexoptNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source.exit: ; preds = %bb.a, %bb.c
  %.sroa.3.0.i = phi ptr [ %i.i, %bb.c ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.g, %bb.c ], [ null, %bb.a ]
  %i.j = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr %.sroa.3.0.i, 1
  ret { ptr, ptr } %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCsgWT32ugvpwR_6lexopt5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7provideCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCsgWT32ugvpwR_6lexopt5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @7, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #12

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCs3oUPovFnLWP_4core5array5drainINtB5_5DrainlNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitReE10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB26_8Captures7extractKj1_E0E0ENtNtBZ_4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCs3oUPovFnLWP_4core5array5drainINtB5_5DrainlNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitReE10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB26_8Captures7extractKj2_E0E0ENtNtBZ_4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs0_NtNtCs3oUPovFnLWP_4core5array5drainQINtB5_5DrainlNCINvMNtNtB9_3ops9try_traitINtBY_17NeverShortCircuitReE10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB27_8Captures7extractKj1_E0E0EINtNtB10_8function5FnMutTjEE8call_mutCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs0_NtNtCs3oUPovFnLWP_4core5array5drainQINtB5_5DrainlNCINvMNtNtB9_3ops9try_traitINtBY_17NeverShortCircuitReE10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB27_8Captures7extractKj2_E0E0EINtNtB10_8function5FnMutTjEE8call_mutCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs8_NtCs1xwejQucwHj_5alloc5sliceINtNtB7_3vec3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEINtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable8BufGuardBN_E13with_capacityBR_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc5sliceINtNtB7_3vec3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEINtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutBR_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keyReNCNvBY_9configure0E0EB10_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 192153584101141163), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 192153584101141163), i1 noundef zeroext, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs8_NtCs1xwejQucwHj_5alloc5sliceINtNtB7_3vec3VecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEEINtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable8BufGuardBN_E13with_capacityCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc5sliceINtNtB7_3vec3VecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEEINtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2r_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), i1 noundef zeroext, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_CsgWT32ugvpwR_6lexoptNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_CsgWT32ugvpwR_6lexoptNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvNtCs8WPnInWCYsb_6anyhow7nightly21request_ref_backtrace(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs2_NtCsaL1QbXo9JQH_3std9backtraceNtB5_9Backtrace7capture(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtCs8WPnInWCYsb_6anyhow5errorNtB5_5Error22construct_from_contextReNtCsgWT32ugvpwR_6lexopt5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #16

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #17

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #6

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #18

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #20

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #16 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { nounwind }
attributes #25 = { cold }
attributes #26 = { inlinehint }
attributes #27 = { noreturn }
attributes #28 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!5 = !{i64 0, i64 -9223372036854775808}
!6 = !{}
!7 = !{i64 1, i64 536870913}
!8 = !{i64 0, i64 -9223372036854775801}
!9 = !{i64 8}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 2002, i32 2000}
!12 = distinct !{!12, i1 true, !"_RINvNtCs3oUPovFnLWP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitReEKj1_QINtNtB2_5drain5DrainlNCINvMBJ_BG_10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB2o_8Captures7extractKB1r_E0E0EECs3tZ2SXJA1qv_8jiff_cli"}
!13 = distinct !{!13, !12, !"_RINvNtCs3oUPovFnLWP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitReEKj1_QINtNtB2_5drain5DrainlNCINvMBJ_BG_10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB2o_8Captures7extractKB1r_E0E0EECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!14 = distinct !{!14, !12, !"_RINvNtCs3oUPovFnLWP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitReEKj1_QINtNtB2_5drain5DrainlNCINvMBJ_BG_10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB2o_8Captures7extractKB1r_E0E0EECs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!15 = distinct !{!15, i1 true, !"_RINvNtCs3oUPovFnLWP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitReEQINtNtB2_5drain5DrainlNCINvMBQ_BN_10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB2r_8Captures7extractKj1_E0E0EECs3tZ2SXJA1qv_8jiff_cli"}
!16 = distinct !{!16, !15, !"_RINvNtCs3oUPovFnLWP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitReEQINtNtB2_5drain5DrainlNCINvMBQ_BN_10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB2r_8Captures7extractKj1_E0E0EECs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!17 = distinct !{!17, !15, !"_RINvNtCs3oUPovFnLWP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitReEQINtNtB2_5drain5DrainlNCINvMBQ_BN_10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB2r_8Captures7extractKj1_E0E0EECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!18 = distinct !{!18, i1 true, !"_RNvXs_NtNtCs3oUPovFnLWP_4core3ops9try_traitINtB4_17NeverShortCircuitARej1_ENtB4_3Try11from_outputCs3tZ2SXJA1qv_8jiff_cli"}
!19 = distinct !{!19, !18, !"_RNvXs_NtNtCs3oUPovFnLWP_4core3ops9try_traitINtB4_17NeverShortCircuitARej1_ENtB4_3Try11from_outputCs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!20 = distinct !{!20, !18, !"_RNvXs_NtNtCs3oUPovFnLWP_4core3ops9try_traitINtB4_17NeverShortCircuitARej1_ENtB4_3Try11from_outputCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!21 = !{!13}
!22 = !{!13, !14}
!23 = !{!17, !16, !13, !14}
!24 = !{!20, !19, !13}
!25 = distinct !{!25, i1 true, !"_RINvNtCs3oUPovFnLWP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitReEKj2_QINtNtB2_5drain5DrainlNCINvMBJ_BG_10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB2o_8Captures7extractKB1r_E0E0EECs3tZ2SXJA1qv_8jiff_cli"}
!26 = distinct !{!26, !25, !"_RINvNtCs3oUPovFnLWP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitReEKj2_QINtNtB2_5drain5DrainlNCINvMBJ_BG_10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB2o_8Captures7extractKB1r_E0E0EECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
end_hunk_1
begin_hunk_2_@llvm.umax.i64
!64 = distinct !{!64, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli"}
!65 = distinct !{!65, !64, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!66 = distinct !{!66, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli"}
!67 = distinct !{!67, !66, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!68 = distinct !{!68, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli"}
!69 = distinct !{!69, !68, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!70 = distinct !{!70, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli"}
!71 = distinct !{!71, !70, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!72 = distinct !{!72, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli"}
!73 = distinct !{!73, !72, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!74 = distinct !{!74, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli"}
!75 = distinct !{!75, !74, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!76 = distinct !{!76, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli"}
!77 = distinct !{!77, !76, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!78 = distinct !{!78, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli"}
!79 = distinct !{!79, !78, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!80 = distinct !{!80, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs3tZ2SXJA1qv_8jiff_cli"}
!81 = distinct !{!81, !80, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!82 = distinct !{!82, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli"}
!83 = distinct !{!83, !82, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!84 = distinct !{!84, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli"}
!85 = distinct !{!85, !84, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!86 = distinct !{!86, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli"}
!87 = distinct !{!87, !86, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!88 = distinct !{!88, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli"}
!89 = distinct !{!89, !88, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!90 = distinct !{!90, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli"}
!91 = distinct !{!91, !90, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!92 = distinct !{!92, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli"}
!93 = distinct !{!93, !92, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!94 = distinct !{!94, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli"}
!95 = distinct !{!95, !94, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!96 = distinct !{!96, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli"}
!97 = distinct !{!97, !96, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!98 = distinct !{!98, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli"}
!99 = distinct !{!99, !98, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!100 = distinct !{!100, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli"}
!101 = distinct !{!101, !100, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!102 = distinct !{!102, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli"}
!103 = distinct !{!103, !102, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!104 = distinct !{!104, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli"}
!105 = distinct !{!105, !104, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!106 = distinct !{!106, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli"}
!107 = distinct !{!107, !106, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!108 = distinct !{!108, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli"}
!109 = distinct !{!109, !108, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!110 = distinct !{!110, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli"}
!111 = distinct !{!111, !110, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!112 = distinct !{!112, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs3tZ2SXJA1qv_8jiff_cli"}
!113 = distinct !{!113, !112, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!114 = distinct !{!114, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli"}
!115 = distinct !{!115, !114, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!116 = distinct !{!116, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli"}
!117 = distinct !{!117, !116, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!118 = distinct !{!118, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli"}
!119 = distinct !{!119, !118, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!120 = distinct !{!120, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli"}
!121 = distinct !{!121, !120, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!122 = distinct !{!122, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli"}
!123 = distinct !{!123, !122, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!124 = distinct !{!124, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs3tZ2SXJA1qv_8jiff_cli"}
!125 = distinct !{!125, !124, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!126 = distinct !{!126, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli"}
!127 = distinct !{!127, !126, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!128 = distinct !{!128, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli"}
!129 = distinct !{!129, !128, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!130 = distinct !{!130, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli"}
!131 = distinct !{!131, !130, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!132 = distinct !{!132, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli"}
!133 = distinct !{!133, !132, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!134 = !{i64 -1, i64 -9223372036854775808}
!135 = !{!57}
!136 = !{!63, !61, !59, !57}
!137 = !{!61, !59, !57}
!138 = !{!65}
!139 = !{!67}
!140 = !{!73, !71, !69}
!141 = !{!71, !69}
!142 = !{!75}
!143 = !{!77}
!144 = !{!85, !83, !81, !79}
!145 = !{!83, !81, !79}
!146 = !{!87}
!147 = !{!89}
!148 = !{!95, !93, !91}
!149 = !{!93, !91}
!150 = !{!97}
!151 = !{!99}
!152 = !{!105, !103, !101}
!153 = !{!103, !101}
!154 = !{!107}
!155 = !{!109}
!156 = !{!117, !115, !113, !111}
!157 = !{!115, !113, !111}
!158 = !{!119}
!159 = !{!121}
!160 = !{!129, !127, !125, !123}
!161 = !{!127, !125, !123}
!162 = !{!131}
!163 = !{!133}
!164 = distinct !{!164, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs3tZ2SXJA1qv_8jiff_cli"}
!165 = distinct !{!165, !164, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!166 = distinct !{!166, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli"}
!167 = distinct !{!167, !166, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!168 = distinct !{!168, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli"}
!169 = distinct !{!169, !168, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!170 = distinct !{!170, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli"}
!171 = distinct !{!171, !170, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!172 = distinct !{!172, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli"}
!173 = distinct !{!173, !172, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!174 = !{!169, !167, !165}
!175 = !{!167, !165}
!176 = !{!171}
!177 = !{!173}
!178 = distinct !{!178, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1c_"}
!179 = distinct !{!179, !178, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1c_: argument 0"}
!180 = distinct !{!180, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_"}
!181 = distinct !{!181, !180, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_: argument 0"}
!182 = distinct !{!182, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_"}
!183 = distinct !{!183, !182, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_: argument 0"}
!184 = distinct !{!184, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_"}
!185 = distinct !{!185, !184, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_: argument 0"}
!186 = !{!181, !179}
!187 = !{!179}
!188 = !{!183}
!189 = !{!185}
!190 = distinct !{!190, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEEECs3tZ2SXJA1qv_8jiff_cli"}
!191 = distinct !{!191, !190, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEEECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!192 = distinct !{!192, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli"}
!193 = distinct !{!193, !192, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!194 = distinct !{!194, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli"}
!195 = distinct !{!195, !194, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!196 = distinct !{!196, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli"}
!197 = distinct !{!197, !196, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!198 = !{!193, !191}
!199 = !{!191}
!200 = !{!195}
!201 = !{!197}
!202 = distinct !{!202, i1 true, !"_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyReNCNvB1c_9configure0E0EB1e_"}
!203 = distinct !{!203, !202, !"_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyReNCNvB1c_9configure0E0EB1e_: argument 0"}
!204 = distinct !{!204, i1 true, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli"}
!205 = distinct !{!205, !204, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!206 = distinct !{!206, !204, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!207 = distinct !{!207, i1 true, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp"}
!208 = distinct !{!208, !207, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 1"}
!209 = distinct !{!209, !207, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 0"}
!210 = distinct !{!210, i1 true, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!211 = distinct !{!211, !210, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!212 = distinct !{!212, !210, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!213 = distinct !{!213, i1 true, !"_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageE8merge_upNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyReNCNvB1c_9configure0E0EB1e_"}
!214 = distinct !{!214, !213, !"_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageE8merge_upNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyReNCNvB1c_9configure0E0EB1e_: argument 0"}
!215 = distinct !{!215, i1 true, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli"}
!216 = distinct !{!216, !215, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!217 = distinct !{!217, !215, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!218 = distinct !{!218, i1 true, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp"}
!219 = distinct !{!219, !218, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 1"}
!220 = distinct !{!220, !218, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 0"}
!221 = distinct !{!221, i1 true, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!222 = distinct !{!222, !221, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!223 = distinct !{!223, !221, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!224 = distinct !{!224, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1t_"}
!225 = distinct !{!225, !224, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1t_: argument 0"}
!226 = distinct !{!226, i1 true, !"_RNvXs_NtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB4_10MergeStateNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtBc_3ops4drop4Drop4dropB1f_"}
!227 = distinct !{!227, !226, !"_RNvXs_NtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB4_10MergeStateNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtBc_3ops4drop4Drop4dropB1f_: argument 0"}
!228 = distinct !{!228, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1t_"}
!229 = distinct !{!229, !228, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1t_: argument 0"}
!230 = distinct !{!230, i1 true, !"_RNvXs_NtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB4_10MergeStateNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtBc_3ops4drop4Drop4dropB1f_"}
!231 = distinct !{!231, !230, !"_RNvXs_NtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB4_10MergeStateNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtBc_3ops4drop4Drop4dropB1f_: argument 0"}
!232 = !{!203}
!233 = !{!212, !211, !209, !208, !206, !205}
!234 = !{!214}
!235 = !{!223, !222, !220, !219, !217, !216}
!236 = !{!227, !225}
!237 = !{!231, !229}
!238 = distinct !{!238, i1 true, !"_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2T_"}
!239 = distinct !{!239, !238, !"_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2T_: argument 0"}
!240 = distinct !{!240, i1 true, !"_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEE8merge_upNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2Q_"}
!241 = distinct !{!241, !240, !"_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEE8merge_upNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2Q_: argument 0"}
!242 = distinct !{!242, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEEECs3tZ2SXJA1qv_8jiff_cli"}
!243 = distinct !{!243, !242, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEEECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!244 = distinct !{!244, i1 true, !"_RNvXs_NtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB4_10MergeStateTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEENtNtNtBc_3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli"}
!245 = distinct !{!245, !244, !"_RNvXs_NtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB4_10MergeStateTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEENtNtNtBc_3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!246 = !{!239}
!247 = !{!241}
!248 = !{!245, !243}
!249 = distinct !{!249, i1 true, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs3tZ2SXJA1qv_8jiff_cli"}
!250 = distinct !{!250, !249, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!251 = !{!250}
!252 = !{i64 0, i64 2}
!253 = !{i64 0, i64 -9223372036854775807}
!254 = distinct !{!254, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli"}
!255 = distinct !{!255, !254, !"_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!256 = distinct !{!256, !254, !"_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!257 = distinct !{!257, i1 true, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match"}
!258 = distinct !{!258, !257, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 1"}
!259 = distinct !{!259, i1 true, !"_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!260 = distinct !{!260, !259, !"_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!261 = distinct !{!261, !257, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 0"}
!262 = distinct !{!262, i1 true, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!263 = distinct !{!263, !262, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!264 = distinct !{!264, i1 true, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!265 = distinct !{!265, !264, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!266 = distinct !{!266, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3tZ2SXJA1qv_8jiff_cli"}
!267 = distinct !{!267, !266, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!268 = distinct !{!268, !264, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!269 = distinct !{!269, i1 true, !"_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchr"}
!270 = distinct !{!270, !269, !"_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchr: argument 0"}
!271 = distinct !{!271, i1 true, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli"}
!272 = distinct !{!272, !271, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!273 = distinct !{!273, !271, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 2"}
!274 = distinct !{!274, !271, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 3"}
!275 = distinct !{!275, !271, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!276 = distinct !{!276, i1 true, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli"}
!277 = distinct !{!277, !276, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!278 = distinct !{!278, !276, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 2"}
!279 = distinct !{!279, !276, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 3"}
!280 = distinct !{!280, !276, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!281 = !{!256, !255}
!282 = !{!256}
!283 = !{!258}
!284 = !{i64 0, i64 3}
!285 = !{i8 0, i8 2}
!286 = !{!260}
!287 = !{!265, !263, !261, !258, !256}
!288 = !{!267, !265, !263, !261, !258, !256}
!289 = !{!265, !268, !261, !258, !256}
!290 = !{!267, !265, !268, !261, !258, !256}
!291 = !{!261, !258, !256}
!292 = !{!270}
!293 = !{!272}
!294 = !{!273}
!295 = !{!274}
!296 = !{!272, !258}
!297 = !{!275, !272, !273, !274, !261, !258, !256}
!298 = !{!277}
!299 = !{!278}
!300 = !{!279}
!301 = !{!277, !258}
!302 = !{!280, !277, !278, !279, !261, !258, !256}
!303 = distinct !{!303, i1 true, !"_RNvXs5_CsgWT32ugvpwR_6lexoptNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source"}
!304 = distinct !{!304, !303, !"_RNvXs5_CsgWT32ugvpwR_6lexoptNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source: argument 0"}
!305 = !{!304}
end_hunk_2
