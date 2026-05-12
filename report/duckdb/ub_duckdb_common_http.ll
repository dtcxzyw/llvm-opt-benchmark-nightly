inline.NumInlined: 5859
inline.NumDeleted: 2214
begin_hunk_0_@_ZN6duckdb13HTTPLibClient17TransformResponseERKN14duckdb_httplib8ResponseE:bb.a
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS6_S6_NS_6detail11case_ignore4hashENSB_8equal_toESaISt4pairIS7_S6_EEESt8functionIFbmmEE(ptr dead_on_unwind noalias writable sret(%"class.duckdb_httplib::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(872) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::function.50", align 16 ; 9 uses
  %6 = alloca %"struct.duckdb_httplib::Request", align 8 ; 75 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS6_S6_NS_6detail11case_ignore4hashENSB_8equal_toESaISt4pairIS7_S6_EEESt8functionIFbmmEE:bb.a
_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEEaSERKSF_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.b
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 752 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 24, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.br = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !204
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !12
end_hunk_1
begin_hunk_2_@_ZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS6_S6_NS_6detail11case_ignore4hashENSB_8equal_toESaISt4pairIS7_S6_EEESt8functionIFbmmEE:bb.a
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFbmmEEC2EOS1_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEEaSERKSF_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFbmmEEC2EOS1_.exit.i

_ZNSt8functionIFbmmEEC2EOS1_.exit.i:              ; preds = %bb.c, %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEEaSERKSF_.exit
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %5, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.bp, align 8, !tbaa !83
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 768 ; 3 uses
  %i.bv = load <2 x ptr>, ptr %i.bu, align 8, !tbaa !204
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !204 ; 2 uses
  store <2 x ptr> %i.bv, ptr %i.bt, align 16, !tbaa !204
  store <2 x ptr> %i.br, ptr %i.bu, align 8, !tbaa !204
  %.not.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i, label %_ZNSt8functionIFbmmEEaSEOS1_.exit, label %bb.d
end_hunk_2
begin_hunk_3_@_ZN14duckdb_httplib10ClientImpl15process_requestERNS_6StreamERNS_7RequestERNS_8ResponseEbRNS_5ErrorE:bb.a
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(888) ptr @_ZN14duckdb_httplib7RequestaSERKS0_(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(888) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.53", align 16 ; 11 uses
  %3 = alloca %"class.std::function.50", align 16 ; 11 uses
  %4 = alloca %"class.std::function.50", align 16 ; 11 uses
  %5 = alloca %"class.std::function.48", align 16 ; 11 uses
  %6 = alloca %"class.std::function.46", align 16 ; 11 uses
  %7 = alloca %"class.std::function.39", align 16 ; 11 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
end_hunk_3
begin_hunk_4_@_ZN14duckdb_httplib7RequestaSERKS0_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFbvEEC2ERKS1_.exit.i, label %bb.d
end_hunk_4
begin_hunk_5_@_ZN14duckdb_httplib7RequestaSERKS0_:bb.a
bb.f:                                             ; preds = %bb.d
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %i.ar, align 16, !tbaa !12 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.g

end_hunk_5
begin_hunk_6_@_ZN14duckdb_httplib7RequestaSERKS0_:bb.a

_ZNSt8functionIFbvEEC2ERKS1_.exit.i:              ; preds = %bb.e, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEaSERKSE_.exit
  %i.bc = phi <2 x ptr> [ splat (ptr null), %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEaSERKSE_.exit ], [ %i.aw, %bb.e ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %7, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.aq, align 8, !tbaa !83
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 3 uses
  %i.be = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !204
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !204 ; 2 uses
  store <2 x ptr> %i.be, ptr %i.ar, align 16, !tbaa !204
  store <2 x ptr> %i.bc, ptr %i.bd, align 8, !tbaa !204
  %.not.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i, label %_ZNSt8functionIFbvEEaSERKS1_.exit, label %bb.i
end_hunk_6
begin_hunk_7_@_ZN14duckdb_httplib7RequestaSERKS0_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.not.i.i29 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.not.i.i29, label %_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEC2ERKS5_.exit.i, label %bb.k
end_hunk_7
begin_hunk_8_@_ZN14duckdb_httplib7RequestaSERKS0_:bb.a
bb.m:                                             ; preds = %bb.k
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %i.bn, align 16, !tbaa !12 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i30, label %common.resume, label %bb.n

end_hunk_8
begin_hunk_9_@_ZN14duckdb_httplib7RequestaSERKS0_:bb.a

_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEC2ERKS5_.exit.i: ; preds = %bb.l, %_ZNSt8functionIFbvEEaSERKS1_.exit
  %i.by = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFbvEEaSERKS1_.exit ], [ %i.bs, %bb.l ]
  %.sroa.0.i.i.i28.sroa.0.0.copyload = load <2 x i64>, ptr %6, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i28.sroa.0.0.copyload, ptr %i.bm, align 8, !tbaa !83
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 3 uses
  %i.ca = load <2 x ptr>, ptr %i.bz, align 8, !tbaa !204
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !204 ; 2 uses
  store <2 x ptr> %i.ca, ptr %i.bn, align 16, !tbaa !204
  store <2 x ptr> %i.by, ptr %i.bz, align 8, !tbaa !204
  %.not.i.i32 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i32, label %_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEaSERKS5_.exit, label %bb.p
end_hunk_9
begin_hunk_10_@_ZN14duckdb_httplib7RequestaSERKS0_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 736 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.not.i.i34 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.not.i.i34, label %_ZNSt8functionIFbPKcmmmEEC2ERKS3_.exit.i, label %bb.r
end_hunk_10
begin_hunk_11_@_ZN14duckdb_httplib7RequestaSERKS0_:bb.a
bb.t:                                             ; preds = %bb.r
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %i.cg, align 16, !tbaa !12 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i35, label %common.resume, label %bb.u

end_hunk_11
begin_hunk_12_@_ZN14duckdb_httplib7RequestaSERKS0_:bb.a

_ZNSt8functionIFbPKcmmmEEC2ERKS3_.exit.i:         ; preds = %bb.s, %_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEaSERKS5_.exit
  %i.cr = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEaSERKS5_.exit ], [ %i.cl, %bb.s ]
  %.sroa.0.i.i.i33.sroa.0.0.copyload = load <2 x i64>, ptr %5, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i33.sroa.0.0.copyload, ptr %i.cf, align 8, !tbaa !83
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 3 uses
  %i.ct = load <2 x ptr>, ptr %i.cs, align 8, !tbaa !204
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !204 ; 2 uses
  store <2 x ptr> %i.ct, ptr %i.cg, align 16, !tbaa !204
  store <2 x ptr> %i.cr, ptr %i.cs, align 8, !tbaa !204
  %.not.i.i37 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i37, label %_ZNSt8functionIFbPKcmmmEEaSERKS3_.exit, label %bb.w
end_hunk_12
begin_hunk_13_@_ZN14duckdb_httplib7RequestaSERKS0_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.not.i.i39 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.not.i.i39, label %_ZNSt8functionIFbmmEEC2ERKS1_.exit.i, label %bb.y
end_hunk_13
begin_hunk_14_@_ZN14duckdb_httplib7RequestaSERKS0_:bb.a
bb.aa:                                            ; preds = %bb.y
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = load ptr, ptr %i.cz, align 16, !tbaa !12 ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i40, label %common.resume, label %bb.ab

end_hunk_14
begin_hunk_15_@_ZN14duckdb_httplib7RequestaSERKS0_:bb.a

_ZNSt8functionIFbmmEEC2ERKS1_.exit.i:             ; preds = %bb.z, %_ZNSt8functionIFbPKcmmmEEaSERKS3_.exit
  %i.dk = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFbPKcmmmEEaSERKS3_.exit ], [ %i.de, %bb.z ]
  %.sroa.0.i.i.i38.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.cy, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i38.sroa.0.0.copyload, ptr %i.cy, align 8, !tbaa !83
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 3 uses
  %i.dm = load <2 x ptr>, ptr %i.dl, align 8, !tbaa !204
  %i.dn = load ptr, ptr %i.dl, align 8, !tbaa !204 ; 2 uses
  store <2 x ptr> %i.dm, ptr %i.cz, align 16, !tbaa !204
  store <2 x ptr> %i.dk, ptr %i.dl, align 8, !tbaa !204
  %.not.i.i42 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i42, label %_ZNSt8functionIFbmmEEaSERKS1_.exit, label %bb.ad
end_hunk_15
begin_hunk_16_@_ZN14duckdb_httplib7RequestaSERKS0_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 800 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.not.i.i44 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.not.i.i44, label %_ZNSt8functionIFbmmEEC2ERKS1_.exit.i47, label %bb.af
end_hunk_16
begin_hunk_17_@_ZN14duckdb_httplib7RequestaSERKS0_:bb.a
bb.ah:                                            ; preds = %bb.af
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = load ptr, ptr %i.ds, align 16, !tbaa !12 ; 2 uses
  %.not.i.i.i45 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i45, label %common.resume, label %bb.ai

end_hunk_17
begin_hunk_18_@_ZN14duckdb_httplib7RequestaSERKS0_:bb.a

_ZNSt8functionIFbmmEEC2ERKS1_.exit.i47:           ; preds = %bb.ag, %_ZNSt8functionIFbmmEEaSERKS1_.exit
  %i.ed = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFbmmEEaSERKS1_.exit ], [ %i.dx, %bb.ag ]
  %.sroa.0.i.i.i43.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.dr, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i43.sroa.0.0.copyload, ptr %i.dr, align 8, !tbaa !83
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 3 uses
  %i.ef = load <2 x ptr>, ptr %i.ee, align 8, !tbaa !204
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !204 ; 2 uses
  store <2 x ptr> %i.ef, ptr %i.ds, align 16, !tbaa !204
  store <2 x ptr> %i.ed, ptr %i.ee, align 8, !tbaa !204
  %.not.i.i48 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i48, label %_ZNSt8functionIFbmmEEaSERKS1_.exit49, label %bb.ak
end_hunk_18
begin_hunk_19_@_ZN14duckdb_httplib7RequestaSERKS0_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 848 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.not.i.i51 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.not.i.i51, label %_ZNSt8functionIFbmmRN14duckdb_httplib8DataSinkEEEC2ERKS4_.exit.i, label %bb.am
end_hunk_19
begin_hunk_20_@_ZN14duckdb_httplib7RequestaSERKS0_:bb.a
bb.ao:                                            ; preds = %bb.am
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eu = load ptr, ptr %i.en, align 16, !tbaa !12 ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i52, label %common.resume, label %bb.ap

end_hunk_20
begin_hunk_21_@_ZN14duckdb_httplib7RequestaSERKS0_:bb.a

_ZNSt8functionIFbmmRN14duckdb_httplib8DataSinkEEEC2ERKS4_.exit.i: ; preds = %bb.an, %_ZNSt8functionIFbmmEEaSERKS1_.exit49
  %i.ey = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFbmmEEaSERKS1_.exit49 ], [ %i.es, %bb.an ]
  %.sroa.0.i.i.i50.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.em, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i50.sroa.0.0.copyload, ptr %i.em, align 8, !tbaa !83
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 3 uses
  %i.fa = load <2 x ptr>, ptr %i.ez, align 8, !tbaa !204
  %i.fb = load ptr, ptr %i.ez, align 8, !tbaa !204 ; 2 uses
  store <2 x ptr> %i.fa, ptr %i.en, align 16, !tbaa !204
  store <2 x ptr> %i.ey, ptr %i.ez, align 8, !tbaa !204
  %.not.i.i54 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i54, label %_ZNSt8functionIFbmmRN14duckdb_httplib8DataSinkEEEaSERKS4_.exit, label %bb.ar
end_hunk_21
begin_hunk_22_@_ZN14duckdb_httplib6detail21write_content_chunkedIZNKS_10ClientImpl27write_content_with_providerERNS_6StreamERKNS_7RequestERNS_5ErrorEEUlvE_NS0_10compressorEEEbS4_RKSt8functionIFbmmRNS_8DataSinkEEERKT_RT0_S9_:bb.a
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.std::function.655", align 16 ; 9 uses
  %6 = alloca %"class.std::function.454", align 16 ; 9 uses
  %7 = alloca %"class.std::function.39", align 16 ; 9 uses
  %8 = alloca %"class.std::function", align 16    ; 9 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %i.e = alloca i8, align 1                       ; 7 uses
  %9 = alloca %"class.duckdb_httplib::DataSink", align 16 ; 20 uses
  %10 = alloca %class.anon.850, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 0, ptr %i.c, align 8, !tbaa !10
end_hunk_22
begin_hunk_23_@_ZN14duckdb_httplib6detail21write_content_chunkedIZNKS_10ClientImpl27write_content_with_providerERNS_6StreamERKNS_7RequestERNS_5ErrorEEUlvE_NS0_10compressorEEEbS4_RKSt8functionIFbmmRNS_8DataSinkEEERKT_RT0_S9_:bb.a
  store ptr %3, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !401
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %0, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !731
  store ptr %i.g, ptr %8, align 16, !tbaa !204
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %8, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, ptr noundef nonnull align 16 dereferenceable(32) %9, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %9, align 16, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.k = load <2 x ptr>, ptr %i.i, align 16, !tbaa !204
  %i.l = load ptr, ptr %i.i, align 16, !tbaa !204 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFbPKcmEZN14duckdb_httplib6detail21write_content_chunkedIZNKS3_10ClientImpl27write_content_with_providerERNS3_6StreamERKNS3_7RequestERNS3_5ErrorEEUlvE_NS4_10compressorEEEbS8_RKSt8functionIFbmmRNS3_8DataSinkEEERKT_RT0_SD_EUlS1_mE_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation, ptr %i.i, align 16, !tbaa !204
  store <2 x ptr> %i.k, ptr %i.h, align 16, !tbaa !204
  store ptr @_ZNSt17_Function_handlerIFbPKcmEZN14duckdb_httplib6detail21write_content_chunkedIZNKS3_10ClientImpl27write_content_with_providerERNS3_6StreamERKNS3_7RequestERNS3_5ErrorEEUlvE_NS4_10compressorEEEbS8_RKSt8functionIFbmmRNS3_8DataSinkEEERKT_RT0_SD_EUlS1_mE_E9_M_invokeERKSt9_Any_dataOS1_Om, ptr %i.j, align 8, !tbaa !204
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.d, label %bb.b
end_hunk_23
begin_hunk_24_@_ZN14duckdb_httplib6detail21write_content_chunkedIZNKS_10ClientImpl27write_content_with_providerERNS_6StreamERKNS_7RequestERNS_5ErrorEEUlvE_NS0_10compressorEEEbS4_RKSt8functionIFbmmRNS_8DataSinkEEERKT_RT0_S9_:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.r, align 8
  %i.s = ptrtoint ptr %0 to i64
  store i64 %i.s, ptr %7, align 16, !tbaa !731
  %.sroa.0.i.i.i17.sroa.0.0.copyload = load <2 x i64>, ptr %7, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, ptr noundef nonnull align 16 dereferenceable(32) %i.p, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i17.sroa.0.0.copyload, ptr %i.p, align 16, !tbaa !83
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.v = load <2 x ptr>, ptr %i.t, align 16, !tbaa !204
  %i.w = load ptr, ptr %i.t, align 16, !tbaa !204 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFbvEZN14duckdb_httplib6detail21write_content_chunkedIZNKS1_10ClientImpl27write_content_with_providerERNS1_6StreamERKNS1_7RequestERNS1_5ErrorEEUlvE_NS2_10compressorEEEbS6_RKSt8functionIFbmmRNS1_8DataSinkEEERKT_RT0_SB_EUlvE_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation, ptr %i.t, align 16, !tbaa !204
  store <2 x ptr> %i.v, ptr %i.q, align 16, !tbaa !204
  store ptr @_ZNSt17_Function_handlerIFbvEZN14duckdb_httplib6detail21write_content_chunkedIZNKS1_10ClientImpl27write_content_with_providerERNS1_6StreamERKNS1_7RequestERNS1_5ErrorEEUlvE_NS2_10compressorEEEbS6_RKSt8functionIFbmmRNS1_8DataSinkEEERKT_RT0_SB_EUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.u, align 8, !tbaa !204
  %.not.i.i18 = icmp eq ptr %i.w, null
  br i1 %.not.i.i18, label %_ZNSt8functionIFbvEEaSIZN14duckdb_httplib6detail21write_content_chunkedIZNKS3_10ClientImpl27write_content_with_providerERNS3_6StreamERKNS3_7RequestERNS3_5ErrorEEUlvE_NS4_10compressorEEEbS8_RKS_IFbmmRNS3_8DataSinkEEERKT_RT0_SD_EUlvE_EENSt9enable_ifIXsr9_CallableISM_EE5valueERS1_E4typeEOSM_.exit, label %bb.e
end_hunk_24
begin_hunk_25_@_ZN14duckdb_httplib6detail21write_content_chunkedIZNKS_10ClientImpl27write_content_with_providerERNS_6StreamERKNS_7RequestERNS_5ErrorEEUlvE_NS0_10compressorEEEbS4_RKSt8functionIFbmmRNS_8DataSinkEEERKT_RT0_S9_:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.af, align 8
  %i.ag = ptrtoint ptr %10 to i64                 ; 2 uses
  store i64 %i.ag, ptr %6, align 16, !tbaa !204
  %.sroa.0.i.i.i19.sroa.0.0.copyload = load <2 x i64>, ptr %6, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 16 dereferenceable(32) %i.ad, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i19.sroa.0.0.copyload, ptr %i.ad, align 16, !tbaa !83
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.aj = load <2 x ptr>, ptr %i.ah, align 16, !tbaa !204
  %i.ak = load ptr, ptr %i.ah, align 16, !tbaa !204 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvvEZN14duckdb_httplib6detail21write_content_chunkedIZNKS1_10ClientImpl27write_content_with_providerERNS1_6StreamERKNS1_7RequestERNS1_5ErrorEEUlvE_NS2_10compressorEEEbS6_RKSt8functionIFbmmRNS1_8DataSinkEEERKT_RT0_SB_EUlvE0_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation, ptr %i.ah, align 16, !tbaa !204
  store <2 x ptr> %i.aj, ptr %i.ae, align 16, !tbaa !204
  store ptr @_ZNSt17_Function_handlerIFvvEZN14duckdb_httplib6detail21write_content_chunkedIZNKS1_10ClientImpl27write_content_with_providerERNS1_6StreamERKNS1_7RequestERNS1_5ErrorEEUlvE_NS2_10compressorEEEbS6_RKSt8functionIFbmmRNS1_8DataSinkEEERKT_RT0_SB_EUlvE0_E9_M_invokeERKSt9_Any_data, ptr %i.ai, align 8, !tbaa !204
  %.not.i.i20 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i20, label %_ZNSt8functionIFvvEEaSIZN14duckdb_httplib6detail21write_content_chunkedIZNKS3_10ClientImpl27write_content_with_providerERNS3_6StreamERKNS3_7RequestERNS3_5ErrorEEUlvE_NS4_10compressorEEEbS8_RKS_IFbmmRNS3_8DataSinkEEERKT_RT0_SD_EUlvE0_EENSt9enable_ifIXsr9_CallableISM_EE5valueERS1_E4typeEOSM_.exit, label %bb.g
end_hunk_25
begin_hunk_26_@_ZN14duckdb_httplib6detail21write_content_chunkedIZNKS_10ClientImpl27write_content_with_providerERNS_6StreamERKNS_7RequestERNS_5ErrorEEUlvE_NS0_10compressorEEEbS4_RKSt8functionIFbmmRNS_8DataSinkEEERKT_RT0_S9_:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.aq, align 8
  store i64 %i.ag, ptr %5, align 16, !tbaa !204
  %.sroa.0.i.i.i21.sroa.0.0.copyload = load <2 x i64>, ptr %5, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 16 dereferenceable(32) %i.ao, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i21.sroa.0.0.copyload, ptr %i.ao, align 16, !tbaa !83
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.at = load <2 x ptr>, ptr %i.ar, align 16, !tbaa !204
  %i.au = load ptr, ptr %i.ar, align 16, !tbaa !204 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_N14duckdb_httplib6detail11case_ignore4hashENS9_8equal_toESaISt4pairIKS6_S6_EEEEZNS8_21write_content_chunkedIZNKS7_10ClientImpl27write_content_with_providerERNS7_6StreamERKNS7_7RequestERNS7_5ErrorEEUlvE_NS8_10compressorEEEbSN_RKSt8functionIFbmmRNS7_8DataSinkEEERKT_RT0_SS_EUlSI_E_E10_M_managerERSt9_Any_dataRKS19_St18_Manager_operation, ptr %i.ar, align 16, !tbaa !204
  store <2 x ptr> %i.at, ptr %i.ap, align 16, !tbaa !204
  store ptr @_ZNSt17_Function_handlerIFvRKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_N14duckdb_httplib6detail11case_ignore4hashENS9_8equal_toESaISt4pairIKS6_S6_EEEEZNS8_21write_content_chunkedIZNKS7_10ClientImpl27write_content_with_providerERNS7_6StreamERKNS7_7RequestERNS7_5ErrorEEUlvE_NS8_10compressorEEEbSN_RKSt8functionIFbmmRNS7_8DataSinkEEERKT_RT0_SS_EUlSI_E_E9_M_invokeERKSt9_Any_dataSI_, ptr %i.as, align 8, !tbaa !204
  %.not.i.i22 = icmp eq ptr %i.au, null
  br i1 %.not.i.i22, label %_ZNSt8functionIFvRKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_N14duckdb_httplib6detail11case_ignore4hashENS9_8equal_toESaISt4pairIKS6_S6_EEEEEaSIZNS8_21write_content_chunkedIZNKS7_10ClientImpl27write_content_with_providerERNS7_6StreamERKNS7_7RequestERNS7_5ErrorEEUlvE_NS8_10compressorEEEbSP_RKS_IFbmmRNS7_8DataSinkEEERKT_RT0_SU_EUlSI_E_EENSt9enable_ifIXsr9_CallableIS13_EE5valueERSK_E4typeEOS13_.exit, label %bb.i
end_hunk_26
begin_hunk_27_@_ZN14duckdb_httplib6detail27write_content_with_progressIZNKS_10ClientImpl27write_content_with_providerERNS_6StreamERKNS_7RequestERNS_5ErrorEEUlvE_EEbS4_RKSt8functionIFbmmRNS_8DataSinkEEEmmT_RKSB_IFbmmEES9_:bb.a
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.std::function.39", align 16 ; 9 uses
  %7 = alloca %"class.std::function", align 16    ; 9 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 2 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i8, align 1                       ; 6 uses
  %8 = alloca %"class.duckdb_httplib::DataSink", align 16 ; 14 uses
  store i64 %2, ptr %i.c, align 8, !tbaa !10
  store i64 %3, ptr %i.d, align 8, !tbaa !10
  %i.g = add i64 %3, %2                           ; 2 uses
end_hunk_27
begin_hunk_28_@_ZN14duckdb_httplib6detail27write_content_with_progressIZNKS_10ClientImpl27write_content_with_providerERNS_6StreamERKNS_7RequestERNS_5ErrorEEUlvE_EEbS4_RKSt8functionIFbmmRNS_8DataSinkEEEmmT_RKSB_IFbmmEES9_:bb.a
  store ptr %i.d, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !502
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %i.e, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !502
  store ptr %i.i, ptr %7, align 16, !tbaa !204
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %7, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, ptr noundef nonnull align 16 dereferenceable(32) %8, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %8, align 16, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.m = load <2 x ptr>, ptr %i.k, align 16, !tbaa !204
  %i.n = load ptr, ptr %i.k, align 16, !tbaa !204 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFbPKcmEZN14duckdb_httplib6detail27write_content_with_progressIZNKS3_10ClientImpl27write_content_with_providerERNS3_6StreamERKNS3_7RequestERNS3_5ErrorEEUlvE_EEbS8_RKSt8functionIFbmmRNS3_8DataSinkEEEmmT_RKSF_IFbmmEESD_EUlS1_mE_E10_M_managerERSt9_Any_dataRKST_St18_Manager_operation, ptr %i.k, align 16, !tbaa !204
  store <2 x ptr> %i.m, ptr %i.j, align 16, !tbaa !204
  store ptr @_ZNSt17_Function_handlerIFbPKcmEZN14duckdb_httplib6detail27write_content_with_progressIZNKS3_10ClientImpl27write_content_with_providerERNS3_6StreamERKNS3_7RequestERNS3_5ErrorEEUlvE_EEbS8_RKSt8functionIFbmmRNS3_8DataSinkEEEmmT_RKSF_IFbmmEESD_EUlS1_mE_E9_M_invokeERKSt9_Any_dataOS1_Om, ptr %i.l, align 8, !tbaa !204
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.d, label %bb.b
end_hunk_28
begin_hunk_29_@_ZN14duckdb_httplib6detail27write_content_with_progressIZNKS_10ClientImpl27write_content_with_providerERNS_6StreamERKNS_7RequestERNS_5ErrorEEUlvE_EEbS4_RKSt8functionIFbmmRNS_8DataSinkEEEmmT_RKSB_IFbmmEES9_:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.t, align 8
  %i.u = ptrtoint ptr %0 to i64
  store i64 %i.u, ptr %6, align 16, !tbaa !731
  %.sroa.0.i.i.i17.sroa.0.0.copyload = load <2 x i64>, ptr %6, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 16 dereferenceable(32) %i.r, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i17.sroa.0.0.copyload, ptr %i.r, align 16, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.x = load <2 x ptr>, ptr %i.v, align 16, !tbaa !204
  %i.y = load ptr, ptr %i.v, align 16, !tbaa !204 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFbvEZN14duckdb_httplib6detail27write_content_with_progressIZNKS1_10ClientImpl27write_content_with_providerERNS1_6StreamERKNS1_7RequestERNS1_5ErrorEEUlvE_EEbS6_RKSt8functionIFbmmRNS1_8DataSinkEEEmmT_RKSD_IFbmmEESB_EUlvE_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation, ptr %i.v, align 16, !tbaa !204
  store <2 x ptr> %i.x, ptr %i.s, align 16, !tbaa !204
  store ptr @_ZNSt17_Function_handlerIFbvEZN14duckdb_httplib6detail27write_content_with_progressIZNKS1_10ClientImpl27write_content_with_providerERNS1_6StreamERKNS1_7RequestERNS1_5ErrorEEUlvE_EEbS6_RKSt8functionIFbmmRNS1_8DataSinkEEEmmT_RKSD_IFbmmEESB_EUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.w, align 8, !tbaa !204
  %.not.i.i18 = icmp eq ptr %i.y, null
  br i1 %.not.i.i18, label %_ZNSt8functionIFbvEEaSIZN14duckdb_httplib6detail27write_content_with_progressIZNKS3_10ClientImpl27write_content_with_providerERNS3_6StreamERKNS3_7RequestERNS3_5ErrorEEUlvE_EEbS8_RKS_IFbmmRNS3_8DataSinkEEEmmT_RKS_IFbmmEESD_EUlvE_EENSt9enable_ifIXsr9_CallableISL_EE5valueERS1_E4typeEOSL_.exit, label %bb.e
end_hunk_29
begin_hunk_30_@_ZN14duckdb_httplib10ClientImpl22create_redirect_clientERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iRNS_7RequestERNS_8ResponseES8_S8_RNS_5ErrorE:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(392) ptr @_ZN14duckdb_httplib8ResponseaSERKS0_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(392) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.431", align 16 ; 11 uses
  %3 = alloca %"class.std::function.53", align 16 ; 11 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !118
end_hunk_30
begin_hunk_31_@_ZN14duckdb_httplib8ResponseaSERKS0_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFbmmRN14duckdb_httplib8DataSinkEEEC2ERKS4_.exit.i, label %bb.c
end_hunk_31
begin_hunk_32_@_ZN14duckdb_httplib8ResponseaSERKS0_:bb.a
bb.e:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %i.s, align 16, !tbaa !12  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.f

end_hunk_32
begin_hunk_33_@_ZN14duckdb_httplib8ResponseaSERKS0_:bb.a

_ZNSt8functionIFbmmRN14duckdb_httplib8DataSinkEEEC2ERKS4_.exit.i: ; preds = %bb.d, %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEEaSERKSF_.exit14
  %i.ad = phi <2 x ptr> [ splat (ptr null), %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEEaSERKSF_.exit14 ], [ %i.x, %bb.d ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.r, align 8, !tbaa !83
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !204
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !204 ; 2 uses
  store <2 x ptr> %i.af, ptr %i.s, align 16, !tbaa !204
  store <2 x ptr> %i.ad, ptr %i.ae, align 8, !tbaa !204
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %_ZNSt8functionIFbmmRN14duckdb_httplib8DataSinkEEEaSERKS4_.exit, label %bb.h
end_hunk_33
begin_hunk_34_@_ZN14duckdb_httplib8ResponseaSERKS0_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.not.i.i16 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.not.i.i16, label %_ZNSt8functionIFvbEEC2ERKS1_.exit.i, label %bb.j
end_hunk_34
begin_hunk_35_@_ZN14duckdb_httplib8ResponseaSERKS0_:bb.a
bb.l:                                             ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %i.al, align 16, !tbaa !12 ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i17, label %common.resume, label %bb.m

end_hunk_35
begin_hunk_36_@_ZN14duckdb_httplib8ResponseaSERKS0_:bb.a

_ZNSt8functionIFvbEEC2ERKS1_.exit.i:              ; preds = %bb.k, %_ZNSt8functionIFbmmRN14duckdb_httplib8DataSinkEEEaSERKS4_.exit
  %i.aw = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFbmmRN14duckdb_httplib8DataSinkEEEaSERKS4_.exit ], [ %i.aq, %bb.k ]
  %.sroa.0.i.i.i15.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i15.sroa.0.0.copyload, ptr %i.ak, align 8, !tbaa !83
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.ay = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !204
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !204 ; 2 uses
  store <2 x ptr> %i.ay, ptr %i.al, align 16, !tbaa !204
  store <2 x ptr> %i.aw, ptr %i.ax, align 8, !tbaa !204
  %.not.i.i19 = icmp eq ptr %i.az, null
  br i1 %.not.i.i19, label %_ZNSt8functionIFvbEEaSERKS1_.exit, label %bb.o
end_hunk_36
begin_hunk_37_@_ZN14duckdb_httplib8ResponseaSERKS0_:bb.a
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN14duckdb_httplib10ClientImpl21setup_redirect_clientIS0_EEvRT_(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(872) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.88", align 16 ; 10 uses
  %3 = alloca %"class.std::function.85", align 16 ; 10 uses
  %4 = alloca %"class.std::function.91", align 16 ; 10 uses
  %5 = alloca %"class.std::function.91", align 8  ; 9 uses
  %6 = alloca %"class.std::function.85", align 8  ; 9 uses
  %7 = alloca %"class.std::function.88", align 8  ; 9 uses
end_hunk_37
begin_hunk_38_@_ZN14duckdb_httplib10ClientImpl21setup_redirect_clientIS0_EEvRT_:bb.a
  store ptr %i.bz, ptr %i.bp, align 8, !tbaa !12
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %.not.i.i.not.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFviEEC2EOS1_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt8functionIFviEEC2ERKS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 16, i1 false), !tbaa.struct !320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFviEEC2EOS1_.exit.i.i

_ZNSt8functionIFviEEC2EOS1_.exit.i.i:             ; preds = %bb.p, %_ZNSt8functionIFviEEC2ERKS1_.exit
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.ca, align 8, !tbaa !83
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 584
  %i.ce = load <2 x ptr>, ptr %i.cc, align 8, !tbaa !204
  %i.cf = load ptr, ptr %i.cc, align 8, !tbaa !204 ; 2 uses
  store ptr %i.bz, ptr %i.cc, align 8, !tbaa !204
  store <2 x ptr> %i.ce, ptr %i.cb, align 16, !tbaa !204
  store ptr %i.by, ptr %i.cd, align 8, !tbaa !204
  %.not.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i, label %_ZN14duckdb_httplib10ClientImpl18set_socket_optionsESt8functionIFviEE.exit.thread, label %bb.q
end_hunk_38
begin_hunk_39_@_ZN14duckdb_httplib10ClientImpl21setup_redirect_clientIS0_EEvRT_:bb.a
  store ptr %i.de, ptr %i.cu, align 8, !tbaa !12
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 808 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %.not.i.i.not.i.i.i27 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.not.i.i.i27, label %_ZNSt8functionIFvRKN14duckdb_httplib7RequestERKNS0_8ResponseEEEC2EOS8_.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt8functionIFvRKN14duckdb_httplib7RequestERKNS0_8ResponseEEEC2ERKS8_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 16, i1 false), !tbaa.struct !320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRKN14duckdb_httplib7RequestERKNS0_8ResponseEEEC2EOS8_.exit.i.i

_ZNSt8functionIFvRKN14duckdb_httplib7RequestERKNS0_8ResponseEEEC2EOS8_.exit.i.i: ; preds = %bb.aa, %_ZNSt8functionIFvRKN14duckdb_httplib7RequestERKNS0_8ResponseEEEC2ERKS8_.exit
  %.sroa.0.i.i.i.i26.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.df, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i.i26.sroa.0.0.copyload, ptr %i.df, align 8, !tbaa !83
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 824 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 832
  %i.dj = load <2 x ptr>, ptr %i.dh, align 8, !tbaa !204
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !204 ; 2 uses
  store ptr %i.de, ptr %i.dh, align 8, !tbaa !204
  store <2 x ptr> %i.dj, ptr %i.dg, align 16, !tbaa !204
  store ptr %i.dd, ptr %i.di, align 8, !tbaa !204
  %.not.i.i.i28 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i28, label %_ZN14duckdb_httplib10ClientImpl10set_loggerESt8functionIFvRKNS_7RequestERKNS_8ResponseEEE.exit.thread, label %bb.ab
end_hunk_39
begin_hunk_40_@_ZN14duckdb_httplib10ClientImpl21setup_redirect_clientIS0_EEvRT_:bb.a
  store ptr %i.ee, ptr %i.du, align 8, !tbaa !12
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 840 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %.not.i.i.not.i.i.i36 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.not.i.i.i36, label %_ZNSt8functionIFvRKN14duckdb_httplib5ErrorEPKNS0_7RequestEEEC2EOS8_.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt8functionIFvRKN14duckdb_httplib5ErrorEPKNS0_7RequestEEEC2ERKS8_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 16, i1 false), !tbaa.struct !320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRKN14duckdb_httplib5ErrorEPKNS0_7RequestEEEC2EOS8_.exit.i.i

_ZNSt8functionIFvRKN14duckdb_httplib5ErrorEPKNS0_7RequestEEEC2EOS8_.exit.i.i: ; preds = %bb.aj, %_ZNSt8functionIFvRKN14duckdb_httplib5ErrorEPKNS0_7RequestEEEC2ERKS8_.exit
  %.sroa.0.i.i.i.i35.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ef, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i.i35.sroa.0.0.copyload, ptr %i.ef, align 8, !tbaa !83
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 864
  %i.ej = load <2 x ptr>, ptr %i.eh, align 8, !tbaa !204
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !204 ; 2 uses
  store ptr %i.ee, ptr %i.eh, align 8, !tbaa !204
  store <2 x ptr> %i.ej, ptr %i.eg, align 16, !tbaa !204
  store ptr %i.ed, ptr %i.ei, align 8, !tbaa !204
  %.not.i.i.i37 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i37, label %_ZN14duckdb_httplib10ClientImpl16set_error_loggerESt8functionIFvRKNS_5ErrorEPKNS_7RequestEEE.exit.thread, label %bb.ak
end_hunk_40
begin_hunk_41_@_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_:bb.a
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS6_S6_NS_6detail11case_ignore4hashENSB_8equal_toESaISt4pairIS7_S6_EEESt8functionIFbRKNS_8ResponseEEESK_IFbPKcmEESK_IFbmmEE(ptr dead_on_unwind noalias writable sret(%"class.duckdb_httplib::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(872) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::function.50", align 16 ; 9 uses
  %8 = alloca %"class.std::function.48", align 16 ; 10 uses
  %9 = alloca %"class.std::function.46", align 16 ; 9 uses
  %10 = alloca %"struct.duckdb_httplib::Request", align 8 ; 80 uses
  %11 = alloca %class.anon.864, align 8           ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
end_hunk_41
begin_hunk_42_@_ZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS6_S6_NS_6detail11case_ignore4hashENSB_8equal_toESaISt4pairIS7_S6_EEESt8functionIFbRKNS_8ResponseEEESK_IFbPKcmEESK_IFbmmEE:bb.a
_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEEaSERKSF_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.b
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 688 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %9, i8 0, i64 24, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.br = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !204
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !12
end_hunk_42
begin_hunk_43_@_ZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS6_S6_NS_6detail11case_ignore4hashENSB_8equal_toESaISt4pairIS7_S6_EEESt8functionIFbRKNS_8ResponseEEESK_IFbPKcmEESK_IFbmmEE:bb.a
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEC2EOS5_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEEaSERKSF_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEC2EOS5_.exit.i

_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEC2EOS5_.exit.i: ; preds = %bb.c, %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEEaSERKSF_.exit
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %9, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.bp, align 8, !tbaa !83
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 704 ; 3 uses
  %i.bv = load <2 x ptr>, ptr %i.bu, align 8, !tbaa !204
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !204 ; 2 uses
  store <2 x ptr> %i.bv, ptr %i.bt, align 16, !tbaa !204
  store <2 x ptr> %i.br, ptr %i.bu, align 8, !tbaa !204
  %.not.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i, label %_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEaSEOS5_.exit, label %bb.d
end_hunk_43
begin_hunk_44_@_ZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS6_S6_NS_6detail11case_ignore4hashENSB_8equal_toESaISt4pairIS7_S6_EEESt8functionIFbRKNS_8ResponseEEESK_IFbPKcmEESK_IFbmmEE:bb.a

_ZNSt8functionIFbPKcmmmEEC2IZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapISC_SC_NS5_6detail11case_ignore4hashENSH_8equal_toESaISt4pairISD_SC_EEES_IFbRKNS5_8ResponseEEES_IFbS1_mEES_IFbmmEEEUlS1_mmmE_vEEOT_.exit.i: ; preds = %bb.k, %.noexc13
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.cr, ptr %8, align 16, !tbaa !204
  %.sroa.0.i.i.i10.sroa.0.0.copyload = load <2 x i64>, ptr %8, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.cp, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i10.sroa.0.0.copyload, ptr %i.cp, align 8, !tbaa !83
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 736 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 744
  %i.cx = load <2 x ptr>, ptr %i.cv, align 8, !tbaa !204
  %i.cy = load ptr, ptr %i.cv, align 8, !tbaa !204 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFbPKcmmmEZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapISA_SA_NS3_6detail11case_ignore4hashENSF_8equal_toESaISt4pairISB_SA_EEESt8functionIFbRKNS3_8ResponseEEESO_IFbS1_mEESO_IFbmmEEEUlS1_mmmE_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation, ptr %i.cv, align 8, !tbaa !204
  store <2 x ptr> %i.cx, ptr %i.cu, align 16, !tbaa !204
  store ptr @_ZNSt17_Function_handlerIFbPKcmmmEZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapISA_SA_NS3_6detail11case_ignore4hashENSF_8equal_toESaISt4pairISB_SA_EEESt8functionIFbRKNS3_8ResponseEEESO_IFbS1_mEESO_IFbmmEEEUlS1_mmmE_E9_M_invokeERKSt9_Any_dataOS1_OmS14_S14_, ptr %i.cw, align 8, !tbaa !204
  %.not.i.i11 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i11, label %.thread, label %bb.l
end_hunk_44
begin_hunk_45_@_ZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS6_S6_NS_6detail11case_ignore4hashENSB_8equal_toESaISt4pairIS7_S6_EEESt8functionIFbRKNS_8ResponseEEESK_IFbPKcmEESK_IFbmmEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 752 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 24, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.dh = load <2 x ptr>, ptr %i.dg, align 8, !tbaa !204
  %i.di = load ptr, ptr %i.dg, align 8, !tbaa !12
end_hunk_45
begin_hunk_46_@_ZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS6_S6_NS_6detail11case_ignore4hashENSB_8equal_toESaISt4pairIS7_S6_EEESt8functionIFbRKNS_8ResponseEEESK_IFbPKcmEESK_IFbmmEE:bb.a
  br i1 %.not.i.i.not.i.i17, label %_ZNSt8functionIFbmmEEC2EOS1_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS6_S6_NS_6detail11case_ignore4hashENSB_8equal_toESaISt4pairIS7_S6_EEESt8functionIFbRKNS_8ResponseEEESK_IFbPKcmEESK_IFbmmEEENUlSR_mmmE_D2Ev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 16, i1 false), !tbaa.struct !320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFbmmEEC2EOS1_.exit.i

_ZNSt8functionIFbmmEEC2EOS1_.exit.i:              ; preds = %bb.q, %_ZZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS6_S6_NS_6detail11case_ignore4hashENSB_8equal_toESaISt4pairIS7_S6_EEESt8functionIFbRKNS_8ResponseEEESK_IFbPKcmEESK_IFbmmEEENUlSR_mmmE_D2Ev.exit
  %.sroa.0.i.i.i16.sroa.0.0.copyload = load <2 x i64>, ptr %7, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.df, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i16.sroa.0.0.copyload, ptr %i.df, align 8, !tbaa !83
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 768 ; 3 uses
  %i.dl = load <2 x ptr>, ptr %i.dk, align 8, !tbaa !204
  %i.dm = load ptr, ptr %i.dk, align 8, !tbaa !204 ; 2 uses
  store <2 x ptr> %i.dl, ptr %i.dj, align 16, !tbaa !204
  store <2 x ptr> %i.dh, ptr %i.dk, align 8, !tbaa !204
  %.not.i.i18 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i18, label %_ZNSt8functionIFbmmEEaSEOS1_.exit, label %bb.r
end_hunk_46
