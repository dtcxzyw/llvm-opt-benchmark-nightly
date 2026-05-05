inline.NumInlined: 3472
inline.NumDeleted: 1065
begin_hunk_0_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_12ListViewTypeE:bb.a
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.z
  %.05.i.i = phi i64 [ %i.dk, %bb.z ], [ 0, %.lr.ph.i.i.preheader ] ; 9 uses
  %i.co = shl i64 %.05.i.i, 2
  %scevgep60 = getelementptr i8, ptr %i.cn, i64 %i.co
  %i.cp = load i32, ptr %scevgep60, align 4, !tbaa !3, !noalias !917 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_12ListViewTypeE:bb.a
  br i1 %i.cv, label %._crit_edge, label %bb.y

split.a:                                          ; preds = %bb.t
  %.lcssa.ph = phi i32 [ %i.cs, %bb.t ]
  %.05.i.i.lcssa62 = phi i64 [ %.05.i.i, %bb.t ]
  br label %bb.v

._crit_edge:                                      ; preds = %bb.u
  %.05.i.i.lcssa64 = phi i64 [ %.05.i.i, %bb.u ]
  %split = phi i32 [ %i.cs, %bb.u ]
  %.05.i.i.lcssa63 = phi i64 [ %.05.i.i, %bb.u ]  ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %split.a, %._crit_edge
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %.lcssa.ph, %split.a ]
  %.05.i.i.lcssa57 = phi i64 [ %.05.i.i.lcssa64, %._crit_edge ], [ %.05.i.i.lcssa62, %split.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !917
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !917
  store i64 %.05.i.i.lcssa57, ptr %i.a, align 8, !tbaa !82, !noalias !918
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_12ListViewTypeE:bb.a
  br label %.invoke

.lr.ph.i.i..invoke_crit_edge:                     ; preds = %.lr.ph.i.i
  %.05.i.i.lcssa67 = phi i64 [ %.05.i.i, %.lr.ph.i.i ]
  %.05.i.i.lcssa61 = phi i64 [ %.05.i.i, %.lr.ph.i.i ] ; 0 uses
  br label %.invoke

.invoke:                                          ; preds = %.invokesplit, %.lr.ph.i.i..invoke_crit_edge
  %.05.i.i.lcssa = phi i64 [ %.05.i.i.lcssa67, %.lr.ph.i.i..invoke_crit_edge ], [ %.05.i.i.lcssa64.a, %.invokesplit ]
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl23OutOfBoundsListViewSizeIiEENS_6StatusEll(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull readonly %.val.i, i64 noundef %.05.i.i.lcssa, i64 noundef %i.am)
          to label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl28FullyValidateOffsetsAndSizesIiEENS_6StatusEl.exit.i unwind label %bb.ab

end_hunk_2
begin_hunk_3_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_17LargeListViewTypeE:bb.a
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.y
  %.05.i.i = phi i64 [ %i.di, %bb.y ], [ 0, %.lr.ph.i.i.preheader ] ; 7 uses
  %i.co = shl i64 %.05.i.i, 3
  %scevgep59 = getelementptr i8, ptr %i.cn, i64 %i.co
  %i.cp = load i64, ptr %scevgep59, align 8, !tbaa !82, !noalias !962 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_17LargeListViewTypeE:bb.a
  br label %.invoke

.lr.ph.i.i..invoke_crit_edge:                     ; preds = %.lr.ph.i.i
  %.05.i.i.lcssa59 = phi i64 [ %.05.i.i, %.lr.ph.i.i ]
  %.05.i.i.lcssa60 = phi i64 [ %.05.i.i, %.lr.ph.i.i ] ; 0 uses
  br label %.invoke

.invoke:                                          ; preds = %.invokesplit, %.lr.ph.i.i..invoke_crit_edge
  %.05.i.i.lcssa = phi i64 [ %.05.i.i.lcssa59, %.lr.ph.i.i..invoke_crit_edge ], [ %.05.i.i.lcssa62, %.invokesplit ]
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl23OutOfBoundsListViewSizeIlEENS_6StatusEll(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull readonly %.val.i, i64 noundef %.05.i.i.lcssa, i64 noundef %i.am)
          to label %_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl28FullyValidateOffsetsAndSizesIlEENS_6StatusEl.exit.i unwind label %bb.aa

end_hunk_4
