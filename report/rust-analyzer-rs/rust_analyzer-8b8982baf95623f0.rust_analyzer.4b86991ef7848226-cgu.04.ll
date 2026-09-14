Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.04?download=true
inline.NumInlined: 5008
inline.NumDeleted: 2523
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 86
begin_hunk_0_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0EB3b_:bb.a
  br i1 %.not18.i, label %.loopexit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.l
  %i.as = getelementptr [112 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.ar, 1
  %i.at = icmp eq i64 %.sroa.16.089217, %.neg
  br i1 %i.at, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.ar, -2
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.ax, %bb.m ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.m ]
  %i.au = xor i64 %.sroa.06.014.i, -1
  %i.av = getelementptr [112 x i8], ptr %i.aa, i64 %i.au
  %i.aw = getelementptr [112 x i8], ptr %i.as, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.aw, ptr noundef nonnull align 8 dereferenceable(112) %i.av, i64 112, i1 false), !alias.scope !1340
  %i.ax = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.ay = xor i64 %.sroa.06.014.i, -2
  %i.az = getelementptr [112 x i8], ptr %i.aa, i64 %i.ay
  %i.ba = getelementptr [112 x i8], ptr %i.as, i64 %.sroa.06.014.i
  %i.bb = getelementptr i8, ptr %i.ba, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bb, ptr noundef nonnull align 8 dereferenceable(112) %i.az, i64 112, i1 false), !alias.scope !1340
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.m

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.ax, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod280 = trunc i64 %i.ar to i1
  call void @llvm.assume(i1 %lcmp.mod280)
  %i.bc = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.bd = getelementptr [112 x i8], ptr %i.aa, i64 %i.bc
  %i.be = getelementptr [112 x i8], ptr %i.as, i64 %.sroa.06.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.be, ptr noundef nonnull align 8 dereferenceable(112) %i.bd, i64 112, i1 false), !alias.scope !1340
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.l
  %i.bf = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.bf, label %.thread, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %.not.i38 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.089217
  br i1 %.not.i38, label %bb.o, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCscA5P7HRgTCP_15ide_diagnostics10Diagnostic12split_at_mutCs6u1mgJOKDyY_13rust_analyzer.exit, !prof !17

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @183, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #49, !noalias !1343
  unreachable

_RNvMNtCshzWfHUSfYae_4core5sliceSNtCscA5P7HRgTCP_15ide_diagnostics10Diagnostic12split_at_mutCs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph96) ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0EB3b_(ptr noalias nofree noundef nonnull align 8 %i.bg, i64 noundef %i.ar, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(112) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.bh, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.f, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  %.not64 = icmp samesign ult i64 %3, %.sroa.16.089217
  br i1 %.not64, label %bb.q, label %bb.p, !prof !60

bb.p:                                             ; preds = %.thread
  %i.bi = getelementptr [112 x i8], ptr %2, i64 %.sroa.16.089217 ; 4 uses
  %i.bj = getelementptr i8, ptr %i.x, i64 104
  br label %bb.r

bb.q:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.s, %bb.p
  %.sroa.19.0.i41 = phi ptr [ %i.bi, %bb.p ], [ %i.bv, %bb.s ] ; 2 uses
  %.sroa.11.0.i42 = phi i64 [ 0, %bb.p ], [ %i.bx, %bb.s ] ; 2 uses
  %.sroa.5.0.i43 = phi ptr [ %.sroa.0.0.ph96, %bb.p ], [ %i.by, %bb.s ] ; 3 uses
  %.sroa.0.0.i44 = phi i64 [ %.sroa.0.0.i, %bb.p ], [ %.sroa.16.089217, %bb.s ] ; 2 uses
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
  %.val.i57 = load i32, ptr %i.bn, align 8, !alias.scope !1345, !noalias !1344, !noundef !14
  %.val12.i58 = load i32, ptr %i.bj, align 8, !alias.scope !1345, !noalias !1344, !noundef !14
  %i.bo = icmp uge i32 %.val12.i58, %.val.i57     ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %.sroa.19.19.i56, i64 -112 ; 3 uses
  %.sroa.01.0.i.i59 = select i1 %i.bo, ptr %2, ptr %i.bp
  %i.bq = getelementptr inbounds nuw [112 x i8], ptr %.sroa.01.0.i.i59, i64 %.sroa.11.110.i55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bq, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.111.i54, i64 112, i1 false), !alias.scope !1346, !noalias !1347
  %i.br = zext i1 %i.bo to i64
  %i.bs = add i64 %.sroa.11.110.i55, %i.br        ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i54, i64 112 ; 3 uses
  %i.bu = icmp ult ptr %i.bt, %i.bk
  br i1 %i.bu, label %.lr.ph.i53, label %._crit_edge.i45

bb.s:                                             ; preds = %._crit_edge.i45
  %i.bv = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i46, i64 -112
  %i.bw = getelementptr inbounds nuw [112 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bw, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.1.lcssa.i48, i64 112, i1 false), !alias.scope !1346, !noalias !1348
  %i.bx = add i64 %.sroa.11.1.lcssa.i47, 1
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i48, i64 112
  br label %bb.r

bb.t:                                             ; preds = %._crit_edge.i45
  %i.bz = mul nuw nsw i64 %.sroa.11.1.lcssa.i47, 112
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph96, ptr nonnull align 8 %2, i64 %i.bz, i1 false), !alias.scope !1346
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cf, ptr noundef nonnull align 8 dereferenceable(112) %i.ce, i64 112, i1 false), !alias.scope !1346
  %i.cg = add nuw i64 %.sroa.06.014.i51, 2        ; 2 uses
  %i.ch = xor i64 %.sroa.06.014.i51, -2
  %i.ci = getelementptr [112 x i8], ptr %i.bi, i64 %i.ch
  %i.cj = getelementptr [112 x i8], ptr %i.cb, i64 %.sroa.06.014.i51
  %i.ck = getelementptr i8, ptr %i.cj, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ck, ptr noundef nonnull align 8 dereferenceable(112) %i.ci, i64 112, i1 false), !alias.scope !1346
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cn, ptr noundef nonnull align 8 dereferenceable(112) %i.cm, i64 112, i1 false), !alias.scope !1346
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0E0EB3F_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0E0EB3F_.exit: ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0E0EB3F_.exit.unr-lcssa, %.lr.ph16.i50.epil.preheader
  %i.co = icmp ugt i64 %.sroa.11.1.lcssa.i47, %.sroa.16.089217
  br i1 %i.co, label %bb.u, label %.outer, !prof !17

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
  %.sroa.0.0.ph132 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.gu, %.outer ] ; 24 uses
  %.sroa.16.0.ph131 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.gf, %.outer ] ; 2 uses
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
  %.sroa.0.0.ph.lcssa122 = phi ptr [ %i.gg, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph132, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileId12split_at_mutCs6u1mgJOKDyY_13rust_analyzer.exit ], [ %i.gu, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.27.2.lcssa.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileId12split_at_mutCs6u1mgJOKDyY_13rust_analyzer.exit ], [ %i.gf, %.outer ]
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
  %.val10.i = load i32, ptr %.sroa.0.0.ph132, align 4, !range !61, !alias.scope !1389, !noalias !1390, !noundef !14 ; 4 uses
  %.val11.i = load i32, ptr %i.d, align 4, !alias.scope !1389, !noalias !1390 ; 2 uses
  %.val12.i = load i32, ptr %i.k, align 4, !range !61, !alias.scope !1389, !noalias !1390, !noundef !14 ; 4 uses
  %i.o = getelementptr i8, ptr %i.k, i64 4
  %.val13.i = load i32, ptr %i.o, align 4, !alias.scope !1389, !noalias !1390 ; 2 uses
  %i.p = icmp eq i32 %.val10.i, %.val12.i
  %i.q = icmp ult i32 %.val11.i, %.val13.i
  %i.r = icmp ult i32 %.val10.i, %.val12.i
  %i.s = select i1 %i.p, i1 %i.q, i1 %i.r         ; 2 uses
  %.val8.i = load i32, ptr %i.l, align 4, !range !61, !alias.scope !1389, !noalias !1390, !noundef !14 ; 4 uses
  %i.t = getelementptr i8, ptr %i.l, i64 4
  %.val9.i = load i32, ptr %i.t, align 4, !alias.scope !1389, !noalias !1390 ; 2 uses
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
  %i.af = sub nuw i64 %i.ae, %i.e                 ; 3 uses
  %.sroa.0.0.i = lshr exact i64 %i.af, 3          ; 3 uses
  %i.ag = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0125280
  call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph132, i64 %i.af
  %7 = load <2 x i32>, ptr %i.ah, align 4         ; 4 uses
  %8 = extractelement <2 x i32> %7, i64 0         ; 5 uses
  store i32 %8, ptr %i.a, align 4
  %9 = extractelement <2 x i32> %7, i64 1         ; 3 uses
  store i32 %9, ptr %i.c, align 4
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.028.0.val = load i32, ptr %.sroa.028.0.ph129, align 4, !range !61, !noundef !14 ; 2 uses
  %.sroa.028.0.val37 = load i32, ptr %i.f, align 4
  %i.ai = icmp eq i32 %.sroa.028.0.val, %8
  %i.aj = icmp ult i32 %.sroa.028.0.val37, %9
  %i.ak = icmp ult i32 %.sroa.028.0.val, %8
  %i.al = select i1 %i.ai, i1 %i.aj, i1 %i.ak
  br i1 %i.al, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  %.not89 = icmp samesign ult i64 %3, %.sroa.16.0125280
  br i1 %.not89, label %bb.k, label %bb.j, !prof !60

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0125280 ; 3 uses
  %i.an = shufflevector <2 x i32> %7, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %10 = shufflevector <2 x i32> %7, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.m, %bb.j
  %.sroa.43.0.i = phi ptr [ %i.am, %bb.j ], [ %i.cq, %bb.m ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.j ], [ %.sroa.27.2.lcssa.i, %bb.m ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph132, %bb.j ], [ %i.ct, %bb.m ] ; 3 uses
  %.sroa.0.0.i39 = phi i64 [ %.sroa.0.0.i, %bb.j ], [ %.sroa.16.0125280, %bb.m ] ; 3 uses
  %i.ao = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i39, i64 3)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph132, i64 %i.ao ; 2 uses
  %i.aq = icmp ult ptr %.sroa.9.0.i, %i.ap
  br i1 %i.aq, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.sroa.9.131.i = phi ptr [ %i.bz, %.lr.ph.i ], [ %.sroa.9.0.i, %bb.l ] ; 6 uses
  %.sroa.27.130.i = phi i64 [ %i.by, %.lr.ph.i ], [ %.sroa.27.0.i, %bb.l ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %.sroa.43.0.i, %bb.l ] ; 4 uses
  %i.ar = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -8
  %i.as = load i64, ptr %.sroa.9.131.i, align 4, !alias.scope !1391, !noalias !1393
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 8
  %i.au = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16
  %i.av = load i64, ptr %i.at, align 4, !alias.scope !1391, !noalias !1394
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16
  %i.ax = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -24
  %i.ay = load i64, ptr %i.aw, align 4, !alias.scope !1391, !noalias !1395
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 24
  %i.ba = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32 ; 3 uses
  %i.bb = load i64, ptr %i.az, align 4, !alias.scope !1391, !noalias !1396
  %i.bc = load <8 x i32>, ptr %.sroa.9.131.i, align 4, !alias.scope !1391, !noalias !1392 ; 2 uses
  %i.bd = shufflevector <8 x i32> %i.bc, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.be = icmp eq <4 x i32> %i.bd, %i.an
  %i.bf = shufflevector <8 x i32> %i.bc, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bg = icmp ult <4 x i32> %i.bf, %10
  %i.bh = icmp ult <4 x i32> %i.bd, %i.an
  %i.bi = select <4 x i1> %i.be, <4 x i1> %i.bg, <4 x i1> %i.bh ; 4 uses
  %i.bj = extractelement <4 x i1> %i.bi, i64 0    ; 2 uses
  %.sroa.01.0.i.i = select i1 %i.bj, ptr %2, ptr %i.ar
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i
  store i64 %i.as, ptr %i.bk, align 4, !alias.scope !1392, !noalias !1397
  %i.bl = zext i1 %i.bj to i64
  %i.bm = add i64 %.sroa.27.130.i, %i.bl          ; 2 uses
  %i.bn = extractelement <4 x i1> %i.bi, i64 1    ; 2 uses
  %.sroa.01.0.i33.i = select i1 %i.bn, ptr %2, ptr %i.au
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i33.i, i64 %i.bm
  store i64 %i.av, ptr %i.bo, align 4, !alias.scope !1392, !noalias !1398
  %i.bp = zext i1 %i.bn to i64
  %i.bq = add i64 %i.bm, %i.bp                    ; 2 uses
  %i.br = extractelement <4 x i1> %i.bi, i64 2    ; 2 uses
  %.sroa.01.0.i34.i = select i1 %i.br, ptr %2, ptr %i.ax
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i34.i, i64 %i.bq
  store i64 %i.ay, ptr %i.bs, align 4, !alias.scope !1392, !noalias !1399
  %i.bt = zext i1 %i.br to i64
  %i.bu = add i64 %i.bq, %i.bt                    ; 2 uses
  %i.bv = extractelement <4 x i1> %i.bi, i64 3    ; 2 uses
  %.sroa.01.0.i35.i = select i1 %i.bv, ptr %2, ptr %i.ba
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i35.i, i64 %i.bu
  store i64 %i.bb, ptr %i.bw, align 4, !alias.scope !1392, !noalias !1400
  %i.bx = zext i1 %i.bv to i64
  %i.by = add i64 %i.bu, %i.bx                    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32 ; 3 uses
  %i.ca = icmp ult ptr %i.bz, %i.ap
  br i1 %i.ca, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.l
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.l ], [ %i.ba, %.lr.ph.i ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.l ], [ %i.by, %.lr.ph.i ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.l ], [ %i.bz, %.lr.ph.i ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph132, i64 %.sroa.0.0.i39 ; 2 uses
  %i.cc = icmp ult ptr %.sroa.9.1.lcssa.i, %i.cb
  br i1 %i.cc, label %.lr.ph38.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.cj, %.lr.ph38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.cn, %.lr.ph38.i ] ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.co, %.lr.ph38.i ] ; 2 uses
  %i.cd = icmp eq i64 %.sroa.0.0.i39, %.sroa.16.0125280
  br i1 %i.cd, label %bb.n, label %bb.m

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.co, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.sroa.27.235.i = phi i64 [ %i.cn, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.cj, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load i32, ptr %.sroa.9.236.i, align 4, !range !61, !alias.scope !1391, !noalias !1392, !noundef !14 ; 2 uses
  %i.ce = getelementptr i8, ptr %.sroa.9.236.i, i64 4
  %.val14.i = load i32, ptr %i.ce, align 4, !alias.scope !1391, !noalias !1392
  %i.cf = icmp eq i32 %.val.i, %8
  %i.cg = icmp ult i32 %.val14.i, %9
  %i.ch = icmp ult i32 %.val.i, %8
  %i.ci = select i1 %i.cf, i1 %i.cg, i1 %i.ch     ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -8 ; 3 uses
  %.sroa.01.0.i36.i = select i1 %i.ci, ptr %2, ptr %i.cj
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i36.i, i64 %.sroa.27.235.i
  %i.cl = load i64, ptr %.sroa.9.236.i, align 4, !alias.scope !1391, !noalias !1401
  store i64 %i.cl, ptr %i.ck, align 4, !alias.scope !1392, !noalias !1402
  %i.cm = zext i1 %i.ci to i64
  %i.cn = add i64 %.sroa.27.235.i, %i.cm          ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 8 ; 3 uses
  %i.cp = icmp ult ptr %i.co, %i.cb
  br i1 %i.cp, label %.lr.ph38.i, label %._crit_edge39.i

bb.m:                                             ; preds = %._crit_edge39.i
  %i.cq = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %.sroa.27.2.lcssa.i
  %i.cs = load i64, ptr %.sroa.9.2.lcssa.i, align 4, !alias.scope !1391, !noalias !1403
  store i64 %i.cs, ptr %i.cr, align 4, !alias.scope !1392, !noalias !1404
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8
  br label %bb.l

bb.n:                                             ; preds = %._crit_edge39.i
  %i.cu = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph132, ptr nonnull align 4 %2, i64 %i.cu, i1 false), !alias.scope !1405
  %i.cv = sub i64 %.sroa.16.0125280, %.sroa.27.2.lcssa.i ; 5 uses
  %.not47.i = icmp eq i64 %.sroa.16.0125280, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.n
  %i.cw = getelementptr [8 x i8], ptr %.sroa.0.0.ph132, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check289 = icmp ult i64 %i.cv, 4
  br i1 %min.iters.check289, label %scalar.ph288.preheader, label %vector.ph290

vector.ph290:                                     ; preds = %.lr.ph45.i
  %n.vec291 = and i64 %i.cv, -4                   ; 3 uses
  br label %vector.body292

vector.body292:                                   ; preds = %vector.body292, %vector.ph290
  %index293 = phi i64 [ 0, %vector.ph290 ], [ %index.next298, %vector.body292 ] ; 3 uses
  %i.cx = xor i64 %index293, -1
  %i.cy = getelementptr [8 x i8], ptr %i.am, i64 %i.cx ; 2 uses
  %i.cz = getelementptr [8 x i8], ptr %i.cw, i64 %index293 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cy, i64 -8
  %i.db = getelementptr i8, ptr %i.cy, i64 -24
  %wide.load294 = load <2 x i64>, ptr %i.da, align 4, !alias.scope !1392, !noalias !1391
  %wide.load295 = load <2 x i64>, ptr %i.db, align 4, !alias.scope !1392, !noalias !1391
  %reverse296 = shufflevector <2 x i64> %wide.load294, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse297 = shufflevector <2 x i64> %wide.load295, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.dc = getelementptr i8, ptr %i.cz, i64 16
  store <2 x i64> %reverse296, ptr %i.cz, align 4, !alias.scope !1391, !noalias !1392
  store <2 x i64> %reverse297, ptr %i.dc, align 4, !alias.scope !1391, !noalias !1392
  %index.next298 = add nuw i64 %index293, 4       ; 2 uses
  %i.dd = icmp eq i64 %index.next298, %n.vec291
  br i1 %i.dd, label %middle.block299, label %vector.body292, !llvm.loop !1367

middle.block299:                                  ; preds = %vector.body292
  %cmp.n300 = icmp eq i64 %i.cv, %n.vec291
  br i1 %cmp.n300, label %.loopexit, label %scalar.ph288.preheader

scalar.ph288.preheader:                           ; preds = %.lr.ph45.i, %middle.block299
  %.sroa.07.043.i.ph = phi i64 [ 0, %.lr.ph45.i ], [ %n.vec291, %middle.block299 ]
  br label %scalar.ph288

scalar.ph288:                                     ; preds = %scalar.ph288.preheader, %scalar.ph288
  %.sroa.07.043.i = phi i64 [ %i.de, %scalar.ph288 ], [ %.sroa.07.043.i.ph, %scalar.ph288.preheader ] ; 3 uses
  %i.de = add nuw i64 %.sroa.07.043.i, 1          ; 2 uses
  %i.df = xor i64 %.sroa.07.043.i, -1
  %i.dg = getelementptr [8 x i8], ptr %i.am, i64 %i.df
  %i.dh = getelementptr [8 x i8], ptr %i.cw, i64 %.sroa.07.043.i
  %i.di = load i64, ptr %i.dg, align 4, !alias.scope !1392, !noalias !1391
  store i64 %i.di, ptr %i.dh, align 4, !alias.scope !1391, !noalias !1392
  %exitcond.not.i = icmp eq i64 %i.de, %i.cv
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph288, !llvm.loop !1368

.loopexit:                                        ; preds = %scalar.ph288, %middle.block299, %bb.n
  %i.dj = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.dj, label %.thread, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %.not.i40 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0125280
  br i1 %.not.i40, label %bb.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileId12split_at_mutCs6u1mgJOKDyY_13rust_analyzer.exit, !prof !17

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @183, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #49, !noalias !1408
  unreachable

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileId12split_at_mutCs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.o
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph132, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph132) ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNvYB15_NtNtBa_3cmp10PartialOrd2ltECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 4 %i.dk, i64 noundef %i.cv, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %i.a, ptr noalias nofree noundef nonnull %6) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dl = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.dl, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.h, %.loopexit
  %11 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph132, i64 %i.af ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  %.not90 = icmp samesign ult i64 %3, %.sroa.16.0125280
  br i1 %.not90, label %bb.r, label %bb.q, !prof !60

bb.q:                                             ; preds = %.thread
  %i.dn = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0125280 ; 3 uses
  br label %bb.s

bb.r:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.u, %bb.q
  %.sroa.43.0.i43 = phi ptr [ %i.dn, %bb.q ], [ %i.fz, %bb.u ] ; 2 uses
  %.sroa.27.0.i44 = phi i64 [ 0, %bb.q ], [ %i.gc, %bb.u ] ; 2 uses
  %.sroa.9.0.i45 = phi ptr [ %.sroa.0.0.ph132, %bb.q ], [ %i.gd, %bb.u ] ; 3 uses
  %.sroa.0.0.i46 = phi i64 [ %.sroa.0.0.i, %bb.q ], [ %.sroa.16.0125280, %bb.u ] ; 3 uses
  %i.do = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i46, i64 3)
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph132, i64 %i.do ; 2 uses
  %i.dq = icmp ult ptr %.sroa.9.0.i45, %i.dp
  br i1 %i.dq, label %.lr.ph.i68, label %._crit_edge.i47

.lr.ph.i68:                                       ; preds = %bb.s
  %.val31.i69 = load i32, ptr %11, align 4, !range !61, !alias.scope !1409, !noalias !1410, !noundef !14 ; 8 uses
  %.val32.i75 = load i32, ptr %i.dm, align 4, !alias.scope !1409, !noalias !1410 ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i68
  %.sroa.9.131.i70 = phi ptr [ %.sroa.9.0.i45, %.lr.ph.i68 ], [ %i.fi, %bb.t ] ; 10 uses
  %.sroa.27.130.i71 = phi i64 [ %.sroa.27.0.i44, %.lr.ph.i68 ], [ %i.fh, %bb.t ] ; 2 uses
  %.sroa.43.129.i72 = phi ptr [ %.sroa.43.0.i43, %.lr.ph.i68 ], [ %i.fd, %bb.t ] ; 4 uses
  %.val29.i73 = load i32, ptr %.sroa.9.131.i70, align 4, !range !61, !alias.scope !1409, !noalias !1410, !noundef !14 ; 2 uses
  %i.dr = getelementptr i8, ptr %.sroa.9.131.i70, i64 4
  %.val30.i74 = load i32, ptr %i.dr, align 4, !alias.scope !1409, !noalias !1410
  %i.ds = icmp eq i32 %.val31.i69, %.val29.i73
  %i.dt = icmp uge i32 %.val32.i75, %.val30.i74
  %i.du = icmp uge i32 %.val31.i69, %.val29.i73
  %i.dv = select i1 %i.ds, i1 %i.dt, i1 %i.du     ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -8
  %.sroa.01.0.i.i76 = select i1 %i.dv, ptr %2, ptr %i.dw
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i76, i64 %.sroa.27.130.i71
  %i.dy = load i64, ptr %.sroa.9.131.i70, align 4, !alias.scope !1409, !noalias !1411
  store i64 %i.dy, ptr %i.dx, align 4, !alias.scope !1410, !noalias !1412
  %i.dz = zext i1 %i.dv to i64
  %i.ea = add i64 %.sroa.27.130.i71, %i.dz        ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 8 ; 2 uses
  %.val25.i77 = load i32, ptr %i.eb, align 4, !range !61, !alias.scope !1409, !noalias !1410, !noundef !14 ; 2 uses
  %i.ec = getelementptr i8, ptr %.sroa.9.131.i70, i64 12
  %.val26.i78 = load i32, ptr %i.ec, align 4, !alias.scope !1409, !noalias !1410
  %i.ed = icmp eq i32 %.val31.i69, %.val25.i77
  %i.ee = icmp uge i32 %.val32.i75, %.val26.i78
  %i.ef = icmp uge i32 %.val31.i69, %.val25.i77
  %i.eg = select i1 %i.ed, i1 %i.ee, i1 %i.ef     ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -16
  %.sroa.01.0.i33.i79 = select i1 %i.eg, ptr %2, ptr %i.eh
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i33.i79, i64 %i.ea
  %i.ej = load i64, ptr %i.eb, align 4, !alias.scope !1409, !noalias !1413
  store i64 %i.ej, ptr %i.ei, align 4, !alias.scope !1410, !noalias !1414
  %i.ek = zext i1 %i.eg to i64
  %i.el = add i64 %i.ea, %i.ek                    ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 16 ; 2 uses
  %.val21.i80 = load i32, ptr %i.em, align 4, !range !61, !alias.scope !1409, !noalias !1410, !noundef !14 ; 2 uses
  %i.en = getelementptr i8, ptr %.sroa.9.131.i70, i64 20
  %.val22.i81 = load i32, ptr %i.en, align 4, !alias.scope !1409, !noalias !1410
  %i.eo = icmp eq i32 %.val31.i69, %.val21.i80
  %i.ep = icmp uge i32 %.val32.i75, %.val22.i81
  %i.eq = icmp uge i32 %.val31.i69, %.val21.i80
  %i.er = select i1 %i.eo, i1 %i.ep, i1 %i.eq     ; 2 uses
  %i.es = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -24
  %.sroa.01.0.i34.i82 = select i1 %i.er, ptr %2, ptr %i.es
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i34.i82, i64 %i.el
  %i.eu = load i64, ptr %i.em, align 4, !alias.scope !1409, !noalias !1415
  store i64 %i.eu, ptr %i.et, align 4, !alias.scope !1410, !noalias !1416
  %i.ev = zext i1 %i.er to i64
  %i.ew = add i64 %i.el, %i.ev                    ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 24 ; 2 uses
  %.val17.i83 = load i32, ptr %i.ex, align 4, !range !61, !alias.scope !1409, !noalias !1410, !noundef !14 ; 2 uses
  %i.ey = getelementptr i8, ptr %.sroa.9.131.i70, i64 28
  %.val18.i84 = load i32, ptr %i.ey, align 4, !alias.scope !1409, !noalias !1410
  %i.ez = icmp eq i32 %.val31.i69, %.val17.i83
  %i.fa = icmp uge i32 %.val32.i75, %.val18.i84
  %i.fb = icmp uge i32 %.val31.i69, %.val17.i83
  %i.fc = select i1 %i.ez, i1 %i.fa, i1 %i.fb     ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -32 ; 3 uses
  %.sroa.01.0.i35.i85 = select i1 %i.fc, ptr %2, ptr %i.fd
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i35.i85, i64 %i.ew
  %i.ff = load i64, ptr %i.ex, align 4, !alias.scope !1409, !noalias !1417
  store i64 %i.ff, ptr %i.fe, align 4, !alias.scope !1410, !noalias !1418
  %i.fg = zext i1 %i.fc to i64
  %i.fh = add i64 %i.ew, %i.fg                    ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 32 ; 3 uses
  %i.fj = icmp ult ptr %i.fi, %i.dp
  br i1 %i.fj, label %bb.t, label %._crit_edge.i47

._crit_edge.i47:                                  ; preds = %bb.t, %bb.s
  %.sroa.43.1.lcssa.i48 = phi ptr [ %.sroa.43.0.i43, %bb.s ], [ %i.fd, %bb.t ] ; 2 uses
  %.sroa.27.1.lcssa.i49 = phi i64 [ %.sroa.27.0.i44, %bb.s ], [ %i.fh, %bb.t ] ; 2 uses
  %.sroa.9.1.lcssa.i50 = phi ptr [ %.sroa.9.0.i45, %bb.s ], [ %i.fi, %bb.t ] ; 3 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph132, i64 %.sroa.0.0.i46 ; 2 uses
  %i.fl = icmp ult ptr %.sroa.9.1.lcssa.i50, %i.fk
  br i1 %i.fl, label %.lr.ph38.i59.preheader, label %._crit_edge39.i51

.lr.ph38.i59.preheader:                           ; preds = %._crit_edge.i47
  %.val15.i65 = load i32, ptr %11, align 4, !range !61, !alias.scope !1409, !noalias !1410, !noundef !14 ; 2 uses
  %.val16.i66 = load i32, ptr %i.dm, align 4, !alias.scope !1409, !noalias !1410
  br label %.lr.ph38.i59

._crit_edge39.i51:                                ; preds = %.lr.ph38.i59, %._crit_edge.i47
  %.sroa.43.2.lcssa.i52 = phi ptr [ %.sroa.43.1.lcssa.i48, %._crit_edge.i47 ], [ %i.fs, %.lr.ph38.i59 ]
  %.sroa.27.2.lcssa.i53 = phi i64 [ %.sroa.27.1.lcssa.i49, %._crit_edge.i47 ], [ %i.fw, %.lr.ph38.i59 ] ; 9 uses
  %.sroa.9.2.lcssa.i54 = phi ptr [ %.sroa.9.1.lcssa.i50, %._crit_edge.i47 ], [ %i.fx, %.lr.ph38.i59 ] ; 2 uses
  %i.fm = icmp eq i64 %.sroa.0.0.i46, %.sroa.16.0125280
  br i1 %i.fm, label %bb.v, label %bb.u

.lr.ph38.i59:                                     ; preds = %.lr.ph38.i59.preheader, %.lr.ph38.i59
  %.sroa.9.236.i60 = phi ptr [ %i.fx, %.lr.ph38.i59 ], [ %.sroa.9.1.lcssa.i50, %.lr.ph38.i59.preheader ] ; 4 uses
  %.sroa.27.235.i61 = phi i64 [ %i.fw, %.lr.ph38.i59 ], [ %.sroa.27.1.lcssa.i49, %.lr.ph38.i59.preheader ] ; 2 uses
  %.sroa.43.234.i62 = phi ptr [ %i.fs, %.lr.ph38.i59 ], [ %.sroa.43.1.lcssa.i48, %.lr.ph38.i59.preheader ]
  %.val.i63 = load i32, ptr %.sroa.9.236.i60, align 4, !range !61, !alias.scope !1409, !noalias !1410, !noundef !14 ; 2 uses
  %i.fn = getelementptr i8, ptr %.sroa.9.236.i60, i64 4
  %.val14.i64 = load i32, ptr %i.fn, align 4, !alias.scope !1409, !noalias !1410
  %i.fo = icmp eq i32 %.val15.i65, %.val.i63
  %i.fp = icmp uge i32 %.val16.i66, %.val14.i64
  %i.fq = icmp uge i32 %.val15.i65, %.val.i63
  %i.fr = select i1 %i.fo, i1 %i.fp, i1 %i.fq     ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %.sroa.43.234.i62, i64 -8 ; 3 uses
  %.sroa.01.0.i36.i67 = select i1 %i.fr, ptr %2, ptr %i.fs
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i36.i67, i64 %.sroa.27.235.i61
  %i.fu = load i64, ptr %.sroa.9.236.i60, align 4, !alias.scope !1409, !noalias !1419
  store i64 %i.fu, ptr %i.ft, align 4, !alias.scope !1410, !noalias !1420
  %i.fv = zext i1 %i.fr to i64
  %i.fw = add i64 %.sroa.27.235.i61, %i.fv        ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i60, i64 8 ; 3 uses
  %i.fy = icmp ult ptr %i.fx, %i.fk
  br i1 %i.fy, label %.lr.ph38.i59, label %._crit_edge39.i51

bb.u:                                             ; preds = %._crit_edge39.i51
  %i.fz = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i52, i64 -8
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i53
  %i.gb = load i64, ptr %.sroa.9.2.lcssa.i54, align 4, !alias.scope !1409, !noalias !1421
  store i64 %i.gb, ptr %i.ga, align 4, !alias.scope !1410, !noalias !1422
  %i.gc = add i64 %.sroa.27.2.lcssa.i53, 1
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i54, i64 8
  br label %bb.s

bb.v:                                             ; preds = %._crit_edge39.i51
  %i.ge = shl nuw nsw i64 %.sroa.27.2.lcssa.i53, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph132, ptr nonnull align 4 %2, i64 %i.ge, i1 false), !alias.scope !1423
  %i.gf = sub i64 %.sroa.16.0125280, %.sroa.27.2.lcssa.i53 ; 7 uses
  %.not47.i55 = icmp eq i64 %.sroa.16.0125280, %.sroa.27.2.lcssa.i53
  %i.gg = getelementptr [8 x i8], ptr %.sroa.0.0.ph132, i64 %.sroa.27.2.lcssa.i53 ; 3 uses
  br i1 %.not47.i55, label %.outer.thread, label %.lr.ph45.i56

.lr.ph45.i56:                                     ; preds = %bb.v
  %min.iters.check = icmp ult i64 %i.gf, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph45.i56
  %n.vec = and i64 %i.gf, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gh = xor i64 %index, -1
  %i.gi = getelementptr [8 x i8], ptr %i.dn, i64 %i.gh ; 2 uses
  %i.gj = getelementptr [8 x i8], ptr %i.gg, i64 %index ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gi, i64 -8
  %i.gl = getelementptr i8, ptr %i.gi, i64 -24
  %wide.load = load <2 x i64>, ptr %i.gk, align 4, !alias.scope !1410, !noalias !1409
  %wide.load286 = load <2 x i64>, ptr %i.gl, align 4, !alias.scope !1410, !noalias !1409
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse287 = shufflevector <2 x i64> %wide.load286, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.gm = getelementptr i8, ptr %i.gj, i64 16
  store <2 x i64> %reverse, ptr %i.gj, align 4, !alias.scope !1409, !noalias !1410
  store <2 x i64> %reverse287, ptr %i.gm, align 4, !alias.scope !1409, !noalias !1410
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gn = icmp eq i64 %index.next, %n.vec
  br i1 %i.gn, label %middle.block, label %vector.body, !llvm.loop !1387

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gf, %n.vec
  br i1 %cmp.n, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs6u1mgJOKDyY_13rust_analyzer.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph45.i56, %middle.block
  %.sroa.07.043.i57.ph = phi i64 [ 0, %.lr.ph45.i56 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.07.043.i57 = phi i64 [ %i.go, %scalar.ph ], [ %.sroa.07.043.i57.ph, %scalar.ph.preheader ] ; 3 uses
  %i.go = add nuw i64 %.sroa.07.043.i57, 1        ; 2 uses
  %i.gp = xor i64 %.sroa.07.043.i57, -1
  %i.gq = getelementptr [8 x i8], ptr %i.dn, i64 %i.gp
  %i.gr = getelementptr [8 x i8], ptr %i.gg, i64 %.sroa.07.043.i57
  %i.gs = load i64, ptr %i.gq, align 4, !alias.scope !1410, !noalias !1409
  store i64 %i.gs, ptr %i.gr, align 4, !alias.scope !1409, !noalias !1410
  %exitcond.not.i58 = icmp eq i64 %i.go, %i.gf
  br i1 %exitcond.not.i58, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs6u1mgJOKDyY_13rust_analyzer.exit, label %scalar.ph, !llvm.loop !1388

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %scalar.ph, %middle.block
  %i.gt = icmp ugt i64 %.sroa.27.2.lcssa.i53, %.sroa.16.0125280
  br i1 %i.gt, label %bb.w, label %.outer, !prof !17

.outer.thread:                                    ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs6u1mgJOKDyY_13rust_analyzer.exit
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph132, i64 %.sroa.27.2.lcssa.i53 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gv = icmp ult i64 %i.gf, 33
  br i1 %i.gv, label %.outer._crit_edge, label %.lr.ph

bb.w:                                             ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs6u1mgJOKDyY_13rust_analyzer.exit
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i53, i64 noundef %.sroa.16.0125280, i64 noundef %.sroa.16.0125280, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #49
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTNtB17_8PositionB33_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3s_20DiagnosticCollection22set_native_diagnostics0E0EB3u_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 29562089861714026) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 29562089861714026) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(312) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [16 x i8], align 4                ; 7 uses
  %i.h = alloca [16 x i8], align 4                ; 7 uses
  %i.i = alloca [16 x i8], align 4                ; 7 uses
  %i.j = alloca [16 x i8], align 4                ; 7 uses
  %i.k = alloca [16 x i8], align 4                ; 7 uses
  %i.l = alloca [16 x i8], align 4                ; 7 uses
  %i.m = alloca [312 x i8], align 8               ; 6 uses
  %i.n = icmp samesign ult i64 %1, 33
  br i1 %i.n, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph96 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.gf, %.outer ] ; 23 uses
  %.sroa.16.0.ph95 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.fq, %.outer ] ; 2 uses
  %.sroa.025.0.ph94 = phi i32 [ %4, %.lr.ph.lr.ph ], [ %i.ao, %.outer ] ; 2 uses
  %.sroa.028.0.ph93 = phi ptr [ %5, %.lr.ph.lr.ph ], [ null, %.outer ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 288
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 292
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 296
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 300
  %i.ak = ptrtoint ptr %.sroa.0.0.ph96 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph93, null
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph93, i64 288
  %i.am = icmp eq i32 %.sroa.025.0.ph94, 0
  br i1 %i.am, label %.lr.ph._crit_edge, label %.lr.ph219

bb.b:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic12split_at_mutCs6u1mgJOKDyY_13rust_analyzer.exit
  %i.an = icmp eq i32 %i.ao, 0
  br i1 %i.an, label %.lr.ph._crit_edge, label %.lr.ph219

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic12split_at_mutCs6u1mgJOKDyY_13rust_analyzer.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa87 = phi ptr [ %i.fr, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph96, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic12split_at_mutCs6u1mgJOKDyY_13rust_analyzer.exit ], [ %i.gf, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic12split_at_mutCs6u1mgJOKDyY_13rust_analyzer.exit ], [ %i.fq, %.outer ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_11sort_by_keyTNtB1u_8PositionB3q_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3P_20DiagnosticCollection22set_native_diagnostics0E0EB3R_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa87, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 29562089861714026) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.f

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.089.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph95, %.lr.ph ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyTNtBY_8PositionB2T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3h_20DiagnosticCollection22set_native_diagnostics0E0EB3j_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph96, i64 noundef %.sroa.16.089.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.f

.lr.ph219:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.088218 = phi i32 [ %i.ao, %bb.b ], [ %.sroa.025.0.ph94, %.lr.ph ]
  %.sroa.16.089217 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph95, %.lr.ph ] ; 21 uses
  %i.ao = add i32 %.sroa.025.088218, -1           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1501)
  %i.ap = lshr i64 %.sroa.16.089217, 3            ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.ap, 1248
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 %.idx.i ; 6 uses
  %.idx2.i = mul nuw nsw i64 %i.ap, 2184
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 %.idx2.i ; 6 uses
  %i.as = icmp samesign ult i64 %.sroa.16.089217, 64
  br i1 %i.as, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph219
  %i.at = call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyTNtB16_8PositionB32_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3r_20DiagnosticCollection22set_native_diagnostics0E0EB3t_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph96, ptr noundef nonnull readonly %i.aq, ptr noundef nonnull readonly %i.ar, i64 noundef %i.ap, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.g

end_hunk_0
