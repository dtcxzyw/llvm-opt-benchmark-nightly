Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.12?download=true
inline.NumInlined: 821
inline.NumDeleted: 442
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1b_6ondisk12PostingEntryEENCINvMNtB20_5sliceSB15_11sort_by_keyjNCINvB19_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4c_:bb.a
bb.v:                                             ; preds = %bb.v, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.hr, %bb.v ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.v ]
  %i.ho = xor i64 %.sroa.06.014.i, -1
  %i.hp = getelementptr [32 x i8], ptr %i.gs, i64 %i.ho
  %i.hq = getelementptr [32 x i8], ptr %i.hm, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hq, ptr noundef nonnull align 8 dereferenceable(32) %i.hp, i64 32, i1 false), !alias.scope !2259
  %i.hr = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.hs = xor i64 %.sroa.06.014.i, -2
  %i.ht = getelementptr [32 x i8], ptr %i.gs, i64 %i.hs
  %i.hu = getelementptr [32 x i8], ptr %i.hm, i64 %.sroa.06.014.i
  %i.hv = getelementptr i8, ptr %i.hu, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hv, ptr noundef nonnull align 8 dereferenceable(32) %i.ht, i64 32, i1 false), !alias.scope !2259
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.v

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.v
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.hr, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod335 = trunc i64 %i.hl to i1
  call void @llvm.assume(i1 %lcmp.mod335)
  %i.hw = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.hx = getelementptr [32 x i8], ptr %i.gs, i64 %i.hw
  %i.hy = getelementptr [32 x i8], ptr %i.hm, i64 %.sroa.06.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hy, ptr noundef nonnull align 8 dereferenceable(32) %i.hx, i64 32, i1 false), !alias.scope !2259
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.u
  %i.hz = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.hz, label %.thread, label %bb.w

bb.w:                                             ; preds = %.loopexit
  %.not.i41 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.098251
  br i1 %.not.i41, label %bb.x, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBA_6ondisk12PostingEntryEE12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit, !prof !10

bb.x:                                             ; preds = %bb.w
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27, !noalias !2262
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBA_6ondisk12PostingEntryEE12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.w
  %i.ia = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph105, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph105) ]
  call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1b_6ondisk12PostingEntryEENCINvMNtB20_5sliceSB15_11sort_by_keyjNCINvB19_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4c_(ptr noalias nofree noundef nonnull align 8 %i.ia, i64 noundef %i.hl, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ib = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.ib, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.o, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !2263)
  %.not67 = icmp samesign ult i64 %3, %.sroa.16.098251
  br i1 %.not67, label %bb.z, label %bb.y, !prof !24

bb.y:                                             ; preds = %.thread
  %i.ic = getelementptr [32 x i8], ptr %2, i64 %.sroa.16.098251 ; 4 uses
  %i.id = getelementptr i8, ptr %i.gn, i64 24
  br label %bb.aa

bb.z:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.aa:                                            ; preds = %bb.ab, %bb.y
  %.sroa.19.0.i44 = phi ptr [ %i.ic, %bb.y ], [ %i.ir, %bb.ab ] ; 2 uses
  %.sroa.11.0.i45 = phi i64 [ 0, %bb.y ], [ %i.it, %bb.ab ] ; 2 uses
  %.sroa.5.0.i46 = phi ptr [ %.sroa.0.0.ph105, %bb.y ], [ %i.iu, %bb.ab ] ; 3 uses
  %.sroa.0.0.i47 = phi i64 [ %.sroa.0.0.i37, %bb.y ], [ %.sroa.16.098251, %bb.ab ] ; 2 uses
  %i.ie = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph105, i64 %.sroa.0.0.i47 ; 2 uses
  %i.if = icmp ult ptr %.sroa.5.0.i46, %i.ie
  br i1 %i.if, label %.lr.ph.i56, label %._crit_edge.i48

._crit_edge.i48:                                  ; preds = %.lr.ph.i56, %bb.aa
  %.sroa.19.1.lcssa.i49 = phi ptr [ %.sroa.19.0.i44, %bb.aa ], [ %i.il, %.lr.ph.i56 ]
  %.sroa.11.1.lcssa.i50 = phi i64 [ %.sroa.11.0.i45, %bb.aa ], [ %i.io, %.lr.ph.i56 ] ; 10 uses
  %.sroa.5.1.lcssa.i51 = phi ptr [ %.sroa.5.0.i46, %bb.aa ], [ %i.ip, %.lr.ph.i56 ] ; 2 uses
  %i.ig = icmp eq i64 %.sroa.0.0.i47, %.sroa.16.098251
  br i1 %i.ig, label %bb.ac, label %bb.ab

.lr.ph.i56:                                       ; preds = %bb.aa, %.lr.ph.i56
  %.sroa.5.111.i57 = phi ptr [ %i.ip, %.lr.ph.i56 ], [ %.sroa.5.0.i46, %bb.aa ] ; 3 uses
  %.sroa.11.110.i58 = phi i64 [ %i.io, %.lr.ph.i56 ], [ %.sroa.11.0.i45, %bb.aa ] ; 2 uses
  %.sroa.19.19.i59 = phi ptr [ %i.il, %.lr.ph.i56 ], [ %.sroa.19.0.i44, %bb.aa ]
  %i.ih = getelementptr i8, ptr %.sroa.5.111.i57, i64 24
  %.val.i60 = load i64, ptr %i.ih, align 8, !alias.scope !2264, !noalias !2263, !noundef !9 ; 2 uses
  %.val12.i61 = load i64, ptr %i.id, align 8, !alias.scope !2264, !noalias !2263, !noundef !9 ; 2 uses
  %i.ii = icmp ult i64 %.val12.i61, 1152921504606846976
  call void @llvm.assume(i1 %i.ii)
  %i.ij = icmp ult i64 %.val.i60, 1152921504606846976
  call void @llvm.assume(i1 %i.ij)
  %i.ik = icmp samesign uge i64 %.val12.i61, %.val.i60 ; 2 uses
  %i.il = getelementptr inbounds i8, ptr %.sroa.19.19.i59, i64 -32 ; 3 uses
  %.sroa.01.0.i.i62 = select i1 %i.ik, ptr %2, ptr %i.il
  %i.im = getelementptr inbounds nuw [32 x i8], ptr %.sroa.01.0.i.i62, i64 %.sroa.11.110.i58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.im, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.111.i57, i64 32, i1 false), !alias.scope !2265, !noalias !2266
  %i.in = zext i1 %i.ik to i64
  %i.io = add i64 %.sroa.11.110.i58, %i.in        ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i57, i64 32 ; 3 uses
  %i.iq = icmp ult ptr %i.ip, %i.ie
  br i1 %i.iq, label %.lr.ph.i56, label %._crit_edge.i48

bb.ab:                                            ; preds = %._crit_edge.i48
  %i.ir = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i49, i64 -32
  %i.is = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.is, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.1.lcssa.i51, i64 32, i1 false), !alias.scope !2265, !noalias !2267
  %i.it = add i64 %.sroa.11.1.lcssa.i50, 1
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i51, i64 32
  br label %bb.aa

bb.ac:                                            ; preds = %._crit_edge.i48
  %i.iv = shl nuw nsw i64 %.sroa.11.1.lcssa.i50, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph105, ptr nonnull align 8 %2, i64 %i.iv, i1 false), !alias.scope !2265
  %i.iw = sub i64 %.sroa.16.098251, %.sroa.11.1.lcssa.i50 ; 6 uses
  %.not18.i52 = icmp eq i64 %.sroa.16.098251, %.sroa.11.1.lcssa.i50
  br i1 %.not18.i52, label %.outer._crit_edge.thread, label %.lr.ph16.i53

.lr.ph16.i53:                                     ; preds = %bb.ac
  %i.ix = getelementptr [32 x i8], ptr %.sroa.0.0.ph105, i64 %.sroa.11.1.lcssa.i50 ; 3 uses
  %.neg348 = add i64 %.sroa.11.1.lcssa.i50, 1
  %xtraiter343 = and i64 %i.iw, 1
  %i.iy = icmp eq i64 %.sroa.16.098251, %.neg348
  br i1 %i.iy, label %.epil.preheader336, label %.lr.ph16.i53.new

.lr.ph16.i53.new:                                 ; preds = %.lr.ph16.i53
  %unroll_iter346 = and i64 %i.iw, -2
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph16.i53.new
  %.sroa.06.014.i54 = phi i64 [ 0, %.lr.ph16.i53.new ], [ %i.jc, %bb.ad ] ; 5 uses
  %niter347 = phi i64 [ 0, %.lr.ph16.i53.new ], [ %niter347.next.1, %bb.ad ]
  %i.iz = xor i64 %.sroa.06.014.i54, -1
  %i.ja = getelementptr [32 x i8], ptr %i.ic, i64 %i.iz
  %i.jb = getelementptr [32 x i8], ptr %i.ix, i64 %.sroa.06.014.i54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jb, ptr noundef nonnull align 8 dereferenceable(32) %i.ja, i64 32, i1 false), !alias.scope !2265
  %i.jc = add nuw i64 %.sroa.06.014.i54, 2        ; 2 uses
  %i.jd = xor i64 %.sroa.06.014.i54, -2
  %i.je = getelementptr [32 x i8], ptr %i.ic, i64 %i.jd
  %i.jf = getelementptr [32 x i8], ptr %i.ix, i64 %.sroa.06.014.i54
  %i.jg = getelementptr i8, ptr %i.jf, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jg, ptr noundef nonnull align 8 dereferenceable(32) %i.je, i64 32, i1 false), !alias.scope !2265
  %niter347.next.1 = add i64 %niter347, 2         ; 2 uses
  %niter347.ncmp.1 = icmp eq i64 %niter347.next.1, %unroll_iter346
  br i1 %niter347.ncmp.1, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1j_6ondisk12PostingEntryEENCINvB2_9quicksortB1d_NCINvMNtB28_5sliceSB1d_11sort_by_keyjNCINvB1h_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0E0EB4G_.exit.unr-lcssa, label %bb.ad

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1j_6ondisk12PostingEntryEENCINvB2_9quicksortB1d_NCINvMNtB28_5sliceSB1d_11sort_by_keyjNCINvB1h_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0E0EB4G_.exit.unr-lcssa: ; preds = %bb.ad
  %lcmp.mod344.not = icmp eq i64 %xtraiter343, 0
  br i1 %lcmp.mod344.not, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1j_6ondisk12PostingEntryEENCINvB2_9quicksortB1d_NCINvMNtB28_5sliceSB1d_11sort_by_keyjNCINvB1h_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0E0EB4G_.exit, label %.epil.preheader336

.epil.preheader336:                               ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1j_6ondisk12PostingEntryEENCINvB2_9quicksortB1d_NCINvMNtB28_5sliceSB1d_11sort_by_keyjNCINvB1h_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0E0EB4G_.exit.unr-lcssa, %.lr.ph16.i53
  %.sroa.06.014.i54.epil.init = phi i64 [ 0, %.lr.ph16.i53 ], [ %i.jc, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1j_6ondisk12PostingEntryEENCINvB2_9quicksortB1d_NCINvMNtB28_5sliceSB1d_11sort_by_keyjNCINvB1h_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0E0EB4G_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod345 = trunc i64 %i.iw to i1
  call void @llvm.assume(i1 %lcmp.mod345)
  %i.jh = xor i64 %.sroa.06.014.i54.epil.init, -1
  %i.ji = getelementptr [32 x i8], ptr %i.ic, i64 %i.jh
  %i.jj = getelementptr [32 x i8], ptr %i.ix, i64 %.sroa.06.014.i54.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jj, ptr noundef nonnull align 8 dereferenceable(32) %i.ji, i64 32, i1 false), !alias.scope !2265
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1j_6ondisk12PostingEntryEENCINvB2_9quicksortB1d_NCINvMNtB28_5sliceSB1d_11sort_by_keyjNCINvB1h_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0E0EB4G_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1j_6ondisk12PostingEntryEENCINvB2_9quicksortB1d_NCINvMNtB28_5sliceSB1d_11sort_by_keyjNCINvB1h_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0E0EB4G_.exit: ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1j_6ondisk12PostingEntryEENCINvB2_9quicksortB1d_NCINvMNtB28_5sliceSB1d_11sort_by_keyjNCINvB1h_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0E0EB4G_.exit.unr-lcssa, %.epil.preheader336
  %i.jk = icmp ugt i64 %.sroa.11.1.lcssa.i50, %.sroa.16.098251
  br i1 %i.jk, label %bb.ae, label %.outer, !prof !10

.outer._crit_edge.thread:                         ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1y_6ondisk12PostingEntryEENCINvMNtB2n_5sliceSB1s_11sort_by_keyjNCINvB1w_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4z_.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1j_6ondisk12PostingEntryEENCINvB2_9quicksortB1d_NCINvMNtB28_5sliceSB1d_11sort_by_keyjNCINvB1h_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0E0EB4G_.exit
  %i.jl = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph105, i64 %.sroa.11.1.lcssa.i50 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.jm = icmp ult i64 %i.iw, 33
  br i1 %i.jm, label %.outer._crit_edge, label %.lr.ph

bb.ae:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1j_6ondisk12PostingEntryEENCINvB2_9quicksortB1d_NCINvMNtB28_5sliceSB1d_11sort_by_keyjNCINvB1h_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0E0EB4G_.exit
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i50, i64 noundef %.sroa.16.098251, i64 noundef %.sroa.16.098251, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #27
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort8heapsortTTINtNtBa_6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB1x_4path7PathBufEjENvYB15_NtNtBa_3cmp10PartialOrd2ltECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 33, 192153584101141163) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = lshr i64 %1, 1
  %i.f = add nuw nsw i64 %i.e, %1
  br label %bb.c

bb.b:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downTTINtNtBa_6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB1y_4path7PathBufEjENvYB16_NtNtBa_3cmp10PartialOrd2ltECsbNLsQi0JuJ4_5tgrep.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downTTINtNtBa_6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB1y_4path7PathBufEjENvYB16_NtNtBa_3cmp10PartialOrd2ltECsbNLsQi0JuJ4_5tgrep.exit
  %.sroa.2.04 = phi i64 [ %i.f, %bb.a ], [ %i.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downTTINtNtBa_6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB1y_4path7PathBufEjENvYB16_NtNtBa_3cmp10PartialOrd2ltECsbNLsQi0JuJ4_5tgrep.exit ]
  %i.g = add nsw i64 %.sroa.2.04, -1              ; 6 uses
  %.not7 = icmp ult i64 %i.g, %1
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sub nuw i64 %i.g, %1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSTTINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtBW_4path7PathBufEjE14swap_uncheckedCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, i64 noundef 0, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.04.0 = phi i64 [ %i.h, %bb.d ], [ 0, %bb.e ] ; 3 uses
  %i.i = call i64 @llvm.umin.i64(i64 %i.g, i64 %1) ; 4 uses
  %i.j = icmp ule i64 %.sroa.04.0, %i.i
  call void @llvm.assume(i1 %i.j)
  %i.k = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.l = or disjoint i64 %i.k, 1                  ; 2 uses
  %.not.i2 = icmp samesign ult i64 %i.l, %i.i
  br i1 %.not.i2, label %.lr.ph, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downTTINtNtBa_6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB1y_4path7PathBufEjENvYB16_NtNtBa_3cmp10PartialOrd2ltECsbNLsQi0JuJ4_5tgrep.exit

.lr.ph:                                           ; preds = %bb.f, %_RNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes.exit.loopexit
  %i.m = phi i64 [ %i.bp, %_RNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes.exit.loopexit ], [ %i.l, %bb.f ] ; 3 uses
  %i.n = phi i64 [ %i.bo, %_RNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes.exit.loopexit ], [ %i.k, %bb.f ]
  %.sroa.0.0.i3 = phi i64 [ %.sroa.04.0.i, %_RNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes.exit.loopexit ], [ %.sroa.04.0, %bb.f ]
  %i.o = add nuw nsw i64 %i.n, 2                  ; 2 uses
  %i.p = icmp samesign ult i64 %i.o, %i.i
  br i1 %i.p, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.m ; 5 uses
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.o ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2305)
  call void @llvm.experimental.noalias.scope.decl(metadata !2306)
  call void @llvm.experimental.noalias.scope.decl(metadata !2307)
  call void @llvm.experimental.noalias.scope.decl(metadata !2308)
  call void @llvm.experimental.noalias.scope.decl(metadata !2309)
  call void @llvm.experimental.noalias.scope.decl(metadata !2310)
  %.val.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !2311, !noalias !2312 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val8.i.i.i = load i32, ptr %i.s, align 8, !range !23, !alias.scope !2311, !noalias !2312, !noundef !9 ; 2 uses
  %.val9.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !2312, !noalias !2311 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val10.i.i.i = load i32, ptr %i.t, align 8, !alias.scope !2312, !noalias !2311 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.val8.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not2.i.i.i.i.i.i = icmp eq i32 %.val10.i.i.i, -1
  br i1 %.not2.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  %.not1.i.i.i.i.i.i = icmp ne i32 %.val10.i.i.i, -1
  %..i.i.i.i.i.i = sext i1 %.not1.i.i.i.i.i.i to i8
  br label %_RNvXsg_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd11partial_cmpCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.u = call i8 @llvm.scmp.i8.i64(i64 %.val.i.i.i, i64 %.val9.i.i.i)
  %i.v = icmp eq i64 %.val.i.i.i, %.val9.i.i.i
  %i.w = call i8 @llvm.ucmp.i8.i32(i32 %.val8.i.i.i, i32 %.val10.i.i.i)
  %spec.select.i.i.i.i.i = select i1 %i.v, i8 %i.w, i8 %i.u
  br label %_RNvXsg_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd11partial_cmpCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i

_RNvXsg_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd11partial_cmpCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.sroa.0.0.i.i.i.i.i.i = phi i8 [ %spec.select.i.i.i.i.i, %bb.j ], [ %..i.i.i.i.i.i, %bb.i ] ; 2 uses
  %cond.i.i.i.i.i = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i, 0
  br i1 %cond.i.i.i.i.i, label %_RNvYINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd13___chaining_ltCsbNLsQi0JuJ4_5tgrep.exit.thread.i.i.i, label %_RNvYINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd13___chaining_ltCsbNLsQi0JuJ4_5tgrep.exit.i.i.i

_RNvYINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd13___chaining_ltCsbNLsQi0JuJ4_5tgrep.exit.i.i.i: ; preds = %_RNvXsg_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd11partial_cmpCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i
  %.sroa.0.0.i6.lobit.i.i.i.i.i = lshr i8 %.sroa.0.0.i.i.i.i.i.i, 7
  br label %bb.k

_RNvYINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd13___chaining_ltCsbNLsQi0JuJ4_5tgrep.exit.thread.i.i.i: ; preds = %_RNvXsg_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd11partial_cmpCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.val11.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !2311, !noalias !2312, !nonnull !9, !noundef !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.val12.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !2311, !noalias !2312, !noundef !9
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.val13.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !2312, !noalias !2311 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.val14.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !2312, !noalias !2311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2313
  call void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val11.i.i.i, i64 noundef %.val12.i.i.i), !noalias !2313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2313
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i.i.i) ]
  call void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val13.i.i.i, i64 noundef %.val14.i.i.i), !noalias !2313
  %i.ab = call noundef range(i8 -1, 2) i8 @_RNvNtCs5Xr050g3D4S_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.c), !noalias !2313 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2313
  %i.ac = icmp eq i8 %i.ab, 0
  %.lobit.i.i.i.i.i = lshr i8 %i.ab, 7
  br i1 %i.ac, label %_RNvXsc_NtCsf3Ta7LF998c_4core5tupleTINtNtB7_6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtBX_4path7PathBufENtNtB7_3cmp10PartialOrd13___chaining_ltCsbNLsQi0JuJ4_5tgrep.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_RNvYINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd13___chaining_ltCsbNLsQi0JuJ4_5tgrep.exit.thread.i.i.i, %_RNvYINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd13___chaining_ltCsbNLsQi0JuJ4_5tgrep.exit.i.i.i, %bb.h
  %.sroa.0.0.i.ph.i.i = phi i8 [ 0, %bb.h ], [ %.lobit.i.i.i.i.i, %_RNvYINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd13___chaining_ltCsbNLsQi0JuJ4_5tgrep.exit.thread.i.i.i ], [ %.sroa.0.0.i6.lobit.i.i.i.i.i, %_RNvYINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd13___chaining_ltCsbNLsQi0JuJ4_5tgrep.exit.i.i.i ]
  %i.ad = trunc nuw i8 %.sroa.0.0.i.ph.i.i to i1
  br label %_RNvYNvYTTINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtBN_4path7PathBufEjENtNtBc_3cmp10PartialOrd2ltINtNtNtBc_3ops8function5FnMutTRB5_B2E_EE8call_mutCsbNLsQi0JuJ4_5tgrep.exit

_RNvXsc_NtCsf3Ta7LF998c_4core5tupleTINtNtB7_6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtBX_4path7PathBufENtNtB7_3cmp10PartialOrd13___chaining_ltCsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %_RNvYINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd13___chaining_ltCsbNLsQi0JuJ4_5tgrep.exit.thread.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !2314)
  call void @llvm.experimental.noalias.scope.decl(metadata !2315)
  %i.ag = load i64, ptr %i.ae, align 8, !alias.scope !2316, !noalias !2317, !noundef !9
  %i.ah = load i64, ptr %i.af, align 8, !alias.scope !2317, !noalias !2316, !noundef !9
  %i.ai = icmp ult i64 %i.ag, %i.ah
  br label %_RNvYNvYTTINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtBN_4path7PathBufEjENtNtBc_3cmp10PartialOrd2ltINtNtNtBc_3ops8function5FnMutTRB5_B2E_EE8call_mutCsbNLsQi0JuJ4_5tgrep.exit

_RNvYNvYTTINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtBN_4path7PathBufEjENtNtBc_3cmp10PartialOrd2ltINtNtNtBc_3ops8function5FnMutTRB5_B2E_EE8call_mutCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.k, %_RNvXsc_NtCsf3Ta7LF998c_4core5tupleTINtNtB7_6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtBX_4path7PathBufENtNtB7_3cmp10PartialOrd13___chaining_ltCsbNLsQi0JuJ4_5tgrep.exit.i.i
  %.sroa.0.0.i.i = phi i1 [ %i.ad, %bb.k ], [ %i.ai, %_RNvXsc_NtCsf3Ta7LF998c_4core5tupleTINtNtB7_6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtBX_4path7PathBufENtNtB7_3cmp10PartialOrd13___chaining_ltCsbNLsQi0JuJ4_5tgrep.exit.i.i ]
  %i.aj = zext i1 %.sroa.0.0.i.i to i64
  %i.ak = add nuw nsw i64 %i.m, %i.aj
  br label %bb.l

bb.l:                                             ; preds = %_RNvYNvYTTINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtBN_4path7PathBufEjENtNtBc_3cmp10PartialOrd2ltINtNtNtBc_3ops8function5FnMutTRB5_B2E_EE8call_mutCsbNLsQi0JuJ4_5tgrep.exit, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.ak, %_RNvYNvYTTINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtBN_4path7PathBufEjENtNtBc_3cmp10PartialOrd2ltINtNtNtBc_3ops8function5FnMutTRB5_B2E_EE8call_mutCsbNLsQi0JuJ4_5tgrep.exit ], [ %i.m, %.lr.ph ] ; 3 uses
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.0.0.i3 ; 11 uses
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.04.0.i ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2318)
  call void @llvm.experimental.noalias.scope.decl(metadata !2319)
  call void @llvm.experimental.noalias.scope.decl(metadata !2320)
  call void @llvm.experimental.noalias.scope.decl(metadata !2321)
  call void @llvm.experimental.noalias.scope.decl(metadata !2322)
  call void @llvm.experimental.noalias.scope.decl(metadata !2323)
  %.val.i.i.i8 = load i64, ptr %i.al, align 8, !alias.scope !2324, !noalias !2325 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.val8.i.i.i9 = load i32, ptr %i.an, align 8, !range !23, !alias.scope !2324, !noalias !2325, !noundef !9 ; 2 uses
  %.val9.i.i.i10 = load i64, ptr %i.am, align 8, !alias.scope !2325, !noalias !2324 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.val10.i.i.i11 = load i32, ptr %i.ao, align 8, !alias.scope !2325, !noalias !2324 ; 3 uses
  %.not.i.i.i.i.i.i12 = icmp eq i32 %.val8.i.i.i9, -1
  br i1 %.not.i.i.i.i.i.i12, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not2.i.i.i.i.i.i13 = icmp eq i32 %.val10.i.i.i11, -1
  br i1 %.not2.i.i.i.i.i.i13, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downTTINtNtBa_6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB1y_4path7PathBufEjENvYB16_NtNtBa_3cmp10PartialOrd2ltECsbNLsQi0JuJ4_5tgrep.exit, label %bb.o

bb.n:                                             ; preds = %bb.l
  %.not1.i.i.i.i.i.i29 = icmp ne i32 %.val10.i.i.i11, -1
  %..i.i.i.i.i.i30 = sext i1 %.not1.i.i.i.i.i.i29 to i8
  br label %_RNvXsg_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd11partial_cmpCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i15

bb.o:                                             ; preds = %bb.m
  %i.ap = call i8 @llvm.scmp.i8.i64(i64 %.val.i.i.i8, i64 %.val9.i.i.i10)
  %i.aq = icmp eq i64 %.val.i.i.i8, %.val9.i.i.i10
  %i.ar = call i8 @llvm.ucmp.i8.i32(i32 %.val8.i.i.i9, i32 %.val10.i.i.i11)
  %spec.select.i.i.i.i.i14 = select i1 %i.aq, i8 %i.ar, i8 %i.ap
  br label %_RNvXsg_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd11partial_cmpCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i15

_RNvXsg_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd11partial_cmpCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i15: ; preds = %bb.o, %bb.n
  %.sroa.0.0.i.i.i.i.i.i16 = phi i8 [ %spec.select.i.i.i.i.i14, %bb.o ], [ %..i.i.i.i.i.i30, %bb.n ] ; 2 uses
  %cond.i.i.i.i.i17 = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i16, 0
  br i1 %cond.i.i.i.i.i17, label %_RNvYINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd13___chaining_ltCsbNLsQi0JuJ4_5tgrep.exit.thread.i.i.i22, label %.split

_RNvYINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd13___chaining_ltCsbNLsQi0JuJ4_5tgrep.exit.thread.i.i.i22: ; preds = %_RNvXsg_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd11partial_cmpCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i15
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %.val11.i.i.i23 = load ptr, ptr %i.as, align 8, !alias.scope !2324, !noalias !2325, !nonnull !9, !noundef !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %.val12.i.i.i24 = load i64, ptr %i.at, align 8, !alias.scope !2324, !noalias !2325, !noundef !9
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.val13.i.i.i25 = load ptr, ptr %i.au, align 8, !alias.scope !2325, !noalias !2324 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %.val14.i.i.i26 = load i64, ptr %i.av, align 8, !alias.scope !2325, !noalias !2324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2326
  call void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val11.i.i.i23, i64 noundef %.val12.i.i.i24), !noalias !2326
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2326
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i.i.i25) ]
  call void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val13.i.i.i25, i64 noundef %.val14.i.i.i26), !noalias !2326
  %i.aw = call noundef range(i8 -1, 2) i8 @_RNvNtCs5Xr050g3D4S_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a), !noalias !2326 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2326
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %_RNvYNvYTTINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtBN_4path7PathBufEjENtNtBc_3cmp10PartialOrd2ltINtNtNtBc_3ops8function5FnMutTRB5_B2E_EE8call_mutCsbNLsQi0JuJ4_5tgrep.exit31, label %.split

.split:                                           ; preds = %_RNvXsg_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd11partial_cmpCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i15, %_RNvYINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd13___chaining_ltCsbNLsQi0JuJ4_5tgrep.exit.thread.i.i.i22
  %.sroa.0.0.i.ph.i.i20.in = phi i8 [ %i.aw, %_RNvYINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd13___chaining_ltCsbNLsQi0JuJ4_5tgrep.exit.thread.i.i.i22 ], [ %.sroa.0.0.i.i.i.i.i.i16, %_RNvXsg_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd11partial_cmpCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i15 ]
  %i.ay = icmp slt i8 %.sroa.0.0.i.ph.i.i20.in, 0
  br i1 %i.ay, label %.split._RNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes.exit.loopexit_crit_edge, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downTTINtNtBa_6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB1y_4path7PathBufEjENvYB16_NtNtBa_3cmp10PartialOrd2ltECsbNLsQi0JuJ4_5tgrep.exit

.split._RNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes.exit.loopexit_crit_edge: ; preds = %.split
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %.sroa.0.0.copyload.i.i.i.5.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !2327, !noalias !2328
  %.phi.trans.insert6 = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %.sroa.02.0.copyload.i.i.i.5.pre = load i64, ptr %.phi.trans.insert6, align 8, !alias.scope !2328, !noalias !2327
  br label %_RNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes.exit.loopexit

_RNvYNvYTTINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtBN_4path7PathBufEjENtNtBc_3cmp10PartialOrd2ltINtNtNtBc_3ops8function5FnMutTRB5_B2E_EE8call_mutCsbNLsQi0JuJ4_5tgrep.exit31: ; preds = %_RNvYINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd13___chaining_ltCsbNLsQi0JuJ4_5tgrep.exit.thread.i.i.i22
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !2329)
  call void @llvm.experimental.noalias.scope.decl(metadata !2330)
  %i.bb = load i64, ptr %i.az, align 8, !alias.scope !2331, !noalias !2332, !noundef !9 ; 2 uses
  %i.bc = load i64, ptr %i.ba, align 8, !alias.scope !2332, !noalias !2331, !noundef !9 ; 2 uses
  %i.bd = icmp ult i64 %i.bb, %i.bc
  br i1 %i.bd, label %_RNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes.exit.loopexit, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downTTINtNtBa_6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB1y_4path7PathBufEjENvYB16_NtNtBa_3cmp10PartialOrd2ltECsbNLsQi0JuJ4_5tgrep.exit

_RNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes.exit.loopexit: ; preds = %.split._RNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes.exit.loopexit_crit_edge, %_RNvYNvYTTINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtBN_4path7PathBufEjENtNtBc_3cmp10PartialOrd2ltINtNtNtBc_3ops8function5FnMutTRB5_B2E_EE8call_mutCsbNLsQi0JuJ4_5tgrep.exit31
  %.sroa.02.0.copyload.i.i.i.5 = phi i64 [ %.sroa.02.0.copyload.i.i.i.5.pre, %.split._RNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes.exit.loopexit_crit_edge ], [ %i.bc, %_RNvYNvYTTINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtBN_4path7PathBufEjENtNtBc_3cmp10PartialOrd2ltINtNtNtBc_3ops8function5FnMutTRB5_B2E_EE8call_mutCsbNLsQi0JuJ4_5tgrep.exit31 ]
  %.sroa.0.0.copyload.i.i.i.5 = phi i64 [ %.sroa.0.0.copyload.i.i.i.5.pre, %.split._RNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes.exit.loopexit_crit_edge ], [ %i.bb, %_RNvYNvYTTINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtBN_4path7PathBufEjENtNtBc_3cmp10PartialOrd2ltINtNtNtBc_3ops8function5FnMutTRB5_B2E_EE8call_mutCsbNLsQi0JuJ4_5tgrep.exit31 ]
  %i.be = load <2 x i64>, ptr %i.al, align 8, !alias.scope !2333, !noalias !9
  %i.bf = load <2 x i64>, ptr %i.am, align 8, !alias.scope !2334, !noalias !9
  store <2 x i64> %i.bf, ptr %i.al, align 8, !alias.scope !2333, !noalias !9
  store <2 x i64> %i.be, ptr %i.am, align 8, !alias.scope !2334, !noalias !9
  %i.bg = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.bi = load <2 x i64>, ptr %i.bg, align 8, !alias.scope !2335, !noalias !9
  %i.bj = load <2 x i64>, ptr %i.bh, align 8, !alias.scope !2336, !noalias !9
  store <2 x i64> %i.bj, ptr %i.bg, align 8, !alias.scope !2335, !noalias !9
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !alias.scope !2336, !noalias !9
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2337)
  call void @llvm.experimental.noalias.scope.decl(metadata !2338)
  %.sroa.0.0.copyload.i.i.i.4 = load i64, ptr %i.bk, align 8, !alias.scope !2337, !noalias !2338
  %.sroa.02.0.copyload.i.i.i.4 = load i64, ptr %i.bl, align 8, !alias.scope !2338, !noalias !2337
  store i64 %.sroa.02.0.copyload.i.i.i.4, ptr %i.bk, align 8, !alias.scope !2337, !noalias !2338
  store i64 %.sroa.0.0.copyload.i.i.i.4, ptr %i.bl, align 8, !alias.scope !2338, !noalias !2337
  %i.bm = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !2327)
  call void @llvm.experimental.noalias.scope.decl(metadata !2328)
  store i64 %.sroa.02.0.copyload.i.i.i.5, ptr %i.bm, align 8, !alias.scope !2327, !noalias !2328
  store i64 %.sroa.0.0.copyload.i.i.i.5, ptr %i.bn, align 8, !alias.scope !2328, !noalias !2327
  %i.bo = shl nuw nsw i64 %.sroa.04.0.i, 1        ; 2 uses
  %i.bp = or disjoint i64 %i.bo, 1                ; 2 uses
  %.not.i = icmp samesign ult i64 %i.bp, %i.i
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downTTINtNtBa_6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB1y_4path7PathBufEjENvYB16_NtNtBa_3cmp10PartialOrd2ltECsbNLsQi0JuJ4_5tgrep.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downTTINtNtBa_6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB1y_4path7PathBufEjENvYB16_NtNtBa_3cmp10PartialOrd2ltECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RNvYNvYTTINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtBN_4path7PathBufEjENtNtBc_3cmp10PartialOrd2ltINtNtNtBc_3ops8function5FnMutTRB5_B2E_EE8call_mutCsbNLsQi0JuJ4_5tgrep.exit31, %_RNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes.exit.loopexit, %.split, %bb.m, %bb.f
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort8heapsortTjjENvYB15_NtNtBa_3cmp10PartialOrd2ltECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 33, 576460752303423488) %1) unnamed_addr #4 {
bb.a:
  %i.a = lshr i64 %1, 1
  %i.b = add nuw nsw i64 %i.a, %1
  br label %bb.c

bb.b:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downTjjENvYB16_NtNtBa_3cmp10PartialOrd2ltECsbNLsQi0JuJ4_5tgrep.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downTjjENvYB16_NtNtBa_3cmp10PartialOrd2ltECsbNLsQi0JuJ4_5tgrep.exit
  %.sroa.2.03 = phi i64 [ %i.b, %bb.a ], [ %i.c, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downTjjENvYB16_NtNtBa_3cmp10PartialOrd2ltECsbNLsQi0JuJ4_5tgrep.exit ]
  %i.c = add nsw i64 %.sroa.2.03, -1              ; 6 uses
  %.not7 = icmp ult i64 %i.c, %1
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = sub nuw i64 %i.c, %1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSTjjE14swap_uncheckedCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, i64 noundef 0, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.04.0 = phi i64 [ %i.d, %bb.d ], [ 0, %bb.e ] ; 3 uses
  %i.e = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %1) ; 4 uses
  %i.f = icmp ule i64 %.sroa.04.0, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.h = or disjoint i64 %i.g, 1                  ; 2 uses
  %.not.i1 = icmp samesign ult i64 %i.h, %i.e
  br i1 %.not.i1, label %.lr.ph, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downTjjENvYB16_NtNtBa_3cmp10PartialOrd2ltECsbNLsQi0JuJ4_5tgrep.exit

.lr.ph:                                           ; preds = %bb.f, %.preheader.preheader
  %i.i = phi i64 [ %i.ad, %.preheader.preheader ], [ %i.h, %bb.f ] ; 3 uses
  %i.j = phi i64 [ %i.ac, %.preheader.preheader ], [ %i.g, %bb.f ]
  %.sroa.0.0.i2 = phi i64 [ %.sroa.04.0.i, %.preheader.preheader ], [ %.sroa.04.0, %bb.f ]
  %i.k = add nuw nsw i64 %i.j, 2                  ; 2 uses
  %i.l = icmp samesign ult i64 %i.k, %i.e
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.i ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.k ; 2 uses
  %.val = load i64, ptr %i.m, align 8, !noundef !9 ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 8
  %.val8 = load i64, ptr %i.o, align 8
  %.val9 = load i64, ptr %i.n, align 8, !noundef !9 ; 2 uses
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val10 = load i64, ptr %i.p, align 8
  %i.q = icmp eq i64 %.val, %.val9
  %i.r = icmp ult i64 %.val, %.val9
  %i.s = icmp ult i64 %.val8, %.val10
  %.sroa.0.0.i.i = select i1 %i.q, i1 %i.s, i1 %i.r
  %i.t = zext i1 %.sroa.0.0.i.i to i64
  %i.u = add nuw nsw i64 %i.i, %i.t
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.u, %bb.g ], [ %i.i, %.lr.ph ] ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.0.i2 ; 3 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i ; 3 uses
  %.val11 = load i64, ptr %i.v, align 8, !noundef !9 ; 3 uses
  %i.x = getelementptr i8, ptr %i.v, i64 8        ; 2 uses
  %.val12 = load i64, ptr %i.x, align 8           ; 2 uses
  %.val13 = load i64, ptr %i.w, align 8, !noundef !9 ; 3 uses
  %i.y = getelementptr i8, ptr %i.w, i64 8        ; 2 uses
  %.val14 = load i64, ptr %i.y, align 8           ; 2 uses
  %i.z = icmp eq i64 %.val11, %.val13
  %i.aa = icmp ult i64 %.val11, %.val13
  %i.ab = icmp ult i64 %.val12, %.val14
  %.sroa.0.0.i.i15 = select i1 %i.z, i1 %i.ab, i1 %i.aa
  br i1 %.sroa.0.0.i.i15, label %.preheader.preheader, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downTjjENvYB16_NtNtBa_3cmp10PartialOrd2ltECsbNLsQi0JuJ4_5tgrep.exit

.preheader.preheader:                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2345)
  store i64 %.val13, ptr %i.v, align 8, !alias.scope !2344, !noalias !2345
  store i64 %.val11, ptr %i.w, align 8, !alias.scope !2345, !noalias !2344
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2347)
  store i64 %.val14, ptr %i.x, align 8, !alias.scope !2346, !noalias !2347
  store i64 %.val12, ptr %i.y, align 8, !alias.scope !2347, !noalias !2346
  %i.ac = shl nuw nsw i64 %.sroa.04.0.i, 1        ; 2 uses
  %i.ad = or disjoint i64 %i.ac, 1                ; 2 uses
  %.not.i = icmp samesign ult i64 %i.ad, %i.e
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downTjjENvYB16_NtNtBa_3cmp10PartialOrd2ltECsbNLsQi0JuJ4_5tgrep.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downTjjENvYB16_NtNtBa_3cmp10PartialOrd2ltECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.h, %.preheader.preheader, %bb.f
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortTTINtNtBa_6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB1z_4path7PathBufEjENvYB17_NtNtBa_3cmp10PartialOrd2ltECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(48) %2, i32 noundef range(i32 0, 127) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 8 uses
  %i.b = alloca [64 x i8], align 8                ; 8 uses
  %i.c = alloca [64 x i8], align 8                ; 8 uses
  %i.d = alloca [64 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 14 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [64 x i8], align 8                ; 4 uses
  %i.h = alloca [64 x i8], align 8                ; 8 uses
  %i.i = alloca [64 x i8], align 8                ; 8 uses
  %i.j = alloca [64 x i8], align 8                ; 8 uses
  %i.k = alloca [64 x i8], align 8                ; 8 uses
  %i.l = alloca [48 x i8], align 8                ; 14 uses
  %i.m = alloca [64 x i8], align 8                ; 4 uses
  %i.n = alloca [64 x i8], align 8                ; 4 uses
  %i.o = alloca [64 x i8], align 8                ; 4 uses
  %i.p = alloca [64 x i8], align 8                ; 4 uses
  %i.q = alloca [64 x i8], align 8                ; 4 uses
  %i.r = alloca [64 x i8], align 8                ; 4 uses
  %i.s = icmp samesign ult i64 %1, 33
  br i1 %i.s, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.t = icmp eq i32 %3, 0
  br i1 %i.t, label %.lr.ph._crit_edge, label %.lr.ph49

.lr.ph:                                           ; preds = %.backedge
  %i.u = icmp eq i32 %i.v, 0
  br i1 %i.u, label %.lr.ph._crit_edge, label %.lr.ph49

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_generalTTINtNtBa_6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB1H_4path7PathBufEjENvYB1f_NtNtBa_3cmp10PartialOrd2ltECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa)
  br label %bb.q

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.0139.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.0138.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort8heapsortTTINtNtBa_6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB1x_4path7PathBufEjENvYB15_NtNtBa_3cmp10PartialOrd2ltECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0139.lcssa, i64 noundef %.sroa.15.0138.lcssa) #31
  br label %bb.q

.lr.ph49:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.013548 = phi i32 [ %i.v, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.013647 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 7 uses
  %.sroa.15.013846 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.013945 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 37 uses
  %i.v = add nsw i32 %.sroa.026.013548, -1        ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2470)
  %i.w = lshr i64 %.sroa.15.013846, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.w, 192
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.013945, i64 %.idx.i ; 10 uses
  %.idx2.i = mul nuw nsw i64 %i.w, 336
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.013945, i64 %.idx2.i ; 10 uses
  %i.z = icmp samesign ult i64 %.sroa.15.013846, 64
  br i1 %i.z, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph49
  %i.aa = call fastcc noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recTTINtNtBa_6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB1w_4path7PathBufEjENvYB14_NtNtBa_3cmp10PartialOrd2ltECsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull readonly align 8 %.sroa.0.013945, ptr noundef readonly %i.x, ptr noundef readonly %i.y, i64 noundef %i.w)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotTTINtNtBa_6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB1x_4path7PathBufEjENvYB15_NtNtBa_3cmp10PartialOrd2ltECsbNLsQi0JuJ4_5tgrep.exit

bb.c:                                             ; preds = %.lr.ph49
  call void @llvm.experimental.noalias.scope.decl(metadata !2471)
  call void @llvm.experimental.noalias.scope.decl(metadata !2472)
  call void @llvm.experimental.noalias.scope.decl(metadata !2473)
  call void @llvm.experimental.noalias.scope.decl(metadata !2474)
  call void @llvm.experimental.noalias.scope.decl(metadata !2475)
  call void @llvm.experimental.noalias.scope.decl(metadata !2476)
  %.val.i.i.i.i = load i64, ptr %.sroa.0.013945, align 8, !alias.scope !2477, !noalias !2478 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.013945, i64 8
  %.val8.i.i.i.i = load i32, ptr %i.ab, align 8, !range !23, !alias.scope !2477, !noalias !2478, !noundef !9 ; 3 uses
  %.val9.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !2479, !noalias !2480 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val10.i.i.i.i = load i32, ptr %i.ac, align 8, !alias.scope !2479, !noalias !2480 ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.val8.i.i.i.i, -1 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not2.i.i.i.i.i.i.i = icmp eq i32 %.val10.i.i.i.i, -1
  br i1 %.not2.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %.not1.i.i.i.i.i.i.i = icmp ne i32 %.val10.i.i.i.i, -1
  %..i.i.i.i.i.i.i = sext i1 %.not1.i.i.i.i.i.i.i to i8
  br label %_RNvXsg_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd11partial_cmpCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ad = call i8 @llvm.scmp.i8.i64(i64 %.val.i.i.i.i, i64 %.val9.i.i.i.i)
  %i.ae = icmp eq i64 %.val.i.i.i.i, %.val9.i.i.i.i
  %i.af = call i8 @llvm.ucmp.i8.i32(i32 %.val8.i.i.i.i, i32 %.val10.i.i.i.i)
  %spec.select.i.i.i.i.i.i = select i1 %i.ae, i8 %i.af, i8 %i.ad
  br label %_RNvXsg_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd11partial_cmpCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i

_RNvXsg_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd11partial_cmpCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %spec.select.i.i.i.i.i.i, %bb.f ], [ %..i.i.i.i.i.i.i, %bb.e ] ; 2 uses
  %cond.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i, 0
  br i1 %cond.i.i.i.i.i.i, label %_RNvYINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd13___chaining_ltCsbNLsQi0JuJ4_5tgrep.exit.thread.i.i.i.i, label %_RNvYINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd13___chaining_ltCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i

_RNvYINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd13___chaining_ltCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i: ; preds = %_RNvXsg_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd11partial_cmpCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i
  %.sroa.0.0.i6.lobit.i.i.i.i.i.i = lshr i8 %.sroa.0.0.i.i.i.i.i.i.i, 7
  br label %bb.g

_RNvYINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd13___chaining_ltCsbNLsQi0JuJ4_5tgrep.exit.thread.i.i.i.i: ; preds = %_RNvXsg_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtB7_3cmp10PartialOrd11partial_cmpCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.013945, i64 24
  %.val11.i.i.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !2477, !noalias !2478, !nonnull !9, !noundef !9
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.013945, i64 32
  %.val12.i.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !2477, !noalias !2478, !noundef !9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.val13.i.i.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !2479, !noalias !2480 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.val14.i.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !2479, !noalias !2480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2481
  call void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val11.i.i.i.i, i64 noundef %.val12.i.i.i.i), !noalias !2481
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2481
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i.i.i.i) ]
  call void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val13.i.i.i.i, i64 noundef %.val14.i.i.i.i), !noalias !2481
  %i.ak = call noundef range(i8 -1, 2) i8 @_RNvNtCs5Xr050g3D4S_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.q), !noalias !2481 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2481
  %i.al = icmp eq i8 %i.ak, 0
  %.lobit.i.i.i.i.i.i = lshr i8 %i.ak, 7
  br i1 %i.al, label %_RNvXsc_NtCsf3Ta7LF998c_4core5tupleTINtNtB7_6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtBX_4path7PathBufENtNtB7_3cmp10PartialOrd13___chaining_ltCsbNLsQi0JuJ4_5tgrep.exit.i.i.i, label %bb.g
end_hunk_0
