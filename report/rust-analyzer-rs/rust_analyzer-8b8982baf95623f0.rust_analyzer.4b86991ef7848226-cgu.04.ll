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
  %.sroa.0.0.ph132 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.fx, %.outer ] ; 24 uses
  %.sroa.16.0.ph131 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.fi, %.outer ] ; 2 uses
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
  %.sroa.0.0.ph.lcssa122 = phi ptr [ %i.fj, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph132, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileId12split_at_mutCs6u1mgJOKDyY_13rust_analyzer.exit ], [ %i.fx, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.27.2.lcssa.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileId12split_at_mutCs6u1mgJOKDyY_13rust_analyzer.exit ], [ %i.fi, %.outer ]
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
  %10 = shufflevector <2 x i32> %7, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %11 = shufflevector <2 x i32> %7, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.m, %bb.j
  %.sroa.43.0.i = phi ptr [ %i.am, %bb.j ], [ %i.bt, %bb.m ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.j ], [ %.sroa.27.2.lcssa.i, %bb.m ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph132, %bb.j ], [ %i.bw, %bb.m ] ; 3 uses
  %.sroa.0.0.i39 = phi i64 [ %.sroa.0.0.i, %bb.j ], [ %.sroa.16.0125280, %bb.m ] ; 3 uses
  %i.an = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i39, i64 3)
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph132, i64 %i.an ; 2 uses
  %i.ap = icmp ult ptr %.sroa.9.0.i, %i.ao
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.sroa.9.131.i = phi ptr [ %i.bc, %.lr.ph.i ], [ %.sroa.9.0.i, %bb.l ] ; 6 uses
  %.sroa.27.130.i = phi i64 [ %i.bb, %.lr.ph.i ], [ %.sroa.27.0.i, %bb.l ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %18, %.lr.ph.i ], [ %.sroa.43.0.i, %bb.l ] ; 4 uses
  %i.aq = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -8
  %12 = load i64, ptr %.sroa.9.131.i, align 4, !alias.scope !1391, !noalias !1393
  %13 = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 8
  %14 = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16
  %15 = load i64, ptr %13, align 4, !alias.scope !1391, !noalias !1394
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16
  %16 = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -24
  %i.as = load i64, ptr %i.ar, align 4, !alias.scope !1391, !noalias !1395
  %17 = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 24
  %18 = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32 ; 3 uses
  %19 = load i64, ptr %17, align 4, !alias.scope !1391, !noalias !1396
  %20 = load <8 x i32>, ptr %.sroa.9.131.i, align 4, !alias.scope !1391, !noalias !1392 ; 2 uses
  %21 = shufflevector <8 x i32> %20, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %22 = icmp eq <4 x i32> %21, %10
  %23 = shufflevector <8 x i32> %20, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %24 = icmp ult <4 x i32> %23, %11
  %25 = icmp ult <4 x i32> %21, %10
  %26 = select <4 x i1> %22, <4 x i1> %24, <4 x i1> %25 ; 4 uses
  %27 = extractelement <4 x i1> %26, i64 0        ; 2 uses
  %.sroa.01.0.i33.i.a = select i1 %27, ptr %2, ptr %i.aq
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i33.i.a, i64 %.sroa.27.130.i
  store i64 %12, ptr %i.at, align 4, !alias.scope !1392, !noalias !1397
  %i.au = zext i1 %27 to i64
  %i.av = add i64 %.sroa.27.130.i, %i.au          ; 2 uses
  %28 = extractelement <4 x i1> %26, i64 1        ; 2 uses
  %.sroa.01.0.i34.i.a = select i1 %28, ptr %2, ptr %14
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i34.i.a, i64 %i.av
  store i64 %15, ptr %i.aw, align 4, !alias.scope !1392, !noalias !1398
  %i.ax = zext i1 %28 to i64
  %i.ay = add i64 %i.av, %i.ax                    ; 2 uses
  %29 = extractelement <4 x i1> %26, i64 2        ; 2 uses
  %.sroa.01.0.i34.i = select i1 %29, ptr %2, ptr %16
  %30 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i34.i, i64 %i.ay
  store i64 %i.as, ptr %30, align 4, !alias.scope !1392, !noalias !1399
  %31 = zext i1 %29 to i64
  %32 = add i64 %i.ay, %31                        ; 2 uses
  %33 = extractelement <4 x i1> %26, i64 3        ; 2 uses
  %.sroa.01.0.i35.i = select i1 %33, ptr %2, ptr %18
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i35.i, i64 %32
  store i64 %19, ptr %i.az, align 4, !alias.scope !1392, !noalias !1400
  %i.ba = zext i1 %33 to i64
  %i.bb = add i64 %32, %i.ba                      ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32 ; 3 uses
  %i.bd = icmp ult ptr %i.bc, %i.ao
  br i1 %i.bd, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.l
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.l ], [ %18, %.lr.ph.i ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.l ], [ %i.bb, %.lr.ph.i ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.l ], [ %i.bc, %.lr.ph.i ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph132, i64 %.sroa.0.0.i39 ; 2 uses
  %i.bf = icmp ult ptr %.sroa.9.1.lcssa.i, %i.be
  br i1 %i.bf, label %.lr.ph38.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.bm, %.lr.ph38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.bq, %.lr.ph38.i ] ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.br, %.lr.ph38.i ] ; 2 uses
  %i.bg = icmp eq i64 %.sroa.0.0.i39, %.sroa.16.0125280
  br i1 %i.bg, label %bb.n, label %bb.m

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.br, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.sroa.27.235.i = phi i64 [ %i.bq, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.bm, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load i32, ptr %.sroa.9.236.i, align 4, !range !61, !alias.scope !1391, !noalias !1392, !noundef !14 ; 2 uses
  %i.bh = getelementptr i8, ptr %.sroa.9.236.i, i64 4
  %.val14.i = load i32, ptr %i.bh, align 4, !alias.scope !1391, !noalias !1392
  %i.bi = icmp eq i32 %.val.i, %8
  %i.bj = icmp ult i32 %.val14.i, %9
  %i.bk = icmp ult i32 %.val.i, %8
  %i.bl = select i1 %i.bi, i1 %i.bj, i1 %i.bk     ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -8 ; 3 uses
  %.sroa.01.0.i36.i = select i1 %i.bl, ptr %2, ptr %i.bm
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i36.i, i64 %.sroa.27.235.i
  %i.bo = load i64, ptr %.sroa.9.236.i, align 4, !alias.scope !1391, !noalias !1401
  store i64 %i.bo, ptr %i.bn, align 4, !alias.scope !1392, !noalias !1402
  %i.bp = zext i1 %i.bl to i64
  %i.bq = add i64 %.sroa.27.235.i, %i.bp          ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 8 ; 3 uses
  %i.bs = icmp ult ptr %i.br, %i.be
  br i1 %i.bs, label %.lr.ph38.i, label %._crit_edge39.i

bb.m:                                             ; preds = %._crit_edge39.i
  %i.bt = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8 ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.sroa.27.2.lcssa.i
  %i.bv = load i64, ptr %.sroa.9.2.lcssa.i, align 4, !alias.scope !1391, !noalias !1403
  store i64 %i.bv, ptr %i.bu, align 4, !alias.scope !1392, !noalias !1404
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8
  br label %bb.l

bb.n:                                             ; preds = %._crit_edge39.i
  %i.bx = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph132, ptr nonnull align 4 %2, i64 %i.bx, i1 false), !alias.scope !1405
  %i.by = sub i64 %.sroa.16.0125280, %.sroa.27.2.lcssa.i ; 5 uses
  %.not47.i = icmp eq i64 %.sroa.16.0125280, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.n
  %i.bz = getelementptr [8 x i8], ptr %.sroa.0.0.ph132, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check289 = icmp ult i64 %i.by, 4
  br i1 %min.iters.check289, label %scalar.ph288.preheader, label %vector.ph290

vector.ph290:                                     ; preds = %.lr.ph45.i
  %n.vec291 = and i64 %i.by, -4                   ; 3 uses
  br label %vector.body292

vector.body292:                                   ; preds = %vector.body292, %vector.ph290
  %index293 = phi i64 [ 0, %vector.ph290 ], [ %index.next298, %vector.body292 ] ; 3 uses
  %i.ca = xor i64 %index293, -1
  %i.cb = getelementptr [8 x i8], ptr %i.am, i64 %i.ca ; 2 uses
  %i.cc = getelementptr [8 x i8], ptr %i.bz, i64 %index293 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cb, i64 -8
  %i.ce = getelementptr i8, ptr %i.cb, i64 -24
  %wide.load294 = load <2 x i64>, ptr %i.cd, align 4, !alias.scope !1392, !noalias !1391
  %wide.load295 = load <2 x i64>, ptr %i.ce, align 4, !alias.scope !1392, !noalias !1391
  %reverse296 = shufflevector <2 x i64> %wide.load294, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse297 = shufflevector <2 x i64> %wide.load295, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.cf = getelementptr i8, ptr %i.cc, i64 16
  store <2 x i64> %reverse296, ptr %i.cc, align 4, !alias.scope !1391, !noalias !1392
  store <2 x i64> %reverse297, ptr %i.cf, align 4, !alias.scope !1391, !noalias !1392
  %index.next298 = add nuw i64 %index293, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next298, %n.vec291
  br i1 %i.cg, label %middle.block299, label %vector.body292, !llvm.loop !1367

middle.block299:                                  ; preds = %vector.body292
  %cmp.n300 = icmp eq i64 %i.by, %n.vec291
  br i1 %cmp.n300, label %.loopexit, label %scalar.ph288.preheader

scalar.ph288.preheader:                           ; preds = %.lr.ph45.i, %middle.block299
  %.sroa.07.043.i.ph = phi i64 [ 0, %.lr.ph45.i ], [ %n.vec291, %middle.block299 ]
  br label %scalar.ph288

scalar.ph288:                                     ; preds = %scalar.ph288.preheader, %scalar.ph288
  %.sroa.07.043.i = phi i64 [ %i.ch, %scalar.ph288 ], [ %.sroa.07.043.i.ph, %scalar.ph288.preheader ] ; 3 uses
  %i.ch = add nuw i64 %.sroa.07.043.i, 1          ; 2 uses
  %i.ci = xor i64 %.sroa.07.043.i, -1
  %i.cj = getelementptr [8 x i8], ptr %i.am, i64 %i.ci
  %i.ck = getelementptr [8 x i8], ptr %i.bz, i64 %.sroa.07.043.i
  %i.cl = load i64, ptr %i.cj, align 4, !alias.scope !1392, !noalias !1391
  store i64 %i.cl, ptr %i.ck, align 4, !alias.scope !1391, !noalias !1392
  %exitcond.not.i = icmp eq i64 %i.ch, %i.by
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph288, !llvm.loop !1368

.loopexit:                                        ; preds = %scalar.ph288, %middle.block299, %bb.n
  %i.cm = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.cm, label %.thread, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %.not.i40 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0125280
  br i1 %.not.i40, label %bb.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileId12split_at_mutCs6u1mgJOKDyY_13rust_analyzer.exit, !prof !17

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @183, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #49, !noalias !1408
  unreachable

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileId12split_at_mutCs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph132, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph132) ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNvYB15_NtNtBa_3cmp10PartialOrd2ltECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 4 %i.cn, i64 noundef %i.by, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %i.a, ptr noalias nofree noundef nonnull %6) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.co = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.co, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.h, %.loopexit
  %34 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph132, i64 %i.af ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %34, i64 4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  %.not90 = icmp samesign ult i64 %3, %.sroa.16.0125280
  br i1 %.not90, label %bb.r, label %bb.q, !prof !60

bb.q:                                             ; preds = %.thread
  %i.cq = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0125280 ; 3 uses
  br label %bb.s

bb.r:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.u, %bb.q
  %.sroa.43.0.i43 = phi ptr [ %i.cq, %bb.q ], [ %i.fc, %bb.u ] ; 2 uses
  %.sroa.27.0.i44 = phi i64 [ 0, %bb.q ], [ %i.ff, %bb.u ] ; 2 uses
  %.sroa.9.0.i45 = phi ptr [ %.sroa.0.0.ph132, %bb.q ], [ %i.fg, %bb.u ] ; 3 uses
  %.sroa.0.0.i46 = phi i64 [ %.sroa.0.0.i, %bb.q ], [ %.sroa.16.0125280, %bb.u ] ; 3 uses
  %i.cr = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i46, i64 3)
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph132, i64 %i.cr ; 2 uses
  %i.ct = icmp ult ptr %.sroa.9.0.i45, %i.cs
  br i1 %i.ct, label %.lr.ph.i68, label %._crit_edge.i47

.lr.ph.i68:                                       ; preds = %bb.s
  %.val31.i69 = load i32, ptr %34, align 4, !range !61, !alias.scope !1409, !noalias !1410, !noundef !14 ; 8 uses
  %.val32.i75 = load i32, ptr %i.cp, align 4, !alias.scope !1409, !noalias !1410 ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i68
  %.sroa.9.131.i70 = phi ptr [ %.sroa.9.0.i45, %.lr.ph.i68 ], [ %i.el, %bb.t ] ; 10 uses
  %.sroa.27.130.i71 = phi i64 [ %.sroa.27.0.i44, %.lr.ph.i68 ], [ %i.ek, %bb.t ] ; 2 uses
  %.sroa.43.129.i72 = phi ptr [ %.sroa.43.0.i43, %.lr.ph.i68 ], [ %i.eg, %bb.t ] ; 4 uses
  %.val29.i73 = load i32, ptr %.sroa.9.131.i70, align 4, !range !61, !alias.scope !1409, !noalias !1410, !noundef !14 ; 2 uses
  %i.cu = getelementptr i8, ptr %.sroa.9.131.i70, i64 4
  %.val30.i74 = load i32, ptr %i.cu, align 4, !alias.scope !1409, !noalias !1410
  %i.cv = icmp eq i32 %.val31.i69, %.val29.i73
  %i.cw = icmp uge i32 %.val32.i75, %.val30.i74
  %i.cx = icmp uge i32 %.val31.i69, %.val29.i73
  %i.cy = select i1 %i.cv, i1 %i.cw, i1 %i.cx     ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -8
  %.sroa.01.0.i.i76 = select i1 %i.cy, ptr %2, ptr %i.cz
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i76, i64 %.sroa.27.130.i71
  %i.db = load i64, ptr %.sroa.9.131.i70, align 4, !alias.scope !1409, !noalias !1411
  store i64 %i.db, ptr %i.da, align 4, !alias.scope !1410, !noalias !1412
  %i.dc = zext i1 %i.cy to i64
  %i.dd = add i64 %.sroa.27.130.i71, %i.dc        ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 8 ; 2 uses
  %.val25.i77 = load i32, ptr %i.de, align 4, !range !61, !alias.scope !1409, !noalias !1410, !noundef !14 ; 2 uses
  %i.df = getelementptr i8, ptr %.sroa.9.131.i70, i64 12
  %.val26.i78 = load i32, ptr %i.df, align 4, !alias.scope !1409, !noalias !1410
  %i.dg = icmp eq i32 %.val31.i69, %.val25.i77
  %i.dh = icmp uge i32 %.val32.i75, %.val26.i78
  %i.di = icmp uge i32 %.val31.i69, %.val25.i77
  %i.dj = select i1 %i.dg, i1 %i.dh, i1 %i.di     ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -16
  %.sroa.01.0.i33.i79 = select i1 %i.dj, ptr %2, ptr %i.dk
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i33.i79, i64 %i.dd
  %i.dm = load i64, ptr %i.de, align 4, !alias.scope !1409, !noalias !1413
  store i64 %i.dm, ptr %i.dl, align 4, !alias.scope !1410, !noalias !1414
  %i.dn = zext i1 %i.dj to i64
  %i.do = add i64 %i.dd, %i.dn                    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 16 ; 2 uses
  %.val21.i80 = load i32, ptr %i.dp, align 4, !range !61, !alias.scope !1409, !noalias !1410, !noundef !14 ; 2 uses
  %i.dq = getelementptr i8, ptr %.sroa.9.131.i70, i64 20
  %.val22.i81 = load i32, ptr %i.dq, align 4, !alias.scope !1409, !noalias !1410
  %i.dr = icmp eq i32 %.val31.i69, %.val21.i80
  %i.ds = icmp uge i32 %.val32.i75, %.val22.i81
  %i.dt = icmp uge i32 %.val31.i69, %.val21.i80
  %i.du = select i1 %i.dr, i1 %i.ds, i1 %i.dt     ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -24
  %.sroa.01.0.i34.i82 = select i1 %i.du, ptr %2, ptr %i.dv
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i34.i82, i64 %i.do
  %i.dx = load i64, ptr %i.dp, align 4, !alias.scope !1409, !noalias !1415
  store i64 %i.dx, ptr %i.dw, align 4, !alias.scope !1410, !noalias !1416
  %i.dy = zext i1 %i.du to i64
  %i.dz = add i64 %i.do, %i.dy                    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 24 ; 2 uses
  %.val17.i83 = load i32, ptr %i.ea, align 4, !range !61, !alias.scope !1409, !noalias !1410, !noundef !14 ; 2 uses
  %i.eb = getelementptr i8, ptr %.sroa.9.131.i70, i64 28
  %.val18.i84 = load i32, ptr %i.eb, align 4, !alias.scope !1409, !noalias !1410
  %i.ec = icmp eq i32 %.val31.i69, %.val17.i83
  %i.ed = icmp uge i32 %.val32.i75, %.val18.i84
  %i.ee = icmp uge i32 %.val31.i69, %.val17.i83
  %i.ef = select i1 %i.ec, i1 %i.ed, i1 %i.ee     ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -32 ; 3 uses
  %.sroa.01.0.i35.i85 = select i1 %i.ef, ptr %2, ptr %i.eg
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i35.i85, i64 %i.dz
  %i.ei = load i64, ptr %i.ea, align 4, !alias.scope !1409, !noalias !1417
  store i64 %i.ei, ptr %i.eh, align 4, !alias.scope !1410, !noalias !1418
  %i.ej = zext i1 %i.ef to i64
  %i.ek = add i64 %i.dz, %i.ej                    ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 32 ; 3 uses
  %i.em = icmp ult ptr %i.el, %i.cs
  br i1 %i.em, label %bb.t, label %._crit_edge.i47

._crit_edge.i47:                                  ; preds = %bb.t, %bb.s
  %.sroa.43.1.lcssa.i48 = phi ptr [ %.sroa.43.0.i43, %bb.s ], [ %i.eg, %bb.t ] ; 2 uses
  %.sroa.27.1.lcssa.i49 = phi i64 [ %.sroa.27.0.i44, %bb.s ], [ %i.ek, %bb.t ] ; 2 uses
  %.sroa.9.1.lcssa.i50 = phi ptr [ %.sroa.9.0.i45, %bb.s ], [ %i.el, %bb.t ] ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph132, i64 %.sroa.0.0.i46 ; 2 uses
  %i.eo = icmp ult ptr %.sroa.9.1.lcssa.i50, %i.en
  br i1 %i.eo, label %.lr.ph38.i59.preheader, label %._crit_edge39.i51

.lr.ph38.i59.preheader:                           ; preds = %._crit_edge.i47
  %.val15.i65 = load i32, ptr %34, align 4, !range !61, !alias.scope !1409, !noalias !1410, !noundef !14 ; 2 uses
  %.val16.i66 = load i32, ptr %i.cp, align 4, !alias.scope !1409, !noalias !1410
  br label %.lr.ph38.i59

._crit_edge39.i51:                                ; preds = %.lr.ph38.i59, %._crit_edge.i47
  %.sroa.43.2.lcssa.i52 = phi ptr [ %.sroa.43.1.lcssa.i48, %._crit_edge.i47 ], [ %i.ev, %.lr.ph38.i59 ]
  %.sroa.27.2.lcssa.i53 = phi i64 [ %.sroa.27.1.lcssa.i49, %._crit_edge.i47 ], [ %i.ez, %.lr.ph38.i59 ] ; 9 uses
  %.sroa.9.2.lcssa.i54 = phi ptr [ %.sroa.9.1.lcssa.i50, %._crit_edge.i47 ], [ %i.fa, %.lr.ph38.i59 ] ; 2 uses
  %i.ep = icmp eq i64 %.sroa.0.0.i46, %.sroa.16.0125280
  br i1 %i.ep, label %bb.v, label %bb.u

.lr.ph38.i59:                                     ; preds = %.lr.ph38.i59.preheader, %.lr.ph38.i59
  %.sroa.9.236.i60 = phi ptr [ %i.fa, %.lr.ph38.i59 ], [ %.sroa.9.1.lcssa.i50, %.lr.ph38.i59.preheader ] ; 4 uses
  %.sroa.27.235.i61 = phi i64 [ %i.ez, %.lr.ph38.i59 ], [ %.sroa.27.1.lcssa.i49, %.lr.ph38.i59.preheader ] ; 2 uses
  %.sroa.43.234.i62 = phi ptr [ %i.ev, %.lr.ph38.i59 ], [ %.sroa.43.1.lcssa.i48, %.lr.ph38.i59.preheader ]
  %.val.i63 = load i32, ptr %.sroa.9.236.i60, align 4, !range !61, !alias.scope !1409, !noalias !1410, !noundef !14 ; 2 uses
  %i.eq = getelementptr i8, ptr %.sroa.9.236.i60, i64 4
  %.val14.i64 = load i32, ptr %i.eq, align 4, !alias.scope !1409, !noalias !1410
  %i.er = icmp eq i32 %.val15.i65, %.val.i63
  %i.es = icmp uge i32 %.val16.i66, %.val14.i64
  %i.et = icmp uge i32 %.val15.i65, %.val.i63
  %i.eu = select i1 %i.er, i1 %i.es, i1 %i.et     ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %.sroa.43.234.i62, i64 -8 ; 3 uses
  %.sroa.01.0.i36.i67 = select i1 %i.eu, ptr %2, ptr %i.ev
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i36.i67, i64 %.sroa.27.235.i61
  %i.ex = load i64, ptr %.sroa.9.236.i60, align 4, !alias.scope !1409, !noalias !1419
  store i64 %i.ex, ptr %i.ew, align 4, !alias.scope !1410, !noalias !1420
  %i.ey = zext i1 %i.eu to i64
  %i.ez = add i64 %.sroa.27.235.i61, %i.ey        ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i60, i64 8 ; 3 uses
  %i.fb = icmp ult ptr %i.fa, %i.en
  br i1 %i.fb, label %.lr.ph38.i59, label %._crit_edge39.i51

bb.u:                                             ; preds = %._crit_edge39.i51
  %i.fc = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i52, i64 -8
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i53
  %i.fe = load i64, ptr %.sroa.9.2.lcssa.i54, align 4, !alias.scope !1409, !noalias !1421
  store i64 %i.fe, ptr %i.fd, align 4, !alias.scope !1410, !noalias !1422
  %i.ff = add i64 %.sroa.27.2.lcssa.i53, 1
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i54, i64 8
  br label %bb.s

bb.v:                                             ; preds = %._crit_edge39.i51
  %i.fh = shl nuw nsw i64 %.sroa.27.2.lcssa.i53, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph132, ptr nonnull align 4 %2, i64 %i.fh, i1 false), !alias.scope !1423
  %i.fi = sub i64 %.sroa.16.0125280, %.sroa.27.2.lcssa.i53 ; 7 uses
  %.not47.i55 = icmp eq i64 %.sroa.16.0125280, %.sroa.27.2.lcssa.i53
  %i.fj = getelementptr [8 x i8], ptr %.sroa.0.0.ph132, i64 %.sroa.27.2.lcssa.i53 ; 3 uses
  br i1 %.not47.i55, label %.outer.thread, label %.lr.ph45.i56

.lr.ph45.i56:                                     ; preds = %bb.v
  %min.iters.check = icmp ult i64 %i.fi, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph45.i56
  %n.vec = and i64 %i.fi, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fk = xor i64 %index, -1
  %i.fl = getelementptr [8 x i8], ptr %i.cq, i64 %i.fk ; 2 uses
  %i.fm = getelementptr [8 x i8], ptr %i.fj, i64 %index ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fl, i64 -8
  %i.fo = getelementptr i8, ptr %i.fl, i64 -24
  %wide.load = load <2 x i64>, ptr %i.fn, align 4, !alias.scope !1410, !noalias !1409
  %wide.load286 = load <2 x i64>, ptr %i.fo, align 4, !alias.scope !1410, !noalias !1409
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse287 = shufflevector <2 x i64> %wide.load286, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.fp = getelementptr i8, ptr %i.fm, i64 16
  store <2 x i64> %reverse, ptr %i.fm, align 4, !alias.scope !1409, !noalias !1410
  store <2 x i64> %reverse287, ptr %i.fp, align 4, !alias.scope !1409, !noalias !1410
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !1387

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fi, %n.vec
  br i1 %cmp.n, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs6u1mgJOKDyY_13rust_analyzer.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph45.i56, %middle.block
  %.sroa.07.043.i57.ph = phi i64 [ 0, %.lr.ph45.i56 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.07.043.i57 = phi i64 [ %i.fr, %scalar.ph ], [ %.sroa.07.043.i57.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fr = add nuw i64 %.sroa.07.043.i57, 1        ; 2 uses
  %i.fs = xor i64 %.sroa.07.043.i57, -1
  %i.ft = getelementptr [8 x i8], ptr %i.cq, i64 %i.fs
  %i.fu = getelementptr [8 x i8], ptr %i.fj, i64 %.sroa.07.043.i57
  %i.fv = load i64, ptr %i.ft, align 4, !alias.scope !1410, !noalias !1409
  store i64 %i.fv, ptr %i.fu, align 4, !alias.scope !1409, !noalias !1410
  %exitcond.not.i58 = icmp eq i64 %i.fr, %i.fi
  br i1 %exitcond.not.i58, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs6u1mgJOKDyY_13rust_analyzer.exit, label %scalar.ph, !llvm.loop !1388

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %scalar.ph, %middle.block
  %i.fw = icmp ugt i64 %.sroa.27.2.lcssa.i53, %.sroa.16.0125280
  br i1 %i.fw, label %bb.w, label %.outer, !prof !17

.outer.thread:                                    ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs6u1mgJOKDyY_13rust_analyzer.exit
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph132, i64 %.sroa.27.2.lcssa.i53 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fy = icmp ult i64 %i.fi, 33
  br i1 %i.fy, label %.outer._crit_edge, label %.lr.ph

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
begin_hunk_1_@llvm.umax.i64
!1194 = !{!1187}
!1195 = !{ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json15ProjectJsonDataEEECs6u1mgJOKDyY_13rust_analyzer}
!1196 = !{!1189}
!1197 = !{!1191}
!1198 = !{ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json15ProjectJsonDataEECs6u1mgJOKDyY_13rust_analyzer, ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json15ProjectJsonDataEEECs6u1mgJOKDyY_13rust_analyzer}
!1199 = distinct !{!1199, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer"}
!1200 = distinct !{!1200, !1199, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1201 = !{!1200}
!1202 = distinct !{!1202, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer"}
!1203 = distinct !{!1203, !1202, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1204 = !{!1203}
!1205 = distinct !{!1205, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs6u1mgJOKDyY_13rust_analyzer"}
!1206 = distinct !{!1206, !1205, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1207 = distinct !{!1207, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs6u1mgJOKDyY_13rust_analyzer"}
!1208 = distinct !{!1208, !1207, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1209 = distinct !{!1209, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer"}
!1210 = distinct !{!1210, !1209, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1211 = !{!1206}
!1212 = !{!1208}
!1213 = !{!1210}
!1214 = distinct !{!1214, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsfxDLtZq386g_6semver7VersionEECs6u1mgJOKDyY_13rust_analyzer"}
!1215 = distinct !{!1215, !1214, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsfxDLtZq386g_6semver7VersionEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1216 = distinct !{!1216, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgIpRO4v45SJ_7base_db6target10TargetDataNtBZ_15TargetLoadErrorEECs6u1mgJOKDyY_13rust_analyzer"}
!1217 = distinct !{!1217, !1216, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgIpRO4v45SJ_7base_db6target10TargetDataNtBZ_15TargetLoadErrorEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1218 = !{!1215}
!1219 = !{!1217}
!1220 = distinct !{!1220, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsdRkQxkTxnTp_6anyhow5ErrorEEECs6u1mgJOKDyY_13rust_analyzer"}
!1221 = distinct !{!1221, !1220, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsdRkQxkTxnTp_6anyhow5ErrorEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1222 = distinct !{!1222, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsdRkQxkTxnTp_6anyhow5ErrorEEECs6u1mgJOKDyY_13rust_analyzer"}
!1223 = distinct !{!1223, !1222, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsdRkQxkTxnTp_6anyhow5ErrorEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1224 = distinct !{!1224, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace14CargoWorkspaceNtNtB12_18build_dependencies21WorkspaceBuildScriptsIBC_INtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsdRkQxkTxnTp_6anyhow5ErrorEEEEECs6u1mgJOKDyY_13rust_analyzer"}
!1225 = distinct !{!1225, !1224, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace14CargoWorkspaceNtNtB12_18build_dependencies21WorkspaceBuildScriptsIBC_INtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsdRkQxkTxnTp_6anyhow5ErrorEEEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1226 = distinct !{!1226, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace14CargoWorkspaceNtNtBG_18build_dependencies21WorkspaceBuildScriptsINtNtB4_6option6OptionINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsdRkQxkTxnTp_6anyhow5ErrorEEEECs6u1mgJOKDyY_13rust_analyzer"}
!1227 = distinct !{!1227, !1226, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace14CargoWorkspaceNtNtBG_18build_dependencies21WorkspaceBuildScriptsINtNtB4_6option6OptionINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsdRkQxkTxnTp_6anyhow5ErrorEEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1228 = distinct !{!1228, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsdRkQxkTxnTp_6anyhow5ErrorEEECs6u1mgJOKDyY_13rust_analyzer"}
!1229 = distinct !{!1229, !1228, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsdRkQxkTxnTp_6anyhow5ErrorEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1230 = distinct !{!1230, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsdRkQxkTxnTp_6anyhow5ErrorEEECs6u1mgJOKDyY_13rust_analyzer"}
!1231 = distinct !{!1231, !1230, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsdRkQxkTxnTp_6anyhow5ErrorEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1232 = !{!1221}
!1233 = !{!1223}
!1234 = !{!1225}
!1235 = !{!1229, !1227, !1225}
!1236 = !{!1231, !1227, !1225}
!1237 = !{i64 -1, i64 -9223372036854775805}
!1238 = distinct !{!1238, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsfgt47Ct1nzL_10lsp_server3msg9RequestIdECs6u1mgJOKDyY_13rust_analyzer"}
!1239 = distinct !{!1239, !1238, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsfgt47Ct1nzL_10lsp_server3msg9RequestIdECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1240 = distinct !{!1240, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsfgt47Ct1nzL_10lsp_server3msg6IdReprECs6u1mgJOKDyY_13rust_analyzer"}
!1241 = distinct !{!1241, !1240, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsfgt47Ct1nzL_10lsp_server3msg6IdReprECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1242 = !{!1241, !1239}
!1243 = distinct !{!1243, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsfgt47Ct1nzL_10lsp_server3msg9RequestIdECs6u1mgJOKDyY_13rust_analyzer"}
!1244 = distinct !{!1244, !1243, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsfgt47Ct1nzL_10lsp_server3msg9RequestIdECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1245 = distinct !{!1245, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsfgt47Ct1nzL_10lsp_server3msg6IdReprECs6u1mgJOKDyY_13rust_analyzer"}
!1246 = distinct !{!1246, !1245, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsfgt47Ct1nzL_10lsp_server3msg6IdReprECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1247 = distinct !{!1247, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8yjYO7b73r2_10serde_json5value5ValueEECs6u1mgJOKDyY_13rust_analyzer"}
!1248 = distinct !{!1248, !1247, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8yjYO7b73r2_10serde_json5value5ValueEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1249 = distinct !{!1249, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8yjYO7b73r2_10serde_json5value5ValueEECs6u1mgJOKDyY_13rust_analyzer"}
!1250 = distinct !{!1250, !1249, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8yjYO7b73r2_10serde_json5value5ValueEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1251 = !{!1246, !1244}
!1252 = !{!1248}
!1253 = !{!1250}
!1254 = distinct !{!1254, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer"}
!1255 = distinct !{!1255, !1254, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1256 = !{!1255}
!1257 = distinct !{!1257, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsixqsALXRULh_14cargo_metadata8messages17ArtifactDebuginfoECs6u1mgJOKDyY_13rust_analyzer"}
!1258 = distinct !{!1258, !1257, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsixqsALXRULh_14cargo_metadata8messages17ArtifactDebuginfoECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1259 = !{!1258}
!1260 = distinct !{!1260, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9p4rgIae0RV_6camino11Utf8PathBufEECs6u1mgJOKDyY_13rust_analyzer"}
!1261 = distinct !{!1261, !1260, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9p4rgIae0RV_6camino11Utf8PathBufEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1262 = !{!1261}
!1263 = distinct !{!1263, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs6u1mgJOKDyY_13rust_analyzer"}
!1264 = distinct !{!1264, !1263, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1265 = !{!1264}
!1266 = distinct !{!1266, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3arc3ArcINtBE_11HeaderSliceNtNtNtBG_5green4node13GreenNodeHeadSNtB1t_10GreenChildEEECs6u1mgJOKDyY_13rust_analyzer"}
!1267 = distinct !{!1267, !1266, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3arc3ArcINtBE_11HeaderSliceNtNtNtBG_5green4node13GreenNodeHeadSNtB1t_10GreenChildEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1268 = distinct !{!1268, !"_RNvXs7_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green4node13GreenNodeHeadSNtB10_10GreenChildEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer"}
!1269 = distinct !{!1269, !1268, !"_RNvXs7_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green4node13GreenNodeHeadSNtB10_10GreenChildEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1270 = !{!1267}
!1271 = !{!1269}
!1272 = !{!1269, !1267}
!1273 = distinct !{!1273, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtNtCsjQbM3MYDIrM_10serde_core7private7content7ContentEECs6u1mgJOKDyY_13rust_analyzer"}
!1274 = distinct !{!1274, !1273, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtNtCsjQbM3MYDIrM_10serde_core7private7content7ContentEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1275 = distinct !{null}
!1276 = distinct !{!1276, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtNtCsjQbM3MYDIrM_10serde_core7private7content7ContentEECs6u1mgJOKDyY_13rust_analyzer"}
!1277 = distinct !{!1277, !1276, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtNtCsjQbM3MYDIrM_10serde_core7private7content7ContentEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1278 = !{i8 0, i8 22}
!1279 = !{!1274}
!1280 = !{!1277}
!1281 = distinct !{!1281, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierEEB11_"}
!1282 = distinct !{!1282, !1281, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierEEB11_: argument 0"}
!1283 = !{!1282}
!1284 = distinct !{!1284, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsfxDLtZq386g_6semver7VersionEECs6u1mgJOKDyY_13rust_analyzer"}
!1285 = distinct !{!1285, !1284, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsfxDLtZq386g_6semver7VersionEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1286 = !{!1285}
!1287 = distinct !{null}
!1288 = distinct !{!1288, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr"}
!1289 = distinct !{!1289, !1288, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr: argument 0"}
!1290 = distinct !{!1290, !"_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs6u1mgJOKDyY_13rust_analyzer"}
!1291 = distinct !{!1291, !1290, !"_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!1292 = distinct !{!1292, !1290, !"_RNvXs8_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1293 = distinct !{!1293, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs6u1mgJOKDyY_13rust_analyzer"}
!1294 = distinct !{!1294, !1293, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1295 = distinct !{!1295, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6u1mgJOKDyY_13rust_analyzer"}
!1296 = distinct !{!1296, !1295, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1297 = distinct !{!1297, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs6u1mgJOKDyY_13rust_analyzer"}
!1298 = distinct !{!1298, !1297, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1299 = !{!1289}
!1300 = !{!1292, !1291}
!1301 = !{!1294}
!1302 = !{!1296}
!1303 = !{!1298}
!1304 = distinct !{!1304, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr"}
!1305 = distinct !{!1305, !1304, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr: argument 0"}
!1306 = distinct !{!1306, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6u1mgJOKDyY_13rust_analyzer"}
!1307 = distinct !{!1307, !1306, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1308 = distinct !{!1308, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs6u1mgJOKDyY_13rust_analyzer"}
!1309 = distinct !{!1309, !1308, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1310 = !{!1305}
!1311 = !{!1307}
!1312 = !{!1309}
!1313 = distinct !{!1313, !"_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counter7CounterINtNtBJ_4list7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEEE3newCs6u1mgJOKDyY_13rust_analyzer"}
!1314 = distinct !{!1314, !1313, !"_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counter7CounterINtNtBJ_4list7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEEE3newCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1315 = !{!1314}
!1316 = distinct !{!1316, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0EB3b_"}
!1317 = distinct !{!1317, !1316, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0EB3b_: argument 0"}
!1318 = distinct !{!1318, !1316, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0EB3b_: argument 1"}
!1319 = distinct !{!1319, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0EB3j_"}
!1320 = distinct !{!1320, !1319, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0EB3j_: argument 1"}
!1321 = distinct !{!1321, !1319, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0EB3j_: argument 0"}
!1322 = distinct !{!1322, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1323 = distinct !{!1323, !1322, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1324 = distinct !{!1324, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1325 = distinct !{!1325, !1324, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1326 = distinct !{!1326, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtCscA5P7HRgTCP_15ide_diagnostics10Diagnostic12split_at_mutCs6u1mgJOKDyY_13rust_analyzer"}
!1327 = distinct !{!1327, !1326, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtCscA5P7HRgTCP_15ide_diagnostics10Diagnostic12split_at_mutCs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!1328 = distinct !{!1328, !1326, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtCscA5P7HRgTCP_15ide_diagnostics10Diagnostic12split_at_mutCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1329 = distinct !{!1329, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0E0EB3F_"}
!1330 = distinct !{!1330, !1329, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0E0EB3F_: argument 1"}
!1331 = distinct !{!1331, !1329, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyNtCs4sl5YdnrCxp_3vfs6FileIdNCNvNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics24fetch_native_diagnosticss_0E0E0EB3F_: argument 0"}
!1332 = distinct !{!1332, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1333 = distinct !{!1333, !1332, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1334 = distinct !{!1334, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1335 = distinct !{!1335, !1334, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1336 = !{!1317}
!1337 = !{!1318}
!1338 = !{!1320}
!1339 = !{!1321}
!1340 = !{!1321, !1320}
!1341 = !{!1323}
!1342 = !{!1325}
!1343 = !{!1328, !1327}
!1344 = !{!1330}
!1345 = !{!1331}
!1346 = !{!1331, !1330}
!1347 = !{!1333}
!1348 = !{!1335}
!1349 = distinct !{!1349, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNvYB15_NtNtBa_3cmp10PartialOrd2ltECs6u1mgJOKDyY_13rust_analyzer"}
!1350 = distinct !{!1350, !1349, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNvYB15_NtNtBa_3cmp10PartialOrd2ltECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1351 = distinct !{!1351, !1349, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNvYB15_NtNtBa_3cmp10PartialOrd2ltECs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!1352 = distinct !{!1352, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNvYB1d_NtNtBa_3cmp10PartialOrd2ltECs6u1mgJOKDyY_13rust_analyzer"}
!1353 = distinct !{!1353, !1352, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNvYB1d_NtNtBa_3cmp10PartialOrd2ltECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1354 = distinct !{!1354, !1352, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNvYB1d_NtNtBa_3cmp10PartialOrd2ltECs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!1355 = distinct !{!1355, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1356 = distinct !{!1356, !1355, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1357 = distinct !{!1357, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1358 = distinct !{!1358, !1357, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1359 = distinct !{!1359, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1360 = distinct !{!1360, !1359, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1361 = distinct !{!1361, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1362 = distinct !{!1362, !1361, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1363 = distinct !{!1363, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1364 = distinct !{!1364, !1363, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1365 = distinct !{!1365, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1366 = distinct !{!1366, !1365, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1367 = distinct !{!1367, !1406, !1407}
!1368 = distinct !{!1368, !1407, !1406}
!1369 = distinct !{!1369, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileId12split_at_mutCs6u1mgJOKDyY_13rust_analyzer"}
!1370 = distinct !{!1370, !1369, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileId12split_at_mutCs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!1371 = distinct !{!1371, !1369, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileId12split_at_mutCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1372 = distinct !{!1372, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs6u1mgJOKDyY_13rust_analyzer"}
!1373 = distinct !{!1373, !1372, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1374 = distinct !{!1374, !1372, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!1375 = distinct !{!1375, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1376 = distinct !{!1376, !1375, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1377 = distinct !{!1377, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1378 = distinct !{!1378, !1377, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1379 = distinct !{!1379, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1380 = distinct !{!1380, !1379, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1381 = distinct !{!1381, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1382 = distinct !{!1382, !1381, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1383 = distinct !{!1383, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1384 = distinct !{!1384, !1383, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1385 = distinct !{!1385, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1386 = distinct !{!1386, !1385, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1387 = distinct !{!1387, !1406, !1407}
!1388 = distinct !{!1388, !1407, !1406}
!1389 = !{!1350}
!1390 = !{!1351}
!1391 = !{!1353}
!1392 = !{!1354}
!1393 = !{!1356, !1354}
!1394 = !{!1358, !1354}
!1395 = !{!1360, !1354}
!1396 = !{!1362, !1354}
!1397 = !{!1356, !1353}
!1398 = !{!1358, !1353}
!1399 = !{!1360, !1353}
!1400 = !{!1362, !1353}
!1401 = !{!1364, !1354}
!1402 = !{!1364, !1353}
!1403 = !{!1366, !1354}
!1404 = !{!1366, !1353}
!1405 = !{!1353, !1354}
!1406 = !{!"llvm.loop.isvectorized", i32 1}
!1407 = !{!"llvm.loop.unroll.runtime.disable"}
!1408 = !{!1371, !1370}
!1409 = !{!1373}
!1410 = !{!1374}
!1411 = !{!1376, !1374}
!1412 = !{!1376, !1373}
!1413 = !{!1378, !1374}
!1414 = !{!1378, !1373}
!1415 = !{!1380, !1374}
!1416 = !{!1380, !1373}
!1417 = !{!1382, !1374}
!1418 = !{!1382, !1373}
!1419 = !{!1384, !1374}
!1420 = !{!1384, !1373}
!1421 = !{!1386, !1374}
!1422 = !{!1386, !1373}
!1423 = !{!1373, !1374}
!1424 = distinct !{!1424, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTNtB17_8PositionB33_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3s_20DiagnosticCollection22set_native_diagnostics0E0EB3u_"}
!1425 = distinct !{!1425, !1424, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTNtB17_8PositionB33_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3s_20DiagnosticCollection22set_native_diagnostics0E0EB3u_: argument 0"}
!1426 = distinct !{!1426, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_"}
!1427 = distinct !{!1427, !1426, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_: argument 0"}
!1428 = distinct !{!1428, !1426, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_: argument 1"}
!1429 = distinct !{!1429, !1424, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTNtB17_8PositionB33_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3s_20DiagnosticCollection22set_native_diagnostics0E0EB3u_: argument 1"}
!1430 = distinct !{!1430, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_"}
!1431 = distinct !{!1431, !1430, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 0"}
!1432 = distinct !{!1432, !1430, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 1"}
!1433 = distinct !{!1433, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_"}
!1434 = distinct !{!1434, !1433, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 0"}
!1435 = distinct !{!1435, !1433, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 1"}
!1436 = distinct !{!1436, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_"}
!1437 = distinct !{!1437, !1436, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_: argument 1"}
!1438 = distinct !{!1438, !1436, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_: argument 0"}
!1439 = distinct !{!1439, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_"}
!1440 = distinct !{!1440, !1439, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 0"}
!1441 = distinct !{!1441, !1439, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 1"}
!1442 = distinct !{!1442, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_"}
!1443 = distinct !{!1443, !1442, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 0"}
!1444 = distinct !{!1444, !1442, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 1"}
!1445 = distinct !{!1445, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_"}
!1446 = distinct !{!1446, !1445, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_: argument 1"}
!1447 = distinct !{!1447, !1445, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_: argument 0"}
!1448 = distinct !{!1448, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_"}
!1449 = distinct !{!1449, !1448, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 0"}
!1450 = distinct !{!1450, !1448, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 1"}
!1451 = distinct !{!1451, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_"}
!1452 = distinct !{!1452, !1451, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 0"}
!1453 = distinct !{!1453, !1451, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 1"}
!1454 = distinct !{!1454, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_"}
!1455 = distinct !{!1455, !1454, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_: argument 0"}
!1456 = distinct !{!1456, !1454, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_: argument 1"}
!1457 = distinct !{!1457, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_"}
!1458 = distinct !{!1458, !1457, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 0"}
!1459 = distinct !{!1459, !1457, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 1"}
!1460 = distinct !{!1460, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_"}
!1461 = distinct !{!1461, !1460, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 0"}
!1462 = distinct !{!1462, !1460, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 1"}
!1463 = distinct !{!1463, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyTNtB1f_8PositionB3b_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3A_20DiagnosticCollection22set_native_diagnostics0E0EB3C_"}
!1464 = distinct !{!1464, !1463, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyTNtB1f_8PositionB3b_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3A_20DiagnosticCollection22set_native_diagnostics0E0EB3C_: argument 0"}
!1465 = distinct !{!1465, !1463, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyTNtB1f_8PositionB3b_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3A_20DiagnosticCollection22set_native_diagnostics0E0EB3C_: argument 1"}
!1466 = distinct !{!1466, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_"}
!1467 = distinct !{!1467, !1466, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_: argument 0"}
!1468 = distinct !{!1468, !1466, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_: argument 1"}
!1469 = distinct !{!1469, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_"}
!1470 = distinct !{!1470, !1469, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 0"}
!1471 = distinct !{!1471, !1469, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 1"}
!1472 = distinct !{!1472, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_"}
!1473 = distinct !{!1473, !1472, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 0"}
!1474 = distinct !{!1474, !1472, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 1"}
!1475 = distinct !{!1475, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1476 = distinct !{!1476, !1475, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1477 = distinct !{!1477, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1478 = distinct !{!1478, !1477, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1479 = distinct !{!1479, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic12split_at_mutCs6u1mgJOKDyY_13rust_analyzer"}
!1480 = distinct !{!1480, !1479, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic12split_at_mutCs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!1481 = distinct !{!1481, !1479, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic12split_at_mutCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1482 = distinct !{!1482, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyTNtB1f_8PositionB3x_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3W_20DiagnosticCollection22set_native_diagnostics0E0E0EB3Y_"}
!1483 = distinct !{!1483, !1482, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyTNtB1f_8PositionB3x_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3W_20DiagnosticCollection22set_native_diagnostics0E0E0EB3Y_: argument 0"}
!1484 = distinct !{!1484, !1482, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyTNtB1f_8PositionB3x_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3W_20DiagnosticCollection22set_native_diagnostics0E0E0EB3Y_: argument 1"}
!1485 = distinct !{!1485, !"_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_11sort_by_keyTNtB19_8PositionB35_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3u_20DiagnosticCollection22set_native_diagnostics0E0E0B3w_"}
!1486 = distinct !{!1486, !1485, !"_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_11sort_by_keyTNtB19_8PositionB35_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3u_20DiagnosticCollection22set_native_diagnostics0E0E0B3w_: argument 0"}
!1487 = distinct !{!1487, !1485, !"_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_11sort_by_keyTNtB19_8PositionB35_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3u_20DiagnosticCollection22set_native_diagnostics0E0E0B3w_: argument 1"}
!1488 = distinct !{!1488, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_"}
!1489 = distinct !{!1489, !1488, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_: argument 0"}
!1490 = distinct !{!1490, !1488, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnostics0E0B2j_: argument 1"}
!1491 = distinct !{!1491, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_"}
!1492 = distinct !{!1492, !1491, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 0"}
!1493 = distinct !{!1493, !1491, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 1"}
!1494 = distinct !{!1494, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_"}
!1495 = distinct !{!1495, !1494, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 0"}
!1496 = distinct !{!1496, !1494, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnostics0B6_: argument 1"}
!1497 = distinct !{!1497, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1498 = distinct !{!1498, !1497, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1499 = distinct !{!1499, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticE13partition_oneCs6u1mgJOKDyY_13rust_analyzer"}
!1500 = distinct !{!1500, !1499, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticE13partition_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!1501 = !{!1425}
!1502 = !{!1427}
!1503 = !{!1428}
!1504 = !{!1427, !1428, !1425, !1429}
!1505 = !{!1431}
!1506 = !{!1432}
!1507 = !{!1432, !1427, !1425}
!1508 = !{!1431, !1428, !1429}
!1509 = !{!1432, !1427, !1428, !1425, !1429}
!1510 = !{!1434}
!1511 = !{!1435}
!1512 = !{!1435, !1428, !1425}
!1513 = !{!1434, !1427, !1429}
!1514 = !{!1435, !1427, !1428, !1425, !1429}
!1515 = !{!1437}
!1516 = !{!1438, !1437, !1425, !1429}
!1517 = !{!1440}
!1518 = !{!1441, !1438, !1437, !1425, !1429}
!1519 = !{!1443}
!1520 = !{!1444}
!1521 = !{!1444, !1437, !1425}
!1522 = !{!1443, !1438, !1429}
!1523 = !{!1444, !1438, !1437, !1425, !1429}
!1524 = !{!1447, !1446, !1425, !1429}
!1525 = !{!1449}
!1526 = !{!1450, !1447, !1446, !1425, !1429}
!1527 = !{!1452}
!1528 = !{!1453, !1447, !1446, !1425, !1429}
!1529 = !{!1455}
!1530 = !{!1456}
!1531 = !{!1455, !1456}
!1532 = !{!1458}
!1533 = !{!1459}
!1534 = !{!1459, !1455}
!1535 = !{!1458, !1456}
!1536 = !{!1459, !1455, !1456}
!1537 = !{!1461}
!1538 = !{!1462}
!1539 = !{!1462, !1456}
!1540 = !{!1461, !1455}
!1541 = !{!1462, !1455, !1456}
!1542 = !{!1464}
!1543 = !{!1465}
!1544 = !{!1467}
!1545 = !{!1468}
!1546 = !{!1467, !1468, !1464, !1465}
!1547 = !{!1470}
!1548 = !{!1471}
!1549 = !{!1471, !1467, !1464}
!1550 = !{!1470, !1468, !1465}
!1551 = !{!1471, !1467, !1468, !1464, !1465}
!1552 = !{!1473}
!1553 = !{!1474}
!1554 = !{!1474, !1468, !1464}
!1555 = !{!1473, !1467, !1465}
!1556 = !{!1474, !1467, !1468, !1464, !1465}
!1557 = !{!1464, !1465}
!1558 = !{!1476}
!1559 = !{!1478}
!1560 = !{!1481, !1480}
!1561 = !{!1483}
!1562 = !{!1484}
!1563 = !{!1486}
!1564 = !{!1487}
!1565 = !{!1489}
!1566 = !{!1490}
!1567 = !{!1489, !1490, !1486, !1487, !1483, !1484}
!1568 = !{!1492}
!1569 = !{!1493}
!1570 = !{!1493, !1489, !1487, !1483}
!1571 = !{!1492, !1490, !1486, !1484}
!1572 = !{!1493, !1489, !1490, !1486, !1487, !1483, !1484}
!1573 = !{!1495}
!1574 = !{!1496}
!1575 = !{!1496, !1490, !1486, !1483}
!1576 = !{!1495, !1489, !1487, !1484}
!1577 = !{!1496, !1489, !1490, !1486, !1487, !1483, !1484}
!1578 = !{!1483, !1484}
!1579 = !{!1498}
!1580 = !{!1500}
!1581 = distinct !{!1581, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTNtB17_8PositionB33_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3s_20DiagnosticCollection22set_native_diagnosticss0_0E0EB3u_"}
!1582 = distinct !{!1582, !1581, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTNtB17_8PositionB33_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3s_20DiagnosticCollection22set_native_diagnosticss0_0E0EB3u_: argument 0"}
!1583 = distinct !{!1583, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnosticss0_0E0B2j_"}
!1584 = distinct !{!1584, !1583, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnosticss0_0E0B2j_: argument 0"}
!1585 = distinct !{!1585, !1583, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnosticss0_0E0B2j_: argument 1"}
!1586 = distinct !{!1586, !1581, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTNtB17_8PositionB33_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3s_20DiagnosticCollection22set_native_diagnosticss0_0E0EB3u_: argument 1"}
!1587 = distinct !{!1587, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnosticss0_0B6_"}
!1588 = distinct !{!1588, !1587, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnosticss0_0B6_: argument 0"}
!1589 = distinct !{!1589, !1587, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnosticss0_0B6_: argument 1"}
!1590 = distinct !{!1590, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnosticss0_0B6_"}
!1591 = distinct !{!1591, !1590, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnosticss0_0B6_: argument 0"}
!1592 = distinct !{!1592, !1590, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnosticss0_0B6_: argument 1"}
!1593 = distinct !{!1593, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnosticss0_0E0B2j_"}
!1594 = distinct !{!1594, !1593, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnosticss0_0E0B2j_: argument 1"}
!1595 = distinct !{!1595, !1593, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10Diagnostic11sort_by_keyTNtBA_8PositionB1T_ENCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2h_20DiagnosticCollection22set_native_diagnosticss0_0E0B2j_: argument 0"}
!1596 = distinct !{!1596, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnosticss0_0B6_"}
!1597 = distinct !{!1597, !1596, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnosticss0_0B6_: argument 0"}
!1598 = distinct !{!1598, !1596, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnosticss0_0B6_: argument 1"}
!1599 = distinct !{!1599, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB4_20DiagnosticCollection22set_native_diagnosticss0_0B6_"}
end_hunk_1
