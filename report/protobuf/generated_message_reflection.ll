inline.NumInlined: 8096
inline.NumDeleted: 3435
begin_hunk_0_@_ZN6google8protobuf12_GLOBAL__N_121AssignDescriptorsImplEPKNS0_8internal15DescriptorTableEb:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count67, 2147483644 ; 4 uses
  %4 = load ptr, ptr %i.al, align 8, !tbaa !719, !alias.scope !720 ; 2 uses
  %5 = shl nuw nsw i64 %n.vec, 3
  %6 = getelementptr i8, ptr %.promoted, i64 %5
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf12_GLOBAL__N_121AssignDescriptorsImplEPKNS0_8internal15DescriptorTableEb:bb.a
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.an = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.an ; 2 uses
  %i.ao = getelementptr inbounds nuw [88 x i8], ptr %4, <2 x i64> %vec.ind
  %i.ap = getelementptr inbounds nuw [88 x i8], ptr %4, <2 x i64> %step.add
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %i.ao, ptr %next.gep, align 8, !tbaa !723, !alias.scope !724, !noalias !720
  store <2 x ptr> %i.ap, ptr %i.aq, align 8, !tbaa !723, !alias.scope !724, !noalias !720
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf12_GLOBAL__N_121AssignDescriptorsImplEPKNS0_8internal15DescriptorTableEb:bb.a

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph57, %middle.block
  %indvars.iv64.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph57 ], [ %n.vec, %middle.block ] ; 3 uses
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph57 ], [ %6, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count67, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf23AssignDescriptorsHelper23AssignMessageDescriptorEPKNS0_10DescriptorE:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 4 uses
  %5 = load ptr, ptr %i.df, align 8, !tbaa !790, !alias.scope !791 ; 2 uses
  %6 = shl nuw nsw i64 %n.vec, 3
  %7 = getelementptr i8, ptr %.promoted, i64 %6   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf23AssignDescriptorsHelper23AssignMessageDescriptorEPKNS0_10DescriptorE:bb.a
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.di = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.di ; 2 uses
  %i.dj = getelementptr inbounds nuw [88 x i8], ptr %5, <2 x i64> %vec.ind
  %i.dk = getelementptr inbounds nuw [88 x i8], ptr %5, <2 x i64> %step.add
  %i.dl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %i.dj, ptr %next.gep, align 8, !tbaa !723, !alias.scope !794, !noalias !791
  store <2 x ptr> %i.dk, ptr %i.dl, align 8, !tbaa !723, !alias.scope !794, !noalias !791
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf23AssignDescriptorsHelper23AssignMessageDescriptorEPKNS0_10DescriptorE:bb.a

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph33, %middle.block
  %indvars.iv36.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph33 ], [ %n.vec, %middle.block ] ; 3 uses
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph33 ], [ %7, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol
end_hunk_5
begin_hunk_6_@_ZN6google8protobuf23AssignDescriptorsHelper23AssignMessageDescriptorEPKNS0_10DescriptorE:bb.a
  br i1 %i.ds, label %._crit_edge34, label %scalar.ph

._crit_edge34:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa = phi ptr [ %7, %middle.block ], [ %.lcssa45.unr, %scalar.ph.prol.loopexit ], [ %i.el, %scalar.ph ]
  store ptr %.lcssa, ptr %i.dg, align 8, !tbaa !715
  br label %bb.s

end_hunk_6
