inline.NumInlined: 1393
inline.NumDeleted: 732
begin_hunk_0
%"class.std::__cxx11::_List_base.45" = type { %"struct.std::__cxx11::_List_base<std::__cxx11::list<Assimp::AMFImporter::SComplexFace>, std::allocator<std::__cxx11::list<Assimp::AMFImporter::SComplexFace>>>::_List_impl" }
%"struct.std::__cxx11::_List_base<std::__cxx11::list<Assimp::AMFImporter::SComplexFace>, std::allocator<std::__cxx11::list<Assimp::AMFImporter::SComplexFace>>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%class.anon.76 = type { ptr, ptr, ptr, ptr, ptr }
%"struct.Assimp::AMFImporter::SPP_Material" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::list", ptr, %"class.std::__cxx11::list.3" }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<AMFMetadata *, std::allocator<AMFMetadata *>>::_List_impl" }
end_hunk_0
begin_hunk_1_@_ZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNode:bb.a
  %8 = alloca %"class.std::__cxx11::list.49", align 8 ; 16 uses
  %9 = alloca %"class.std::__cxx11::list.44", align 8 ; 18 uses
  %10 = alloca %class.anon.76, align 8            ; 10 uses
  store ptr %4, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
end_hunk_1
begin_hunk_2_@_ZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNode:bb.a
._crit_edge1251:                                  ; preds = %._crit_edge1251.loopexit, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread"
  %i.kl = phi ptr [ %.sroa.05.023.i655, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.pre, %._crit_edge1251.loopexit ]
  %.sroa.45.3.lcssa = phi ptr [ %.sroa.45.2699, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.sroa.45.8, %._crit_edge1251.loopexit ] ; 6 uses
  %.sroa.0440.3.lcssa = phi ptr [ %.sroa.0440.2692, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.sroa.0443.7, %._crit_edge1251.loopexit ] ; 6 uses
  %.sroa.18.1.lcssa = phi ptr [ %.sroa.18.0669, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.sroa.18.3, %._crit_edge1251.loopexit ]
  %.sroa.37.3.lcssa = phi ptr [ %.sroa.37.2684, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.sroa.37.7, %._crit_edge1251.loopexit ] ; 6 uses
  %.sroa.22.1.lcssa = phi ptr [ %.sroa.22.0662, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.sroa.22.3, %._crit_edge1251.loopexit ] ; 4 uses
  %.sroa.0485.3.lcssa = phi ptr [ %.sroa.0485.2676, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.sroa.0488.8, %._crit_edge1251.loopexit ] ; 7 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 40
  %i.kn = load ptr, ptr %i.km, align 8
  %.not150 = icmp eq ptr %i.kn, null
end_hunk_2
begin_hunk_3_@_ZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNode:bb.a

.lr.ph1250:                                       ; preds = %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread", %bb.bu
  %.sroa.0423.01248 = phi ptr [ %i.mv, %bb.bu ], [ %.sroa.05.023.i655, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 4 uses
  %.sroa.0485.31247 = phi ptr [ %.sroa.0488.8, %bb.bu ], [ %.sroa.0485.2676, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 6 uses
  %.sroa.22.11246 = phi ptr [ %.sroa.22.3, %bb.bu ], [ %.sroa.22.0662, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 4 uses
  %.sroa.37.31245 = phi ptr [ %.sroa.37.7, %bb.bu ], [ %.sroa.37.2684, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 5 uses
  %.sroa.18.11244 = phi ptr [ %.sroa.18.3, %bb.bu ], [ %.sroa.18.0669, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 3 uses
  %.sroa.0440.31243 = phi ptr [ %.sroa.0443.7, %bb.bu ], [ %.sroa.0440.2692, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 5 uses
  %.sroa.45.31242 = phi ptr [ %.sroa.45.8, %bb.bu ], [ %.sroa.45.2699, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 5 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0423.01248, i64 16 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.0423.01248, i64 32
end_hunk_3
begin_hunk_4_@_ZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNode:bb.a
  br i1 %.not156, label %bb.bu, label %bb.be

bb.be:                                            ; preds = %.lr.ph1250
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 80
  %i.ks = load i8, ptr %i.kr, align 8, !range !3, !noundef !4
  %i.kt = trunc nuw i8 %i.ks to i1
end_hunk_4
begin_hunk_5_@_ZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNode:bb.a
  %i.kv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ku) #21
  br label %.loopexit.split-lp599

bb.bi:                                            ; preds = %bb.bg
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp599

bb.bj:                                            ; preds = %bb.be
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kq, i64 216
  %.sroa.0422.0.copyload = load <4 x float>, ptr %i.kx, align 8 ; 2 uses
  %i.ky = load i32, ptr %i.ko, align 8
  %.not1318 = icmp eq i32 %i.ky, 0
  br i1 %.not1318, label %bb.bu, label %.lr.ph1233

.lr.ph1233:                                       ; preds = %bb.bj
  %i.kz = ptrtoint ptr %.sroa.22.11246 to i64
end_hunk_5
begin_hunk_6_@_ZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNode:bb.a
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0423.01248, i64 24 ; 2 uses
  br label %bb.bk

bb.bk:                                            ; preds = %.lr.ph1233, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit
  %.01311231 = phi i64 [ %i.lc, %.lr.ph1233 ], [ %i.mn, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.01321230 = phi i64 [ 0, %.lr.ph1233 ], [ %i.mr, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ] ; 3 uses
end_hunk_6
begin_hunk_7_@_ZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNode:bb.a
  br i1 %.not.i278, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit277
  store <4 x float> %.sroa.0422.0.copyload, ptr %.sroa.18.21226, align 4
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit

bb.br:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit277
end_hunk_7
begin_hunk_8_@_ZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNode:bb.a

.noexc289:                                        ; preds = %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.ma
  store <4 x float> %.sroa.0422.0.copyload, ptr %i.mj, align 4
  %.not10.i.i.i.i.i281 = icmp eq ptr %.sroa.0440.51225, %.sroa.37.51227
  br i1 %.not10.i.i.i.i.i281, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i282

end_hunk_8
begin_hunk_9_@_ZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNode:bb.a
  %i.ms = load i32, ptr %i.ko, align 8
  %i.mt = zext i32 %i.ms to i64
  %i.mu = icmp samesign ult i64 %i.mr, %i.mt
  br i1 %i.mu, label %bb.bk, label %bb.bu, !llvm.loop !70

.loopexit587.a:                                   ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i263, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.45.6.ph = phi ptr [ %.sroa.22.21228, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i263 ], [ %.sroa.45.19, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %.sroa.0485.6.ph = phi ptr [ %.sroa.0485.51229, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i263 ], [ %.sroa.0485.19, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit591 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp599

.loopexit.split-lp588:                            ; preds = %bb.bl, %bb.bp, %bb.bs
  %.sroa.45.6.ph589 = phi ptr [ %.sroa.45.51224, %bb.bl ], [ %.sroa.45.19, %bb.bs ], [ %.sroa.22.21228, %bb.bp ]
  %.sroa.0485.6.ph590 = phi ptr [ %.sroa.0485.51229, %bb.bl ], [ %.sroa.0485.19, %bb.bs ], [ %.sroa.0485.51229, %bb.bp ]
  %lpad.loopexit.split-lp592 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp599

bb.bu:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit, %bb.bj, %.lr.ph1250
  %.sroa.45.8 = phi ptr [ %.sroa.45.31242, %.lr.ph1250 ], [ %.sroa.45.31242, %bb.bj ], [ %.sroa.45.19, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.0443.7 = phi ptr [ %.sroa.0440.31243, %.lr.ph1250 ], [ %.sroa.0440.31243, %bb.bj ], [ %.sroa.0440.18, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.18.3 = phi ptr [ %.sroa.18.11244, %.lr.ph1250 ], [ %.sroa.18.11244, %bb.bj ], [ %.sroa.18.10, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.37.7 = phi ptr [ %.sroa.37.31245, %.lr.ph1250 ], [ %.sroa.37.31245, %bb.bj ], [ %.sroa.37.18, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.22.3 = phi ptr [ %.sroa.22.11246, %.lr.ph1250 ], [ %.sroa.22.11246, %bb.bj ], [ %.sroa.22.11, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.0488.8 = phi ptr [ %.sroa.0485.31247, %.lr.ph1250 ], [ %.sroa.0485.31247, %bb.bj ], [ %.sroa.0485.19, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.mv = load ptr, ptr %.sroa.0423.01248, align 8 ; 2 uses
  %.not579 = icmp eq ptr %i.mv, %i.bx
  br i1 %.not579, label %._crit_edge1251.loopexit, label %.lr.ph1250
end_hunk_9
begin_hunk_10_@_ZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNode:bb.a
          cleanup
  br label %.loopexit.split-lp599

.loopexit.split-lp599:                            ; preds = %.loopexit620, %.loopexit.split-lp621, %.loopexit584, %.loopexit.split-lp, %.loopexit615, %.loopexit.split-lp616, %.loopexit587.a, %.loopexit.split-lp588, %.loopexit603, %.loopexit.split-lp604, %.loopexit598.a, %.loopexit.split-lp599.loopexit.split-lp, %.loopexit.split-lp599.loopexit, %bb.bh, %bb.bi, %bb.ak, %bb.de, %bb.do, %bb.aj
  %.sroa.45.15 = phi ptr [ %.sroa.45.0, %bb.aj ], [ %.sroa.45.6.ph589, %.loopexit.split-lp588 ], [ %.sroa.45.1.ph.ph, %.loopexit.split-lp599.loopexit.split-lp ], [ %.sroa.45.14, %bb.de ], [ %.sroa.45.12.ph585, %.loopexit.split-lp ], [ %.sroa.45.14, %bb.do ], [ %.sroa.45.10.lcssa, %.loopexit.split-lp616 ], [ %.sroa.45.18, %.loopexit.split-lp604 ], [ %.sroa.45.17, %bb.ak ], [ %.sroa.45.31242, %bb.bi ], [ %.sroa.45.31242, %bb.bh ], [ %.sroa.22.01208, %.loopexit598.a ], [ %.sroa.0485.16572, %.loopexit.split-lp599.loopexit ], [ %.sroa.45.18, %.loopexit603 ], [ %.sroa.45.6.ph, %.loopexit587.a ], [ %.sroa.45.9.ph, %.loopexit615 ], [ %.sroa.45.12.ph, %.loopexit584 ], [ %.sroa.45.14, %.loopexit620 ], [ %.sroa.45.14, %.loopexit.split-lp621 ]
  %.sroa.0467.3 = phi ptr [ %.sroa.0464.0, %bb.aj ], [ null, %.loopexit.split-lp588 ], [ null, %.loopexit.split-lp599.loopexit.split-lp ], [ %.sroa.0464.2, %bb.de ], [ %.sroa.0464.4, %.loopexit.split-lp ], [ %.sroa.0464.2, %bb.do ], [ %.sroa.0464.4, %.loopexit.split-lp616 ], [ null, %.loopexit.split-lp604 ], [ null, %bb.ak ], [ null, %bb.bi ], [ null, %bb.bh ], [ null, %.loopexit598.a ], [ null, %.loopexit.split-lp599.loopexit ], [ null, %.loopexit603 ], [ null, %.loopexit587.a ], [ %.sroa.0464.1.ph, %.loopexit615 ], [ %.sroa.0464.4, %.loopexit584 ], [ %.sroa.0464.2, %.loopexit620 ], [ %.sroa.0464.2, %.loopexit.split-lp621 ] ; 3 uses
  %.sroa.31.3 = phi ptr [ %.sroa.31.0, %bb.aj ], [ null, %.loopexit.split-lp588 ], [ null, %.loopexit.split-lp599.loopexit.split-lp ], [ %.sroa.31.2, %bb.de ], [ %.sroa.17.1, %.loopexit.split-lp ], [ %.sroa.31.2, %bb.do ], [ %.sroa.17.1, %.loopexit.split-lp616 ], [ null, %.loopexit.split-lp604 ], [ null, %bb.ak ], [ null, %bb.bi ], [ null, %bb.bh ], [ null, %.loopexit598.a ], [ null, %.loopexit.split-lp599.loopexit ], [ null, %.loopexit603 ], [ null, %.loopexit587.a ], [ %.sroa.31.1.ph, %.loopexit615 ], [ %.sroa.17.1, %.loopexit584 ], [ %.sroa.31.2, %.loopexit620 ], [ %.sroa.31.2, %.loopexit.split-lp621 ]
  %.sroa.0443.14 = phi ptr [ %.sroa.0440.0, %bb.aj ], [ %.sroa.0440.51225, %.loopexit.split-lp588 ], [ %.sroa.0440.1.ph.ph, %.loopexit.split-lp599.loopexit.split-lp ], [ %.sroa.0440.13, %bb.de ], [ %.sroa.0440.11.ph, %.loopexit.split-lp ], [ %.sroa.0440.13, %bb.do ], [ %.sroa.0440.9.lcssa, %.loopexit.split-lp616 ], [ %.sroa.0440.21201, %.loopexit.split-lp604 ], [ %.sroa.0440.15, %bb.ak ], [ %.sroa.0440.31243, %bb.bi ], [ %.sroa.0440.31243, %bb.bh ], [ %.sroa.0440.21201, %.loopexit598.a ], [ %.sroa.0440.15, %.loopexit.split-lp599.loopexit ], [ %.sroa.0440.21201, %.loopexit603 ], [ %.sroa.0440.51225, %.loopexit587.a ], [ %.sroa.0440.8.ph, %.loopexit615 ], [ %.sroa.0440.101262, %.loopexit584 ], [ %.sroa.0440.13, %.loopexit620 ], [ %.sroa.0440.13, %.loopexit.split-lp621 ] ; 3 uses
  %.sroa.37.14 = phi ptr [ %.sroa.37.0, %bb.aj ], [ %.sroa.37.51227, %.loopexit.split-lp588 ], [ %.sroa.37.1.ph.ph, %.loopexit.split-lp599.loopexit.split-lp ], [ %.sroa.37.13, %bb.de ], [ %.sroa.37.11.ph, %.loopexit.split-lp ], [ %.sroa.37.13, %bb.do ], [ %.sroa.37.9.lcssa, %.loopexit.split-lp616 ], [ %.sroa.18.01207, %.loopexit.split-lp604 ], [ %.sroa.37.15.lcssa1535, %bb.ak ], [ %.sroa.37.31245, %bb.bi ], [ %.sroa.37.31245, %bb.bh ], [ %.sroa.37.21203, %.loopexit598.a ], [ %.sroa.37.15, %.loopexit.split-lp599.loopexit ], [ %.sroa.37.21203.lcssa1356, %.loopexit603 ], [ %.sroa.37.51227, %.loopexit587.a ], [ %.sroa.37.8.ph, %.loopexit615 ], [ %.sroa.37.101264, %.loopexit584 ], [ %.sroa.37.13, %.loopexit620 ], [ %.sroa.37.13, %.loopexit.split-lp621 ]
  %.sroa.0488.15 = phi ptr [ %.sroa.0485.0, %bb.aj ], [ %.sroa.0485.6.ph590, %.loopexit.split-lp588 ], [ %.sroa.0485.1.ph.ph, %.loopexit.split-lp599.loopexit.split-lp ], [ %.sroa.0485.14, %bb.de ], [ %.sroa.0485.12.ph586, %.loopexit.split-lp ], [ %.sroa.0485.14, %bb.do ], [ %.sroa.0485.10.lcssa, %.loopexit.split-lp616 ], [ %.sroa.0485.18, %.loopexit.split-lp604 ], [ %.sroa.0485.17, %bb.ak ], [ %.sroa.0485.31247, %bb.bi ], [ %.sroa.0485.31247, %bb.bh ], [ %.sroa.0485.21206, %.loopexit598.a ], [ %.sroa.0485.16572, %.loopexit.split-lp599.loopexit ], [ %.sroa.0485.18, %.loopexit603 ], [ %.sroa.0485.6.ph, %.loopexit587.a ], [ %.sroa.0485.9.ph, %.loopexit615 ], [ %.sroa.0485.12.ph, %.loopexit584 ], [ %.sroa.0485.14, %.loopexit620 ], [ %.sroa.0485.14, %.loopexit.split-lp621 ] ; 3 uses
  %.pn157.pn = phi { ptr, i32 } [ %i.gd, %bb.aj ], [ %lpad.loopexit.split-lp592, %.loopexit.split-lp588 ], [ %lpad.loopexit.split-lp613, %.loopexit.split-lp599.loopexit.split-lp ], [ %i.sy, %bb.de ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.ui, %bb.do ], [ %lpad.loopexit.split-lp618, %.loopexit.split-lp616 ], [ %lpad.loopexit.split-lp606, %.loopexit.split-lp604 ], [ %i.ge, %bb.ak ], [ %i.kw, %bb.bi ], [ %i.kv, %bb.bh ], [ %lpad.loopexit600, %.loopexit598.a ], [ %lpad.loopexit612, %.loopexit.split-lp599.loopexit ], [ %lpad.loopexit605, %.loopexit603 ], [ %lpad.loopexit591, %.loopexit587.a ], [ %lpad.loopexit617, %.loopexit615 ], [ %lpad.loopexit, %.loopexit584 ], [ %lpad.loopexit622, %.loopexit620 ], [ %lpad.loopexit.split-lp623, %.loopexit.split-lp621 ] ; 2 uses
  %.not.i.i.i354 = icmp eq ptr %.sroa.0443.14, null
  br i1 %.not.i.i.i354, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit355, label %bb.dp

bb.dp:                                            ; preds = %.loopexit.split-lp599
  %i.uj = ptrtoint ptr %.sroa.37.14 to i64
  %i.uk = ptrtoint ptr %.sroa.0443.14 to i64
  %i.ul = sub i64 %i.uj, %i.uk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0443.14, i64 noundef %i.ul) #23
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit355

_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit355:   ; preds = %.loopexit.split-lp599, %bb.dp
  %.not.i.i.i356 = icmp eq ptr %.sroa.0467.3, null
  br i1 %.not.i.i.i356, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit357, label %bb.dq

bb.dq:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit355
  %i.um = ptrtoint ptr %.sroa.31.3 to i64
  %i.un = ptrtoint ptr %.sroa.0467.3 to i64
  %i.uo = sub i64 %i.um, %i.un
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0467.3, i64 noundef %i.uo) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit357

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit357: ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit355, %bb.dq
  %.not.i.i.i358 = icmp eq ptr %.sroa.0488.15, null
  br i1 %.not.i.i.i358, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit359, label %bb.dr

bb.dr:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit357
  %i.up = ptrtoint ptr %.sroa.45.15 to i64
  %i.uq = ptrtoint ptr %.sroa.0488.15 to i64
  %i.ur = sub i64 %i.up, %i.uq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0488.15, i64 noundef %i.ur) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit359

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit359: ; preds = %bb.dr, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit357, %bb.ai
end_hunk_10
