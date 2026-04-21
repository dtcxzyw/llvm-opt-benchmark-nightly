inline.NumInlined: 8178
inline.NumDeleted: 2488
begin_hunk_0_@_ZNK11OpenImageIO4v3_19ImageSpec14find_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEERNS0_10ParamValueENS0_8TypeDescEb:bb.a
  %i.vn = shufflevector <4 x i32> %i.vk, <4 x i32> %i.vm, <4 x i32> <i32 poison, i32 0, i32 1, i32 4>
  %i.vo = insertelement <4 x i32> %i.vn, i32 0, i64 0
  %i.vp = add <4 x i32> %i.vo, <i32 0, i32 -1, i32 -1, i32 -1>
  %i.vq = add <4 x i32> %i.vp, %i.vm
  store <4 x i32> %i.vq, ptr %i.vi, align 8, !tbaa !3
  %i.vr = load ptr, ptr %1, align 8, !tbaa !103
  store ptr %i.vr, ptr %86, align 8, !tbaa !103
end_hunk_0
begin_hunk_1_@_ZNK11OpenImageIO4v3_19ImageSpec14find_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEERNS0_10ParamValueENS0_8TypeDescEb:bb.a
  %i.ya = shufflevector <4 x i32> %i.xx, <4 x i32> %i.xz, <4 x i32> <i32 poison, i32 0, i32 1, i32 4>
  %i.yb = insertelement <4 x i32> %i.ya, i32 0, i64 0
  %i.yc = add <4 x i32> %i.yb, <i32 0, i32 -1, i32 -1, i32 -1>
  %i.yd = add <4 x i32> %i.yc, %i.xz
  store <4 x i32> %i.yd, ptr %i.xv, align 8, !tbaa !3
  %i.ye = load ptr, ptr %1, align 8, !tbaa !103
  store ptr %i.ye, ptr %92, align 8, !tbaa !103
end_hunk_1
