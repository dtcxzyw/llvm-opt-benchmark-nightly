inline.NumInlined: 3129
inline.NumDeleted: 974
begin_hunk_0_@_ZN11OpenImageIO4v3_18SgiInput22uncompress_rle_channelEiiPh:bb.a
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ge, 12
  %n.vec = and i64 %i.ge, 112                     ; 10 uses
  %4 = trunc nuw nsw i64 %n.vec to i32
  %5 = sub nsw i32 %i.da, %4
  %6 = shl nuw nsw i64 %n.vec, 1
  %7 = getelementptr i8, ptr %.572127, i64 %6     ; 2 uses
  %8 = load i8, ptr %i.gc, align 1, !tbaa !16, !alias.scope !136
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %8, i64 0 ; 7 uses
  %9 = load i8, ptr %i.gd, align 1, !tbaa !16, !alias.scope !139
  %broadcast.splatinsert190 = insertelement <8 x i8> poison, i8 %9, i64 0 ; 7 uses
  %next.gep189 = getelementptr i8, ptr %.572127, i64 16
  %interleaved.vec = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %broadcast.splatinsert190, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8> ; 2 uses
  store <16 x i8> %interleaved.vec, ptr %.572127, align 1, !tbaa !16, !alias.scope !141, !noalias !143
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_18SgiInput22uncompress_rle_channelEiiPh:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec195 = and i64 %i.ge, 124                  ; 4 uses
  %10 = trunc nuw nsw i64 %n.vec195 to i32
  %11 = sub nsw i32 %i.da, %10
  %12 = shl nuw nsw i64 %n.vec195, 1
  %13 = getelementptr i8, ptr %.572127, i64 %12   ; 2 uses
  %14 = load i8, ptr %i.gc, align 1, !tbaa !16, !alias.scope !136
  %broadcast.splatinsert198 = insertelement <4 x i8> poison, i8 %14, i64 0
  %15 = load i8, ptr %i.gd, align 1, !tbaa !16, !alias.scope !139
  %broadcast.splatinsert200 = insertelement <4 x i8> poison, i8 %15, i64 0
  %interleaved.vec202 = shufflevector <4 x i8> %broadcast.splatinsert198, <4 x i8> %broadcast.splatinsert200, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  br label %vec.epilog.vector.body

end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_18SgiInput22uncompress_rle_channelEiiPh:bb.a
  br i1 %cmp.n204, label %.loopexit266, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1126.ph = phi i32 [ %i.da, %iter.check ], [ %i.da, %vector.memcheck ], [ %5, %vec.epilog.iter.check ], [ %11, %vec.epilog.middle.block ] ; 4 uses
  %.774124.ph = phi ptr [ %.572127, %iter.check ], [ %.572127, %vector.memcheck ], [ %7, %vec.epilog.iter.check ], [ %13, %vec.epilog.middle.block ] ; 2 uses
  %i.gq = add nsw i32 %.1126.ph, -1
  %xtraiter276 = and i32 %.1126.ph, 3             ; 2 uses
  %lcmp.mod277.not = icmp eq i32 %xtraiter276, 0
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_18SgiInput22uncompress_rle_channelEiiPh:bb.a
  br i1 %.not81.3, label %.loopexit266, label %vec.epilog.scalar.ph, !llvm.loop !147

.loopexit266:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa179 = phi ptr [ %13, %vec.epilog.middle.block ], [ %7, %middle.block ], [ %.lcssa275.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ip, %vec.epilog.scalar.ph ]
  %i.iq = add nsw i32 %.4129, 4
  br label %.loopexit116

end_hunk_3
begin_hunk_4_@llvm.bswap.v8i16
!140 = distinct !{!140, !138}
!141 = !{!142}
!142 = distinct !{!142, !138}
!143 = !{!140, !137}
!144 = distinct !{!144, !74, !97, !98}
!145 = distinct !{!145, !127}
!146 = distinct !{!146, !74, !97}
end_hunk_4
