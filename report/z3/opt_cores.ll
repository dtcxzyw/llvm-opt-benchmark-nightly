Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/opt_cores?download=true
inline.NumInlined: 1102
inline.NumDeleted: 477
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@"_ZSt16__introsort_loopIPN3opt13weighted_coreElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_5cores14disjoint_coresEvE3$_0EEEvT_S9_T0_T1_":bb.a
  %i.el = icmp eq ptr %.val24.i.i, null           ; 2 uses
  br i1 %i.el, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit42.thread.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit42.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit42.i.i": ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i39.i.i
  %i.em = getelementptr inbounds i8, ptr %.val24.i.i, i64 -4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !68
  %i.eo = icmp ult i32 %.0.i.i.i40.i.i, %i.en
  br i1 %i.eo, label %"_ZSt22__move_median_to_firstIPN3opt13weighted_coreEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_5cores14disjoint_coresEvE3$_0EEEvT_S9_S9_S9_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit42.thread.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit42.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit42.i.i", %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i39.i.i
  br i1 %i.dw, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i43.i.i, label %bb.s

bb.s:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit42.thread.i.i"
  %i.ep = getelementptr inbounds i8, ptr %.val30.i.i, i64 -4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !68
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i43.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i43.i.i:   ; preds = %bb.s, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit42.thread.i.i"
  %.0.i.i.i44.i.i = phi i32 [ %i.eq, %bb.s ], [ 0, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit42.thread.i.i" ]
  br i1 %i.el, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit46.thread.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit46.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit46.i.i": ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i43.i.i
  %i.er = getelementptr inbounds i8, ptr %.val24.i.i, i64 -4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !68
  %i.et = icmp ult i32 %.0.i.i.i44.i.i, %i.es
  br i1 %i.et, label %"_ZSt22__move_median_to_firstIPN3opt13weighted_coreEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_5cores14disjoint_coresEvE3$_0EEEvT_S9_S9_S9_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit46.thread.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit46.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit46.i.i", %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i43.i.i
  br label %"_ZSt22__move_median_to_firstIPN3opt13weighted_coreEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_5cores14disjoint_coresEvE3$_0EEEvT_S9_S9_S9_T0_.exit.i"

"_ZSt22__move_median_to_firstIPN3opt13weighted_coreEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_5cores14disjoint_coresEvE3$_0EEEvT_S9_S9_S9_T0_.exit.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit46.thread.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit46.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit42.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit38.thread.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit38.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit34.i.i"
  %.sink.i.i = phi ptr [ %i.ds, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit38.i.i" ], [ %i.dr, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit46.thread.i.i" ], [ %i.e, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit42.i.i" ], [ %i.dr, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit34.i.i" ], [ %i.e, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit38.thread.i.i" ], [ %i.ds, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit46.i.i" ]
  tail call void @_ZSt4swapIN3opt13weighted_coreEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %.sink.i.i) #19
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %"_ZSt22__move_median_to_firstIPN3opt13weighted_coreEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_5cores14disjoint_coresEvE3$_0EEEvT_S9_S9_S9_T0_.exit.i"
  %.013.i.i = phi ptr [ %.02545, %"_ZSt22__move_median_to_firstIPN3opt13weighted_coreEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_5cores14disjoint_coresEvE3$_0EEEvT_S9_S9_S9_T0_.exit.i" ], [ %.us-phi25.i.i, %bb.w ] ; 2 uses
  %.0.i.i = phi ptr [ %i.e, %"_ZSt22__move_median_to_firstIPN3opt13weighted_coreEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_5cores14disjoint_coresEvE3$_0EEEvT_S9_S9_S9_T0_.exit.i" ], [ %i.fk, %bb.w ] ; 3 uses
  %.val15.i.i = load ptr, ptr %0, align 8         ; 2 uses
  %i.eu = icmp eq ptr %.val15.i.i, null
  br i1 %i.eu, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit.us.i.i", label %.split21.i.i

.split21.i.i:                                     ; preds = %bb.t
  %i.ev = getelementptr inbounds i8, ptr %.val15.i.i, i64 -4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !68 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i13.i, %.split21.i.i
  %.1.i.i = phi ptr [ %.0.i.i, %.split21.i.i ], [ %i.fb, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i13.i ] ; 4 uses
  %.1.val.i.i = load ptr, ptr %.1.i.i, align 8, !tbaa !72 ; 2 uses
  %i.ex = icmp eq ptr %.1.val.i.i, null
  br i1 %i.ex, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i13.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ey = getelementptr inbounds i8, ptr %.1.val.i.i, i64 -4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !68
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i13.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i13.i:   ; preds = %bb.v, %bb.u
  %.0.i.i.i.i14.i = phi i32 [ %i.ez, %bb.v ], [ 0, %bb.u ]
  %i.fa = icmp ult i32 %.0.i.i.i.i14.i, %i.ew
  %i.fb = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 40
  br i1 %i.fa, label %bb.u, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit.i15.i", !llvm.loop !213

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit.us.i.i": ; preds = %bb.t, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit19.us.i.i"
  %.013.pn.us.i.i = phi ptr [ %.114.us.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit19.us.i.i" ], [ %.013.i.i, %bb.t ]
  %.114.us.i.i = getelementptr inbounds i8, ptr %.013.pn.us.i.i, i64 -40 ; 4 uses
  %.114.val.us.i.i = load ptr, ptr %.114.us.i.i, align 8 ; 2 uses
  %i.fc = icmp eq ptr %.114.val.us.i.i, null
  br i1 %i.fc, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit19.thread.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit19.us.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit19.us.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit.us.i.i"
  %i.fd = getelementptr inbounds i8, ptr %.114.val.us.i.i, i64 -4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !68
  %.not.i.i = icmp eq i32 %i.fe, 0
  br i1 %.not.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit19.thread.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit.us.i.i", !llvm.loop !214

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit.i15.i": ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i13.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit19.i.i"
  %.013.pn.i.i = phi ptr [ %.114.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit19.i.i" ], [ %.013.i.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i13.i ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -40 ; 4 uses
  %.114.val.i.i = load ptr, ptr %.114.i.i, align 8 ; 2 uses
  %i.ff = icmp eq ptr %.114.val.i.i, null
  br i1 %i.ff, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit19.thread.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit19.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit19.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit.i15.i"
  %i.fg = getelementptr inbounds i8, ptr %.114.val.i.i, i64 -4
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !68
  %i.fi = icmp ult i32 %i.ew, %i.fh
  br i1 %i.fi, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit.i15.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit19.thread.i.i", !llvm.loop !214

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit19.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit19.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit.i15.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit19.us.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit.us.i.i"
  %.us-phi2228.i.i = phi ptr [ %.0.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit19.us.i.i" ], [ %.0.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit.us.i.i" ], [ %.1.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit.i15.i" ], [ %.1.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit19.i.i" ] ; 7 uses
  %.us-phi25.i.i = phi ptr [ %.114.us.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit19.us.i.i" ], [ %.114.us.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit.us.i.i" ], [ %.114.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit.i15.i" ], [ %.114.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit19.i.i" ] ; 3 uses
  %i.fj = icmp ult ptr %.us-phi2228.i.i, %.us-phi25.i.i
  br i1 %i.fj, label %bb.w, label %"_ZSt27__unguarded_partition_pivotIPN3opt13weighted_coreEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_5cores14disjoint_coresEvE3$_0EEET_S9_S9_T0_.exit"

bb.w:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit19.thread.i.i"
  tail call void @_ZSt4swapIN3opt13weighted_coreEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(40) %.us-phi2228.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.us-phi25.i.i) #19
  %i.fk = getelementptr inbounds nuw i8, ptr %.us-phi2228.i.i, i64 40
  br label %bb.t, !llvm.loop !215

"_ZSt27__unguarded_partition_pivotIPN3opt13weighted_coreEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_5cores14disjoint_coresEvE3$_0EEET_S9_S9_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit19.thread.i.i"
  tail call fastcc void @"_ZSt16__introsort_loopIPN3opt13weighted_coreElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_5cores14disjoint_coresEvE3$_0EEEvT_S9_T0_T1_"(ptr noundef %.us-phi2228.i.i, ptr noundef %.02545, i64 noundef %i.dp)
  %i.fl = ptrtoint ptr %.us-phi2228.i.i to i64
  %i.fm = sub i64 %i.fl, %i.a                     ; 3 uses
  %i.fn = icmp sgt i64 %i.fm, 640
  br i1 %i.fn, label %bb.b, label %"_ZSt14__partial_sortIPN3opt13weighted_coreEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_5cores14disjoint_coresEvE3$_0EEEvT_S9_S9_T0_.exit", !llvm.loop !210

"_ZSt14__partial_sortIPN3opt13weighted_coreEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_5cores14disjoint_coresEvE3$_0EEEvT_S9_S9_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIPN3opt13weighted_coreEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_5cores14disjoint_coresEvE3$_0EEET_S9_S9_T0_.exit", %"_ZSt10__pop_heapIPN3opt13weighted_coreEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_5cores14disjoint_coresEvE3$_0EEEvT_S9_S9_RT0_.exit", %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt13__adjust_heapIPN3opt13weighted_coreElS1_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_5cores14disjoint_coresEvE3$_0EEEvT_T0_SA_T1_T2_"(ptr noundef %0, i64 noundef range(i64 0, 115292150460684697) %1, i64 noundef range(i64 -230584300921369395, 230584300921369396) %2, ptr nofree noundef nonnull align 8 captures(none) %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.opt::weighted_core", align 8 ; 10 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit.thread"
  %.033 = phi i64 [ %i.q, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit.thread" ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl nuw nsw i64 %.033, 1                 ; 3 uses
  %i.e = add nuw nsw i64 %i.d, 2                  ; 3 uses
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.e
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.val = load ptr, ptr %i.f, align 8, !tbaa !72  ; 2 uses
  %.val30 = load ptr, ptr %i.h, align 8           ; 2 uses
  %i.i = icmp eq ptr %.val, null
  br i1 %i.i, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds i8, ptr %.val, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !68
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i:         ; preds = %bb.b, %.lr.ph
  %.0.i.i.i = phi i32 [ %i.k, %bb.b ], [ 0, %.lr.ph ]
  %i.l = icmp eq ptr %.val30, null
  br i1 %i.l, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit.thread", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit": ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i
  %i.m = getelementptr inbounds i8, ptr %.val30, i64 -4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !68
  %i.o = icmp ult i32 %.0.i.i.i, %i.n
  %i.p = or disjoint i64 %i.d, 1
  %cond.fr = freeze i1 %i.o
  %spec.select = select i1 %cond.fr, i64 %i.p, i64 %i.e
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit.thread"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit.thread": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit", %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i
  %i.q = phi i64 [ %i.e, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ], [ %spec.select, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit" ] ; 4 uses
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.033
  %i.t = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN3opt13weighted_coreaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.r) #19 ; 0 uses
  %i.u = icmp slt i64 %i.q, %i.b
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !216

._crit_edge:                                      ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit.thread", %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.q, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit.thread" ] ; 5 uses
  %i.v = and i64 %2, 1
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.x = add nsw i64 %2, -2
  %i.y = ashr exact i64 %i.x, 1
  %i.z = icmp eq i64 %.0.lcssa, %i.y
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = shl nuw nsw i64 %.0.lcssa, 1
  %i.ab = or disjoint i64 %i.aa, 1                ; 2 uses
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.ab
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.0.lcssa
  %i.ae = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN3opt13weighted_coreaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #19 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.1 = phi i64 [ %i.ab, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.af = load ptr, ptr %3, align 8, !tbaa !72    ; 4 uses
  store ptr %i.af, ptr %4, align 8, !tbaa !72
  store ptr null, ptr %3, align 8, !tbaa !72
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ak = load i32, ptr %i.ah, align 8, !tbaa !68 ; 2 uses
  store i32 %i.ak, ptr %i.ag, align 8, !tbaa !68
  store i32 0, ptr %i.ah, align 8, !tbaa !68
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !113 ; 2 uses
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !113
  store ptr null, ptr %i.al, align 8, !tbaa !113
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 4             ; 3 uses
  %i.ap = and i8 %i.ao, 3
  store i8 %i.ap, ptr %i.ai, align 4
  %i.aq = and i8 %i.ao, -4
  store i8 %i.aq, ptr %i.an, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i32 0, ptr %i.ar, align 8, !tbaa !41
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr null, ptr %i.au, align 8, !tbaa !42
  %i.av = load i32, ptr %i.as, align 8, !tbaa !68
  store i32 0, ptr %i.as, align 8, !tbaa !68
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !113
  store ptr null, ptr %i.aw, align 8, !tbaa !113
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 4             ; 2 uses
  %i.ba = and i8 %i.az, -4
  store i8 %i.ba, ptr %i.ay, align 4
  %i.bb = icmp samesign ugt i64 %.1, %1
  br i1 %i.bb, label %.lr.ph.i.preheader, label %"_ZSt11__push_heapIPN3opt13weighted_coreElS1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_5cores14disjoint_coresEvE3$_0EEEvT_T0_SA_T1_RT2_.exit"

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.bc = icmp eq ptr %i.af, null
  %i.bd = getelementptr inbounds i8, ptr %i.af, i64 -4
  br i1 %i.bc, label %"_ZSt11__push_heapIPN3opt13weighted_coreElS1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_5cores14disjoint_coresEvE3$_0EEEvT_T0_SA_T1_RT2_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.g
  %.0134.i = phi i64 [ %.059.i, %bb.g ], [ %.1, %.lr.ph.i.preheader ] ; 3 uses
  %.05.in.i = add nsw i64 %.0134.i, -1
  %.059.i = lshr i64 %.05.in.i, 1                 ; 4 uses
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.059.i ; 2 uses
  %.val.i = load ptr, ptr %i.be, align 8, !tbaa !72 ; 2 uses
  %i.bf = icmp eq ptr %.val.i, null
  br i1 %i.bf, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.bg = getelementptr inbounds i8, ptr %.val.i, i64 -4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !68
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i:       ; preds = %bb.f, %.lr.ph.i
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.f ], [ 0, %.lr.ph.i ]
  %i.bi = load i32, ptr %i.bd, align 4, !tbaa !68
  %i.bj = icmp ult i32 %.0.i.i.i.i, %i.bi
  br i1 %i.bj, label %bb.g, label %"_ZSt11__push_heapIPN3opt13weighted_coreElS1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_5cores14disjoint_coresEvE3$_0EEEvT_T0_SA_T1_RT2_.exit"

bb.g:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.0134.i
  %i.bl = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN3opt13weighted_coreaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef nonnull align 8 dereferenceable(40) %i.be) #19 ; 0 uses
  %i.bm = icmp samesign ugt i64 %.059.i, %1
  br i1 %i.bm, label %.lr.ph.i, label %"_ZSt11__push_heapIPN3opt13weighted_coreElS1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_5cores14disjoint_coresEvE3$_0EEEvT_T0_SA_T1_RT2_.exit", !llvm.loop !217

"_ZSt11__push_heapIPN3opt13weighted_coreElS1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_5cores14disjoint_coresEvE3$_0EEEvT_T0_SA_T1_RT2_.exit": ; preds = %bb.g, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i, %.lr.ph.i.preheader, %bb.e
  %.013.lcssa.i = phi i64 [ %.1, %bb.e ], [ %.1, %.lr.ph.i.preheader ], [ %.059.i, %bb.g ], [ %.0134.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i ]
  %i.bn = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.013.lcssa.i ; 9 uses
  %i.bo = icmp eq ptr %i.bn, %4
  br i1 %i.bo, label %bb.k, label %bb.h

bb.h:                                             ; preds = %"_ZSt11__push_heapIPN3opt13weighted_coreElS1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_5cores14disjoint_coresEvE3$_0EEEvT_T0_SA_T1_RT2_.exit"
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i, label %_ZN6vectorIP4exprLb0EjE7destroyEv.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bq)
          to label %_ZN6vectorIP4exprLb0EjE7destroyEv.exit.i.i.i unwind label %bb.j

_ZN6vectorIP4exprLb0EjE7destroyEv.exit.i.i.i:     ; preds = %bb.i, %bb.h
  store ptr %i.af, ptr %i.bn, align 8, !tbaa !72
  store ptr null, ptr %4, align 8, !tbaa !72
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #18
  unreachable

bb.k:                                             ; preds = %_ZN6vectorIP4exprLb0EjE7destroyEv.exit.i.i.i, %"_ZSt11__push_heapIPN3opt13weighted_coreElS1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_5cores14disjoint_coresEvE3$_0EEEvT_T0_SA_T1_RT2_.exit"
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !68
  store i32 %i.ak, ptr %i.bt, align 4, !tbaa !68
  store i32 %i.bu, ptr %i.ag, align 8, !tbaa !68
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !113
  store ptr %i.am, ptr %i.bv, align 8, !tbaa !113
  store ptr %i.bw, ptr %i.aj, align 8, !tbaa !113
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 12 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 4             ; 2 uses
  %5 = and i8 %i.by, -4
  %i.bz = and i8 %i.ao, 3
  %i.ca = or disjoint i8 %i.bz, %5
  store i8 %i.ca, ptr %i.bx, align 4
  %i.cb = and i8 %i.by, 3
  store i8 %i.cb, ptr %i.ai, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !68
  store i32 %i.av, ptr %i.cc, align 8, !tbaa !68
  store i32 %i.cd, ptr %i.ar, align 8, !tbaa !68
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bn, i64 32 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !113
  store ptr %i.ax, ptr %i.ce, align 8, !tbaa !113
  store ptr %i.cf, ptr %i.au, align 8, !tbaa !113
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bn, i64 28 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 4             ; 2 uses
  %6 = and i8 %i.ch, -4
  %i.ci = and i8 %i.az, 3
  %i.cj = or disjoint i8 %i.ci, %6
  store i8 %i.cj, ptr %i.cg, align 4
  %i.ck = and i8 %i.ch, 3
  store i8 %i.ck, ptr %i.at, align 4
  %i.cl = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !44 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %.noexc.i.i unwind label %bb.l

.noexc.i.i:                                       ; preds = %bb.k
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.ar)
          to label %_ZN8rationalD2Ev.exit.i unwind label %bb.l

bb.l:                                             ; preds = %.noexc.i.i, %bb.k
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #18
  unreachable

_ZN8rationalD2Ev.exit.i:                          ; preds = %.noexc.i.i
  %i.co = load ptr, ptr %4, align 8, !tbaa !72    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i, label %_ZN3opt13weighted_coreD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN8rationalD2Ev.exit.i
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cp)
          to label %_ZN3opt13weighted_coreD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #18
  unreachable

_ZN3opt13weighted_coreD2Ev.exit:                  ; preds = %_ZN8rationalD2Ev.exit.i, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZN3opt13weighted_coreaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZN10ptr_vectorI4exprEaSEOS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !72     ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6vectorIP4exprLb0EjE7destroyEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.c)
          to label %_ZN6vectorIP4exprLb0EjE7destroyEv.exit.i.i unwind label %bb.d

_ZN6vectorIP4exprLb0EjE7destroyEv.exit.i.i:       ; preds = %bb.c, %bb.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !72
  store ptr %i.d, ptr %0, align 8, !tbaa !72
  store ptr null, ptr %1, align 8, !tbaa !72
  br label %_ZN10ptr_vectorI4exprEaSEOS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #18
  unreachable

_ZN10ptr_vectorI4exprEaSEOS1_.exit:               ; preds = %bb.a, %_ZN6vectorIP4exprLb0EjE7destroyEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.g, align 8, !tbaa !68
  %i.j = load i32, ptr %i.h, align 8, !tbaa !68
  store i32 %i.j, ptr %i.g, align 8, !tbaa !68
  store i32 %i.i, ptr %i.h, align 8, !tbaa !68
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !113
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !113
  store ptr %i.n, ptr %i.k, align 8, !tbaa !113
  store ptr %i.m, ptr %i.l, align 8, !tbaa !113
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.p = load i8, ptr %i.o, align 4               ; 2 uses
  %i.q = and i8 %i.p, 2
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.s = load i8, ptr %i.r, align 4
  %i.t = and i8 %i.s, 2
  %i.u = and i8 %i.p, -3
  %i.v = or disjoint i8 %i.t, %i.u
  store i8 %i.v, ptr %i.o, align 4
  %i.w = load i8, ptr %i.r, align 4               ; 2 uses
  %i.x = and i8 %i.w, -3
  %i.y = or disjoint i8 %i.x, %i.q
  store i8 %i.y, ptr %i.r, align 4
  %i.z = load i8, ptr %i.o, align 4               ; 2 uses
  %i.aa = and i8 %i.z, 1
  %i.ab = and i8 %i.w, 1
  %i.ac = and i8 %i.z, -2
  %i.ad = or disjoint i8 %i.ac, %i.ab
  store i8 %i.ad, ptr %i.o, align 4
  %i.ae = load i8, ptr %i.r, align 4
  %i.af = and i8 %i.ae, -2
  %i.ag = or disjoint i8 %i.af, %i.aa
  store i8 %i.ag, ptr %i.r, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aj = load i32, ptr %i.ah, align 8, !tbaa !68
  %i.ak = load i32, ptr %i.ai, align 8, !tbaa !68
  store i32 %i.ak, ptr %i.ah, align 8, !tbaa !68
  store i32 %i.aj, ptr %i.ai, align 8, !tbaa !68
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !113
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !113
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !113
  store ptr %i.an, ptr %i.am, align 8, !tbaa !113
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.aq = load i8, ptr %i.ap, align 4             ; 2 uses
  %i.ar = and i8 %i.aq, 2
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 5 uses
  %i.at = load i8, ptr %i.as, align 4
  %i.au = and i8 %i.at, 2
  %i.av = and i8 %i.aq, -3
  %i.aw = or disjoint i8 %i.au, %i.av
  store i8 %i.aw, ptr %i.ap, align 4
  %i.ax = load i8, ptr %i.as, align 4             ; 2 uses
  %i.ay = and i8 %i.ax, -3
  %i.az = or disjoint i8 %i.ay, %i.ar
  store i8 %i.az, ptr %i.as, align 4
  %i.ba = load i8, ptr %i.ap, align 4             ; 2 uses
  %i.bb = and i8 %i.ba, 1
  %i.bc = and i8 %i.ax, 1
  %i.bd = and i8 %i.ba, -2
  %i.be = or disjoint i8 %i.bd, %i.bc
  store i8 %i.be, ptr %i.ap, align 4
  %i.bf = load i8, ptr %i.as, align 4
  %i.bg = and i8 %i.bf, -2
  %i.bh = or disjoint i8 %i.bg, %i.bb
  store i8 %i.bh, ptr %i.as, align 4
  ret ptr %0
}

declare void @_ZN6memory10deallocateEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt4swapIN3opt13weighted_coreEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.opt::weighted_core", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = load ptr, ptr %0, align 8, !tbaa !72     ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !72
  store ptr null, ptr %0, align 8, !tbaa !72
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.e = load i8, ptr %i.d, align 4
  %i.f = and i8 %i.e, -4                          ; 2 uses
  store i8 %i.f, ptr %i.d, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.c, align 8, !tbaa !68   ; 2 uses
  store i32 %i.h, ptr %i.b, align 8, !tbaa !68
  store i32 0, ptr %i.c, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !113  ; 2 uses
  store ptr %i.j, ptr %i.g, align 8, !tbaa !113
  store ptr null, ptr %i.i, align 8, !tbaa !113
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4               ; 2 uses
  %i.m = and i8 %i.l, -4
  store i8 %i.m, ptr %i.k, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.n, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.q = load i8, ptr %i.p, align 4
  %i.r = and i8 %i.q, -4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr null, ptr %i.s, align 8, !tbaa !42
  %i.t = load i32, ptr %i.o, align 8, !tbaa !68
  store i32 0, ptr %i.o, align 8, !tbaa !68
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !113
  store ptr null, ptr %i.u, align 8, !tbaa !113
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.x = load i8, ptr %i.w, align 4               ; 2 uses
  %i.y = and i8 %i.x, -4
  store i8 %i.y, ptr %i.w, align 4
  %i.z = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN3opt13weighted_coreaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #19 ; 0 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !72    ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZN3opt13weighted_coreaSEOS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ab)
          to label %_ZN3opt13weighted_coreaSEOS0_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #18
  unreachable

_ZN3opt13weighted_coreaSEOS0_.exit:               ; preds = %bb.a, %bb.b
  store ptr %i.a, ptr %1, align 8, !tbaa !72
  store ptr null, ptr %2, align 8, !tbaa !72
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !68
  store i32 %i.h, ptr %i.ae, align 8, !tbaa !68
  store i32 %i.af, ptr %i.b, align 8, !tbaa !68
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !113
  store ptr %i.j, ptr %i.ag, align 8, !tbaa !113
  store ptr %i.ah, ptr %i.g, align 8, !tbaa !113
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 4             ; 2 uses
  %i.ak = and i8 %i.aj, -4
  %i.al = and i8 %i.l, 3
  %i.am = or disjoint i8 %i.al, %i.ak
  store i8 %i.am, ptr %i.ai, align 4
  %i.an = and i8 %i.aj, 3
  %i.ao = or disjoint i8 %i.f, %i.an
  store i8 %i.ao, ptr %i.d, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !68
  store i32 %i.t, ptr %i.ap, align 8, !tbaa !68
  store i32 %i.aq, ptr %i.n, align 8, !tbaa !68
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !113
  store ptr %i.v, ptr %i.ar, align 8, !tbaa !113
  store ptr %i.as, ptr %i.s, align 8, !tbaa !113
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.au = load i8, ptr %i.at, align 4             ; 2 uses
  %i.av = and i8 %i.au, -4
  %i.aw = and i8 %i.x, 3
  %i.ax = or disjoint i8 %i.aw, %i.av
  store i8 %i.ax, ptr %i.at, align 4
  %i.ay = and i8 %i.au, 3
  %i.az = or disjoint i8 %i.r, %i.ay
  store i8 %i.az, ptr %i.p, align 4
  %i.ba = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !44 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.noexc.i.i unwind label %bb.d

.noexc.i.i:                                       ; preds = %_ZN3opt13weighted_coreaSEOS0_.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %_ZN8rationalD2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %.noexc.i.i, %_ZN3opt13weighted_coreaSEOS0_.exit
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #18
  unreachable

_ZN8rationalD2Ev.exit.i:                          ; preds = %.noexc.i.i
  %i.bd = load ptr, ptr %2, align 8, !tbaa !72    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i, label %_ZN3opt13weighted_coreD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN8rationalD2Ev.exit.i
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.be)
          to label %_ZN3opt13weighted_coreD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #18
  unreachable

_ZN3opt13weighted_coreD2Ev.exit:                  ; preds = %_ZN8rationalD2Ev.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__insertion_sortIPN3opt13weighted_coreEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_5cores14disjoint_coresEvE3$_0EEEvT_S9_T0_"(ptr noundef %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.opt::weighted_core", align 8 ; 13 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.021 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.not22 = icmp eq ptr %.021, %1
  br i1 %.not22, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.h = ptrtoint ptr %0 to i64
  %i.i = icmp eq ptr %0, %2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %.024 = phi ptr [ %.021, %.lr.ph ], [ %.0, %bb.n ] ; 7 uses
  %.pn23 = phi ptr [ %0, %.lr.ph ], [ %.024, %bb.n ] ; 7 uses
  %.0.val = load ptr, ptr %.024, align 8, !tbaa !72 ; 3 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.p = icmp eq ptr %.0.val, null
  br i1 %i.p, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds i8, ptr %.0.val, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !68
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i:         ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ]
  %i.s = icmp eq ptr %.val, null
  br i1 %i.s, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit.thread", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit": ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i
  %i.t = getelementptr inbounds i8, ptr %.val, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !68
  %i.v = icmp ult i32 %.0.i.i.i, %i.u
  br i1 %i.v, label %bb.d, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit.thread"

bb.d:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt5cores14disjoint_coresEvE3$_0EclIPNS2_13weighted_coreES8_EEbT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr %.0.val, ptr %2, align 8, !tbaa !72
  store ptr null, ptr %.024, align 8, !tbaa !72
  %i.w = getelementptr inbounds nuw i8, ptr %.pn23, i64 48 ; 2 uses
  %i.x = load i8, ptr %i.c, align 4
  %i.y = and i8 %i.x, -4
  %i.z = load i32, ptr %i.w, align 4, !tbaa !68
  store i32 %i.z, ptr %i.b, align 8, !tbaa !68
  store i32 0, ptr %i.w, align 4, !tbaa !68
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn23, i64 56 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !113
  store ptr %i.ab, ptr %i.d, align 8, !tbaa !113
  store ptr null, ptr %i.aa, align 8, !tbaa !113
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn23, i64 52 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 4             ; 2 uses
  %i.ae = and i8 %i.ad, 3
  %i.af = or disjoint i8 %i.ae, %i.y
  store i8 %i.af, ptr %i.c, align 4
  %i.ag = and i8 %i.ad, -4
  store i8 %i.ag, ptr %i.ac, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn23, i64 64 ; 2 uses
  %i.ai = load i8, ptr %i.f, align 4
  %i.aj = and i8 %i.ai, -4
  %i.ak = load i32, ptr %i.ah, align 8, !tbaa !68
  store i32 %i.ak, ptr %i.e, align 8, !tbaa !68
  store i32 0, ptr %i.ah, align 8, !tbaa !68
  %i.al = getelementptr inbounds nuw i8, ptr %.pn23, i64 72 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !113
  store ptr %i.am, ptr %i.g, align 8, !tbaa !113
  store ptr null, ptr %i.al, align 8, !tbaa !113
  %i.an = getelementptr inbounds nuw i8, ptr %.pn23, i64 68 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 4             ; 2 uses
  %i.ap = and i8 %i.ao, 3
end_hunk_0
