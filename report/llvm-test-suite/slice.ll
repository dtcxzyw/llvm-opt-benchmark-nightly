inline.NumInlined: 26
inline.NumDeleted: 10
begin_hunk_0_@encode_one_slice:bb.a
  store ptr @writeMB_typeInfo_CABAC, ptr @writeMB_typeInfo, align 8, !tbaa !8
  store ptr @writeIntraPredMode_CABAC, ptr @writeIntraPredMode, align 8, !tbaa !8
  store ptr @writeB8_typeInfo_CABAC, ptr @writeB8_typeInfo, align 8, !tbaa !8
  %3 = load <2 x i32>, ptr @listXsize, align 16, !tbaa !4
  %4 = icmp ult <2 x i32> %3, splat (i32 2)
  %5 = select <2 x i1> %4, <2 x ptr> <ptr @writeSE_Dummy, ptr @writeSE_Dummy>, <2 x ptr> <ptr @writeRefFrame_CABAC, ptr @writeRefFrame_CABAC>
  store <2 x ptr> %5, ptr @writeRefFrame, align 16, !tbaa !8
  %6 = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 8), align 8, !tbaa !4
  %7 = icmp ult <2 x i32> %6, splat (i32 2)
  %8 = select <2 x i1> %7, <2 x ptr> <ptr @writeSE_Dummy, ptr @writeSE_Dummy>, <2 x ptr> <ptr @writeRefFrame_CABAC, ptr @writeRefFrame_CABAC>
  store <2 x ptr> %8, ptr getelementptr inbounds nuw (i8, ptr @writeRefFrame, i64 16), align 16, !tbaa !8
  %i.uk = load i32, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 16), align 16, !tbaa !4
  %switch.selectcmp211.i = icmp ult i32 %i.uk, 2
  %i.ul = select i1 %switch.selectcmp211.i, ptr @writeSE_Dummy, ptr @writeRefFrame_CABAC
end_hunk_0
