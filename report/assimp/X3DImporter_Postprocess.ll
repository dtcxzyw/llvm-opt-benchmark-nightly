inline.NumInlined: 858
inline.NumDeleted: 400
begin_hunk_0_@_ZNK6Assimp11X3DImporter21Postprocess_BuildNodeERK18X3DNodeElementBaseR6aiNodeRNSt7__cxx114listIP6aiMeshSaIS9_EEERNS7_IP10aiMaterialSaISE_EEERNS7_IP7aiLightSaISJ_EEE:bb.a
          to label %bb.z unwind label %bb.o

bb.q:                                             ; preds = %.lr.ph138
  %11 = add i32 %i.al, -1
  %or.cond9.i = icmp ult i32 %11, 6
  br i1 %or.cond9.i, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q
end_hunk_0
begin_hunk_1_@_ZNK6Assimp11X3DImporter27Postprocess_CollectMetadataERK18X3DNodeElementBaseR6aiNode:bb.a
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bb, i64 152
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = load ptr, ptr %i.cs, align 8            ; 2 uses
  %.not39 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not39, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.s

end_hunk_1
begin_hunk_2_@_ZNK6Assimp11X3DImporter27Postprocess_CollectMetadataERK18X3DNodeElementBaseR6aiNode:bb.a
  %i.cw = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.cx = trunc i64 %.0113 to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.cz = load double, ptr %i.cv, align 8
  %i.da = fptrunc double %i.cz to float           ; 3 uses
  %i.db = load i32, ptr %i.cw, align 8
end_hunk_2
begin_hunk_3_@_ZNK6Assimp11X3DImporter27Postprocess_CollectMetadataERK18X3DNodeElementBaseR6aiNode:bb.a
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bb, i64 152
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = load ptr, ptr %i.dy, align 8            ; 4 uses
  %.not38 = icmp eq ptr %i.ea, %i.eb
  br i1 %.not38, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.ab

end_hunk_3
begin_hunk_4_@_ZNK6Assimp11X3DImporter27Postprocess_CollectMetadataERK18X3DNodeElementBaseR6aiNode:bb.a
  %i.ec = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.ed = trunc i64 %.0113 to i32
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.ef = load i32, ptr %i.ec, align 8
  %.not.i58 = icmp ugt i32 %i.ef, %i.ed
  br i1 %.not.i58, label %bb.ac, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
end_hunk_4
begin_hunk_5_@_ZNK6Assimp11X3DImporter27Postprocess_CollectMetadataERK18X3DNodeElementBaseR6aiNode:bb.a
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bb, i64 152
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = load ptr, ptr %i.fe, align 8            ; 3 uses
  %.not37 = icmp eq ptr %i.fg, %i.fh
  br i1 %.not37, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.ak

end_hunk_5
begin_hunk_6_@_ZNK6Assimp11X3DImporter27Postprocess_CollectMetadataERK18X3DNodeElementBaseR6aiNode:bb.a
  %i.fi = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.fj = trunc i64 %.0113 to i32
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.fl = load i32, ptr %i.fi, align 8
  %.not.i67 = icmp ugt i32 %i.fl, %i.fj
  br i1 %.not.i67, label %bb.al, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
end_hunk_6
begin_hunk_7_@_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_:bb.a
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.e
end_hunk_7
