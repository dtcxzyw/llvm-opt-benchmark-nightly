inline.NumInlined: 6379
inline.NumDeleted: 1713
begin_hunk_0_@_ZN11OpenImageIO4v3_1L17make_texture_implENS0_12ImageBufAlgo15MakeTextureModeEPKNS0_8ImageBufENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS0_9ImageSpecEPSo:bb.a
  %i.y = alloca double, align 8                   ; 9 uses
  %i.z = alloca double, align 8                   ; 7 uses
  %i.aa = alloca double, align 8                  ; 8 uses
  %i.ab = alloca i64, align 8                     ; 21 uses
  %57 = alloca %"class.OpenImageIO::v3_1::Timer", align 8 ; 32 uses
  %58 = alloca %"class.OpenImageIO::v3_1::ImageSpec", align 8 ; 82 uses
  %59 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_1L17make_texture_implENS0_12ImageBufAlgo15MakeTextureModeEPKNS0_8ImageBufENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS0_9ImageSpecEPSo:bb.a

bb.acw:                                           ; preds = %bb.acv
  %i.cuy = load i64, ptr %i.ab, align 8, !tbaa !18
  %.sroa.speculated2191 = call i64 @llvm.umax.i64(i64 %i.cuy, i64 %i.cux) ; 5 uses
  store i64 %.sroa.speculated2191, ptr %i.ab, align 8, !tbaa !18
  br i1 %i.zx, label %bb.acx, label %bb.adf

end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_1L17make_texture_implENS0_12ImageBufAlgo15MakeTextureModeEPKNS0_8ImageBufENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS0_9ImageSpecEPSo:bb.a
          to label %bb.agc unwind label %bb.agh   ; 2 uses

bb.agc:                                           ; preds = %bb.agb
  %.sroa.speculated2174 = call i64 @llvm.umax.i64(i64 %.sroa.speculated2191, i64 %i.dcs) ; 2 uses
  store i64 %.sroa.speculated2174, ptr %i.ab, align 8, !tbaa !18
  br i1 %i.zx, label %bb.agd, label %bb.agl

end_hunk_2
