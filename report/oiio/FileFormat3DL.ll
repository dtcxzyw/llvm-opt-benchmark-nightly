inline.NumInlined: 960
inline.NumDeleted: 420
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  br i1 %i.ou, label %.preheader.preheader, label %vector.ph1234

vector.ph1234:                                    ; preds = %vector.scevcheck
  %n.vec1236 = and i64 %i.ni, 8589934588          ; 5 uses
  %.cast = trunc i64 %n.vec1236 to i32
  %i.ov = mul i32 %.cast, 3
  %22 = trunc i64 %n.vec1236 to i32
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.om, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1238
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
.preheader.preheader:                             ; preds = %vector.scevcheck, %.preheader.lr.ph, %middle.block1244
  %.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader.lr.ph ], [ %n.vec1236, %middle.block1244 ]
  %.098722.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.preheader.lr.ph ], [ %i.ov, %middle.block1244 ]
  %.0100721.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.preheader.lr.ph ], [ %22, %middle.block1244 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
end_hunk_1
