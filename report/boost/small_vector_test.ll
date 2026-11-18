Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/small_vector_test?download=true
inline.NumInlined: 11236
inline.NumDeleted: 2906
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 397
loop-unroll.NumUnrolled: 532
begin_hunk_0_@_ZN5boost9container4test11vector_testINS0_12small_vectorINS1_12copyable_intELm10ENS0_13new_allocatorIS4_EEvEEEEiv:bb.a
  %_ZN5boost9container4test12copyable_int5countE.promoted.i42 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.am, i8 0, i64 400, i1 false), !tbaa !249, !noalias !2272
  %i.ao = add i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i42, 100
  store i32 %i.ao, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2272
  store i64 100, ptr %i.ak, align 8, !tbaa !245, !noalias !2272
  store ptr %i.aj, ptr %1, align 8, !tbaa !252, !alias.scope !2272
  %i.ap = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #24
          to label %bb.g unwind label %.body50, !noalias !2273 ; 3 uses

.body50:                                          ; preds = %_ZN5boost7movelib11make_uniqueINS_9container12small_vectorINS2_4test12copyable_intELm10ENS2_13new_allocatorIS5_EEvEEJjS7_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7movelib10unique_ptrINS_9container12small_vectorINS2_4test12copyable_intELm10ENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %common.resume

bb.g:                                             ; preds = %_ZN5boost7movelib11make_uniqueINS_9container12small_vectorINS2_4test12copyable_intELm10ENS2_13new_allocatorIS5_EEvEEJjS7_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.ap, i8 0, i64 400, i1 false)
  %i.ar = load i64, ptr %i.ak, align 8, !tbaa !254
  %.not.i53 = icmp eq i64 %i.ar, 100
  br i1 %.not.i53, label %.lr.ph.i57.preheader, label %.loopexit259

.lr.ph.i57.preheader:                             ; preds = %bb.g
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !247, !noalias !2274
  br label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %.lr.ph.i57, %.lr.ph.i57.preheader
  %.sroa.019.026.i58.idx = phi i64 [ %.sroa.019.026.i58.add, %.lr.ph.i57 ], [ 0, %.lr.ph.i57.preheader ] ; 2 uses
  %.sroa.015.025.i59 = phi ptr [ %i.aw, %.lr.ph.i57 ], [ %i.ap, %.lr.ph.i57.preheader ] ; 2 uses
  %.sroa.019.026.i58.ptr = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.019.026.i58.idx
  %i.at = load i32, ptr %.sroa.015.025.i59, align 4, !tbaa !67
  %i.au = load i32, ptr %.sroa.019.026.i58.ptr, align 4, !tbaa !249
  %i.av = icmp eq i32 %i.au, %i.at                ; 2 uses
  %.sroa.019.026.i58.add = add nuw nsw i64 %.sroa.019.026.i58.idx, 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i59, i64 4
  %.not23.i60 = icmp ne i64 %.sroa.019.026.i58.add, 400
  %or.cond327.not = select i1 %i.av, i1 %.not23.i60, i1 false
  br i1 %or.cond327.not, label %.lr.ph.i57, label %.loopexit259, !llvm.loop !25

.loopexit259:                                     ; preds = %.lr.ph.i57, %bb.g
  %.2.i54 = phi i1 [ false, %bb.g ], [ %i.av, %.lr.ph.i57 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 400) #26
  %i.ax = load ptr, ptr %i.aj, align 8, !tbaa !247 ; 4 uses
  %i.ay = load i64, ptr %i.ak, align 8, !tbaa !254 ; 5 uses
  %.not3.i.i.i.i.i67 = icmp eq i64 %i.ay, 0
  br i1 %.not3.i.i.i.i.i67, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i72, label %.lr.ph.i.i.i.i.i68.preheader

.lr.ph.i.i.i.i.i68.preheader:                     ; preds = %.loopexit259
  %xtraiter342 = and i64 %i.ay, 3                 ; 2 uses
  %lcmp.mod343.not = icmp eq i64 %xtraiter342, 0
  br i1 %lcmp.mod343.not, label %.lr.ph.i.i.i.i.i68.prol.loopexit, label %.lr.ph.i.i.i.i.i68.prol

.lr.ph.i.i.i.i.i68.prol:                          ; preds = %.lr.ph.i.i.i.i.i68.preheader, %.lr.ph.i.i.i.i.i68.prol
  %.05.i.i.i.i.i69.prol = phi i64 [ %i.az, %.lr.ph.i.i.i.i.i68.prol ], [ %i.ay, %.lr.ph.i.i.i.i.i68.preheader ]
  %storemerge4.i.i.i.i.i70.prol = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i68.prol ], [ %i.ax, %.lr.ph.i.i.i.i.i68.preheader ] ; 2 uses
  %prol.iter344 = phi i64 [ %prol.iter344.next, %.lr.ph.i.i.i.i.i68.prol ], [ 0, %.lr.ph.i.i.i.i.i68.preheader ]
  %i.az = add i64 %.05.i.i.i.i.i69.prol, -1       ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i70.prol, align 4, !tbaa !249
  %i.ba = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bb = add i32 %i.ba, -1
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i70.prol, i64 4 ; 2 uses
  %prol.iter344.next = add i64 %prol.iter344, 1   ; 2 uses
  %prol.iter344.cmp.not = icmp eq i64 %prol.iter344.next, %xtraiter342
  br i1 %prol.iter344.cmp.not, label %.lr.ph.i.i.i.i.i68.prol.loopexit, label %.lr.ph.i.i.i.i.i68.prol, !llvm.loop !2236

.lr.ph.i.i.i.i.i68.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i68.prol, %.lr.ph.i.i.i.i.i68.preheader
  %.05.i.i.i.i.i69.unr = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i68.preheader ], [ %i.az, %.lr.ph.i.i.i.i.i68.prol ]
  %storemerge4.i.i.i.i.i70.unr = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i68.preheader ], [ %i.bc, %.lr.ph.i.i.i.i.i68.prol ]
  %i.bd = icmp ult i64 %i.ay, 4
  br i1 %i.bd, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i72, label %.lr.ph.i.i.i.i.i68

.lr.ph.i.i.i.i.i68:                               ; preds = %.lr.ph.i.i.i.i.i68.prol.loopexit, %.lr.ph.i.i.i.i.i68
  %.05.i.i.i.i.i69 = phi i64 [ %i.bl, %.lr.ph.i.i.i.i.i68 ], [ %.05.i.i.i.i.i69.unr, %.lr.ph.i.i.i.i.i68.prol.loopexit ]
  %storemerge4.i.i.i.i.i70 = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i68 ], [ %storemerge4.i.i.i.i.i70.unr, %.lr.ph.i.i.i.i.i68.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i70, align 4, !tbaa !249
  %i.be = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.bf = add i32 %i.be, -1
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i70, i64 4
  store i32 -2147483648, ptr %i.bg, align 4, !tbaa !249
  %i.bh = add i32 %i.be, -2
  store i32 %i.bh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bi = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i70, i64 8
  store i32 -2147483648, ptr %i.bi, align 4, !tbaa !249
  %i.bj = add i32 %i.be, -3
  store i32 %i.bj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bk = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i70, i64 12
  %i.bl = add i64 %.05.i.i.i.i.i69, -4            ; 2 uses
  store i32 -2147483648, ptr %i.bk, align 4, !tbaa !249
  %i.bm = add i32 %i.be, -4
  store i32 %i.bm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bn = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i70, i64 16
  %.not.i.i.i.i.i71.3 = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i.i.i.i71.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i72, label %.lr.ph.i.i.i.i.i68, !llvm.loop !26

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i72: ; preds = %.lr.ph.i.i.i.i.i68.prol.loopexit, %.lr.ph.i.i.i.i.i68, %.loopexit259
  %i.bo = load i64, ptr %i.al, align 8, !tbaa !246 ; 2 uses
  %.not.i1.i.i.i.i73 = icmp eq i64 %i.bo, 0
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.bq = icmp eq ptr %i.bp, %i.ax
  %or.cond.i.i.i.i74 = select i1 %.not.i1.i.i.i.i73, i1 true, i1 %i.bq
  br i1 %or.cond.i.i.i.i74, label %_ZN5boost7movelib10unique_ptrINS_9container12small_vectorINS2_4test12copyable_intELm10ENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit76, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i72
  %i.br = shl i64 %i.bo, 2
  tail call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.br) #22
  br label %_ZN5boost7movelib10unique_ptrINS_9container12small_vectorINS2_4test12copyable_intELm10ENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit76

_ZN5boost7movelib10unique_ptrINS_9container12small_vectorINS2_4test12copyable_intELm10ENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit76: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i72, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 64) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.2.i54, label %bb.i, label %bb.ao

bb.i:                                             ; preds = %_ZN5boost7movelib10unique_ptrINS_9container12small_vectorINS2_4test12copyable_intELm10ENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit76
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2275)
  %i.bs = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24, !noalias !2275 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i8 0, i64 24, i1 false), !noalias !2275
  %i.bt = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #24
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit82 unwind label %bb.j, !noalias !2275 ; 3 uses

bb.j:                                             ; preds = %bb.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef 24) #26, !noalias !2275
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit82: ; preds = %bb.i
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !89, !noalias !2275
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 400 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !90, !noalias !2275
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.bt, i8 0, i64 400, i1 false)
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !91, !noalias !2275
  store ptr %i.bs, ptr %2, align 8, !tbaa !94, !alias.scope !2275
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2276)
  %i.by = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24
          to label %.noexc92 unwind label %bb.q   ; 10 uses

.noexc92:                                         ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit82
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 6 uses
  store i64 0, ptr %i.bz, align 8, !tbaa !245, !noalias !2276
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 4 uses
  store i64 100, ptr %i.ca, align 8, !tbaa !246, !noalias !2276
  %i.cb = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #25
          to label %bb.l unwind label %bb.k, !noalias !2276 ; 2 uses

bb.k:                                             ; preds = %.noexc92
  %i.cc = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef 64) #26, !noalias !2276
  br label %.body93

bb.l:                                             ; preds = %.noexc92
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !247, !noalias !2276
  store i64 100, ptr %i.ca, align 8, !tbaa !84, !noalias !2276
  %_ZN5boost9container4test12copyable_int5countE.promoted.i90 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2276
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.cb, i8 0, i64 400, i1 false), !tbaa !249, !noalias !2276
  %i.cd = add i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i90, 100
  store i32 %i.cd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2276
  store i64 100, ptr %i.bz, align 8, !tbaa !245, !noalias !2276
  store ptr %i.by, ptr %3, align 8, !tbaa !252, !alias.scope !2276
  %i.ce = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24
          to label %.noexc99 unwind label %bb.r   ; 9 uses

.noexc99:                                         ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24 ; 9 uses
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !247, !noalias !2277
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  store i64 10, ptr %i.ch, align 8, !tbaa !246, !noalias !2277
  %i.ci = load ptr, ptr %i.by, align 8, !tbaa !247, !noalias !2277 ; 12 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cj, %i.ci
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.noexc99
  store ptr %i.ci, ptr %i.ce, align 8, !tbaa !247, !noalias !2277
  %i.ck = load i64, ptr %i.bz, align 8, !tbaa !245, !noalias !2277 ; 2 uses
  store i64 %i.ck, ptr %i.cg, align 8, !tbaa !245, !noalias !2277
  %i.cl = load i64, ptr %i.ca, align 8, !tbaa !246, !noalias !2277 ; 2 uses
  store i64 %i.cl, ptr %i.ch, align 8, !tbaa !246, !noalias !2277
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.by, i8 0, i64 24, i1 false), !noalias !2277
  br label %bb.o

bb.n:                                             ; preds = %.noexc99
  %i.cm = load i64, ptr %i.bz, align 8, !tbaa !254, !noalias !2277 ; 14 uses
  %.not17.i.i.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not17.i.i.i.i.i, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i.i.thread.i, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.n
  %_ZN5boost9container4test12copyable_int5countE.promoted.i96 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2277 ; 3 uses
  %min.iters.check = icmp ult i64 %i.cm, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i97.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.cn = shl i64 %i.cm, 2                        ; 2 uses
  %6 = getelementptr i8, ptr %i.ce, i64 %i.cn
  %i.co = getelementptr i8, ptr %6, i64 24        ; 2 uses
  %i.cp = getelementptr i8, ptr %i.ci, i64 %i.cn  ; 2 uses
  %bound0 = icmp ult ptr %i.cf, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %i.co, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound0269 = icmp ult ptr %i.cf, %i.cp
  %bound1270 = icmp ult ptr %i.ci, %i.co
  %found.conflict271 = and i1 %bound0269, %bound1270
  %conflict.rdx = or i1 %found.conflict, %found.conflict271
  %bound0272 = icmp ugt ptr %i.cp, @_ZN5boost9container4test12copyable_int5countE
  %bound1273 = icmp ult ptr %i.ci, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict274 = and i1 %bound0272, %bound1273
  %conflict.rdx275 = or i1 %conflict.rdx, %found.conflict274
  br i1 %conflict.rdx275, label %.lr.ph.i.i.i.i.i97.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cm, -8                      ; 3 uses
  %i.cq = and i64 %i.cm, 7
  %i.cr = shl i64 %n.vec, 2                       ; 2 uses
  %i.cs = getelementptr i8, ptr %i.ci, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cf, i64 %i.cr
  %i.cu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i96, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cu, %vector.ph ], [ %i.cy, %vector.body ]
  %vec.phi276 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cz, %vector.body ]
  %i.cv = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ci, i64 %i.cv ; 2 uses
  %next.gep277 = getelementptr i8, ptr %i.cf, i64 %i.cv ; 2 uses
  %i.cw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !249, !alias.scope !2278, !noalias !2277
  %wide.load278 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !249, !alias.scope !2278, !noalias !2277
  %i.cx = getelementptr i8, ptr %next.gep277, i64 16
  store <4 x i32> %wide.load, ptr %next.gep277, align 4, !tbaa !249, !alias.scope !2279, !noalias !2280
  store <4 x i32> %wide.load278, ptr %i.cx, align 4, !tbaa !249, !alias.scope !2279, !noalias !2280
  %i.cy = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.cz = add <4 x i32> %vec.phi276, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !2247

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cz, %i.cy
  %i.db = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.db, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !2281, !noalias !2282
  %cmp.n = icmp eq i64 %i.cm, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i97.preheader

.lr.ph.i.i.i.i.i97.preheader:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader.i, %middle.block
  %.ph337 = phi i32 [ %_ZN5boost9container4test12copyable_int5countE.promoted.i96, %vector.memcheck ], [ %_ZN5boost9container4test12copyable_int5countE.promoted.i96, %.lr.ph.i.i.i.i.preheader.i ], [ %i.db, %middle.block ] ; 2 uses
  %.020.i.i.i.i.i.ph = phi i64 [ %i.cm, %vector.memcheck ], [ %i.cm, %.lr.ph.i.i.i.i.preheader.i ], [ %i.cq, %middle.block ] ; 4 uses
  %.0919.i.i.i.i.i.ph = phi ptr [ %i.ci, %vector.memcheck ], [ %i.ci, %.lr.ph.i.i.i.i.preheader.i ], [ %i.cs, %middle.block ] ; 2 uses
  %.01618.i.i.i.i.i.ph = phi ptr [ %i.cf, %vector.memcheck ], [ %i.cf, %.lr.ph.i.i.i.i.preheader.i ], [ %i.ct, %middle.block ] ; 2 uses
  %i.dc = add i64 %.020.i.i.i.i.i.ph, -1
  %xtraiter345 = and i64 %.020.i.i.i.i.i.ph, 3    ; 2 uses
  %lcmp.mod346.not = icmp eq i64 %xtraiter345, 0
  br i1 %lcmp.mod346.not, label %.lr.ph.i.i.i.i.i97.prol.loopexit, label %.lr.ph.i.i.i.i.i97.prol

.lr.ph.i.i.i.i.i97.prol:                          ; preds = %.lr.ph.i.i.i.i.i97.preheader, %.lr.ph.i.i.i.i.i97.prol
  %i.dd = phi i32 [ %i.dg, %.lr.ph.i.i.i.i.i97.prol ], [ %.ph337, %.lr.ph.i.i.i.i.i97.preheader ]
  %.020.i.i.i.i.i.prol = phi i64 [ %i.de, %.lr.ph.i.i.i.i.i97.prol ], [ %.020.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i97.preheader ]
  %.0919.i.i.i.i.i.prol = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i97.prol ], [ %.0919.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i97.preheader ] ; 2 uses
  %.01618.i.i.i.i.i.prol = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i97.prol ], [ %.01618.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i97.preheader ] ; 2 uses
  %prol.iter347 = phi i64 [ %prol.iter347.next, %.lr.ph.i.i.i.i.i97.prol ], [ 0, %.lr.ph.i.i.i.i.i97.preheader ]
  %i.de = add i64 %.020.i.i.i.i.i.prol, -1        ; 2 uses
  %i.df = load i32, ptr %.0919.i.i.i.i.i.prol, align 4, !tbaa !249, !noalias !2277
  store i32 %i.df, ptr %.01618.i.i.i.i.i.prol, align 4, !tbaa !249, !noalias !2277
  %i.dg = add i32 %i.dd, 1                        ; 3 uses
  store i32 %i.dg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2277
  %i.dh = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter347.next = add i64 %prol.iter347, 1   ; 2 uses
  %prol.iter347.cmp.not = icmp eq i64 %prol.iter347.next, %xtraiter345
  br i1 %prol.iter347.cmp.not, label %.lr.ph.i.i.i.i.i97.prol.loopexit, label %.lr.ph.i.i.i.i.i97.prol, !llvm.loop !2248

.lr.ph.i.i.i.i.i97.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i97.prol, %.lr.ph.i.i.i.i.i97.preheader
  %.unr = phi i32 [ %.ph337, %.lr.ph.i.i.i.i.i97.preheader ], [ %i.dg, %.lr.ph.i.i.i.i.i97.prol ]
  %.020.i.i.i.i.i.unr = phi i64 [ %.020.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i97.preheader ], [ %i.de, %.lr.ph.i.i.i.i.i97.prol ]
  %.0919.i.i.i.i.i.unr = phi ptr [ %.0919.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i97.preheader ], [ %i.dh, %.lr.ph.i.i.i.i.i97.prol ]
  %.01618.i.i.i.i.i.unr = phi ptr [ %.01618.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i97.preheader ], [ %i.di, %.lr.ph.i.i.i.i.i97.prol ]
  %i.dj = icmp ult i64 %i.dc, 3
  br i1 %i.dj, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i97

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i.i.thread.i: ; preds = %bb.n
  store i64 0, ptr %i.cg, align 8, !tbaa !254, !noalias !2277
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i

.lr.ph.i.i.i.i.i97:                               ; preds = %.lr.ph.i.i.i.i.i97.prol.loopexit, %.lr.ph.i.i.i.i.i97
  %i.dk = phi i32 [ %i.dz, %.lr.ph.i.i.i.i.i97 ], [ %.unr, %.lr.ph.i.i.i.i.i97.prol.loopexit ] ; 4 uses
  %.020.i.i.i.i.i = phi i64 [ %i.dx, %.lr.ph.i.i.i.i.i97 ], [ %.020.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i97.prol.loopexit ]
  %.0919.i.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i97 ], [ %.0919.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i97.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i97 ], [ %.01618.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i97.prol.loopexit ] ; 5 uses
  %i.dl = load i32, ptr %.0919.i.i.i.i.i, align 4, !tbaa !249, !noalias !2277
  store i32 %i.dl, ptr %.01618.i.i.i.i.i, align 4, !tbaa !249, !noalias !2277
  %i.dm = add i32 %i.dk, 1
  store i32 %i.dm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2277
  %i.dn = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i, i64 4
  %i.do = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 4
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !249, !noalias !2277
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !249, !noalias !2277
  %i.dq = add i32 %i.dk, 2
  store i32 %i.dq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2277
  %i.dr = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 8
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !249, !noalias !2277
  store i32 %i.dt, ptr %i.ds, align 4, !tbaa !249, !noalias !2277
  %i.du = add i32 %i.dk, 3
  store i32 %i.du, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2277
  %i.dv = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i, i64 12
  %i.dw = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 12
  %i.dx = add i64 %.020.i.i.i.i.i, -4             ; 2 uses
  %i.dy = load i32, ptr %i.dv, align 4, !tbaa !249, !noalias !2277
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !249, !noalias !2277
  %i.dz = add i32 %i.dk, 4                        ; 2 uses
  store i32 %i.dz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2277
  %i.ea = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i98.3 = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i.i.i.i98.3, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i97, !llvm.loop !2249

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i97.prol.loopexit, %.lr.ph.i.i.i.i.i97, %middle.block
  store i64 %i.cm, ptr %i.cg, align 8, !tbaa !254, !noalias !2277
  %xtraiter348 = and i64 %i.cm, 3                 ; 2 uses
  %lcmp.mod349.not = icmp eq i64 %xtraiter348, 0
  br i1 %lcmp.mod349.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.prol = phi i64 [ %i.ec, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.cm, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i.i.i ]
  %storemerge4.i.i.i.i.i.i.i.prol = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.ci, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i.i.i ] ; 2 uses
  %prol.iter350 = phi i64 [ %prol.iter350.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i.i.i ]
  %i.ec = add i64 %.05.i.i.i.i.i.i.i.prol, -1     ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.i.i.prol, align 4, !tbaa !249, !noalias !2277
  %i.ed = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2277
  %i.ee = add i32 %i.ed, -1
  store i32 %i.ee, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2277
  %i.ef = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter350.next = add i64 %prol.iter350, 1   ; 2 uses
  %prol.iter350.cmp.not = icmp eq i64 %prol.iter350.next, %xtraiter348
  br i1 %prol.iter350.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !2250

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i.i.i
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %i.cm, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i.i.i ], [ %i.ec, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %storemerge4.i.i.i.i.i.i.i.unr = phi ptr [ %i.ci, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i.i.i ], [ %i.ef, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.eg = icmp ult i64 %i.cm, 4
  br i1 %i.eg, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.eo, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i.i.i = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.i.i, align 4, !tbaa !249, !noalias !2277
  %i.eh = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2277 ; 4 uses
  %i.ei = add i32 %i.eh, -1
  store i32 %i.ei, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2277
  %i.ej = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.ej, align 4, !tbaa !249, !noalias !2277
  %i.ek = add i32 %i.eh, -2
  store i32 %i.ek, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2277
  %i.el = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.el, align 4, !tbaa !249, !noalias !2277
  %i.em = add i32 %i.eh, -3
  store i32 %i.em, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2277
  %i.en = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i.i, i64 12
  %i.eo = add i64 %.05.i.i.i.i.i.i.i, -4          ; 2 uses
  store i32 -2147483648, ptr %i.en, align 4, !tbaa !249, !noalias !2277
  %i.ep = add i32 %i.eh, -4
  store i32 %i.ep, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2277
  %i.eq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.eo, 0
  br i1 %.not.i.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !26

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i.i.thread.i
  store i64 0, ptr %i.bz, align 8, !tbaa !254, !noalias !2277
  br label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i, %bb.m
  %i.er = phi i64 [ 10, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i ], [ %i.cl, %bb.m ] ; 2 uses
  %i.es = phi ptr [ %i.cf, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i ], [ %i.ci, %bb.m ] ; 2 uses
  %i.et = phi i64 [ %i.cm, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i ], [ %i.ck, %bb.m ] ; 8 uses
  %i.eu = load ptr, ptr %i.bx, align 8, !tbaa !91
  %i.ev = load ptr, ptr %i.bs, align 8, !tbaa !89 ; 2 uses
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = ashr exact i64 %i.ey, 2
  %.not.i100 = icmp eq i64 %i.et, %i.ez
  br i1 %.not.i100, label %bb.p, label %.loopexit224

bb.p:                                             ; preds = %bb.o
  %.idx.i102 = shl nsw i64 %i.et, 2
  %i.fa = getelementptr inbounds i8, ptr %i.es, i64 %.idx.i102
  %.not2324.i103 = icmp eq i64 %i.et, 0
  br i1 %.not2324.i103, label %.thread, label %.lr.ph.i104

.thread:                                          ; preds = %bb.p
  %i.fb = load ptr, ptr %i.ce, align 8, !tbaa !247
  br label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i115

.lr.ph.i104:                                      ; preds = %bb.p, %.lr.ph.i104
  %.sroa.019.026.i105 = phi ptr [ %i.ff, %.lr.ph.i104 ], [ %i.es, %bb.p ] ; 2 uses
  %.sroa.015.025.i106 = phi ptr [ %i.fg, %.lr.ph.i104 ], [ %i.ev, %bb.p ] ; 2 uses
  %i.fc = load i32, ptr %.sroa.015.025.i106, align 4, !tbaa !67
  %i.fd = load i32, ptr %.sroa.019.026.i105, align 4, !tbaa !249
  %i.fe = icmp eq i32 %i.fd, %i.fc                ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i105, i64 4 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i106, i64 4
  %.not23.i107 = icmp ne ptr %i.ff, %i.fa
  %or.cond330.not = select i1 %i.fe, i1 %.not23.i107, i1 false
  br i1 %or.cond330.not, label %.lr.ph.i104, label %.loopexit224, !llvm.loop !25
end_hunk_0
begin_hunk_1_@_ZN5boost9container4test11vector_testINS0_12small_vectorINS1_12copyable_intELm10ENS0_13new_allocatorIS4_EEvEEEEiv:bb.a
  %i.ft = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i113, i64 8
  store i32 -2147483648, ptr %i.ft, align 4, !tbaa !249
  %i.fu = add i32 %i.fp, -3
  store i32 %i.fu, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.fv = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i113, i64 12
  %i.fw = add i64 %.05.i.i.i.i.i112, -4           ; 2 uses
  store i32 -2147483648, ptr %i.fv, align 4, !tbaa !249
  %i.fx = add i32 %i.fp, -4
  store i32 %i.fx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.fy = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i113, i64 16
  %.not.i.i.i.i.i114.3 = icmp eq i64 %i.fw, 0
  br i1 %.not.i.i.i.i.i114.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i115, label %.lr.ph.i.i.i.i.i111, !llvm.loop !26

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i115: ; preds = %.lr.ph.i.i.i.i.i111.prol.loopexit, %.lr.ph.i.i.i.i.i111, %.thread, %.loopexit224
  %i.fz = phi ptr [ %i.fb, %.thread ], [ %i.fj, %.loopexit224 ], [ %i.fj, %.lr.ph.i.i.i.i.i111 ], [ %i.fj, %.lr.ph.i.i.i.i.i111.prol.loopexit ] ; 2 uses
  %.2.i101217 = phi i1 [ true, %.thread ], [ %.2.i101, %.loopexit224 ], [ %.2.i101, %.lr.ph.i.i.i.i.i111 ], [ %.2.i101, %.lr.ph.i.i.i.i.i111.prol.loopexit ]
  %.not.i1.i.i.i.i116 = icmp eq i64 %i.er, 0
  %i.ga = icmp eq ptr %i.cf, %i.fz
  %or.cond.i.i.i.i117 = select i1 %.not.i1.i.i.i.i116, i1 true, i1 %i.ga
  br i1 %or.cond.i.i.i.i117, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i115
  %i.gb = shl i64 %i.er, 2
  tail call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gb) #22
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i115
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 64) #26
  %i.gc = load ptr, ptr %i.by, align 8, !tbaa !247 ; 4 uses
  %i.gd = load i64, ptr %i.bz, align 8, !tbaa !254 ; 5 uses
  %.not3.i.i.i.i.i121 = icmp eq i64 %i.gd, 0
  br i1 %.not3.i.i.i.i.i121, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i126, label %.lr.ph.i.i.i.i.i122.preheader

.lr.ph.i.i.i.i.i122.preheader:                    ; preds = %bb.t
  %xtraiter354 = and i64 %i.gd, 3                 ; 2 uses
  %lcmp.mod355.not = icmp eq i64 %xtraiter354, 0
  br i1 %lcmp.mod355.not, label %.lr.ph.i.i.i.i.i122.prol.loopexit, label %.lr.ph.i.i.i.i.i122.prol

.lr.ph.i.i.i.i.i122.prol:                         ; preds = %.lr.ph.i.i.i.i.i122.preheader, %.lr.ph.i.i.i.i.i122.prol
  %.05.i.i.i.i.i123.prol = phi i64 [ %i.ge, %.lr.ph.i.i.i.i.i122.prol ], [ %i.gd, %.lr.ph.i.i.i.i.i122.preheader ]
  %storemerge4.i.i.i.i.i124.prol = phi ptr [ %i.gh, %.lr.ph.i.i.i.i.i122.prol ], [ %i.gc, %.lr.ph.i.i.i.i.i122.preheader ] ; 2 uses
  %prol.iter356 = phi i64 [ %prol.iter356.next, %.lr.ph.i.i.i.i.i122.prol ], [ 0, %.lr.ph.i.i.i.i.i122.preheader ]
  %i.ge = add i64 %.05.i.i.i.i.i123.prol, -1      ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i124.prol, align 4, !tbaa !249
  %i.gf = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.gg = add i32 %i.gf, -1
  store i32 %i.gg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.gh = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i124.prol, i64 4 ; 2 uses
  %prol.iter356.next = add i64 %prol.iter356, 1   ; 2 uses
  %prol.iter356.cmp.not = icmp eq i64 %prol.iter356.next, %xtraiter354
  br i1 %prol.iter356.cmp.not, label %.lr.ph.i.i.i.i.i122.prol.loopexit, label %.lr.ph.i.i.i.i.i122.prol, !llvm.loop !2252

.lr.ph.i.i.i.i.i122.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i122.prol, %.lr.ph.i.i.i.i.i122.preheader
  %.05.i.i.i.i.i123.unr = phi i64 [ %i.gd, %.lr.ph.i.i.i.i.i122.preheader ], [ %i.ge, %.lr.ph.i.i.i.i.i122.prol ]
  %storemerge4.i.i.i.i.i124.unr = phi ptr [ %i.gc, %.lr.ph.i.i.i.i.i122.preheader ], [ %i.gh, %.lr.ph.i.i.i.i.i122.prol ]
  %i.gi = icmp ult i64 %i.gd, 4
  br i1 %i.gi, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i126, label %.lr.ph.i.i.i.i.i122

.lr.ph.i.i.i.i.i122:                              ; preds = %.lr.ph.i.i.i.i.i122.prol.loopexit, %.lr.ph.i.i.i.i.i122
  %.05.i.i.i.i.i123 = phi i64 [ %i.gq, %.lr.ph.i.i.i.i.i122 ], [ %.05.i.i.i.i.i123.unr, %.lr.ph.i.i.i.i.i122.prol.loopexit ]
  %storemerge4.i.i.i.i.i124 = phi ptr [ %i.gs, %.lr.ph.i.i.i.i.i122 ], [ %storemerge4.i.i.i.i.i124.unr, %.lr.ph.i.i.i.i.i122.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i124, align 4, !tbaa !249
  %i.gj = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.gk = add i32 %i.gj, -1
  store i32 %i.gk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.gl = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i124, i64 4
  store i32 -2147483648, ptr %i.gl, align 4, !tbaa !249
  %i.gm = add i32 %i.gj, -2
  store i32 %i.gm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.gn = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i124, i64 8
  store i32 -2147483648, ptr %i.gn, align 4, !tbaa !249
  %i.go = add i32 %i.gj, -3
  store i32 %i.go, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.gp = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i124, i64 12
  %i.gq = add i64 %.05.i.i.i.i.i123, -4           ; 2 uses
  store i32 -2147483648, ptr %i.gp, align 4, !tbaa !249
  %i.gr = add i32 %i.gj, -4
  store i32 %i.gr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.gs = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i124, i64 16
  %.not.i.i.i.i.i125.3 = icmp eq i64 %i.gq, 0
  br i1 %.not.i.i.i.i.i125.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i126, label %.lr.ph.i.i.i.i.i122, !llvm.loop !26

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i126: ; preds = %.lr.ph.i.i.i.i.i122.prol.loopexit, %.lr.ph.i.i.i.i.i122, %bb.t
  %i.gt = load i64, ptr %i.ca, align 8, !tbaa !246 ; 2 uses
  %.not.i1.i.i.i.i127 = icmp eq i64 %i.gt, 0
  %i.gu = icmp eq ptr %i.cj, %i.gc
  %or.cond.i.i.i.i128 = select i1 %.not.i1.i.i.i.i127, i1 true, i1 %i.gu
  br i1 %or.cond.i.i.i.i128, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i126
  %i.gv = shl i64 %i.gt, 2
  tail call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gv) #22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i126
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef 64) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.gw = load ptr, ptr %i.bs, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i.i.i.i132 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i.i.i.i132, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit134, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gx = load ptr, ptr %i.bw, align 8, !tbaa !90
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = ptrtoint ptr %i.gw to i64
  %i.ha = sub i64 %i.gy, %i.gz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gw, i64 noundef %i.ha) #26
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit134

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit134: ; preds = %bb.v, %bb.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef 24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.2.i101217, label %bb.x, label %bb.ao

bb.x:                                             ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit134
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2283)
  %i.hb = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24, !noalias !2283 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hb, i8 0, i64 24, i1 false), !noalias !2283
  %i.hc = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #24
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit140 unwind label %bb.y, !noalias !2283 ; 3 uses

bb.y:                                             ; preds = %bb.x
  %i.hd = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hb, i64 noundef 24) #26, !noalias !2283
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit140: ; preds = %bb.x
  store ptr %i.hc, ptr %i.hb, align 8, !tbaa !89, !noalias !2283
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 400 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 2 uses
  store ptr %i.he, ptr %i.hf, align 8, !tbaa !90, !noalias !2283
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.hc, i8 0, i64 400, i1 false)
  store ptr %i.he, ptr %i.hg, align 8, !tbaa !91, !noalias !2283
  store ptr %i.hb, ptr %4, align 8, !tbaa !94, !alias.scope !2283
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2284)
  %i.hh = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24
          to label %.noexc150 unwind label %bb.af ; 10 uses

.noexc150:                                        ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit140
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 6 uses
  store i64 0, ptr %i.hi, align 8, !tbaa !245, !noalias !2284
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 4 uses
  store i64 100, ptr %i.hj, align 8, !tbaa !246, !noalias !2284
  %i.hk = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #25
          to label %bb.aa unwind label %bb.z, !noalias !2284 ; 2 uses

bb.z:                                             ; preds = %.noexc150
  %i.hl = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef 64) #26, !noalias !2284
  br label %.body151

bb.aa:                                            ; preds = %.noexc150
  store ptr %i.hk, ptr %i.hh, align 8, !tbaa !247, !noalias !2284
  store i64 100, ptr %i.hj, align 8, !tbaa !84, !noalias !2284
  %_ZN5boost9container4test12copyable_int5countE.promoted.i148 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2284
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.hk, i8 0, i64 400, i1 false), !tbaa !249, !noalias !2284
  %i.hm = add i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i148, 100
  store i32 %i.hm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2284
  store i64 100, ptr %i.hi, align 8, !tbaa !245, !noalias !2284
  store ptr %i.hh, ptr %5, align 8, !tbaa !252, !alias.scope !2284
  %i.hn = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24
          to label %.noexc170 unwind label %bb.ag ; 9 uses

.noexc170:                                        ; preds = %bb.aa
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 24 ; 9 uses
  store ptr %i.ho, ptr %i.hn, align 8, !tbaa !247, !noalias !2285
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 16 ; 2 uses
  store i64 10, ptr %i.hq, align 8, !tbaa !246, !noalias !2285
  %i.hr = load ptr, ptr %i.hh, align 8, !tbaa !247, !noalias !2285 ; 12 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hh, i64 24 ; 2 uses
  %.not.i.i.i.i154 = icmp eq ptr %i.hs, %i.hr
  br i1 %.not.i.i.i.i154, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.noexc170
  store ptr %i.hr, ptr %i.hn, align 8, !tbaa !247, !noalias !2285
  %i.ht = load i64, ptr %i.hi, align 8, !tbaa !245, !noalias !2285 ; 2 uses
  store i64 %i.ht, ptr %i.hp, align 8, !tbaa !245, !noalias !2285
  %i.hu = load i64, ptr %i.hj, align 8, !tbaa !246, !noalias !2285 ; 2 uses
  store i64 %i.hu, ptr %i.hq, align 8, !tbaa !246, !noalias !2285
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.hh, i8 0, i64 24, i1 false), !noalias !2285
  br label %bb.ad

bb.ac:                                            ; preds = %.noexc170
  %i.hv = load i64, ptr %i.hi, align 8, !tbaa !254, !noalias !2285 ; 14 uses
  %.not17.i.i.i.i.i155 = icmp eq i64 %i.hv, 0
  br i1 %.not17.i.i.i.i.i155, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i.i.thread.i169, label %.lr.ph.i.i.i.i.preheader.i156

.lr.ph.i.i.i.i.preheader.i156:                    ; preds = %bb.ac
  %_ZN5boost9container4test12copyable_int5countE.promoted.i157 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2285 ; 3 uses
  %min.iters.check295 = icmp ult i64 %i.hv, 24
  br i1 %min.iters.check295, label %.lr.ph.i.i.i.i.i158.preheader, label %vector.memcheck296

vector.memcheck296:                               ; preds = %.lr.ph.i.i.i.i.preheader.i156
  %i.hw = shl i64 %i.hv, 2                        ; 2 uses
  %7 = getelementptr i8, ptr %i.hn, i64 %i.hw
  %i.hx = getelementptr i8, ptr %7, i64 24        ; 2 uses
  %i.hy = getelementptr i8, ptr %i.hr, i64 %i.hw  ; 2 uses
  %bound0297 = icmp ult ptr %i.ho, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound1298 = icmp ugt ptr %i.hx, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict299 = and i1 %bound0297, %bound1298
  %bound0300 = icmp ult ptr %i.ho, %i.hy
  %bound1301 = icmp ult ptr %i.hr, %i.hx
  %found.conflict302 = and i1 %bound0300, %bound1301
  %conflict.rdx303 = or i1 %found.conflict299, %found.conflict302
  %bound0304 = icmp ugt ptr %i.hy, @_ZN5boost9container4test12copyable_int5countE
  %bound1305 = icmp ult ptr %i.hr, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict306 = and i1 %bound0304, %bound1305
  %conflict.rdx307 = or i1 %conflict.rdx303, %found.conflict306
  br i1 %conflict.rdx307, label %.lr.ph.i.i.i.i.i158.preheader, label %vector.ph308

vector.ph308:                                     ; preds = %vector.memcheck296
  %n.vec309 = and i64 %i.hv, -8                   ; 3 uses
  %i.hz = and i64 %i.hv, 7
  %i.ia = shl i64 %n.vec309, 2                    ; 2 uses
  %i.ib = getelementptr i8, ptr %i.hr, i64 %i.ia
  %i.ic = getelementptr i8, ptr %i.ho, i64 %i.ia
  %i.id = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i157, i64 0
  br label %vector.body310

vector.body310:                                   ; preds = %vector.body310, %vector.ph308
  %index311 = phi i64 [ 0, %vector.ph308 ], [ %index.next318, %vector.body310 ] ; 2 uses
  %vec.phi312 = phi <4 x i32> [ %i.id, %vector.ph308 ], [ %i.ih, %vector.body310 ]
  %vec.phi313 = phi <4 x i32> [ zeroinitializer, %vector.ph308 ], [ %i.ii, %vector.body310 ]
  %i.ie = shl i64 %index311, 2                    ; 2 uses
  %next.gep314 = getelementptr i8, ptr %i.hr, i64 %i.ie ; 2 uses
  %next.gep315 = getelementptr i8, ptr %i.ho, i64 %i.ie ; 2 uses
  %i.if = getelementptr i8, ptr %next.gep314, i64 16
  %wide.load316 = load <4 x i32>, ptr %next.gep314, align 4, !tbaa !249, !alias.scope !2286, !noalias !2285
  %wide.load317 = load <4 x i32>, ptr %i.if, align 4, !tbaa !249, !alias.scope !2286, !noalias !2285
  %i.ig = getelementptr i8, ptr %next.gep315, i64 16
  store <4 x i32> %wide.load316, ptr %next.gep315, align 4, !tbaa !249, !alias.scope !2287, !noalias !2288
  store <4 x i32> %wide.load317, ptr %i.ig, align 4, !tbaa !249, !alias.scope !2287, !noalias !2288
  %i.ih = add <4 x i32> %vec.phi312, splat (i32 1) ; 2 uses
  %i.ii = add <4 x i32> %vec.phi313, splat (i32 1) ; 2 uses
  %index.next318 = add nuw i64 %index311, 8       ; 2 uses
  %i.ij = icmp eq i64 %index.next318, %n.vec309
  br i1 %i.ij, label %middle.block319, label %vector.body310, !llvm.loop !2263

middle.block319:                                  ; preds = %vector.body310
  %bin.rdx320 = add <4 x i32> %i.ii, %i.ih
  %i.ik = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx320) ; 2 uses
  store i32 %i.ik, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !2289, !noalias !2290
  %cmp.n321 = icmp eq i64 %i.hv, %n.vec309
  br i1 %cmp.n321, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i.i.i163, label %.lr.ph.i.i.i.i.i158.preheader

.lr.ph.i.i.i.i.i158.preheader:                    ; preds = %vector.memcheck296, %.lr.ph.i.i.i.i.preheader.i156, %middle.block319
  %.ph = phi i32 [ %_ZN5boost9container4test12copyable_int5countE.promoted.i157, %vector.memcheck296 ], [ %_ZN5boost9container4test12copyable_int5countE.promoted.i157, %.lr.ph.i.i.i.i.preheader.i156 ], [ %i.ik, %middle.block319 ] ; 2 uses
  %.020.i.i.i.i.i159.ph = phi i64 [ %i.hv, %vector.memcheck296 ], [ %i.hv, %.lr.ph.i.i.i.i.preheader.i156 ], [ %i.hz, %middle.block319 ] ; 4 uses
  %.0919.i.i.i.i.i160.ph = phi ptr [ %i.hr, %vector.memcheck296 ], [ %i.hr, %.lr.ph.i.i.i.i.preheader.i156 ], [ %i.ib, %middle.block319 ] ; 2 uses
  %.01618.i.i.i.i.i161.ph = phi ptr [ %i.ho, %vector.memcheck296 ], [ %i.ho, %.lr.ph.i.i.i.i.preheader.i156 ], [ %i.ic, %middle.block319 ] ; 2 uses
  %i.il = add i64 %.020.i.i.i.i.i159.ph, -1
  %xtraiter357 = and i64 %.020.i.i.i.i.i159.ph, 3 ; 2 uses
  %lcmp.mod358.not = icmp eq i64 %xtraiter357, 0
  br i1 %lcmp.mod358.not, label %.lr.ph.i.i.i.i.i158.prol.loopexit, label %.lr.ph.i.i.i.i.i158.prol

.lr.ph.i.i.i.i.i158.prol:                         ; preds = %.lr.ph.i.i.i.i.i158.preheader, %.lr.ph.i.i.i.i.i158.prol
  %i.im = phi i32 [ %i.ip, %.lr.ph.i.i.i.i.i158.prol ], [ %.ph, %.lr.ph.i.i.i.i.i158.preheader ]
  %.020.i.i.i.i.i159.prol = phi i64 [ %i.in, %.lr.ph.i.i.i.i.i158.prol ], [ %.020.i.i.i.i.i159.ph, %.lr.ph.i.i.i.i.i158.preheader ]
  %.0919.i.i.i.i.i160.prol = phi ptr [ %i.iq, %.lr.ph.i.i.i.i.i158.prol ], [ %.0919.i.i.i.i.i160.ph, %.lr.ph.i.i.i.i.i158.preheader ] ; 2 uses
  %.01618.i.i.i.i.i161.prol = phi ptr [ %i.ir, %.lr.ph.i.i.i.i.i158.prol ], [ %.01618.i.i.i.i.i161.ph, %.lr.ph.i.i.i.i.i158.preheader ] ; 2 uses
  %prol.iter359 = phi i64 [ %prol.iter359.next, %.lr.ph.i.i.i.i.i158.prol ], [ 0, %.lr.ph.i.i.i.i.i158.preheader ]
  %i.in = add i64 %.020.i.i.i.i.i159.prol, -1     ; 2 uses
  %i.io = load i32, ptr %.0919.i.i.i.i.i160.prol, align 4, !tbaa !249, !noalias !2285
  store i32 %i.io, ptr %.01618.i.i.i.i.i161.prol, align 4, !tbaa !249, !noalias !2285
  %i.ip = add i32 %i.im, 1                        ; 3 uses
  store i32 %i.ip, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2285
  %i.iq = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i160.prol, i64 4 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i161.prol, i64 4 ; 2 uses
  %prol.iter359.next = add i64 %prol.iter359, 1   ; 2 uses
  %prol.iter359.cmp.not = icmp eq i64 %prol.iter359.next, %xtraiter357
  br i1 %prol.iter359.cmp.not, label %.lr.ph.i.i.i.i.i158.prol.loopexit, label %.lr.ph.i.i.i.i.i158.prol, !llvm.loop !2264

.lr.ph.i.i.i.i.i158.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i158.prol, %.lr.ph.i.i.i.i.i158.preheader
  %.unr360 = phi i32 [ %.ph, %.lr.ph.i.i.i.i.i158.preheader ], [ %i.ip, %.lr.ph.i.i.i.i.i158.prol ]
  %.020.i.i.i.i.i159.unr = phi i64 [ %.020.i.i.i.i.i159.ph, %.lr.ph.i.i.i.i.i158.preheader ], [ %i.in, %.lr.ph.i.i.i.i.i158.prol ]
  %.0919.i.i.i.i.i160.unr = phi ptr [ %.0919.i.i.i.i.i160.ph, %.lr.ph.i.i.i.i.i158.preheader ], [ %i.iq, %.lr.ph.i.i.i.i.i158.prol ]
  %.01618.i.i.i.i.i161.unr = phi ptr [ %.01618.i.i.i.i.i161.ph, %.lr.ph.i.i.i.i.i158.preheader ], [ %i.ir, %.lr.ph.i.i.i.i.i158.prol ]
  %i.is = icmp ult i64 %i.il, 3
  br i1 %i.is, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i.i.i163, label %.lr.ph.i.i.i.i.i158

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i.i.thread.i169: ; preds = %bb.ac
  store i64 0, ptr %i.hp, align 8, !tbaa !254, !noalias !2285
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i168

.lr.ph.i.i.i.i.i158:                              ; preds = %.lr.ph.i.i.i.i.i158.prol.loopexit, %.lr.ph.i.i.i.i.i158
  %i.it = phi i32 [ %i.ji, %.lr.ph.i.i.i.i.i158 ], [ %.unr360, %.lr.ph.i.i.i.i.i158.prol.loopexit ] ; 4 uses
  %.020.i.i.i.i.i159 = phi i64 [ %i.jg, %.lr.ph.i.i.i.i.i158 ], [ %.020.i.i.i.i.i159.unr, %.lr.ph.i.i.i.i.i158.prol.loopexit ]
  %.0919.i.i.i.i.i160 = phi ptr [ %i.jj, %.lr.ph.i.i.i.i.i158 ], [ %.0919.i.i.i.i.i160.unr, %.lr.ph.i.i.i.i.i158.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i.i161 = phi ptr [ %i.jk, %.lr.ph.i.i.i.i.i158 ], [ %.01618.i.i.i.i.i161.unr, %.lr.ph.i.i.i.i.i158.prol.loopexit ] ; 5 uses
  %i.iu = load i32, ptr %.0919.i.i.i.i.i160, align 4, !tbaa !249, !noalias !2285
  store i32 %i.iu, ptr %.01618.i.i.i.i.i161, align 4, !tbaa !249, !noalias !2285
  %i.iv = add i32 %i.it, 1
  store i32 %i.iv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2285
  %i.iw = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i160, i64 4
  %i.ix = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i161, i64 4
  %i.iy = load i32, ptr %i.iw, align 4, !tbaa !249, !noalias !2285
  store i32 %i.iy, ptr %i.ix, align 4, !tbaa !249, !noalias !2285
  %i.iz = add i32 %i.it, 2
  store i32 %i.iz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2285
  %i.ja = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i160, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i161, i64 8
  %i.jc = load i32, ptr %i.ja, align 4, !tbaa !249, !noalias !2285
  store i32 %i.jc, ptr %i.jb, align 4, !tbaa !249, !noalias !2285
  %i.jd = add i32 %i.it, 3
  store i32 %i.jd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2285
  %i.je = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i160, i64 12
  %i.jf = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i161, i64 12
  %i.jg = add i64 %.020.i.i.i.i.i159, -4          ; 2 uses
  %i.jh = load i32, ptr %i.je, align 4, !tbaa !249, !noalias !2285
  store i32 %i.jh, ptr %i.jf, align 4, !tbaa !249, !noalias !2285
  %i.ji = add i32 %i.it, 4                        ; 2 uses
  store i32 %i.ji, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2285
  %i.jj = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i160, i64 16
  %i.jk = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i161, i64 16
  %.not.i.i.i.i.i162.3 = icmp eq i64 %i.jg, 0
  br i1 %.not.i.i.i.i.i162.3, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i.i.i163, label %.lr.ph.i.i.i.i.i158, !llvm.loop !2265

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i.i.i163: ; preds = %.lr.ph.i.i.i.i.i158.prol.loopexit, %.lr.ph.i.i.i.i.i158, %middle.block319
  store i64 %i.hv, ptr %i.hp, align 8, !tbaa !254, !noalias !2285
  %xtraiter361 = and i64 %i.hv, 3                 ; 2 uses
  %lcmp.mod362.not = icmp eq i64 %xtraiter361, 0
  br i1 %lcmp.mod362.not, label %.lr.ph.i.i.i.i.i.i.i164.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i164.prol

.lr.ph.i.i.i.i.i.i.i164.prol:                     ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i.i.i163, %.lr.ph.i.i.i.i.i.i.i164.prol
  %.05.i.i.i.i.i.i.i165.prol = phi i64 [ %i.jl, %.lr.ph.i.i.i.i.i.i.i164.prol ], [ %i.hv, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i.i.i163 ]
  %storemerge4.i.i.i.i.i.i.i166.prol = phi ptr [ %i.jo, %.lr.ph.i.i.i.i.i.i.i164.prol ], [ %i.hr, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i.i.i163 ] ; 2 uses
  %prol.iter363 = phi i64 [ %prol.iter363.next, %.lr.ph.i.i.i.i.i.i.i164.prol ], [ 0, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i.i.i163 ]
  %i.jl = add i64 %.05.i.i.i.i.i.i.i165.prol, -1  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.i.i166.prol, align 4, !tbaa !249, !noalias !2285
  %i.jm = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2285
  %i.jn = add i32 %i.jm, -1
  store i32 %i.jn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2285
  %i.jo = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i.i166.prol, i64 4 ; 2 uses
  %prol.iter363.next = add i64 %prol.iter363, 1   ; 2 uses
  %prol.iter363.cmp.not = icmp eq i64 %prol.iter363.next, %xtraiter361
  br i1 %prol.iter363.cmp.not, label %.lr.ph.i.i.i.i.i.i.i164.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i164.prol, !llvm.loop !2266

.lr.ph.i.i.i.i.i.i.i164.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i164.prol, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i.i.i163
  %.05.i.i.i.i.i.i.i165.unr = phi i64 [ %i.hv, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i.i.i163 ], [ %i.jl, %.lr.ph.i.i.i.i.i.i.i164.prol ]
  %storemerge4.i.i.i.i.i.i.i166.unr = phi ptr [ %i.hr, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i.i.i163 ], [ %i.jo, %.lr.ph.i.i.i.i.i.i.i164.prol ]
  %i.jp = icmp ult i64 %i.hv, 4
  br i1 %i.jp, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i168, label %.lr.ph.i.i.i.i.i.i.i164

.lr.ph.i.i.i.i.i.i.i164:                          ; preds = %.lr.ph.i.i.i.i.i.i.i164.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i164
  %.05.i.i.i.i.i.i.i165 = phi i64 [ %i.jx, %.lr.ph.i.i.i.i.i.i.i164 ], [ %.05.i.i.i.i.i.i.i165.unr, %.lr.ph.i.i.i.i.i.i.i164.prol.loopexit ]
  %storemerge4.i.i.i.i.i.i.i166 = phi ptr [ %i.jz, %.lr.ph.i.i.i.i.i.i.i164 ], [ %storemerge4.i.i.i.i.i.i.i166.unr, %.lr.ph.i.i.i.i.i.i.i164.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.i.i166, align 4, !tbaa !249, !noalias !2285
  %i.jq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2285 ; 4 uses
  %i.jr = add i32 %i.jq, -1
  store i32 %i.jr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2285
  %i.js = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i.i166, i64 4
  store i32 -2147483648, ptr %i.js, align 4, !tbaa !249, !noalias !2285
  %i.jt = add i32 %i.jq, -2
  store i32 %i.jt, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2285
  %i.ju = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i.i166, i64 8
  store i32 -2147483648, ptr %i.ju, align 4, !tbaa !249, !noalias !2285
  %i.jv = add i32 %i.jq, -3
  store i32 %i.jv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2285
  %i.jw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i.i166, i64 12
  %i.jx = add i64 %.05.i.i.i.i.i.i.i165, -4       ; 2 uses
  store i32 -2147483648, ptr %i.jw, align 4, !tbaa !249, !noalias !2285
  %i.jy = add i32 %i.jq, -4
  store i32 %i.jy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !2285
  %i.jz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i.i166, i64 16
  %.not.i.i.i.i.i.i.i167.3 = icmp eq i64 %i.jx, 0
  br i1 %.not.i.i.i.i.i.i.i167.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i168, label %.lr.ph.i.i.i.i.i.i.i164, !llvm.loop !26

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i168: ; preds = %.lr.ph.i.i.i.i.i.i.i164.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i164, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit.i.i.i.thread.i169
  store i64 0, ptr %i.hi, align 8, !tbaa !254, !noalias !2285
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i168, %bb.ab
  %i.ka = phi i64 [ 10, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i168 ], [ %i.hu, %bb.ab ] ; 2 uses
  %i.kb = phi ptr [ %i.ho, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i168 ], [ %i.hr, %bb.ab ] ; 2 uses
  %i.kc = phi i64 [ %i.hv, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i.i.i.i168 ], [ %i.ht, %bb.ab ] ; 8 uses
  %i.kd = load ptr, ptr %i.hg, align 8, !tbaa !91
  %i.ke = load ptr, ptr %i.hb, align 8, !tbaa !89 ; 2 uses
  %i.kf = ptrtoint ptr %i.kd to i64
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = sub i64 %i.kf, %i.kg
  %i.ki = ashr exact i64 %i.kh, 2
  %.not.i171 = icmp eq i64 %i.kc, %i.ki
  br i1 %.not.i171, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %.idx.i173 = shl nsw i64 %i.kc, 2
  %i.kj = getelementptr inbounds i8, ptr %i.kb, i64 %.idx.i173
  %.not2324.i174 = icmp eq i64 %i.kc, 0
  br i1 %.not2324.i174, label %.thread219, label %.lr.ph.i175

.thread219:                                       ; preds = %bb.ae
  %i.kk = load ptr, ptr %i.hn, align 8, !tbaa !247
  br label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i186

.lr.ph.i175:                                      ; preds = %bb.ae, %.lr.ph.i175
  %.sroa.019.026.i176 = phi ptr [ %i.ko, %.lr.ph.i175 ], [ %i.kb, %bb.ae ] ; 2 uses
  %.sroa.015.025.i177 = phi ptr [ %i.kp, %.lr.ph.i175 ], [ %i.ke, %bb.ae ] ; 2 uses
  %i.kl = load i32, ptr %.sroa.015.025.i177, align 4, !tbaa !67
  %i.km = load i32, ptr %.sroa.019.026.i176, align 4, !tbaa !249
  %i.kn = icmp eq i32 %i.km, %i.kl                ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i176, i64 4 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i177, i64 4
  %.not23.i178 = icmp ne ptr %i.ko, %i.kj
  %or.cond333.not = select i1 %i.kn, i1 %.not23.i178, i1 false
  br i1 %or.cond333.not, label %.lr.ph.i175, label %.loopexit, !llvm.loop !25
end_hunk_1
begin_hunk_2_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE24prot_shrink_to_fit_smallEPS3_m:bb.a
  store i32 %i.ch, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ci = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 4
  store i32 -2147483648, ptr %i.ci, align 4, !tbaa !237
  %i.cj = add i32 %i.cg, -2
  store i32 %i.cj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ck = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 8
  store i32 -2147483648, ptr %i.ck, align 4, !tbaa !237
  %i.cl = add i32 %i.cg, -3
  store i32 %i.cl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.cm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 12
  %i.cn = add i64 %.05.i.i.i, -4                  ; 2 uses
  store i32 -2147483648, ptr %i.cm, align 4, !tbaa !237
  %i.co = add i32 %i.cg, -4
  store i32 %i.co, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.cp = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !24

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.old.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.old6.i = icmp eq ptr %.old.i, %i.aw
  br i1 %.old6.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.i
  %i.cq = load i64, ptr %i.a, align 8, !tbaa !234
  %i.cr = shl i64 %i.cq, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.cr) #22
  %.pre.i.i = load i64, ptr %i.d, align 8, !tbaa !233
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.thread.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i, %bb.k
  %i.cs = phi i64 [ 0, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.i ], [ %.pre.i.i, %bb.k ], [ %i.ax, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i ], [ %i.ax, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.thread.i ]
  store ptr %i.av, ptr %0, align 8, !tbaa !235
  store i64 %i.cs, ptr %i.d, align 8, !tbaa !233
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit29, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %.sink = phi i64 [ %2, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ], [ %i.e, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit ], [ %2, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit29 ]
  store i64 %.sink, ptr %i.a, align 8, !tbaa !84
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.h, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE12emplace_backIJS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator.103", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !242  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !234
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !235, !nonnull !76, !noundef !76
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b ; 2 uses
  %i.g = load i32, ptr %1, align 4, !tbaa !237
  store i32 %i.g, ptr %i.f, align 4, !tbaa !237
  store i32 0, ptr %1, align 4, !tbaa !237
  %i.h = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8, !tbaa !242
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.k = load ptr, ptr %0, align 8, !tbaa !235
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.b
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.103") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.l, i64 noundef 1, ptr nonnull %1)
  %i.m = load ptr, ptr %2, align 8, !tbaa !281
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ %i.m, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignINS0_12vec_iteratorIPS3_Lb0EEEEEvT_SD_PNS_11move_detail13disable_if_orIvNSE_7is_sameINSE_17integral_constantIjLj1EEENSH_IjLj0EEEEENSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !279    ; 9 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !279    ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ashr exact i64 %i.e, 2                   ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !234  ; 2 uses
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.j, label %bb.c, label %bb.d, !prof !74

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #25 ; 10 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !235    ; 5 uses
  %.not12 = icmp eq ptr %i.l, null
  br i1 %.not12, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !242  ; 5 uses
  %.not3.i.i = icmp eq i64 %i.n, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %xtraiter134 = and i64 %i.n, 3                  ; 2 uses
  %lcmp.mod135.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod135.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.o, %.lr.ph.i.i.prol ], [ %i.n, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.prol ], [ %i.l, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter136 = phi i64 [ %prol.iter136.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.o = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !237
  %i.p = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter136.next = add i64 %prol.iter136, 1   ; 2 uses
  %prol.iter136.cmp.not = icmp eq i64 %prol.iter136.next, %xtraiter134
  br i1 %prol.iter136.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3814

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.o, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.l, %.lr.ph.i.i.preheader ], [ %i.r, %.lr.ph.i.i.prol ]
  %i.s = icmp ult i64 %i.n, 4
  br i1 %i.s, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.aa, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !237
  %i.t = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.u = add i32 %i.t, -1
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.v, align 4, !tbaa !237
  %i.w = add i32 %i.t, -2
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.x, align 4, !tbaa !237
  %i.y = add i32 %i.t, -3
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.z = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.aa = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.z, align 4, !tbaa !237
  %i.ab = add i32 %i.t, -4
  store i32 %i.ab, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ac = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i, !llvm.loop !24

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  store i64 0, ptr %i.m, align 8, !tbaa !242
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = icmp eq ptr %i.ad, %i.l
  br i1 %i.ae, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit
  %i.af = shl nuw i64 %i.h, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.af) #22
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit: ; preds = %bb.f, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.k, ptr %0, align 8, !tbaa !235
  store i64 %i.f, ptr %i.g, align 8, !tbaa !84
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %1, align 8, !tbaa !279   ; 9 uses
  %i.ai = load ptr, ptr %2, align 8, !tbaa !279   ; 3 uses
  %.not10.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not10.i.i, label %.loopexit, label %.lr.ph.i.i13.preheader

.lr.ph.i.i13.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = ptrtoaddr ptr %i.ah to i64
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.al = add i64 %i.aj, -4
  %i.am = sub i64 %i.al, %i.ak                    ; 3 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check89 = icmp ult i64 %i.am, 124
  br i1 %min.iters.check89, label %.lr.ph.i.i13.preheader113, label %vector.memcheck90

vector.memcheck90:                                ; preds = %.lr.ph.i.i13.preheader
  %i.ap = and i64 %i.am, -4
  %i.aq = add i64 %i.ap, 4                        ; 2 uses
  %4 = getelementptr i8, ptr %i.k, i64 %i.aq      ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ah, i64 %i.aq  ; 2 uses
  %bound0 = icmp ult ptr %i.k, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %4, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound091 = icmp ult ptr %i.k, %i.ar
  %bound192 = icmp ult ptr %i.ah, %4
  %found.conflict93 = and i1 %bound091, %bound192
  %conflict.rdx = or i1 %found.conflict, %found.conflict93
  %bound094 = icmp ugt ptr %i.ar, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound195 = icmp ult ptr %i.ah, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict96 = and i1 %bound094, %bound195
  %conflict.rdx97 = or i1 %conflict.rdx, %found.conflict96
  br i1 %conflict.rdx97, label %.lr.ph.i.i13.preheader113, label %vector.ph98

vector.ph98:                                      ; preds = %vector.memcheck90
  %n.vec99 = and i64 %i.ao, 9223372036854775800   ; 3 uses
  %i.as = shl i64 %n.vec99, 2                     ; 2 uses
  %i.at = getelementptr i8, ptr %i.ah, i64 %i.as
  %i.au = getelementptr i8, ptr %i.k, i64 %i.as   ; 2 uses
  %i.av = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body100

vector.body100:                                   ; preds = %vector.body100, %vector.ph98
  %index101 = phi i64 [ 0, %vector.ph98 ], [ %index.next107, %vector.body100 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.av, %vector.ph98 ], [ %i.az, %vector.body100 ]
  %vec.phi102 = phi <4 x i32> [ zeroinitializer, %vector.ph98 ], [ %i.ba, %vector.body100 ]
  %i.aw = shl i64 %index101, 2                    ; 2 uses
  %next.gep103 = getelementptr i8, ptr %i.ah, i64 %i.aw ; 2 uses
  %next.gep104 = getelementptr i8, ptr %i.k, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep103, i64 16
  %wide.load105 = load <4 x i32>, ptr %next.gep103, align 4, !tbaa !237, !alias.scope !3832
  %wide.load106 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !237, !alias.scope !3832
  %i.ay = getelementptr i8, ptr %next.gep104, i64 16
  store <4 x i32> %wide.load105, ptr %next.gep104, align 4, !tbaa !237, !alias.scope !3833, !noalias !3834
  store <4 x i32> %wide.load106, ptr %i.ay, align 4, !tbaa !237, !alias.scope !3833, !noalias !3834
  %i.az = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.ba = add <4 x i32> %vec.phi102, splat (i32 1) ; 2 uses
  %index.next107 = add nuw i64 %index101, 8       ; 2 uses
  %i.bb = icmp eq i64 %index.next107, %n.vec99
  br i1 %i.bb, label %middle.block108, label %vector.body100, !llvm.loop !3819

middle.block108:                                  ; preds = %vector.body100
  %bin.rdx = add <4 x i32> %i.ba, %i.az
  %i.bc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !alias.scope !3835, !noalias !3832
  %cmp.n109 = icmp eq i64 %i.ao, %n.vec99
  br i1 %cmp.n109, label %.loopexit, label %.lr.ph.i.i13.preheader113

.lr.ph.i.i13.preheader113:                        ; preds = %vector.memcheck90, %.lr.ph.i.i13.preheader, %middle.block108
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %vector.memcheck90 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i13.preheader ], [ %i.bc, %middle.block108 ]
  %.ph114 = phi ptr [ %i.ah, %vector.memcheck90 ], [ %i.ah, %.lr.ph.i.i13.preheader ], [ %i.at, %middle.block108 ]
  %.011.i.i.ph = phi ptr [ %i.k, %vector.memcheck90 ], [ %i.k, %.lr.ph.i.i13.preheader ], [ %i.au, %middle.block108 ]
  br label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %.lr.ph.i.i13.preheader113, %.lr.ph.i.i13
  %i.bd = phi i32 [ %i.bg, %.lr.ph.i.i13 ], [ %.ph, %.lr.ph.i.i13.preheader113 ]
  %i.be = phi ptr [ %i.bh, %.lr.ph.i.i13 ], [ %.ph114, %.lr.ph.i.i13.preheader113 ] ; 2 uses
  %.011.i.i = phi ptr [ %i.bi, %.lr.ph.i.i13 ], [ %.011.i.i.ph, %.lr.ph.i.i13.preheader113 ] ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !237
  store i32 %i.bf, ptr %.011.i.i, align 4, !tbaa !237
  %i.bg = add i32 %i.bd, 1                        ; 2 uses
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 4 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.bh, %i.ai
  br i1 %.not.i.i14, label %.loopexit, label %.lr.ph.i.i13, !llvm.loop !3820

.loopexit:                                        ; preds = %.lr.ph.i.i13, %middle.block108, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %.0.lcssa.i.i = phi ptr [ %i.k, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ], [ %i.au, %middle.block108 ], [ %i.bi, %.lr.ph.i.i13 ]
  %i.bj = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.bk = ptrtoint ptr %i.k to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 2
  store i64 %i.bm, ptr %i.ag, align 8, !tbaa !233
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.bn = load ptr, ptr %0, align 8, !tbaa !235   ; 9 uses
  %i.bo = ptrtoaddr ptr %i.bn to i64              ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !242 ; 11 uses
  %i.br = icmp ult i64 %i.bq, %i.f
  br i1 %i.br, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not3.i.i18 = icmp eq i64 %i.bq, 0
  br i1 %.not3.i.i18, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19.preheader

.lr.ph.i.i19.preheader:                           ; preds = %bb.h
  %min.iters.check62 = icmp ult i64 %i.bq, 8
  %i.bs = sub i64 %i.d, %i.bo
  %diff.check64 = icmp ugt i64 %i.bs, -32
  %or.cond = select i1 %min.iters.check62, i1 true, i1 %diff.check64
  br i1 %or.cond, label %.lr.ph.i.i19.preheader117, label %vector.ph65

vector.ph65:                                      ; preds = %.lr.ph.i.i19.preheader
  %n.vec66 = and i64 %i.bq, -8                    ; 3 uses
  %i.bt = shl i64 %n.vec66, 2                     ; 2 uses
  %i.bu = getelementptr i8, ptr %i.a, i64 %i.bt   ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bn, i64 %i.bt  ; 2 uses
  %i.bw = and i64 %i.bq, 7
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph65
  %index68 = phi i64 [ 0, %vector.ph65 ], [ %index.next73, %vector.body67 ] ; 2 uses
  %i.bx = shl i64 %index68, 2                     ; 2 uses
  %next.gep69 = getelementptr i8, ptr %i.a, i64 %i.bx ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.bn, i64 %i.bx ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep69, i64 16
  %wide.load71 = load <4 x i32>, ptr %next.gep69, align 4, !tbaa !237, !noalias !3836
  %wide.load72 = load <4 x i32>, ptr %i.by, align 4, !tbaa !237, !noalias !3836
  %i.bz = getelementptr i8, ptr %next.gep70, i64 16
  store <4 x i32> %wide.load71, ptr %next.gep70, align 4, !tbaa !237, !noalias !3836
  store <4 x i32> %wide.load72, ptr %i.bz, align 4, !tbaa !237, !noalias !3836
  %index.next73 = add nuw i64 %index68, 8         ; 2 uses
  %i.ca = icmp eq i64 %index.next73, %n.vec66
  br i1 %i.ca, label %middle.block74, label %vector.body67, !llvm.loop !3823

middle.block74:                                   ; preds = %vector.body67
  %cmp.n75 = icmp eq i64 %i.bq, %n.vec66
  br i1 %cmp.n75, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19.preheader117

.lr.ph.i.i19.preheader117:                        ; preds = %.lr.ph.i.i19.preheader, %middle.block74
  %.sroa.020.0.i.ph = phi ptr [ %i.a, %.lr.ph.i.i19.preheader ], [ %i.bu, %middle.block74 ] ; 2 uses
  %.0.i.ph = phi ptr [ %i.bn, %.lr.ph.i.i19.preheader ], [ %i.bv, %middle.block74 ] ; 2 uses
  %.04.i.i.ph = phi i64 [ %i.bq, %.lr.ph.i.i19.preheader ], [ %i.bw, %middle.block74 ] ; 4 uses
  %i.cb = add i64 %.04.i.i.ph, -1
  %xtraiter127 = and i64 %.04.i.i.ph, 7           ; 2 uses
  %lcmp.mod128.not = icmp eq i64 %xtraiter127, 0
  br i1 %lcmp.mod128.not, label %.lr.ph.i.i19.prol.loopexit, label %.lr.ph.i.i19.prol

.lr.ph.i.i19.prol:                                ; preds = %.lr.ph.i.i19.preheader117, %.lr.ph.i.i19.prol
  %.sroa.020.0.i.prol = phi ptr [ %i.ce, %.lr.ph.i.i19.prol ], [ %.sroa.020.0.i.ph, %.lr.ph.i.i19.preheader117 ] ; 2 uses
  %.0.i.prol = phi ptr [ %i.cf, %.lr.ph.i.i19.prol ], [ %.0.i.ph, %.lr.ph.i.i19.preheader117 ] ; 2 uses
  %.04.i.i.prol = phi i64 [ %i.cc, %.lr.ph.i.i19.prol ], [ %.04.i.i.ph, %.lr.ph.i.i19.preheader117 ]
  %prol.iter129 = phi i64 [ %prol.iter129.next, %.lr.ph.i.i19.prol ], [ 0, %.lr.ph.i.i19.preheader117 ]
  %i.cc = add i64 %.04.i.i.prol, -1               ; 2 uses
  %i.cd = load i32, ptr %.sroa.020.0.i.prol, align 4, !tbaa !237, !noalias !3836
  store i32 %i.cd, ptr %.0.i.prol, align 4, !tbaa !237, !noalias !3836
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i.prol, i64 4 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i.prol, i64 4 ; 3 uses
  %prol.iter129.next = add i64 %prol.iter129, 1   ; 2 uses
  %prol.iter129.cmp.not = icmp eq i64 %prol.iter129.next, %xtraiter127
  br i1 %prol.iter129.cmp.not, label %.lr.ph.i.i19.prol.loopexit, label %.lr.ph.i.i19.prol, !llvm.loop !3824

.lr.ph.i.i19.prol.loopexit:                       ; preds = %.lr.ph.i.i19.prol, %.lr.ph.i.i19.preheader117
  %.lcssa119.unr = phi ptr [ poison, %.lr.ph.i.i19.preheader117 ], [ %i.ce, %.lr.ph.i.i19.prol ]
  %.lcssa118.unr = phi ptr [ poison, %.lr.ph.i.i19.preheader117 ], [ %i.cf, %.lr.ph.i.i19.prol ]
  %.sroa.020.0.i.unr = phi ptr [ %.sroa.020.0.i.ph, %.lr.ph.i.i19.preheader117 ], [ %i.ce, %.lr.ph.i.i19.prol ]
  %.0.i.unr = phi ptr [ %.0.i.ph, %.lr.ph.i.i19.preheader117 ], [ %i.cf, %.lr.ph.i.i19.prol ]
  %.04.i.i.unr = phi i64 [ %.04.i.i.ph, %.lr.ph.i.i19.preheader117 ], [ %i.cc, %.lr.ph.i.i19.prol ]
  %i.cg = icmp ult i64 %i.cb, 7
  br i1 %i.cg, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i.i19.prol.loopexit, %.lr.ph.i.i19
  %.sroa.020.0.i = phi ptr [ %i.de, %.lr.ph.i.i19 ], [ %.sroa.020.0.i.unr, %.lr.ph.i.i19.prol.loopexit ] ; 9 uses
  %.0.i = phi ptr [ %i.df, %.lr.ph.i.i19 ], [ %.0.i.unr, %.lr.ph.i.i19.prol.loopexit ] ; 9 uses
  %.04.i.i = phi i64 [ %i.dc, %.lr.ph.i.i19 ], [ %.04.i.i.unr, %.lr.ph.i.i19.prol.loopexit ]
  %i.ch = load i32, ptr %.sroa.020.0.i, align 4, !tbaa !237, !noalias !3836
  store i32 %i.ch, ptr %.0.i, align 4, !tbaa !237, !noalias !3836
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.ck = load i32, ptr %i.ci, align 4, !tbaa !237, !noalias !3836
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !237, !noalias !3836
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.cn = load i32, ptr %i.cl, align 4, !tbaa !237, !noalias !3836
  store i32 %i.cn, ptr %i.cm, align 4, !tbaa !237, !noalias !3836
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 12
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !237, !noalias !3836
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !237, !noalias !3836
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !237, !noalias !3836
  store i32 %i.ct, ptr %i.cs, align 4, !tbaa !237, !noalias !3836
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 20
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i, i64 20
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !237, !noalias !3836
  store i32 %i.cw, ptr %i.cv, align 4, !tbaa !237, !noalias !3836
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !237, !noalias !3836
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !237, !noalias !3836
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 28
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dc = add i64 %.04.i.i, -8                    ; 2 uses
  %i.dd = load i32, ptr %i.da, align 4, !tbaa !237, !noalias !3836
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !237, !noalias !3836
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 32 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  %.not.i.i20.7 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i20.7, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19, !llvm.loop !3825

_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i: ; preds = %.lr.ph.i.i19.prol.loopexit, %.lr.ph.i.i19, %middle.block74, %bb.h
  %.sroa.020.1.i = phi ptr [ %i.a, %bb.h ], [ %i.bu, %middle.block74 ], [ %.lcssa119.unr, %.lr.ph.i.i19.prol.loopexit ], [ %i.de, %.lr.ph.i.i19 ] ; 2 uses
  %.1.i = phi ptr [ %i.bn, %bb.h ], [ %i.bv, %middle.block74 ], [ %.lcssa118.unr, %.lr.ph.i.i19.prol.loopexit ], [ %i.df, %.lr.ph.i.i19 ] ; 2 uses
  %i.dg = sub i64 %i.f, %i.bq                     ; 3 uses
  %xtraiter130 = and i64 %i.dg, 3                 ; 2 uses
  %lcmp.mod131.not = icmp eq i64 %xtraiter130, 0
  br i1 %lcmp.mod131.not, label %.lr.ph.i11.i.prol.loopexit, label %.lr.ph.i11.i.prol

.lr.ph.i11.i.prol:                                ; preds = %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, %.lr.ph.i11.i.prol
  %i.dh = phi ptr [ %i.dm, %.lr.ph.i11.i.prol ], [ %.sroa.020.1.i, %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ] ; 2 uses
  %.016.i.i.prol = phi i64 [ %i.di, %.lr.ph.i11.i.prol ], [ %i.dg, %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ]
  %.01315.i.i.prol = phi ptr [ %i.dn, %.lr.ph.i11.i.prol ], [ %.1.i, %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ] ; 3 uses
  %prol.iter132 = phi i64 [ %prol.iter132.next, %.lr.ph.i11.i.prol ], [ 0, %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ]
  %i.di = add i64 %.016.i.i.prol, -1              ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.prol) ]
end_hunk_2
begin_hunk_3_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl21insert_n_copies_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_:bb.a
  store i32 %i.cv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.cw = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i51.i.i.i = icmp eq ptr %i.cw, %i.i
  br i1 %.not.i51.i.i.i, label %.lr.ph.i53.i.i.i, label %.lr.ph.i50.i.i.i, !llvm.loop !39

.lr.ph.i53.i.i.i:                                 ; preds = %.lr.ph.i50.i.i.i
  %.pre.i54.i.i.i = load i32, ptr %4, align 4, !tbaa !237 ; 2 uses
  %min.iters.check39 = icmp ult i64 %i.ai, 8
  br i1 %min.iters.check39, label %scalar.ph38.preheader, label %vector.ph40

vector.ph40:                                      ; preds = %.lr.ph.i53.i.i.i
  %n.vec41 = and i64 %i.ai, -8                    ; 3 uses
  %i.cy = and i64 %i.ai, 7
  %i.cz = shl nsw i64 %n.vec41, 2
  %i.da = getelementptr i8, ptr %i.a, i64 %i.cz
  %broadcast.splatinsert42 = insertelement <4 x i32> poison, i32 %.pre.i54.i.i.i, i64 0
  %broadcast.splat43 = shufflevector <4 x i32> %broadcast.splatinsert42, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph40
  %index45 = phi i64 [ 0, %vector.ph40 ], [ %index.next47, %vector.body44 ] ; 2 uses
  %i.db = shl i64 %index45, 2
  %next.gep46 = getelementptr i8, ptr %i.a, i64 %i.db ; 2 uses
  %i.dc = getelementptr i8, ptr %next.gep46, i64 16
  store <4 x i32> %broadcast.splat43, ptr %next.gep46, align 4, !tbaa !237
  store <4 x i32> %broadcast.splat43, ptr %i.dc, align 4, !tbaa !237
  %index.next47 = add nuw i64 %index45, 8         ; 2 uses
  %i.dd = icmp eq i64 %index.next47, %n.vec41
  br i1 %i.dd, label %middle.block48, label %vector.body44, !llvm.loop !3885

middle.block48:                                   ; preds = %vector.body44
  %cmp.n49 = icmp eq i64 %i.ai, %n.vec41
  br i1 %cmp.n49, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, label %scalar.ph38.preheader

scalar.ph38.preheader:                            ; preds = %.lr.ph.i53.i.i.i, %middle.block48
  %.07.i55.i.i.i.ph = phi i64 [ %i.ai, %.lr.ph.i53.i.i.i ], [ %i.cy, %middle.block48 ]
  %.046.i56.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i53.i.i.i ], [ %i.da, %middle.block48 ]
  br label %scalar.ph38

scalar.ph38:                                      ; preds = %scalar.ph38.preheader, %scalar.ph38
  %.07.i55.i.i.i = phi i64 [ %i.de, %scalar.ph38 ], [ %.07.i55.i.i.i.ph, %scalar.ph38.preheader ]
  %.046.i56.i.i.i = phi ptr [ %i.df, %scalar.ph38 ], [ %.046.i56.i.i.i.ph, %scalar.ph38.preheader ] ; 2 uses
  %i.de = add i64 %.07.i55.i.i.i, -1              ; 2 uses
  store i32 %.pre.i54.i.i.i, ptr %.046.i56.i.i.i, align 4, !tbaa !237
  %i.df = getelementptr inbounds nuw i8, ptr %.046.i56.i.i.i, i64 4
  %.not.i57.i.i.i = icmp eq i64 %i.de, 0
  br i1 %.not.i57.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, label %scalar.ph38, !llvm.loop !3886

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i: ; preds = %scalar.ph38, %middle.block48
  %i.dg = sub i64 %3, %i.ai                       ; 3 uses
  %xtraiter55 = and i64 %i.dg, 3                  ; 2 uses
  %lcmp.mod56.not = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod56.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.017.i.i.i.i.i.prol = phi i64 [ %i.dh, %.lr.ph.i.i.i.i.i.prol ], [ %i.dg, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ]
  %.01416.i.i.i.i.i.prol = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i.prol ], [ %i.i, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ]
  %i.dh = add i64 %.017.i.i.i.i.i.prol, -1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.prol) ]
  %i.di = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.di, ptr %.01416.i.i.i.i.i.prol, align 4, !tbaa !237
  %i.dj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dk = add i32 %i.dj, 1
  store i32 %i.dk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dl = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter55
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3887

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i
  %.017.i.i.i.i.i.unr = phi i64 [ %i.dg, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ], [ %i.dh, %.lr.ph.i.i.i.i.i.prol ]
  %.01416.i.i.i.i.i.unr = phi ptr [ %i.i, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ], [ %i.dl, %.lr.ph.i.i.i.i.i.prol ]
  %i.dm = sub i64 %i.ai, %3
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.017.i.i.i.i.i = phi i64 [ %i.dy, %.lr.ph.i.i.i.i.i ], [ %.017.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i ], [ %.01416.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i) ]
  %i.do = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.do, ptr %.01416.i.i.i.i.i, align 4, !tbaa !237
  %i.dp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.dq = add i32 %i.dp, 1
  store i32 %i.dq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dr = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 4
  %i.ds = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !237
  %i.dt = add i32 %i.dp, 2
  store i32 %i.dt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.du = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 8
  %i.dv = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.dv, ptr %i.du, align 4, !tbaa !237
  %i.dw = add i32 %i.dp, 3
  store i32 %i.dw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dx = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 12
  %i.dy = add i64 %.017.i.i.i.i.i, -4             ; 2 uses
  %i.dz = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !237
  %i.ea = add i32 %i.dp, 4
  store i32 %i.ea, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.eb = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3877

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit: ; preds = %scalar.ph26, %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block34, %bb.c, %bb.d
  %i.ec = add i64 %i.e, %3
  store i64 %i.ec, ptr %i.d, align 8, !tbaa !233
  store ptr %i.a, ptr %0, align 8, !tbaa !281
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.103") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.a, i64 noundef %3, ptr %4)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.103") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !234  ; 6 uses
  %i.c = sub i64 2305843009213693951, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !233  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !74

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #25 ; 4 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !235    ; 9 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !242  ; 8 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.s, %2
  br i1 %.not16.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, %.lr.ph.i.i.i
  %.018.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.s, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 3 uses
  %.01517.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 2 uses
  %i.v = load i32, ptr %.018.i.i.i, align 4, !tbaa !237
  store i32 %i.v, ptr %.01517.i.i.i, align 4, !tbaa !237
  store i32 0, ptr %.018.i.i.i, align 4, !tbaa !237
  %i.w = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %2
  br i1 %.not.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !39

_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.z, %.lr.ph.i.i.i ] ; 8 uses
  %.not15.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not15.i.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %min.iters.check = icmp ult i64 %3, 20
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader40, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.aa = shl i64 %3, 2
  %5 = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %4, i64 4         ; 2 uses
  %bound0 = icmp ult ptr %.015.lcssa.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %5, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound024 = icmp ult ptr %.015.lcssa.i.i.i, %i.ab
  %bound125 = icmp ult ptr %4, %5
  %found.conflict26 = and i1 %bound024, %bound125
  %conflict.rdx = or i1 %found.conflict, %found.conflict26
  %bound027 = icmp ugt ptr %i.ab, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound128 = icmp ult ptr %4, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict29 = and i1 %bound027, %bound128
  %conflict.rdx30 = or i1 %conflict.rdx, %found.conflict29
  br i1 %conflict.rdx30, label %.lr.ph.i.i.i.i.preheader40, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -8                         ; 3 uses
  %i.ac = and i64 %3, 7
  %i.ad = shl i64 %n.vec, 2
  %i.ae = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ad
  %i.af = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  %i.ag = load i32, ptr %4, align 4, !tbaa !237, !alias.scope !3898
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.af, %vector.ph ], [ %i.aj, %vector.body ]
  %vec.phi31 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %i.ah = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ah ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !237, !alias.scope !3899, !noalias !3900
  store <4 x i32> %broadcast.splat, ptr %i.ai, align 4, !tbaa !237, !alias.scope !3899, !noalias !3900
  %i.aj = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.ak = add <4 x i32> %vec.phi31, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !3894

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ak, %i.aj
  %i.am = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !alias.scope !3901, !noalias !3898
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader40

.lr.ph.i.i.i.i.preheader40:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.ph = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.i.i.i.i.preheader ], [ %i.am, %middle.block ] ; 2 uses
  %.017.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck ], [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.ac, %middle.block ] ; 4 uses
  %.01416.i.i.i.i.ph = phi ptr [ %.015.lcssa.i.i.i, %vector.memcheck ], [ %.015.lcssa.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ] ; 2 uses
  %i.an = add i64 %.017.i.i.i.i.ph, -1
  %xtraiter = and i64 %.017.i.i.i.i.ph, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader40, %.lr.ph.i.i.i.i.prol
  %i.ao = phi i32 [ %i.ar, %.lr.ph.i.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.i.preheader40 ]
  %.017.i.i.i.i.prol = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.prol ], [ %.017.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader40 ]
  %.01416.i.i.i.i.prol = phi ptr [ %i.as, %.lr.ph.i.i.i.i.prol ], [ %.01416.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader40 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader40 ]
  %i.ap = add i64 %.017.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.prol) ]
  %i.aq = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.aq, ptr %.01416.i.i.i.i.prol, align 4, !tbaa !237
  %i.ar = add i32 %i.ao, 1                        ; 3 uses
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.as = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !3895

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader40
  %.unr = phi i32 [ %.ph, %.lr.ph.i.i.i.i.preheader40 ], [ %i.ar, %.lr.ph.i.i.i.i.prol ]
  %.017.i.i.i.i.unr = phi i64 [ %.017.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader40 ], [ %i.ap, %.lr.ph.i.i.i.i.prol ]
  %.01416.i.i.i.i.unr = phi ptr [ %.01416.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader40 ], [ %i.as, %.lr.ph.i.i.i.i.prol ]
  %i.at = icmp ult i64 %i.an, 3
  br i1 %i.at, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.au = phi i32 [ %i.bg, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.017.i.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i.i.i ], [ %.017.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %.01416.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i) ]
  %i.av = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.av, ptr %.01416.i.i.i.i, align 4, !tbaa !237
  %i.aw = add i32 %i.au, 1
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ax = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 4
  %i.ay = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !237
  %i.az = add i32 %i.au, 2
  store i32 %i.az, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ba = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 8
  %i.bb = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !237
  %i.bc = add i32 %i.au, 3
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.bd = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 12
  %i.be = add i64 %.017.i.i.i.i, -4               ; 2 uses
  %i.bf = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !237
  %i.bg = add i32 %i.au, 4                        ; 2 uses
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.bh = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.i.i.3, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3896

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block, %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.not16.i19.i.i = icmp eq ptr %2, %i.u
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i, %.lr.ph.i20.preheader.i.i
  %.018.i21.i.i = phi ptr [ %i.bm, %.lr.ph.i20.i.i ], [ %2, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  %.01517.i22.i.i = phi ptr [ %i.bn, %.lr.ph.i20.i.i ], [ %i.bi, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i.i) ]
  %i.bj = load i32, ptr %.018.i21.i.i, align 4, !tbaa !237
  store i32 %i.bj, ptr %.01517.i22.i.i, align 4, !tbaa !237
  store i32 0, ptr %.018.i21.i.i, align 4, !tbaa !237
  %i.bk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.bm = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.bm, %i.u
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !39

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mSD_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.t, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %xtraiter43 = and i64 %i.t, 3                   ; 2 uses
  %lcmp.mod44.not = icmp eq i64 %xtraiter43, 0
  br i1 %lcmp.mod44.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.bo, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.br, %.lr.ph.i.i.prol ], [ %i.s, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter45 = phi i64 [ %prol.iter45.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bo = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !237
  %i.bp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.bq = add i32 %i.bp, -1
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.br = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter45.next = add i64 %prol.iter45, 1     ; 2 uses
  %prol.iter45.cmp.not = icmp eq i64 %prol.iter45.next, %xtraiter43
  br i1 %prol.iter45.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3897

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.preheader ], [ %i.bo, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.br, %.lr.ph.i.i.prol ]
  %i.bs = icmp ult i64 %i.t, 4
  br i1 %i.bs, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.ca, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !237
  %i.bt = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.bu = add i32 %i.bt, -1
  store i32 %i.bu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.bv = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.bv, align 4, !tbaa !237
  %i.bw = add i32 %i.bt, -2
  store i32 %i.bw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.bx = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.bx, align 4, !tbaa !237
  %i.by = add i32 %i.bt, -3
  store i32 %i.by, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.bz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.ca = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.bz, align 4, !tbaa !237
  %i.cb = add i32 %i.bt, -4
  store i32 %i.cb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.cc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !24

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ce = icmp eq ptr %i.cd, %i.s
  br i1 %i.ce, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mSD_mT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.cf = load i64, ptr %i.a, align 8, !tbaa !234
  %i.cg = shl i64 %i.cf, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.cg) #22
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !233
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mSD_mT_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mSD_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.h
  %i.ch = phi i64 [ %i.t, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ], [ %i.t, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ]
  %i.ci = ptrtoint ptr %2 to i64
  %i.cj = ptrtoint ptr %i.s to i64
  %i.ck = sub i64 %i.ci, %i.cj
  store ptr %i.r, ptr %1, align 8, !tbaa !235
  %i.cl = add i64 %i.ch, %3
  store i64 %i.cl, ptr %i.d, align 8, !tbaa !233
end_hunk_3
begin_hunk_4_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JRKS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS4_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %.loopexit.i.i
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRKS3_EEEEEvPS3_mSF_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS4_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.t, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.aj, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.am, %.lr.ph.i.i.prol ], [ %i.s, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.aj = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !237
  %i.ak = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.am = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3918

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.am, %.lr.ph.i.i.prol ]
  %i.an = icmp ult i64 %i.t, 4
  br i1 %i.an, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.av, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !237
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.ap = add i32 %i.ao, -1
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.aq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.aq, align 4, !tbaa !237
  %i.ar = add i32 %i.ao, -2
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.as = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.as, align 4, !tbaa !237
  %i.at = add i32 %i.ao, -3
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.av = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.au, align 4, !tbaa !237
  %i.aw = add i32 %i.ao, -4
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ax = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !24

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = icmp eq ptr %i.ay, %i.s
  br i1 %i.az, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRKS3_EEEEEvPS3_mSF_mT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !234
  %i.bb = shl i64 %i.ba, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.bb) #22
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !233
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRKS3_EEEEEvPS3_mSF_mT_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRKS3_EEEEEvPS3_mSF_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS4_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.h
  %i.bc = phi i64 [ %i.t, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS4_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ], [ %i.t, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ]
  %i.bd = ptrtoint ptr %2 to i64
  %i.be = ptrtoint ptr %i.s to i64
  %i.bf = sub i64 %i.bd, %i.be
  store ptr %i.r, ptr %1, align 8, !tbaa !235
  %i.bg = add i64 %i.bc, %3
  store i64 %i.bg, ptr %i.d, align 8, !tbaa !233
  store i64 %i.o, ptr %i.a, align 8, !tbaa !84
  %i.bh = getelementptr inbounds i8, ptr %i.r, i64 %i.bf
  store ptr %i.bh, ptr %0, align 8, !tbaa !281
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignINS0_12vec_iteratorIPS3_Lb1EEEEEvT_SD_PNS_11move_detail13disable_if_orIvNSE_7is_sameINSE_17integral_constantIjLj1EEENSH_IjLj0EEEEENSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !279    ; 9 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !279    ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ashr exact i64 %i.e, 2                   ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !234  ; 2 uses
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.j, label %bb.c, label %bb.d, !prof !74

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #25 ; 10 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !235    ; 5 uses
  %.not12 = icmp eq ptr %i.l, null
  br i1 %.not12, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !242  ; 5 uses
  %.not3.i.i = icmp eq i64 %i.n, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %xtraiter134 = and i64 %i.n, 3                  ; 2 uses
  %lcmp.mod135.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod135.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.o, %.lr.ph.i.i.prol ], [ %i.n, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.prol ], [ %i.l, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter136 = phi i64 [ %prol.iter136.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.o = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !237
  %i.p = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter136.next = add i64 %prol.iter136, 1   ; 2 uses
  %prol.iter136.cmp.not = icmp eq i64 %prol.iter136.next, %xtraiter134
  br i1 %prol.iter136.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3919

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.o, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.l, %.lr.ph.i.i.preheader ], [ %i.r, %.lr.ph.i.i.prol ]
  %i.s = icmp ult i64 %i.n, 4
  br i1 %i.s, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.aa, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !237
  %i.t = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.u = add i32 %i.t, -1
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.v, align 4, !tbaa !237
  %i.w = add i32 %i.t, -2
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.x, align 4, !tbaa !237
  %i.y = add i32 %i.t, -3
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.z = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.aa = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.z, align 4, !tbaa !237
  %i.ab = add i32 %i.t, -4
  store i32 %i.ab, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ac = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i, !llvm.loop !24

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  store i64 0, ptr %i.m, align 8, !tbaa !242
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = icmp eq ptr %i.ad, %i.l
  br i1 %i.ae, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit
  %i.af = shl nuw i64 %i.h, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.af) #22
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit: ; preds = %bb.f, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.k, ptr %0, align 8, !tbaa !235
  store i64 %i.f, ptr %i.g, align 8, !tbaa !84
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %1, align 8, !tbaa !279   ; 9 uses
  %i.ai = load ptr, ptr %2, align 8, !tbaa !279   ; 3 uses
  %.not10.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not10.i.i, label %.loopexit, label %.lr.ph.i.i13.preheader

.lr.ph.i.i13.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = ptrtoaddr ptr %i.ah to i64
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.al = add i64 %i.aj, -4
  %i.am = sub i64 %i.al, %i.ak                    ; 3 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check89 = icmp ult i64 %i.am, 124
  br i1 %min.iters.check89, label %.lr.ph.i.i13.preheader113, label %vector.memcheck90

vector.memcheck90:                                ; preds = %.lr.ph.i.i13.preheader
  %i.ap = and i64 %i.am, -4
  %i.aq = add i64 %i.ap, 4                        ; 2 uses
  %4 = getelementptr i8, ptr %i.k, i64 %i.aq      ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ah, i64 %i.aq  ; 2 uses
  %bound0 = icmp ult ptr %i.k, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %4, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound091 = icmp ult ptr %i.k, %i.ar
  %bound192 = icmp ult ptr %i.ah, %4
  %found.conflict93 = and i1 %bound091, %bound192
  %conflict.rdx = or i1 %found.conflict, %found.conflict93
  %bound094 = icmp ugt ptr %i.ar, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound195 = icmp ult ptr %i.ah, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict96 = and i1 %bound094, %bound195
  %conflict.rdx97 = or i1 %conflict.rdx, %found.conflict96
  br i1 %conflict.rdx97, label %.lr.ph.i.i13.preheader113, label %vector.ph98

vector.ph98:                                      ; preds = %vector.memcheck90
  %n.vec99 = and i64 %i.ao, 9223372036854775800   ; 3 uses
  %i.as = shl i64 %n.vec99, 2                     ; 2 uses
  %i.at = getelementptr i8, ptr %i.ah, i64 %i.as
  %i.au = getelementptr i8, ptr %i.k, i64 %i.as   ; 2 uses
  %i.av = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body100

vector.body100:                                   ; preds = %vector.body100, %vector.ph98
  %index101 = phi i64 [ 0, %vector.ph98 ], [ %index.next107, %vector.body100 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.av, %vector.ph98 ], [ %i.az, %vector.body100 ]
  %vec.phi102 = phi <4 x i32> [ zeroinitializer, %vector.ph98 ], [ %i.ba, %vector.body100 ]
  %i.aw = shl i64 %index101, 2                    ; 2 uses
  %next.gep103 = getelementptr i8, ptr %i.ah, i64 %i.aw ; 2 uses
  %next.gep104 = getelementptr i8, ptr %i.k, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep103, i64 16
  %wide.load105 = load <4 x i32>, ptr %next.gep103, align 4, !tbaa !237, !alias.scope !3937
  %wide.load106 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !237, !alias.scope !3937
  %i.ay = getelementptr i8, ptr %next.gep104, i64 16
  store <4 x i32> %wide.load105, ptr %next.gep104, align 4, !tbaa !237, !alias.scope !3938, !noalias !3939
  store <4 x i32> %wide.load106, ptr %i.ay, align 4, !tbaa !237, !alias.scope !3938, !noalias !3939
  %i.az = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.ba = add <4 x i32> %vec.phi102, splat (i32 1) ; 2 uses
  %index.next107 = add nuw i64 %index101, 8       ; 2 uses
  %i.bb = icmp eq i64 %index.next107, %n.vec99
  br i1 %i.bb, label %middle.block108, label %vector.body100, !llvm.loop !3924

middle.block108:                                  ; preds = %vector.body100
  %bin.rdx = add <4 x i32> %i.ba, %i.az
  %i.bc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !alias.scope !3940, !noalias !3937
  %cmp.n109 = icmp eq i64 %i.ao, %n.vec99
  br i1 %cmp.n109, label %.loopexit, label %.lr.ph.i.i13.preheader113

.lr.ph.i.i13.preheader113:                        ; preds = %vector.memcheck90, %.lr.ph.i.i13.preheader, %middle.block108
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %vector.memcheck90 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i13.preheader ], [ %i.bc, %middle.block108 ]
  %.ph114 = phi ptr [ %i.ah, %vector.memcheck90 ], [ %i.ah, %.lr.ph.i.i13.preheader ], [ %i.at, %middle.block108 ]
  %.011.i.i.ph = phi ptr [ %i.k, %vector.memcheck90 ], [ %i.k, %.lr.ph.i.i13.preheader ], [ %i.au, %middle.block108 ]
  br label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %.lr.ph.i.i13.preheader113, %.lr.ph.i.i13
  %i.bd = phi i32 [ %i.bg, %.lr.ph.i.i13 ], [ %.ph, %.lr.ph.i.i13.preheader113 ]
  %i.be = phi ptr [ %i.bh, %.lr.ph.i.i13 ], [ %.ph114, %.lr.ph.i.i13.preheader113 ] ; 2 uses
  %.011.i.i = phi ptr [ %i.bi, %.lr.ph.i.i13 ], [ %.011.i.i.ph, %.lr.ph.i.i13.preheader113 ] ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !237
  store i32 %i.bf, ptr %.011.i.i, align 4, !tbaa !237
  %i.bg = add i32 %i.bd, 1                        ; 2 uses
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 4 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.bh, %i.ai
  br i1 %.not.i.i14, label %.loopexit, label %.lr.ph.i.i13, !llvm.loop !3925

.loopexit:                                        ; preds = %.lr.ph.i.i13, %middle.block108, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %.0.lcssa.i.i = phi ptr [ %i.k, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ], [ %i.au, %middle.block108 ], [ %i.bi, %.lr.ph.i.i13 ]
  %i.bj = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.bk = ptrtoint ptr %i.k to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 2
  store i64 %i.bm, ptr %i.ag, align 8, !tbaa !233
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.bn = load ptr, ptr %0, align 8, !tbaa !235   ; 9 uses
  %i.bo = ptrtoaddr ptr %i.bn to i64              ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !242 ; 11 uses
  %i.br = icmp ult i64 %i.bq, %i.f
  br i1 %i.br, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not3.i.i18 = icmp eq i64 %i.bq, 0
  br i1 %.not3.i.i18, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19.preheader

.lr.ph.i.i19.preheader:                           ; preds = %bb.h
  %min.iters.check62 = icmp ult i64 %i.bq, 8
  %i.bs = sub i64 %i.d, %i.bo
  %diff.check64 = icmp ugt i64 %i.bs, -32
  %or.cond = select i1 %min.iters.check62, i1 true, i1 %diff.check64
  br i1 %or.cond, label %.lr.ph.i.i19.preheader117, label %vector.ph65

vector.ph65:                                      ; preds = %.lr.ph.i.i19.preheader
  %n.vec66 = and i64 %i.bq, -8                    ; 3 uses
  %i.bt = shl i64 %n.vec66, 2                     ; 2 uses
  %i.bu = getelementptr i8, ptr %i.a, i64 %i.bt   ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bn, i64 %i.bt  ; 2 uses
  %i.bw = and i64 %i.bq, 7
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph65
  %index68 = phi i64 [ 0, %vector.ph65 ], [ %index.next73, %vector.body67 ] ; 2 uses
  %i.bx = shl i64 %index68, 2                     ; 2 uses
  %next.gep69 = getelementptr i8, ptr %i.a, i64 %i.bx ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.bn, i64 %i.bx ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep69, i64 16
  %wide.load71 = load <4 x i32>, ptr %next.gep69, align 4, !tbaa !237, !noalias !3941
  %wide.load72 = load <4 x i32>, ptr %i.by, align 4, !tbaa !237, !noalias !3941
  %i.bz = getelementptr i8, ptr %next.gep70, i64 16
  store <4 x i32> %wide.load71, ptr %next.gep70, align 4, !tbaa !237, !noalias !3941
  store <4 x i32> %wide.load72, ptr %i.bz, align 4, !tbaa !237, !noalias !3941
  %index.next73 = add nuw i64 %index68, 8         ; 2 uses
  %i.ca = icmp eq i64 %index.next73, %n.vec66
  br i1 %i.ca, label %middle.block74, label %vector.body67, !llvm.loop !3928

middle.block74:                                   ; preds = %vector.body67
  %cmp.n75 = icmp eq i64 %i.bq, %n.vec66
  br i1 %cmp.n75, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19.preheader117

.lr.ph.i.i19.preheader117:                        ; preds = %.lr.ph.i.i19.preheader, %middle.block74
  %.sroa.020.0.i.ph = phi ptr [ %i.a, %.lr.ph.i.i19.preheader ], [ %i.bu, %middle.block74 ] ; 2 uses
  %.0.i.ph = phi ptr [ %i.bn, %.lr.ph.i.i19.preheader ], [ %i.bv, %middle.block74 ] ; 2 uses
  %.04.i.i.ph = phi i64 [ %i.bq, %.lr.ph.i.i19.preheader ], [ %i.bw, %middle.block74 ] ; 4 uses
  %i.cb = add i64 %.04.i.i.ph, -1
  %xtraiter127 = and i64 %.04.i.i.ph, 7           ; 2 uses
  %lcmp.mod128.not = icmp eq i64 %xtraiter127, 0
  br i1 %lcmp.mod128.not, label %.lr.ph.i.i19.prol.loopexit, label %.lr.ph.i.i19.prol

.lr.ph.i.i19.prol:                                ; preds = %.lr.ph.i.i19.preheader117, %.lr.ph.i.i19.prol
  %.sroa.020.0.i.prol = phi ptr [ %i.ce, %.lr.ph.i.i19.prol ], [ %.sroa.020.0.i.ph, %.lr.ph.i.i19.preheader117 ] ; 2 uses
  %.0.i.prol = phi ptr [ %i.cf, %.lr.ph.i.i19.prol ], [ %.0.i.ph, %.lr.ph.i.i19.preheader117 ] ; 2 uses
  %.04.i.i.prol = phi i64 [ %i.cc, %.lr.ph.i.i19.prol ], [ %.04.i.i.ph, %.lr.ph.i.i19.preheader117 ]
  %prol.iter129 = phi i64 [ %prol.iter129.next, %.lr.ph.i.i19.prol ], [ 0, %.lr.ph.i.i19.preheader117 ]
  %i.cc = add i64 %.04.i.i.prol, -1               ; 2 uses
  %i.cd = load i32, ptr %.sroa.020.0.i.prol, align 4, !tbaa !237, !noalias !3941
  store i32 %i.cd, ptr %.0.i.prol, align 4, !tbaa !237, !noalias !3941
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i.prol, i64 4 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i.prol, i64 4 ; 3 uses
  %prol.iter129.next = add i64 %prol.iter129, 1   ; 2 uses
  %prol.iter129.cmp.not = icmp eq i64 %prol.iter129.next, %xtraiter127
  br i1 %prol.iter129.cmp.not, label %.lr.ph.i.i19.prol.loopexit, label %.lr.ph.i.i19.prol, !llvm.loop !3929

.lr.ph.i.i19.prol.loopexit:                       ; preds = %.lr.ph.i.i19.prol, %.lr.ph.i.i19.preheader117
  %.lcssa119.unr = phi ptr [ poison, %.lr.ph.i.i19.preheader117 ], [ %i.ce, %.lr.ph.i.i19.prol ]
  %.lcssa118.unr = phi ptr [ poison, %.lr.ph.i.i19.preheader117 ], [ %i.cf, %.lr.ph.i.i19.prol ]
  %.sroa.020.0.i.unr = phi ptr [ %.sroa.020.0.i.ph, %.lr.ph.i.i19.preheader117 ], [ %i.ce, %.lr.ph.i.i19.prol ]
  %.0.i.unr = phi ptr [ %.0.i.ph, %.lr.ph.i.i19.preheader117 ], [ %i.cf, %.lr.ph.i.i19.prol ]
  %.04.i.i.unr = phi i64 [ %.04.i.i.ph, %.lr.ph.i.i19.preheader117 ], [ %i.cc, %.lr.ph.i.i19.prol ]
  %i.cg = icmp ult i64 %i.cb, 7
  br i1 %i.cg, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i.i19.prol.loopexit, %.lr.ph.i.i19
  %.sroa.020.0.i = phi ptr [ %i.de, %.lr.ph.i.i19 ], [ %.sroa.020.0.i.unr, %.lr.ph.i.i19.prol.loopexit ] ; 9 uses
  %.0.i = phi ptr [ %i.df, %.lr.ph.i.i19 ], [ %.0.i.unr, %.lr.ph.i.i19.prol.loopexit ] ; 9 uses
  %.04.i.i = phi i64 [ %i.dc, %.lr.ph.i.i19 ], [ %.04.i.i.unr, %.lr.ph.i.i19.prol.loopexit ]
  %i.ch = load i32, ptr %.sroa.020.0.i, align 4, !tbaa !237, !noalias !3941
  store i32 %i.ch, ptr %.0.i, align 4, !tbaa !237, !noalias !3941
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.ck = load i32, ptr %i.ci, align 4, !tbaa !237, !noalias !3941
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !237, !noalias !3941
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.cn = load i32, ptr %i.cl, align 4, !tbaa !237, !noalias !3941
  store i32 %i.cn, ptr %i.cm, align 4, !tbaa !237, !noalias !3941
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 12
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !237, !noalias !3941
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !237, !noalias !3941
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !237, !noalias !3941
  store i32 %i.ct, ptr %i.cs, align 4, !tbaa !237, !noalias !3941
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 20
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i, i64 20
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !237, !noalias !3941
  store i32 %i.cw, ptr %i.cv, align 4, !tbaa !237, !noalias !3941
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !237, !noalias !3941
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !237, !noalias !3941
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 28
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dc = add i64 %.04.i.i, -8                    ; 2 uses
  %i.dd = load i32, ptr %i.da, align 4, !tbaa !237, !noalias !3941
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !237, !noalias !3941
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 32 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  %.not.i.i20.7 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i20.7, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19, !llvm.loop !3930

_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i: ; preds = %.lr.ph.i.i19.prol.loopexit, %.lr.ph.i.i19, %middle.block74, %bb.h
  %.sroa.020.1.i = phi ptr [ %i.a, %bb.h ], [ %i.bu, %middle.block74 ], [ %.lcssa119.unr, %.lr.ph.i.i19.prol.loopexit ], [ %i.de, %.lr.ph.i.i19 ] ; 2 uses
  %.1.i = phi ptr [ %i.bn, %bb.h ], [ %i.bv, %middle.block74 ], [ %.lcssa118.unr, %.lr.ph.i.i19.prol.loopexit ], [ %i.df, %.lr.ph.i.i19 ] ; 2 uses
  %i.dg = sub i64 %i.f, %i.bq                     ; 3 uses
  %xtraiter130 = and i64 %i.dg, 3                 ; 2 uses
  %lcmp.mod131.not = icmp eq i64 %xtraiter130, 0
  br i1 %lcmp.mod131.not, label %.lr.ph.i11.i.prol.loopexit, label %.lr.ph.i11.i.prol

.lr.ph.i11.i.prol:                                ; preds = %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, %.lr.ph.i11.i.prol
  %i.dh = phi ptr [ %i.dm, %.lr.ph.i11.i.prol ], [ %.sroa.020.1.i, %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ] ; 2 uses
  %.016.i.i.prol = phi i64 [ %i.di, %.lr.ph.i11.i.prol ], [ %i.dg, %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ]
  %.01315.i.i.prol = phi ptr [ %i.dn, %.lr.ph.i11.i.prol ], [ %.1.i, %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ] ; 3 uses
  %prol.iter132 = phi i64 [ %prol.iter132.next, %.lr.ph.i11.i.prol ], [ 0, %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ]
  %i.di = add i64 %.016.i.i.prol, -1              ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.prol) ]
end_hunk_4
begin_hunk_5_@_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSD_EEEEENS0_12vec_iteratorIPS3_Lb0EEESJ_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !206  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !207  ; 3 uses
  %i.aa = load i64, ptr %i.e, align 8, !tbaa !254 ; 10 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.aa ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.t, %2
  br i1 %.not16.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.ac = add i64 %i.a, -4
  %i.ad = sub i64 %i.ac, %i.u                     ; 3 uses
  %i.ae = lshr i64 %i.ad, 2
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader72, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ag = and i64 %i.ad, -4
  %i.ah = getelementptr i8, ptr %i.t, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  %bound0 = icmp ugt ptr %i.ai, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.t, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader72, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.af, 9223372036854775800     ; 3 uses
  %i.aj = shl i64 %n.vec, 2                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.t, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.s, i64 %i.aj   ; 2 uses
  %i.am = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test12copyable_int5countE.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.am, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi18 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %i.an = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.an ; 2 uses
  %next.gep19 = getelementptr i8, ptr %i.s, i64 %i.an ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !249, !alias.scope !4505
  %wide.load20 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !249, !alias.scope !4505
  %i.ap = getelementptr i8, ptr %next.gep19, i64 16
  store <4 x i32> %wide.load, ptr %next.gep19, align 4, !tbaa !249
  store <4 x i32> %wide.load20, ptr %i.ap, align 4, !tbaa !249
  %i.aq = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.ar = add <4 x i32> %vec.phi18, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !4493

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ar, %i.aq
  %i.at = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.at, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4506, !noalias !4505
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i.preheader72

.lr.ph.i.i.i.preheader72:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph73 = phi i32 [ %_ZN5boost9container4test12copyable_int5countE.promoted, %vector.memcheck ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.018.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.preheader ], [ %i.ak, %middle.block ]
  %.01517.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader72, %.lr.ph.i.i.i
  %i.au = phi i32 [ %i.aw, %.lr.ph.i.i.i ], [ %.ph73, %.lr.ph.i.i.i.preheader72 ]
  %.018.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader72 ] ; 2 uses
  %.01517.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %.01517.i.i.i.ph, %.lr.ph.i.i.i.preheader72 ] ; 2 uses
  %i.av = load i32, ptr %.018.i.i.i, align 4, !tbaa !249
  store i32 %i.av, ptr %.01517.i.i.i, align 4, !tbaa !249
  %i.aw = add i32 %i.au, 1                        ; 2 uses
  store i32 %i.aw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ax = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %2
  br i1 %.not.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !4495

_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.s, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.al, %middle.block ], [ %i.ay, %.lr.ph.i.i.i ] ; 6 uses
  %.not13.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not13.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.pre = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !4507 ; 2 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.lcssa.i.i.i) ]
  %i.az = load i32, ptr %i.v, align 4, !tbaa !67, !noalias !4507
  store i32 %i.az, ptr %.015.lcssa.i.i.i, align 4, !tbaa !249, !noalias !4507
  %i.ba = add i32 %.pre, 1                        ; 2 uses
  store i32 %i.ba, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !4507
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.x
  br i1 %i.bc, label %bb.g, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.prol

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.prol
  %i.bd = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !78, !noalias !4507 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.prol

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.prol: ; preds = %bb.g, %.lr.ph.i.i.i.i.prol
  %.sroa.11.1.i.i.i.prol = phi ptr [ %i.bd, %bb.g ], [ %i.z, %.lr.ph.i.i.i.i.prol ]
  %i.bg = phi ptr [ %i.bf, %bb.g ], [ %i.x, %.lr.ph.i.i.i.i.prol ]
  %i.bh = phi ptr [ %i.be, %bb.g ], [ %i.bb, %.lr.ph.i.i.i.i.prol ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.015.lcssa.i.i.i, i64 4
  %i.bj = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.unr = phi i32 [ %.pre, %.lr.ph.i.i.i.i.preheader ], [ %i.ba, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.prol ]
  %.sroa.11.0.i.i.i.unr = phi ptr [ %i.z, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.11.1.i.i.i.prol, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.prol ]
  %.unr77 = phi ptr [ %i.x, %.lr.ph.i.i.i.i.preheader ], [ %i.bg, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.prol ]
  %.unr78 = phi ptr [ %i.v, %.lr.ph.i.i.i.i.preheader ], [ %i.bh, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.prol ]
  %.015.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.bj, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.prol ]
  %.01214.i.i.i.i.unr = phi ptr [ %.015.lcssa.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.bi, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.prol ]
  %i.bk = icmp eq i64 %3, 1
  br i1 %i.bk, label %.loopexit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.1
  %i.bl = phi i32 [ %i.bz, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.1 ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.11.0.i.i.i = phi ptr [ %.sroa.11.1.i.i.i.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.1 ], [ %.sroa.11.0.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.bm = phi ptr [ %i.cf, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.1 ], [ %.unr77, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.bn = phi ptr [ %i.cg, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.1 ], [ %.unr78, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %.015.i.i.i.i = phi i64 [ %i.ci, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.1 ], [ %.015.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i = phi ptr [ %i.ch, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.1 ], [ %.01214.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i) ]
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !67, !noalias !4507
  store i32 %i.bo, ptr %.01214.i.i.i.i, align 4, !tbaa !249, !noalias !4507
  %i.bp = add i32 %i.bl, 1
  store i32 %i.bp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !4507
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.bm
  br i1 %i.br, label %bb.h, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i.i.i, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !78, !noalias !4507 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.sroa.11.1.i.i.i = phi ptr [ %i.bs, %bb.h ], [ %.sroa.11.0.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bv = phi ptr [ %i.bu, %bb.h ], [ %i.bm, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bw = phi ptr [ %i.bt, %bb.h ], [ %i.bq, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !67, !noalias !4507
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !249, !noalias !4507
  %i.bz = add i32 %i.bl, 2                        ; 2 uses
  store i32 %i.bz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !4507
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.bv
  br i1 %i.cb, label %bb.i, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.1

bb.i:                                             ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i.i, i64 8 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !78, !noalias !4507 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.1

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.1: ; preds = %bb.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i
  %.sroa.11.1.i.i.i.1 = phi ptr [ %i.cc, %bb.i ], [ %.sroa.11.1.i.i.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i ]
  %i.cf = phi ptr [ %i.ce, %bb.i ], [ %i.bv, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i ]
  %i.cg = phi ptr [ %i.cd, %bb.i ], [ %i.ca, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 8
  %i.ci = add i64 %.015.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.i.i.1, label %.loopexit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !48

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.i.1, %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.not16.i19.i.i = icmp eq ptr %2, %i.ab
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSC_EEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %.loopexit.i.i
  %i.cj = getelementptr [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3 ; 6 uses
  %.pre8 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.ck = shl i64 %i.aa, 2
  %i.cl = add i64 %i.ck, %i.u
  %i.cm = add i64 %i.cl, -4
  %i.cn = sub i64 %i.cm, %i.a                     ; 2 uses
  %i.co = lshr i64 %i.cn, 2
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %min.iters.check35 = icmp ult i64 %i.cn, 156
  br i1 %min.iters.check35, label %.lr.ph.i20.i.i.preheader, label %vector.memcheck36

vector.memcheck36:                                ; preds = %.lr.ph.i20.preheader.i.i
  %i.cq = shl i64 %3, 2
  %i.cr = shl i64 %i.aa, 2
  %i.cs = add i64 %i.cr, %i.u
  %i.ct = add i64 %i.cs, -4
  %i.cu = sub i64 %i.ct, %i.a
  %i.cv = and i64 %i.cu, -4                       ; 2 uses
  %i.cw = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.cq
  %i.cx = getelementptr i8, ptr %i.cw, i64 %i.cv
  %i.cy = getelementptr i8, ptr %i.cx, i64 4      ; 2 uses
  %5 = getelementptr i8, ptr %2, i64 %i.cv
  %6 = getelementptr i8, ptr %5, i64 4            ; 2 uses
  %bound037 = icmp ult ptr %i.cj, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound138 = icmp ugt ptr %i.cy, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict39 = and i1 %bound037, %bound138
  %bound040 = icmp ult ptr %i.cj, %6
  %bound141 = icmp ult ptr %2, %i.cy
  %found.conflict42 = and i1 %bound040, %bound141
  %conflict.rdx = or i1 %found.conflict39, %found.conflict42
  %bound043 = icmp ugt ptr %6, @_ZN5boost9container4test12copyable_int5countE
  %bound144 = icmp ult ptr %2, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict45 = and i1 %bound043, %bound144
  %conflict.rdx46 = or i1 %conflict.rdx, %found.conflict45
  br i1 %conflict.rdx46, label %.lr.ph.i20.i.i.preheader, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck36
  %n.vec48 = and i64 %i.cp, 9223372036854775800   ; 3 uses
  %i.cz = shl i64 %n.vec48, 2                     ; 2 uses
  %i.da = getelementptr i8, ptr %2, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.cj, i64 %i.cz
  %i.dc = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre8, i64 0
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next64, %vector.body49 ] ; 2 uses
  %vec.phi51 = phi <4 x i32> [ %i.dc, %vector.ph47 ], [ %i.dg, %vector.body49 ]
  %vec.phi52 = phi <4 x i32> [ zeroinitializer, %vector.ph47 ], [ %i.dh, %vector.body49 ]
  %i.dd = shl i64 %index50, 2                     ; 2 uses
  %next.gep53 = getelementptr i8, ptr %2, i64 %i.dd ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.cj, i64 %i.dd ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep54) ]
  %i.de = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load62 = load <4 x i32>, ptr %next.gep53, align 4, !tbaa !249, !alias.scope !4508
  %wide.load63 = load <4 x i32>, ptr %i.de, align 4, !tbaa !249, !alias.scope !4508
  %i.df = getelementptr i8, ptr %next.gep54, i64 16
  store <4 x i32> %wide.load62, ptr %next.gep54, align 4, !tbaa !249, !alias.scope !4509, !noalias !4510
  store <4 x i32> %wide.load63, ptr %i.df, align 4, !tbaa !249, !alias.scope !4509, !noalias !4510
  %i.dg = add <4 x i32> %vec.phi51, splat (i32 1) ; 2 uses
  %i.dh = add <4 x i32> %vec.phi52, splat (i32 1) ; 2 uses
  %index.next64 = add nuw i64 %index50, 8         ; 2 uses
  %i.di = icmp eq i64 %index.next64, %n.vec48
  br i1 %i.di, label %middle.block65, label %vector.body49, !llvm.loop !4502

middle.block65:                                   ; preds = %vector.body49
  %bin.rdx66 = add <4 x i32> %i.dh, %i.dg
  %i.dj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx66) ; 2 uses
  store i32 %i.dj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4511, !noalias !4508
  %cmp.n67 = icmp eq i64 %i.cp, %n.vec48
  br i1 %cmp.n67, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSC_EEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i, label %.lr.ph.i20.i.i.preheader

.lr.ph.i20.i.i.preheader:                         ; preds = %vector.memcheck36, %.lr.ph.i20.preheader.i.i, %middle.block65
  %.ph = phi i32 [ %.pre8, %vector.memcheck36 ], [ %.pre8, %.lr.ph.i20.preheader.i.i ], [ %i.dj, %middle.block65 ]
  %.018.i21.i.i.ph = phi ptr [ %2, %vector.memcheck36 ], [ %2, %.lr.ph.i20.preheader.i.i ], [ %i.da, %middle.block65 ]
  %.01517.i22.i.i.ph = phi ptr [ %i.cj, %vector.memcheck36 ], [ %i.cj, %.lr.ph.i20.preheader.i.i ], [ %i.db, %middle.block65 ]
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.preheader, %.lr.ph.i20.i.i
  %i.dk = phi i32 [ %i.dm, %.lr.ph.i20.i.i ], [ %.ph, %.lr.ph.i20.i.i.preheader ]
  %.018.i21.i.i = phi ptr [ %i.dn, %.lr.ph.i20.i.i ], [ %.018.i21.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.do, %.lr.ph.i20.i.i ], [ %.01517.i22.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i.i) ]
  %i.dl = load i32, ptr %.018.i21.i.i, align 4, !tbaa !249
  store i32 %i.dl, ptr %.01517.i22.i.i, align 4, !tbaa !249
  %i.dm = add i32 %i.dk, 1                        ; 2 uses
  store i32 %i.dm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dn = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.dn, %i.ab
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSC_EEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !4503

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSC_EEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %middle.block65, %.loopexit.i.i
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSD_EEEEEvPS3_mSI_mT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSC_EEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %xtraiter79 = and i64 %i.aa, 3                  ; 2 uses
  %lcmp.mod80.not = icmp eq i64 %xtraiter79, 0
  br i1 %lcmp.mod80.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.dp, %.lr.ph.i.i.prol ], [ %i.aa, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.ds, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.dp = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.dq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dr = add i32 %i.dq, -1
  store i32 %i.dr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ds = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter79
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4504

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.aa, %.lr.ph.i.i.preheader ], [ %i.dp, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.ds, %.lr.ph.i.i.prol ]
  %i.dt = icmp ult i64 %i.aa, 4
  br i1 %i.dt, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.eb, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ed, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !249
  %i.du = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.dv = add i32 %i.du, -1
  store i32 %i.dv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.dw, align 4, !tbaa !249
  %i.dx = add i32 %i.du, -2
  store i32 %i.dx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dy = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.dy, align 4, !tbaa !249
  %i.dz = add i32 %i.du, -3
  store i32 %i.dz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ea = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.eb = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.ea, align 4, !tbaa !249
  %i.ec = add i32 %i.du, -4
  store i32 %i.ec, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ed = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !26

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.j
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ef = icmp eq ptr %i.ee, %i.t
  br i1 %i.ef, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSD_EEEEEvPS3_mSI_mT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.eg = load i64, ptr %i.b, align 8, !tbaa !246
  %i.eh = shl i64 %i.eg, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.eh) #22
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !245
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSD_EEEEEvPS3_mSI_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSD_EEEEEvPS3_mSI_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSC_EEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.k
  %i.ei = phi i64 [ %i.aa, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSC_EEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i ], [ %.pre.i, %bb.k ], [ %i.aa, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ]
  %i.ej = ptrtoint ptr %2 to i64
  %i.ek = ptrtoint ptr %i.t to i64
  %i.el = sub i64 %i.ej, %i.ek
  store ptr %i.s, ptr %1, align 8, !tbaa !247
  %i.em = add i64 %i.ei, %3
  store i64 %i.em, ptr %i.e, align 8, !tbaa !245
  store i64 %i.p, ptr %i.b, align 8, !tbaa !84
  %i.en = getelementptr inbounds i8, ptr %i.s, i64 %i.el
  store ptr %i.en, ptr %0, align 8, !tbaa !289
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_NS0_3dtl18insert_range_proxyIS7_St15_Deque_iteratorIiRKiPSC_EEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SO_mSJ_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 5 uses
  %.not = icmp ult i64 %i.d, %3
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub i64 0, %3
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.e ; 6 uses
  %.not17.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not17.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.020.i.prol = phi i64 [ %i.g, %.lr.ph.i.prol ], [ %3, %.lr.ph.i.preheader ]
  %.0819.i.prol = phi ptr [ %i.k, %.lr.ph.i.prol ], [ %i.f, %.lr.ph.i.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.l, %.lr.ph.i.prol ], [ %2, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.g = add i64 %.020.i.prol, -1                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.prol) ]
  %i.h = load i32, ptr %.0819.i.prol, align 4, !tbaa !249
  store i32 %i.h, ptr %.01618.i.prol, align 4, !tbaa !249
  %i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.k = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !4512

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.020.i.unr = phi i64 [ %3, %.lr.ph.i.preheader ], [ %i.g, %.lr.ph.i.prol ]
  %.0819.i.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %i.k, %.lr.ph.i.prol ]
  %.01618.i.unr = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %i.m = icmp ult i64 %3, 4
  br i1 %i.m, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.020.i = phi i64 [ %i.aa, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0819.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.0819.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.01618.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.n = load i32, ptr %.0819.i, align 4, !tbaa !249
end_hunk_5
begin_hunk_6_@_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
  %i.x = add i64 %i.a, -4
  %i.y = sub i64 %i.x, %i.u                       ; 3 uses
  %i.z = lshr i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader104, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ab = and i64 %i.y, -4
  %i.ac = getelementptr i8, ptr %i.t, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %bound0 = icmp ugt ptr %i.ad, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.t, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader104, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 9223372036854775800     ; 3 uses
  %i.ae = shl i64 %n.vec, 2                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.s, i64 %i.ae   ; 2 uses
  %i.ah = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test12copyable_int5countE.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ah, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi15 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %i.ai = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ai ; 2 uses
  %next.gep16 = getelementptr i8, ptr %i.s, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !249, !alias.scope !4575
  %wide.load17 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !249, !alias.scope !4575
  %i.ak = getelementptr i8, ptr %next.gep16, i64 16
  store <4 x i32> %wide.load, ptr %next.gep16, align 4, !tbaa !249
  store <4 x i32> %wide.load17, ptr %i.ak, align 4, !tbaa !249
  %i.al = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.am = add <4 x i32> %vec.phi15, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !4559

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.am, %i.al
  %i.ao = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ao, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4576, !noalias !4575
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i.preheader104

.lr.ph.i.i.i.preheader104:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph105 = phi i32 [ %_ZN5boost9container4test12copyable_int5countE.promoted, %vector.memcheck ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.018.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.01517.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader104, %.lr.ph.i.i.i
  %i.ap = phi i32 [ %i.ar, %.lr.ph.i.i.i ], [ %.ph105, %.lr.ph.i.i.i.preheader104 ]
  %.018.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader104 ] ; 2 uses
  %.01517.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.01517.i.i.i.ph, %.lr.ph.i.i.i.preheader104 ] ; 2 uses
  %i.aq = load i32, ptr %.018.i.i.i, align 4, !tbaa !249
  store i32 %i.aq, ptr %.01517.i.i.i, align 4, !tbaa !249
  %i.ar = add i32 %i.ap, 1                        ; 2 uses
  store i32 %i.ar, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.as = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %2
  br i1 %.not.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !4561

_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.s, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ag, %middle.block ], [ %i.at, %.lr.ph.i.i.i ] ; 8 uses
  %.not14.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not14.i.i.i.i, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.pre = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %min.iters.check24 = icmp ult i64 %3, 8
  br i1 %min.iters.check24, label %.lr.ph.i.i.i.i.preheader100, label %vector.memcheck25

vector.memcheck25:                                ; preds = %.lr.ph.i.i.i.i.preheader
  %i.au = shl i64 %3, 2
  %i.av = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.au
  %bound026 = icmp ult ptr %.015.lcssa.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound127 = icmp ugt ptr %i.av, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict28 = and i1 %bound026, %bound127
  br i1 %found.conflict28, label %.lr.ph.i.i.i.i.preheader100, label %vector.ph29

vector.ph29:                                      ; preds = %vector.memcheck25
  %n.vec30 = and i64 %3, -8                       ; 3 uses
  %i.aw = and i64 %3, 7
  %i.ax = shl i64 %n.vec30, 2
  %i.ay = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ax
  %i.az = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  br label %vector.body31

vector.body31:                                    ; preds = %vector.body31, %vector.ph29
  %index32 = phi i64 [ 0, %vector.ph29 ], [ %index.next43, %vector.body31 ] ; 2 uses
  %vec.phi33 = phi <4 x i32> [ %i.az, %vector.ph29 ], [ %i.bc, %vector.body31 ]
  %vec.phi34 = phi <4 x i32> [ zeroinitializer, %vector.ph29 ], [ %i.bd, %vector.body31 ]
  %i.ba = shl i64 %index32, 2
  %next.gep35 = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ba ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep35) ]
  %i.bb = getelementptr i8, ptr %next.gep35, i64 16
  store <4 x i32> zeroinitializer, ptr %next.gep35, align 4, !tbaa !249, !alias.scope !4577, !noalias !4578
  store <4 x i32> zeroinitializer, ptr %i.bb, align 4, !tbaa !249, !alias.scope !4577, !noalias !4578
  %i.bc = add <4 x i32> %vec.phi33, splat (i32 1) ; 2 uses
  %i.bd = add <4 x i32> %vec.phi34, splat (i32 1) ; 2 uses
  %index.next43 = add nuw i64 %index32, 8         ; 2 uses
  %i.be = icmp eq i64 %index.next43, %n.vec30
  br i1 %i.be, label %middle.block44, label %vector.body31, !llvm.loop !4565

middle.block44:                                   ; preds = %vector.body31
  %bin.rdx45 = add <4 x i32> %i.bd, %i.bc
  %i.bf = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx45) ; 2 uses
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4578
  %cmp.n46 = icmp eq i64 %3, %n.vec30
  br i1 %cmp.n46, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader100

.lr.ph.i.i.i.i.preheader100:                      ; preds = %vector.memcheck25, %.lr.ph.i.i.i.i.preheader, %middle.block44
  %.ph101 = phi i32 [ %.pre, %vector.memcheck25 ], [ %.pre, %.lr.ph.i.i.i.i.preheader ], [ %i.bf, %middle.block44 ] ; 2 uses
  %.016.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck25 ], [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.aw, %middle.block44 ] ; 4 uses
  %.01315.i.i.i.i.ph = phi ptr [ %.015.lcssa.i.i.i, %vector.memcheck25 ], [ %.015.lcssa.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ay, %middle.block44 ] ; 2 uses
  %i.bg = add i64 %.016.i.i.i.i.ph, -1
  %xtraiter = and i64 %.016.i.i.i.i.ph, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader100, %.lr.ph.i.i.i.i.prol
  %i.bh = phi i32 [ %i.bj, %.lr.ph.i.i.i.i.prol ], [ %.ph101, %.lr.ph.i.i.i.i.preheader100 ]
  %.016.i.i.i.i.prol = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.prol ], [ %.016.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader100 ]
  %.01315.i.i.i.i.prol = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.prol ], [ %.01315.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader100 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader100 ]
  %i.bi = add i64 %.016.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.prol) ]
  store i32 0, ptr %.01315.i.i.i.i.prol, align 4, !tbaa !249
  %i.bj = add i32 %i.bh, 1                        ; 3 uses
  store i32 %i.bj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bk = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !4566

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader100
  %.unr = phi i32 [ %.ph101, %.lr.ph.i.i.i.i.preheader100 ], [ %i.bj, %.lr.ph.i.i.i.i.prol ]
  %.016.i.i.i.i.unr = phi i64 [ %.016.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader100 ], [ %i.bi, %.lr.ph.i.i.i.i.prol ]
  %.01315.i.i.i.i.unr = phi ptr [ %.01315.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader100 ], [ %i.bk, %.lr.ph.i.i.i.i.prol ]
  %i.bl = icmp ult i64 %i.bg, 3
  br i1 %i.bl, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.bm = phi i32 [ %i.bu, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.016.i.i.i.i = phi i64 [ %i.bt, %.lr.ph.i.i.i.i ], [ %.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01315.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i ], [ %.01315.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i) ]
  store i32 0, ptr %.01315.i.i.i.i, align 4, !tbaa !249
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bo = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 4
  store i32 0, ptr %i.bo, align 4, !tbaa !249
  %i.bp = add i32 %i.bm, 2
  store i32 %i.bp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bq = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 8
  store i32 0, ptr %i.bq, align 4, !tbaa !249
  %i.br = add i32 %i.bm, 3
  store i32 %i.br, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bs = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 12
  %i.bt = add i64 %.016.i.i.i.i, -4               ; 2 uses
  store i32 0, ptr %i.bs, align 4, !tbaa !249
  %i.bu = add i32 %i.bm, 4                        ; 2 uses
  store i32 %i.bu, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bv = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i.i.i.3, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4567

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block44, %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.not16.i19.i.i = icmp eq ptr %2, %i.w
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i
  %i.bw = getelementptr [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3 ; 6 uses
  %.pre8 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.bx = shl i64 %i.v, 2
  %i.by = add i64 %i.bx, %i.u
  %i.bz = add i64 %i.by, -4
  %i.ca = sub i64 %i.bz, %i.a                     ; 2 uses
  %i.cb = lshr i64 %i.ca, 2
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check63 = icmp ult i64 %i.ca, 156
  br i1 %min.iters.check63, label %.lr.ph.i20.i.i.preheader, label %vector.memcheck64

vector.memcheck64:                                ; preds = %.lr.ph.i20.preheader.i.i
  %i.cd = shl i64 %3, 2
  %i.ce = shl i64 %i.v, 2
  %i.cf = add i64 %i.ce, %i.u
  %i.cg = add i64 %i.cf, -4
  %i.ch = sub i64 %i.cg, %i.a
  %i.ci = and i64 %i.ch, -4                       ; 2 uses
  %i.cj = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.cd
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.ci
  %i.cl = getelementptr i8, ptr %i.ck, i64 4      ; 2 uses
  %4 = getelementptr i8, ptr %2, i64 %i.ci
  %5 = getelementptr i8, ptr %4, i64 4            ; 2 uses
  %bound065 = icmp ult ptr %i.bw, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound166 = icmp ugt ptr %i.cl, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict67 = and i1 %bound065, %bound166
  %bound068 = icmp ult ptr %i.bw, %5
  %bound169 = icmp ult ptr %2, %i.cl
  %found.conflict70 = and i1 %bound068, %bound169
  %conflict.rdx = or i1 %found.conflict67, %found.conflict70
  %bound071 = icmp ugt ptr %5, @_ZN5boost9container4test12copyable_int5countE
  %bound172 = icmp ult ptr %2, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict73 = and i1 %bound071, %bound172
  %conflict.rdx74 = or i1 %conflict.rdx, %found.conflict73
  br i1 %conflict.rdx74, label %.lr.ph.i20.i.i.preheader, label %vector.ph75

vector.ph75:                                      ; preds = %vector.memcheck64
  %n.vec76 = and i64 %i.cc, 9223372036854775800   ; 3 uses
  %i.cm = shl i64 %n.vec76, 2                     ; 2 uses
  %i.cn = getelementptr i8, ptr %2, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.bw, i64 %i.cm
  %i.cp = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre8, i64 0
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next92, %vector.body77 ] ; 2 uses
  %vec.phi79 = phi <4 x i32> [ %i.cp, %vector.ph75 ], [ %i.ct, %vector.body77 ]
  %vec.phi80 = phi <4 x i32> [ zeroinitializer, %vector.ph75 ], [ %i.cu, %vector.body77 ]
  %i.cq = shl i64 %index78, 2                     ; 2 uses
  %next.gep81 = getelementptr i8, ptr %2, i64 %i.cq ; 2 uses
  %next.gep82 = getelementptr i8, ptr %i.bw, i64 %i.cq ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep82) ]
  %i.cr = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load90 = load <4 x i32>, ptr %next.gep81, align 4, !tbaa !249, !alias.scope !4579
  %wide.load91 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !249, !alias.scope !4579
  %i.cs = getelementptr i8, ptr %next.gep82, i64 16
  store <4 x i32> %wide.load90, ptr %next.gep82, align 4, !tbaa !249, !alias.scope !4580, !noalias !4581
  store <4 x i32> %wide.load91, ptr %i.cs, align 4, !tbaa !249, !alias.scope !4580, !noalias !4581
  %i.ct = add <4 x i32> %vec.phi79, splat (i32 1) ; 2 uses
  %i.cu = add <4 x i32> %vec.phi80, splat (i32 1) ; 2 uses
  %index.next92 = add nuw i64 %index78, 8         ; 2 uses
  %i.cv = icmp eq i64 %index.next92, %n.vec76
  br i1 %i.cv, label %middle.block93, label %vector.body77, !llvm.loop !4572

middle.block93:                                   ; preds = %vector.body77
  %bin.rdx94 = add <4 x i32> %i.cu, %i.ct
  %i.cw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx94) ; 2 uses
  store i32 %i.cw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4582, !noalias !4579
  %cmp.n95 = icmp eq i64 %i.cc, %n.vec76
  br i1 %cmp.n95, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.i.i.preheader

.lr.ph.i20.i.i.preheader:                         ; preds = %vector.memcheck64, %.lr.ph.i20.preheader.i.i, %middle.block93
  %.ph = phi i32 [ %.pre8, %vector.memcheck64 ], [ %.pre8, %.lr.ph.i20.preheader.i.i ], [ %i.cw, %middle.block93 ]
  %.018.i21.i.i.ph = phi ptr [ %2, %vector.memcheck64 ], [ %2, %.lr.ph.i20.preheader.i.i ], [ %i.cn, %middle.block93 ]
  %.01517.i22.i.i.ph = phi ptr [ %i.bw, %vector.memcheck64 ], [ %i.bw, %.lr.ph.i20.preheader.i.i ], [ %i.co, %middle.block93 ]
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.preheader, %.lr.ph.i20.i.i
  %i.cx = phi i32 [ %i.cz, %.lr.ph.i20.i.i ], [ %.ph, %.lr.ph.i20.i.i.preheader ]
  %.018.i21.i.i = phi ptr [ %i.da, %.lr.ph.i20.i.i ], [ %.018.i21.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.db, %.lr.ph.i20.i.i ], [ %.01517.i22.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i.i) ]
  %i.cy = load i32, ptr %.018.i21.i.i, align 4, !tbaa !249
  store i32 %i.cy, ptr %.01517.i22.i.i, align 4, !tbaa !249
  %i.cz = add i32 %i.cx, 1                        ; 2 uses
  store i32 %i.cz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.da = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.da, %i.w
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !4573

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %middle.block93, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mSD_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %xtraiter109 = and i64 %i.v, 3                  ; 2 uses
  %lcmp.mod110.not = icmp eq i64 %xtraiter109, 0
  br i1 %lcmp.mod110.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.dc, %.lr.ph.i.i.prol ], [ %i.v, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.df, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter111 = phi i64 [ %prol.iter111.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.dc = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.dd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.de = add i32 %i.dd, -1
  store i32 %i.de, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.df = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter111.next = add i64 %prol.iter111, 1   ; 2 uses
  %prol.iter111.cmp.not = icmp eq i64 %prol.iter111.next, %xtraiter109
  br i1 %prol.iter111.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4574

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.v, %.lr.ph.i.i.preheader ], [ %i.dc, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.df, %.lr.ph.i.i.prol ]
  %i.dg = icmp ult i64 %i.v, 4
  br i1 %i.dg, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.do, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.dq, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !249
  %i.dh = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.di = add i32 %i.dh, -1
  store i32 %i.di, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.dj, align 4, !tbaa !249
  %i.dk = add i32 %i.dh, -2
  store i32 %i.dk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dl = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.dl, align 4, !tbaa !249
  %i.dm = add i32 %i.dh, -3
  store i32 %i.dm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dn = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.do = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.dn, align 4, !tbaa !249
  %i.dp = add i32 %i.dh, -4
  store i32 %i.dp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !26

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ds = icmp eq ptr %i.dr, %i.t
  br i1 %i.ds, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mSD_mT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.dt = load i64, ptr %i.b, align 8, !tbaa !246
  %i.du = shl i64 %i.dt, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.du) #22
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !245
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mSD_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mSD_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.h
  %i.dv = phi i64 [ %i.v, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ], [ %i.v, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ]
  %i.dw = ptrtoint ptr %2 to i64
  %i.dx = ptrtoint ptr %i.t to i64
  %i.dy = sub i64 %i.dw, %i.dx
  store ptr %i.s, ptr %1, align 8, !tbaa !247
  %i.dz = add i64 %i.dv, %3
  store i64 %i.dz, ptr %i.e, align 8, !tbaa !245
  store i64 %i.p, ptr %i.b, align 8, !tbaa !84
  %i.ea = getelementptr inbounds i8, ptr %i.s, i64 %i.dy
  store ptr %i.ea, ptr %0, align 8, !tbaa !289
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE7emplaceIJS3_EEENS0_12vec_iteratorIPS3_Lb0EEENSA_ISB_Lb1EEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4585)
  %i.a = load ptr, ptr %2, align 8, !tbaa !285, !noalias !4585 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !246, !noalias !4585
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !254, !noalias !4585 ; 5 uses
  %.not.i = icmp eq i64 %i.c, %i.e
  br i1 %.not.i, label %bb.e, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !247, !noalias !4585 ; 5 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.e ; 5 uses
  %.not.i.i = icmp eq ptr %i.g, %i.a
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.h = load i32, ptr %3, align 4, !tbaa !249, !noalias !4585
  store i32 %i.h, ptr %i.g, align 4, !tbaa !249, !noalias !4585
  %i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !4585
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !4585
  %i.k = add i64 %i.e, 1
  store i64 %i.k, ptr %i.d, align 8, !tbaa !254, !noalias !4585
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i

bb.d:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = sub i64 %i.m, %i.l                       ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 -4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.p = load i32, ptr %i.o, align 4, !tbaa !249, !noalias !4585
  store i32 %i.p, ptr %i.g, align 4, !tbaa !249, !noalias !4585
  %i.q = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !4585
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !4585
  %i.s = add i64 %i.e, 1
  store i64 %i.s, ptr %i.d, align 8, !tbaa !254, !noalias !4585
  %i.t = icmp eq i64 %i.n, 4
  br i1 %i.t, label %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.d
  %i.u = shl nuw nsw i64 %i.e, 2                  ; 2 uses
  %i.v = add nuw i64 %i.u, 4
  %i.w = sub i64 %i.v, %i.n
  %scevgep.i.i = getelementptr i8, ptr %i.f, i64 %i.w
  %i.x = sub i64 %i.u, %i.n
  %scevgep15.i.i = getelementptr i8, ptr %i.f, i64 %i.x
  %i.y = add i64 %i.n, -4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep.i.i, ptr align 4 %scevgep15.i.i, i64 %i.y, i1 false), !tbaa !249, !noalias !4585
  br label %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i

_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i: ; preds = %.lr.ph.i.preheader.i.i, %bb.d
  %i.z = load i32, ptr %3, align 4, !tbaa !249, !noalias !4585
  store i32 %i.z, ptr %i.a, align 4, !tbaa !249, !noalias !4585
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i: ; preds = %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i, %bb.c
  store ptr %i.a, ptr %0, align 8, !tbaa !289, !alias.scope !4585
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.a, i64 noundef 1, ptr nonnull %3)
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit: ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !246  ; 6 uses
  %i.d = sub i64 2305843009213693951, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !245  ; 2 uses
  %.neg.i = sub i64 %3, %i.c
  %i.g = add i64 %.neg.i, %i.f
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = shl nuw i64 %i.c, 3
  %i.k = udiv i64 %i.j, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.c, -6917529027641081857
  %i.m = shl i64 %i.c, 3
  %spec.select.i.i = select i1 %i.l, i64 -1, i64 %i.m
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.k, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.n = add i64 %i.f, %3                         ; 2 uses
  %i.o = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.o) ; 2 uses
  %i.q = icmp ugt i64 %i.n, 2305843009213693951
  br i1 %i.q, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !74

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.r = shl nuw nsw i64 %i.p, 2
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #25 ; 7 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !247    ; 15 uses
  %i.u = ptrtoaddr ptr %i.t to i64                ; 3 uses
  %i.v = load i64, ptr %i.e, align 8, !tbaa !254  ; 10 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.v ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.t, %2
  %.pre = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  br i1 %.not16.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %i.x = add i64 %i.a, -4
  %i.y = sub i64 %i.x, %i.u                       ; 3 uses
  %i.z = lshr i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader63, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ab = and i64 %i.y, -4
  %i.ac = getelementptr i8, ptr %i.t, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %bound0 = icmp ugt ptr %i.ad, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.t, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader63, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 9223372036854775800     ; 3 uses
  %i.ae = shl i64 %n.vec, 2                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.s, i64 %i.ae   ; 2 uses
  %i.ah = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ah, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi16 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %i.ai = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ai ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.s, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !249, !alias.scope !4598
  %wide.load18 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !249, !alias.scope !4598
  %i.ak = getelementptr i8, ptr %next.gep17, i64 16
  store <4 x i32> %wide.load, ptr %next.gep17, align 4, !tbaa !249
  store <4 x i32> %wide.load18, ptr %i.ak, align 4, !tbaa !249
  %i.al = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.am = add <4 x i32> %vec.phi16, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !4588

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.am, %i.al
  %i.ao = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 3 uses
  store i32 %i.ao, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4599, !noalias !4598
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader63

.lr.ph.i.i.i.preheader63:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph64 = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.018.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.01517.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader63, %.lr.ph.i.i.i
  %i.ap = phi i32 [ %i.ar, %.lr.ph.i.i.i ], [ %.ph64, %.lr.ph.i.i.i.preheader63 ]
  %.018.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader63 ] ; 2 uses
  %.01517.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.01517.i.i.i.ph, %.lr.ph.i.i.i.preheader63 ] ; 2 uses
  %i.aq = load i32, ptr %.018.i.i.i, align 4, !tbaa !249
  store i32 %i.aq, ptr %.01517.i.i.i, align 4, !tbaa !249
  %i.ar = add i32 %i.ap, 1                        ; 3 uses
  store i32 %i.ar, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.as = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %2
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !4590

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %i.au = phi i32 [ %.pre, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ao, %middle.block ], [ %i.ar, %.lr.ph.i.i.i ]
  %.015.lcssa.i.i.i = phi ptr [ %i.s, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ag, %middle.block ], [ %i.at, %.lr.ph.i.i.i ] ; 3 uses
  %i.av = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.av, ptr %.015.lcssa.i.i.i, align 4, !tbaa !249
  %i.aw = add i32 %i.au, 1                        ; 4 uses
  store i32 %i.aw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %.not16.i19.i.i = icmp eq ptr %2, %i.w
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %.loopexit.i.i
  %i.ax = getelementptr [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3 ; 6 uses
  %i.ay = shl i64 %i.v, 2
  %i.az = add i64 %i.ay, %i.u
  %i.ba = add i64 %i.az, -4
  %i.bb = sub i64 %i.ba, %i.a                     ; 2 uses
  %i.bc = lshr i64 %i.bb, 2
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check33 = icmp ult i64 %i.bb, 156
  br i1 %min.iters.check33, label %.lr.ph.i20.i.i.preheader, label %vector.memcheck34

vector.memcheck34:                                ; preds = %.lr.ph.i20.preheader.i.i
  %i.be = shl i64 %3, 2
  %i.bf = shl i64 %i.v, 2
  %i.bg = add i64 %i.bf, %i.u
  %i.bh = add i64 %i.bg, -4
  %i.bi = sub i64 %i.bh, %i.a
  %i.bj = and i64 %i.bi, -4                       ; 2 uses
  %i.bk = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.be
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.bj
  %i.bm = getelementptr i8, ptr %i.bl, i64 4      ; 2 uses
  %5 = getelementptr i8, ptr %2, i64 %i.bj
  %6 = getelementptr i8, ptr %5, i64 4            ; 2 uses
  %bound035 = icmp ult ptr %i.ax, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound136 = icmp ugt ptr %i.bm, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict37 = and i1 %bound035, %bound136
  %bound038 = icmp ult ptr %i.ax, %6
  %bound139 = icmp ult ptr %2, %i.bm
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx = or i1 %found.conflict37, %found.conflict40
  %bound041 = icmp ugt ptr %6, @_ZN5boost9container4test12copyable_int5countE
  %bound142 = icmp ult ptr %2, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %conflict.rdx, %found.conflict43
  br i1 %conflict.rdx44, label %.lr.ph.i20.i.i.preheader, label %vector.ph45

vector.ph45:                                      ; preds = %vector.memcheck34
  %n.vec46 = and i64 %i.bd, 9223372036854775800   ; 3 uses
  %i.bn = shl i64 %n.vec46, 2                     ; 2 uses
  %i.bo = getelementptr i8, ptr %2, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.ax, i64 %i.bn
  %i.bq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.aw, i64 0
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph45
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next55, %vector.body47 ] ; 2 uses
  %vec.phi49 = phi <4 x i32> [ %i.bq, %vector.ph45 ], [ %i.bu, %vector.body47 ]
  %vec.phi50 = phi <4 x i32> [ zeroinitializer, %vector.ph45 ], [ %i.bv, %vector.body47 ]
  %i.br = shl i64 %index48, 2                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %2, i64 %i.br ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.ax, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load53 = load <4 x i32>, ptr %next.gep51, align 4, !tbaa !249, !alias.scope !4600
  %wide.load54 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !249, !alias.scope !4600
  %i.bt = getelementptr i8, ptr %next.gep52, i64 16
  store <4 x i32> %wide.load53, ptr %next.gep52, align 4, !tbaa !249, !alias.scope !4601, !noalias !4602
  store <4 x i32> %wide.load54, ptr %i.bt, align 4, !tbaa !249, !alias.scope !4601, !noalias !4602
  %i.bu = add <4 x i32> %vec.phi49, splat (i32 1) ; 2 uses
  %i.bv = add <4 x i32> %vec.phi50, splat (i32 1) ; 2 uses
  %index.next55 = add nuw i64 %index48, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next55, %n.vec46
  br i1 %i.bw, label %middle.block56, label %vector.body47, !llvm.loop !4595

middle.block56:                                   ; preds = %vector.body47
  %bin.rdx57 = add <4 x i32> %i.bv, %i.bu
  %i.bx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx57) ; 2 uses
  store i32 %i.bx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4603, !noalias !4600
  %cmp.n58 = icmp eq i64 %i.bd, %n.vec46
  br i1 %cmp.n58, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.i.i.preheader

.lr.ph.i20.i.i.preheader:                         ; preds = %vector.memcheck34, %.lr.ph.i20.preheader.i.i, %middle.block56
  %.ph = phi i32 [ %i.aw, %vector.memcheck34 ], [ %i.aw, %.lr.ph.i20.preheader.i.i ], [ %i.bx, %middle.block56 ]
  %.018.i21.i.i.ph = phi ptr [ %2, %vector.memcheck34 ], [ %2, %.lr.ph.i20.preheader.i.i ], [ %i.bo, %middle.block56 ]
  %.01517.i22.i.i.ph = phi ptr [ %i.ax, %vector.memcheck34 ], [ %i.ax, %.lr.ph.i20.preheader.i.i ], [ %i.bp, %middle.block56 ]
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.preheader, %.lr.ph.i20.i.i
  %i.by = phi i32 [ %i.ca, %.lr.ph.i20.i.i ], [ %.ph, %.lr.ph.i20.i.i.preheader ]
  %.018.i21.i.i = phi ptr [ %i.cb, %.lr.ph.i20.i.i ], [ %.018.i21.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.cc, %.lr.ph.i20.i.i ], [ %.01517.i22.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %i.bz = load i32, ptr %.018.i21.i.i, align 4, !tbaa !249
  store i32 %i.bz, ptr %.01517.i22.i.i, align 4, !tbaa !249
  %i.ca = add i32 %i.by, 1                        ; 2 uses
  store i32 %i.ca, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cb = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.cb, %i.w
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !4596

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %middle.block56, %.loopexit.i.i
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mSD_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.cd, %.lr.ph.i.i.prol ], [ %i.v, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.cg, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.cd = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.ce = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cf = add i32 %i.ce, -1
  store i32 %i.cf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4597

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.v, %.lr.ph.i.i.preheader ], [ %i.cd, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.cg, %.lr.ph.i.i.prol ]
  %i.ch = icmp ult i64 %i.v, 4
  br i1 %i.ch, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.cp, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.cr, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !249
  %i.ci = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.cj = add i32 %i.ci, -1
  store i32 %i.cj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ck = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.ck, align 4, !tbaa !249
  %i.cl = add i32 %i.ci, -2
  store i32 %i.cl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.cm, align 4, !tbaa !249
  %i.cn = add i32 %i.ci, -3
  store i32 %i.cn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.co = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.cp = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.co, align 4, !tbaa !249
  %i.cq = add i32 %i.ci, -4
  store i32 %i.cq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cr = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !26

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ct = icmp eq ptr %i.cs, %i.t
  br i1 %i.ct, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mSD_mT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.cu = load i64, ptr %i.b, align 8, !tbaa !246
  %i.cv = shl i64 %i.cu, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.cv) #22
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !245
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mSD_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mSD_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.h
  %i.cw = phi i64 [ %i.v, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ], [ %i.v, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ]
  %i.cx = ptrtoint ptr %2 to i64
  %i.cy = ptrtoint ptr %i.t to i64
  %i.cz = sub i64 %i.cx, %i.cy
  store ptr %i.s, ptr %1, align 8, !tbaa !247
  %i.da = add i64 %i.cw, %3
  store i64 %i.da, ptr %i.e, align 8, !tbaa !245
  store i64 %i.p, ptr %i.b, align 8, !tbaa !84
  %i.db = getelementptr inbounds i8, ptr %i.s, i64 %i.cz
  store ptr %i.db, ptr %0, align 8, !tbaa !289
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISD_Lb0EEERKSD_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !285    ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !246
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !254  ; 4 uses
  %i.g = sub i64 %i.d, %i.f
  %.not = icmp ugt i64 %3, %i.g
  br i1 %.not, label %bb.g, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !247    ; 2 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f ; 13 uses
  %i.k = icmp eq ptr %i.j, %i.b
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.l = add i64 %3, -1
  %xtraiter82 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.018.i.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01417.i.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.sroa.0.016.i.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter84 = phi i64 [ %prol.iter84.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.prol) ]
  %i.m = load i32, ptr %.sroa.0.016.i.i.i.i.prol, align 4, !tbaa !249
  store i32 %i.m, ptr %.01417.i.i.i.i.prol, align 4, !tbaa !249
  %i.n = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.prol, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.prol, i64 4 ; 2 uses
  %i.r = add i64 %.018.i.i.i.i.prol, -1           ; 2 uses
  %prol.iter84.next = add i64 %prol.iter84, 1     ; 2 uses
  %prol.iter84.cmp.not = icmp eq i64 %prol.iter84.next, %xtraiter82
  br i1 %prol.iter84.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !4604

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %i.s = icmp ult i64 %i.l, 3
  br i1 %i.s, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i
end_hunk_6
begin_hunk_7_@_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISD_Lb0EEERKSD_mT_:bb.a
  %i.fz = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ga = add i64 %.018.i.i.i.i.i.prol, -1        ; 2 uses
  %prol.iter81.next = add i64 %prol.iter81, 1     ; 2 uses
  %prol.iter81.cmp.not = icmp eq i64 %prol.iter81.next, %xtraiter79
  br i1 %prol.iter81.cmp.not, label %.lr.ph.i.i60.i.i.i.prol.loopexit, label %.lr.ph.i.i60.i.i.i.prol, !llvm.loop !4615

.lr.ph.i.i60.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i60.i.i.i.prol, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i
  %.018.i.i.i.i.i.unr = phi i64 [ %i.fu, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i ], [ %i.ga, %.lr.ph.i.i60.i.i.i.prol ]
  %.01417.i.i.i.i.i.unr = phi ptr [ %i.j, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i ], [ %i.fz, %.lr.ph.i.i60.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.i.unr = phi ptr [ %.lcssa, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE17copy_n_and_updateISA_EEvRS8_T_m.exit58.i.i.i ], [ %i.fy, %.lr.ph.i.i60.i.i.i.prol ]
  %i.gb = sub i64 %i.ao, %3
  %i.gc = icmp ugt i64 %i.gb, -4
  br i1 %i.gc, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i60.i.i.i

.lr.ph.i.i60.i.i.i:                               ; preds = %.lr.ph.i.i60.i.i.i.prol.loopexit, %.lr.ph.i.i60.i.i.i
  %.018.i.i.i.i.i = phi i64 [ %i.gu, %.lr.ph.i.i60.i.i.i ], [ %.018.i.i.i.i.i.unr, %.lr.ph.i.i60.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i.i = phi ptr [ %i.gt, %.lr.ph.i.i60.i.i.i ], [ %.01417.i.i.i.i.i.unr, %.lr.ph.i.i60.i.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i.i.i.i = phi ptr [ %i.gs, %.lr.ph.i.i60.i.i.i ], [ %.sroa.0.016.i.i.i.i.i.unr, %.lr.ph.i.i60.i.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.i) ]
  %i.gd = load i32, ptr %.sroa.0.016.i.i.i.i.i, align 4, !tbaa !249
  store i32 %i.gd, ptr %.01417.i.i.i.i.i, align 4, !tbaa !249
  %i.ge = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i, i64 4
  %i.gh = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i, i64 4
  %i.gi = load i32, ptr %i.gg, align 4, !tbaa !249
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !249
  %i.gj = add i32 %i.ge, 2
  store i32 %i.gj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i, i64 8
  %i.gm = load i32, ptr %i.gk, align 4, !tbaa !249
  store i32 %i.gm, ptr %i.gl, align 4, !tbaa !249
  %i.gn = add i32 %i.ge, 3
  store i32 %i.gn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i, i64 12
  %i.gp = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i, i64 12
  %i.gq = load i32, ptr %i.go, align 4, !tbaa !249
  store i32 %i.gq, ptr %i.gp, align 4, !tbaa !249
  %i.gr = add i32 %i.ge, 4
  store i32 %i.gr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i, i64 16
  %i.gt = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i, i64 16
  %i.gu = add i64 %.018.i.i.i.i.i, -4             ; 2 uses
  %.not.i.i61.i.i.i.3 = icmp eq i64 %i.gu, 0
  br i1 %.not.i.i61.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i60.i.i.i, !llvm.loop !4605

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i60.i.i.i.prol.loopexit, %.lr.ph.i.i60.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block41, %bb.c, %bb.d
  %i.gv = add i64 %i.f, %3
  store i64 %i.gv, ptr %i.e, align 8, !tbaa !245
  store ptr %i.b, ptr %0, align 8, !tbaa !289
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISD_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.b, i64 noundef %3, ptr %4)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISD_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !246  ; 6 uses
  %i.d = sub i64 2305843009213693951, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !245  ; 2 uses
  %.neg.i = sub i64 %3, %i.c
  %i.g = add i64 %.neg.i, %i.f
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = shl nuw i64 %i.c, 3
  %i.k = udiv i64 %i.j, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.c, -6917529027641081857
  %i.m = shl i64 %i.c, 3
  %spec.select.i.i = select i1 %i.l, i64 -1, i64 %i.m
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.k, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.n = add i64 %i.f, %3                         ; 2 uses
  %i.o = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.o) ; 2 uses
  %i.q = icmp ugt i64 %i.n, 2305843009213693951
  br i1 %i.q, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !74

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.r = shl nuw nsw i64 %i.p, 2
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #25 ; 7 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !247    ; 15 uses
  %i.u = ptrtoaddr ptr %i.t to i64                ; 3 uses
  %i.v = load i64, ptr %i.e, align 8, !tbaa !254  ; 10 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.v ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.t, %2
  br i1 %.not16.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.x = add i64 %i.a, -4
  %i.y = sub i64 %i.x, %i.u                       ; 3 uses
  %i.z = lshr i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader126, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ab = and i64 %i.y, -4
  %i.ac = getelementptr i8, ptr %i.t, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %bound0 = icmp ugt ptr %i.ad, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.t, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader126, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 9223372036854775800     ; 3 uses
  %i.ae = shl i64 %n.vec, 2                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.s, i64 %i.ae   ; 2 uses
  %i.ah = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test12copyable_int5countE.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ah, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi16 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %i.ai = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ai ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.s, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !249, !alias.scope !4635
  %wide.load18 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !249, !alias.scope !4635
  %i.ak = getelementptr i8, ptr %next.gep17, i64 16
  store <4 x i32> %wide.load, ptr %next.gep17, align 4, !tbaa !249
  store <4 x i32> %wide.load18, ptr %i.ak, align 4, !tbaa !249
  %i.al = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.am = add <4 x i32> %vec.phi16, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !4618

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.am, %i.al
  %i.ao = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ao, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4636, !noalias !4635
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i.preheader126

.lr.ph.i.i.i.preheader126:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph127 = phi i32 [ %_ZN5boost9container4test12copyable_int5countE.promoted, %vector.memcheck ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.018.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.01517.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader126, %.lr.ph.i.i.i
  %i.ap = phi i32 [ %i.ar, %.lr.ph.i.i.i ], [ %.ph127, %.lr.ph.i.i.i.preheader126 ]
  %.018.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader126 ] ; 2 uses
  %.01517.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.01517.i.i.i.ph, %.lr.ph.i.i.i.preheader126 ] ; 2 uses
  %i.aq = load i32, ptr %.018.i.i.i, align 4, !tbaa !249
  store i32 %i.aq, ptr %.01517.i.i.i, align 4, !tbaa !249
  %i.ar = add i32 %i.ap, 1                        ; 2 uses
  store i32 %i.ar, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.as = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %2
  br i1 %.not.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !4620

_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.s, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ag, %middle.block ], [ %i.at, %.lr.ph.i.i.i ] ; 9 uses
  %.not15.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateISA_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.pre = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %min.iters.check33 = icmp ult i64 %3, 20
  br i1 %min.iters.check33, label %.lr.ph.i.i.i.i.preheader122, label %vector.memcheck34

vector.memcheck34:                                ; preds = %.lr.ph.i.i.i.i.preheader
  %i.au = shl i64 %3, 2                           ; 2 uses
  %5 = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %4, i64 %i.au     ; 2 uses
  %bound035 = icmp ult ptr %.015.lcssa.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound136 = icmp ugt ptr %5, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict37 = and i1 %bound035, %bound136
  %bound038 = icmp ult ptr %.015.lcssa.i.i.i, %i.av
  %bound139 = icmp ult ptr %4, %5
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx = or i1 %found.conflict37, %found.conflict40
  %bound041 = icmp ugt ptr %i.av, @_ZN5boost9container4test12copyable_int5countE
  %bound142 = icmp ult ptr %4, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %conflict.rdx, %found.conflict43
  br i1 %conflict.rdx44, label %.lr.ph.i.i.i.i.preheader122, label %vector.ph45

vector.ph45:                                      ; preds = %vector.memcheck34
  %n.vec46 = and i64 %3, -8                       ; 3 uses
  %i.aw = and i64 %3, 7
  %i.ax = shl i64 %n.vec46, 2                     ; 2 uses
  %i.ay = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ax
  %i.az = getelementptr i8, ptr %4, i64 %i.ax
  %i.ba = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph45
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next62, %vector.body47 ] ; 2 uses
  %vec.phi49 = phi <4 x i32> [ %i.ba, %vector.ph45 ], [ %i.be, %vector.body47 ]
  %vec.phi50 = phi <4 x i32> [ zeroinitializer, %vector.ph45 ], [ %i.bf, %vector.body47 ]
  %i.bb = shl i64 %index48, 2                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.bb ; 3 uses
  %next.gep59 = getelementptr i8, ptr %4, i64 %i.bb ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep51) ]
  %i.bc = getelementptr i8, ptr %next.gep59, i64 16
  %wide.load60 = load <4 x i32>, ptr %next.gep59, align 4, !tbaa !249, !alias.scope !4637
  %wide.load61 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !249, !alias.scope !4637
  %i.bd = getelementptr i8, ptr %next.gep51, i64 16
  store <4 x i32> %wide.load60, ptr %next.gep51, align 4, !tbaa !249, !alias.scope !4638, !noalias !4639
  store <4 x i32> %wide.load61, ptr %i.bd, align 4, !tbaa !249, !alias.scope !4638, !noalias !4639
  %i.be = add <4 x i32> %vec.phi49, splat (i32 1) ; 2 uses
  %i.bf = add <4 x i32> %vec.phi50, splat (i32 1) ; 2 uses
  %index.next62 = add nuw i64 %index48, 8         ; 2 uses
  %i.bg = icmp eq i64 %index.next62, %n.vec46
  br i1 %i.bg, label %middle.block63, label %vector.body47, !llvm.loop !4625

middle.block63:                                   ; preds = %vector.body47
  %bin.rdx64 = add <4 x i32> %i.bf, %i.be
  %i.bh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx64) ; 2 uses
  store i32 %i.bh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4640, !noalias !4637
  %cmp.n65 = icmp eq i64 %3, %n.vec46
  br i1 %cmp.n65, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateISA_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader122

.lr.ph.i.i.i.i.preheader122:                      ; preds = %vector.memcheck34, %.lr.ph.i.i.i.i.preheader, %middle.block63
  %.ph123 = phi i32 [ %.pre, %vector.memcheck34 ], [ %.pre, %.lr.ph.i.i.i.i.preheader ], [ %i.bh, %middle.block63 ] ; 2 uses
  %.018.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck34 ], [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.aw, %middle.block63 ] ; 4 uses
  %.01417.i.i.i.i.ph = phi ptr [ %.015.lcssa.i.i.i, %vector.memcheck34 ], [ %.015.lcssa.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ay, %middle.block63 ] ; 2 uses
  %.sroa.0.016.i.i.i.i.ph = phi ptr [ %4, %vector.memcheck34 ], [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.az, %middle.block63 ] ; 2 uses
  %i.bi = add i64 %.018.i.i.i.i.ph, -1
  %xtraiter = and i64 %.018.i.i.i.i.ph, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader122, %.lr.ph.i.i.i.i.prol
  %i.bj = phi i32 [ %i.bl, %.lr.ph.i.i.i.i.prol ], [ %.ph123, %.lr.ph.i.i.i.i.preheader122 ]
  %.018.i.i.i.i.prol = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.prol ], [ %.018.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader122 ]
  %.01417.i.i.i.i.prol = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.prol ], [ %.01417.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader122 ] ; 3 uses
  %.sroa.0.016.i.i.i.i.prol = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.prol ], [ %.sroa.0.016.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader122 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader122 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.prol) ]
  %i.bk = load i32, ptr %.sroa.0.016.i.i.i.i.prol, align 4, !tbaa !249
  store i32 %i.bk, ptr %.01417.i.i.i.i.prol, align 4, !tbaa !249
  %i.bl = add i32 %i.bj, 1                        ; 3 uses
  store i32 %i.bl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.prol, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.prol, i64 4 ; 2 uses
  %i.bo = add i64 %.018.i.i.i.i.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !4626

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader122
  %.unr = phi i32 [ %.ph123, %.lr.ph.i.i.i.i.preheader122 ], [ %i.bl, %.lr.ph.i.i.i.i.prol ]
  %.018.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader122 ], [ %i.bo, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %.01417.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader122 ], [ %i.bn, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %.sroa.0.016.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader122 ], [ %i.bm, %.lr.ph.i.i.i.i.prol ]
  %i.bp = icmp ult i64 %i.bi, 3
  br i1 %i.bp, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateISA_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.bq = phi i32 [ %i.ce, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.018.i.i.i.i = phi i64 [ %i.ch, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.br = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !249
  store i32 %i.br, ptr %.01417.i.i.i.i, align 4, !tbaa !249
  %i.bs = add i32 %i.bq, 1
  store i32 %i.bs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !249
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !249
  %i.bw = add i32 %i.bq, 2
  store i32 %i.bw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !249
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !249
  %i.ca = add i32 %i.bq, 3
  store i32 %i.ca, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 12
  %i.cc = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 12
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !249
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !249
  %i.ce = add i32 %i.bq, 4                        ; 2 uses
  store i32 %i.ce, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 16
  %i.ch = add i64 %.018.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateISA_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4627

_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateISA_EEvRS8_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block63, %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.not16.i19.i.i = icmp eq ptr %2, %i.w
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateISA_EEvRS8_T_m.exit.i.i
  %i.ci = getelementptr [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3 ; 6 uses
  %.pre9 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.cj = shl i64 %i.v, 2
  %i.ck = add i64 %i.cj, %i.u
  %i.cl = add i64 %i.ck, -4
  %i.cm = sub i64 %i.cl, %i.a                     ; 2 uses
  %i.cn = lshr i64 %i.cm, 2
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check84 = icmp ult i64 %i.cm, 156
  br i1 %min.iters.check84, label %.lr.ph.i20.i.i.preheader, label %vector.memcheck85

vector.memcheck85:                                ; preds = %.lr.ph.i20.preheader.i.i
  %i.cp = shl i64 %3, 2
  %i.cq = shl i64 %i.v, 2
  %i.cr = add i64 %i.cq, %i.u
  %i.cs = add i64 %i.cr, -4
  %i.ct = sub i64 %i.cs, %i.a
  %i.cu = and i64 %i.ct, -4                       ; 2 uses
  %i.cv = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.cp
  %i.cw = getelementptr i8, ptr %i.cv, i64 %i.cu
  %i.cx = getelementptr i8, ptr %i.cw, i64 4      ; 2 uses
  %6 = getelementptr i8, ptr %2, i64 %i.cu
  %7 = getelementptr i8, ptr %6, i64 4            ; 2 uses
  %bound086 = icmp ult ptr %i.ci, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound187 = icmp ugt ptr %i.cx, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict88 = and i1 %bound086, %bound187
  %bound089 = icmp ult ptr %i.ci, %7
  %bound190 = icmp ult ptr %2, %i.cx
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx92 = or i1 %found.conflict88, %found.conflict91
  %bound093 = icmp ugt ptr %7, @_ZN5boost9container4test12copyable_int5countE
  %bound194 = icmp ult ptr %2, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict95 = and i1 %bound093, %bound194
  %conflict.rdx96 = or i1 %conflict.rdx92, %found.conflict95
  br i1 %conflict.rdx96, label %.lr.ph.i20.i.i.preheader, label %vector.ph97

vector.ph97:                                      ; preds = %vector.memcheck85
  %n.vec98 = and i64 %i.co, 9223372036854775800   ; 3 uses
  %i.cy = shl i64 %n.vec98, 2                     ; 2 uses
  %i.cz = getelementptr i8, ptr %2, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.ci, i64 %i.cy
  %i.db = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre9, i64 0
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph97
  %index100 = phi i64 [ 0, %vector.ph97 ], [ %index.next114, %vector.body99 ] ; 2 uses
  %vec.phi101 = phi <4 x i32> [ %i.db, %vector.ph97 ], [ %i.df, %vector.body99 ]
  %vec.phi102 = phi <4 x i32> [ zeroinitializer, %vector.ph97 ], [ %i.dg, %vector.body99 ]
  %i.dc = shl i64 %index100, 2                    ; 2 uses
  %next.gep103 = getelementptr i8, ptr %2, i64 %i.dc ; 2 uses
  %next.gep104 = getelementptr i8, ptr %i.ci, i64 %i.dc ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep104) ]
  %i.dd = getelementptr i8, ptr %next.gep103, i64 16
  %wide.load112 = load <4 x i32>, ptr %next.gep103, align 4, !tbaa !249, !alias.scope !4641
  %wide.load113 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !249, !alias.scope !4641
  %i.de = getelementptr i8, ptr %next.gep104, i64 16
  store <4 x i32> %wide.load112, ptr %next.gep104, align 4, !tbaa !249, !alias.scope !4642, !noalias !4643
  store <4 x i32> %wide.load113, ptr %i.de, align 4, !tbaa !249, !alias.scope !4642, !noalias !4643
  %i.df = add <4 x i32> %vec.phi101, splat (i32 1) ; 2 uses
  %i.dg = add <4 x i32> %vec.phi102, splat (i32 1) ; 2 uses
  %index.next114 = add nuw i64 %index100, 8       ; 2 uses
  %i.dh = icmp eq i64 %index.next114, %n.vec98
  br i1 %i.dh, label %middle.block115, label %vector.body99, !llvm.loop !4632

middle.block115:                                  ; preds = %vector.body99
  %bin.rdx116 = add <4 x i32> %i.dg, %i.df
  %i.di = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx116) ; 2 uses
  store i32 %i.di, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4644, !noalias !4641
  %cmp.n117 = icmp eq i64 %i.co, %n.vec98
  br i1 %cmp.n117, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, label %.lr.ph.i20.i.i.preheader

.lr.ph.i20.i.i.preheader:                         ; preds = %vector.memcheck85, %.lr.ph.i20.preheader.i.i, %middle.block115
  %.ph = phi i32 [ %.pre9, %vector.memcheck85 ], [ %.pre9, %.lr.ph.i20.preheader.i.i ], [ %i.di, %middle.block115 ]
  %.018.i21.i.i.ph = phi ptr [ %2, %vector.memcheck85 ], [ %2, %.lr.ph.i20.preheader.i.i ], [ %i.cz, %middle.block115 ]
  %.01517.i22.i.i.ph = phi ptr [ %i.ci, %vector.memcheck85 ], [ %i.ci, %.lr.ph.i20.preheader.i.i ], [ %i.da, %middle.block115 ]
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.preheader, %.lr.ph.i20.i.i
  %i.dj = phi i32 [ %i.dl, %.lr.ph.i20.i.i ], [ %.ph, %.lr.ph.i20.i.i.preheader ]
  %.018.i21.i.i = phi ptr [ %i.dm, %.lr.ph.i20.i.i ], [ %.018.i21.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.dn, %.lr.ph.i20.i.i ], [ %.01517.i22.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i.i) ]
  %i.dk = load i32, ptr %.018.i21.i.i, align 4, !tbaa !249
  store i32 %i.dk, ptr %.01517.i22.i.i, align 4, !tbaa !249
  %i.dl = add i32 %i.dj, 1                        ; 2 uses
  store i32 %i.dl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dm = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.dm, %i.w
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !4633

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %middle.block115, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateISA_EEvRS8_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mSD_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %xtraiter131 = and i64 %i.v, 3                  ; 2 uses
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.do, %.lr.ph.i.i.prol ], [ %i.v, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.dr, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter133 = phi i64 [ %prol.iter133.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.do = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.dp = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dq = add i32 %i.dp, -1
  store i32 %i.dq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dr = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter133.next = add i64 %prol.iter133, 1   ; 2 uses
  %prol.iter133.cmp.not = icmp eq i64 %prol.iter133.next, %xtraiter131
  br i1 %prol.iter133.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4634

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.v, %.lr.ph.i.i.preheader ], [ %i.do, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.dr, %.lr.ph.i.i.prol ]
  %i.ds = icmp ult i64 %i.v, 4
  br i1 %i.ds, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.ea, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ec, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !249
  %i.dt = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.du = add i32 %i.dt, -1
  store i32 %i.du, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dv = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.dv, align 4, !tbaa !249
  %i.dw = add i32 %i.dt, -2
  store i32 %i.dw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dx = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.dx, align 4, !tbaa !249
  %i.dy = add i32 %i.dt, -3
  store i32 %i.dy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.ea = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.dz, align 4, !tbaa !249
  %i.eb = add i32 %i.dt, -4
  store i32 %i.eb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ec = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !26

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ee = icmp eq ptr %i.ed, %i.t
  br i1 %i.ee, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mSD_mT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.ef = load i64, ptr %i.b, align 8, !tbaa !246
  %i.eg = shl i64 %i.ef, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.eg) #22
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !245
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mSD_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mSD_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.h
  %i.eh = phi i64 [ %i.v, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ], [ %i.v, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ]
  %i.ei = ptrtoint ptr %2 to i64
  %i.ej = ptrtoint ptr %i.t to i64
  %i.ek = sub i64 %i.ei, %i.ej
  store ptr %i.s, ptr %1, align 8, !tbaa !247
  %i.el = add i64 %i.eh, %3
  store i64 %i.el, ptr %i.e, align 8, !tbaa !245
  store i64 %i.p, ptr %i.b, align 8, !tbaa !84
  %i.em = getelementptr inbounds i8, ptr %i.s, i64 %i.ek
  store ptr %i.em, ptr %0, align 8, !tbaa !289
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE24prot_shrink_to_fit_smallEPS3_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !246  ; 4 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !290    ; 11 uses
  %.not22 = icmp eq ptr %i.c, %1
  br i1 %.not22, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !254  ; 14 uses
  %.not23 = icmp eq i64 %i.e, 0
  br i1 %.not23, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not24 = icmp eq ptr %i.c, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = icmp eq ptr %i.f, %i.c
  %or.cond = select i1 %.not24, i1 true, i1 %i.g, !prof !83
  br i1 %or.cond, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.e, !prof !83

bb.e:                                             ; preds = %bb.d
  %i.h = shl i64 %i.b, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #22
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit: ; preds = %bb.e, %bb.d
  store ptr %1, ptr %0, align 8, !tbaa !290
  br label %.sink.split

bb.f:                                             ; preds = %bb.c
  %.not25 = icmp ugt i64 %i.e, %2
  br i1 %.not25, label %bb.h, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.f
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.020.i.prol = phi i64 [ %i.i, %.lr.ph.i.prol ], [ %i.e, %.lr.ph.i.preheader ]
  %.0819.i.prol = phi ptr [ %i.m, %.lr.ph.i.prol ], [ %i.c, %.lr.ph.i.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.n, %.lr.ph.i.prol ], [ %1, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.i = add i64 %.020.i.prol, -1                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.prol) ]
  %i.j = load i32, ptr %.0819.i.prol, align 4, !tbaa !249
end_hunk_7
begin_hunk_8_@_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE24prot_shrink_to_fit_smallEPS3_m:bb.a
  %i.ch = add i32 %i.cg, -1
  store i32 %i.ch, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ci = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 4
  store i32 -2147483648, ptr %i.ci, align 4, !tbaa !249
  %i.cj = add i32 %i.cg, -2
  store i32 %i.cj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ck = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 8
  store i32 -2147483648, ptr %i.ck, align 4, !tbaa !249
  %i.cl = add i32 %i.cg, -3
  store i32 %i.cl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 12
  %i.cn = add i64 %.05.i.i.i, -4                  ; 2 uses
  store i32 -2147483648, ptr %i.cm, align 4, !tbaa !249
  %i.co = add i32 %i.cg, -4
  store i32 %i.co, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cp = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !26

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.old.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.old6.i = icmp eq ptr %.old.i, %i.bd
  br i1 %.old6.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.i
  %i.cq = load i64, ptr %i.a, align 8, !tbaa !246
  %i.cr = shl i64 %i.cq, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.cr) #22
  %.pre.i.i = load i64, ptr %i.d, align 8, !tbaa !245
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.thread.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i, %bb.k
  %i.cs = phi i64 [ 0, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.i ], [ %.pre.i.i, %bb.k ], [ %i.be, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i ], [ %i.be, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.thread.i ]
  store ptr %i.bc, ptr %0, align 8, !tbaa !247
  store i64 %i.cs, ptr %i.d, align 8, !tbaa !245
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit29, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %.sink = phi i64 [ %2, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ], [ %i.e, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit ], [ %2, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit29 ]
  store i64 %.sink, ptr %i.a, align 8, !tbaa !84
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.h, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE12emplace_backIJS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator.140", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !254  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !246
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !247, !nonnull !76, !noundef !76
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b ; 2 uses
  %i.g = load i32, ptr %1, align 4, !tbaa !249
  store i32 %i.g, ptr %i.f, align 4, !tbaa !249
  %i.h = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8, !tbaa !254
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.k = load ptr, ptr %0, align 8, !tbaa !247
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.b
  call void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.140") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.l, i64 noundef 1, ptr nonnull %1)
  %i.m = load ptr, ptr %2, align 8, !tbaa !289
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ %i.m, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignINS0_12vec_iteratorIPS3_Lb0EEEEEvT_SD_PNS_11move_detail13disable_if_orIvNSE_7is_sameINSE_17integral_constantIjLj1EEENSH_IjLj0EEEEENSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !285    ; 9 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !285    ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ashr exact i64 %i.e, 2                   ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !246  ; 2 uses
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.j, label %bb.c, label %bb.d, !prof !74

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #25 ; 10 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !247    ; 5 uses
  %.not12 = icmp eq ptr %i.l, null
  br i1 %.not12, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !254  ; 5 uses
  %.not3.i.i = icmp eq i64 %i.n, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %xtraiter134 = and i64 %i.n, 3                  ; 2 uses
  %lcmp.mod135.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod135.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.o, %.lr.ph.i.i.prol ], [ %i.n, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.prol ], [ %i.l, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter136 = phi i64 [ %prol.iter136.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.o = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.p = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter136.next = add i64 %prol.iter136, 1   ; 2 uses
  %prol.iter136.cmp.not = icmp eq i64 %prol.iter136.next, %xtraiter134
  br i1 %prol.iter136.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4655

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.o, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.l, %.lr.ph.i.i.preheader ], [ %i.r, %.lr.ph.i.i.prol ]
  %i.s = icmp ult i64 %i.n, 4
  br i1 %i.s, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.aa, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !249
  %i.t = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.u = add i32 %i.t, -1
  store i32 %i.u, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.v, align 4, !tbaa !249
  %i.w = add i32 %i.t, -2
  store i32 %i.w, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.x, align 4, !tbaa !249
  %i.y = add i32 %i.t, -3
  store i32 %i.y, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.z = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.aa = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.z, align 4, !tbaa !249
  %i.ab = add i32 %i.t, -4
  store i32 %i.ab, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ac = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i, !llvm.loop !26

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  store i64 0, ptr %i.m, align 8, !tbaa !254
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = icmp eq ptr %i.ad, %i.l
  br i1 %i.ae, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit
  %i.af = shl nuw i64 %i.h, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.af) #22
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit: ; preds = %bb.f, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.k, ptr %0, align 8, !tbaa !247
  store i64 %i.f, ptr %i.g, align 8, !tbaa !84
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %1, align 8, !tbaa !285   ; 9 uses
  %i.ai = load ptr, ptr %2, align 8, !tbaa !285   ; 3 uses
  %.not10.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not10.i.i, label %.loopexit, label %.lr.ph.i.i13.preheader

.lr.ph.i.i13.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = ptrtoaddr ptr %i.ah to i64
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.al = add i64 %i.aj, -4
  %i.am = sub i64 %i.al, %i.ak                    ; 3 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check89 = icmp ult i64 %i.am, 124
  br i1 %min.iters.check89, label %.lr.ph.i.i13.preheader113, label %vector.memcheck90

vector.memcheck90:                                ; preds = %.lr.ph.i.i13.preheader
  %i.ap = and i64 %i.am, -4
  %i.aq = add i64 %i.ap, 4                        ; 2 uses
  %4 = getelementptr i8, ptr %i.k, i64 %i.aq      ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ah, i64 %i.aq  ; 2 uses
  %bound0 = icmp ult ptr %i.k, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %4, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound091 = icmp ult ptr %i.k, %i.ar
  %bound192 = icmp ult ptr %i.ah, %4
  %found.conflict93 = and i1 %bound091, %bound192
  %conflict.rdx = or i1 %found.conflict, %found.conflict93
  %bound094 = icmp ugt ptr %i.ar, @_ZN5boost9container4test12copyable_int5countE
  %bound195 = icmp ult ptr %i.ah, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict96 = and i1 %bound094, %bound195
  %conflict.rdx97 = or i1 %conflict.rdx, %found.conflict96
  br i1 %conflict.rdx97, label %.lr.ph.i.i13.preheader113, label %vector.ph98

vector.ph98:                                      ; preds = %vector.memcheck90
  %n.vec99 = and i64 %i.ao, 9223372036854775800   ; 3 uses
  %i.as = shl i64 %n.vec99, 2                     ; 2 uses
  %i.at = getelementptr i8, ptr %i.ah, i64 %i.as
  %i.au = getelementptr i8, ptr %i.k, i64 %i.as   ; 2 uses
  %i.av = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test12copyable_int5countE.promoted, i64 0
  br label %vector.body100

vector.body100:                                   ; preds = %vector.body100, %vector.ph98
  %index101 = phi i64 [ 0, %vector.ph98 ], [ %index.next107, %vector.body100 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.av, %vector.ph98 ], [ %i.az, %vector.body100 ]
  %vec.phi102 = phi <4 x i32> [ zeroinitializer, %vector.ph98 ], [ %i.ba, %vector.body100 ]
  %i.aw = shl i64 %index101, 2                    ; 2 uses
  %next.gep103 = getelementptr i8, ptr %i.ah, i64 %i.aw ; 2 uses
  %next.gep104 = getelementptr i8, ptr %i.k, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep103, i64 16
  %wide.load105 = load <4 x i32>, ptr %next.gep103, align 4, !tbaa !249, !alias.scope !4673
  %wide.load106 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !249, !alias.scope !4673
  %i.ay = getelementptr i8, ptr %next.gep104, i64 16
  store <4 x i32> %wide.load105, ptr %next.gep104, align 4, !tbaa !249, !alias.scope !4674, !noalias !4675
  store <4 x i32> %wide.load106, ptr %i.ay, align 4, !tbaa !249, !alias.scope !4674, !noalias !4675
  %i.az = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.ba = add <4 x i32> %vec.phi102, splat (i32 1) ; 2 uses
  %index.next107 = add nuw i64 %index101, 8       ; 2 uses
  %i.bb = icmp eq i64 %index.next107, %n.vec99
  br i1 %i.bb, label %middle.block108, label %vector.body100, !llvm.loop !4660

middle.block108:                                  ; preds = %vector.body100
  %bin.rdx = add <4 x i32> %i.ba, %i.az
  %i.bc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.bc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4676, !noalias !4673
  %cmp.n109 = icmp eq i64 %i.ao, %n.vec99
  br i1 %cmp.n109, label %.loopexit, label %.lr.ph.i.i13.preheader113

.lr.ph.i.i13.preheader113:                        ; preds = %vector.memcheck90, %.lr.ph.i.i13.preheader, %middle.block108
  %.ph = phi i32 [ %_ZN5boost9container4test12copyable_int5countE.promoted, %vector.memcheck90 ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.i.i13.preheader ], [ %i.bc, %middle.block108 ]
  %.ph114 = phi ptr [ %i.ah, %vector.memcheck90 ], [ %i.ah, %.lr.ph.i.i13.preheader ], [ %i.at, %middle.block108 ]
  %.011.i.i.ph = phi ptr [ %i.k, %vector.memcheck90 ], [ %i.k, %.lr.ph.i.i13.preheader ], [ %i.au, %middle.block108 ]
  br label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %.lr.ph.i.i13.preheader113, %.lr.ph.i.i13
  %i.bd = phi i32 [ %i.bg, %.lr.ph.i.i13 ], [ %.ph, %.lr.ph.i.i13.preheader113 ]
  %i.be = phi ptr [ %i.bh, %.lr.ph.i.i13 ], [ %.ph114, %.lr.ph.i.i13.preheader113 ] ; 2 uses
  %.011.i.i = phi ptr [ %i.bi, %.lr.ph.i.i13 ], [ %.011.i.i.ph, %.lr.ph.i.i13.preheader113 ] ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !249
  store i32 %i.bf, ptr %.011.i.i, align 4, !tbaa !249
  %i.bg = add i32 %i.bd, 1                        ; 2 uses
  store i32 %i.bg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 4 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.bh, %i.ai
  br i1 %.not.i.i14, label %.loopexit, label %.lr.ph.i.i13, !llvm.loop !4661

.loopexit:                                        ; preds = %.lr.ph.i.i13, %middle.block108, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %.0.lcssa.i.i = phi ptr [ %i.k, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ], [ %i.au, %middle.block108 ], [ %i.bi, %.lr.ph.i.i13 ]
  %i.bj = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.bk = ptrtoint ptr %i.k to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 2
  store i64 %i.bm, ptr %i.ag, align 8, !tbaa !245
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.bn = load ptr, ptr %0, align 8, !tbaa !247   ; 9 uses
  %i.bo = ptrtoaddr ptr %i.bn to i64              ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !254 ; 11 uses
  %i.br = icmp ult i64 %i.bq, %i.f
  br i1 %i.br, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not3.i.i18 = icmp eq i64 %i.bq, 0
  br i1 %.not3.i.i18, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19.preheader

.lr.ph.i.i19.preheader:                           ; preds = %bb.h
  %min.iters.check62 = icmp ult i64 %i.bq, 8
  %i.bs = sub i64 %i.d, %i.bo
  %diff.check64 = icmp ugt i64 %i.bs, -32
  %or.cond = select i1 %min.iters.check62, i1 true, i1 %diff.check64
  br i1 %or.cond, label %.lr.ph.i.i19.preheader117, label %vector.ph65

vector.ph65:                                      ; preds = %.lr.ph.i.i19.preheader
  %n.vec66 = and i64 %i.bq, -8                    ; 3 uses
  %i.bt = shl i64 %n.vec66, 2                     ; 2 uses
  %i.bu = getelementptr i8, ptr %i.a, i64 %i.bt   ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bn, i64 %i.bt  ; 2 uses
  %i.bw = and i64 %i.bq, 7
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph65
  %index68 = phi i64 [ 0, %vector.ph65 ], [ %index.next73, %vector.body67 ] ; 2 uses
  %i.bx = shl i64 %index68, 2                     ; 2 uses
  %next.gep69 = getelementptr i8, ptr %i.a, i64 %i.bx ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.bn, i64 %i.bx ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep69, i64 16
  %wide.load71 = load <4 x i32>, ptr %next.gep69, align 4, !tbaa !249, !noalias !4677
  %wide.load72 = load <4 x i32>, ptr %i.by, align 4, !tbaa !249, !noalias !4677
  %i.bz = getelementptr i8, ptr %next.gep70, i64 16
  store <4 x i32> %wide.load71, ptr %next.gep70, align 4, !tbaa !249, !noalias !4677
  store <4 x i32> %wide.load72, ptr %i.bz, align 4, !tbaa !249, !noalias !4677
  %index.next73 = add nuw i64 %index68, 8         ; 2 uses
  %i.ca = icmp eq i64 %index.next73, %n.vec66
  br i1 %i.ca, label %middle.block74, label %vector.body67, !llvm.loop !4664

middle.block74:                                   ; preds = %vector.body67
  %cmp.n75 = icmp eq i64 %i.bq, %n.vec66
  br i1 %cmp.n75, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19.preheader117

.lr.ph.i.i19.preheader117:                        ; preds = %.lr.ph.i.i19.preheader, %middle.block74
  %.sroa.020.0.i.ph = phi ptr [ %i.a, %.lr.ph.i.i19.preheader ], [ %i.bu, %middle.block74 ] ; 2 uses
  %.0.i.ph = phi ptr [ %i.bn, %.lr.ph.i.i19.preheader ], [ %i.bv, %middle.block74 ] ; 2 uses
  %.04.i.i.ph = phi i64 [ %i.bq, %.lr.ph.i.i19.preheader ], [ %i.bw, %middle.block74 ] ; 4 uses
  %i.cb = add i64 %.04.i.i.ph, -1
  %xtraiter127 = and i64 %.04.i.i.ph, 7           ; 2 uses
  %lcmp.mod128.not = icmp eq i64 %xtraiter127, 0
  br i1 %lcmp.mod128.not, label %.lr.ph.i.i19.prol.loopexit, label %.lr.ph.i.i19.prol

.lr.ph.i.i19.prol:                                ; preds = %.lr.ph.i.i19.preheader117, %.lr.ph.i.i19.prol
  %.sroa.020.0.i.prol = phi ptr [ %i.ce, %.lr.ph.i.i19.prol ], [ %.sroa.020.0.i.ph, %.lr.ph.i.i19.preheader117 ] ; 2 uses
  %.0.i.prol = phi ptr [ %i.cf, %.lr.ph.i.i19.prol ], [ %.0.i.ph, %.lr.ph.i.i19.preheader117 ] ; 2 uses
  %.04.i.i.prol = phi i64 [ %i.cc, %.lr.ph.i.i19.prol ], [ %.04.i.i.ph, %.lr.ph.i.i19.preheader117 ]
  %prol.iter129 = phi i64 [ %prol.iter129.next, %.lr.ph.i.i19.prol ], [ 0, %.lr.ph.i.i19.preheader117 ]
  %i.cc = add i64 %.04.i.i.prol, -1               ; 2 uses
  %i.cd = load i32, ptr %.sroa.020.0.i.prol, align 4, !tbaa !249, !noalias !4677
  store i32 %i.cd, ptr %.0.i.prol, align 4, !tbaa !249, !noalias !4677
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i.prol, i64 4 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i.prol, i64 4 ; 3 uses
  %prol.iter129.next = add i64 %prol.iter129, 1   ; 2 uses
  %prol.iter129.cmp.not = icmp eq i64 %prol.iter129.next, %xtraiter127
  br i1 %prol.iter129.cmp.not, label %.lr.ph.i.i19.prol.loopexit, label %.lr.ph.i.i19.prol, !llvm.loop !4665

.lr.ph.i.i19.prol.loopexit:                       ; preds = %.lr.ph.i.i19.prol, %.lr.ph.i.i19.preheader117
  %.lcssa119.unr = phi ptr [ poison, %.lr.ph.i.i19.preheader117 ], [ %i.ce, %.lr.ph.i.i19.prol ]
  %.lcssa118.unr = phi ptr [ poison, %.lr.ph.i.i19.preheader117 ], [ %i.cf, %.lr.ph.i.i19.prol ]
  %.sroa.020.0.i.unr = phi ptr [ %.sroa.020.0.i.ph, %.lr.ph.i.i19.preheader117 ], [ %i.ce, %.lr.ph.i.i19.prol ]
  %.0.i.unr = phi ptr [ %.0.i.ph, %.lr.ph.i.i19.preheader117 ], [ %i.cf, %.lr.ph.i.i19.prol ]
  %.04.i.i.unr = phi i64 [ %.04.i.i.ph, %.lr.ph.i.i19.preheader117 ], [ %i.cc, %.lr.ph.i.i19.prol ]
  %i.cg = icmp ult i64 %i.cb, 7
  br i1 %i.cg, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i.i19.prol.loopexit, %.lr.ph.i.i19
  %.sroa.020.0.i = phi ptr [ %i.de, %.lr.ph.i.i19 ], [ %.sroa.020.0.i.unr, %.lr.ph.i.i19.prol.loopexit ] ; 9 uses
  %.0.i = phi ptr [ %i.df, %.lr.ph.i.i19 ], [ %.0.i.unr, %.lr.ph.i.i19.prol.loopexit ] ; 9 uses
  %.04.i.i = phi i64 [ %i.dc, %.lr.ph.i.i19 ], [ %.04.i.i.unr, %.lr.ph.i.i19.prol.loopexit ]
  %i.ch = load i32, ptr %.sroa.020.0.i, align 4, !tbaa !249, !noalias !4677
  store i32 %i.ch, ptr %.0.i, align 4, !tbaa !249, !noalias !4677
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.ck = load i32, ptr %i.ci, align 4, !tbaa !249, !noalias !4677
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !249, !noalias !4677
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.cn = load i32, ptr %i.cl, align 4, !tbaa !249, !noalias !4677
  store i32 %i.cn, ptr %i.cm, align 4, !tbaa !249, !noalias !4677
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 12
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !249, !noalias !4677
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !249, !noalias !4677
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !249, !noalias !4677
  store i32 %i.ct, ptr %i.cs, align 4, !tbaa !249, !noalias !4677
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 20
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i, i64 20
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !249, !noalias !4677
  store i32 %i.cw, ptr %i.cv, align 4, !tbaa !249, !noalias !4677
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !249, !noalias !4677
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !249, !noalias !4677
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 28
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dc = add i64 %.04.i.i, -8                    ; 2 uses
  %i.dd = load i32, ptr %i.da, align 4, !tbaa !249, !noalias !4677
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !249, !noalias !4677
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 32 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  %.not.i.i20.7 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i20.7, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19, !llvm.loop !4666

_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i: ; preds = %.lr.ph.i.i19.prol.loopexit, %.lr.ph.i.i19, %middle.block74, %bb.h
  %.sroa.020.1.i = phi ptr [ %i.a, %bb.h ], [ %i.bu, %middle.block74 ], [ %.lcssa119.unr, %.lr.ph.i.i19.prol.loopexit ], [ %i.de, %.lr.ph.i.i19 ] ; 2 uses
  %.1.i = phi ptr [ %i.bn, %bb.h ], [ %i.bv, %middle.block74 ], [ %.lcssa118.unr, %.lr.ph.i.i19.prol.loopexit ], [ %i.df, %.lr.ph.i.i19 ] ; 2 uses
  %i.dg = sub i64 %i.f, %i.bq                     ; 3 uses
  %xtraiter130 = and i64 %i.dg, 3                 ; 2 uses
  %lcmp.mod131.not = icmp eq i64 %xtraiter130, 0
  br i1 %lcmp.mod131.not, label %.lr.ph.i11.i.prol.loopexit, label %.lr.ph.i11.i.prol

.lr.ph.i11.i.prol:                                ; preds = %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, %.lr.ph.i11.i.prol
  %i.dh = phi ptr [ %i.dm, %.lr.ph.i11.i.prol ], [ %.sroa.020.1.i, %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ] ; 2 uses
  %.016.i.i.prol = phi i64 [ %i.di, %.lr.ph.i11.i.prol ], [ %i.dg, %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ]
  %.01315.i.i.prol = phi ptr [ %i.dn, %.lr.ph.i11.i.prol ], [ %.1.i, %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ] ; 3 uses
  %prol.iter132 = phi i64 [ %prol.iter132.next, %.lr.ph.i11.i.prol ], [ 0, %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ]
  %i.di = add i64 %.016.i.i.prol, -1              ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.prol) ]
end_hunk_8
begin_hunk_9_@_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl21insert_n_copies_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_:bb.a
  %i.dd = add i64 %.017.i.i.i.i.i.prol, -1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.prol) ]
  %i.de = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.de, ptr %.01416.i.i.i.i.i.prol, align 4, !tbaa !249
  %i.df = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dg = add i32 %i.df, 1
  store i32 %i.dg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dh = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter57.next = add i64 %prol.iter57, 1     ; 2 uses
  %prol.iter57.cmp.not = icmp eq i64 %prol.iter57.next, %xtraiter55
  br i1 %prol.iter57.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !4725

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i
  %.017.i.i.i.i.i.unr = phi i64 [ %i.dc, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ], [ %i.dd, %.lr.ph.i.i.i.i.i.prol ]
  %.01416.i.i.i.i.i.unr = phi ptr [ %i.i, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ], [ %i.dh, %.lr.ph.i.i.i.i.i.prol ]
  %i.di = sub i64 %i.ai, %3
  %i.dj = icmp ugt i64 %i.di, -4
  br i1 %i.dj, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.017.i.i.i.i.i = phi i64 [ %i.du, %.lr.ph.i.i.i.i.i ], [ %.017.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i ], [ %.01416.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i) ]
  %i.dk = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.dk, ptr %.01416.i.i.i.i.i, align 4, !tbaa !249
  %i.dl = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dn = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 4
  %i.do = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !249
  %i.dp = add i32 %i.dl, 2
  store i32 %i.dp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dq = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 8
  %i.dr = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !249
  %i.ds = add i32 %i.dl, 3
  store i32 %i.ds, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dt = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 12
  %i.du = add i64 %.017.i.i.i.i.i, -4             ; 2 uses
  %i.dv = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !249
  %i.dw = add i32 %i.dl, 4
  store i32 %i.dw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dx = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.du, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !46

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit: ; preds = %scalar.ph26, %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block34, %bb.c, %bb.d
  %i.dy = add i64 %i.e, %3
  store i64 %i.dy, ptr %i.d, align 8, !tbaa !245
  store ptr %i.a, ptr %0, align 8, !tbaa !289
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.a, i64 noundef %3, ptr %4)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !246  ; 6 uses
  %i.d = sub i64 2305843009213693951, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !245  ; 2 uses
  %.neg.i = sub i64 %3, %i.c
  %i.g = add i64 %.neg.i, %i.f
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = shl nuw i64 %i.c, 3
  %i.k = udiv i64 %i.j, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.c, -6917529027641081857
  %i.m = shl i64 %i.c, 3
  %spec.select.i.i = select i1 %i.l, i64 -1, i64 %i.m
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.k, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.n = add i64 %i.f, %3                         ; 2 uses
  %i.o = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.o) ; 2 uses
  %i.q = icmp ugt i64 %i.n, 2305843009213693951
  br i1 %i.q, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !74

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.r = shl nuw nsw i64 %i.p, 2
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #25 ; 7 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !247    ; 15 uses
  %i.u = ptrtoaddr ptr %i.t to i64                ; 3 uses
  %i.v = load i64, ptr %i.e, align 8, !tbaa !254  ; 10 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.v ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.t, %2
  br i1 %.not16.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.x = add i64 %i.a, -4
  %i.y = sub i64 %i.x, %i.u                       ; 3 uses
  %i.z = lshr i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader122, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ab = and i64 %i.y, -4
  %i.ac = getelementptr i8, ptr %i.t, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %bound0 = icmp ugt ptr %i.ad, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.t, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader122, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 9223372036854775800     ; 3 uses
  %i.ae = shl i64 %n.vec, 2                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.s, i64 %i.ae   ; 2 uses
  %i.ah = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test12copyable_int5countE.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ah, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi16 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %i.ai = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ai ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.s, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !249, !alias.scope !4745
  %wide.load18 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !249, !alias.scope !4745
  %i.ak = getelementptr i8, ptr %next.gep17, i64 16
  store <4 x i32> %wide.load, ptr %next.gep17, align 4, !tbaa !249
  store <4 x i32> %wide.load18, ptr %i.ak, align 4, !tbaa !249
  %i.al = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.am = add <4 x i32> %vec.phi16, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !4728

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.am, %i.al
  %i.ao = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ao, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4746, !noalias !4745
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i.preheader122

.lr.ph.i.i.i.preheader122:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph123 = phi i32 [ %_ZN5boost9container4test12copyable_int5countE.promoted, %vector.memcheck ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.018.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.01517.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader122, %.lr.ph.i.i.i
  %i.ap = phi i32 [ %i.ar, %.lr.ph.i.i.i ], [ %.ph123, %.lr.ph.i.i.i.preheader122 ]
  %.018.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader122 ] ; 2 uses
  %.01517.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.01517.i.i.i.ph, %.lr.ph.i.i.i.preheader122 ] ; 2 uses
  %i.aq = load i32, ptr %.018.i.i.i, align 4, !tbaa !249
  store i32 %i.aq, ptr %.01517.i.i.i, align 4, !tbaa !249
  %i.ar = add i32 %i.ap, 1                        ; 2 uses
  store i32 %i.ar, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.as = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %2
  br i1 %.not.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !4730

_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.s, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ag, %middle.block ], [ %i.at, %.lr.ph.i.i.i ] ; 9 uses
  %.not15.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not15.i.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.pre = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %min.iters.check33 = icmp ult i64 %3, 20
  br i1 %min.iters.check33, label %.lr.ph.i.i.i.i.preheader118, label %vector.memcheck34

vector.memcheck34:                                ; preds = %.lr.ph.i.i.i.i.preheader
  %i.au = shl i64 %3, 2
  %5 = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %4, i64 4         ; 2 uses
  %bound035 = icmp ult ptr %.015.lcssa.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound136 = icmp ugt ptr %5, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict37 = and i1 %bound035, %bound136
  %bound038 = icmp ult ptr %.015.lcssa.i.i.i, %i.av
  %bound139 = icmp ult ptr %4, %5
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx = or i1 %found.conflict37, %found.conflict40
  %bound041 = icmp ugt ptr %i.av, @_ZN5boost9container4test12copyable_int5countE
  %bound142 = icmp ult ptr %4, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %conflict.rdx, %found.conflict43
  br i1 %conflict.rdx44, label %.lr.ph.i.i.i.i.preheader118, label %vector.ph45

vector.ph45:                                      ; preds = %vector.memcheck34
  %n.vec46 = and i64 %3, -8                       ; 3 uses
  %i.aw = and i64 %3, 7
  %i.ax = shl i64 %n.vec46, 2
  %i.ay = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ax
  %i.az = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  %i.ba = load i32, ptr %4, align 4, !tbaa !249, !alias.scope !4747
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ba, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph45
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next59, %vector.body47 ] ; 2 uses
  %vec.phi49 = phi <4 x i32> [ %i.az, %vector.ph45 ], [ %i.bd, %vector.body47 ]
  %vec.phi50 = phi <4 x i32> [ zeroinitializer, %vector.ph45 ], [ %i.be, %vector.body47 ]
  %i.bb = shl i64 %index48, 2
  %next.gep51 = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.bb ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep51) ]
  %i.bc = getelementptr i8, ptr %next.gep51, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep51, align 4, !tbaa !249, !alias.scope !4748, !noalias !4749
  store <4 x i32> %broadcast.splat, ptr %i.bc, align 4, !tbaa !249, !alias.scope !4748, !noalias !4749
  %i.bd = add <4 x i32> %vec.phi49, splat (i32 1) ; 2 uses
  %i.be = add <4 x i32> %vec.phi50, splat (i32 1) ; 2 uses
  %index.next59 = add nuw i64 %index48, 8         ; 2 uses
  %i.bf = icmp eq i64 %index.next59, %n.vec46
  br i1 %i.bf, label %middle.block60, label %vector.body47, !llvm.loop !4735

middle.block60:                                   ; preds = %vector.body47
  %bin.rdx61 = add <4 x i32> %i.be, %i.bd
  %i.bg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx61) ; 2 uses
  store i32 %i.bg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4750, !noalias !4747
  %cmp.n62 = icmp eq i64 %3, %n.vec46
  br i1 %cmp.n62, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader118

.lr.ph.i.i.i.i.preheader118:                      ; preds = %vector.memcheck34, %.lr.ph.i.i.i.i.preheader, %middle.block60
  %.ph119 = phi i32 [ %.pre, %vector.memcheck34 ], [ %.pre, %.lr.ph.i.i.i.i.preheader ], [ %i.bg, %middle.block60 ] ; 2 uses
  %.017.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck34 ], [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.aw, %middle.block60 ] ; 4 uses
  %.01416.i.i.i.i.ph = phi ptr [ %.015.lcssa.i.i.i, %vector.memcheck34 ], [ %.015.lcssa.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ay, %middle.block60 ] ; 2 uses
  %i.bh = add i64 %.017.i.i.i.i.ph, -1
  %xtraiter = and i64 %.017.i.i.i.i.ph, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader118, %.lr.ph.i.i.i.i.prol
  %i.bi = phi i32 [ %i.bl, %.lr.ph.i.i.i.i.prol ], [ %.ph119, %.lr.ph.i.i.i.i.preheader118 ]
  %.017.i.i.i.i.prol = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.prol ], [ %.017.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ]
  %.01416.i.i.i.i.prol = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.prol ], [ %.01416.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader118 ]
  %i.bj = add i64 %.017.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.prol) ]
  %i.bk = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.bk, ptr %.01416.i.i.i.i.prol, align 4, !tbaa !249
  %i.bl = add i32 %i.bi, 1                        ; 3 uses
  store i32 %i.bl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bm = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !4736

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader118
  %.unr = phi i32 [ %.ph119, %.lr.ph.i.i.i.i.preheader118 ], [ %i.bl, %.lr.ph.i.i.i.i.prol ]
  %.017.i.i.i.i.unr = phi i64 [ %.017.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ], [ %i.bj, %.lr.ph.i.i.i.i.prol ]
  %.01416.i.i.i.i.unr = phi ptr [ %.01416.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ], [ %i.bm, %.lr.ph.i.i.i.i.prol ]
  %i.bn = icmp ult i64 %i.bh, 3
  br i1 %i.bn, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.bo = phi i32 [ %i.ca, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.017.i.i.i.i = phi i64 [ %i.by, %.lr.ph.i.i.i.i ], [ %.017.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i ], [ %.01416.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i) ]
  %i.bp = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.bp, ptr %.01416.i.i.i.i, align 4, !tbaa !249
  %i.bq = add i32 %i.bo, 1
  store i32 %i.bq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.br = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 4
  %i.bs = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !249
  %i.bt = add i32 %i.bo, 2
  store i32 %i.bt, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bu = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 8
  %i.bv = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !249
  %i.bw = add i32 %i.bo, 3
  store i32 %i.bw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bx = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 12
  %i.by = add i64 %.017.i.i.i.i, -4               ; 2 uses
  %i.bz = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !249
  %i.ca = add i32 %i.bo, 4                        ; 2 uses
  store i32 %i.ca, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cb = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i.i.3, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4737

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block60, %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.not16.i19.i.i = icmp eq ptr %2, %i.w
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i
  %i.cc = getelementptr [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3 ; 6 uses
  %.pre9 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.cd = shl i64 %i.v, 2
  %i.ce = add i64 %i.cd, %i.u
  %i.cf = add i64 %i.ce, -4
  %i.cg = sub i64 %i.cf, %i.a                     ; 2 uses
  %i.ch = lshr i64 %i.cg, 2
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check80 = icmp ult i64 %i.cg, 156
  br i1 %min.iters.check80, label %.lr.ph.i20.i.i.preheader, label %vector.memcheck81

vector.memcheck81:                                ; preds = %.lr.ph.i20.preheader.i.i
  %i.cj = shl i64 %3, 2
  %i.ck = shl i64 %i.v, 2
  %i.cl = add i64 %i.ck, %i.u
  %i.cm = add i64 %i.cl, -4
  %i.cn = sub i64 %i.cm, %i.a
  %i.co = and i64 %i.cn, -4                       ; 2 uses
  %i.cp = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.cj
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.co
  %i.cr = getelementptr i8, ptr %i.cq, i64 4      ; 2 uses
  %6 = getelementptr i8, ptr %2, i64 %i.co
  %7 = getelementptr i8, ptr %6, i64 4            ; 2 uses
  %bound082 = icmp ult ptr %i.cc, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound183 = icmp ugt ptr %i.cr, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict84 = and i1 %bound082, %bound183
  %bound085 = icmp ult ptr %i.cc, %7
  %bound186 = icmp ult ptr %2, %i.cr
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %found.conflict84, %found.conflict87
  %bound089 = icmp ugt ptr %7, @_ZN5boost9container4test12copyable_int5countE
  %bound190 = icmp ult ptr %2, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx92 = or i1 %conflict.rdx88, %found.conflict91
  br i1 %conflict.rdx92, label %.lr.ph.i20.i.i.preheader, label %vector.ph93

vector.ph93:                                      ; preds = %vector.memcheck81
  %n.vec94 = and i64 %i.ci, 9223372036854775800   ; 3 uses
  %i.cs = shl i64 %n.vec94, 2                     ; 2 uses
  %i.ct = getelementptr i8, ptr %2, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.cc, i64 %i.cs
  %i.cv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre9, i64 0
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph93
  %index96 = phi i64 [ 0, %vector.ph93 ], [ %index.next110, %vector.body95 ] ; 2 uses
  %vec.phi97 = phi <4 x i32> [ %i.cv, %vector.ph93 ], [ %i.cz, %vector.body95 ]
  %vec.phi98 = phi <4 x i32> [ zeroinitializer, %vector.ph93 ], [ %i.da, %vector.body95 ]
  %i.cw = shl i64 %index96, 2                     ; 2 uses
  %next.gep99 = getelementptr i8, ptr %2, i64 %i.cw ; 2 uses
  %next.gep100 = getelementptr i8, ptr %i.cc, i64 %i.cw ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep100) ]
  %i.cx = getelementptr i8, ptr %next.gep99, i64 16
  %wide.load108 = load <4 x i32>, ptr %next.gep99, align 4, !tbaa !249, !alias.scope !4751
  %wide.load109 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !249, !alias.scope !4751
  %i.cy = getelementptr i8, ptr %next.gep100, i64 16
  store <4 x i32> %wide.load108, ptr %next.gep100, align 4, !tbaa !249, !alias.scope !4752, !noalias !4753
  store <4 x i32> %wide.load109, ptr %i.cy, align 4, !tbaa !249, !alias.scope !4752, !noalias !4753
  %i.cz = add <4 x i32> %vec.phi97, splat (i32 1) ; 2 uses
  %i.da = add <4 x i32> %vec.phi98, splat (i32 1) ; 2 uses
  %index.next110 = add nuw i64 %index96, 8        ; 2 uses
  %i.db = icmp eq i64 %index.next110, %n.vec94
  br i1 %i.db, label %middle.block111, label %vector.body95, !llvm.loop !4742

middle.block111:                                  ; preds = %vector.body95
  %bin.rdx112 = add <4 x i32> %i.da, %i.cz
  %i.dc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx112) ; 2 uses
  store i32 %i.dc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4754, !noalias !4751
  %cmp.n113 = icmp eq i64 %i.ci, %n.vec94
  br i1 %cmp.n113, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.i.i.preheader

.lr.ph.i20.i.i.preheader:                         ; preds = %vector.memcheck81, %.lr.ph.i20.preheader.i.i, %middle.block111
  %.ph = phi i32 [ %.pre9, %vector.memcheck81 ], [ %.pre9, %.lr.ph.i20.preheader.i.i ], [ %i.dc, %middle.block111 ]
  %.018.i21.i.i.ph = phi ptr [ %2, %vector.memcheck81 ], [ %2, %.lr.ph.i20.preheader.i.i ], [ %i.ct, %middle.block111 ]
  %.01517.i22.i.i.ph = phi ptr [ %i.cc, %vector.memcheck81 ], [ %i.cc, %.lr.ph.i20.preheader.i.i ], [ %i.cu, %middle.block111 ]
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.preheader, %.lr.ph.i20.i.i
  %i.dd = phi i32 [ %i.df, %.lr.ph.i20.i.i ], [ %.ph, %.lr.ph.i20.i.i.preheader ]
  %.018.i21.i.i = phi ptr [ %i.dg, %.lr.ph.i20.i.i ], [ %.018.i21.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.dh, %.lr.ph.i20.i.i ], [ %.01517.i22.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i.i) ]
  %i.de = load i32, ptr %.018.i21.i.i, align 4, !tbaa !249
  store i32 %i.de, ptr %.01517.i22.i.i, align 4, !tbaa !249
  %i.df = add i32 %i.dd, 1                        ; 2 uses
  store i32 %i.df, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dg = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.dg, %i.w
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !4743

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %middle.block111, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mSD_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %xtraiter127 = and i64 %i.v, 3                  ; 2 uses
  %lcmp.mod128.not = icmp eq i64 %xtraiter127, 0
  br i1 %lcmp.mod128.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.di, %.lr.ph.i.i.prol ], [ %i.v, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.dl, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter129 = phi i64 [ %prol.iter129.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.di = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.dj = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dk = add i32 %i.dj, -1
  store i32 %i.dk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dl = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter129.next = add i64 %prol.iter129, 1   ; 2 uses
  %prol.iter129.cmp.not = icmp eq i64 %prol.iter129.next, %xtraiter127
  br i1 %prol.iter129.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4744

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.v, %.lr.ph.i.i.preheader ], [ %i.di, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.dl, %.lr.ph.i.i.prol ]
  %i.dm = icmp ult i64 %i.v, 4
  br i1 %i.dm, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.du, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.dw, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !249
  %i.dn = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.do = add i32 %i.dn, -1
  store i32 %i.do, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dp = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.dp, align 4, !tbaa !249
  %i.dq = add i32 %i.dn, -2
  store i32 %i.dq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dr = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.dr, align 4, !tbaa !249
  %i.ds = add i32 %i.dn, -3
  store i32 %i.ds, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dt = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.du = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.dt, align 4, !tbaa !249
  %i.dv = add i32 %i.dn, -4
  store i32 %i.dv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.du, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !26

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dy = icmp eq ptr %i.dx, %i.t
  br i1 %i.dy, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mSD_mT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.dz = load i64, ptr %i.b, align 8, !tbaa !246
  %i.ea = shl i64 %i.dz, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ea) #22
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !245
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mSD_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mSD_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.h
  %i.eb = phi i64 [ %i.v, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ], [ %i.v, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ]
  %i.ec = ptrtoint ptr %2 to i64
  %i.ed = ptrtoint ptr %i.t to i64
  %i.ee = sub i64 %i.ec, %i.ed
  store ptr %i.s, ptr %1, align 8, !tbaa !247
  %i.ef = add i64 %i.eb, %3
  store i64 %i.ef, ptr %i.e, align 8, !tbaa !245
  store i64 %i.p, ptr %i.b, align 8, !tbaa !84
  %i.eg = getelementptr inbounds i8, ptr %i.s, i64 %i.ee
  store ptr %i.eg, ptr %0, align 8, !tbaa !289
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignINS0_17constant_iteratorIS3_EEEEvT_SC_PNS_11move_detail13disable_if_orIvNSD_7is_sameINSD_17integral_constantIjLj1EEENSG_IjLj0EEEEENSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sub i64 %2, %4                           ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !246  ; 2 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %i.a, 2305843009213693951
  br i1 %i.e, label %bb.c, label %bb.d, !prof !74

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = shl nuw nsw i64 %i.a, 2
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25 ; 7 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !247    ; 5 uses
  %.not25 = icmp eq ptr %i.h, null
  br i1 %.not25, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !254  ; 5 uses
  %.not3.i.i = icmp eq i64 %i.j, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %xtraiter98 = and i64 %i.j, 3                   ; 2 uses
  %lcmp.mod99.not = icmp eq i64 %xtraiter98, 0
  br i1 %lcmp.mod99.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.k, %.lr.ph.i.i.prol ], [ %i.j, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.n, %.lr.ph.i.i.prol ], [ %i.h, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter100 = phi i64 [ %prol.iter100.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.k = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.l = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.m = add i32 %i.l, -1
  store i32 %i.m, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter100.next = add i64 %prol.iter100, 1   ; 2 uses
  %prol.iter100.cmp.not = icmp eq i64 %prol.iter100.next, %xtraiter98
  br i1 %prol.iter100.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4755

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.j, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i.preheader ], [ %i.n, %.lr.ph.i.i.prol ]
end_hunk_9
begin_hunk_10_@_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignINS0_17constant_iteratorIS3_EEEEvT_SC_PNS_11move_detail13disable_if_orIvNSD_7is_sameINSD_17integral_constantIjLj1EEENSG_IjLj0EEEEENSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEEE4typeE:bb.a
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i26.i.prol.loopexit, label %.lr.ph.i26.i.prol, !llvm.loop !4768

.lr.ph.i26.i.prol.loopexit:                       ; preds = %.lr.ph.i26.i.prol, %.lr.ph.i26.i.preheader
  %.05.i.i30.unr = phi i64 [ %i.dh, %.lr.ph.i26.i.preheader ], [ %i.dj, %.lr.ph.i26.i.prol ]
  %storemerge4.i.i31.unr = phi ptr [ %.0.lcssa.i.i28, %.lr.ph.i26.i.preheader ], [ %i.dm, %.lr.ph.i26.i.prol ]
  %i.dn = sub i64 %2, %i.di
  %i.do = icmp ugt i64 %i.dn, -4
  br i1 %i.do, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i.prol.loopexit, %.lr.ph.i26.i
  %.05.i.i30 = phi i64 [ %i.dw, %.lr.ph.i26.i ], [ %.05.i.i30.unr, %.lr.ph.i26.i.prol.loopexit ]
  %storemerge4.i.i31 = phi ptr [ %i.dy, %.lr.ph.i26.i ], [ %storemerge4.i.i31.unr, %.lr.ph.i26.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i31, align 4, !tbaa !249
  %i.dp = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.dq = add i32 %i.dp, -1
  store i32 %i.dq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dr = getelementptr inbounds nuw i8, ptr %storemerge4.i.i31, i64 4
  store i32 -2147483648, ptr %i.dr, align 4, !tbaa !249
  %i.ds = add i32 %i.dp, -2
  store i32 %i.ds, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dt = getelementptr inbounds nuw i8, ptr %storemerge4.i.i31, i64 8
  store i32 -2147483648, ptr %i.dt, align 4, !tbaa !249
  %i.du = add i32 %i.dp, -3
  store i32 %i.du, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dv = getelementptr inbounds nuw i8, ptr %storemerge4.i.i31, i64 12
  %i.dw = add i64 %.05.i.i30, -4                  ; 2 uses
  store i32 -2147483648, ptr %i.dv, align 4, !tbaa !249
  %i.dx = add i32 %i.dp, -4
  store i32 %i.dx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dy = getelementptr inbounds nuw i8, ptr %storemerge4.i.i31, i64 16
  %.not.i27.i.3 = icmp eq i64 %i.dw, 0
  br i1 %.not.i27.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i26.i, !llvm.loop !26

_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit: ; preds = %.lr.ph.i26.i.prol.loopexit, %.lr.ph.i26.i, %.lr.ph.i19.i.prol.loopexit, %.lr.ph.i19.i, %_ZN5boost9container6copy_nINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  store i64 %i.a, ptr %i.bq, align 8, !tbaa !245
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JRKS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !246  ; 6 uses
  %i.d = sub i64 2305843009213693951, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !245  ; 2 uses
  %.neg.i = sub i64 %3, %i.c
  %i.g = add i64 %.neg.i, %i.f
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = shl nuw i64 %i.c, 3
  %i.k = udiv i64 %i.j, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.c, -6917529027641081857
  %i.m = shl i64 %i.c, 3
  %spec.select.i.i = select i1 %i.l, i64 -1, i64 %i.m
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.k, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.n = add i64 %i.f, %3                         ; 2 uses
  %i.o = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.o) ; 2 uses
  %i.q = icmp ugt i64 %i.n, 2305843009213693951
  br i1 %i.q, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !74

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.r = shl nuw nsw i64 %i.p, 2
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #25 ; 7 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !247    ; 15 uses
  %i.u = ptrtoaddr ptr %i.t to i64                ; 3 uses
  %i.v = load i64, ptr %i.e, align 8, !tbaa !254  ; 10 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.v ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.t, %2
  %.pre = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  br i1 %.not16.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %i.x = add i64 %i.a, -4
  %i.y = sub i64 %i.x, %i.u                       ; 3 uses
  %i.z = lshr i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader63, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ab = and i64 %i.y, -4
  %i.ac = getelementptr i8, ptr %i.t, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %bound0 = icmp ugt ptr %i.ad, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.t, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader63, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 9223372036854775800     ; 3 uses
  %i.ae = shl i64 %n.vec, 2                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.s, i64 %i.ae   ; 2 uses
  %i.ah = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ah, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi16 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %i.ai = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ai ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.s, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !249, !alias.scope !4783
  %wide.load18 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !249, !alias.scope !4783
  %i.ak = getelementptr i8, ptr %next.gep17, i64 16
  store <4 x i32> %wide.load, ptr %next.gep17, align 4, !tbaa !249
  store <4 x i32> %wide.load18, ptr %i.ak, align 4, !tbaa !249
  %i.al = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.am = add <4 x i32> %vec.phi16, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !4773

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.am, %i.al
  %i.ao = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 3 uses
  store i32 %i.ao, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4784, !noalias !4783
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader63

.lr.ph.i.i.i.preheader63:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph64 = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.018.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.01517.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader63, %.lr.ph.i.i.i
  %i.ap = phi i32 [ %i.ar, %.lr.ph.i.i.i ], [ %.ph64, %.lr.ph.i.i.i.preheader63 ]
  %.018.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader63 ] ; 2 uses
  %.01517.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.01517.i.i.i.ph, %.lr.ph.i.i.i.preheader63 ] ; 2 uses
  %i.aq = load i32, ptr %.018.i.i.i, align 4, !tbaa !249
  store i32 %i.aq, ptr %.01517.i.i.i, align 4, !tbaa !249
  %i.ar = add i32 %i.ap, 1                        ; 3 uses
  store i32 %i.ar, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.as = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %2
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !4775

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %i.au = phi i32 [ %.pre, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ao, %middle.block ], [ %i.ar, %.lr.ph.i.i.i ]
  %.015.lcssa.i.i.i = phi ptr [ %i.s, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ag, %middle.block ], [ %i.at, %.lr.ph.i.i.i ] ; 3 uses
  %i.av = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.av, ptr %.015.lcssa.i.i.i, align 4, !tbaa !249
  %i.aw = add i32 %i.au, 1                        ; 4 uses
  store i32 %i.aw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %.not16.i19.i.i = icmp eq ptr %2, %i.w
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS4_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %.loopexit.i.i
  %i.ax = getelementptr [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3 ; 6 uses
  %i.ay = shl i64 %i.v, 2
  %i.az = add i64 %i.ay, %i.u
  %i.ba = add i64 %i.az, -4
  %i.bb = sub i64 %i.ba, %i.a                     ; 2 uses
  %i.bc = lshr i64 %i.bb, 2
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check33 = icmp ult i64 %i.bb, 156
  br i1 %min.iters.check33, label %.lr.ph.i20.i.i.preheader, label %vector.memcheck34

vector.memcheck34:                                ; preds = %.lr.ph.i20.preheader.i.i
  %i.be = shl i64 %3, 2
  %i.bf = shl i64 %i.v, 2
  %i.bg = add i64 %i.bf, %i.u
  %i.bh = add i64 %i.bg, -4
  %i.bi = sub i64 %i.bh, %i.a
  %i.bj = and i64 %i.bi, -4                       ; 2 uses
  %i.bk = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.be
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.bj
  %i.bm = getelementptr i8, ptr %i.bl, i64 4      ; 2 uses
  %5 = getelementptr i8, ptr %2, i64 %i.bj
  %6 = getelementptr i8, ptr %5, i64 4            ; 2 uses
  %bound035 = icmp ult ptr %i.ax, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound136 = icmp ugt ptr %i.bm, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict37 = and i1 %bound035, %bound136
  %bound038 = icmp ult ptr %i.ax, %6
  %bound139 = icmp ult ptr %2, %i.bm
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx = or i1 %found.conflict37, %found.conflict40
  %bound041 = icmp ugt ptr %6, @_ZN5boost9container4test12copyable_int5countE
  %bound142 = icmp ult ptr %2, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %conflict.rdx, %found.conflict43
  br i1 %conflict.rdx44, label %.lr.ph.i20.i.i.preheader, label %vector.ph45

vector.ph45:                                      ; preds = %vector.memcheck34
  %n.vec46 = and i64 %i.bd, 9223372036854775800   ; 3 uses
  %i.bn = shl i64 %n.vec46, 2                     ; 2 uses
  %i.bo = getelementptr i8, ptr %2, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.ax, i64 %i.bn
  %i.bq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.aw, i64 0
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph45
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next55, %vector.body47 ] ; 2 uses
  %vec.phi49 = phi <4 x i32> [ %i.bq, %vector.ph45 ], [ %i.bu, %vector.body47 ]
  %vec.phi50 = phi <4 x i32> [ zeroinitializer, %vector.ph45 ], [ %i.bv, %vector.body47 ]
  %i.br = shl i64 %index48, 2                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %2, i64 %i.br ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.ax, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load53 = load <4 x i32>, ptr %next.gep51, align 4, !tbaa !249, !alias.scope !4785
  %wide.load54 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !249, !alias.scope !4785
  %i.bt = getelementptr i8, ptr %next.gep52, i64 16
  store <4 x i32> %wide.load53, ptr %next.gep52, align 4, !tbaa !249, !alias.scope !4786, !noalias !4787
  store <4 x i32> %wide.load54, ptr %i.bt, align 4, !tbaa !249, !alias.scope !4786, !noalias !4787
  %i.bu = add <4 x i32> %vec.phi49, splat (i32 1) ; 2 uses
  %i.bv = add <4 x i32> %vec.phi50, splat (i32 1) ; 2 uses
  %index.next55 = add nuw i64 %index48, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next55, %n.vec46
  br i1 %i.bw, label %middle.block56, label %vector.body47, !llvm.loop !4780

middle.block56:                                   ; preds = %vector.body47
  %bin.rdx57 = add <4 x i32> %i.bv, %i.bu
  %i.bx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx57) ; 2 uses
  store i32 %i.bx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4788, !noalias !4785
  %cmp.n58 = icmp eq i64 %i.bd, %n.vec46
  br i1 %cmp.n58, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS4_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, label %.lr.ph.i20.i.i.preheader

.lr.ph.i20.i.i.preheader:                         ; preds = %vector.memcheck34, %.lr.ph.i20.preheader.i.i, %middle.block56
  %.ph = phi i32 [ %i.aw, %vector.memcheck34 ], [ %i.aw, %.lr.ph.i20.preheader.i.i ], [ %i.bx, %middle.block56 ]
  %.018.i21.i.i.ph = phi ptr [ %2, %vector.memcheck34 ], [ %2, %.lr.ph.i20.preheader.i.i ], [ %i.bo, %middle.block56 ]
  %.01517.i22.i.i.ph = phi ptr [ %i.ax, %vector.memcheck34 ], [ %i.ax, %.lr.ph.i20.preheader.i.i ], [ %i.bp, %middle.block56 ]
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.preheader, %.lr.ph.i20.i.i
  %i.by = phi i32 [ %i.ca, %.lr.ph.i20.i.i ], [ %.ph, %.lr.ph.i20.i.i.preheader ]
  %.018.i21.i.i = phi ptr [ %i.cb, %.lr.ph.i20.i.i ], [ %.018.i21.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.cc, %.lr.ph.i20.i.i ], [ %.01517.i22.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %i.bz = load i32, ptr %.018.i21.i.i, align 4, !tbaa !249
  store i32 %i.bz, ptr %.01517.i22.i.i, align 4, !tbaa !249
  %i.ca = add i32 %i.by, 1                        ; 2 uses
  store i32 %i.ca, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cb = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.cb, %i.w
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS4_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !4781

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS4_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %middle.block56, %.loopexit.i.i
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRKS3_EEEEEvPS3_mSF_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS4_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.cd, %.lr.ph.i.i.prol ], [ %i.v, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.cg, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.cd = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.ce = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cf = add i32 %i.ce, -1
  store i32 %i.cf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4782

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.v, %.lr.ph.i.i.preheader ], [ %i.cd, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.cg, %.lr.ph.i.i.prol ]
  %i.ch = icmp ult i64 %i.v, 4
  br i1 %i.ch, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.cp, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.cr, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !249
  %i.ci = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.cj = add i32 %i.ci, -1
  store i32 %i.cj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ck = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.ck, align 4, !tbaa !249
  %i.cl = add i32 %i.ci, -2
  store i32 %i.cl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.cm, align 4, !tbaa !249
  %i.cn = add i32 %i.ci, -3
  store i32 %i.cn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.co = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.cp = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.co, align 4, !tbaa !249
  %i.cq = add i32 %i.ci, -4
  store i32 %i.cq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cr = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !26

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ct = icmp eq ptr %i.cs, %i.t
  br i1 %i.ct, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRKS3_EEEEEvPS3_mSF_mT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.cu = load i64, ptr %i.b, align 8, !tbaa !246
  %i.cv = shl i64 %i.cu, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.cv) #22
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !245
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRKS3_EEEEEvPS3_mSF_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRKS3_EEEEEvPS3_mSF_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS4_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.h
  %i.cw = phi i64 [ %i.v, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS4_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ], [ %i.v, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ]
  %i.cx = ptrtoint ptr %2 to i64
  %i.cy = ptrtoint ptr %i.t to i64
  %i.cz = sub i64 %i.cx, %i.cy
  store ptr %i.s, ptr %1, align 8, !tbaa !247
  %i.da = add i64 %i.cw, %3
  store i64 %i.da, ptr %i.e, align 8, !tbaa !245
  store i64 %i.p, ptr %i.b, align 8, !tbaa !84
  %i.db = getelementptr inbounds i8, ptr %i.s, i64 %i.cz
  store ptr %i.db, ptr %0, align 8, !tbaa !289
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignINS0_12vec_iteratorIPS3_Lb1EEEEEvT_SD_PNS_11move_detail13disable_if_orIvNSE_7is_sameINSE_17integral_constantIjLj1EEENSH_IjLj0EEEEENSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !285    ; 9 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !285    ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ashr exact i64 %i.e, 2                   ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !246  ; 2 uses
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.j, label %bb.c, label %bb.d, !prof !74

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #25 ; 10 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !247    ; 5 uses
  %.not12 = icmp eq ptr %i.l, null
  br i1 %.not12, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !254  ; 5 uses
  %.not3.i.i = icmp eq i64 %i.n, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %xtraiter134 = and i64 %i.n, 3                  ; 2 uses
  %lcmp.mod135.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod135.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.o, %.lr.ph.i.i.prol ], [ %i.n, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.prol ], [ %i.l, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter136 = phi i64 [ %prol.iter136.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.o = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.p = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter136.next = add i64 %prol.iter136, 1   ; 2 uses
  %prol.iter136.cmp.not = icmp eq i64 %prol.iter136.next, %xtraiter134
  br i1 %prol.iter136.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4789

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.o, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.l, %.lr.ph.i.i.preheader ], [ %i.r, %.lr.ph.i.i.prol ]
  %i.s = icmp ult i64 %i.n, 4
  br i1 %i.s, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.aa, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !249
  %i.t = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.u = add i32 %i.t, -1
  store i32 %i.u, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.v, align 4, !tbaa !249
  %i.w = add i32 %i.t, -2
  store i32 %i.w, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.x, align 4, !tbaa !249
  %i.y = add i32 %i.t, -3
  store i32 %i.y, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.z = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.aa = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.z, align 4, !tbaa !249
  %i.ab = add i32 %i.t, -4
  store i32 %i.ab, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ac = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i, !llvm.loop !26

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  store i64 0, ptr %i.m, align 8, !tbaa !254
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = icmp eq ptr %i.ad, %i.l
  br i1 %i.ae, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit
  %i.af = shl nuw i64 %i.h, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.af) #22
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit: ; preds = %bb.f, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.k, ptr %0, align 8, !tbaa !247
  store i64 %i.f, ptr %i.g, align 8, !tbaa !84
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %1, align 8, !tbaa !285   ; 9 uses
  %i.ai = load ptr, ptr %2, align 8, !tbaa !285   ; 3 uses
  %.not10.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not10.i.i, label %.loopexit, label %.lr.ph.i.i13.preheader

.lr.ph.i.i13.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = ptrtoaddr ptr %i.ah to i64
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.al = add i64 %i.aj, -4
  %i.am = sub i64 %i.al, %i.ak                    ; 3 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check89 = icmp ult i64 %i.am, 124
  br i1 %min.iters.check89, label %.lr.ph.i.i13.preheader113, label %vector.memcheck90

vector.memcheck90:                                ; preds = %.lr.ph.i.i13.preheader
  %i.ap = and i64 %i.am, -4
  %i.aq = add i64 %i.ap, 4                        ; 2 uses
  %4 = getelementptr i8, ptr %i.k, i64 %i.aq      ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ah, i64 %i.aq  ; 2 uses
  %bound0 = icmp ult ptr %i.k, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %4, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound091 = icmp ult ptr %i.k, %i.ar
  %bound192 = icmp ult ptr %i.ah, %4
  %found.conflict93 = and i1 %bound091, %bound192
  %conflict.rdx = or i1 %found.conflict, %found.conflict93
  %bound094 = icmp ugt ptr %i.ar, @_ZN5boost9container4test12copyable_int5countE
  %bound195 = icmp ult ptr %i.ah, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict96 = and i1 %bound094, %bound195
  %conflict.rdx97 = or i1 %conflict.rdx, %found.conflict96
  br i1 %conflict.rdx97, label %.lr.ph.i.i13.preheader113, label %vector.ph98

vector.ph98:                                      ; preds = %vector.memcheck90
  %n.vec99 = and i64 %i.ao, 9223372036854775800   ; 3 uses
  %i.as = shl i64 %n.vec99, 2                     ; 2 uses
  %i.at = getelementptr i8, ptr %i.ah, i64 %i.as
  %i.au = getelementptr i8, ptr %i.k, i64 %i.as   ; 2 uses
  %i.av = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test12copyable_int5countE.promoted, i64 0
  br label %vector.body100

vector.body100:                                   ; preds = %vector.body100, %vector.ph98
  %index101 = phi i64 [ 0, %vector.ph98 ], [ %index.next107, %vector.body100 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.av, %vector.ph98 ], [ %i.az, %vector.body100 ]
  %vec.phi102 = phi <4 x i32> [ zeroinitializer, %vector.ph98 ], [ %i.ba, %vector.body100 ]
  %i.aw = shl i64 %index101, 2                    ; 2 uses
  %next.gep103 = getelementptr i8, ptr %i.ah, i64 %i.aw ; 2 uses
  %next.gep104 = getelementptr i8, ptr %i.k, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep103, i64 16
  %wide.load105 = load <4 x i32>, ptr %next.gep103, align 4, !tbaa !249, !alias.scope !4807
  %wide.load106 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !249, !alias.scope !4807
  %i.ay = getelementptr i8, ptr %next.gep104, i64 16
  store <4 x i32> %wide.load105, ptr %next.gep104, align 4, !tbaa !249, !alias.scope !4808, !noalias !4809
  store <4 x i32> %wide.load106, ptr %i.ay, align 4, !tbaa !249, !alias.scope !4808, !noalias !4809
  %i.az = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.ba = add <4 x i32> %vec.phi102, splat (i32 1) ; 2 uses
  %index.next107 = add nuw i64 %index101, 8       ; 2 uses
  %i.bb = icmp eq i64 %index.next107, %n.vec99
  br i1 %i.bb, label %middle.block108, label %vector.body100, !llvm.loop !4794

middle.block108:                                  ; preds = %vector.body100
  %bin.rdx = add <4 x i32> %i.ba, %i.az
  %i.bc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.bc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4810, !noalias !4807
  %cmp.n109 = icmp eq i64 %i.ao, %n.vec99
  br i1 %cmp.n109, label %.loopexit, label %.lr.ph.i.i13.preheader113

.lr.ph.i.i13.preheader113:                        ; preds = %vector.memcheck90, %.lr.ph.i.i13.preheader, %middle.block108
  %.ph = phi i32 [ %_ZN5boost9container4test12copyable_int5countE.promoted, %vector.memcheck90 ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.i.i13.preheader ], [ %i.bc, %middle.block108 ]
  %.ph114 = phi ptr [ %i.ah, %vector.memcheck90 ], [ %i.ah, %.lr.ph.i.i13.preheader ], [ %i.at, %middle.block108 ]
  %.011.i.i.ph = phi ptr [ %i.k, %vector.memcheck90 ], [ %i.k, %.lr.ph.i.i13.preheader ], [ %i.au, %middle.block108 ]
  br label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %.lr.ph.i.i13.preheader113, %.lr.ph.i.i13
  %i.bd = phi i32 [ %i.bg, %.lr.ph.i.i13 ], [ %.ph, %.lr.ph.i.i13.preheader113 ]
  %i.be = phi ptr [ %i.bh, %.lr.ph.i.i13 ], [ %.ph114, %.lr.ph.i.i13.preheader113 ] ; 2 uses
  %.011.i.i = phi ptr [ %i.bi, %.lr.ph.i.i13 ], [ %.011.i.i.ph, %.lr.ph.i.i13.preheader113 ] ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !249
  store i32 %i.bf, ptr %.011.i.i, align 4, !tbaa !249
  %i.bg = add i32 %i.bd, 1                        ; 2 uses
  store i32 %i.bg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 4 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.bh, %i.ai
  br i1 %.not.i.i14, label %.loopexit, label %.lr.ph.i.i13, !llvm.loop !4795

.loopexit:                                        ; preds = %.lr.ph.i.i13, %middle.block108, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %.0.lcssa.i.i = phi ptr [ %i.k, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ], [ %i.au, %middle.block108 ], [ %i.bi, %.lr.ph.i.i13 ]
  %i.bj = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.bk = ptrtoint ptr %i.k to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 2
  store i64 %i.bm, ptr %i.ag, align 8, !tbaa !245
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.bn = load ptr, ptr %0, align 8, !tbaa !247   ; 9 uses
  %i.bo = ptrtoaddr ptr %i.bn to i64              ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !254 ; 11 uses
  %i.br = icmp ult i64 %i.bq, %i.f
  br i1 %i.br, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not3.i.i18 = icmp eq i64 %i.bq, 0
  br i1 %.not3.i.i18, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test12copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19.preheader

.lr.ph.i.i19.preheader:                           ; preds = %bb.h
  %min.iters.check62 = icmp ult i64 %i.bq, 8
  %i.bs = sub i64 %i.d, %i.bo
  %diff.check64 = icmp ugt i64 %i.bs, -32
  %or.cond = select i1 %min.iters.check62, i1 true, i1 %diff.check64
  br i1 %or.cond, label %.lr.ph.i.i19.preheader117, label %vector.ph65

vector.ph65:                                      ; preds = %.lr.ph.i.i19.preheader
  %n.vec66 = and i64 %i.bq, -8                    ; 3 uses
  %i.bt = shl i64 %n.vec66, 2                     ; 2 uses
  %i.bu = getelementptr i8, ptr %i.a, i64 %i.bt   ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bn, i64 %i.bt  ; 2 uses
  %i.bw = and i64 %i.bq, 7
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph65
  %index68 = phi i64 [ 0, %vector.ph65 ], [ %index.next73, %vector.body67 ] ; 2 uses
  %i.bx = shl i64 %index68, 2                     ; 2 uses
  %next.gep69 = getelementptr i8, ptr %i.a, i64 %i.bx ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.bn, i64 %i.bx ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep69, i64 16
  %wide.load71 = load <4 x i32>, ptr %next.gep69, align 4, !tbaa !249, !noalias !4811
  %wide.load72 = load <4 x i32>, ptr %i.by, align 4, !tbaa !249, !noalias !4811
  %i.bz = getelementptr i8, ptr %next.gep70, i64 16
  store <4 x i32> %wide.load71, ptr %next.gep70, align 4, !tbaa !249, !noalias !4811
  store <4 x i32> %wide.load72, ptr %i.bz, align 4, !tbaa !249, !noalias !4811
  %index.next73 = add nuw i64 %index68, 8         ; 2 uses
  %i.ca = icmp eq i64 %index.next73, %n.vec66
  br i1 %i.ca, label %middle.block74, label %vector.body67, !llvm.loop !4798

middle.block74:                                   ; preds = %vector.body67
  %cmp.n75 = icmp eq i64 %i.bq, %n.vec66
  br i1 %cmp.n75, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test12copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19.preheader117

.lr.ph.i.i19.preheader117:                        ; preds = %.lr.ph.i.i19.preheader, %middle.block74
  %.sroa.020.0.i.ph = phi ptr [ %i.a, %.lr.ph.i.i19.preheader ], [ %i.bu, %middle.block74 ] ; 2 uses
  %.0.i.ph = phi ptr [ %i.bn, %.lr.ph.i.i19.preheader ], [ %i.bv, %middle.block74 ] ; 2 uses
  %.04.i.i.ph = phi i64 [ %i.bq, %.lr.ph.i.i19.preheader ], [ %i.bw, %middle.block74 ] ; 4 uses
  %i.cb = add i64 %.04.i.i.ph, -1
  %xtraiter127 = and i64 %.04.i.i.ph, 7           ; 2 uses
  %lcmp.mod128.not = icmp eq i64 %xtraiter127, 0
  br i1 %lcmp.mod128.not, label %.lr.ph.i.i19.prol.loopexit, label %.lr.ph.i.i19.prol

.lr.ph.i.i19.prol:                                ; preds = %.lr.ph.i.i19.preheader117, %.lr.ph.i.i19.prol
  %.sroa.020.0.i.prol = phi ptr [ %i.ce, %.lr.ph.i.i19.prol ], [ %.sroa.020.0.i.ph, %.lr.ph.i.i19.preheader117 ] ; 2 uses
  %.0.i.prol = phi ptr [ %i.cf, %.lr.ph.i.i19.prol ], [ %.0.i.ph, %.lr.ph.i.i19.preheader117 ] ; 2 uses
  %.04.i.i.prol = phi i64 [ %i.cc, %.lr.ph.i.i19.prol ], [ %.04.i.i.ph, %.lr.ph.i.i19.preheader117 ]
  %prol.iter129 = phi i64 [ %prol.iter129.next, %.lr.ph.i.i19.prol ], [ 0, %.lr.ph.i.i19.preheader117 ]
  %i.cc = add i64 %.04.i.i.prol, -1               ; 2 uses
  %i.cd = load i32, ptr %.sroa.020.0.i.prol, align 4, !tbaa !249, !noalias !4811
  store i32 %i.cd, ptr %.0.i.prol, align 4, !tbaa !249, !noalias !4811
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i.prol, i64 4 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i.prol, i64 4 ; 3 uses
  %prol.iter129.next = add i64 %prol.iter129, 1   ; 2 uses
  %prol.iter129.cmp.not = icmp eq i64 %prol.iter129.next, %xtraiter127
  br i1 %prol.iter129.cmp.not, label %.lr.ph.i.i19.prol.loopexit, label %.lr.ph.i.i19.prol, !llvm.loop !4799

.lr.ph.i.i19.prol.loopexit:                       ; preds = %.lr.ph.i.i19.prol, %.lr.ph.i.i19.preheader117
  %.lcssa119.unr = phi ptr [ poison, %.lr.ph.i.i19.preheader117 ], [ %i.ce, %.lr.ph.i.i19.prol ]
  %.lcssa118.unr = phi ptr [ poison, %.lr.ph.i.i19.preheader117 ], [ %i.cf, %.lr.ph.i.i19.prol ]
  %.sroa.020.0.i.unr = phi ptr [ %.sroa.020.0.i.ph, %.lr.ph.i.i19.preheader117 ], [ %i.ce, %.lr.ph.i.i19.prol ]
  %.0.i.unr = phi ptr [ %.0.i.ph, %.lr.ph.i.i19.preheader117 ], [ %i.cf, %.lr.ph.i.i19.prol ]
  %.04.i.i.unr = phi i64 [ %.04.i.i.ph, %.lr.ph.i.i19.preheader117 ], [ %i.cc, %.lr.ph.i.i19.prol ]
  %i.cg = icmp ult i64 %i.cb, 7
  br i1 %i.cg, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test12copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i.i19.prol.loopexit, %.lr.ph.i.i19
  %.sroa.020.0.i = phi ptr [ %i.de, %.lr.ph.i.i19 ], [ %.sroa.020.0.i.unr, %.lr.ph.i.i19.prol.loopexit ] ; 9 uses
  %.0.i = phi ptr [ %i.df, %.lr.ph.i.i19 ], [ %.0.i.unr, %.lr.ph.i.i19.prol.loopexit ] ; 9 uses
  %.04.i.i = phi i64 [ %i.dc, %.lr.ph.i.i19 ], [ %.04.i.i.unr, %.lr.ph.i.i19.prol.loopexit ]
  %i.ch = load i32, ptr %.sroa.020.0.i, align 4, !tbaa !249, !noalias !4811
  store i32 %i.ch, ptr %.0.i, align 4, !tbaa !249, !noalias !4811
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.ck = load i32, ptr %i.ci, align 4, !tbaa !249, !noalias !4811
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !249, !noalias !4811
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.cn = load i32, ptr %i.cl, align 4, !tbaa !249, !noalias !4811
  store i32 %i.cn, ptr %i.cm, align 4, !tbaa !249, !noalias !4811
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 12
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !249, !noalias !4811
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !249, !noalias !4811
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !249, !noalias !4811
  store i32 %i.ct, ptr %i.cs, align 4, !tbaa !249, !noalias !4811
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 20
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i, i64 20
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !249, !noalias !4811
  store i32 %i.cw, ptr %i.cv, align 4, !tbaa !249, !noalias !4811
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !249, !noalias !4811
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !249, !noalias !4811
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 28
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dc = add i64 %.04.i.i, -8                    ; 2 uses
  %i.dd = load i32, ptr %i.da, align 4, !tbaa !249, !noalias !4811
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !249, !noalias !4811
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 32 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  %.not.i.i20.7 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i20.7, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test12copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19, !llvm.loop !4800

_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test12copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i: ; preds = %.lr.ph.i.i19.prol.loopexit, %.lr.ph.i.i19, %middle.block74, %bb.h
  %.sroa.020.1.i = phi ptr [ %i.a, %bb.h ], [ %i.bu, %middle.block74 ], [ %.lcssa119.unr, %.lr.ph.i.i19.prol.loopexit ], [ %i.de, %.lr.ph.i.i19 ] ; 2 uses
  %.1.i = phi ptr [ %i.bn, %bb.h ], [ %i.bv, %middle.block74 ], [ %.lcssa118.unr, %.lr.ph.i.i19.prol.loopexit ], [ %i.df, %.lr.ph.i.i19 ] ; 2 uses
  %i.dg = sub i64 %i.f, %i.bq                     ; 3 uses
  %xtraiter130 = and i64 %i.dg, 3                 ; 2 uses
  %lcmp.mod131.not = icmp eq i64 %xtraiter130, 0
  br i1 %lcmp.mod131.not, label %.lr.ph.i11.i.prol.loopexit, label %.lr.ph.i11.i.prol

.lr.ph.i11.i.prol:                                ; preds = %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test12copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, %.lr.ph.i11.i.prol
  %i.dh = phi ptr [ %i.dm, %.lr.ph.i11.i.prol ], [ %.sroa.020.1.i, %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test12copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ] ; 2 uses
  %.016.i.i.prol = phi i64 [ %i.di, %.lr.ph.i11.i.prol ], [ %i.dg, %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test12copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ]
  %.01315.i.i.prol = phi ptr [ %i.dn, %.lr.ph.i11.i.prol ], [ %.1.i, %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test12copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ] ; 3 uses
  %prol.iter132 = phi i64 [ %prol.iter132.next, %.lr.ph.i11.i.prol ], [ 0, %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test12copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ]
  %i.di = add i64 %.016.i.i.prol, -1              ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.prol) ]
end_hunk_10
begin_hunk_11_@_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignINS2_22input_iterator_wrapperINS0_12vec_iteratorIPS3_Lb0EEEEEEEvT_SF_PNS_11move_detail13disable_if_orIvNSG_14is_convertibleISF_mEENSG_4and_INSG_12is_differentINSG_17integral_constantIjLj1EEENSM_IjLj0EEEEENS0_3dtl21is_not_input_iteratorISF_EENSG_5bool_ILb1EEESU_EENST_ILb0EEESW_E4typeE:bb.a
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !249, !noalias !4828
  store i32 %i.az, ptr %i.aq, align 4, !tbaa !249, !noalias !4828
  %i.ba = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !4828
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !4828
  %i.bc = add i64 %i.ao, 1
  store i64 %i.bc, ptr %i.b, align 8, !tbaa !254, !noalias !4828
  %i.bd = icmp eq i64 %i.ax, 4
  br i1 %i.bd, label %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.f
  %i.be = shl nuw nsw i64 %i.ao, 2                ; 2 uses
  %i.bf = add nuw i64 %i.be, 4
  %i.bg = sub i64 %i.bf, %i.ax
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.ap, i64 %i.bg
  %i.bh = sub i64 %i.be, %i.ax
  %scevgep15.i.i.i.i = getelementptr i8, ptr %i.ap, i64 %i.bh
  %i.bi = add i64 %i.ax, -4
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep.i.i.i.i, ptr align 4 %scevgep15.i.i.i.i, i64 %i.bi, i1 false), !tbaa !249, !noalias !4828
  br label %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i

_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i: ; preds = %.lr.ph.i.preheader.i.i.i.i, %bb.f
  %i.bj = load i32, ptr %.sroa.04.0, align 4, !tbaa !249, !noalias !4828
  store i32 %i.bj, ptr %.sroa.01.05.i, align 4, !tbaa !249, !noalias !4828
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE7emplaceIJRS3_EEENS0_12vec_iteratorIPS3_Lb0EEENSB_ISC_Lb1EEEDpOT_.exit.i

bb.g:                                             ; preds = %bb.c
  call void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JRS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESF_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.140") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %.sroa.01.05.i, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %.sroa.04.0), !noalias !4827
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !285, !noalias !4827
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE7emplaceIJRS3_EEENS0_12vec_iteratorIPS3_Lb0EEENSB_ISC_Lb1EEEDpOT_.exit.i

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE7emplaceIJRS3_EEENS0_12vec_iteratorIPS3_Lb0EEENSB_ISC_Lb1EEEDpOT_.exit.i: ; preds = %bb.g, %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i, %bb.e
  %i.bk = phi ptr [ %.pre.i, %bb.g ], [ %.sroa.01.05.i, %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i ], [ %.sroa.01.05.i, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !4827
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bm, %.lcssa
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertINS2_22input_iterator_wrapperINS0_12vec_iteratorIPS3_Lb0EEEEEEESD_NSB_ISC_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS0_3dtl21is_not_input_iteratorISG_EENSH_5bool_ILb0EEESP_E4typeE.exit, label %bb.c, !llvm.loop !4824

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertINS2_22input_iterator_wrapperINS0_12vec_iteratorIPS3_Lb0EEEEEEESD_NSB_ISC_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS0_3dtl21is_not_input_iteratorISG_EENSH_5bool_ILb0EEESP_E4typeE.exit: ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE7emplaceIJRS3_EEENS0_12vec_iteratorIPS3_Lb0EEENSB_ISC_Lb1EEEDpOT_.exit.i, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JRS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESF_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !246  ; 6 uses
  %i.d = sub i64 2305843009213693951, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !245  ; 2 uses
  %.neg.i = sub i64 %3, %i.c
  %i.g = add i64 %.neg.i, %i.f
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = shl nuw i64 %i.c, 3
  %i.k = udiv i64 %i.j, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.c, -6917529027641081857
  %i.m = shl i64 %i.c, 3
  %spec.select.i.i = select i1 %i.l, i64 -1, i64 %i.m
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.k, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.n = add i64 %i.f, %3                         ; 2 uses
  %i.o = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.o) ; 2 uses
  %i.q = icmp ugt i64 %i.n, 2305843009213693951
  br i1 %i.q, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !74

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.r = shl nuw nsw i64 %i.p, 2
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #25 ; 7 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !247    ; 15 uses
  %i.u = ptrtoaddr ptr %i.t to i64                ; 3 uses
  %i.v = load i64, ptr %i.e, align 8, !tbaa !254  ; 10 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.v ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.t, %2
  %.pre = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  br i1 %.not16.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %i.x = add i64 %i.a, -4
  %i.y = sub i64 %i.x, %i.u                       ; 3 uses
  %i.z = lshr i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader63, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ab = and i64 %i.y, -4
  %i.ac = getelementptr i8, ptr %i.t, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %bound0 = icmp ugt ptr %i.ad, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.t, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader63, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 9223372036854775800     ; 3 uses
  %i.ae = shl i64 %n.vec, 2                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.s, i64 %i.ae   ; 2 uses
  %i.ah = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ah, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi16 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %i.ai = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ai ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.s, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !249, !alias.scope !4841
  %wide.load18 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !249, !alias.scope !4841
  %i.ak = getelementptr i8, ptr %next.gep17, i64 16
  store <4 x i32> %wide.load, ptr %next.gep17, align 4, !tbaa !249
  store <4 x i32> %wide.load18, ptr %i.ak, align 4, !tbaa !249
  %i.al = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.am = add <4 x i32> %vec.phi16, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !4831

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.am, %i.al
  %i.ao = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 3 uses
  store i32 %i.ao, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4842, !noalias !4841
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader63

.lr.ph.i.i.i.preheader63:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph64 = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.018.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.01517.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader63, %.lr.ph.i.i.i
  %i.ap = phi i32 [ %i.ar, %.lr.ph.i.i.i ], [ %.ph64, %.lr.ph.i.i.i.preheader63 ]
  %.018.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader63 ] ; 2 uses
  %.01517.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.01517.i.i.i.ph, %.lr.ph.i.i.i.preheader63 ] ; 2 uses
  %i.aq = load i32, ptr %.018.i.i.i, align 4, !tbaa !249
  store i32 %i.aq, ptr %.01517.i.i.i, align 4, !tbaa !249
  %i.ar = add i32 %i.ap, 1                        ; 3 uses
  store i32 %i.ar, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.as = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %2
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !4833

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %i.au = phi i32 [ %.pre, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ao, %middle.block ], [ %i.ar, %.lr.ph.i.i.i ]
  %.015.lcssa.i.i.i = phi ptr [ %i.s, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ag, %middle.block ], [ %i.at, %.lr.ph.i.i.i ] ; 3 uses
  %i.av = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.av, ptr %.015.lcssa.i.i.i, align 4, !tbaa !249
  %i.aw = add i32 %i.au, 1                        ; 4 uses
  store i32 %i.aw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %.not16.i19.i.i = icmp eq ptr %2, %i.w
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRS4_EEEEEvRT_T0_SF_SF_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %.loopexit.i.i
  %i.ax = getelementptr [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3 ; 6 uses
  %i.ay = shl i64 %i.v, 2
  %i.az = add i64 %i.ay, %i.u
  %i.ba = add i64 %i.az, -4
  %i.bb = sub i64 %i.ba, %i.a                     ; 2 uses
  %i.bc = lshr i64 %i.bb, 2
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check33 = icmp ult i64 %i.bb, 156
  br i1 %min.iters.check33, label %.lr.ph.i20.i.i.preheader, label %vector.memcheck34

vector.memcheck34:                                ; preds = %.lr.ph.i20.preheader.i.i
  %i.be = shl i64 %3, 2
  %i.bf = shl i64 %i.v, 2
  %i.bg = add i64 %i.bf, %i.u
  %i.bh = add i64 %i.bg, -4
  %i.bi = sub i64 %i.bh, %i.a
  %i.bj = and i64 %i.bi, -4                       ; 2 uses
  %i.bk = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.be
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.bj
  %i.bm = getelementptr i8, ptr %i.bl, i64 4      ; 2 uses
  %5 = getelementptr i8, ptr %2, i64 %i.bj
  %6 = getelementptr i8, ptr %5, i64 4            ; 2 uses
  %bound035 = icmp ult ptr %i.ax, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound136 = icmp ugt ptr %i.bm, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict37 = and i1 %bound035, %bound136
  %bound038 = icmp ult ptr %i.ax, %6
  %bound139 = icmp ult ptr %2, %i.bm
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx = or i1 %found.conflict37, %found.conflict40
  %bound041 = icmp ugt ptr %6, @_ZN5boost9container4test12copyable_int5countE
  %bound142 = icmp ult ptr %2, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %conflict.rdx, %found.conflict43
  br i1 %conflict.rdx44, label %.lr.ph.i20.i.i.preheader, label %vector.ph45

vector.ph45:                                      ; preds = %vector.memcheck34
  %n.vec46 = and i64 %i.bd, 9223372036854775800   ; 3 uses
  %i.bn = shl i64 %n.vec46, 2                     ; 2 uses
  %i.bo = getelementptr i8, ptr %2, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.ax, i64 %i.bn
  %i.bq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.aw, i64 0
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph45
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next55, %vector.body47 ] ; 2 uses
  %vec.phi49 = phi <4 x i32> [ %i.bq, %vector.ph45 ], [ %i.bu, %vector.body47 ]
  %vec.phi50 = phi <4 x i32> [ zeroinitializer, %vector.ph45 ], [ %i.bv, %vector.body47 ]
  %i.br = shl i64 %index48, 2                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %2, i64 %i.br ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.ax, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load53 = load <4 x i32>, ptr %next.gep51, align 4, !tbaa !249, !alias.scope !4843
  %wide.load54 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !249, !alias.scope !4843
  %i.bt = getelementptr i8, ptr %next.gep52, i64 16
  store <4 x i32> %wide.load53, ptr %next.gep52, align 4, !tbaa !249, !alias.scope !4844, !noalias !4845
  store <4 x i32> %wide.load54, ptr %i.bt, align 4, !tbaa !249, !alias.scope !4844, !noalias !4845
  %i.bu = add <4 x i32> %vec.phi49, splat (i32 1) ; 2 uses
  %i.bv = add <4 x i32> %vec.phi50, splat (i32 1) ; 2 uses
  %index.next55 = add nuw i64 %index48, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next55, %n.vec46
  br i1 %i.bw, label %middle.block56, label %vector.body47, !llvm.loop !4838

middle.block56:                                   ; preds = %vector.body47
  %bin.rdx57 = add <4 x i32> %i.bv, %i.bu
  %i.bx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx57) ; 2 uses
  store i32 %i.bx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4846, !noalias !4843
  %cmp.n58 = icmp eq i64 %i.bd, %n.vec46
  br i1 %cmp.n58, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRS4_EEEEEvRT_T0_SF_SF_T1_mT2_.exit.i, label %.lr.ph.i20.i.i.preheader

.lr.ph.i20.i.i.preheader:                         ; preds = %vector.memcheck34, %.lr.ph.i20.preheader.i.i, %middle.block56
  %.ph = phi i32 [ %i.aw, %vector.memcheck34 ], [ %i.aw, %.lr.ph.i20.preheader.i.i ], [ %i.bx, %middle.block56 ]
  %.018.i21.i.i.ph = phi ptr [ %2, %vector.memcheck34 ], [ %2, %.lr.ph.i20.preheader.i.i ], [ %i.bo, %middle.block56 ]
  %.01517.i22.i.i.ph = phi ptr [ %i.ax, %vector.memcheck34 ], [ %i.ax, %.lr.ph.i20.preheader.i.i ], [ %i.bp, %middle.block56 ]
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.preheader, %.lr.ph.i20.i.i
  %i.by = phi i32 [ %i.ca, %.lr.ph.i20.i.i ], [ %.ph, %.lr.ph.i20.i.i.preheader ]
  %.018.i21.i.i = phi ptr [ %i.cb, %.lr.ph.i20.i.i ], [ %.018.i21.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.cc, %.lr.ph.i20.i.i ], [ %.01517.i22.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %i.bz = load i32, ptr %.018.i21.i.i, align 4, !tbaa !249
  store i32 %i.bz, ptr %.01517.i22.i.i, align 4, !tbaa !249
  %i.ca = add i32 %i.by, 1                        ; 2 uses
  store i32 %i.ca, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cb = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.cb, %i.w
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRS4_EEEEEvRT_T0_SF_SF_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !4839

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRS4_EEEEEvRT_T0_SF_SF_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %middle.block56, %.loopexit.i.i
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRS3_EEEEEvPS3_mSE_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRS4_EEEEEvRT_T0_SF_SF_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.cd, %.lr.ph.i.i.prol ], [ %i.v, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.cg, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.cd = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.ce = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cf = add i32 %i.ce, -1
  store i32 %i.cf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4840

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.v, %.lr.ph.i.i.preheader ], [ %i.cd, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.cg, %.lr.ph.i.i.prol ]
  %i.ch = icmp ult i64 %i.v, 4
  br i1 %i.ch, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.cp, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.cr, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !249
  %i.ci = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.cj = add i32 %i.ci, -1
  store i32 %i.cj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ck = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.ck, align 4, !tbaa !249
  %i.cl = add i32 %i.ci, -2
  store i32 %i.cl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.cm, align 4, !tbaa !249
  %i.cn = add i32 %i.ci, -3
  store i32 %i.cn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.co = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.cp = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.co, align 4, !tbaa !249
  %i.cq = add i32 %i.ci, -4
  store i32 %i.cq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cr = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !26

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ct = icmp eq ptr %i.cs, %i.t
  br i1 %i.ct, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRS3_EEEEEvPS3_mSE_mT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.cu = load i64, ptr %i.b, align 8, !tbaa !246
  %i.cv = shl i64 %i.cu, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.cv) #22
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !245
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRS3_EEEEEvPS3_mSE_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRS3_EEEEEvPS3_mSE_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRS4_EEEEEvRT_T0_SF_SF_T1_mT2_.exit.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.h
  %i.cw = phi i64 [ %i.v, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRS4_EEEEEvRT_T0_SF_SF_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ], [ %i.v, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ]
  %i.cx = ptrtoint ptr %2 to i64
  %i.cy = ptrtoint ptr %i.t to i64
  %i.cz = sub i64 %i.cx, %i.cy
  store ptr %i.s, ptr %1, align 8, !tbaa !247
  %i.da = add i64 %i.cw, %3
  store i64 %i.da, ptr %i.e, align 8, !tbaa !245
  store i64 %i.p, ptr %i.b, align 8, !tbaa !84
  %i.db = getelementptr inbounds i8, ptr %i.s, i64 %i.cz
  store ptr %i.db, ptr %0, align 8, !tbaa !289
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignIPS3_EEvT_SB_PNS_11move_detail13disable_if_orIvNSC_7is_sameINSC_17integral_constantIjLj1EEENSF_IjLj0EEEEENSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !246  ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 2305843009213693951
  br i1 %i.h, label %bb.c, label %bb.d, !prof !74

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #25 ; 7 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !247    ; 5 uses
  %.not17 = icmp eq ptr %i.j, null
  br i1 %.not17, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !254  ; 5 uses
  %.not3.i.i = icmp eq i64 %i.l, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %xtraiter115 = and i64 %i.l, 3                  ; 2 uses
  %lcmp.mod116.not = icmp eq i64 %xtraiter115, 0
  br i1 %lcmp.mod116.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.m, %.lr.ph.i.i.prol ], [ %i.l, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.prol ], [ %i.j, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter117 = phi i64 [ %prol.iter117.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.m = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.n = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter117.next = add i64 %prol.iter117, 1   ; 2 uses
  %prol.iter117.cmp.not = icmp eq i64 %prol.iter117.next, %xtraiter115
  br i1 %prol.iter117.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4847

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.l, %.lr.ph.i.i.preheader ], [ %i.m, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.preheader ], [ %i.p, %.lr.ph.i.i.prol ]
end_hunk_11
begin_hunk_12_@_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEENS0_12vec_iteratorIPS3_Lb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
  %i.l = icmp ugt i64 %i.c, -6917529027641081857
  %i.m = shl i64 %i.c, 3
  %spec.select.i.i = select i1 %i.l, i64 -1, i64 %i.m
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.k, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.n = add i64 %i.f, %3                         ; 2 uses
  %i.o = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.o) ; 2 uses
  %i.q = icmp ugt i64 %i.n, 2305843009213693951
  br i1 %i.q, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !74

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.r = shl nuw nsw i64 %i.p, 2
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #25 ; 7 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !247    ; 15 uses
  %i.u = ptrtoaddr ptr %i.t to i64                ; 3 uses
  %i.v = load i64, ptr %i.e, align 8, !tbaa !254  ; 10 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.v ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.t, %2
  br i1 %.not16.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.x = add i64 %i.a, -4
  %i.y = sub i64 %i.x, %i.u                       ; 3 uses
  %i.z = lshr i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader70, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ab = and i64 %i.y, -4
  %i.ac = getelementptr i8, ptr %i.t, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %bound0 = icmp ugt ptr %i.ad, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.t, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader70, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 9223372036854775800     ; 3 uses
  %i.ae = shl i64 %n.vec, 2                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.s, i64 %i.ae   ; 2 uses
  %i.ah = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test12copyable_int5countE.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ah, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi16 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %i.ai = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ai ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.s, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !249, !alias.scope !4883
  %wide.load18 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !249, !alias.scope !4883
  %i.ak = getelementptr i8, ptr %next.gep17, i64 16
  store <4 x i32> %wide.load, ptr %next.gep17, align 4, !tbaa !249
  store <4 x i32> %wide.load18, ptr %i.ak, align 4, !tbaa !249
  %i.al = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.am = add <4 x i32> %vec.phi16, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !4872

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.am, %i.al
  %i.ao = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ao, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4884, !noalias !4883
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i.preheader70

.lr.ph.i.i.i.preheader70:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph71 = phi i32 [ %_ZN5boost9container4test12copyable_int5countE.promoted, %vector.memcheck ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.018.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.01517.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader70, %.lr.ph.i.i.i
  %i.ap = phi i32 [ %i.ar, %.lr.ph.i.i.i ], [ %.ph71, %.lr.ph.i.i.i.preheader70 ]
  %.018.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader70 ] ; 2 uses
  %.01517.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.01517.i.i.i.ph, %.lr.ph.i.i.i.preheader70 ] ; 2 uses
  %i.aq = load i32, ptr %.018.i.i.i, align 4, !tbaa !249
  store i32 %i.aq, ptr %.01517.i.i.i, align 4, !tbaa !249
  %i.ar = add i32 %i.ap, 1                        ; 2 uses
  store i32 %i.ar, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.as = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %2
  br i1 %.not.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !4874

_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.s, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ag, %middle.block ], [ %i.at, %.lr.ph.i.i.i ] ; 4 uses
  %.not15.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.pre = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 2 uses
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %i.au = phi i32 [ %i.ax, %.lr.ph.i.i.i.i.prol ], [ %.pre, %.lr.ph.i.i.i.i.preheader ]
  %.018.i.i.i.i.prol = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01417.i.i.i.i.prol = phi ptr [ %i.az, %.lr.ph.i.i.i.i.prol ], [ %.015.lcssa.i.i.i, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.sroa.0.016.i.i.i.i.prol = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.prol, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.prol) ]
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !67
  store i32 %i.aw, ptr %.01417.i.i.i.i.prol, align 4, !tbaa !249
  %i.ax = add i32 %i.au, 1                        ; 3 uses
  store i32 %i.ax, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ay = load ptr, ptr %.sroa.0.016.i.i.i.i.prol, align 8, !tbaa !187 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ba = add i64 %.018.i.i.i.i.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !4875

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.unr = phi i32 [ %.pre, %.lr.ph.i.i.i.i.preheader ], [ %i.ax, %.lr.ph.i.i.i.i.prol ]
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.ba, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %.015.lcssa.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.az, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.ay, %.lr.ph.i.i.i.i.prol ]
  %i.bb = icmp ult i64 %3, 4
  br i1 %i.bb, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.bc = phi i32 [ %i.bu, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.018.i.i.i.i = phi i64 [ %i.bx, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !67
  store i32 %i.be, ptr %.01417.i.i.i.i, align 4, !tbaa !249
  %i.bf = add i32 %i.bc, 1
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bg = load ptr, ptr %.sroa.0.016.i.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !67
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !249
  %i.bk = add i32 %i.bc, 2
  store i32 %i.bk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !187 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !67
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !249
  %i.bp = add i32 %i.bc, 3
  store i32 %i.bp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !187 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !67
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !249
  %i.bu = add i32 %i.bc, 4                        ; 2 uses
  store i32 %i.bu, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bv = load ptr, ptr %i.bq, align 8, !tbaa !187
  %i.bw = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 16
  %i.bx = add i64 %.018.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !49

_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.not16.i19.i.i = icmp eq ptr %2, %i.w
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i
  %i.by = getelementptr [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3 ; 6 uses
  %.pre9 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.bz = shl i64 %i.v, 2
  %i.ca = add i64 %i.bz, %i.u
  %i.cb = add i64 %i.ca, -4
  %i.cc = sub i64 %i.cb, %i.a                     ; 2 uses
  %i.cd = lshr i64 %i.cc, 2
  %i.ce = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %min.iters.check33 = icmp ult i64 %i.cc, 156
  br i1 %min.iters.check33, label %.lr.ph.i20.i.i.preheader, label %vector.memcheck34

vector.memcheck34:                                ; preds = %.lr.ph.i20.preheader.i.i
  %i.cf = shl i64 %3, 2
  %i.cg = shl i64 %i.v, 2
  %i.ch = add i64 %i.cg, %i.u
  %i.ci = add i64 %i.ch, -4
  %i.cj = sub i64 %i.ci, %i.a
  %i.ck = and i64 %i.cj, -4                       ; 2 uses
  %i.cl = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.cf
  %i.cm = getelementptr i8, ptr %i.cl, i64 %i.ck
  %i.cn = getelementptr i8, ptr %i.cm, i64 4      ; 2 uses
  %5 = getelementptr i8, ptr %2, i64 %i.ck
  %6 = getelementptr i8, ptr %5, i64 4            ; 2 uses
  %bound035 = icmp ult ptr %i.by, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound136 = icmp ugt ptr %i.cn, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict37 = and i1 %bound035, %bound136
  %bound038 = icmp ult ptr %i.by, %6
  %bound139 = icmp ult ptr %2, %i.cn
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx = or i1 %found.conflict37, %found.conflict40
  %bound041 = icmp ugt ptr %6, @_ZN5boost9container4test12copyable_int5countE
  %bound142 = icmp ult ptr %2, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %conflict.rdx, %found.conflict43
  br i1 %conflict.rdx44, label %.lr.ph.i20.i.i.preheader, label %vector.ph45

vector.ph45:                                      ; preds = %vector.memcheck34
  %n.vec46 = and i64 %i.ce, 9223372036854775800   ; 3 uses
  %i.co = shl i64 %n.vec46, 2                     ; 2 uses
  %i.cp = getelementptr i8, ptr %2, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.by, i64 %i.co
  %i.cr = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre9, i64 0
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph45
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next62, %vector.body47 ] ; 2 uses
  %vec.phi49 = phi <4 x i32> [ %i.cr, %vector.ph45 ], [ %i.cv, %vector.body47 ]
  %vec.phi50 = phi <4 x i32> [ zeroinitializer, %vector.ph45 ], [ %i.cw, %vector.body47 ]
  %i.cs = shl i64 %index48, 2                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %2, i64 %i.cs ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.by, i64 %i.cs ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep52) ]
  %i.ct = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load60 = load <4 x i32>, ptr %next.gep51, align 4, !tbaa !249, !alias.scope !4885
  %wide.load61 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !249, !alias.scope !4885
  %i.cu = getelementptr i8, ptr %next.gep52, i64 16
  store <4 x i32> %wide.load60, ptr %next.gep52, align 4, !tbaa !249, !alias.scope !4886, !noalias !4887
  store <4 x i32> %wide.load61, ptr %i.cu, align 4, !tbaa !249, !alias.scope !4886, !noalias !4887
  %i.cv = add <4 x i32> %vec.phi49, splat (i32 1) ; 2 uses
  %i.cw = add <4 x i32> %vec.phi50, splat (i32 1) ; 2 uses
  %index.next62 = add nuw i64 %index48, 8         ; 2 uses
  %i.cx = icmp eq i64 %index.next62, %n.vec46
  br i1 %i.cx, label %middle.block63, label %vector.body47, !llvm.loop !4880

middle.block63:                                   ; preds = %vector.body47
  %bin.rdx64 = add <4 x i32> %i.cw, %i.cv
  %i.cy = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx64) ; 2 uses
  store i32 %i.cy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4888, !noalias !4885
  %cmp.n65 = icmp eq i64 %i.ce, %n.vec46
  br i1 %cmp.n65, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, label %.lr.ph.i20.i.i.preheader

.lr.ph.i20.i.i.preheader:                         ; preds = %vector.memcheck34, %.lr.ph.i20.preheader.i.i, %middle.block63
  %.ph = phi i32 [ %.pre9, %vector.memcheck34 ], [ %.pre9, %.lr.ph.i20.preheader.i.i ], [ %i.cy, %middle.block63 ]
  %.018.i21.i.i.ph = phi ptr [ %2, %vector.memcheck34 ], [ %2, %.lr.ph.i20.preheader.i.i ], [ %i.cp, %middle.block63 ]
  %.01517.i22.i.i.ph = phi ptr [ %i.by, %vector.memcheck34 ], [ %i.by, %.lr.ph.i20.preheader.i.i ], [ %i.cq, %middle.block63 ]
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.preheader, %.lr.ph.i20.i.i
  %i.cz = phi i32 [ %i.db, %.lr.ph.i20.i.i ], [ %.ph, %.lr.ph.i20.i.i.preheader ]
  %.018.i21.i.i = phi ptr [ %i.dc, %.lr.ph.i20.i.i ], [ %.018.i21.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.dd, %.lr.ph.i20.i.i ], [ %.01517.i22.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i.i) ]
  %i.da = load i32, ptr %.018.i21.i.i, align 4, !tbaa !249
  store i32 %i.da, ptr %.01517.i22.i.i, align 4, !tbaa !249
  %i.db = add i32 %i.cz, 1                        ; 2 uses
  store i32 %i.db, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dc = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.dc, %i.w
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !4881

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %middle.block63, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mSF_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %xtraiter75 = and i64 %i.v, 3                   ; 2 uses
  %lcmp.mod76.not = icmp eq i64 %xtraiter75, 0
  br i1 %lcmp.mod76.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.de, %.lr.ph.i.i.prol ], [ %i.v, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.dh, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter77 = phi i64 [ %prol.iter77.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.de = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.df = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dg = add i32 %i.df, -1
  store i32 %i.dg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dh = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter77.next = add i64 %prol.iter77, 1     ; 2 uses
  %prol.iter77.cmp.not = icmp eq i64 %prol.iter77.next, %xtraiter75
  br i1 %prol.iter77.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4882

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.v, %.lr.ph.i.i.preheader ], [ %i.de, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.dh, %.lr.ph.i.i.prol ]
  %i.di = icmp ult i64 %i.v, 4
  br i1 %i.di, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.dq, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ds, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !249
  %i.dj = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.dk = add i32 %i.dj, -1
  store i32 %i.dk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dl = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.dl, align 4, !tbaa !249
  %i.dm = add i32 %i.dj, -2
  store i32 %i.dm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dn = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.dn, align 4, !tbaa !249
  %i.do = add i32 %i.dj, -3
  store i32 %i.do, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dp = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.dq = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.dp, align 4, !tbaa !249
  %i.dr = add i32 %i.dj, -4
  store i32 %i.dr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ds = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !26

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.du = icmp eq ptr %i.dt, %i.t
  br i1 %i.du, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mSF_mT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.dv = load i64, ptr %i.b, align 8, !tbaa !246
  %i.dw = shl i64 %i.dv, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.dw) #22
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !245
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mSF_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mSF_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.h
  %i.dx = phi i64 [ %i.v, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ], [ %i.v, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ]
  %i.dy = ptrtoint ptr %2 to i64
  %i.dz = ptrtoint ptr %i.t to i64
  %i.ea = sub i64 %i.dy, %i.dz
  store ptr %i.s, ptr %1, align 8, !tbaa !247
  %i.eb = add i64 %i.dx, %3
  store i64 %i.eb, ptr %i.e, align 8, !tbaa !245
  store i64 %i.p, ptr %i.b, align 8, !tbaa !84
  %i.ec = getelementptr inbounds i8, ptr %i.s, i64 %i.ea
  store ptr %i.ec, ptr %0, align 8, !tbaa !289
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JRiEEEEENS0_12vec_iteratorIPS3_Lb0EEESF_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !246  ; 6 uses
  %i.d = sub i64 2305843009213693951, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !245  ; 2 uses
  %.neg.i = sub i64 %3, %i.c
  %i.g = add i64 %.neg.i, %i.f
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = shl nuw i64 %i.c, 3
  %i.k = udiv i64 %i.j, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.c, -6917529027641081857
  %i.m = shl i64 %i.c, 3
  %spec.select.i.i = select i1 %i.l, i64 -1, i64 %i.m
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.k, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.n = add i64 %i.f, %3                         ; 2 uses
  %i.o = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.o) ; 2 uses
  %i.q = icmp ugt i64 %i.n, 2305843009213693951
  br i1 %i.q, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !74

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.r = shl nuw nsw i64 %i.p, 2
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #25 ; 7 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !247    ; 15 uses
  %i.u = ptrtoaddr ptr %i.t to i64                ; 3 uses
  %i.v = load i64, ptr %i.e, align 8, !tbaa !254  ; 10 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.v ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.t, %2
  %.pre = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  br i1 %.not16.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %i.x = add i64 %i.a, -4
  %i.y = sub i64 %i.x, %i.u                       ; 3 uses
  %i.z = lshr i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader63, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ab = and i64 %i.y, -4
  %i.ac = getelementptr i8, ptr %i.t, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %bound0 = icmp ugt ptr %i.ad, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.t, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader63, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 9223372036854775800     ; 3 uses
  %i.ae = shl i64 %n.vec, 2                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.s, i64 %i.ae   ; 2 uses
  %i.ah = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ah, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi16 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %i.ai = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ai ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.s, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !249, !alias.scope !4901
  %wide.load18 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !249, !alias.scope !4901
  %i.ak = getelementptr i8, ptr %next.gep17, i64 16
  store <4 x i32> %wide.load, ptr %next.gep17, align 4, !tbaa !249
  store <4 x i32> %wide.load18, ptr %i.ak, align 4, !tbaa !249
  %i.al = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.am = add <4 x i32> %vec.phi16, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !4891

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.am, %i.al
  %i.ao = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 3 uses
  store i32 %i.ao, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4902, !noalias !4901
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader63

.lr.ph.i.i.i.preheader63:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph64 = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.018.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.01517.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader63, %.lr.ph.i.i.i
  %i.ap = phi i32 [ %i.ar, %.lr.ph.i.i.i ], [ %.ph64, %.lr.ph.i.i.i.preheader63 ]
  %.018.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader63 ] ; 2 uses
  %.01517.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.01517.i.i.i.ph, %.lr.ph.i.i.i.preheader63 ] ; 2 uses
  %i.aq = load i32, ptr %.018.i.i.i, align 4, !tbaa !249
  store i32 %i.aq, ptr %.01517.i.i.i, align 4, !tbaa !249
  %i.ar = add i32 %i.ap, 1                        ; 3 uses
  store i32 %i.ar, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.as = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %2
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !4893

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %i.au = phi i32 [ %.pre, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ao, %middle.block ], [ %i.ar, %.lr.ph.i.i.i ]
  %.015.lcssa.i.i.i = phi ptr [ %i.s, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ag, %middle.block ], [ %i.at, %.lr.ph.i.i.i ] ; 3 uses
  %i.av = load i32, ptr %4, align 4, !tbaa !67
  store i32 %i.av, ptr %.015.lcssa.i.i.i, align 4, !tbaa !249
  %i.aw = add i32 %i.au, 1                        ; 4 uses
  store i32 %i.aw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %.not16.i19.i.i = icmp eq ptr %2, %i.w
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRiEEEEEvRT_T0_SF_SF_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %.loopexit.i.i
  %i.ax = getelementptr [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3 ; 6 uses
  %i.ay = shl i64 %i.v, 2
  %i.az = add i64 %i.ay, %i.u
  %i.ba = add i64 %i.az, -4
  %i.bb = sub i64 %i.ba, %i.a                     ; 2 uses
  %i.bc = lshr i64 %i.bb, 2
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check33 = icmp ult i64 %i.bb, 156
  br i1 %min.iters.check33, label %.lr.ph.i20.i.i.preheader, label %vector.memcheck34

vector.memcheck34:                                ; preds = %.lr.ph.i20.preheader.i.i
  %i.be = shl i64 %3, 2
  %i.bf = shl i64 %i.v, 2
  %i.bg = add i64 %i.bf, %i.u
  %i.bh = add i64 %i.bg, -4
  %i.bi = sub i64 %i.bh, %i.a
  %i.bj = and i64 %i.bi, -4                       ; 2 uses
  %i.bk = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.be
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.bj
  %i.bm = getelementptr i8, ptr %i.bl, i64 4      ; 2 uses
  %5 = getelementptr i8, ptr %2, i64 %i.bj
  %6 = getelementptr i8, ptr %5, i64 4            ; 2 uses
  %bound035 = icmp ult ptr %i.ax, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound136 = icmp ugt ptr %i.bm, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict37 = and i1 %bound035, %bound136
  %bound038 = icmp ult ptr %i.ax, %6
  %bound139 = icmp ult ptr %2, %i.bm
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx = or i1 %found.conflict37, %found.conflict40
  %bound041 = icmp ugt ptr %6, @_ZN5boost9container4test12copyable_int5countE
  %bound142 = icmp ult ptr %2, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %conflict.rdx, %found.conflict43
  br i1 %conflict.rdx44, label %.lr.ph.i20.i.i.preheader, label %vector.ph45

vector.ph45:                                      ; preds = %vector.memcheck34
  %n.vec46 = and i64 %i.bd, 9223372036854775800   ; 3 uses
  %i.bn = shl i64 %n.vec46, 2                     ; 2 uses
  %i.bo = getelementptr i8, ptr %2, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.ax, i64 %i.bn
  %i.bq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.aw, i64 0
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph45
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next55, %vector.body47 ] ; 2 uses
  %vec.phi49 = phi <4 x i32> [ %i.bq, %vector.ph45 ], [ %i.bu, %vector.body47 ]
  %vec.phi50 = phi <4 x i32> [ zeroinitializer, %vector.ph45 ], [ %i.bv, %vector.body47 ]
  %i.br = shl i64 %index48, 2                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %2, i64 %i.br ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.ax, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load53 = load <4 x i32>, ptr %next.gep51, align 4, !tbaa !249, !alias.scope !4903
  %wide.load54 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !249, !alias.scope !4903
  %i.bt = getelementptr i8, ptr %next.gep52, i64 16
  store <4 x i32> %wide.load53, ptr %next.gep52, align 4, !tbaa !249, !alias.scope !4904, !noalias !4905
  store <4 x i32> %wide.load54, ptr %i.bt, align 4, !tbaa !249, !alias.scope !4904, !noalias !4905
  %i.bu = add <4 x i32> %vec.phi49, splat (i32 1) ; 2 uses
  %i.bv = add <4 x i32> %vec.phi50, splat (i32 1) ; 2 uses
  %index.next55 = add nuw i64 %index48, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next55, %n.vec46
  br i1 %i.bw, label %middle.block56, label %vector.body47, !llvm.loop !4898

middle.block56:                                   ; preds = %vector.body47
  %bin.rdx57 = add <4 x i32> %i.bv, %i.bu
  %i.bx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx57) ; 2 uses
  store i32 %i.bx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4906, !noalias !4903
  %cmp.n58 = icmp eq i64 %i.bd, %n.vec46
  br i1 %cmp.n58, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRiEEEEEvRT_T0_SF_SF_T1_mT2_.exit.i, label %.lr.ph.i20.i.i.preheader

.lr.ph.i20.i.i.preheader:                         ; preds = %vector.memcheck34, %.lr.ph.i20.preheader.i.i, %middle.block56
  %.ph = phi i32 [ %i.aw, %vector.memcheck34 ], [ %i.aw, %.lr.ph.i20.preheader.i.i ], [ %i.bx, %middle.block56 ]
  %.018.i21.i.i.ph = phi ptr [ %2, %vector.memcheck34 ], [ %2, %.lr.ph.i20.preheader.i.i ], [ %i.bo, %middle.block56 ]
  %.01517.i22.i.i.ph = phi ptr [ %i.ax, %vector.memcheck34 ], [ %i.ax, %.lr.ph.i20.preheader.i.i ], [ %i.bp, %middle.block56 ]
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.preheader, %.lr.ph.i20.i.i
  %i.by = phi i32 [ %i.ca, %.lr.ph.i20.i.i ], [ %.ph, %.lr.ph.i20.i.i.preheader ]
  %.018.i21.i.i = phi ptr [ %i.cb, %.lr.ph.i20.i.i ], [ %.018.i21.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.cc, %.lr.ph.i20.i.i ], [ %.01517.i22.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %i.bz = load i32, ptr %.018.i21.i.i, align 4, !tbaa !249
  store i32 %i.bz, ptr %.01517.i22.i.i, align 4, !tbaa !249
  %i.ca = add i32 %i.by, 1                        ; 2 uses
  store i32 %i.ca, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cb = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.cb, %i.w
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRiEEEEEvRT_T0_SF_SF_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !4899

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRiEEEEEvRT_T0_SF_SF_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %middle.block56, %.loopexit.i.i
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRiEEEEEvPS3_mSE_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRiEEEEEvRT_T0_SF_SF_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.cd, %.lr.ph.i.i.prol ], [ %i.v, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.cg, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.cd = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.ce = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cf = add i32 %i.ce, -1
  store i32 %i.cf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4900

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.v, %.lr.ph.i.i.preheader ], [ %i.cd, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.cg, %.lr.ph.i.i.prol ]
  %i.ch = icmp ult i64 %i.v, 4
  br i1 %i.ch, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.cp, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.cr, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !249
  %i.ci = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.cj = add i32 %i.ci, -1
  store i32 %i.cj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ck = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.ck, align 4, !tbaa !249
  %i.cl = add i32 %i.ci, -2
  store i32 %i.cl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.cm, align 4, !tbaa !249
  %i.cn = add i32 %i.ci, -3
  store i32 %i.cn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.co = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.cp = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.co, align 4, !tbaa !249
  %i.cq = add i32 %i.ci, -4
  store i32 %i.cq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cr = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !26

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ct = icmp eq ptr %i.cs, %i.t
  br i1 %i.ct, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRiEEEEEvPS3_mSE_mT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.cu = load i64, ptr %i.b, align 8, !tbaa !246
  %i.cv = shl i64 %i.cu, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.cv) #22
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !245
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRiEEEEEvPS3_mSE_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRiEEEEEvPS3_mSE_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRiEEEEEvRT_T0_SF_SF_T1_mT2_.exit.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.h
  %i.cw = phi i64 [ %i.v, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRiEEEEEvRT_T0_SF_SF_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ], [ %i.v, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ]
  %i.cx = ptrtoint ptr %2 to i64
  %i.cy = ptrtoint ptr %i.t to i64
  %i.cz = sub i64 %i.cx, %i.cy
  store ptr %i.s, ptr %1, align 8, !tbaa !247
  %i.da = add i64 %i.cw, %3
  store i64 %i.da, ptr %i.e, align 8, !tbaa !245
  store i64 %i.p, ptr %i.b, align 8, !tbaa !84
  %i.db = getelementptr inbounds i8, ptr %i.s, i64 %i.cz
  store ptr %i.db, ptr %0, align 8, !tbaa !289
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE15prot_swap_smallINS0_17small_vector_baseIS3_NS5_IS3_EEvEEEEvRT_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::container::vec_iterator.139", align 8 ; 2 uses
  %4 = alloca %"class.boost::container::vec_iterator.140", align 8 ; 3 uses
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.g, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !247    ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !247    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = icmp ne ptr %i.d, %i.b                   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = icmp ne ptr %i.f, %i.c                   ; 2 uses
  %or.cond.i.i = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE9priv_swapINS0_17small_vector_baseIS3_NS5_IS3_EEvEEEEvRT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.c

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE9priv_swapINS0_17small_vector_baseIS3_NS5_IS3_EEvEEEEvRT_NS_11move_detail17integral_constantIbLb0EEE.exit: ; preds = %bb.b
  store ptr %i.c, ptr %0, align 8, !tbaa !285
  store ptr %i.b, ptr %1, align 8, !tbaa !285
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.h, align 8, !tbaa !84
  %i.k = load i64, ptr %i.i, align 8, !tbaa !84
  store i64 %i.k, ptr %i.h, align 8, !tbaa !84
  store i64 %i.j, ptr %i.i, align 8, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.l, align 8, !tbaa !84
  %i.o = load i64, ptr %i.m, align 8, !tbaa !84
  store i64 %i.o, ptr %i.l, align 8, !tbaa !84
  store i64 %i.n, ptr %i.m, align 8, !tbaa !84
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %.not = icmp ne i64 %2, 0
  %or.cond = or i1 %i.e, %i.g
  %or.cond80 = and i1 %.not, %or.cond
  br i1 %or.cond80, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = select i1 %i.e, ptr %0, ptr %1           ; 5 uses
  %i.q = select i1 %i.e, ptr %1, ptr %0           ; 3 uses
  %i.r = select i1 %i.e, ptr %i.b, ptr %i.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = load <2 x i64>, ptr %i.s, align 8, !tbaa !84
  %i.v = getelementptr i8, ptr %i.p, i64 24       ; 7 uses
  store ptr %i.v, ptr %i.p, align 8, !tbaa !290
  store i64 0, ptr %i.s, align 8, !tbaa !245
  store i64 %2, ptr %i.t, align 8, !tbaa !84
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !254  ; 9 uses
  %.not17.i = icmp eq i64 %i.x, 0
  %.pre116 = load ptr, ptr %i.q, align 8, !tbaa !247 ; 9 uses
  br i1 %.not17.i, label %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEED2Ev.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %min.iters.check = icmp ult i64 %i.x, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader145, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.y = shl i64 %i.x, 2                          ; 2 uses
  %5 = getelementptr i8, ptr %i.p, i64 %i.y
  %i.z = getelementptr i8, ptr %5, i64 24         ; 2 uses
  %i.aa = getelementptr i8, ptr %.pre116, i64 %i.y ; 2 uses
  %bound0 = icmp ult ptr %i.v, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %i.z, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound0133 = icmp ult ptr %i.v, %i.aa
  %bound1134 = icmp ult ptr %.pre116, %i.z
  %found.conflict135 = and i1 %bound0133, %bound1134
  %conflict.rdx = or i1 %found.conflict, %found.conflict135
  %bound0136 = icmp ugt ptr %i.aa, @_ZN5boost9container4test12copyable_int5countE
  %bound1137 = icmp ult ptr %.pre116, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict138 = and i1 %bound0136, %bound1137
  %conflict.rdx139 = or i1 %conflict.rdx, %found.conflict138
  br i1 %conflict.rdx139, label %.lr.ph.i.preheader145, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, -8                       ; 3 uses
  %i.ab = and i64 %i.x, 7
  %i.ac = shl i64 %n.vec, 2                       ; 2 uses
  %i.ad = getelementptr i8, ptr %.pre116, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.v, i64 %i.ac
  %i.af = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test12copyable_int5countE.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.af, %vector.ph ], [ %i.aj, %vector.body ]
  %vec.phi140 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %i.ag = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.pre116, i64 %i.ag ; 2 uses
  %next.gep141 = getelementptr i8, ptr %i.v, i64 %i.ag ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !249, !alias.scope !4921
  %wide.load142 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !249, !alias.scope !4921
  %i.ai = getelementptr i8, ptr %next.gep141, i64 16
  store <4 x i32> %wide.load, ptr %next.gep141, align 8, !tbaa !249, !alias.scope !4922, !noalias !4923
  store <4 x i32> %wide.load142, ptr %i.ai, align 8, !tbaa !249, !alias.scope !4922, !noalias !4923
  %i.aj = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.ak = add <4 x i32> %vec.phi140, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !4911

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ak, %i.aj
  %i.am = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.am, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4924, !noalias !4921
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEED2Ev.exit, label %.lr.ph.i.preheader145

.lr.ph.i.preheader145:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i32 [ %_ZN5boost9container4test12copyable_int5countE.promoted, %vector.memcheck ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.i.preheader ], [ %i.am, %middle.block ] ; 2 uses
  %.020.i.ph = phi i64 [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.preheader ], [ %i.ab, %middle.block ] ; 4 uses
  %.0819.i.ph = phi ptr [ %.pre116, %vector.memcheck ], [ %.pre116, %.lr.ph.i.preheader ], [ %i.ad, %middle.block ] ; 2 uses
  %.01618.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.preheader ], [ %i.ae, %middle.block ] ; 2 uses
  %i.an = add i64 %.020.i.ph, -1
  %xtraiter150 = and i64 %.020.i.ph, 3            ; 2 uses
  %lcmp.mod151.not = icmp eq i64 %xtraiter150, 0
  br i1 %lcmp.mod151.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader145, %.lr.ph.i.prol
  %i.ao = phi i32 [ %i.ar, %.lr.ph.i.prol ], [ %.ph, %.lr.ph.i.preheader145 ]
  %.020.i.prol = phi i64 [ %i.ap, %.lr.ph.i.prol ], [ %.020.i.ph, %.lr.ph.i.preheader145 ]
  %.0819.i.prol = phi ptr [ %i.as, %.lr.ph.i.prol ], [ %.0819.i.ph, %.lr.ph.i.preheader145 ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.at, %.lr.ph.i.prol ], [ %.01618.i.ph, %.lr.ph.i.preheader145 ] ; 2 uses
  %prol.iter152 = phi i64 [ %prol.iter152.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader145 ]
  %i.ap = add i64 %.020.i.prol, -1                ; 2 uses
  %i.aq = load i32, ptr %.0819.i.prol, align 4, !tbaa !249
  store i32 %i.aq, ptr %.01618.i.prol, align 4, !tbaa !249
  %i.ar = add i32 %i.ao, 1                        ; 3 uses
  store i32 %i.ar, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.as = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %prol.iter152.next = add i64 %prol.iter152, 1   ; 2 uses
  %prol.iter152.cmp.not = icmp eq i64 %prol.iter152.next, %xtraiter150
  br i1 %prol.iter152.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !4912

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader145
  %.unr153 = phi i32 [ %.ph, %.lr.ph.i.preheader145 ], [ %i.ar, %.lr.ph.i.prol ]
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i.preheader145 ], [ %i.ap, %.lr.ph.i.prol ]
  %.0819.i.unr = phi ptr [ %.0819.i.ph, %.lr.ph.i.preheader145 ], [ %i.as, %.lr.ph.i.prol ]
  %.01618.i.unr = phi ptr [ %.01618.i.ph, %.lr.ph.i.preheader145 ], [ %i.at, %.lr.ph.i.prol ]
  %i.au = icmp ult i64 %i.an, 3
  br i1 %i.au, label %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.av = phi i32 [ %i.bk, %.lr.ph.i ], [ %.unr153, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.020.i = phi i64 [ %i.bi, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0819.i = phi ptr [ %i.bl, %.lr.ph.i ], [ %.0819.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.bm, %.lr.ph.i ], [ %.01618.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.aw = load i32, ptr %.0819.i, align 4, !tbaa !249
  store i32 %i.aw, ptr %.01618.i, align 4, !tbaa !249
  %i.ax = add i32 %i.av, 1
  store i32 %i.ax, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ay = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !249
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !249
  %i.bb = add i32 %i.av, 2
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bc = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !249
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !249
  %i.bf = add i32 %i.av, 3
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bg = getelementptr inbounds nuw i8, ptr %.0819.i, i64 12
  %i.bh = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.bi = add i64 %.020.i, -4                     ; 2 uses
  %i.bj = load i32, ptr %i.bg, align 4, !tbaa !249
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !249
  %i.bk = add i32 %i.av, 4                        ; 2 uses
  store i32 %i.bk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bl = getelementptr inbounds nuw i8, ptr %.0819.i, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %.not.i.3 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.3, label %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEED2Ev.exit, label %.lr.ph.i, !llvm.loop !4913

_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEED2Ev.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.d
  store i64 %i.x, ptr %i.s, align 8, !tbaa !245
  %i.bn = load i64, ptr %i.w, align 8, !tbaa !254 ; 5 uses
  %.not3.i83 = icmp eq i64 %i.bn, 0
  br i1 %.not3.i83, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit, label %.lr.ph.i84.preheader

.lr.ph.i84.preheader:                             ; preds = %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEED2Ev.exit
  %xtraiter154 = and i64 %i.bn, 3                 ; 2 uses
  %lcmp.mod155.not = icmp eq i64 %xtraiter154, 0
  br i1 %lcmp.mod155.not, label %.lr.ph.i84.prol.loopexit, label %.lr.ph.i84.prol

.lr.ph.i84.prol:                                  ; preds = %.lr.ph.i84.preheader, %.lr.ph.i84.prol
  %.05.i.prol = phi i64 [ %i.bo, %.lr.ph.i84.prol ], [ %i.bn, %.lr.ph.i84.preheader ]
  %storemerge4.i.prol = phi ptr [ %i.br, %.lr.ph.i84.prol ], [ %.pre116, %.lr.ph.i84.preheader ] ; 2 uses
  %prol.iter156 = phi i64 [ %prol.iter156.next, %.lr.ph.i84.prol ], [ 0, %.lr.ph.i84.preheader ]
  %i.bo = add i64 %.05.i.prol, -1                 ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.prol, align 4, !tbaa !249
  %i.bp = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bq = add i32 %i.bp, -1
  store i32 %i.bq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.br = getelementptr inbounds nuw i8, ptr %storemerge4.i.prol, i64 4 ; 2 uses
  %prol.iter156.next = add i64 %prol.iter156, 1   ; 2 uses
  %prol.iter156.cmp.not = icmp eq i64 %prol.iter156.next, %xtraiter154
  br i1 %prol.iter156.cmp.not, label %.lr.ph.i84.prol.loopexit, label %.lr.ph.i84.prol, !llvm.loop !4914

.lr.ph.i84.prol.loopexit:                         ; preds = %.lr.ph.i84.prol, %.lr.ph.i84.preheader
  %.05.i.unr = phi i64 [ %i.bn, %.lr.ph.i84.preheader ], [ %i.bo, %.lr.ph.i84.prol ]
  %storemerge4.i.unr = phi ptr [ %.pre116, %.lr.ph.i84.preheader ], [ %i.br, %.lr.ph.i84.prol ]
  %i.bs = icmp ult i64 %i.bn, 4
  br i1 %i.bs, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit, label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %.lr.ph.i84.prol.loopexit, %.lr.ph.i84
  %.05.i = phi i64 [ %i.ca, %.lr.ph.i84 ], [ %.05.i.unr, %.lr.ph.i84.prol.loopexit ]
  %storemerge4.i = phi ptr [ %i.cc, %.lr.ph.i84 ], [ %storemerge4.i.unr, %.lr.ph.i84.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !249
  %i.bt = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.bu = add i32 %i.bt, -1
  store i32 %i.bu, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bv = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4
  store i32 -2147483648, ptr %i.bv, align 4, !tbaa !249
  %i.bw = add i32 %i.bt, -2
  store i32 %i.bw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bx = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 8
  store i32 -2147483648, ptr %i.bx, align 4, !tbaa !249
  %i.by = add i32 %i.bt, -3
  store i32 %i.by, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bz = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 12
  %i.ca = add i64 %.05.i, -4                      ; 2 uses
  store i32 -2147483648, ptr %i.bz, align 4, !tbaa !249
  %i.cb = add i32 %i.bt, -4
  store i32 %i.cb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cc = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 16
  %.not.i85.3 = icmp eq i64 %i.ca, 0
  br i1 %.not.i85.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit, label %.lr.ph.i84, !llvm.loop !26

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit: ; preds = %.lr.ph.i84.prol.loopexit, %.lr.ph.i84, %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEED2Ev.exit
  store ptr %i.r, ptr %i.q, align 8, !tbaa !290
  store <2 x i64> %i.u, ptr %i.w, align 8, !tbaa !84
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !254
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !254
  %i.ch = icmp ult i64 %i.ce, %i.cg               ; 4 uses
  %i.ci = select i1 %i.ch, ptr %0, ptr %1         ; 2 uses
  %i.cj = select i1 %i.ch, ptr %1, ptr %0
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !254 ; 11 uses
  %.not79112 = icmp eq i64 %i.cl, 0
  %i.cm = select i1 %i.ch, ptr %i.b, ptr %i.c     ; 4 uses
  %i.cn = select i1 %i.ch, ptr %i.c, ptr %i.b     ; 4 uses
  br i1 %.not79112, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %.pre = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.co = add i32 %.pre, 1                        ; 2 uses
  %xtraiter = and i64 %i.cl, 1
  %i.cp = icmp eq i64 %i.cl, 1
  br i1 %i.cp, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.cl, -2
  br label %bb.f

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ %i.co, %.lr.ph ], [ %i.ef, %._crit_edge.loopexit.unr-lcssa ]
end_hunk_12
