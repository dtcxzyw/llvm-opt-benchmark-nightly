inline.NumInlined: 91
inline.NumDeleted: 17
begin_hunk_0_@_ZN16OpenColorIO_v2_512_GLOBAL__N_18linear1DILNS_8BitDepthE8ELS2_1EEEvPKfS4_S4_iPKvPvl:bb.a

vector.ph130:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf131 = and i64 %i.hq, 12
  %n.vec132 = and i64 %i.hq, 1073741808           ; 5 uses
  %7 = shl nuw nsw i64 %n.vec132, 2
  %i.hs = shl nuw nsw i64 %n.vec132, 2
  %i.ht = getelementptr i8, ptr %.050.lcssa, i64 %i.hs
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph130
  %index134 = phi i64 [ 0, %vector.ph130 ], [ %index.next144, %vector.body133 ] ; 3 uses
  %offset.idx135 = shl i64 %index134, 2
  %offset.idx136 = shl i64 %index134, 2
  %next.gep137 = getelementptr i8, ptr %.050.lcssa, i64 %offset.idx136
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 %offset.idx135
  %wide.vec138 = load <64 x i8>, ptr %i.hu, align 16, !tbaa !9, !alias.scope !22
  store <64 x i8> %wide.vec138, ptr %next.gep137, align 1, !tbaa !9, !alias.scope !25, !noalias !22
  %index.next144 = add nuw i64 %index134, 16      ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_512_GLOBAL__N_18linear1DILNS_8BitDepthE8ELS2_1EEEvPKfS4_S4_iPKvPvl:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec132, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec150 = and i64 %i.hq, 1073741820           ; 4 uses
  %8 = shl nuw nsw i64 %n.vec150, 2
  %i.hw = shl nuw nsw i64 %n.vec150, 2
  %i.hx = getelementptr i8, ptr %.050.lcssa, i64 %i.hw
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index151 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next159, %vec.epilog.vector.body ] ; 3 uses
  %9 = shl i64 %index151, 2
  %i.hy = shl i64 %index151, 2
  %next.gep152 = getelementptr i8, ptr %.050.lcssa, i64 %i.hy
  %i.hz = getelementptr inbounds nuw i8, ptr %i.b, i64 %9
  %wide.vec153 = load <16 x i8>, ptr %i.hz, align 16, !tbaa !9, !alias.scope !22
  store <16 x i8> %wide.vec153, ptr %next.gep152, align 1, !tbaa !9, !alias.scope !25, !noalias !22
  %index.next159 = add nuw i64 %index151, 4       ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_512_GLOBAL__N_18linear1DILNS_8BitDepthE8ELS2_1EEEvPKfS4_S4_iPKvPvl:bb.a
  br i1 %cmp.n160, label %._crit_edge104, label %.lr.ph103.preheader

.lr.ph103.preheader:                              ; preds = %vector.memcheck119, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv107.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck119 ], [ %7, %vec.epilog.iter.check ], [ %8, %vec.epilog.middle.block ]
  %.151100.ph = phi ptr [ %.050.lcssa, %iter.check ], [ %.050.lcssa, %vector.memcheck119 ], [ %i.ht, %vec.epilog.iter.check ], [ %i.hx, %vec.epilog.middle.block ]
  br label %.lr.ph103

end_hunk_2
