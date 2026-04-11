inline.NumInlined: 640
inline.NumDeleted: 215
begin_hunk_0_@_ZN6Assimp11X3DImporter15readRectangle2DERN4pugi8xml_nodeE:bb.a
  %4 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %class.aiVector2t, align 8          ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp11X3DImporter15readRectangle2DERN4pugi8xml_nodeE:bb.a
  store i64 0, ptr %i.d, align 8
  store i8 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store <2 x float> splat (float 2.000000e+00), ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.e = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str)
end_hunk_1
begin_hunk_2_@_ZN6Assimp11X3DImporter15readRectangle2DERN4pugi8xml_nodeE:bb.a
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.m, %bb.l
  %9 = load <2 x float>, ptr %7, align 8          ; 2 uses
  %10 = fmul <2 x float> %9, splat (float -5.000000e-01) ; 3 uses
  %11 = fmul <2 x float> %9, splat (float 5.000000e-01) ; 3 uses
  %i.aq = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19
          to label %bb.n unwind label %bb.t       ; 4 uses

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %12 = extractelement <2 x float> %11, i64 0
  store float %12, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %13 = extractelement <2 x float> %10, i64 1
  store float %13, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store float 0.000000e+00, ptr %i.at, align 4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ak) #18
end_hunk_2
begin_hunk_3_@_ZN6Assimp11X3DImporter15readRectangle2DERN4pugi8xml_nodeE:bb.a
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.am, align 8
  %i.aw = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19
          to label %bb.o unwind label %bb.u       ; 3 uses

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <2 x float> %11, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store float 0.000000e+00, ptr %i.ay, align 4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.ak) #18
end_hunk_3
begin_hunk_4_@_ZN6Assimp11X3DImporter15readRectangle2DERN4pugi8xml_nodeE:bb.a

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %14 = extractelement <2 x float> %10, i64 0
  store float %14, ptr %i.bc, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %15 = extractelement <2 x float> %11, i64 1
  store float %15, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store float 0.000000e+00, ptr %i.be, align 4
end_hunk_4
begin_hunk_5_@_ZN6Assimp11X3DImporter15readRectangle2DERN4pugi8xml_nodeE:bb.a
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.am, align 8
  %i.bh = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19
          to label %bb.q unwind label %bb.w       ; 3 uses

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <2 x float> %10, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store float 0.000000e+00, ptr %i.bj, align 4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.ak) #18
end_hunk_5
