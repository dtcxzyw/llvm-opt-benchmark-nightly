inline.NumInlined: 4893
inline.NumDeleted: 1786
begin_hunk_0_@_ZN11OpenImageIO4v3_18PSDInput20read_native_scanlineEiiiiPv:bb.a

_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit:    ; preds = %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ai, i8 0, i64 %i.ah, i1 false)
  %.pre280.pre = load ptr, ptr %i.u, align 8, !tbaa !130
  %.pre.pre = load ptr, ptr %i.v, align 8, !tbaa !260
  store ptr %i.ai, ptr %6, align 8, !tbaa !296
  %7 = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.ab ; 2 uses
  store ptr %7, ptr %i.ac, align 8, !tbaa !299
  store ptr %7, ptr %i.af, align 8, !tbaa !300
  %.pre284 = ptrtoint ptr %.pre.pre to i64
  %.pre285.a = ptrtoint ptr %.pre280.pre to i64
  %.pre287.a = sub i64 %.pre284, %.pre285.a       ; 3 uses
  %.pre289 = ashr exact i64 %.pre287.a, 3         ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 672
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5LayerESaIS3_EE17_M_default_appendEm:bb.a
  br label %_ZSt19__relocate_object_aIN11OpenImageIO4v3_18PSDInput5LayerES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN11OpenImageIO4v3_18PSDInput5LayerES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.ec = phi i64 [ %i.dy, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 144
  %i.ee = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 144
  store i64 %i.ec, ptr %i.ee, align 8, !tbaa !11, !alias.scope !1114, !noalias !1117
end_hunk_1
