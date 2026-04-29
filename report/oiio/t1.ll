inline.NumInlined: 305
inline.NumDeleted: 36
begin_hunk_0_@opj_t1_clbl_decode_processor:bb.a
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader283
  %.5.lcssa = phi i32 [ 0, %.preheader283 ], [ %i.bko, %.preheader.loopexit ] ; 4 uses
  %i.bkp = icmp ult i32 %.5.lcssa, %i.bfd
  br i1 %i.bkp, label %.lr.ph390, label %._crit_edge

end_hunk_0
begin_hunk_1_@opj_t1_clbl_decode_processor:bb.a
vector.ph852:                                     ; preds = %vector.memcheck
  %n.vec854 = and i64 %i.bkv, -8                  ; 3 uses
  %i.blk = add nsw i64 %n.vec854, %i.bku
  br label %vector.body855

vector.body855:                                   ; preds = %vector.body855, %vector.ph852
  %index856 = phi i64 [ 0, %vector.ph852 ], [ %index.next861, %vector.body855 ] ; 2 uses
  %2 = add i64 %index856, %i.bku                  ; 2 uses
  %i.bll = trunc i64 %2 to i32
  %.reass1023 = add i32 %i.bkr, %i.bll
  %i.blm = zext i32 %.reass1023 to i64
  %i.bln = getelementptr inbounds nuw [4 x i8], ptr %i.bfa, i64 %i.blm ; 2 uses
  %i.blo = getelementptr inbounds nuw i8, ptr %i.bln, i64 16
end_hunk_1
begin_hunk_2_@opj_t1_clbl_decode_processor:bb.a
  %wide.load860 = load <4 x i32>, ptr %i.blo, align 4, !tbaa !3
  %i.blp = sdiv <4 x i32> %wide.load859, splat (i32 2)
  %i.blq = sdiv <4 x i32> %wide.load860, splat (i32 2)
  %gep = getelementptr inbounds nuw [4 x i8], ptr %i.bkt, i64 %2 ; 2 uses
  %i.blr = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %i.blp, ptr %gep, align 4, !tbaa !3
  store <4 x i32> %i.blq, ptr %i.blr, align 4, !tbaa !3
end_hunk_2
begin_hunk_3_@opj_t1_clbl_decode_processor:bb.a
  %i.bnx = getelementptr [4 x i8], ptr %i.bnv, i64 %i.bnw
  %i.bny = zext i32 %i.bfd to i64                 ; 2 uses
  %min.iters.check828 = icmp ult i32 %i.bfd, 8
  %n.vec831 = and i64 %i.bny, 4294967288          ; 4 uses
  %i.bnz = shl nuw nsw i64 %n.vec831, 2           ; 2 uses
  %i.boa = trunc nuw i64 %n.vec831 to i32
  %broadcast.splatinsert833 = insertelement <4 x float> poison, float %i.bnq, i64 0
  %broadcast.splat834 = shufflevector <4 x float> %broadcast.splatinsert833, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
end_hunk_3
begin_hunk_4_@opj_t1_clbl_decode_processor:bb.a
  br i1 %min.iters.check828, label %scalar.ph827.preheader, label %vector.ph829

vector.ph829:                                     ; preds = %.preheader284.us
  %i.bob = getelementptr i8, ptr %.2384.us, i64 %i.bnz ; 2 uses
  %i.boc = getelementptr i8, ptr %.0243383.us, i64 %i.bnz
  br label %vector.body835

vector.body835:                                   ; preds = %vector.body835, %vector.ph829
  %index836 = phi i64 [ 0, %vector.ph829 ], [ %index.next843, %vector.body835 ] ; 2 uses
  %offset.idx837 = shl i64 %index836, 2           ; 2 uses
  %next.gep838 = getelementptr i8, ptr %.2384.us, i64 %offset.idx837 ; 2 uses
  %next.gep840 = getelementptr i8, ptr %.0243383.us, i64 %offset.idx837 ; 2 uses
  %i.bod = getelementptr i8, ptr %next.gep838, i64 16
  %wide.load841 = load <4 x i32>, ptr %next.gep838, align 4, !tbaa !3
  %wide.load842 = load <4 x i32>, ptr %i.bod, align 4, !tbaa !3
end_hunk_4
