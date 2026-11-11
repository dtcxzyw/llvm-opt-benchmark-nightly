Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.12?download=true
inline.NumInlined: 5045
inline.NumDeleted: 2384
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyB16_NCNvXs2_NtB1c_9structureINtNtB1Y_2rc2RcNtB2S_6StructEINtNtBa_7convert4FromRDNtNtB1e_7modules16RegisteredModuleEL_E4froms_0E0EB1e_:bb.a
.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.bj, -2
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.bp, %bb.p ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.p ]
  %i.bm = xor i64 %.sroa.06.014.i, -1
  %i.bn = getelementptr [64 x i8], ptr %i.ap, i64 %i.bm
  %i.bo = getelementptr [64 x i8], ptr %i.bk, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bo, ptr noundef nonnull align 8 dereferenceable(64) %i.bn, i64 64, i1 false), !alias.scope !1753
  %i.bp = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.bq = xor i64 %.sroa.06.014.i, -2
  %i.br = getelementptr [64 x i8], ptr %i.ap, i64 %i.bq
  %i.bs = getelementptr [64 x i8], ptr %i.bk, i64 %.sroa.06.014.i
  %i.bt = getelementptr i8, ptr %i.bs, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bt, ptr noundef nonnull align 8 dereferenceable(64) %i.br, i64 64, i1 false), !alias.scope !1753
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.p

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.bp, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod288 = trunc i64 %i.bj to i1
  call void @llvm.assume(i1 %lcmp.mod288)
  %i.bu = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.bv = getelementptr [64 x i8], ptr %i.ap, i64 %i.bu
  %i.bw = getelementptr [64 x i8], ptr %i.bk, i64 %.sroa.06.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bw, ptr noundef nonnull align 8 dereferenceable(64) %i.bv, i64 64, i1 false), !alias.scope !1753
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.o
  %i.bx = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.bx, label %.thread, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %.not.i44 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.097225
  br i1 %.not.i44, label %bb.r, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncE12split_at_mutBD_.exit, !prof !11

bb.r:                                             ; preds = %bb.q
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @905, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @359) #36, !noalias !1756
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncE12split_at_mutBD_.exit: ; preds = %bb.q
  %i.by = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph104) ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyB16_NCNvXs2_NtB1c_9structureINtNtB1Y_2rc2RcNtB2S_6StructEINtNtBa_7convert4FromRDNtNtB1e_7modules16RegisteredModuleEL_E4froms_0E0EB1e_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef %i.bj, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bz = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.bz, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.h, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !1757)
  call void @llvm.experimental.noalias.scope.decl(metadata !1758)
  %.not72 = icmp samesign ult i64 %3, %.sroa.16.097225
  br i1 %.not72, label %bb.t, label %bb.s, !prof !24

bb.s:                                             ; preds = %.thread
  %i.ca = getelementptr [64 x i8], ptr %2, i64 %.sroa.16.097225 ; 4 uses
  %i.cb = getelementptr i8, ptr %i.ai, i64 8
  br label %bb.u

bb.t:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.w, %bb.s
  %.sroa.19.0.i47 = phi ptr [ %i.ca, %bb.s ], [ %i.cr, %bb.w ] ; 2 uses
  %.sroa.11.0.i48 = phi i64 [ 0, %bb.s ], [ %i.ct, %bb.w ] ; 2 uses
  %.sroa.5.0.i49 = phi ptr [ %.sroa.0.0.ph104, %bb.s ], [ %i.cu, %bb.w ] ; 3 uses
  %.sroa.0.0.i50 = phi i64 [ %.sroa.0.0.i, %bb.s ], [ %.sroa.16.097225, %bb.w ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.0.0.i50 ; 2 uses
  %i.cd = icmp ult ptr %.sroa.5.0.i49, %i.cc
  br i1 %i.cd, label %.lr.ph.i59, label %._crit_edge.i51

.lr.ph.i59:                                       ; preds = %bb.u
  %.val13.i60 = load ptr, ptr %i.ai, align 8, !alias.scope !1757, !nonnull !8, !noundef !8
  br label %bb.v

._crit_edge.i51:                                  ; preds = %bb.v, %bb.u
  %.sroa.19.1.lcssa.i52 = phi ptr [ %.sroa.19.0.i47, %bb.u ], [ %i.cl, %bb.v ]
  %.sroa.11.1.lcssa.i53 = phi i64 [ %.sroa.11.0.i48, %bb.u ], [ %i.co, %bb.v ] ; 10 uses
  %.sroa.5.1.lcssa.i54 = phi ptr [ %.sroa.5.0.i49, %bb.u ], [ %i.cp, %bb.v ] ; 2 uses
  %i.ce = icmp eq i64 %.sroa.0.0.i50, %.sroa.16.097225
  br i1 %i.ce, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.v, %.lr.ph.i59
  %.sroa.5.111.i61 = phi ptr [ %.sroa.5.0.i49, %.lr.ph.i59 ], [ %i.cp, %bb.v ] ; 4 uses
  %.sroa.11.110.i62 = phi i64 [ %.sroa.11.0.i48, %.lr.ph.i59 ], [ %i.co, %bb.v ] ; 2 uses
  %.sroa.19.19.i63 = phi ptr [ %.sroa.19.0.i47, %.lr.ph.i59 ], [ %i.cl, %bb.v ]
  %.val.i64 = load ptr, ptr %.sroa.5.111.i61, align 8, !alias.scope !1757, !nonnull !8, !noundef !8
  %i.cf = getelementptr i8, ptr %.sroa.5.111.i61, i64 8
  %.val12.i65 = load i64, ptr %i.cf, align 8, !alias.scope !1757, !noundef !8 ; 2 uses
  %.val14.i66 = load i64, ptr %i.cb, align 8, !alias.scope !1757, !noundef !8 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val14.i66, i64 %.val12.i65)
  %i.cg = call i32 @memcmp(ptr nonnull readonly %.val13.i60, ptr nonnull readonly %.val.i64, i64 %spec.store.select.i.i.i.i.i.i.i), !alias.scope !1759, !noalias !1760 ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp eq i32 %i.cg, 0
  %i.cj = sub i64 %.val14.i66, %.val12.i65
  %spec.select.i.i.i.i.i.i.i = select i1 %i.ci, i64 %i.cj, i64 %i.ch
  %i.ck = icmp sgt i64 %spec.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %.sroa.19.19.i63, i64 -64 ; 3 uses
  %.sroa.01.0.i.i67 = select i1 %i.ck, ptr %2, ptr %i.cl
  %i.cm = getelementptr inbounds nuw [64 x i8], ptr %.sroa.01.0.i.i67, i64 %.sroa.11.110.i62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cm, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.111.i61, i64 64, i1 false), !alias.scope !1760, !noalias !1761
  %i.cn = zext i1 %i.ck to i64
  %i.co = add i64 %.sroa.11.110.i62, %i.cn        ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i61, i64 64 ; 3 uses
  %i.cq = icmp ult ptr %i.cp, %i.cc
  br i1 %i.cq, label %bb.v, label %._crit_edge.i51

bb.w:                                             ; preds = %._crit_edge.i51
  %i.cr = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i52, i64 -64
  %i.cs = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cs, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.1.lcssa.i54, i64 64, i1 false), !alias.scope !1760, !noalias !1762
  %i.ct = add i64 %.sroa.11.1.lcssa.i53, 1
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i54, i64 64
  br label %bb.u

bb.x:                                             ; preds = %._crit_edge.i51
  %i.cv = shl nuw nsw i64 %.sroa.11.1.lcssa.i53, 6
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph104, ptr nonnull align 8 %2, i64 %i.cv, i1 false), !alias.scope !1760
  %i.cw = sub i64 %.sroa.16.097225, %.sroa.11.1.lcssa.i53 ; 6 uses
  %.not18.i55 = icmp eq i64 %.sroa.16.097225, %.sroa.11.1.lcssa.i53
  %i.cx = getelementptr [64 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i53 ; 4 uses
  br i1 %.not18.i55, label %.outer.thread, label %.lr.ph16.i56.preheader

.lr.ph16.i56.preheader:                           ; preds = %bb.x
  %.neg300 = add i64 %.sroa.11.1.lcssa.i53, 1
  %xtraiter295 = and i64 %i.cw, 1
  %i.cy = icmp eq i64 %.sroa.16.097225, %.neg300
  br i1 %i.cy, label %.lr.ph16.i56.epil.preheader, label %.lr.ph16.i56.preheader.new

.lr.ph16.i56.preheader.new:                       ; preds = %.lr.ph16.i56.preheader
  %unroll_iter298 = and i64 %i.cw, -2
  br label %.lr.ph16.i56

.lr.ph16.i56:                                     ; preds = %.lr.ph16.i56, %.lr.ph16.i56.preheader.new
  %.sroa.06.014.i57 = phi i64 [ 0, %.lr.ph16.i56.preheader.new ], [ %i.dc, %.lr.ph16.i56 ] ; 5 uses
  %niter299 = phi i64 [ 0, %.lr.ph16.i56.preheader.new ], [ %niter299.next.1, %.lr.ph16.i56 ]
  %i.cz = xor i64 %.sroa.06.014.i57, -1
  %i.da = getelementptr [64 x i8], ptr %i.ca, i64 %i.cz
  %i.db = getelementptr [64 x i8], ptr %i.cx, i64 %.sroa.06.014.i57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.db, ptr noundef nonnull align 8 dereferenceable(64) %i.da, i64 64, i1 false), !alias.scope !1760
  %i.dc = add nuw i64 %.sroa.06.014.i57, 2        ; 2 uses
  %i.dd = xor i64 %.sroa.06.014.i57, -2
  %i.de = getelementptr [64 x i8], ptr %i.ca, i64 %i.dd
  %i.df = getelementptr [64 x i8], ptr %i.cx, i64 %.sroa.06.014.i57
  %i.dg = getelementptr i8, ptr %i.df, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dg, ptr noundef nonnull align 8 dereferenceable(64) %i.de, i64 64, i1 false), !alias.scope !1760
  %niter299.next.1 = add i64 %niter299, 2         ; 2 uses
  %niter299.ncmp.1 = icmp eq i64 %niter299.next.1, %unroll_iter298
  br i1 %niter299.ncmp.1, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keyB1e_NCNvXs2_NtB1k_9structureINtNtB2s_2rc2RcNtB3m_6StructEINtNtBa_7convert4FromRDNtNtB1m_7modules16RegisteredModuleEL_E4froms_0E0E0EB1m_.exit.unr-lcssa, label %.lr.ph16.i56

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keyB1e_NCNvXs2_NtB1k_9structureINtNtB2s_2rc2RcNtB3m_6StructEINtNtBa_7convert4FromRDNtNtB1m_7modules16RegisteredModuleEL_E4froms_0E0E0EB1m_.exit.unr-lcssa: ; preds = %.lr.ph16.i56
  %lcmp.mod296.not = icmp eq i64 %xtraiter295, 0
  br i1 %lcmp.mod296.not, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keyB1e_NCNvXs2_NtB1k_9structureINtNtB2s_2rc2RcNtB3m_6StructEINtNtBa_7convert4FromRDNtNtB1m_7modules16RegisteredModuleEL_E4froms_0E0E0EB1m_.exit, label %.lr.ph16.i56.epil.preheader

.lr.ph16.i56.epil.preheader:                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keyB1e_NCNvXs2_NtB1k_9structureINtNtB2s_2rc2RcNtB3m_6StructEINtNtBa_7convert4FromRDNtNtB1m_7modules16RegisteredModuleEL_E4froms_0E0E0EB1m_.exit.unr-lcssa, %.lr.ph16.i56.preheader
  %.sroa.06.014.i57.epil.init = phi i64 [ 0, %.lr.ph16.i56.preheader ], [ %i.dc, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keyB1e_NCNvXs2_NtB1k_9structureINtNtB2s_2rc2RcNtB3m_6StructEINtNtBa_7convert4FromRDNtNtB1m_7modules16RegisteredModuleEL_E4froms_0E0E0EB1m_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod297 = trunc i64 %i.cw to i1
  call void @llvm.assume(i1 %lcmp.mod297)
  %i.dh = xor i64 %.sroa.06.014.i57.epil.init, -1
  %i.di = getelementptr [64 x i8], ptr %i.ca, i64 %i.dh
  %i.dj = getelementptr [64 x i8], ptr %i.cx, i64 %.sroa.06.014.i57.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dj, ptr noundef nonnull align 8 dereferenceable(64) %i.di, i64 64, i1 false), !alias.scope !1760
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keyB1e_NCNvXs2_NtB1k_9structureINtNtB2s_2rc2RcNtB3m_6StructEINtNtBa_7convert4FromRDNtNtB1m_7modules16RegisteredModuleEL_E4froms_0E0E0EB1m_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keyB1e_NCNvXs2_NtB1k_9structureINtNtB2s_2rc2RcNtB3m_6StructEINtNtBa_7convert4FromRDNtNtB1m_7modules16RegisteredModuleEL_E4froms_0E0E0EB1m_.exit: ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keyB1e_NCNvXs2_NtB1k_9structureINtNtB2s_2rc2RcNtB3m_6StructEINtNtBa_7convert4FromRDNtNtB1m_7modules16RegisteredModuleEL_E4froms_0E0E0EB1m_.exit.unr-lcssa, %.lr.ph16.i56.epil.preheader
  %i.dk = icmp ugt i64 %.sroa.11.1.lcssa.i53, %.sroa.16.097225
  br i1 %i.dk, label %bb.y, label %.outer, !prof !11

.outer.thread:                                    ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keyB1e_NCNvXs2_NtB1k_9structureINtNtB2s_2rc2RcNtB3m_6StructEINtNtBa_7convert4FromRDNtNtB1m_7modules16RegisteredModuleEL_E4froms_0E0E0EB1m_.exit
  %i.dl = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i53 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dm = icmp ult i64 %i.cw, 33
  br i1 %i.dm, label %.outer._crit_edge, label %.lr.ph

bb.y:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keyB1e_NCNvXs2_NtB1k_9structureINtNtB2s_2rc2RcNtB3m_6StructEINtNtBa_7convert4FromRDNtNtB1m_7modules16RegisteredModuleEL_E4froms_0E0E0EB1m_.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i53, i64 noundef %.sroa.16.097225, i64 noundef %.sroa.16.097225, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @360) #36
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCskKLDkoKarTP_4core2io4util4TakeRNtNtCsG258MDvU3F_3std2fs4FileEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.c = call { i64, ptr } @_RNvXs3_NtNtCsexYYUdYSQU6_5alloc2io4utilINtNtNtCskKLDkoKarTP_4core2io4util4TakeRNtNtCsG258MDvU3F_3std2fs4FileENtNtB7_4read4Read4readCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull %i.b, i64 noundef 32) ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0
  %i.e = extractvalue { i64, ptr } %i.c, 1        ; 3 uses
  %2 = ptrtoint ptr %i.e to i64                   ; 2 uses
  %i.f = trunc nuw i64 %i.d to i1
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit
  %3 = phi i64 [ %2, %.lr.ph ], [ %5, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit ] ; 4 uses
  %4 = phi ptr [ %i.e, %.lr.ph ], [ %i.ap, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit ] ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.h = and i64 %3, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %bb.c
    i64 3, label %.split13
    i64 0, label %.split14
    i64 1, label %.split
  ], !prof !25

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.c
  %i.j = lshr i64 %3, 32
  %i.k = trunc nuw i64 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !8, !noundef !8
  %i.n = invoke noundef zeroext i1 %i.m(i32 noundef %i.k)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.i, !inline_history !2

.split13:                                         ; preds = %bb.b
  %i.o = lshr i64 %3, 32
  %i.p = icmp ult ptr %4, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.o to i8
  %spec.select.i.i.i = select i1 %i.p, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.q = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.q)
  %i.r = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.r, label %bb.g, label %.loopexit

.split14:                                         ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = load i8, ptr %i.s, align 8, !range !26, !noundef !8
  %i.u = icmp eq i8 %i.t, 35
  br i1 %i.u, label %.thread16, label %.loopexit

.split:                                           ; preds = %bb.b
  %i.v = getelementptr i8, ptr %4, i64 31
  %i.w = load i8, ptr %i.v, align 8, !range !26, !noundef !8
  %i.x = icmp eq i8 %i.w, 35
  br i1 %i.x, label %bb.h, label %.loopexit

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit, %bb.a
  %.lcssa21 = phi ptr [ %i.e, %bb.a ], [ %i.ap, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit ] ; 3 uses
  %.lcssa = phi i64 [ %2, %bb.a ], [ %5, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit ] ; 4 uses
  %i.y = icmp ult ptr %.lcssa21, inttoptr (i64 33 to ptr)
  br i1 %i.y, label %.noexc6, label %bb.d, !prof !27

bb.d:                                             ; preds = %._crit_edge
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.lcssa, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @364) #39
  unreachable

.noexc6:                                          ; preds = %._crit_edge
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.lcssa)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !1767, !noundef !8 ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, -1
  call void @llvm.assume(i1 %i.ab)
  %.not.i = icmp eq ptr %.lcssa21, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc6
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !1767, !nonnull !8, !noundef !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull readonly align 1 %i.b, i64 %.lcssa, i1 false)
  %.pre.i = load i64, ptr %i.z, align 8, !alias.scope !1767
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.noexc6
  %i.af = phi i64 [ %.pre.i, %bb.e ], [ %i.aa, %.noexc6 ]
  %i.ag = add i64 %i.af, %.lcssa
  store i64 %i.ag, ptr %i.z, align 8, !alias.scope !1767
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split13, %.split14, %bb.f
  %i.ah = phi ptr [ %.lcssa21, %bb.f ], [ %4, %.split14 ], [ %4, %.split13 ], [ %4, %.split ], [ %4, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  %.sroa.0.0 = phi i64 [ 0, %bb.f ], [ 1, %.split14 ], [ 1, %.split13 ], [ 1, %.split ], [ 1, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.aj = insertvalue { i64, ptr } %i.ai, ptr %i.ah, 1
  ret { i64, ptr } %i.aj

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.n, label %.thread16, label %.loopexit

.thread16:                                        ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit

bb.g:                                             ; preds = %.split13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ak = and i64 %3, 1095216660480
  %i.al = icmp ne i64 %i.ak, 1095216660480
  call void @llvm.assume(i1 %i.p)
  call void @llvm.assume(i1 %i.al)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit

bb.h:                                             ; preds = %.split
  %i.am = getelementptr i8, ptr %4, i64 -1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  store ptr %i.am, ptr %i.g, align 8, !alias.scope !1768
  store i8 3, ptr %i.a, align 8, !alias.scope !1768
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.g, %bb.h, %.thread16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.an = call { i64, ptr } @_RNvXs3_NtNtCsexYYUdYSQU6_5alloc2io4utilINtNtNtCskKLDkoKarTP_4core2io4util4TakeRNtNtCsG258MDvU3F_3std2fs4FileENtNtB7_4read4Read4readCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull %i.b, i64 noundef 32) ; 2 uses
  %i.ao = extractvalue { i64, ptr } %i.an, 0
  %i.ap = extractvalue { i64, ptr } %i.an, 1      ; 3 uses
  %5 = ptrtoint ptr %i.ap to i64                  ; 2 uses
  %i.aq = trunc nuw i64 %i.ao to i1
  br i1 %i.aq, label %bb.b, label %._crit_edge

bb.i:                                             ; preds = %bb.c, %.noexc
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr nonnull %4) #34
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.k:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schemaNtB3_11NetworkJsonNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeQINtNtCsbbTh99npV2h_10serde_json2de12DeserializerNtNtB2b_4read9SliceReadEEB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [72 x i8], align 8                ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [72 x i8], align 8                ; 5 uses
  %i.k = alloca [72 x i8], align 8                ; 6 uses
  %i.l = alloca [144 x i8], align 8               ; 10 uses
  %i.m = alloca [24 x i8], align 8                ; 12 uses
  %i.n = alloca [72 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [72 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [72 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [72 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.4.sroa.2.i.i = alloca [72 x i8], align 8 ; 12 uses
  %i.v = alloca [72 x i8], align 8                ; 11 uses
  %i.w = alloca [24 x i8], align 8                ; 15 uses
  %.sroa.13.sroa.5.i.i = alloca [72 x i8], align 8 ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 18 uses
  %i.y = alloca [24 x i8], align 8                ; 18 uses
  %i.z = alloca [24 x i8], align 8                ; 18 uses
  %i.aa = alloca [24 x i8], align 8               ; 18 uses
  %i.ab = alloca [72 x i8], align 8               ; 17 uses
  %i.ac = alloca [72 x i8], align 8               ; 13 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  %i.al = alloca [120 x i8], align 8              ; 11 uses
  %i.am = alloca [128 x i8], align 8              ; 8 uses
  %.sroa.13.sroa.6.i = alloca [24 x i8], align 8  ; 6 uses
  %.sroa.13.sroa.7.i = alloca [24 x i8], align 8  ; 6 uses
  %.sroa.13.sroa.8.i = alloca [24 x i8], align 8  ; 6 uses
  %.sroa.13.sroa.9.i = alloca [24 x i8], align 8  ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [120 x i8], align 8              ; 6 uses
  %i.ap = alloca [128 x i8], align 8              ; 8 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 7 uses
  %i.as = alloca [16 x i8], align 8               ; 6 uses
  %i.at = alloca [16 x i8], align 8               ; 6 uses
  %i.au = alloca [120 x i8], align 8              ; 19 uses
  %i.av = alloca [24 x i8], align 8               ; 4 uses
  %i.aw = alloca [16 x i8], align 8               ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1847)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !1848
  call void @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !1846
  %i.ax = load i8, ptr %i.aw, align 8, !range !9, !noalias !1848, !noundef !8
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !1848, !nonnull !8, !align !12, !noundef !8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !range !9, !noalias !1848, !noundef !8
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %i.bf = load i8, ptr %i.be, align 2, !noalias !1848 ; 2 uses
  br i1 %i.bd, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1848
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !1848
  switch i8 %i.bf, label %bb.g [
    i8 110, label %bb.h
    i8 116, label %bb.i
    i8 102, label %bb.j
    i8 45, label %bb.k
    i8 34, label %bb.l
    i8 91, label %bb.m
    i8 123, label %bb.n
  ]

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !1848
  store i64 5, ptr %i.av, align 8, !noalias !1848
  %i.bg = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.av), !noalias !1846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !1848
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.sink233.i = phi ptr [ %i.bg, %bb.e ], [ %i.ba, %bb.b ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink233.i, ptr %i.bh, align 8, !alias.scope !1846
  store i64 -2, ptr %0, align 8, !alias.scope !1846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1848
  br label %_RINvXs5_NtCsbbTh99npV2h_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schemaNtB2q_11NetworkJsonNtB1l_11Deserialize11deserialize9MyVisitorEB2w_.exit

bb.g:                                             ; preds = %bb.d
  %i.bi = add i8 %i.bf, -48
  %or.cond8.i = icmp ult i8 %i.bi, 10
  br i1 %or.cond8.i, label %bb.fs, label %bb.fr, !prof !27

bb.h:                                             ; preds = %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !1849, !noundef !8
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.bj, align 8, !alias.scope !1849
  %i.bm = call noundef align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @394, i64 noundef 3), !noalias !1846 ; 2 uses
  %.not35.i = icmp eq ptr %i.bm, null
  br i1 %.not35.i, label %bb.p, label %bb.o

bb.i:                                             ; preds = %bb.d
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !1850, !noundef !8
  %i.bp = add i64 %i.bo, 1
  store i64 %i.bp, ptr %i.bn, align 8, !alias.scope !1850
  %i.bq = call noundef align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @395, i64 noundef 3), !noalias !1846 ; 2 uses
  %.not34.i = icmp eq ptr %i.bq, null
  br i1 %.not34.i, label %bb.t, label %bb.s

bb.j:                                             ; preds = %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !1851, !noundef !8
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %i.br, align 8, !alias.scope !1851
  %i.bu = call noundef align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @396, i64 noundef 4), !noalias !1846 ; 2 uses
  %.not33.i = icmp eq ptr %i.bu, null
  br i1 %.not33.i, label %bb.v, label %bb.u

bb.k:                                             ; preds = %bb.d
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !1852, !noundef !8
  %i.bx = add i64 %i.bw, 1
  store i64 %i.bx, ptr %i.bv, align 8, !alias.scope !1852
  call void @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.at, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !1846
  %i.by = load i64, ptr %i.at, align 8, !range !1853, !noalias !1848, !noundef !8
  %i.bz = icmp eq i64 %i.by, -1
  br i1 %i.bz, label %bb.w, label %bb.x

bb.l:                                             ; preds = %bb.d
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !1854, !noundef !8
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.cb, align 8, !alias.scope !1854
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ce, align 8, !alias.scope !1847
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !1848
  call void @_RNvXs5_NtCsbbTh99npV2h_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !1846
  %i.cf = load i64, ptr %i.ar, align 8, !range !10, !noalias !1848, !noundef !8 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 2
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !1848 ; 4 uses
  br i1 %i.cg, label %bb.y, label %bb.z

bb.m:                                             ; preds = %bb.d
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ck = load i8, ptr %i.cj, align 8, !alias.scope !1847, !noundef !8
  %i.cl = add i8 %i.ck, -1                        ; 2 uses
  store i8 %i.cl, ptr %i.cj, align 8, !alias.scope !1847
  %i.cm = icmp eq i8 %i.cl, 0
  br i1 %i.cm, label %bb.ac, label %bb.ad, !prof !11

bb.n:                                             ; preds = %bb.d
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.co = load i8, ptr %i.cn, align 8, !alias.scope !1847, !noundef !8
  %i.cp = add i8 %i.co, -1                        ; 2 uses
  store i8 %i.cp, ptr %i.cn, align 8, !alias.scope !1847
  %i.cq = icmp eq i8 %i.cp, 0
  br i1 %i.cq, label %bb.al, label %bb.am, !prof !11

bb.o:                                             ; preds = %bb.h
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bm, ptr %i.cr, align 8, !alias.scope !1846
  store i64 -2, ptr %0, align 8, !alias.scope !1846
  br label %bb.r
end_hunk_0
