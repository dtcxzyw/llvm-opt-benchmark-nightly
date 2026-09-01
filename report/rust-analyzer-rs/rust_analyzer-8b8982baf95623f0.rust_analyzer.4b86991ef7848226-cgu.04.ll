Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.04?download=true
inline.NumInlined: 5008
inline.NumDeleted: 2523
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 86
begin_hunk_0_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0EB3b_:bb.a
  %i.bk = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.0.0.i44 ; 2 uses
  %i.bl = icmp ult ptr %.sroa.5.0.i43, %i.bk
  br i1 %i.bl, label %.lr.ph.i53, label %._crit_edge.i45

._crit_edge.i45:                                  ; preds = %.lr.ph.i53, %bb.r
  %.sroa.19.1.lcssa.i46 = phi ptr [ %.sroa.19.0.i41, %bb.r ], [ %i.bp, %.lr.ph.i53 ]
  %.sroa.11.1.lcssa.i47 = phi i64 [ %.sroa.11.0.i42, %bb.r ], [ %i.bs, %.lr.ph.i53 ] ; 10 uses
  %.sroa.5.1.lcssa.i48 = phi ptr [ %.sroa.5.0.i43, %bb.r ], [ %i.bt, %.lr.ph.i53 ] ; 2 uses
  %i.bm = icmp eq i64 %.sroa.0.0.i44, %.sroa.16.089217
  br i1 %i.bm, label %bb.t, label %bb.s

.lr.ph.i53:                                       ; preds = %bb.r, %.lr.ph.i53
  %.sroa.5.111.i54 = phi ptr [ %i.bt, %.lr.ph.i53 ], [ %.sroa.5.0.i43, %bb.r ] ; 3 uses
  %.sroa.11.110.i55 = phi i64 [ %i.bs, %.lr.ph.i53 ], [ %.sroa.11.0.i42, %bb.r ] ; 2 uses
  %.sroa.19.19.i56 = phi ptr [ %i.bp, %.lr.ph.i53 ], [ %.sroa.19.0.i41, %bb.r ]
  %i.bn = getelementptr i8, ptr %.sroa.5.111.i54, i64 104
  %.val.i57 = load i32, ptr %i.bn, align 8, !alias.scope !1325, !noalias !1322, !noundef !4
  %.val12.i58 = load i32, ptr %i.bj, align 8, !alias.scope !1325, !noalias !1322, !noundef !4
  %i.bo = icmp uge i32 %.val12.i58, %.val.i57     ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %.sroa.19.19.i56, i64 -112 ; 3 uses
  %.sroa.01.0.i.i59 = select i1 %i.bo, ptr %2, ptr %i.bp
  %i.bq = getelementptr inbounds nuw [112 x i8], ptr %.sroa.01.0.i.i59, i64 %.sroa.11.110.i55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bq, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.111.i54, i64 112, i1 false), !alias.scope !1327, !noalias !1328
  %i.br = zext i1 %i.bo to i64
  %i.bs = add i64 %.sroa.11.110.i55, %i.br        ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i54, i64 112 ; 3 uses
  %i.bu = icmp ult ptr %i.bt, %i.bk
  br i1 %i.bu, label %.lr.ph.i53, label %._crit_edge.i45

bb.s:                                             ; preds = %._crit_edge.i45
  %i.bv = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i46, i64 -112
  %i.bw = getelementptr inbounds nuw [112 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bw, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.1.lcssa.i48, i64 112, i1 false), !alias.scope !1327, !noalias !1331
  %i.bx = add i64 %.sroa.11.1.lcssa.i47, 1
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i48, i64 112
  br label %bb.r

bb.t:                                             ; preds = %._crit_edge.i45
  %i.bz = mul nuw nsw i64 %.sroa.11.1.lcssa.i47, 112
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph96, ptr nonnull align 8 %2, i64 %i.bz, i1 false), !alias.scope !1327
  %i.ca = sub i64 %.sroa.16.089217, %.sroa.11.1.lcssa.i47 ; 6 uses
  %.not18.i49 = icmp eq i64 %.sroa.16.089217, %.sroa.11.1.lcssa.i47
  %i.cb = getelementptr [112 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.11.1.lcssa.i47 ; 4 uses
  br i1 %.not18.i49, label %.outer.thread, label %.lr.ph16.i50.preheader

.lr.ph16.i50.preheader:                           ; preds = %bb.t
  %.neg292 = add i64 %.sroa.11.1.lcssa.i47, 1
  %xtraiter287 = and i64 %i.ca, 1
  %i.cc = icmp eq i64 %.sroa.16.089217, %.neg292
  br i1 %i.cc, label %.lr.ph16.i50.epil.preheader, label %.lr.ph16.i50.preheader.new

.lr.ph16.i50.preheader.new:                       ; preds = %.lr.ph16.i50.preheader
  %unroll_iter290 = and i64 %i.ca, -2
  br label %.lr.ph16.i50

.lr.ph16.i50:                                     ; preds = %.lr.ph16.i50, %.lr.ph16.i50.preheader.new
  %.sroa.06.014.i51 = phi i64 [ 0, %.lr.ph16.i50.preheader.new ], [ %i.cg, %.lr.ph16.i50 ] ; 5 uses
  %niter291 = phi i64 [ 0, %.lr.ph16.i50.preheader.new ], [ %niter291.next.1, %.lr.ph16.i50 ]
  %i.cd = xor i64 %.sroa.06.014.i51, -1
  %i.ce = getelementptr [112 x i8], ptr %i.bi, i64 %i.cd
  %i.cf = getelementptr [112 x i8], ptr %i.cb, i64 %.sroa.06.014.i51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cf, ptr noundef nonnull align 8 dereferenceable(112) %i.ce, i64 112, i1 false), !alias.scope !1327
  %i.cg = add nuw i64 %.sroa.06.014.i51, 2        ; 2 uses
  %i.ch = xor i64 %.sroa.06.014.i51, -2
  %i.ci = getelementptr [112 x i8], ptr %i.bi, i64 %i.ch
  %i.cj = getelementptr [112 x i8], ptr %i.cb, i64 %.sroa.06.014.i51
  %i.ck = getelementptr i8, ptr %i.cj, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ck, ptr noundef nonnull align 8 dereferenceable(112) %i.ci, i64 112, i1 false), !alias.scope !1327
  %niter291.next.1 = add i64 %niter291, 2         ; 2 uses
  %niter291.ncmp.1 = icmp eq i64 %niter291.next.1, %unroll_iter290
  br i1 %niter291.ncmp.1, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0E0EB3F_.exit.unr-lcssa, label %.lr.ph16.i50

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0E0EB3F_.exit.unr-lcssa: ; preds = %.lr.ph16.i50
  %lcmp.mod288.not = icmp eq i64 %xtraiter287, 0
  br i1 %lcmp.mod288.not, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0E0EB3F_.exit, label %.lr.ph16.i50.epil.preheader

.lr.ph16.i50.epil.preheader:                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0E0EB3F_.exit.unr-lcssa, %.lr.ph16.i50.preheader
  %.sroa.06.014.i51.epil.init = phi i64 [ 0, %.lr.ph16.i50.preheader ], [ %i.cg, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0E0EB3F_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod289 = trunc i64 %i.ca to i1
  call void @llvm.assume(i1 %lcmp.mod289)
  %i.cl = xor i64 %.sroa.06.014.i51.epil.init, -1
  %i.cm = getelementptr [112 x i8], ptr %i.bi, i64 %i.cl
  %i.cn = getelementptr [112 x i8], ptr %i.cb, i64 %.sroa.06.014.i51.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cn, ptr noundef nonnull align 8 dereferenceable(112) %i.cm, i64 112, i1 false), !alias.scope !1327
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0E0EB3F_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0E0EB3F_.exit: ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0E0EB3F_.exit.unr-lcssa, %.lr.ph16.i50.epil.preheader
  %i.co = icmp ugt i64 %.sroa.11.1.lcssa.i47, %.sroa.16.089217
  br i1 %i.co, label %bb.u, label %.outer, !prof !22

.outer.thread:                                    ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0E0EB3F_.exit
  %i.cp = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.11.1.lcssa.i47 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cq = icmp ult i64 %i.ca, 33
  br i1 %i.cq, label %.outer._crit_edge, label %.lr.ph

bb.u:                                             ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0E0EB3F_.exit
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i47, i64 noundef %.sroa.16.089217, i64 noundef %.sroa.16.089217, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #49
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNvYB15_NtNtBa_3cmp10PartialOrd2ltECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable_or_null(8) %5, ptr noalias nofree noundef nonnull %6) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 7 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph132 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.ga, %.outer ] ; 23 uses
  %.sroa.16.0.ph131 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.fl, %.outer ] ; 2 uses
  %.sroa.025.0.ph130 = phi i32 [ %4, %.lr.ph.lr.ph ], [ %i.i, %.outer ] ; 2 uses
  %.sroa.028.0.ph129 = phi ptr [ %5, %.lr.ph.lr.ph ], [ null, %.outer ] ; 3 uses
  %i.d = getelementptr i8, ptr %.sroa.0.0.ph132, i64 4
  %i.e = ptrtoint ptr %.sroa.0.0.ph132 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph129, null
  %i.f = getelementptr i8, ptr %.sroa.028.0.ph129, i64 4
  %i.g = icmp eq i32 %.sroa.025.0.ph130, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph282

bb.b:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileId12split_at_mutCs6u1mgJOKDyY_13rust_analyzer.exit
  %i.h = icmp eq i32 %i.i, 0
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph282

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileId12split_at_mutCs6u1mgJOKDyY_13rust_analyzer.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa122 = phi ptr [ %i.fm, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph132, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileId12split_at_mutCs6u1mgJOKDyY_13rust_analyzer.exit ], [ %i.ga, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.27.2.lcssa.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileId12split_at_mutCs6u1mgJOKDyY_13rust_analyzer.exit ], [ %i.fl, %.outer ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNvYB1s_NtNtBa_3cmp10PartialOrd2ltECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 4 %.sroa.0.0.ph.lcssa122, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, ptr noalias nofree noundef nonnull %6)
  br label %bb.f

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0125.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph131, %.lr.ph ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNvYBW_NtNtBa_3cmp10PartialOrd2ltECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 4 %.sroa.0.0.ph132, i64 noundef %.sroa.16.0125.lcssa, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull %6)
  br label %bb.f

.lr.ph282:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0124281 = phi i32 [ %i.i, %bb.b ], [ %.sroa.025.0.ph130, %.lr.ph ]
  %.sroa.16.0125280 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph131, %.lr.ph ] ; 19 uses
  %i.i = add i32 %.sroa.025.0124281, -1           ; 4 uses
  %i.j = lshr i64 %.sroa.16.0125280, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.j, 5
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph132, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.j, 56
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph132, i64 %.idx2.i ; 4 uses
  %i.m = icmp samesign ult i64 %.sroa.16.0125280, 64
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph282
  %i.n = call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNvYB14_NtNtBa_3cmp10PartialOrd2ltECs6u1mgJOKDyY_13rust_analyzer(ptr noundef nonnull readonly align 4 %.sroa.0.0.ph132, ptr noundef nonnull readonly %i.k, ptr noundef nonnull readonly %i.l, i64 noundef %i.j, ptr noalias nofree noundef nonnull %6)
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph282
  %.val10.i = load i32, ptr %.sroa.0.0.ph132, align 4, !range !1334, !alias.scope !1335, !noalias !1338, !noundef !4 ; 4 uses
  %.val11.i = load i32, ptr %i.d, align 4, !alias.scope !1335, !noalias !1338 ; 2 uses
  %.val12.i = load i32, ptr %i.k, align 4, !range !1334, !alias.scope !1335, !noalias !1338, !noundef !4 ; 4 uses
  %i.o = getelementptr i8, ptr %i.k, i64 4
  %.val13.i = load i32, ptr %i.o, align 4, !alias.scope !1335, !noalias !1338 ; 2 uses
  %i.p = icmp eq i32 %.val10.i, %.val12.i
  %i.q = icmp ult i32 %.val11.i, %.val13.i
  %i.r = icmp ult i32 %.val10.i, %.val12.i
  %i.s = select i1 %i.p, i1 %i.q, i1 %i.r         ; 2 uses
  %.val8.i = load i32, ptr %i.l, align 4, !range !1334, !alias.scope !1335, !noalias !1338, !noundef !4 ; 4 uses
  %i.t = getelementptr i8, ptr %i.l, i64 4
  %.val9.i = load i32, ptr %i.t, align 4, !alias.scope !1335, !noalias !1338 ; 2 uses
  %i.u = icmp eq i32 %.val10.i, %.val8.i
  %i.v = icmp ult i32 %.val11.i, %.val9.i
  %i.w = icmp ult i32 %.val10.i, %.val8.i
  %i.x = select i1 %i.u, i1 %i.v, i1 %i.w
  %i.y = xor i1 %i.s, %i.x
  br i1 %i.y, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = icmp eq i32 %.val12.i, %.val8.i
  %i.aa = icmp ult i32 %.val13.i, %.val9.i
  %i.ab = icmp ult i32 %.val12.i, %.val8.i
  %i.ac = select i1 %i.z, i1 %i.aa, i1 %i.ab
  %i.ad = xor i1 %i.s, %i.ac
  %..i.i = select i1 %i.ad, ptr %i.l, ptr %i.k
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.n, %bb.c ], [ %.sroa.0.0.ph132, %bb.d ], [ %..i.i, %bb.e ]
  %i.ae = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.af = sub nuw i64 %i.ae, %i.e                 ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.af, 3          ; 3 uses
  %i.ag = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0125280
  call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph132, i64 %i.af ; 5 uses
  %i.ai = load i32, ptr %i.ah, align 4            ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ak = load i32, ptr %i.aj, align 4            ; 4 uses
  store i32 %i.ai, ptr %i.a, align 4
  store i32 %i.ak, ptr %i.c, align 4
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.028.0.val = load i32, ptr %.sroa.028.0.ph129, align 4, !range !1334, !noundef !4 ; 2 uses
  %.sroa.028.0.val37 = load i32, ptr %i.f, align 4
  %i.al = icmp eq i32 %.sroa.028.0.val, %i.ai
  %i.am = icmp ult i32 %.sroa.028.0.val37, %i.ak
  %i.an = icmp ult i32 %.sroa.028.0.val, %i.ai
  %i.ao = select i1 %i.al, i1 %i.am, i1 %i.an
  br i1 %i.ao, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  %.not89 = icmp samesign ult i64 %3, %.sroa.16.0125280
  br i1 %.not89, label %bb.k, label %bb.j, !prof !1308

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0125280 ; 3 uses
  %7 = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %8 = shufflevector <4 x i32> %7, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %9 = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %10 = shufflevector <4 x i32> %9, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.m, %bb.j
  %.sroa.43.0.i = phi ptr [ %i.ap, %bb.j ], [ %i.bw, %bb.m ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.j ], [ %.sroa.27.2.lcssa.i, %bb.m ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph132, %bb.j ], [ %i.bz, %bb.m ] ; 3 uses
  %.sroa.0.0.i39 = phi i64 [ %.sroa.0.0.i, %bb.j ], [ %.sroa.16.0125280, %bb.m ] ; 3 uses
  %i.aq = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i39, i64 3)
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph132, i64 %i.aq ; 2 uses
  %i.as = icmp ult ptr %.sroa.9.0.i, %i.ar
  br i1 %i.as, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.sroa.9.131.i = phi ptr [ %i.bf, %.lr.ph.i ], [ %.sroa.9.0.i, %bb.l ] ; 6 uses
  %.sroa.27.130.i = phi i64 [ %i.be, %.lr.ph.i ], [ %.sroa.27.0.i, %bb.l ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %17, %.lr.ph.i ], [ %.sroa.43.0.i, %bb.l ] ; 4 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -8
  %11 = load i64, ptr %.sroa.9.131.i, align 4, !alias.scope !1340, !noalias !1345
  %12 = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 8
  %13 = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16
  %14 = load i64, ptr %12, align 4, !alias.scope !1340, !noalias !1348
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16
  %15 = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -24
  %i.av = load i64, ptr %i.au, align 4, !alias.scope !1340, !noalias !1351
  %16 = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 24
  %17 = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32 ; 3 uses
  %18 = load i64, ptr %16, align 4, !alias.scope !1340, !noalias !1354
  %19 = load <8 x i32>, ptr %.sroa.9.131.i, align 4, !alias.scope !1340, !noalias !1343 ; 2 uses
  %20 = shufflevector <8 x i32> %19, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %21 = icmp eq <4 x i32> %20, %8
  %22 = shufflevector <8 x i32> %19, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %23 = icmp ult <4 x i32> %22, %10
  %24 = icmp ult <4 x i32> %20, %8
  %25 = select <4 x i1> %21, <4 x i1> %23, <4 x i1> %24 ; 4 uses
  %26 = extractelement <4 x i1> %25, i64 0        ; 2 uses
  %.sroa.01.0.i33.i.a = select i1 %26, ptr %2, ptr %i.at
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i33.i.a, i64 %.sroa.27.130.i
  store i64 %11, ptr %i.aw, align 4, !alias.scope !1343, !noalias !1357
  %i.ax = zext i1 %26 to i64
  %i.ay = add i64 %.sroa.27.130.i, %i.ax          ; 2 uses
  %27 = extractelement <4 x i1> %25, i64 1        ; 2 uses
  %.sroa.01.0.i34.i.a = select i1 %27, ptr %2, ptr %13
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i34.i.a, i64 %i.ay
  store i64 %14, ptr %i.az, align 4, !alias.scope !1343, !noalias !1358
  %i.ba = zext i1 %27 to i64
  %i.bb = add i64 %i.ay, %i.ba                    ; 2 uses
  %28 = extractelement <4 x i1> %25, i64 2        ; 2 uses
  %.sroa.01.0.i34.i = select i1 %28, ptr %2, ptr %15
  %29 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i34.i, i64 %i.bb
  store i64 %i.av, ptr %29, align 4, !alias.scope !1343, !noalias !1359
  %30 = zext i1 %28 to i64
  %31 = add i64 %i.bb, %30                        ; 2 uses
  %32 = extractelement <4 x i1> %25, i64 3        ; 2 uses
  %.sroa.01.0.i35.i = select i1 %32, ptr %2, ptr %17
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i35.i, i64 %31
  store i64 %18, ptr %i.bc, align 4, !alias.scope !1343, !noalias !1360
  %i.bd = zext i1 %32 to i64
  %i.be = add i64 %31, %i.bd                      ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32 ; 3 uses
  %i.bg = icmp ult ptr %i.bf, %i.ar
  br i1 %i.bg, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.l
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.l ], [ %17, %.lr.ph.i ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.l ], [ %i.be, %.lr.ph.i ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.l ], [ %i.bf, %.lr.ph.i ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph132, i64 %.sroa.0.0.i39 ; 2 uses
  %i.bi = icmp ult ptr %.sroa.9.1.lcssa.i, %i.bh
  br i1 %i.bi, label %.lr.ph38.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.bp, %.lr.ph38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.bt, %.lr.ph38.i ] ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.bu, %.lr.ph38.i ] ; 2 uses
  %i.bj = icmp eq i64 %.sroa.0.0.i39, %.sroa.16.0125280
  br i1 %i.bj, label %bb.n, label %bb.m

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.bu, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.sroa.27.235.i = phi i64 [ %i.bt, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.bp, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load i32, ptr %.sroa.9.236.i, align 4, !range !1334, !alias.scope !1340, !noalias !1343, !noundef !4 ; 2 uses
  %i.bk = getelementptr i8, ptr %.sroa.9.236.i, i64 4
  %.val14.i = load i32, ptr %i.bk, align 4, !alias.scope !1340, !noalias !1343
  %i.bl = icmp eq i32 %.val.i, %i.ai
  %i.bm = icmp ult i32 %.val14.i, %i.ak
  %i.bn = icmp ult i32 %.val.i, %i.ai
  %i.bo = select i1 %i.bl, i1 %i.bm, i1 %i.bn     ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -8 ; 3 uses
  %.sroa.01.0.i36.i = select i1 %i.bo, ptr %2, ptr %i.bp
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i36.i, i64 %.sroa.27.235.i
  %i.br = load i64, ptr %.sroa.9.236.i, align 4, !alias.scope !1340, !noalias !1361
  store i64 %i.br, ptr %i.bq, align 4, !alias.scope !1343, !noalias !1364
  %i.bs = zext i1 %i.bo to i64
  %i.bt = add i64 %.sroa.27.235.i, %i.bs          ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 8 ; 3 uses
  %i.bv = icmp ult ptr %i.bu, %i.bh
  br i1 %i.bv, label %.lr.ph38.i, label %._crit_edge39.i

bb.m:                                             ; preds = %._crit_edge39.i
  %i.bw = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %.sroa.27.2.lcssa.i
  %i.by = load i64, ptr %.sroa.9.2.lcssa.i, align 4, !alias.scope !1340, !noalias !1365
  store i64 %i.by, ptr %i.bx, align 4, !alias.scope !1343, !noalias !1368
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8
  br label %bb.l

bb.n:                                             ; preds = %._crit_edge39.i
  %i.ca = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph132, ptr nonnull align 4 %2, i64 %i.ca, i1 false), !alias.scope !1369
  %i.cb = sub i64 %.sroa.16.0125280, %.sroa.27.2.lcssa.i ; 5 uses
  %.not47.i = icmp eq i64 %.sroa.16.0125280, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.n
  %i.cc = getelementptr [8 x i8], ptr %.sroa.0.0.ph132, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check289 = icmp ult i64 %i.cb, 4
  br i1 %min.iters.check289, label %scalar.ph288.preheader, label %vector.ph290

vector.ph290:                                     ; preds = %.lr.ph45.i
  %n.vec291 = and i64 %i.cb, -4                   ; 3 uses
  br label %vector.body292

vector.body292:                                   ; preds = %vector.body292, %vector.ph290
  %index293 = phi i64 [ 0, %vector.ph290 ], [ %index.next298, %vector.body292 ] ; 3 uses
  %i.cd = xor i64 %index293, -1
  %i.ce = getelementptr [8 x i8], ptr %i.ap, i64 %i.cd ; 2 uses
  %i.cf = getelementptr [8 x i8], ptr %i.cc, i64 %index293 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.ce, i64 -8
  %i.ch = getelementptr i8, ptr %i.ce, i64 -24
  %wide.load294 = load <2 x i64>, ptr %i.cg, align 4, !alias.scope !1343, !noalias !1340
  %wide.load295 = load <2 x i64>, ptr %i.ch, align 4, !alias.scope !1343, !noalias !1340
  %reverse296 = shufflevector <2 x i64> %wide.load294, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse297 = shufflevector <2 x i64> %wide.load295, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ci = getelementptr i8, ptr %i.cf, i64 16
  store <2 x i64> %reverse296, ptr %i.cf, align 4, !alias.scope !1340, !noalias !1343
  store <2 x i64> %reverse297, ptr %i.ci, align 4, !alias.scope !1340, !noalias !1343
  %index.next298 = add nuw i64 %index293, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next298, %n.vec291
  br i1 %i.cj, label %middle.block299, label %vector.body292, !llvm.loop !1370

middle.block299:                                  ; preds = %vector.body292
  %cmp.n300 = icmp eq i64 %i.cb, %n.vec291
  br i1 %cmp.n300, label %.loopexit, label %scalar.ph288.preheader

scalar.ph288.preheader:                           ; preds = %.lr.ph45.i, %middle.block299
  %.sroa.07.043.i.ph = phi i64 [ 0, %.lr.ph45.i ], [ %n.vec291, %middle.block299 ]
  br label %scalar.ph288

scalar.ph288:                                     ; preds = %scalar.ph288.preheader, %scalar.ph288
  %.sroa.07.043.i = phi i64 [ %i.ck, %scalar.ph288 ], [ %.sroa.07.043.i.ph, %scalar.ph288.preheader ] ; 3 uses
  %i.ck = add nuw i64 %.sroa.07.043.i, 1          ; 2 uses
  %i.cl = xor i64 %.sroa.07.043.i, -1
  %i.cm = getelementptr [8 x i8], ptr %i.ap, i64 %i.cl
  %i.cn = getelementptr [8 x i8], ptr %i.cc, i64 %.sroa.07.043.i
  %i.co = load i64, ptr %i.cm, align 4, !alias.scope !1343, !noalias !1340
  store i64 %i.co, ptr %i.cn, align 4, !alias.scope !1340, !noalias !1343
  %exitcond.not.i = icmp eq i64 %i.ck, %i.cb
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph288, !llvm.loop !1373

.loopexit:                                        ; preds = %scalar.ph288, %middle.block299, %bb.n
  %i.cp = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.cp, label %.thread, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %.not.i40 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0125280
  br i1 %.not.i40, label %bb.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileId12split_at_mutCs6u1mgJOKDyY_13rust_analyzer.exit, !prof !22

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @183, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #49, !noalias !1374
  unreachable

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileId12split_at_mutCs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.o
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph132, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph132) ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNvYB15_NtNtBa_3cmp10PartialOrd2ltECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 4 %i.cq, i64 noundef %i.cb, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %i.a, ptr noalias nofree noundef nonnull %6) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cr = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.cr, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.h, %.loopexit
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  %.not90 = icmp samesign ult i64 %3, %.sroa.16.0125280
  br i1 %.not90, label %bb.r, label %bb.q, !prof !1308

bb.q:                                             ; preds = %.thread
  %i.ct = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0125280 ; 3 uses
  br label %bb.s

bb.r:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.u, %bb.q
  %.sroa.43.0.i43 = phi ptr [ %i.ct, %bb.q ], [ %i.ff, %bb.u ] ; 2 uses
  %.sroa.27.0.i44 = phi i64 [ 0, %bb.q ], [ %i.fi, %bb.u ] ; 2 uses
  %.sroa.9.0.i45 = phi ptr [ %.sroa.0.0.ph132, %bb.q ], [ %i.fj, %bb.u ] ; 3 uses
  %.sroa.0.0.i46 = phi i64 [ %.sroa.0.0.i, %bb.q ], [ %.sroa.16.0125280, %bb.u ] ; 3 uses
  %i.cu = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i46, i64 3)
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph132, i64 %i.cu ; 2 uses
  %i.cw = icmp ult ptr %.sroa.9.0.i45, %i.cv
  br i1 %i.cw, label %.lr.ph.i68, label %._crit_edge.i47

.lr.ph.i68:                                       ; preds = %bb.s
  %.val31.i69 = load i32, ptr %i.ah, align 4, !range !1334, !alias.scope !1378, !noalias !1381, !noundef !4 ; 8 uses
  %.val32.i75 = load i32, ptr %i.cs, align 4, !alias.scope !1378, !noalias !1381 ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i68
  %.sroa.9.131.i70 = phi ptr [ %.sroa.9.0.i45, %.lr.ph.i68 ], [ %i.eo, %bb.t ] ; 10 uses
  %.sroa.27.130.i71 = phi i64 [ %.sroa.27.0.i44, %.lr.ph.i68 ], [ %i.en, %bb.t ] ; 2 uses
  %.sroa.43.129.i72 = phi ptr [ %.sroa.43.0.i43, %.lr.ph.i68 ], [ %i.ej, %bb.t ] ; 4 uses
  %.val29.i73 = load i32, ptr %.sroa.9.131.i70, align 4, !range !1334, !alias.scope !1378, !noalias !1381, !noundef !4 ; 2 uses
  %i.cx = getelementptr i8, ptr %.sroa.9.131.i70, i64 4
  %.val30.i74 = load i32, ptr %i.cx, align 4, !alias.scope !1378, !noalias !1381
  %i.cy = icmp eq i32 %.val31.i69, %.val29.i73
  %i.cz = icmp uge i32 %.val32.i75, %.val30.i74
  %i.da = icmp uge i32 %.val31.i69, %.val29.i73
  %i.db = select i1 %i.cy, i1 %i.cz, i1 %i.da     ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -8
  %.sroa.01.0.i.i76 = select i1 %i.db, ptr %2, ptr %i.dc
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i76, i64 %.sroa.27.130.i71
  %i.de = load i64, ptr %.sroa.9.131.i70, align 4, !alias.scope !1378, !noalias !1383
  store i64 %i.de, ptr %i.dd, align 4, !alias.scope !1381, !noalias !1386
  %i.df = zext i1 %i.db to i64
  %i.dg = add i64 %.sroa.27.130.i71, %i.df        ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 8 ; 2 uses
  %.val25.i77 = load i32, ptr %i.dh, align 4, !range !1334, !alias.scope !1378, !noalias !1381, !noundef !4 ; 2 uses
  %i.di = getelementptr i8, ptr %.sroa.9.131.i70, i64 12
  %.val26.i78 = load i32, ptr %i.di, align 4, !alias.scope !1378, !noalias !1381
  %i.dj = icmp eq i32 %.val31.i69, %.val25.i77
  %i.dk = icmp uge i32 %.val32.i75, %.val26.i78
  %i.dl = icmp uge i32 %.val31.i69, %.val25.i77
  %i.dm = select i1 %i.dj, i1 %i.dk, i1 %i.dl     ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -16
  %.sroa.01.0.i33.i79 = select i1 %i.dm, ptr %2, ptr %i.dn
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i33.i79, i64 %i.dg
  %i.dp = load i64, ptr %i.dh, align 4, !alias.scope !1378, !noalias !1387
  store i64 %i.dp, ptr %i.do, align 4, !alias.scope !1381, !noalias !1390
  %i.dq = zext i1 %i.dm to i64
  %i.dr = add i64 %i.dg, %i.dq                    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 16 ; 2 uses
  %.val21.i80 = load i32, ptr %i.ds, align 4, !range !1334, !alias.scope !1378, !noalias !1381, !noundef !4 ; 2 uses
  %i.dt = getelementptr i8, ptr %.sroa.9.131.i70, i64 20
  %.val22.i81 = load i32, ptr %i.dt, align 4, !alias.scope !1378, !noalias !1381
  %i.du = icmp eq i32 %.val31.i69, %.val21.i80
  %i.dv = icmp uge i32 %.val32.i75, %.val22.i81
  %i.dw = icmp uge i32 %.val31.i69, %.val21.i80
  %i.dx = select i1 %i.du, i1 %i.dv, i1 %i.dw     ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -24
  %.sroa.01.0.i34.i82 = select i1 %i.dx, ptr %2, ptr %i.dy
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i34.i82, i64 %i.dr
  %i.ea = load i64, ptr %i.ds, align 4, !alias.scope !1378, !noalias !1391
  store i64 %i.ea, ptr %i.dz, align 4, !alias.scope !1381, !noalias !1394
  %i.eb = zext i1 %i.dx to i64
  %i.ec = add i64 %i.dr, %i.eb                    ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 24 ; 2 uses
  %.val17.i83 = load i32, ptr %i.ed, align 4, !range !1334, !alias.scope !1378, !noalias !1381, !noundef !4 ; 2 uses
  %i.ee = getelementptr i8, ptr %.sroa.9.131.i70, i64 28
  %.val18.i84 = load i32, ptr %i.ee, align 4, !alias.scope !1378, !noalias !1381
  %i.ef = icmp eq i32 %.val31.i69, %.val17.i83
  %i.eg = icmp uge i32 %.val32.i75, %.val18.i84
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!1148 = distinct !{!1148, !1149, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json11ProjectJsonEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1149 = distinct !{!1149, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json11ProjectJsonEEECs6u1mgJOKDyY_13rust_analyzer"}
!1150 = distinct !{null}
!1151 = !{!1152}
!1152 = distinct !{!1152, !1153, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json11ProjectJsonEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1153 = distinct !{!1153, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json11ProjectJsonEEECs6u1mgJOKDyY_13rust_analyzer"}
!1154 = !{!1155}
!1155 = distinct !{!1155, !1156, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json11ProjectJsonEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1156 = distinct !{!1156, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json11ProjectJsonEECs6u1mgJOKDyY_13rust_analyzer"}
!1157 = distinct !{ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json11ProjectJsonEECs6u1mgJOKDyY_13rust_analyzer, null}
!1158 = !{!1159}
!1159 = distinct !{!1159, !1160, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdcPuHeDsw6v_13project_model13manifest_path12ManifestPathEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1160 = distinct !{!1160, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdcPuHeDsw6v_13project_model13manifest_path12ManifestPathEECs6u1mgJOKDyY_13rust_analyzer"}
!1161 = !{!1162}
!1162 = distinct !{!1162, !1163, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9p4rgIae0RV_6camino11Utf8PathBufEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1163 = distinct !{!1163, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9p4rgIae0RV_6camino11Utf8PathBufEECs6u1mgJOKDyY_13rust_analyzer"}
!1164 = !{!1165}
!1165 = distinct !{!1165, !1166, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9p4rgIae0RV_6camino11Utf8PathBufEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1166 = distinct !{!1166, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9p4rgIae0RV_6camino11Utf8PathBufEECs6u1mgJOKDyY_13rust_analyzer"}
!1167 = !{!1168}
!1168 = distinct !{!1168, !1169, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json15ProjectJsonDataEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1169 = distinct !{!1169, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json15ProjectJsonDataEEECs6u1mgJOKDyY_13rust_analyzer"}
!1170 = !{ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json15ProjectJsonDataEEECs6u1mgJOKDyY_13rust_analyzer}
!1171 = !{!1172}
!1172 = distinct !{!1172, !1173, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json15ProjectJsonDataEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1173 = distinct !{!1173, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json15ProjectJsonDataEEECs6u1mgJOKDyY_13rust_analyzer"}
!1174 = !{!1175}
!1175 = distinct !{!1175, !1176, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json15ProjectJsonDataEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1176 = distinct !{!1176, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json15ProjectJsonDataEECs6u1mgJOKDyY_13rust_analyzer"}
!1177 = !{ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json15ProjectJsonDataEECs6u1mgJOKDyY_13rust_analyzer, ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json15ProjectJsonDataEEECs6u1mgJOKDyY_13rust_analyzer}
!1178 = !{!1179}
!1179 = distinct !{!1179, !1180, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1180 = distinct !{!1180, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer"}
!1181 = !{!1182}
!1182 = distinct !{!1182, !1183, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1183 = distinct !{!1183, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer"}
!1184 = !{!1185}
!1185 = distinct !{!1185, !1186, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1186 = distinct !{!1186, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs6u1mgJOKDyY_13rust_analyzer"}
!1187 = !{!1188}
!1188 = distinct !{!1188, !1189, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1189 = distinct !{!1189, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs6u1mgJOKDyY_13rust_analyzer"}
!1190 = !{!1191}
!1191 = distinct !{!1191, !1192, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1192 = distinct !{!1192, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer"}
!1193 = !{!1194}
!1194 = distinct !{!1194, !1195, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsfxDLtZq386g_6semver7VersionEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1195 = distinct !{!1195, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsfxDLtZq386g_6semver7VersionEECs6u1mgJOKDyY_13rust_analyzer"}
!1196 = !{!1197}
!1197 = distinct !{!1197, !1198, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgIpRO4v45SJ_7base_db6target10TargetDataNtBZ_15TargetLoadErrorEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1198 = distinct !{!1198, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgIpRO4v45SJ_7base_db6target10TargetDataNtBZ_15TargetLoadErrorEECs6u1mgJOKDyY_13rust_analyzer"}
!1199 = !{!1200}
!1200 = distinct !{!1200, !1201, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsdRkQxkTxnTp_6anyhow5ErrorEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1201 = distinct !{!1201, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsdRkQxkTxnTp_6anyhow5ErrorEEECs6u1mgJOKDyY_13rust_analyzer"}
!1202 = !{!1203}
!1203 = distinct !{!1203, !1204, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsdRkQxkTxnTp_6anyhow5ErrorEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1204 = distinct !{!1204, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsdRkQxkTxnTp_6anyhow5ErrorEEECs6u1mgJOKDyY_13rust_analyzer"}
!1205 = !{!1206}
!1206 = distinct !{!1206, !1207, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace14CargoWorkspaceNtNtB12_18build_dependencies21WorkspaceBuildScriptsIBC_INtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsdRkQxkTxnTp_6anyhow5ErrorEEEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1207 = distinct !{!1207, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace14CargoWorkspaceNtNtB12_18build_dependencies21WorkspaceBuildScriptsIBC_INtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsdRkQxkTxnTp_6anyhow5ErrorEEEEECs6u1mgJOKDyY_13rust_analyzer"}
!1208 = !{!1209, !1211, !1206}
!1209 = distinct !{!1209, !1210, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsdRkQxkTxnTp_6anyhow5ErrorEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1210 = distinct !{!1210, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsdRkQxkTxnTp_6anyhow5ErrorEEECs6u1mgJOKDyY_13rust_analyzer"}
!1211 = distinct !{!1211, !1212, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace14CargoWorkspaceNtNtBG_18build_dependencies21WorkspaceBuildScriptsINtNtB4_6option6OptionINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsdRkQxkTxnTp_6anyhow5ErrorEEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1212 = distinct !{!1212, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace14CargoWorkspaceNtNtBG_18build_dependencies21WorkspaceBuildScriptsINtNtB4_6option6OptionINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsdRkQxkTxnTp_6anyhow5ErrorEEEECs6u1mgJOKDyY_13rust_analyzer"}
!1213 = !{!1214, !1211, !1206}
!1214 = distinct !{!1214, !1215, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsdRkQxkTxnTp_6anyhow5ErrorEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1215 = distinct !{!1215, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsdRkQxkTxnTp_6anyhow5ErrorEEECs6u1mgJOKDyY_13rust_analyzer"}
!1216 = !{i64 -1, i64 -9223372036854775805}
!1217 = !{!1218, !1220}
!1218 = distinct !{!1218, !1219, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsfgt47Ct1nzL_10lsp_server3msg6IdReprECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1219 = distinct !{!1219, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsfgt47Ct1nzL_10lsp_server3msg6IdReprECs6u1mgJOKDyY_13rust_analyzer"}
!1220 = distinct !{!1220, !1221, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsfgt47Ct1nzL_10lsp_server3msg9RequestIdECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1221 = distinct !{!1221, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsfgt47Ct1nzL_10lsp_server3msg9RequestIdECs6u1mgJOKDyY_13rust_analyzer"}
!1222 = !{!1223, !1225}
!1223 = distinct !{!1223, !1224, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsfgt47Ct1nzL_10lsp_server3msg6IdReprECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1224 = distinct !{!1224, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsfgt47Ct1nzL_10lsp_server3msg6IdReprECs6u1mgJOKDyY_13rust_analyzer"}
!1225 = distinct !{!1225, !1226, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsfgt47Ct1nzL_10lsp_server3msg9RequestIdECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1226 = distinct !{!1226, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsfgt47Ct1nzL_10lsp_server3msg9RequestIdECs6u1mgJOKDyY_13rust_analyzer"}
!1227 = !{!1228}
!1228 = distinct !{!1228, !1229, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8yjYO7b73r2_10serde_json5value5ValueEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1229 = distinct !{!1229, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8yjYO7b73r2_10serde_json5value5ValueEECs6u1mgJOKDyY_13rust_analyzer"}
!1230 = !{!1231}
!1231 = distinct !{!1231, !1232, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8yjYO7b73r2_10serde_json5value5ValueEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1232 = distinct !{!1232, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8yjYO7b73r2_10serde_json5value5ValueEECs6u1mgJOKDyY_13rust_analyzer"}
!1233 = !{i8 0, i8 8}
!1234 = !{!1235}
!1235 = distinct !{!1235, !1236, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1236 = distinct !{!1236, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer"}
!1237 = !{i64 0, i64 -9223372036854775802}
!1238 = !{!1239}
!1239 = distinct !{!1239, !1240, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsixqsALXRULh_14cargo_metadata8messages17ArtifactDebuginfoECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1240 = distinct !{!1240, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsixqsALXRULh_14cargo_metadata8messages17ArtifactDebuginfoECs6u1mgJOKDyY_13rust_analyzer"}
!1241 = !{i64 0, i64 -9223372036854775804}
!1242 = !{!1243}
!1243 = distinct !{!1243, !1244, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9p4rgIae0RV_6camino11Utf8PathBufEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1244 = distinct !{!1244, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9p4rgIae0RV_6camino11Utf8PathBufEECs6u1mgJOKDyY_13rust_analyzer"}
!1245 = !{!1246}
!1246 = distinct !{!1246, !1247, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1247 = distinct !{!1247, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs6u1mgJOKDyY_13rust_analyzer"}
!1248 = !{!1249}
!1249 = distinct !{!1249, !1250, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3arc3ArcINtBE_11HeaderSliceNtNtNtBG_5green4node13GreenNodeHeadSNtB1t_10GreenChildEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1250 = distinct !{!1250, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3arc3ArcINtBE_11HeaderSliceNtNtNtBG_5green4node13GreenNodeHeadSNtB1t_10GreenChildEEECs6u1mgJOKDyY_13rust_analyzer"}
!1251 = !{!1252}
!1252 = distinct !{!1252, !1253, !"_RNvXs7_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green4node13GreenNodeHeadSNtB10_10GreenChildEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1253 = distinct !{!1253, !"_RNvXs7_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green4node13GreenNodeHeadSNtB10_10GreenChildEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer"}
!1254 = !{!1252, !1249}
!1255 = !{i8 0, i8 22}
!1256 = !{!1257}
!1257 = distinct !{!1257, !1258, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtNtCsjQbM3MYDIrM_10serde_core7private7content7ContentEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1258 = distinct !{!1258, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtNtCsjQbM3MYDIrM_10serde_core7private7content7ContentEECs6u1mgJOKDyY_13rust_analyzer"}
!1259 = distinct !{null}
!1260 = !{!1261}
!1261 = distinct !{!1261, !1262, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtNtCsjQbM3MYDIrM_10serde_core7private7content7ContentEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1262 = distinct !{!1262, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtNtCsjQbM3MYDIrM_10serde_core7private7content7ContentEECs6u1mgJOKDyY_13rust_analyzer"}
!1263 = !{!1264}
!1264 = distinct !{!1264, !1265, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierEEB11_: argument 0"}
!1265 = distinct !{!1265, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierEEB11_"}
!1266 = !{!1267}
!1267 = distinct !{!1267, !1268, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsfxDLtZq386g_6semver7VersionEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1268 = distinct !{!1268, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsfxDLtZq386g_6semver7VersionEECs6u1mgJOKDyY_13rust_analyzer"}
!1269 = distinct !{null}
!1270 = !{i8 0, i8 44}
!1271 = !{!1272}
!1272 = distinct !{!1272, !1273, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr: argument 0"}
!1273 = distinct !{!1273, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr"}
!1274 = !{!1275, !1277}
!1275 = distinct !{!1275, !1276, !"_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1276 = distinct !{!1276, !"_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs6u1mgJOKDyY_13rust_analyzer"}
!1277 = distinct !{!1277, !1276, !"_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!1278 = !{!1279}
!1279 = distinct !{!1279, !1280, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1280 = distinct !{!1280, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs6u1mgJOKDyY_13rust_analyzer"}
!1281 = !{!1282}
!1282 = distinct !{!1282, !1283, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1283 = distinct !{!1283, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6u1mgJOKDyY_13rust_analyzer"}
!1284 = !{!1285}
!1285 = distinct !{!1285, !1286, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1286 = distinct !{!1286, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs6u1mgJOKDyY_13rust_analyzer"}
!1287 = distinct !{null}
!1288 = !{!1289}
!1289 = distinct !{!1289, !1290, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr: argument 0"}
!1290 = distinct !{!1290, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr"}
!1291 = !{!1292}
!1292 = distinct !{!1292, !1293, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1293 = distinct !{!1293, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6u1mgJOKDyY_13rust_analyzer"}
!1294 = !{!1295}
!1295 = distinct !{!1295, !1296, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1296 = distinct !{!1296, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs6u1mgJOKDyY_13rust_analyzer"}
!1297 = !{!1298}
!1298 = distinct !{!1298, !1299, !"_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counter7CounterINtNtBJ_4list7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEEE3newCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1299 = distinct !{!1299, !"_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counter7CounterINtNtBJ_4list7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEEE3newCs6u1mgJOKDyY_13rust_analyzer"}
!1300 = !{!1301}
!1301 = distinct !{!1301, !1302, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0EB3b_: argument 0"}
!1302 = distinct !{!1302, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0EB3b_"}
!1303 = !{!1304}
!1304 = distinct !{!1304, !1302, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0EB3b_: argument 1"}
!1305 = !{!1306}
!1306 = distinct !{!1306, !1307, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0EB3j_: argument 1"}
!1307 = distinct !{!1307, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0EB3j_"}
!1308 = !{!"branch_weights", i32 4001, i32 4000000}
!1309 = !{!1310}
!1310 = distinct !{!1310, !1307, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0EB3j_: argument 0"}
!1311 = !{!1310, !1306}
!1312 = !{!1313}
!1313 = distinct !{!1313, !1314, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1314 = distinct !{!1314, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1315 = !{!1316}
!1316 = distinct !{!1316, !1317, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1317 = distinct !{!1317, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1318 = !{!1319, !1321}
!1319 = distinct !{!1319, !1320, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtCscA5P7HRgTCP_15ide_diagnostics10Diagnostic12split_at_mutCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1320 = distinct !{!1320, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtCscA5P7HRgTCP_15ide_diagnostics10Diagnostic12split_at_mutCs6u1mgJOKDyY_13rust_analyzer"}
!1321 = distinct !{!1321, !1320, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtCscA5P7HRgTCP_15ide_diagnostics10Diagnostic12split_at_mutCs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!1322 = !{!1323}
!1323 = distinct !{!1323, !1324, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0E0EB3F_: argument 1"}
!1324 = distinct !{!1324, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0E0EB3F_"}
!1325 = !{!1326}
!1326 = distinct !{!1326, !1324, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0E0EB3F_: argument 0"}
!1327 = !{!1326, !1323}
!1328 = !{!1329}
!1329 = distinct !{!1329, !1330, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1330 = distinct !{!1330, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1331 = !{!1332}
!1332 = distinct !{!1332, !1333, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1333 = distinct !{!1333, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1334 = !{i32 1, i32 0}
!1335 = !{!1336}
!1336 = distinct !{!1336, !1337, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNvYB15_NtNtBa_3cmp10PartialOrd2ltECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1337 = distinct !{!1337, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNvYB15_NtNtBa_3cmp10PartialOrd2ltECs6u1mgJOKDyY_13rust_analyzer"}
!1338 = !{!1339}
!1339 = distinct !{!1339, !1337, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNvYB15_NtNtBa_3cmp10PartialOrd2ltECs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!1340 = !{!1341}
!1341 = distinct !{!1341, !1342, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNvYB1d_NtNtBa_3cmp10PartialOrd2ltECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1342 = distinct !{!1342, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNvYB1d_NtNtBa_3cmp10PartialOrd2ltECs6u1mgJOKDyY_13rust_analyzer"}
!1343 = !{!1344}
!1344 = distinct !{!1344, !1342, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNvYB1d_NtNtBa_3cmp10PartialOrd2ltECs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!1345 = !{!1346, !1344}
!1346 = distinct !{!1346, !1347, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1347 = distinct !{!1347, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1348 = !{!1349, !1344}
!1349 = distinct !{!1349, !1350, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1350 = distinct !{!1350, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1351 = !{!1352, !1344}
!1352 = distinct !{!1352, !1353, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1353 = distinct !{!1353, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1354 = !{!1355, !1344}
!1355 = distinct !{!1355, !1356, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1356 = distinct !{!1356, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1357 = !{!1346, !1341}
!1358 = !{!1349, !1341}
!1359 = !{!1352, !1341}
!1360 = !{!1355, !1341}
!1361 = !{!1362, !1344}
!1362 = distinct !{!1362, !1363, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1363 = distinct !{!1363, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1364 = !{!1362, !1341}
!1365 = !{!1366, !1344}
!1366 = distinct !{!1366, !1367, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1367 = distinct !{!1367, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1368 = !{!1366, !1341}
!1369 = !{!1341, !1344}
!1370 = distinct !{!1370, !1371, !1372}
!1371 = !{!"llvm.loop.isvectorized", i32 1}
!1372 = !{!"llvm.loop.unroll.runtime.disable"}
!1373 = distinct !{!1373, !1372, !1371}
!1374 = !{!1375, !1377}
!1375 = distinct !{!1375, !1376, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileId12split_at_mutCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1376 = distinct !{!1376, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileId12split_at_mutCs6u1mgJOKDyY_13rust_analyzer"}
!1377 = distinct !{!1377, !1376, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileId12split_at_mutCs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!1378 = !{!1379}
!1379 = distinct !{!1379, !1380, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1380 = distinct !{!1380, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs6u1mgJOKDyY_13rust_analyzer"}
!1381 = !{!1382}
!1382 = distinct !{!1382, !1380, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!1383 = !{!1384, !1382}
!1384 = distinct !{!1384, !1385, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1385 = distinct !{!1385, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1386 = !{!1384, !1379}
!1387 = !{!1388, !1382}
!1388 = distinct !{!1388, !1389, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1389 = distinct !{!1389, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1390 = !{!1388, !1379}
!1391 = !{!1392, !1382}
!1392 = distinct !{!1392, !1393, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1393 = distinct !{!1393, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1394 = !{!1392, !1379}
!1395 = !{!1396, !1382}
!1396 = distinct !{!1396, !1397, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1397 = distinct !{!1397, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1398 = !{!1396, !1379}
!1399 = !{!1400, !1382}
!1400 = distinct !{!1400, !1401, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1401 = distinct !{!1401, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1402 = !{!1400, !1379}
!1403 = !{!1404, !1382}
!1404 = distinct !{!1404, !1405, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1405 = distinct !{!1405, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1406 = !{!1404, !1379}
!1407 = !{!1379, !1382}
!1408 = distinct !{!1408, !1371, !1372}
!1409 = distinct !{!1409, !1372, !1371}
!1410 = !{!1411}
!1411 = distinct !{!1411, !1412, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTNtB17_8PositionB33_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3s_20DiagnosticCollection22set_native_diagnostics0E0EB3u_: argument 0"}
!1412 = distinct !{!1412, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTNtB17_8PositionB33_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3s_20DiagnosticCollection22set_native_diagnostics0E0EB3u_"}
!1413 = !{!1414}
!1414 = distinct !{!1414, !1415, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_: argument 0"}
!1415 = distinct !{!1415, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_"}
!1416 = !{!1417}
!1417 = distinct !{!1417, !1415, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_: argument 1"}
!1418 = !{!1414, !1417, !1411, !1419}
!1419 = distinct !{!1419, !1412, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTNtB17_8PositionB33_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3s_20DiagnosticCollection22set_native_diagnostics0E0EB3u_: argument 1"}
!1420 = !{!1421}
!1421 = distinct !{!1421, !1422, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 0"}
!1422 = distinct !{!1422, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_"}
!1423 = !{!1424}
!1424 = distinct !{!1424, !1422, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 1"}
!1425 = !{!1424, !1414, !1411}
!1426 = !{!1421, !1417, !1419}
!1427 = !{!1424, !1414, !1417, !1411, !1419}
!1428 = !{!1429}
!1429 = distinct !{!1429, !1430, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 0"}
!1430 = distinct !{!1430, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_"}
!1431 = !{!1432}
!1432 = distinct !{!1432, !1430, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 1"}
!1433 = !{!1432, !1417, !1411}
!1434 = !{!1429, !1414, !1419}
!1435 = !{!1432, !1414, !1417, !1411, !1419}
!1436 = !{!1437}
!1437 = distinct !{!1437, !1438, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_: argument 1"}
!1438 = distinct !{!1438, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_"}
!1439 = !{!1440, !1437, !1411, !1419}
!1440 = distinct !{!1440, !1438, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_: argument 0"}
!1441 = !{!1442}
!1442 = distinct !{!1442, !1443, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 0"}
!1443 = distinct !{!1443, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_"}
!1444 = !{!1445, !1440, !1437, !1411, !1419}
!1445 = distinct !{!1445, !1443, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 1"}
!1446 = !{!1447}
!1447 = distinct !{!1447, !1448, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 0"}
!1448 = distinct !{!1448, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_"}
!1449 = !{!1450}
!1450 = distinct !{!1450, !1448, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 1"}
!1451 = !{!1450, !1437, !1411}
!1452 = !{!1447, !1440, !1419}
!1453 = !{!1450, !1440, !1437, !1411, !1419}
!1454 = !{!1455, !1457, !1411, !1419}
!1455 = distinct !{!1455, !1456, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_: argument 0"}
!1456 = distinct !{!1456, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_"}
!1457 = distinct !{!1457, !1456, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_: argument 1"}
!1458 = !{!1459}
!1459 = distinct !{!1459, !1460, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 0"}
!1460 = distinct !{!1460, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_"}
!1461 = !{!1462, !1455, !1457, !1411, !1419}
!1462 = distinct !{!1462, !1460, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 1"}
!1463 = !{!1464}
!1464 = distinct !{!1464, !1465, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 0"}
!1465 = distinct !{!1465, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_"}
!1466 = !{!1467, !1455, !1457, !1411, !1419}
!1467 = distinct !{!1467, !1465, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 1"}
!1468 = !{!1469}
!1469 = distinct !{!1469, !1470, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_: argument 0"}
!1470 = distinct !{!1470, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_"}
!1471 = !{!1472}
!1472 = distinct !{!1472, !1470, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_: argument 1"}
!1473 = !{!1469, !1472}
!1474 = !{!1475}
!1475 = distinct !{!1475, !1476, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 0"}
!1476 = distinct !{!1476, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_"}
!1477 = !{!1478}
!1478 = distinct !{!1478, !1476, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 1"}
!1479 = !{!1478, !1469}
!1480 = !{!1475, !1472}
!1481 = !{!1478, !1469, !1472}
!1482 = !{!1483}
!1483 = distinct !{!1483, !1484, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 0"}
!1484 = distinct !{!1484, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_"}
!1485 = !{!1486}
!1486 = distinct !{!1486, !1484, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 1"}
!1487 = !{!1486, !1472}
!1488 = !{!1483, !1469}
!1489 = !{!1486, !1469, !1472}
!1490 = !{!1491}
!1491 = distinct !{!1491, !1492, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyTNtB1f_8PositionB3b_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3A_20DiagnosticCollection22set_native_diagnostics0E0EB3C_: argument 0"}
!1492 = distinct !{!1492, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyTNtB1f_8PositionB3b_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3A_20DiagnosticCollection22set_native_diagnostics0E0EB3C_"}
!1493 = !{!1494}
!1494 = distinct !{!1494, !1492, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyTNtB1f_8PositionB3b_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3A_20DiagnosticCollection22set_native_diagnostics0E0EB3C_: argument 1"}
!1495 = !{!1496}
!1496 = distinct !{!1496, !1497, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_: argument 0"}
!1497 = distinct !{!1497, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_"}
!1498 = !{!1499}
!1499 = distinct !{!1499, !1497, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_: argument 1"}
!1500 = !{!1496, !1499, !1491, !1494}
!1501 = !{!1502}
!1502 = distinct !{!1502, !1503, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 0"}
!1503 = distinct !{!1503, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_"}
!1504 = !{!1505}
!1505 = distinct !{!1505, !1503, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 1"}
!1506 = !{!1505, !1496, !1491}
!1507 = !{!1502, !1499, !1494}
!1508 = !{!1505, !1496, !1499, !1491, !1494}
!1509 = !{!1510}
!1510 = distinct !{!1510, !1511, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 0"}
!1511 = distinct !{!1511, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_"}
!1512 = !{!1513}
!1513 = distinct !{!1513, !1511, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 1"}
!1514 = !{!1513, !1499, !1491}
!1515 = !{!1510, !1496, !1494}
!1516 = !{!1513, !1496, !1499, !1491, !1494}
!1517 = !{!1491, !1494}
!1518 = !{!1519}
!1519 = distinct !{!1519, !1520, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1520 = distinct !{!1520, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1521 = !{!1522}
!1522 = distinct !{!1522, !1523, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1523 = distinct !{!1523, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1524 = !{!1525, !1527}
!1525 = distinct !{!1525, !1526, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic12split_at_mutCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1526 = distinct !{!1526, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic12split_at_mutCs6u1mgJOKDyY_13rust_analyzer"}
!1527 = distinct !{!1527, !1526, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic12split_at_mutCs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!1528 = !{!1529}
!1529 = distinct !{!1529, !1530, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyTNtB1f_8PositionB3x_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3W_20DiagnosticCollection22set_native_diagnostics0E0E0EB3Y_: argument 0"}
!1530 = distinct !{!1530, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyTNtB1f_8PositionB3x_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3W_20DiagnosticCollection22set_native_diagnostics0E0E0EB3Y_"}
!1531 = !{!1532}
!1532 = distinct !{!1532, !1530, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyTNtB1f_8PositionB3x_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3W_20DiagnosticCollection22set_native_diagnostics0E0E0EB3Y_: argument 1"}
!1533 = !{!1534}
!1534 = distinct !{!1534, !1535, !"_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_11sort_by_keyTNtB19_8PositionB35_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3u_20DiagnosticCollection22set_native_diagnostics0E0E0B3w_: argument 0"}
!1535 = distinct !{!1535, !"_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_11sort_by_keyTNtB19_8PositionB35_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3u_20DiagnosticCollection22set_native_diagnostics0E0E0B3w_"}
!1536 = !{!1537}
!1537 = distinct !{!1537, !1535, !"_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_11sort_by_keyTNtB19_8PositionB35_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3u_20DiagnosticCollection22set_native_diagnostics0E0E0B3w_: argument 1"}
!1538 = !{!1539}
!1539 = distinct !{!1539, !1540, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_: argument 0"}
!1540 = distinct !{!1540, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_"}
!1541 = !{!1542}
!1542 = distinct !{!1542, !1540, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_: argument 1"}
!1543 = !{!1539, !1542, !1534, !1537, !1529, !1532}
!1544 = !{!1545}
!1545 = distinct !{!1545, !1546, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 0"}
!1546 = distinct !{!1546, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_"}
!1547 = !{!1548}
!1548 = distinct !{!1548, !1546, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 1"}
!1549 = !{!1548, !1539, !1537, !1529}
!1550 = !{!1545, !1542, !1534, !1532}
!1551 = !{!1548, !1539, !1542, !1534, !1537, !1529, !1532}
!1552 = !{!1553}
!1553 = distinct !{!1553, !1554, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 0"}
!1554 = distinct !{!1554, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_"}
!1555 = !{!1556}
!1556 = distinct !{!1556, !1554, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 1"}
!1557 = !{!1556, !1542, !1534, !1529}
!1558 = !{!1553, !1539, !1537, !1532}
!1559 = !{!1556, !1539, !1542, !1534, !1537, !1529, !1532}
!1560 = !{!1529, !1532}
end_hunk_1
