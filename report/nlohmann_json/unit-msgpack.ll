Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-msgpack?download=true
inline.NumInlined: 17464
inline.NumDeleted: 2607
loop-unroll.NumCompletelyUnrolled: 110
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 114
begin_hunk_0_@_ZL19DOCTEST_ANON_FUNC_7v:bb.a
  %i.age = getelementptr inbounds nuw i8, ptr %220, i64 8 ; 2 uses
  %.sroa.2692.0..sroa_idx = getelementptr inbounds nuw i8, ptr %224, i64 8
  %i.agf = getelementptr inbounds nuw i8, ptr %223, i64 8 ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %229, i64 8 ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %227, i64 16
  %i.agi = getelementptr inbounds nuw i8, ptr %226, i64 8 ; 2 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %227, i64 8
  %i.agk = getelementptr inbounds nuw i8, ptr %233, i64 8 ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %231, i64 16
  %i.agm = getelementptr inbounds nuw i8, ptr %230, i64 8 ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %231, i64 8
  %i.ago = getelementptr inbounds nuw i8, ptr %207, i64 8
  br label %bb.xy

bb.xs:                                            ; preds = %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_5ED2Ev.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #29
  br label %bb.aaz

bb.xt:                                            ; preds = %bb.xm, %bb.ul
  %.pn3848.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn3848.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.xm ], [ %i.aci, %bb.ul ]
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %176) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %176) #29
  br label %bb.arl

bb.xu:                                            ; preds = %bb.xn
  %i.agp = landingpad { ptr, i32 }
          cleanup
  br label %bb.xw

bb.xv:                                            ; preds = %bb.xo
  %i.agq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %206) #29
  br label %bb.xw

bb.xw:                                            ; preds = %bb.xv, %bb.xu
  %.pn2319 = phi { ptr, i32 } [ %i.agq, %bb.xv ], [ %i.agp, %bb.xu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %206) #29
  br label %bb.arl

bb.xx:                                            ; preds = %bb.xp
  %i.agr = landingpad { ptr, i32 }
          cleanup
  br label %bb.abf

bb.xy:                                            ; preds = %bb.xr, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_5ED2Ev.exit"
  %.02214.idx8087 = phi i64 [ 0, %bb.xr ], [ %.02214.add, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_5ED2Ev.exit" ] ; 2 uses
  %.02214.ptr = getelementptr inbounds nuw i8, ptr %i.w, i64 %.02214.idx8087
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #29
  %i.ags = load i64, ptr %.02214.ptr, align 8, !tbaa !122
  store i64 %i.ags, ptr %i.x, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %207) #29
  invoke void @_ZN7doctest6detail16ContextScopeBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %207)
          to label %bb.xz unwind label %bb.zi

bb.xz:                                            ; preds = %bb.xy
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_5EE", i64 16), ptr %207, align 8, !tbaa !87, !alias.scope !857
  store i64 %i.afv, ptr %i.afw, align 8, !tbaa !124, !alias.scope !857
  call void @llvm.lifetime.start.p0(ptr nonnull %208) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %208, i8 0, i64 16, i1 false)
  store i8 5, ptr %208, align 8, !tbaa !113
  store i64 -1, ptr %i.afx, align 8, !tbaa !101
  %i.agt = load i64, ptr %i.x, align 8, !tbaa !122
  %i.agu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE12get_ref_implIRlSD_EET_RT0_(ptr noundef nonnull align 8 dereferenceable(16) %208)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRlTnNSt9enable_ifIXsr3std12is_referenceIT_EE5valueEiE4typeELi0EEESH_v.exit4262 unwind label %bb.zj

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRlTnNSt9enable_ifIXsr3std12is_referenceIT_EE5valueEiE4typeELi0EEESH_v.exit4262: ; preds = %bb.xz
  store i64 %i.agt, ptr %i.agu, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %209) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %210) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %211) #29
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %211, i32 noundef 10)
          to label %bb.ya unwind label %bb.zk

bb.ya:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRlTnNSt9enable_ifIXsr3std12is_referenceIT_EE5valueEiE4typeELi0EEESH_v.exit4262
  %i.agv = load i8, ptr %208, align 8, !tbaa !113
  %i.agw = add i8 %i.agv, -5
  %spec.select.i4263 = icmp ult i8 %i.agw, 2
  %i.agx = load i32, ptr %211, align 4, !tbaa !90
  %.sroa.22.0.insert.ext.i4264 = zext i32 %i.agx to i64
  %.sroa.22.0.insert.shift.i4265 = shl nuw i64 %.sroa.22.0.insert.ext.i4264, 32
  %.sroa.0.0.insert.ext.i4266 = zext i1 %spec.select.i4263 to i64
  %.sroa.0.0.insert.insert.i4267 = or disjoint i64 %.sroa.22.0.insert.shift.i4265, %.sroa.0.0.insert.ext.i4266
  store i64 %.sroa.0.0.insert.insert.i4267, ptr %210, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIbEcvNS0_6ResultEEv(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %209, ptr noundef nonnull align 4 dereferenceable(8) %210)
          to label %bb.yb unwind label %bb.zl

bb.yb:                                            ; preds = %bb.ya
  %i.agy = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 352, ptr noundef nonnull @.str.28, ptr noundef nonnull align 8 dereferenceable(32) %209)
          to label %bb.yc unwind label %bb.zm     ; 0 uses

bb.yc:                                            ; preds = %bb.yb
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.afy) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %211) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %210) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %209) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %212) #29
  %i.agz = load <8 x i8>, ptr %i.x, align 8, !tbaa !122
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %212, i8 0, i64 24, i1 false)
  %i.aha = invoke noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #32
          to label %bb.yd unwind label %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i4269 ; 4 uses

_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i4269:       ; preds = %bb.yc
  %i.ahb = landingpad { ptr, i32 }
          cleanup
  br label %.body4270

bb.yd:                                            ; preds = %bb.yc
  store ptr %i.aha, ptr %212, align 8, !tbaa !106
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.aha, i64 9 ; 2 uses
  store ptr %i.ahc, ptr %i.afz, align 8, !tbaa !108
  store i8 -49, ptr %i.aha, align 1
  %.sroa.57440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aha, i64 1
  %i.ahd = shufflevector <8 x i8> %i.agz, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.ahd, ptr %.sroa.57440.0..sroa_idx, align 1
  store ptr %i.ahc, ptr %i.aga, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %213) #29
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10to_msgpackERKSD_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %213, ptr noundef nonnull align 8 dereferenceable(16) %208)
          to label %bb.ye unwind label %bb.zo

bb.ye:                                            ; preds = %bb.yd
  call void @llvm.lifetime.start.p0(ptr nonnull %214) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %215) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %216) #29
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %216, i32 noundef 10)
          to label %bb.yf unwind label %bb.zp

bb.yf:                                            ; preds = %bb.ye
  %i.ahe = load i32, ptr %216, align 4, !tbaa !90
  store ptr %213, ptr %215, align 8
  store i32 %i.ahe, ptr %.sroa.2704.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKSt6vectorIhSaIhEEEeqIS6_EEDTcmcvveqclL_ZNS0_7declvalIS6_EEOT_vEEclsr7doctest6detailE7declvalISA_EEtlNS0_6ResultEEESB_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %214, ptr noundef nonnull align 8 dereferenceable(12) %215, ptr noundef nonnull align 8 dereferenceable(24) %212)
          to label %bb.yg unwind label %bb.zp

bb.yg:                                            ; preds = %bb.yf
  %i.ahf = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 370, ptr noundef nonnull @.str.19, ptr noundef nonnull align 8 dereferenceable(32) %214)
          to label %bb.yh unwind label %bb.zq     ; 0 uses

bb.yh:                                            ; preds = %bb.yg
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.agb) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %216) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %215) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %214) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %217) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %218) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %219) #29
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %219, i32 noundef 10)
          to label %bb.yi unwind label %bb.zs

bb.yi:                                            ; preds = %bb.yh
  %i.ahg = load ptr, ptr %i.agc, align 8, !tbaa !109
  %i.ahh = load ptr, ptr %213, align 8, !tbaa !106
  %i.ahi = ptrtoint ptr %i.ahg to i64
  %i.ahj = ptrtoint ptr %i.ahh to i64
  %i.ahk = sub i64 %i.ahi, %i.ahj
  %i.ahl = load i32, ptr %219, align 4, !tbaa !90
  store i64 %i.ahk, ptr %218, align 8
  store i32 %i.ahl, ptr %.sroa.2700.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #29
  store i32 9, ptr %i.y, align 4, !tbaa !116
  invoke void @_ZN7doctest6detail14Expression_lhsImEeqIiEEDTcmcvveqclL_ZNS0_7declvalImEEOT_vEEclsr7doctest6detailE7declvalIS5_EEtlNS0_6ResultEEES6_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %217, ptr noundef nonnull align 8 dereferenceable(12) %218, ptr noundef nonnull align 4 dereferenceable(4) %i.y)
          to label %bb.yj unwind label %bb.zt

bb.yj:                                            ; preds = %bb.yi
  %i.ahm = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 371, ptr noundef nonnull @.str.44, ptr noundef nonnull align 8 dereferenceable(32) %217)
          to label %bb.yk unwind label %bb.zu     ; 0 uses

bb.yk:                                            ; preds = %bb.yj
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.agd) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %219) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %218) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %217) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %220) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %221) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %222) #29
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %222, i32 noundef 10)
          to label %bb.yl unwind label %bb.zx

bb.yl:                                            ; preds = %bb.yk
  %i.ahn = load ptr, ptr %213, align 8, !tbaa !106
  %i.aho = load i32, ptr %222, align 4, !tbaa !90
  store ptr %i.ahn, ptr %221, align 8
  store i32 %i.aho, ptr %.sroa.2696.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #29
  store i32 207, ptr %i.z, align 4, !tbaa !116
  invoke void @_ZN7doctest6detail14Expression_lhsIRKhEeqIiEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %220, ptr noundef nonnull align 8 dereferenceable(12) %221, ptr noundef nonnull align 4 dereferenceable(4) %i.z)
          to label %bb.ym unwind label %bb.zy

bb.ym:                                            ; preds = %bb.yl
  %i.ahp = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 374, ptr noundef nonnull @.str.45, ptr noundef nonnull align 8 dereferenceable(32) %220)
          to label %bb.yn unwind label %bb.zz     ; 0 uses

bb.yn:                                            ; preds = %bb.ym
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.age) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %222) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %221) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %220) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #29
  %i.ahq = load ptr, ptr %213, align 8, !tbaa !106 ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 1
  %1341 = load i32, ptr %i.ahr, align 1
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahq, i64 5
  %1342 = load i32, ptr %i.ahs, align 1
  %i.aht = zext i32 %1341 to i64
  %i.ahu = zext i32 %1342 to i64
  %i.ahv = shl nuw i64 %i.ahu, 32
  %i.ahw = or disjoint i64 %i.ahv, %i.aht
  %op.rdx9096 = call i64 @llvm.bswap.i64(i64 %i.ahw)
  store i64 %op.rdx9096, ptr %i.aa, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %223) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %224) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %225) #29
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %225, i32 noundef 10)
          to label %bb.yo unwind label %bb.aac

bb.yo:                                            ; preds = %bb.yn
  %i.ahx = load i32, ptr %225, align 4, !tbaa !90
  store ptr %i.aa, ptr %224, align 8
  store i32 %i.ahx, ptr %.sroa.2692.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKmEeqIRmEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS8_EEtlNS0_6ResultEEES9_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %223, ptr noundef nonnull align 8 dereferenceable(12) %224, ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %bb.yp unwind label %bb.aac

bb.yp:                                            ; preds = %bb.yo
  %i.ahy = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 383, ptr noundef nonnull @.str.36, ptr noundef nonnull align 8 dereferenceable(32) %223)
          to label %bb.yq unwind label %bb.aad    ; 0 uses

bb.yq:                                            ; preds = %bb.yp
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.agf) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %225) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %224) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %223) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %226) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %227) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %228) #29
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %228, i32 noundef 10)
          to label %bb.yr unwind label %bb.aaf

bb.yr:                                            ; preds = %bb.yq
  call void @llvm.lifetime.start.p0(ptr nonnull %229) #29
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE12from_msgpackIRKSC_EESD_OT_bb(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %229, ptr noundef nonnull align 8 dereferenceable(24) %213, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.ys unwind label %bb.aag

bb.ys:                                            ; preds = %bb.yr
  call void @llvm.experimental.noalias.scope.decl(metadata !858)
  %i.ahz = load i32, ptr %228, align 4, !tbaa !90, !noalias !858
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %227, ptr noundef nonnull align 8 dereferenceable(16) %229, i64 16, i1 false), !tbaa.struct !111
  store i8 0, ptr %229, align 8, !tbaa !113, !noalias !858
  store ptr null, ptr %i.agg, align 8, !tbaa !101, !noalias !858
  store i32 %i.ahz, ptr %i.agh, align 8, !tbaa !115, !alias.scope !858
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISL_EEtlNS0_6ResultEEESM_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %226, ptr noundef nonnull align 8 dereferenceable(20) %227, ptr noundef nonnull align 8 dereferenceable(16) %208)
          to label %bb.yt unwind label %bb.aah

bb.yt:                                            ; preds = %bb.ys
  %i.aia = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 386, ptr noundef nonnull @.str.20, ptr noundef nonnull align 8 dereferenceable(32) %226)
          to label %bb.yu unwind label %bb.aai    ; 0 uses

bb.yu:                                            ; preds = %bb.yt
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.agi) #29
  %i.aib = load i8, ptr %227, align 8, !tbaa !100
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.agj, i8 noundef zeroext %i.aib)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit4281 unwind label %bb.yv, !inline_history !107

bb.yv:                                            ; preds = %bb.yu
  %i.aic = landingpad { ptr, i32 }
          catch ptr null
  %i.aid = extractvalue { ptr, i32 } %i.aic, 0
  call void @__clang_call_terminate(ptr %i.aid) #30, !inline_history !107
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit4281: ; preds = %bb.yu
  %i.aie = load i8, ptr %229, align 8, !tbaa !100
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.agg, i8 noundef zeroext %i.aie)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4282 unwind label %bb.yw, !inline_history !107

bb.yw:                                            ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit4281
  %i.aif = landingpad { ptr, i32 }
          catch ptr null
  %i.aig = extractvalue { ptr, i32 } %i.aif, 0
  call void @__clang_call_terminate(ptr %i.aig) #30, !inline_history !107
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4282: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit4281
  call void @llvm.lifetime.end.p0(ptr nonnull %229) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %228) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %227) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %226) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %230) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %231) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %232) #29
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %232, i32 noundef 10)
          to label %bb.yx unwind label %bb.aam

bb.yx:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4282
  call void @llvm.lifetime.start.p0(ptr nonnull %233) #29
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE12from_msgpackIRKSC_EESD_OT_bb(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %233, ptr noundef nonnull align 8 dereferenceable(24) %213, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.yy unwind label %bb.aan

bb.yy:                                            ; preds = %bb.yx
  call void @llvm.experimental.noalias.scope.decl(metadata !859)
  %i.aih = load i32, ptr %232, align 4, !tbaa !90, !noalias !859
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %231, ptr noundef nonnull align 8 dereferenceable(16) %233, i64 16, i1 false), !tbaa.struct !111
  store i8 0, ptr %233, align 8, !tbaa !113, !noalias !859
  store ptr null, ptr %i.agk, align 8, !tbaa !101, !noalias !859
  store i32 %i.aih, ptr %i.agl, align 8, !tbaa !115, !alias.scope !859
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISL_EEtlNS0_6ResultEEESM_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %230, ptr noundef nonnull align 8 dereferenceable(20) %231, ptr noundef nonnull align 8 dereferenceable(16) %208)
          to label %bb.yz unwind label %bb.aao

bb.yz:                                            ; preds = %bb.yy
  %i.aii = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 387, ptr noundef nonnull @.str.21, ptr noundef nonnull align 8 dereferenceable(32) %230)
          to label %bb.za unwind label %bb.aap    ; 0 uses

bb.za:                                            ; preds = %bb.yz
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.agm) #29
  %i.aij = load i8, ptr %231, align 8, !tbaa !100
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.agn, i8 noundef zeroext %i.aij)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit4283 unwind label %bb.zb, !inline_history !107

bb.zb:                                            ; preds = %bb.za
  %i.aik = landingpad { ptr, i32 }
          catch ptr null
  %i.ail = extractvalue { ptr, i32 } %i.aik, 0
  call void @__clang_call_terminate(ptr %i.ail) #30, !inline_history !107
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit4283: ; preds = %bb.za
  %i.aim = load i8, ptr %233, align 8, !tbaa !100
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.agk, i8 noundef zeroext %i.aim)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4284 unwind label %bb.zc, !inline_history !107

bb.zc:                                            ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit4283
  %i.ain = landingpad { ptr, i32 }
          catch ptr null
  %i.aio = extractvalue { ptr, i32 } %i.ain, 0
  call void @__clang_call_terminate(ptr %i.aio) #30, !inline_history !107
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4284: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit4283
  call void @llvm.lifetime.end.p0(ptr nonnull %233) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %232) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %231) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %230) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #29
  %i.aip = load ptr, ptr %213, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i4285 = icmp eq ptr %i.aip, null
  br i1 %.not.i.i.i4285, label %_ZNSt6vectorIhSaIhEED2Ev.exit4287, label %bb.zd

bb.zd:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4284
  call void @_ZdlPv(ptr noundef nonnull %i.aip) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit4287

_ZNSt6vectorIhSaIhEED2Ev.exit4287:                ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4284, %bb.zd
  call void @llvm.lifetime.end.p0(ptr nonnull %213) #29
  %i.aiq = load ptr, ptr %212, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i4288 = icmp eq ptr %i.aiq, null
  br i1 %.not.i.i.i4288, label %_ZNSt6vectorIhSaIhEED2Ev.exit4290, label %bb.ze

bb.ze:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit4287
  call void @_ZdlPv(ptr noundef nonnull %i.aiq) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit4290

_ZNSt6vectorIhSaIhEED2Ev.exit4290:                ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit4287, %bb.ze
  call void @llvm.lifetime.end.p0(ptr nonnull %212) #29
  %i.air = load i8, ptr %208, align 8, !tbaa !100
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.afx, i8 noundef zeroext %i.air)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4291 unwind label %bb.zf, !inline_history !107

bb.zf:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit4290
  %i.ais = landingpad { ptr, i32 }
          catch ptr null
  %i.ait = extractvalue { ptr, i32 } %i.ais, 0
  call void @__clang_call_terminate(ptr %i.ait) #30, !inline_history !107
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4291: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit4290
  call void @llvm.lifetime.end.p0(ptr nonnull %208) #29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_5EE", i64 16), ptr %207, align 8, !tbaa !87
  %i.aiu = load i8, ptr %i.ago, align 8, !tbaa !94, !range !95, !noundef !96
  %i.aiv = trunc nuw i8 %i.aiu to i1
  br i1 %i.aiv, label %bb.zg, label %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_5ED2Ev.exit"

bb.zg:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4291
  invoke void @_ZN7doctest6detail16ContextScopeBase7destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %207)
          to label %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_5ED2Ev.exit" unwind label %bb.zh, !inline_history !131

bb.zh:                                            ; preds = %bb.zg
  %i.aiw = landingpad { ptr, i32 }
          catch ptr null
  %i.aix = extractvalue { ptr, i32 } %i.aiw, 0
  call void @__clang_call_terminate(ptr %i.aix) #30, !inline_history !131
  unreachable

"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_5ED2Ev.exit": ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4291, %bb.zg
  call void @_ZN7doctest13IContextScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(24) %207) #29, !inline_history !131
  call void @llvm.lifetime.end.p0(ptr nonnull %207) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #29
  %.02214.add = add nuw nsw i64 %.02214.idx8087, 8 ; 2 uses
  %.not2321 = icmp eq i64 %.02214.add, 16
  br i1 %.not2321, label %bb.xs, label %bb.xy

bb.zi:                                            ; preds = %bb.xy
  %i.aiy = landingpad { ptr, i32 }
          cleanup
  br label %bb.aay

bb.zj:                                            ; preds = %bb.xz
  %i.aiz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aax

end_hunk_0
begin_hunk_1_@_ZL19DOCTEST_ANON_FUNC_7v:bb.a
  %i.baa = getelementptr inbounds nuw i8, ptr %355, i64 8 ; 2 uses
  %.sroa.2604.0..sroa_idx = getelementptr inbounds nuw i8, ptr %359, i64 8
  %i.bab = getelementptr inbounds nuw i8, ptr %358, i64 8 ; 2 uses
  %i.bac = getelementptr inbounds nuw i8, ptr %364, i64 8 ; 2 uses
  %i.bad = getelementptr inbounds nuw i8, ptr %362, i64 16
  %i.bae = getelementptr inbounds nuw i8, ptr %361, i64 8 ; 2 uses
  %i.baf = getelementptr inbounds nuw i8, ptr %362, i64 8
  %i.bag = getelementptr inbounds nuw i8, ptr %368, i64 8 ; 2 uses
  %i.bah = getelementptr inbounds nuw i8, ptr %366, i64 16
  %i.bai = getelementptr inbounds nuw i8, ptr %365, i64 8 ; 2 uses
  %i.baj = getelementptr inbounds nuw i8, ptr %366, i64 8
  %i.bak = getelementptr inbounds nuw i8, ptr %342, i64 8
  br label %bb.aoa

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_9ED2Ev.exit"
  call void @_ZdlPv(ptr noundef nonnull %i.azq) #31
  br label %bb.aqz

bb.anu:                                           ; preds = %bb.ako, %_ZNSt6vectorIiSaIiEED2Ev.exit4433, %bb.akn
  %.pn3719.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.awd, %bb.akn ], [ %.pn3719.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit4433 ], [ %i.awe, %bb.ako ]
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %311) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %311) #29
  br label %bb.arl

bb.anv:                                           ; preds = %bb.ano
  %i.bal = landingpad { ptr, i32 }
          cleanup
  br label %bb.anx

bb.anw:                                           ; preds = %bb.anp
  %i.bam = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %341) #29
  br label %bb.anx

bb.anx:                                           ; preds = %bb.anw, %bb.anv
  %.pn2353 = phi { ptr, i32 } [ %i.bam, %bb.anw ], [ %i.bal, %bb.anv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %341) #29
  br label %bb.arl

bb.any:                                           ; preds = %bb.anq
  %i.ban = landingpad { ptr, i32 }
          cleanup
  br label %bb.ara

bb.anz:                                           ; preds = %bb.ans
  %i.bao = landingpad { ptr, i32 }
          cleanup
  br label %bb.ara

bb.aoa:                                           ; preds = %bb.ant, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_9ED2Ev.exit"
  %.sroa.07387.0.idx8089 = phi i64 [ 0, %bb.ant ], [ %.sroa.07387.0.add, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_9ED2Ev.exit" ] ; 2 uses
  %.sroa.07387.0.ptr = getelementptr inbounds nuw i8, ptr %i.azq, i64 %.sroa.07387.0.idx8089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an) #29
  %i.bap = load i64, ptr %.sroa.07387.0.ptr, align 8, !tbaa !122
  store i64 %i.bap, ptr %i.an, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %342) #29
  invoke void @_ZN7doctest6detail16ContextScopeBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %342)
          to label %bb.aob unwind label %bb.apk

bb.aob:                                           ; preds = %bb.aoa
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_9EE", i64 16), ptr %342, align 8, !tbaa !87, !alias.scope !872
  store i64 %i.azr, ptr %i.azs, align 8, !tbaa !124, !alias.scope !872
  call void @llvm.lifetime.start.p0(ptr nonnull %343) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %343, i8 0, i64 16, i1 false)
  %i.baq = load i64, ptr %i.an, align 8, !tbaa !122
  store i8 5, ptr %343, align 8, !tbaa !113
  store i64 %i.baq, ptr %i.azt, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %344) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %345) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %346) #29
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %346, i32 noundef 10)
          to label %bb.aoc unwind label %bb.apl

bb.aoc:                                           ; preds = %bb.aob
  %i.bar = load i8, ptr %343, align 8, !tbaa !113
  %i.bas = add i8 %i.bar, -5
  %spec.select.i4435 = icmp ult i8 %i.bas, 2
  %i.bat = load i32, ptr %346, align 4, !tbaa !90
  %.sroa.22.0.insert.ext.i4436 = zext i32 %i.bat to i64
  %.sroa.22.0.insert.shift.i4437 = shl nuw i64 %.sroa.22.0.insert.ext.i4436, 32
  %.sroa.0.0.insert.ext.i4438 = zext i1 %spec.select.i4435 to i64
  %.sroa.0.0.insert.insert.i4439 = or disjoint i64 %.sroa.22.0.insert.shift.i4437, %.sroa.0.0.insert.ext.i4438
  store i64 %.sroa.0.0.insert.insert.i4439, ptr %345, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIbEcvNS0_6ResultEEv(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %344, ptr noundef nonnull align 4 dereferenceable(8) %345)
          to label %bb.aod unwind label %bb.apm

bb.aod:                                           ; preds = %bb.aoc
  %i.bau = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 541, ptr noundef nonnull @.str.28, ptr noundef nonnull align 8 dereferenceable(32) %344)
          to label %bb.aoe unwind label %bb.apn   ; 0 uses

bb.aoe:                                           ; preds = %bb.aod
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.azu) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %346) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %345) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %344) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %347) #29
  %i.bav = load <8 x i8>, ptr %i.an, align 8, !tbaa !122
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %347, i8 0, i64 24, i1 false)
  %i.baw = invoke noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #32
          to label %bb.aof unwind label %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i4441 ; 4 uses

_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i4441:       ; preds = %bb.aoe
  %i.bax = landingpad { ptr, i32 }
          cleanup
  br label %.body4442

bb.aof:                                           ; preds = %bb.aoe
  store ptr %i.baw, ptr %347, align 8, !tbaa !106
  %i.bay = getelementptr inbounds nuw i8, ptr %i.baw, i64 9 ; 2 uses
  store ptr %i.bay, ptr %i.azv, align 8, !tbaa !108
  store i8 -45, ptr %i.baw, align 1
  %.sroa.57376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.baw, i64 1
  %i.baz = shufflevector <8 x i8> %i.bav, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.baz, ptr %.sroa.57376.0..sroa_idx, align 1
  store ptr %i.bay, ptr %i.azw, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %348) #29
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10to_msgpackERKSD_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %348, ptr noundef nonnull align 8 dereferenceable(16) %343)
          to label %bb.aog unwind label %bb.app

bb.aog:                                           ; preds = %bb.aof
  call void @llvm.lifetime.start.p0(ptr nonnull %349) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %350) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %351) #29
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %351, i32 noundef 10)
          to label %bb.aoh unwind label %bb.apq

bb.aoh:                                           ; preds = %bb.aog
  %i.bba = load i32, ptr %351, align 4, !tbaa !90
  store ptr %348, ptr %350, align 8
  store i32 %i.bba, ptr %.sroa.2616.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKSt6vectorIhSaIhEEEeqIS6_EEDTcmcvveqclL_ZNS0_7declvalIS6_EEOT_vEEclsr7doctest6detailE7declvalISA_EEtlNS0_6ResultEEESB_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %349, ptr noundef nonnull align 8 dereferenceable(12) %350, ptr noundef nonnull align 8 dereferenceable(24) %347)
          to label %bb.aoi unwind label %bb.apq

bb.aoi:                                           ; preds = %bb.aoh
  %i.bbb = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 559, ptr noundef nonnull @.str.19, ptr noundef nonnull align 8 dereferenceable(32) %349)
          to label %bb.aoj unwind label %bb.apr   ; 0 uses

bb.aoj:                                           ; preds = %bb.aoi
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.azx) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %351) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %350) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %349) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %352) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %353) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %354) #29
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %354, i32 noundef 10)
          to label %bb.aok unwind label %bb.apt

bb.aok:                                           ; preds = %bb.aoj
  %i.bbc = load ptr, ptr %i.azy, align 8, !tbaa !109
  %i.bbd = load ptr, ptr %348, align 8, !tbaa !106
  %i.bbe = ptrtoint ptr %i.bbc to i64
  %i.bbf = ptrtoint ptr %i.bbd to i64
  %i.bbg = sub i64 %i.bbe, %i.bbf
  %i.bbh = load i32, ptr %354, align 4, !tbaa !90
  store i64 %i.bbg, ptr %353, align 8
  store i32 %i.bbh, ptr %.sroa.2612.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #29
  store i32 9, ptr %i.ao, align 4, !tbaa !116
  invoke void @_ZN7doctest6detail14Expression_lhsImEeqIiEEDTcmcvveqclL_ZNS0_7declvalImEEOT_vEEclsr7doctest6detailE7declvalIS5_EEtlNS0_6ResultEEES6_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %352, ptr noundef nonnull align 8 dereferenceable(12) %353, ptr noundef nonnull align 4 dereferenceable(4) %i.ao)
          to label %bb.aol unwind label %bb.apu

bb.aol:                                           ; preds = %bb.aok
  %i.bbi = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 560, ptr noundef nonnull @.str.44, ptr noundef nonnull align 8 dereferenceable(32) %352)
          to label %bb.aom unwind label %bb.apv   ; 0 uses

bb.aom:                                           ; preds = %bb.aol
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.azz) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %354) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %353) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %352) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %355) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %356) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %357) #29
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %357, i32 noundef 10)
          to label %bb.aon unwind label %bb.apy

bb.aon:                                           ; preds = %bb.aom
  %i.bbj = load ptr, ptr %348, align 8, !tbaa !106
  %i.bbk = load i32, ptr %357, align 4, !tbaa !90
  store ptr %i.bbj, ptr %356, align 8
  store i32 %i.bbk, ptr %.sroa.2608.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #29
  store i32 211, ptr %i.ap, align 4, !tbaa !116
  invoke void @_ZN7doctest6detail14Expression_lhsIRKhEeqIiEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %355, ptr noundef nonnull align 8 dereferenceable(12) %356, ptr noundef nonnull align 4 dereferenceable(4) %i.ap)
          to label %bb.aoo unwind label %bb.apz

bb.aoo:                                           ; preds = %bb.aon
  %i.bbl = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 563, ptr noundef nonnull @.str.57, ptr noundef nonnull align 8 dereferenceable(32) %355)
          to label %bb.aop unwind label %bb.aqa   ; 0 uses

bb.aop:                                           ; preds = %bb.aoo
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.baa) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %357) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %356) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %355) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #29
  %i.bbm = load ptr, ptr %348, align 8, !tbaa !106 ; 2 uses
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbm, i64 1
  %1343 = load i32, ptr %i.bbn, align 1
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbm, i64 5
  %1344 = load i32, ptr %i.bbo, align 1
  %i.bbp = zext i32 %1343 to i64
  %i.bbq = zext i32 %1344 to i64
  %i.bbr = shl nuw i64 %i.bbq, 32
  %i.bbs = or disjoint i64 %i.bbr, %i.bbp
  %op.rdx9095 = call i64 @llvm.bswap.i64(i64 %i.bbs)
  store i64 %op.rdx9095, ptr %i.aq, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %358) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %359) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %360) #29
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %360, i32 noundef 10)
          to label %bb.aoq unwind label %bb.aqd

bb.aoq:                                           ; preds = %bb.aop
  %i.bbt = load i32, ptr %360, align 4, !tbaa !90
  store ptr %i.aq, ptr %359, align 8
  store i32 %i.bbt, ptr %.sroa.2604.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKlEeqIRlEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS8_EEtlNS0_6ResultEEES9_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %358, ptr noundef nonnull align 8 dereferenceable(12) %359, ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.aor unwind label %bb.aqd

bb.aor:                                           ; preds = %bb.aoq
  %i.bbu = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 572, ptr noundef nonnull @.str.36, ptr noundef nonnull align 8 dereferenceable(32) %358)
          to label %bb.aos unwind label %bb.aqe   ; 0 uses

bb.aos:                                           ; preds = %bb.aor
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bab) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %360) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %359) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %358) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %361) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %362) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %363) #29
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %363, i32 noundef 10)
          to label %bb.aot unwind label %bb.aqg

bb.aot:                                           ; preds = %bb.aos
  call void @llvm.lifetime.start.p0(ptr nonnull %364) #29
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE12from_msgpackIRKSC_EESD_OT_bb(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %364, ptr noundef nonnull align 8 dereferenceable(24) %348, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.aou unwind label %bb.aqh

bb.aou:                                           ; preds = %bb.aot
  call void @llvm.experimental.noalias.scope.decl(metadata !873)
  %i.bbv = load i32, ptr %363, align 4, !tbaa !90, !noalias !873
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %362, ptr noundef nonnull align 8 dereferenceable(16) %364, i64 16, i1 false), !tbaa.struct !111
  store i8 0, ptr %364, align 8, !tbaa !113, !noalias !873
  store ptr null, ptr %i.bac, align 8, !tbaa !101, !noalias !873
  store i32 %i.bbv, ptr %i.bad, align 8, !tbaa !115, !alias.scope !873
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRKSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISM_EEtlNS0_6ResultEEESN_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %361, ptr noundef nonnull align 8 dereferenceable(20) %362, ptr noundef nonnull align 8 dereferenceable(16) %343)
          to label %bb.aov unwind label %bb.aqi

bb.aov:                                           ; preds = %bb.aou
  %i.bbw = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 575, ptr noundef nonnull @.str.20, ptr noundef nonnull align 8 dereferenceable(32) %361)
          to label %bb.aow unwind label %bb.aqj   ; 0 uses

bb.aow:                                           ; preds = %bb.aov
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bae) #29
  %i.bbx = load i8, ptr %362, align 8, !tbaa !100
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.baf, i8 noundef zeroext %i.bbx)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit4453 unwind label %bb.aox, !inline_history !107

bb.aox:                                           ; preds = %bb.aow
  %i.bby = landingpad { ptr, i32 }
          catch ptr null
  %i.bbz = extractvalue { ptr, i32 } %i.bby, 0
  call void @__clang_call_terminate(ptr %i.bbz) #30, !inline_history !107
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit4453: ; preds = %bb.aow
  %i.bca = load i8, ptr %364, align 8, !tbaa !100
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bac, i8 noundef zeroext %i.bca)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4454 unwind label %bb.aoy, !inline_history !107

bb.aoy:                                           ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit4453
  %i.bcb = landingpad { ptr, i32 }
          catch ptr null
  %i.bcc = extractvalue { ptr, i32 } %i.bcb, 0
  call void @__clang_call_terminate(ptr %i.bcc) #30, !inline_history !107
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4454: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit4453
  call void @llvm.lifetime.end.p0(ptr nonnull %364) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %363) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %362) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %361) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %365) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %366) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %367) #29
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %367, i32 noundef 10)
          to label %bb.aoz unwind label %bb.aqn

bb.aoz:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4454
  call void @llvm.lifetime.start.p0(ptr nonnull %368) #29
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE12from_msgpackIRKSC_EESD_OT_bb(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %368, ptr noundef nonnull align 8 dereferenceable(24) %348, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.apa unwind label %bb.aqo

bb.apa:                                           ; preds = %bb.aoz
  call void @llvm.experimental.noalias.scope.decl(metadata !874)
  %i.bcd = load i32, ptr %367, align 4, !tbaa !90, !noalias !874
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %366, ptr noundef nonnull align 8 dereferenceable(16) %368, i64 16, i1 false), !tbaa.struct !111
  store i8 0, ptr %368, align 8, !tbaa !113, !noalias !874
  store ptr null, ptr %i.bag, align 8, !tbaa !101, !noalias !874
  store i32 %i.bcd, ptr %i.bah, align 8, !tbaa !115, !alias.scope !874
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRKSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISM_EEtlNS0_6ResultEEESN_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %365, ptr noundef nonnull align 8 dereferenceable(20) %366, ptr noundef nonnull align 8 dereferenceable(16) %343)
          to label %bb.apb unwind label %bb.aqp

bb.apb:                                           ; preds = %bb.apa
  %i.bce = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 576, ptr noundef nonnull @.str.21, ptr noundef nonnull align 8 dereferenceable(32) %365)
          to label %bb.apc unwind label %bb.aqq   ; 0 uses

bb.apc:                                           ; preds = %bb.apb
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bai) #29
  %i.bcf = load i8, ptr %366, align 8, !tbaa !100
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.baj, i8 noundef zeroext %i.bcf)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit4455 unwind label %bb.apd, !inline_history !107

bb.apd:                                           ; preds = %bb.apc
  %i.bcg = landingpad { ptr, i32 }
          catch ptr null
  %i.bch = extractvalue { ptr, i32 } %i.bcg, 0
  call void @__clang_call_terminate(ptr %i.bch) #30, !inline_history !107
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit4455: ; preds = %bb.apc
  %i.bci = load i8, ptr %368, align 8, !tbaa !100
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bag, i8 noundef zeroext %i.bci)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4456 unwind label %bb.ape, !inline_history !107

bb.ape:                                           ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit4455
  %i.bcj = landingpad { ptr, i32 }
          catch ptr null
  %i.bck = extractvalue { ptr, i32 } %i.bcj, 0
  call void @__clang_call_terminate(ptr %i.bck) #30, !inline_history !107
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4456: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit4455
  call void @llvm.lifetime.end.p0(ptr nonnull %368) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %367) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %366) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %365) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #29
  %i.bcl = load ptr, ptr %348, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i4457 = icmp eq ptr %i.bcl, null
  br i1 %.not.i.i.i4457, label %_ZNSt6vectorIhSaIhEED2Ev.exit4459, label %bb.apf

bb.apf:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4456
  call void @_ZdlPv(ptr noundef nonnull %i.bcl) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit4459

_ZNSt6vectorIhSaIhEED2Ev.exit4459:                ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4456, %bb.apf
  call void @llvm.lifetime.end.p0(ptr nonnull %348) #29
  %i.bcm = load ptr, ptr %347, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i4460 = icmp eq ptr %i.bcm, null
  br i1 %.not.i.i.i4460, label %_ZNSt6vectorIhSaIhEED2Ev.exit4462, label %bb.apg

bb.apg:                                           ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit4459
  call void @_ZdlPv(ptr noundef nonnull %i.bcm) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit4462

_ZNSt6vectorIhSaIhEED2Ev.exit4462:                ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit4459, %bb.apg
  call void @llvm.lifetime.end.p0(ptr nonnull %347) #29
  %i.bcn = load i8, ptr %343, align 8, !tbaa !100
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.azt, i8 noundef zeroext %i.bcn)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4463 unwind label %bb.aph, !inline_history !107

bb.aph:                                           ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit4462
  %i.bco = landingpad { ptr, i32 }
          catch ptr null
  %i.bcp = extractvalue { ptr, i32 } %i.bco, 0
  call void @__clang_call_terminate(ptr %i.bcp) #30, !inline_history !107
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4463: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit4462
  call void @llvm.lifetime.end.p0(ptr nonnull %343) #29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_9EE", i64 16), ptr %342, align 8, !tbaa !87
  %i.bcq = load i8, ptr %i.bak, align 8, !tbaa !94, !range !95, !noundef !96
  %i.bcr = trunc nuw i8 %i.bcq to i1
  br i1 %i.bcr, label %bb.api, label %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_9ED2Ev.exit"

bb.api:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4463
  invoke void @_ZN7doctest6detail16ContextScopeBase7destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %342)
          to label %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_9ED2Ev.exit" unwind label %bb.apj, !inline_history !136

bb.apj:                                           ; preds = %bb.api
  %i.bcs = landingpad { ptr, i32 }
          catch ptr null
  %i.bct = extractvalue { ptr, i32 } %i.bcs, 0
  call void @__clang_call_terminate(ptr %i.bct) #30, !inline_history !136
  unreachable

"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_9ED2Ev.exit": ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4463, %bb.api
  call void @_ZN7doctest13IContextScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(24) %342) #29, !inline_history !136
  call void @llvm.lifetime.end.p0(ptr nonnull %342) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #29
  %.sroa.07387.0.add = add nuw nsw i64 %.sroa.07387.0.idx8089, 8 ; 2 uses
  %.not7553 = icmp eq i64 %.sroa.07387.0.add, 16
  br i1 %.not7553, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.aoa

bb.apk:                                           ; preds = %bb.aoa
  %i.bcu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit4471

bb.apl:                                           ; preds = %bb.aob
  %i.bcv = landingpad { ptr, i32 }
          cleanup
  br label %bb.apo

end_hunk_1
begin_hunk_2_@_ZL19DOCTEST_ANON_FUNC_7v:bb.a
  %i.buj = getelementptr inbounds nuw i8, ptr %491, i64 8
  %.sroa.2512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %494, i64 8
  %i.buk = getelementptr inbounds nuw i8, ptr %493, i64 8 ; 2 uses
  %i.bul = getelementptr inbounds nuw i8, ptr %492, i64 8
  %.sroa.2508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %497, i64 8
  %i.bum = getelementptr inbounds nuw i8, ptr %496, i64 8 ; 2 uses
  %.sroa.2504.0..sroa_idx = getelementptr inbounds nuw i8, ptr %500, i64 8
  %i.bun = getelementptr inbounds nuw i8, ptr %499, i64 8 ; 2 uses
  %.sroa.2500.0..sroa_idx = getelementptr inbounds nuw i8, ptr %503, i64 8
  %i.buo = getelementptr inbounds nuw i8, ptr %502, i64 8 ; 2 uses
  %i.bup = getelementptr inbounds nuw i8, ptr %508, i64 8 ; 2 uses
  %i.buq = getelementptr inbounds nuw i8, ptr %506, i64 16
  %i.bur = getelementptr inbounds nuw i8, ptr %505, i64 8 ; 2 uses
  %i.bus = getelementptr inbounds nuw i8, ptr %506, i64 8
  %i.but = getelementptr inbounds nuw i8, ptr %512, i64 8 ; 2 uses
  %i.buu = getelementptr inbounds nuw i8, ptr %510, i64 16
  %i.buv = getelementptr inbounds nuw i8, ptr %509, i64 8 ; 2 uses
  %i.buw = getelementptr inbounds nuw i8, ptr %510, i64 8
  %i.bux = getelementptr inbounds nuw i8, ptr %486, i64 8
  br label %bb.bfd

bb.bex:                                           ; preds = %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_14ED2Ev.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg) #29
  br label %bb.bid

bb.bey:                                           ; preds = %bb.ber, %bb.bbr
  %.pn3559.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn3559.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ber ], [ %i.bqt, %bb.bbr ]
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %455) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %455) #29
  br label %bb.bjo

bb.bez:                                           ; preds = %bb.bes
  %i.buy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bfb

bb.bfa:                                           ; preds = %bb.bet
  %i.buz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %485) #29
  br label %bb.bfb

bb.bfb:                                           ; preds = %bb.bfa, %bb.bez
  %.pn2369 = phi { ptr, i32 } [ %i.buz, %bb.bfa ], [ %i.buy, %bb.bez ]
  call void @llvm.lifetime.end.p0(ptr nonnull %485) #29
  br label %bb.bjo

bb.bfc:                                           ; preds = %bb.beu
  %i.bva = landingpad { ptr, i32 }
          cleanup
  br label %bb.bie

bb.bfd:                                           ; preds = %bb.bew, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_14ED2Ev.exit"
  %.02216.idx8091 = phi i64 [ 0, %bb.bew ], [ %.02216.add, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_14ED2Ev.exit" ] ; 2 uses
  %.02216.ptr = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.02216.idx8091
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh) #29
  %i.bvb = load i64, ptr %.02216.ptr, align 8, !tbaa !122
  store i64 %i.bvb, ptr %i.bh, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %486) #29
  invoke void @_ZN7doctest6detail16ContextScopeBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %486)
          to label %bb.bfe unwind label %bb.bgn

bb.bfe:                                           ; preds = %bb.bfd
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_14EE", i64 16), ptr %486, align 8, !tbaa !87, !alias.scope !887
  store i64 %i.bue, ptr %i.buf, align 8, !tbaa !124, !alias.scope !887
  call void @llvm.lifetime.start.p0(ptr nonnull %487) #29
  store i64 0, ptr %487, align 8
  %i.bvc = load i64, ptr %i.bh, align 8, !tbaa !122
  store i8 6, ptr %487, align 8, !tbaa !113
  store i64 %i.bvc, ptr %i.bug, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %488) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %489) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %490) #29
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %490, i32 noundef 10)
          to label %bb.bff unwind label %bb.bgo

bb.bff:                                           ; preds = %bb.bfe
  %i.bvd = load i8, ptr %487, align 8, !tbaa !113
  %i.bve = icmp eq i8 %i.bvd, 6
  %i.bvf = load i32, ptr %490, align 4, !tbaa !90
  %.sroa.22.0.insert.ext.i4606 = zext i32 %i.bvf to i64
  %.sroa.22.0.insert.shift.i4607 = shl nuw i64 %.sroa.22.0.insert.ext.i4606, 32
  %.sroa.0.0.insert.ext.i4608 = zext i1 %i.bve to i64
  %.sroa.0.0.insert.insert.i4609 = or disjoint i64 %.sroa.22.0.insert.shift.i4607, %.sroa.0.0.insert.ext.i4608
  store i64 %.sroa.0.0.insert.insert.i4609, ptr %489, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIbEcvNS0_6ResultEEv(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %488, ptr noundef nonnull align 4 dereferenceable(8) %489)
          to label %bb.bfg unwind label %bb.bgp

bb.bfg:                                           ; preds = %bb.bff
  %i.bvg = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 740, ptr noundef nonnull @.str.59, ptr noundef nonnull align 8 dereferenceable(32) %488)
          to label %bb.bfh unwind label %bb.bgq   ; 0 uses

bb.bfh:                                           ; preds = %bb.bfg
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.buh) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %490) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %489) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %488) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %491) #29
  %i.bvh = load <8 x i8>, ptr %i.bh, align 8, !tbaa !122
  %i.bvi = invoke noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #32
          to label %bb.bfi unwind label %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i4611 ; 4 uses

_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i4611:       ; preds = %bb.bfh
  %i.bvj = landingpad { ptr, i32 }
          cleanup
  br label %.body4612

bb.bfi:                                           ; preds = %bb.bfh
  store ptr %i.bvi, ptr %491, align 8, !tbaa !106
  %i.bvk = getelementptr inbounds nuw i8, ptr %i.bvi, i64 9 ; 2 uses
  store ptr %i.bvk, ptr %i.bui, align 8, !tbaa !108
  store i8 -49, ptr %i.bvi, align 1
  %.sroa.57330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bvi, i64 1
  %i.bvl = shufflevector <8 x i8> %i.bvh, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.bvl, ptr %.sroa.57330.0..sroa_idx, align 1
  store ptr %i.bvk, ptr %i.buj, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %492) #29
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10to_msgpackERKSD_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %492, ptr noundef nonnull align 8 dereferenceable(16) %487)
          to label %bb.bfj unwind label %bb.bgs

bb.bfj:                                           ; preds = %bb.bfi
  call void @llvm.lifetime.start.p0(ptr nonnull %493) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %494) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %495) #29
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %495, i32 noundef 10)
          to label %bb.bfk unwind label %bb.bgt

bb.bfk:                                           ; preds = %bb.bfj
  %i.bvm = load i32, ptr %495, align 4, !tbaa !90
  store ptr %492, ptr %494, align 8
  store i32 %i.bvm, ptr %.sroa.2512.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKSt6vectorIhSaIhEEEeqIS6_EEDTcmcvveqclL_ZNS0_7declvalIS6_EEOT_vEEclsr7doctest6detailE7declvalISA_EEtlNS0_6ResultEEESB_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %493, ptr noundef nonnull align 8 dereferenceable(12) %494, ptr noundef nonnull align 8 dereferenceable(24) %491)
          to label %bb.bfl unwind label %bb.bgt

bb.bfl:                                           ; preds = %bb.bfk
  %i.bvn = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 758, ptr noundef nonnull @.str.19, ptr noundef nonnull align 8 dereferenceable(32) %493)
          to label %bb.bfm unwind label %bb.bgu   ; 0 uses

bb.bfm:                                           ; preds = %bb.bfl
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.buk) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %495) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %494) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %493) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %496) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %497) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %498) #29
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %498, i32 noundef 10)
          to label %bb.bfn unwind label %bb.bgw

bb.bfn:                                           ; preds = %bb.bfm
  %i.bvo = load ptr, ptr %i.bul, align 8, !tbaa !109
  %i.bvp = load ptr, ptr %492, align 8, !tbaa !106
  %i.bvq = ptrtoint ptr %i.bvo to i64
  %i.bvr = ptrtoint ptr %i.bvp to i64
  %i.bvs = sub i64 %i.bvq, %i.bvr
  %i.bvt = load i32, ptr %498, align 4, !tbaa !90
  store i64 %i.bvs, ptr %497, align 8
  store i32 %i.bvt, ptr %.sroa.2508.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi) #29
  store i32 9, ptr %i.bi, align 4, !tbaa !116
  invoke void @_ZN7doctest6detail14Expression_lhsImEeqIiEEDTcmcvveqclL_ZNS0_7declvalImEEOT_vEEclsr7doctest6detailE7declvalIS5_EEtlNS0_6ResultEEES6_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %496, ptr noundef nonnull align 8 dereferenceable(12) %497, ptr noundef nonnull align 4 dereferenceable(4) %i.bi)
          to label %bb.bfo unwind label %bb.bgx

bb.bfo:                                           ; preds = %bb.bfn
  %i.bvu = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 759, ptr noundef nonnull @.str.44, ptr noundef nonnull align 8 dereferenceable(32) %496)
          to label %bb.bfp unwind label %bb.bgy   ; 0 uses

bb.bfp:                                           ; preds = %bb.bfo
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bum) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %498) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %497) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %496) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %499) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %500) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %501) #29
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %501, i32 noundef 10)
          to label %bb.bfq unwind label %bb.bhb

bb.bfq:                                           ; preds = %bb.bfp
  %i.bvv = load ptr, ptr %492, align 8, !tbaa !106
  %i.bvw = load i32, ptr %501, align 4, !tbaa !90
  store ptr %i.bvv, ptr %500, align 8
  store i32 %i.bvw, ptr %.sroa.2504.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj) #29
  store i32 207, ptr %i.bj, align 4, !tbaa !116
  invoke void @_ZN7doctest6detail14Expression_lhsIRKhEeqIiEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %499, ptr noundef nonnull align 8 dereferenceable(12) %500, ptr noundef nonnull align 4 dereferenceable(4) %i.bj)
          to label %bb.bfr unwind label %bb.bhc

bb.bfr:                                           ; preds = %bb.bfq
  %i.bvx = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 762, ptr noundef nonnull @.str.45, ptr noundef nonnull align 8 dereferenceable(32) %499)
          to label %bb.bfs unwind label %bb.bhd   ; 0 uses

bb.bfs:                                           ; preds = %bb.bfr
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bun) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %501) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %500) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %499) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk) #29
  %i.bvy = load ptr, ptr %492, align 8, !tbaa !106 ; 2 uses
  %i.bvz = getelementptr inbounds nuw i8, ptr %i.bvy, i64 1
  %1345 = load i32, ptr %i.bvz, align 1
  %i.bwa = getelementptr inbounds nuw i8, ptr %i.bvy, i64 5
  %1346 = load i32, ptr %i.bwa, align 1
  %i.bwb = zext i32 %1345 to i64
  %i.bwc = zext i32 %1346 to i64
  %i.bwd = shl nuw i64 %i.bwc, 32
  %i.bwe = or disjoint i64 %i.bwd, %i.bwb
  %op.rdx = call i64 @llvm.bswap.i64(i64 %i.bwe)
  store i64 %op.rdx, ptr %i.bk, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %502) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %503) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %504) #29
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %504, i32 noundef 10)
          to label %bb.bft unwind label %bb.bhg

bb.bft:                                           ; preds = %bb.bfs
  %i.bwf = load i32, ptr %504, align 4, !tbaa !90
  store ptr %i.bk, ptr %503, align 8
  store i32 %i.bwf, ptr %.sroa.2500.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKmEeqIS3_EEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %502, ptr noundef nonnull align 8 dereferenceable(12) %503, ptr noundef nonnull align 8 dereferenceable(8) %i.bh)
          to label %bb.bfu unwind label %bb.bhg

bb.bfu:                                           ; preds = %bb.bft
  %i.bwg = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 771, ptr noundef nonnull @.str.36, ptr noundef nonnull align 8 dereferenceable(32) %502)
          to label %bb.bfv unwind label %bb.bhh   ; 0 uses

bb.bfv:                                           ; preds = %bb.bfu
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.buo) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %504) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %503) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %502) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %505) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %506) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %507) #29
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %507, i32 noundef 10)
          to label %bb.bfw unwind label %bb.bhj

bb.bfw:                                           ; preds = %bb.bfv
  call void @llvm.lifetime.start.p0(ptr nonnull %508) #29
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE12from_msgpackIRKSC_EESD_OT_bb(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %508, ptr noundef nonnull align 8 dereferenceable(24) %492, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.bfx unwind label %bb.bhk

bb.bfx:                                           ; preds = %bb.bfw
  call void @llvm.experimental.noalias.scope.decl(metadata !888)
  %i.bwh = load i32, ptr %507, align 4, !tbaa !90, !noalias !888
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %506, ptr noundef nonnull align 8 dereferenceable(16) %508, i64 16, i1 false), !tbaa.struct !111
  store i8 0, ptr %508, align 8, !tbaa !113, !noalias !888
  store ptr null, ptr %i.bup, align 8, !tbaa !101, !noalias !888
  store i32 %i.bwh, ptr %i.buq, align 8, !tbaa !115, !alias.scope !888
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRKSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISM_EEtlNS0_6ResultEEESN_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %505, ptr noundef nonnull align 8 dereferenceable(20) %506, ptr noundef nonnull align 8 dereferenceable(16) %487)
          to label %bb.bfy unwind label %bb.bhl

bb.bfy:                                           ; preds = %bb.bfx
  %i.bwi = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 774, ptr noundef nonnull @.str.20, ptr noundef nonnull align 8 dereferenceable(32) %505)
          to label %bb.bfz unwind label %bb.bhm   ; 0 uses

bb.bfz:                                           ; preds = %bb.bfy
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bur) #29
  %i.bwj = load i8, ptr %506, align 8, !tbaa !100
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bus, i8 noundef zeroext %i.bwj)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit4623 unwind label %bb.bga, !inline_history !107

bb.bga:                                           ; preds = %bb.bfz
  %i.bwk = landingpad { ptr, i32 }
          catch ptr null
  %i.bwl = extractvalue { ptr, i32 } %i.bwk, 0
  call void @__clang_call_terminate(ptr %i.bwl) #30, !inline_history !107
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit4623: ; preds = %bb.bfz
  %i.bwm = load i8, ptr %508, align 8, !tbaa !100
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bup, i8 noundef zeroext %i.bwm)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4624 unwind label %bb.bgb, !inline_history !107

bb.bgb:                                           ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit4623
  %i.bwn = landingpad { ptr, i32 }
          catch ptr null
  %i.bwo = extractvalue { ptr, i32 } %i.bwn, 0
  call void @__clang_call_terminate(ptr %i.bwo) #30, !inline_history !107
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4624: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit4623
  call void @llvm.lifetime.end.p0(ptr nonnull %508) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %507) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %506) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %505) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %509) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %510) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %511) #29
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %511, i32 noundef 10)
          to label %bb.bgc unwind label %bb.bhq

bb.bgc:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4624
  call void @llvm.lifetime.start.p0(ptr nonnull %512) #29
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE12from_msgpackIRKSC_EESD_OT_bb(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %512, ptr noundef nonnull align 8 dereferenceable(24) %492, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.bgd unwind label %bb.bhr

bb.bgd:                                           ; preds = %bb.bgc
  call void @llvm.experimental.noalias.scope.decl(metadata !889)
  %i.bwp = load i32, ptr %511, align 4, !tbaa !90, !noalias !889
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %510, ptr noundef nonnull align 8 dereferenceable(16) %512, i64 16, i1 false), !tbaa.struct !111
  store i8 0, ptr %512, align 8, !tbaa !113, !noalias !889
  store ptr null, ptr %i.but, align 8, !tbaa !101, !noalias !889
  store i32 %i.bwp, ptr %i.buu, align 8, !tbaa !115, !alias.scope !889
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRKSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISM_EEtlNS0_6ResultEEESN_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %509, ptr noundef nonnull align 8 dereferenceable(20) %510, ptr noundef nonnull align 8 dereferenceable(16) %487)
          to label %bb.bge unwind label %bb.bhs

bb.bge:                                           ; preds = %bb.bgd
  %i.bwq = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 775, ptr noundef nonnull @.str.21, ptr noundef nonnull align 8 dereferenceable(32) %509)
          to label %bb.bgf unwind label %bb.bht   ; 0 uses

bb.bgf:                                           ; preds = %bb.bge
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.buv) #29
  %i.bwr = load i8, ptr %510, align 8, !tbaa !100
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.buw, i8 noundef zeroext %i.bwr)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit4625 unwind label %bb.bgg, !inline_history !107

bb.bgg:                                           ; preds = %bb.bgf
  %i.bws = landingpad { ptr, i32 }
          catch ptr null
  %i.bwt = extractvalue { ptr, i32 } %i.bws, 0
  call void @__clang_call_terminate(ptr %i.bwt) #30, !inline_history !107
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit4625: ; preds = %bb.bgf
  %i.bwu = load i8, ptr %512, align 8, !tbaa !100
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.but, i8 noundef zeroext %i.bwu)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4626 unwind label %bb.bgh, !inline_history !107

bb.bgh:                                           ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit4625
  %i.bwv = landingpad { ptr, i32 }
          catch ptr null
  %i.bww = extractvalue { ptr, i32 } %i.bwv, 0
  call void @__clang_call_terminate(ptr %i.bww) #30, !inline_history !107
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4626: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit4625
  call void @llvm.lifetime.end.p0(ptr nonnull %512) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %511) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %510) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %509) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk) #29
  %i.bwx = load ptr, ptr %492, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i4627 = icmp eq ptr %i.bwx, null
  br i1 %.not.i.i.i4627, label %_ZNSt6vectorIhSaIhEED2Ev.exit4629, label %bb.bgi

bb.bgi:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4626
  call void @_ZdlPv(ptr noundef nonnull %i.bwx) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit4629

_ZNSt6vectorIhSaIhEED2Ev.exit4629:                ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4626, %bb.bgi
  call void @llvm.lifetime.end.p0(ptr nonnull %492) #29
  %i.bwy = load ptr, ptr %491, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i4630 = icmp eq ptr %i.bwy, null
  br i1 %.not.i.i.i4630, label %_ZNSt6vectorIhSaIhEED2Ev.exit4632, label %bb.bgj

bb.bgj:                                           ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit4629
  call void @_ZdlPv(ptr noundef nonnull %i.bwy) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit4632

_ZNSt6vectorIhSaIhEED2Ev.exit4632:                ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit4629, %bb.bgj
  call void @llvm.lifetime.end.p0(ptr nonnull %491) #29
  %i.bwz = load i8, ptr %487, align 8, !tbaa !100
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bug, i8 noundef zeroext %i.bwz)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4633 unwind label %bb.bgk, !inline_history !107

bb.bgk:                                           ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit4632
  %i.bxa = landingpad { ptr, i32 }
          catch ptr null
  %i.bxb = extractvalue { ptr, i32 } %i.bxa, 0
  call void @__clang_call_terminate(ptr %i.bxb) #30, !inline_history !107
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4633: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit4632
  call void @llvm.lifetime.end.p0(ptr nonnull %487) #29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_14EE", i64 16), ptr %486, align 8, !tbaa !87
  %i.bxc = load i8, ptr %i.bux, align 8, !tbaa !94, !range !95, !noundef !96
  %i.bxd = trunc nuw i8 %i.bxc to i1
  br i1 %i.bxd, label %bb.bgl, label %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_14ED2Ev.exit"

bb.bgl:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4633
  invoke void @_ZN7doctest6detail16ContextScopeBase7destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %486)
          to label %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_14ED2Ev.exit" unwind label %bb.bgm, !inline_history !141

bb.bgm:                                           ; preds = %bb.bgl
  %i.bxe = landingpad { ptr, i32 }
          catch ptr null
  %i.bxf = extractvalue { ptr, i32 } %i.bxe, 0
  call void @__clang_call_terminate(ptr %i.bxf) #30, !inline_history !141
  unreachable

"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_14ED2Ev.exit": ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4633, %bb.bgl
  call void @_ZN7doctest13IContextScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(24) %486) #29, !inline_history !141
  call void @llvm.lifetime.end.p0(ptr nonnull %486) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh) #29
  %.02216.add = add nuw nsw i64 %.02216.idx8091, 8 ; 2 uses
  %.not2371 = icmp eq i64 %.02216.add, 16
  br i1 %.not2371, label %bb.bex, label %bb.bfd

bb.bgn:                                           ; preds = %bb.bfd
  %i.bxg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bic

bb.bgo:                                           ; preds = %bb.bfe
  %i.bxh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bgr

end_hunk_2
begin_hunk_3_@_GLOBAL__sub_I_unit_msgpack.cpp:bb.a
bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %common.resume

__cxx_global_var_init.1.exit:                     ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 120
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #29
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 88
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.j) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(144) %6) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  store i32 0, ptr @_ZN5utilsL18DOCTEST_ANON_VAR_3E, align 4, !tbaa !116
  %i.k = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZN5utilsL18DOCTEST_ANON_VAR_3E) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.l = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN28doctest_detail_test_suite_ns19getCurrentTestSuiteEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @_ZN7doctest6StringC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #29
  invoke void @_ZN7doctest6detail8TestCaseC1EPFvvEPKcjRKNS0_9TestSuiteERKNS_6StringEi(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull @_ZL19DOCTEST_ANON_FUNC_7v, ptr noundef nonnull @.str.5, i32 noundef 103, ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef -1)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %__cxx_global_var_init.1.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN7doctest6detail8TestCasemlEPKc(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull @.str.6)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.n = invoke noundef i32 @_ZN7doctest6detail7regTestERKNS0_8TestCaseE(ptr noundef nonnull align 8 dereferenceable(144) %i.m)
          to label %__cxx_global_var_init.4.exit unwind label %bb.j ; 0 uses

bb.i:                                             ; preds = %__cxx_global_var_init.1.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6detail8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #29
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn.i1 = phi { ptr, i32 } [ %i.p, %bb.j ], [ %i.o, %bb.i ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %common.resume

__cxx_global_var_init.4.exit:                     ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 120
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.q) #29
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.r) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(144) %4) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  store i32 0, ptr @_ZL18DOCTEST_ANON_VAR_8, align 4, !tbaa !116
  %i.s = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZL18DOCTEST_ANON_VAR_8) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.t = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN28doctest_detail_test_suite_ns19getCurrentTestSuiteEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN7doctest6StringC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #29
  invoke void @_ZN7doctest6detail8TestCaseC1EPFvvEPKcjRKNS0_9TestSuiteERKNS_6StringEi(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @_ZL21DOCTEST_ANON_FUNC_159v, ptr noundef nonnull @.str.5, i32 noundef 1601, ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %__cxx_global_var_init.4.exit
  %i.u = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN7doctest6detail8TestCasemlEPKc(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.8)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.v = invoke noundef i32 @_ZN7doctest6detail7regTestERKNS0_8TestCaseE(ptr noundef nonnull align 8 dereferenceable(144) %i.u)
          to label %__cxx_global_var_init.7.exit unwind label %bb.o ; 0 uses

bb.n:                                             ; preds = %__cxx_global_var_init.4.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6detail8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %2) #29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn.i2 = phi { ptr, i32 } [ %i.x, %bb.o ], [ %i.w, %bb.n ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %common.resume

__cxx_global_var_init.7.exit:                     ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.y) #29
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 88
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.z) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(144) %2) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  store i32 0, ptr @_ZL20DOCTEST_ANON_VAR_160, align 4, !tbaa !116
  %i.aa = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZL20DOCTEST_ANON_VAR_160) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #29
  %i.ab = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN28doctest_detail_test_suite_ns19getCurrentTestSuiteEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @_ZN7doctest6StringC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #29
  invoke void @_ZN7doctest6detail8TestCaseC1EPFvvEPKcjRKNS0_9TestSuiteERKNS_6StringEi(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull @_ZL21DOCTEST_ANON_FUNC_165v, ptr noundef nonnull @.str.5, i32 noundef 1644, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %__cxx_global_var_init.7.exit
  %i.ac = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN7doctest6detail8TestCasemlEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull @.str.10)
          to label %bb.r unwind label %bb.t       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store i8 1, ptr %i.ad, align 8, !tbaa !2375
  %i.ae = invoke noundef i32 @_ZN7doctest6detail7regTestERKNS0_8TestCaseE(ptr noundef nonnull align 8 dereferenceable(144) %i.ac)
          to label %__cxx_global_var_init.9.exit unwind label %bb.u ; 0 uses

bb.s:                                             ; preds = %__cxx_global_var_init.7.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.t:                                             ; preds = %bb.q
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn.i3 = phi { ptr, i32 } [ %i.ah, %bb.u ], [ %i.ag, %bb.t ]
  call void @_ZN7doctest6detail8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #29
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i3, %bb.v ], [ %i.af, %bb.s ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #29
  br label %common.resume

__cxx_global_var_init.9.exit:                     ; preds = %bb.r
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ai) #29
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aj) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(144) %0) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #29
  store i32 0, ptr @_ZL20DOCTEST_ANON_VAR_166, align 4, !tbaa !116
  %i.ak = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZL20DOCTEST_ANON_VAR_166) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #24

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind memory(none) }
attributes #13 = { cold noreturn }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nounwind }
attributes #30 = { noreturn nounwind }
attributes #31 = { builtin nounwind }
attributes #32 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #33 = { noreturn }
attributes #34 = { nounwind willreturn memory(read) }
attributes #35 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!77, !78, !79}
!llvm.ident = !{!80}
!llvm.errno.tbaa = !{!85}

!0 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail14output_adapterIcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail14output_adapterIhNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEEEED2Ev, ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2 = distinct !{!2, !120}
!3 = distinct !{!3, !120}
!4 = distinct !{ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!5 = distinct !{null, null}
!6 = distinct !{!6, !120}
!7 = distinct !{!7, !120}
!8 = distinct !{null}
!9 = distinct !{!9, !120}
!10 = distinct !{null}
!11 = distinct !{!11, !120}
!12 = distinct !{!12, !120}
!13 = distinct !{!13, !120}
!14 = distinct !{null, null, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev, null, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev}
!15 = distinct !{null, null}
!16 = distinct !{null}
!17 = distinct !{!17, !120}
!18 = distinct !{!18, !120}
!19 = distinct !{!19, !120}
!20 = distinct !{!20, !120}
!21 = distinct !{!21, !120}
!22 = distinct !{!22, !120}
!23 = distinct !{ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!24 = distinct !{!24, !120}
!25 = distinct !{null}
!26 = distinct !{null, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev}
!27 = distinct !{null}
!28 = distinct !{null, null}
!29 = distinct !{null}
!30 = distinct !{null, null, ptr @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterENS1_19json_sax_dom_parserISF_SG_EEE3getEv, null, null}
!31 = distinct !{null}
!32 = distinct !{!32, !120}
!33 = distinct !{null, ptr @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterENS1_19json_sax_dom_parserISF_SG_EEE3getEv, null, null}
!34 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterENS1_19json_sax_dom_parserISF_SG_EEE3getEv, null, null}
!35 = distinct !{!35, !120}
!36 = distinct !{null, null}
!37 = distinct !{!37, !120}
!38 = distinct !{null}
!39 = distinct !{null}
!40 = distinct !{!40, !120}
!41 = distinct !{!41, !120}
!42 = distinct !{!42, !120}
!43 = distinct !{!43, !120}
!44 = distinct !{!44, !120}
!45 = distinct !{!45, !120}
!46 = distinct !{!46, !120}
!47 = distinct !{!47, !120}
!48 = distinct !{!48, !120}
!49 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterEE3getEv, null, null}
!50 = distinct !{null}
!51 = distinct !{!51, !120}
!52 = distinct !{null}
!53 = distinct !{!53, !120}
!54 = distinct !{!54, !120}
!55 = distinct !{!55, !120}
!56 = distinct !{!56, !120}
!57 = distinct !{!57, !120}
!58 = distinct !{!58, !120}
!59 = distinct !{null}
!60 = distinct !{!60, !120}
!61 = distinct !{null}
!62 = distinct !{!62, !120}
!63 = distinct !{!63, !120}
!64 = distinct !{!64, !120}
!65 = distinct !{!65, !120}
!66 = distinct !{!66, !120}
!67 = distinct !{!67, !120}
!68 = distinct !{null}
!69 = distinct !{!69, !120}
!70 = distinct !{null}
!71 = distinct !{!71, !120}
!72 = distinct !{!72, !120}
!73 = distinct !{!73, !120}
!74 = distinct !{!74, !120}
!75 = distinct !{!75, !120}
!76 = distinct !{!76, !120}
!77 = !{i32 8, !"PIC Level", i32 2}
!78 = !{i32 7, !"PIE Level", i32 2}
!79 = !{i32 7, !"uwtable", i32 2}
!80 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!81 = !{!"Simple C++ TBAA"}
!82 = !{!"omnipotent char", !81, i64 0}
!83 = !{!"int", !82, i64 0}
!84 = !{!"__libc_errno", !83, i64 0}
!85 = !{!84, !83, i64 0}
!86 = !{!"vtable pointer", !81, i64 0}
!87 = !{!86, !86, i64 0}
!88 = !{!"_ZTSN7doctest10assertType4EnumE", !82, i64 0}
!89 = !{!"_ZTSN7doctest6detail20ExpressionDecomposerE", !88, i64 0}
!90 = !{!89, !88, i64 0}
!91 = !{!"_ZTSN7doctest13IContextScopeE"}
!92 = !{!"bool", !82, i64 0}
!93 = !{!"_ZTSN7doctest6detail16ContextScopeBaseE", !91, i64 0, !92, i64 8}
!94 = !{!93, !92, i64 8}
!95 = !{i8 0, i8 2}
!96 = !{}
!97 = !{ptr @"_ZN7doctest6detail12ContextScopeIZN5utilsL19DOCTEST_ANON_FUNC_2EvE3$_0ED2Ev"}
!98 = !{!"_ZTSN8nlohmann16json_abi_v3_12_06detail7value_tE", !82, i64 0}
!99 = !{!"_ZTSN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataE", !98, i64 0, !82, i64 8}
!100 = !{!99, !98, i64 0}
!101 = !{!82, !82, i64 0}
!102 = !{!"any pointer", !82, i64 0}
!103 = !{!"p1 omnipotent char", !102, i64 0}
!104 = !{!103, !103, i64 0}
!105 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !103, i64 0, !103, i64 8, !103, i64 16}
!106 = !{!105, !103, i64 0}
!107 = !{ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev}
!108 = !{!105, !103, i64 16}
!109 = !{!105, !103, i64 8}
!110 = !{!98, !98, i64 0}
!111 = !{i64 0, i64 1, !110, i64 8, i64 8, !101}
!112 = !{!"_ZTSN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEE", !99, i64 0}
!113 = !{!112, !98, i64 0}
!114 = !{!"_ZTSN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEE", !112, i64 0, !88, i64 16}
!115 = !{!114, !88, i64 16}
!116 = !{!83, !83, i64 0}
!117 = !{!"p1 int", !102, i64 0}
!118 = !{!117, !117, i64 0}
!119 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_0ED2Ev"}
!120 = !{!"llvm.loop.mustprogress"}
!121 = !{!"long", !82, i64 0}
!122 = !{!121, !121, i64 0}
!123 = !{!"p1 long", !102, i64 0}
!124 = !{!123, !123, i64 0}
!125 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_1ED2Ev"}
!126 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_2ED2Ev"}
!127 = !{!"short", !82, i64 0}
!128 = !{!127, !127, i64 0}
!129 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_3ED2Ev"}
!130 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_4ED2Ev"}
!131 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_5ED2Ev"}
!132 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_6ED2Ev"}
!133 = !{!"p1 short", !102, i64 0}
!134 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_7ED2Ev"}
!135 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_8ED2Ev"}
!136 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_9ED2Ev"}
!137 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_10ED2Ev"}
!138 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_11ED2Ev"}
!139 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_12ED2Ev"}
!140 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_13ED2Ev"}
!141 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_14ED2Ev"}
!142 = !{!"double", !82, i64 0}
!143 = !{!142, !142, i64 0}
!144 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !103, i64 0}
!145 = !{!144, !103, i64 0}
!146 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !144, i64 0, !121, i64 8, !82, i64 16}
!147 = !{!146, !103, i64 0}
!148 = !{!146, !121, i64 8}
!149 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_15ED2Ev"}
!150 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_16ED2Ev"}
!151 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!152 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_17ED2Ev"}
!153 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_18ED2Ev"}
!154 = !{!"_ZTSSt14_Function_base", !82, i64 0, !102, i64 16}
!155 = !{!154, !102, i64 16}
!156 = !{!"p1 _ZTSN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEE", !102, i64 0}
!157 = !{!"_ZTSNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE17_Vector_impl_dataE", !156, i64 0, !156, i64 8, !156, i64 16}
!158 = !{!157, !156, i64 8}
end_hunk_3
