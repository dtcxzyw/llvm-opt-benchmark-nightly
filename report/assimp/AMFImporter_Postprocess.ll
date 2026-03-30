begin_hunk_0
%"class.std::__cxx11::_List_base.45" = type { %"struct.std::__cxx11::_List_base<std::__cxx11::list<Assimp::AMFImporter::SComplexFace>, std::allocator<std::__cxx11::list<Assimp::AMFImporter::SComplexFace>>>::_List_impl" }
%"struct.std::__cxx11::_List_base<std::__cxx11::list<Assimp::AMFImporter::SComplexFace>, std::allocator<std::__cxx11::list<Assimp::AMFImporter::SComplexFace>>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%class.anon.76 = type { ptr, ptr, ptr, ptr, ptr }
%class.aiColor4t = type { float, float, float, float }
%"struct.Assimp::AMFImporter::SPP_Material" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::list", ptr, %"class.std::__cxx11::list.3" }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<AMFMetadata *, std::allocator<AMFMetadata *>>::_List_impl" }
end_hunk_0
begin_hunk_1
  %8 = alloca %"class.std::__cxx11::list.49", align 8 ; 16 uses
  %9 = alloca %"class.std::__cxx11::list.44", align 8 ; 18 uses
  %10 = alloca %class.anon.76, align 8            ; 10 uses
  %11 = alloca %class.aiColor4t, align 4          ; 6 uses
  store ptr %4, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
end_hunk_1
begin_hunk_2
._crit_edge1251:                                  ; preds = %._crit_edge1251.loopexit, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread"
  %i.it = phi ptr [ %.sroa.05.023.i655, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.pre, %._crit_edge1251.loopexit ]
  %.sroa.45.3.lcssa = phi ptr [ %.sroa.45.2699, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.sroa.45.8, %._crit_edge1251.loopexit ] ; 6 uses
  %.sroa.0440.3.lcssa = phi ptr [ %.sroa.0440.2692, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.sroa.0440.7, %._crit_edge1251.loopexit ] ; 6 uses
  %.sroa.18.1.lcssa = phi ptr [ %.sroa.18.0669, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.sroa.18.3, %._crit_edge1251.loopexit ]
  %.sroa.37.3.lcssa = phi ptr [ %.sroa.37.2684, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.sroa.37.7, %._crit_edge1251.loopexit ] ; 6 uses
  %.sroa.22.1.lcssa = phi ptr [ %.sroa.22.0662, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.sroa.22.3, %._crit_edge1251.loopexit ] ; 4 uses
  %.sroa.0485.3.lcssa = phi ptr [ %.sroa.0485.2676, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.sroa.0485.8, %._crit_edge1251.loopexit ] ; 7 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  %i.iv = load ptr, ptr %i.iu, align 8
  %.not150 = icmp eq ptr %i.iv, null
end_hunk_2
begin_hunk_3

.lr.ph1250:                                       ; preds = %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread", %bb.bv
  %.sroa.0423.01248 = phi ptr [ %i.ld, %bb.bv ], [ %.sroa.05.023.i655, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 4 uses
  %.sroa.0485.31247 = phi ptr [ %.sroa.0485.8, %bb.bv ], [ %.sroa.0485.2676, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 6 uses
  %.sroa.22.11246 = phi ptr [ %.sroa.22.3, %bb.bv ], [ %.sroa.22.0662, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 4 uses
  %.sroa.37.31245 = phi ptr [ %.sroa.37.7, %bb.bv ], [ %.sroa.37.2684, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 5 uses
  %.sroa.18.11244 = phi ptr [ %.sroa.18.3, %bb.bv ], [ %.sroa.18.0669, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 3 uses
  %.sroa.0440.31243 = phi ptr [ %.sroa.0440.7, %bb.bv ], [ %.sroa.0440.2692, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 5 uses
  %.sroa.45.31242 = phi ptr [ %.sroa.45.8, %bb.bv ], [ %.sroa.45.2699, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 5 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0423.01248, i64 16 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0423.01248, i64 32
end_hunk_3
begin_hunk_4
  br i1 %.not156, label %bb.bv, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph1250
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 80
  %i.ja = load i8, ptr %i.iz, align 8, !range !3, !noundef !4
  %i.jb = trunc nuw i8 %i.ja to i1
end_hunk_4
begin_hunk_5
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.jc) #22
  br label %12

bb.bj:                                            ; preds = %bb.bh
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %12

bb.bk:                                            ; preds = %bb.bf
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iy, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %i.jf, i64 16, i1 false)
  %i.jg = load i32, ptr %i.iw, align 8
  %.not1318 = icmp eq i32 %i.jg, 0
  br i1 %.not1318, label %._crit_edge1234, label %.lr.ph1233

.lr.ph1233:                                       ; preds = %bb.bk
  %i.jh = ptrtoint ptr %.sroa.22.11246 to i64
end_hunk_5
begin_hunk_6
  %i.jk = sdiv exact i64 %i.jj, 12
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0423.01248, i64 24 ; 2 uses
  br label %bb.bl

._crit_edge1234:                                  ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit, %bb.bk
  %.sroa.45.5.lcssa = phi ptr [ %.sroa.45.31242, %bb.bk ], [ %.sroa.45.19, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ]
  %.sroa.0440.5.lcssa = phi ptr [ %.sroa.0440.31243, %bb.bk ], [ %.sroa.0440.18, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ]
  %.sroa.18.2.lcssa = phi ptr [ %.sroa.18.11244, %bb.bk ], [ %.sroa.18.10, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ]
  %.sroa.37.5.lcssa = phi ptr [ %.sroa.37.31245, %bb.bk ], [ %.sroa.37.18, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ]
  %.sroa.22.2.lcssa = phi ptr [ %.sroa.22.11246, %bb.bk ], [ %.sroa.22.11, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ]
  %.sroa.0485.5.lcssa = phi ptr [ %.sroa.0485.31247, %bb.bk ], [ %.sroa.0485.19, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.bv

bb.bl:                                            ; preds = %.lr.ph1233, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit
  %.01311231 = phi i64 [ %i.jk, %.lr.ph1233 ], [ %i.kv, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
end_hunk_6
begin_hunk_7
  br i1 %.not.i278, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit277
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.18.21226, ptr noundef nonnull align 4 dereferenceable(16) %11, i64 16, i1 false)
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit

bb.bs:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit277
end_hunk_7
begin_hunk_8

.noexc289:                                        ; preds = %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 %i.ki
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.kr, ptr noundef nonnull align 4 dereferenceable(16) %11, i64 16, i1 false)
  %.not10.i.i.i.i.i281 = icmp eq ptr %.sroa.0440.51225, %.sroa.37.51227
  br i1 %.not10.i.i.i.i.i281, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i282

end_hunk_8
begin_hunk_9
  %i.la = load i32, ptr %i.iw, align 8
  %i.lb = zext i32 %i.la to i64
  %i.lc = icmp samesign ult i64 %i.kz, %i.lb
  br i1 %i.lc, label %bb.bl, label %._crit_edge1234, !llvm.loop !66

.loopexit587.a:                                   ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i263, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.45.6.ph = phi ptr [ %.sroa.22.21228, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i263 ], [ %.sroa.45.19, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %.sroa.0485.6.ph = phi ptr [ %.sroa.0485.51229, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i263 ], [ %.sroa.0485.19, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit591 = landingpad { ptr, i32 }
          cleanup
  br label %12

.loopexit.split-lp588:                            ; preds = %bb.bm, %bb.bq, %bb.bt
  %.sroa.45.6.ph589 = phi ptr [ %.sroa.45.51224, %bb.bm ], [ %.sroa.45.19, %bb.bt ], [ %.sroa.22.21228, %bb.bq ]
  %.sroa.0485.6.ph590 = phi ptr [ %.sroa.0485.51229, %bb.bm ], [ %.sroa.0485.19, %bb.bt ], [ %.sroa.0485.51229, %bb.bq ]
  %lpad.loopexit.split-lp592 = landingpad { ptr, i32 }
          cleanup
  br label %12

12:                                               ; preds = %.loopexit587.a, %.loopexit.split-lp588, %bb.bj, %bb.bi
  %.sroa.45.7 = phi ptr [ %.sroa.45.31242, %bb.bj ], [ %.sroa.45.31242, %bb.bi ], [ %.sroa.45.6.ph, %.loopexit587.a ], [ %.sroa.45.6.ph589, %.loopexit.split-lp588 ]
  %.sroa.0440.6 = phi ptr [ %.sroa.0440.31243, %bb.bj ], [ %.sroa.0440.31243, %bb.bi ], [ %.sroa.0440.51225, %.loopexit587.a ], [ %.sroa.0440.51225, %.loopexit.split-lp588 ]
  %.sroa.37.6 = phi ptr [ %.sroa.37.31245, %bb.bj ], [ %.sroa.37.31245, %bb.bi ], [ %.sroa.37.51227, %.loopexit587.a ], [ %.sroa.37.51227, %.loopexit.split-lp588 ]
  %.sroa.0485.7 = phi ptr [ %.sroa.0485.31247, %bb.bj ], [ %.sroa.0485.31247, %bb.bi ], [ %.sroa.0485.6.ph, %.loopexit587.a ], [ %.sroa.0485.6.ph590, %.loopexit.split-lp588 ]
  %.pn157 = phi { ptr, i32 } [ %i.je, %bb.bj ], [ %i.jd, %bb.bi ], [ %lpad.loopexit591, %.loopexit587.a ], [ %lpad.loopexit.split-lp592, %.loopexit.split-lp588 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %.loopexit.split-lp599

bb.bv:                                            ; preds = %._crit_edge1234, %.lr.ph1250
  %.sroa.45.8 = phi ptr [ %.sroa.45.31242, %.lr.ph1250 ], [ %.sroa.45.5.lcssa, %._crit_edge1234 ] ; 2 uses
  %.sroa.0440.7 = phi ptr [ %.sroa.0440.31243, %.lr.ph1250 ], [ %.sroa.0440.5.lcssa, %._crit_edge1234 ] ; 2 uses
  %.sroa.18.3 = phi ptr [ %.sroa.18.11244, %.lr.ph1250 ], [ %.sroa.18.2.lcssa, %._crit_edge1234 ] ; 2 uses
  %.sroa.37.7 = phi ptr [ %.sroa.37.31245, %.lr.ph1250 ], [ %.sroa.37.5.lcssa, %._crit_edge1234 ] ; 2 uses
  %.sroa.22.3 = phi ptr [ %.sroa.22.11246, %.lr.ph1250 ], [ %.sroa.22.2.lcssa, %._crit_edge1234 ] ; 2 uses
  %.sroa.0485.8 = phi ptr [ %.sroa.0485.31247, %.lr.ph1250 ], [ %.sroa.0485.5.lcssa, %._crit_edge1234 ] ; 2 uses
  %i.ld = load ptr, ptr %.sroa.0423.01248, align 8 ; 2 uses
  %.not579 = icmp eq ptr %i.ld, %i.bx
  br i1 %.not579, label %._crit_edge1251.loopexit, label %.lr.ph1250
end_hunk_9
begin_hunk_10
          cleanup
  br label %.loopexit.split-lp599

.loopexit.split-lp599:                            ; preds = %.loopexit620, %.loopexit.split-lp621, %.loopexit584, %.loopexit.split-lp, %.loopexit615, %.loopexit.split-lp616, %.loopexit603, %.loopexit.split-lp604, %.loopexit598.a, %.loopexit.split-lp599.loopexit.split-lp, %.loopexit.split-lp599.loopexit, %bb.al, %bb.df, %bb.dp, %12, %bb.ak
  %.sroa.45.15 = phi ptr [ %.sroa.45.0, %bb.ak ], [ %.sroa.45.18, %.loopexit.split-lp604 ], [ %.sroa.45.7, %12 ], [ %.sroa.45.14, %bb.df ], [ %.sroa.45.12.ph585, %.loopexit.split-lp ], [ %.sroa.45.14, %bb.dp ], [ %.sroa.45.10.lcssa, %.loopexit.split-lp616 ], [ %.sroa.45.1.ph.ph, %.loopexit.split-lp599.loopexit.split-lp ], [ %.sroa.45.17, %bb.al ], [ %.sroa.22.01208, %.loopexit598.a ], [ %.sroa.0485.16572, %.loopexit.split-lp599.loopexit ], [ %.sroa.45.18, %.loopexit603 ], [ %.sroa.45.9.ph, %.loopexit615 ], [ %.sroa.45.12.ph, %.loopexit584 ], [ %.sroa.45.14, %.loopexit620 ], [ %.sroa.45.14, %.loopexit.split-lp621 ]
  %.sroa.0464.3 = phi ptr [ %.sroa.0464.0, %bb.ak ], [ null, %.loopexit.split-lp604 ], [ null, %12 ], [ %.sroa.0464.2, %bb.df ], [ %.sroa.0464.4, %.loopexit.split-lp ], [ %.sroa.0464.2, %bb.dp ], [ %.sroa.0464.4, %.loopexit.split-lp616 ], [ null, %.loopexit.split-lp599.loopexit.split-lp ], [ null, %bb.al ], [ null, %.loopexit598.a ], [ null, %.loopexit.split-lp599.loopexit ], [ null, %.loopexit603 ], [ %.sroa.0464.1.ph, %.loopexit615 ], [ %.sroa.0464.4, %.loopexit584 ], [ %.sroa.0464.2, %.loopexit620 ], [ %.sroa.0464.2, %.loopexit.split-lp621 ] ; 3 uses
  %.sroa.31.3 = phi ptr [ %.sroa.31.0, %bb.ak ], [ null, %.loopexit.split-lp604 ], [ null, %12 ], [ %.sroa.31.2, %bb.df ], [ %.sroa.17.1, %.loopexit.split-lp ], [ %.sroa.31.2, %bb.dp ], [ %.sroa.17.1, %.loopexit.split-lp616 ], [ null, %.loopexit.split-lp599.loopexit.split-lp ], [ null, %bb.al ], [ null, %.loopexit598.a ], [ null, %.loopexit.split-lp599.loopexit ], [ null, %.loopexit603 ], [ %.sroa.31.1.ph, %.loopexit615 ], [ %.sroa.17.1, %.loopexit584 ], [ %.sroa.31.2, %.loopexit620 ], [ %.sroa.31.2, %.loopexit.split-lp621 ]
  %.sroa.0440.14 = phi ptr [ %.sroa.0440.0, %bb.ak ], [ %.sroa.0440.21201, %.loopexit.split-lp604 ], [ %.sroa.0440.6, %12 ], [ %.sroa.0440.13, %bb.df ], [ %.sroa.0440.11.ph, %.loopexit.split-lp ], [ %.sroa.0440.13, %bb.dp ], [ %.sroa.0440.9.lcssa, %.loopexit.split-lp616 ], [ %.sroa.0440.1.ph.ph, %.loopexit.split-lp599.loopexit.split-lp ], [ %.sroa.0440.15, %bb.al ], [ %.sroa.0440.21201, %.loopexit598.a ], [ %.sroa.0440.15, %.loopexit.split-lp599.loopexit ], [ %.sroa.0440.21201, %.loopexit603 ], [ %.sroa.0440.8.ph, %.loopexit615 ], [ %.sroa.0440.101262, %.loopexit584 ], [ %.sroa.0440.13, %.loopexit620 ], [ %.sroa.0440.13, %.loopexit.split-lp621 ] ; 3 uses
  %.sroa.37.14 = phi ptr [ %.sroa.37.0, %bb.ak ], [ %.sroa.18.01207, %.loopexit.split-lp604 ], [ %.sroa.37.6, %12 ], [ %.sroa.37.13, %bb.df ], [ %.sroa.37.11.ph, %.loopexit.split-lp ], [ %.sroa.37.13, %bb.dp ], [ %.sroa.37.9.lcssa, %.loopexit.split-lp616 ], [ %.sroa.37.1.ph.ph, %.loopexit.split-lp599.loopexit.split-lp ], [ %.sroa.37.15.lcssa1535, %bb.al ], [ %.sroa.37.21203, %.loopexit598.a ], [ %.sroa.37.15, %.loopexit.split-lp599.loopexit ], [ %.sroa.37.21203.lcssa1356, %.loopexit603 ], [ %.sroa.37.8.ph, %.loopexit615 ], [ %.sroa.37.101264, %.loopexit584 ], [ %.sroa.37.13, %.loopexit620 ], [ %.sroa.37.13, %.loopexit.split-lp621 ]
  %.sroa.0485.15 = phi ptr [ %.sroa.0485.0, %bb.ak ], [ %.sroa.0485.18, %.loopexit.split-lp604 ], [ %.sroa.0485.7, %12 ], [ %.sroa.0485.14, %bb.df ], [ %.sroa.0485.12.ph586, %.loopexit.split-lp ], [ %.sroa.0485.14, %bb.dp ], [ %.sroa.0485.10.lcssa, %.loopexit.split-lp616 ], [ %.sroa.0485.1.ph.ph, %.loopexit.split-lp599.loopexit.split-lp ], [ %.sroa.0485.17, %bb.al ], [ %.sroa.0485.21206, %.loopexit598.a ], [ %.sroa.0485.16572, %.loopexit.split-lp599.loopexit ], [ %.sroa.0485.18, %.loopexit603 ], [ %.sroa.0485.9.ph, %.loopexit615 ], [ %.sroa.0485.12.ph, %.loopexit584 ], [ %.sroa.0485.14, %.loopexit620 ], [ %.sroa.0485.14, %.loopexit.split-lp621 ] ; 3 uses
  %.pn157.pn = phi { ptr, i32 } [ %i.fj, %bb.ak ], [ %lpad.loopexit.split-lp606, %.loopexit.split-lp604 ], [ %.pn157, %12 ], [ %i.rg, %bb.df ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.sq, %bb.dp ], [ %lpad.loopexit.split-lp618, %.loopexit.split-lp616 ], [ %lpad.loopexit.split-lp613, %.loopexit.split-lp599.loopexit.split-lp ], [ %i.fk, %bb.al ], [ %lpad.loopexit600, %.loopexit598.a ], [ %lpad.loopexit612, %.loopexit.split-lp599.loopexit ], [ %lpad.loopexit605, %.loopexit603 ], [ %lpad.loopexit617, %.loopexit615 ], [ %lpad.loopexit, %.loopexit584 ], [ %lpad.loopexit622, %.loopexit620 ], [ %lpad.loopexit.split-lp623, %.loopexit.split-lp621 ] ; 2 uses
  %.not.i.i.i354 = icmp eq ptr %.sroa.0440.14, null
  br i1 %.not.i.i.i354, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit355, label %bb.dq

bb.dq:                                            ; preds = %.loopexit.split-lp599
  %i.sr = ptrtoint ptr %.sroa.37.14 to i64
  %i.ss = ptrtoint ptr %.sroa.0440.14 to i64
  %i.st = sub i64 %i.sr, %i.ss
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0440.14, i64 noundef %i.st) #24
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit355

_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit355:   ; preds = %.loopexit.split-lp599, %bb.dq
  %.not.i.i.i356 = icmp eq ptr %.sroa.0464.3, null
  br i1 %.not.i.i.i356, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit357, label %bb.dr

bb.dr:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit355
  %i.su = ptrtoint ptr %.sroa.31.3 to i64
  %i.sv = ptrtoint ptr %.sroa.0464.3 to i64
  %i.sw = sub i64 %i.su, %i.sv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0464.3, i64 noundef %i.sw) #24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit357

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit357: ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit355, %bb.dr
  %.not.i.i.i358 = icmp eq ptr %.sroa.0485.15, null
  br i1 %.not.i.i.i358, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit359, label %bb.ds

bb.ds:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit357
  %i.sx = ptrtoint ptr %.sroa.45.15 to i64
  %i.sy = ptrtoint ptr %.sroa.0485.15 to i64
  %i.sz = sub i64 %i.sx, %i.sy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0485.15, i64 noundef %i.sz) #24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit359

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit359: ; preds = %bb.ds, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit357, %bb.aj
end_hunk_10
