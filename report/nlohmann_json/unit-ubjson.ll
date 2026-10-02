Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-ubjson?download=true
inline.NumInlined: 18214
inline.NumDeleted: 3041
loop-unroll.NumCompletelyUnrolled: 276
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 280
begin_hunk_0_@_ZL19DOCTEST_ANON_FUNC_7v:bb.a
          cleanup
  br label %bb.bvd

bb.ha:                                            ; preds = %bb.gl
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.hc

bb.hb:                                            ; preds = %bb.gm
  %i.lq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %72) #31
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %.pn3655 = phi { ptr, i32 } [ %i.lq, %bb.hb ], [ %i.lp, %bb.ha ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #31
  br label %bb.bvd

bb.hd:                                            ; preds = %bb.gn
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ape

bb.he:                                            ; preds = %bb.gp
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %bb.hg

bb.hf:                                            ; preds = %bb.gq
  %i.lt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %74) #31
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he
  %.pn3657 = phi { ptr, i32 } [ %i.lt, %bb.hf ], [ %i.ls, %bb.he ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #31
  br label %bb.ape

bb.hh:                                            ; preds = %bb.gr
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %bb.km

bb.hi:                                            ; preds = %bb.gt
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %bb.km

bb.hj:                                            ; preds = %bb.gu, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_2ED2Ev.exit"
  %.sroa.012066.0.idx12630 = phi i64 [ 0, %bb.gu ], [ %.sroa.012066.0.add, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_2ED2Ev.exit" ] ; 2 uses
  %.sroa.012066.0.ptr = getelementptr inbounds nuw i8, ptr %i.kr, i64 %.sroa.012066.0.idx12630
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.lw = load i64, ptr %.sroa.012066.0.ptr, align 8, !tbaa !105
  store i64 %i.lw, ptr %i.e, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #31
  invoke void @_ZN7doctest6detail16ContextScopeBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %75)
          to label %bb.hk unwind label %bb.it

bb.hk:                                            ; preds = %bb.hj
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_2EE", i64 16), ptr %75, align 8, !tbaa !75, !alias.scope !972
  store i64 %i.ks, ptr %i.kt, align 8, !tbaa !107, !alias.scope !972
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %76, i8 0, i64 16, i1 false)
  %i.lx = load i64, ptr %i.e, align 8, !tbaa !105
  store i8 5, ptr %76, align 8, !tbaa !101
  store i64 %i.lx, ptr %i.ku, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %79, i32 noundef 10)
          to label %bb.hl unwind label %bb.iu

bb.hl:                                            ; preds = %bb.hk
  %i.ly = load i8, ptr %76, align 8, !tbaa !101
  %i.lz = add i8 %i.ly, -5
  %spec.select.i = icmp ult i8 %i.lz, 2
  %i.ma = load i32, ptr %79, align 4, !tbaa !78
  %.sroa.22.0.insert.ext.i6479 = zext i32 %i.ma to i64
  %.sroa.22.0.insert.shift.i6480 = shl nuw i64 %.sroa.22.0.insert.ext.i6479, 32
  %.sroa.0.0.insert.ext.i6481 = zext i1 %spec.select.i to i64
  %.sroa.0.0.insert.insert.i6482 = or disjoint i64 %.sroa.22.0.insert.shift.i6480, %.sroa.0.0.insert.ext.i6481
  store i64 %.sroa.0.0.insert.insert.i6482, ptr %78, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIbEcvNS0_6ResultEEv(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %77, ptr noundef nonnull align 4 dereferenceable(8) %78)
          to label %bb.hm unwind label %bb.iv

bb.hm:                                            ; preds = %bb.hl
  %i.mb = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 177, ptr noundef nonnull @.str.30, ptr noundef nonnull align 8 dereferenceable(32) %77)
          to label %bb.hn unwind label %bb.iw     ; 0 uses

bb.hn:                                            ; preds = %bb.hm
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.kv) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #31
  %i.mc = load <8 x i8>, ptr %i.e, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %80, i8 0, i64 24, i1 false)
  %i.md = invoke noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #34
          to label %bb.ho unwind label %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i6484 ; 4 uses

_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i6484:       ; preds = %bb.hn
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %.body6485

bb.ho:                                            ; preds = %bb.hn
  store ptr %i.md, ptr %80, align 8, !tbaa !94
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 9 ; 2 uses
  store ptr %i.mf, ptr %i.kw, align 8, !tbaa !96
  store i8 76, ptr %i.md, align 1
  %.sroa.512055.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.md, i64 1
  %i.mg = shufflevector <8 x i8> %i.mc, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.mg, ptr %.sroa.512055.0..sroa_idx, align 1
  store ptr %i.mf, ptr %i.kx, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #31
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9to_ubjsonERKSD_bb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %81, ptr noundef nonnull align 8 dereferenceable(16) %76, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.hp unwind label %bb.iy

bb.hp:                                            ; preds = %bb.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %84, i32 noundef 10)
          to label %bb.hq unwind label %bb.iz

bb.hq:                                            ; preds = %bb.hp
  %i.mh = load i32, ptr %84, align 4, !tbaa !78
  store ptr %81, ptr %83, align 8
  store i32 %i.mh, ptr %.sroa.21213.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKSt6vectorIhSaIhEEEeqIS6_EEDTcmcvveqclL_ZNS0_7declvalIS6_EEOT_vEEclsr7doctest6detailE7declvalISA_EEtlNS0_6ResultEEESB_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %82, ptr noundef nonnull align 8 dereferenceable(12) %83, ptr noundef nonnull align 8 dereferenceable(24) %80)
          to label %bb.hr unwind label %bb.iz

bb.hr:                                            ; preds = %bb.hq
  %i.mi = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 195, ptr noundef nonnull @.str.21, ptr noundef nonnull align 8 dereferenceable(32) %82)
          to label %bb.hs unwind label %bb.ja     ; 0 uses

bb.hs:                                            ; preds = %bb.hr
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ky) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %87, i32 noundef 10)
          to label %bb.ht unwind label %bb.jc

bb.ht:                                            ; preds = %bb.hs
  %i.mj = load ptr, ptr %i.kz, align 8, !tbaa !97
  %i.mk = load ptr, ptr %81, align 8, !tbaa !94
  %i.ml = ptrtoint ptr %i.mj to i64
  %i.mm = ptrtoint ptr %i.mk to i64
  %i.mn = sub i64 %i.ml, %i.mm
  %i.mo = load i32, ptr %87, align 4, !tbaa !78
  store i64 %i.mn, ptr %86, align 8
  store i32 %i.mo, ptr %.sroa.21209.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  store i32 9, ptr %i.f, align 4, !tbaa !108
  invoke void @_ZN7doctest6detail14Expression_lhsImEeqIiEEDTcmcvveqclL_ZNS0_7declvalImEEOT_vEEclsr7doctest6detailE7declvalIS5_EEtlNS0_6ResultEEES6_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %85, ptr noundef nonnull align 8 dereferenceable(12) %86, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %bb.hu unwind label %bb.jd

bb.hu:                                            ; preds = %bb.ht
  %i.mp = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 196, ptr noundef nonnull @.str.31, ptr noundef nonnull align 8 dereferenceable(32) %85)
          to label %bb.hv unwind label %bb.je     ; 0 uses

bb.hv:                                            ; preds = %bb.hu
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.la) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %90, i32 noundef 10)
          to label %bb.hw unwind label %bb.jh

bb.hw:                                            ; preds = %bb.hv
  %i.mq = load ptr, ptr %81, align 8, !tbaa !94
  %i.mr = load i32, ptr %90, align 4, !tbaa !78
  store ptr %i.mq, ptr %89, align 8
  store i32 %i.mr, ptr %.sroa.21205.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  store i8 76, ptr %i.g, align 1, !tbaa !89
  invoke void @_ZN7doctest6detail14Expression_lhsIRKhEeqIcEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %88, ptr noundef nonnull align 8 dereferenceable(12) %89, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
          to label %bb.hx unwind label %bb.ji

bb.hx:                                            ; preds = %bb.hw
  %i.ms = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 199, ptr noundef nonnull @.str.32, ptr noundef nonnull align 8 dereferenceable(32) %88)
          to label %bb.hy unwind label %bb.jj     ; 0 uses

bb.hy:                                            ; preds = %bb.hx
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.lb) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  %i.mt = load ptr, ptr %81, align 8, !tbaa !94   ; 8 uses
  %2159 = getelementptr inbounds nuw i8, ptr %i.mt, i64 1
  %2160 = load i8, ptr %2159, align 1, !tbaa !89
  %2161 = zext i8 %2160 to i64
  %2162 = shl nuw i64 %2161, 56
  %2163 = getelementptr inbounds nuw i8, ptr %i.mt, i64 2
  %2164 = load i8, ptr %2163, align 1, !tbaa !89
  %2165 = zext i8 %2164 to i64
  %2166 = shl nuw nsw i64 %2165, 48
  %2167 = or disjoint i64 %2166, %2162
  %2168 = getelementptr inbounds nuw i8, ptr %i.mt, i64 3
  %2169 = load i8, ptr %2168, align 1, !tbaa !89
  %2170 = zext i8 %2169 to i64
  %2171 = shl nuw nsw i64 %2170, 40
  %2172 = or disjoint i64 %2167, %2171
  %2173 = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  %2174 = load i8, ptr %2173, align 1, !tbaa !89
  %2175 = zext i8 %2174 to i64
  %2176 = shl nuw nsw i64 %2175, 32
  %2177 = or disjoint i64 %2172, %2176
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 5
  %2178 = load i8, ptr %i.mu, align 1, !tbaa !89
  %2179 = zext i8 %2178 to i64
  %2180 = shl nuw nsw i64 %2179, 24
  %2181 = or disjoint i64 %2177, %2180
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 6
  %2182 = load i8, ptr %i.mv, align 1, !tbaa !89
  %i.mw = zext i8 %2182 to i64
  %2183 = shl nuw nsw i64 %i.mw, 16
  %2184 = or disjoint i64 %2181, %2183
  %2185 = getelementptr inbounds nuw i8, ptr %i.mt, i64 7
  %2186 = load i8, ptr %2185, align 1, !tbaa !89
  %i.mx = zext i8 %2186 to i64
  %i.my = shl nuw nsw i64 %i.mx, 8
  %i.mz = or disjoint i64 %2184, %i.my
  %2187 = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %2188 = load i8, ptr %2187, align 1, !tbaa !89
  %2189 = zext i8 %2188 to i64
  %2190 = add nuw nsw i64 %i.mz, %2189
  store i64 %2190, ptr %i.h, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %93, i32 noundef 10)
          to label %bb.hz unwind label %bb.jm

bb.hz:                                            ; preds = %bb.hy
  %i.na = load i32, ptr %93, align 4, !tbaa !78
  store ptr %i.h, ptr %92, align 8
  store i32 %i.na, ptr %.sroa.21201.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKlEeqIRlEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS8_EEtlNS0_6ResultEEES9_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %91, ptr noundef nonnull align 8 dereferenceable(12) %92, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ia unwind label %bb.jm

bb.ia:                                            ; preds = %bb.hz
  %i.nb = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 208, ptr noundef nonnull @.str.33, ptr noundef nonnull align 8 dereferenceable(32) %91)
          to label %bb.ib unwind label %bb.jn     ; 0 uses

bb.ib:                                            ; preds = %bb.ia
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.lc) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %96, i32 noundef 10)
          to label %bb.ic unwind label %bb.jp

bb.ic:                                            ; preds = %bb.ib
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #31
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE11from_ubjsonIRKSC_EESD_OT_bb(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %97, ptr noundef nonnull align 8 dereferenceable(24) %81, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.id unwind label %bb.jq

bb.id:                                            ; preds = %bb.ic
  call void @llvm.experimental.noalias.scope.decl(metadata !973)
  %i.nc = load i32, ptr %96, align 4, !tbaa !78, !noalias !973
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %95, ptr noundef nonnull align 8 dereferenceable(16) %97, i64 16, i1 false), !tbaa.struct !99
  store i8 0, ptr %97, align 8, !tbaa !101, !noalias !973
  store ptr null, ptr %i.ld, align 8, !tbaa !89, !noalias !973
  store i32 %i.nc, ptr %i.le, align 8, !tbaa !103, !alias.scope !973
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRKSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISM_EEtlNS0_6ResultEEESN_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %94, ptr noundef nonnull align 8 dereferenceable(20) %95, ptr noundef nonnull align 8 dereferenceable(16) %76)
          to label %bb.ie unwind label %bb.jr

bb.ie:                                            ; preds = %bb.id
  %i.nd = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 211, ptr noundef nonnull @.str.22, ptr noundef nonnull align 8 dereferenceable(32) %94)
          to label %bb.if unwind label %bb.js     ; 0 uses

bb.if:                                            ; preds = %bb.ie
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.lf) #31
  %i.ne = load i8, ptr %95, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.lg, i8 noundef zeroext %i.ne)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6496 unwind label %bb.ig, !inline_history !95

bb.ig:                                            ; preds = %bb.if
  %i.nf = landingpad { ptr, i32 }
          catch ptr null
  %i.ng = extractvalue { ptr, i32 } %i.nf, 0
  call void @__clang_call_terminate(ptr %i.ng) #32, !inline_history !95
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6496: ; preds = %bb.if
  %i.nh = load i8, ptr %97, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ld, i8 noundef zeroext %i.nh)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6497 unwind label %bb.ih, !inline_history !95

bb.ih:                                            ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6496
  %i.ni = landingpad { ptr, i32 }
          catch ptr null
  %i.nj = extractvalue { ptr, i32 } %i.ni, 0
  call void @__clang_call_terminate(ptr %i.nj) #32, !inline_history !95
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6497: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6496
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %100, i32 noundef 10)
          to label %bb.ii unwind label %bb.jw

bb.ii:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6497
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #31
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE11from_ubjsonIRKSC_EESD_OT_bb(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %101, ptr noundef nonnull align 8 dereferenceable(24) %81, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.ij unwind label %bb.jx

bb.ij:                                            ; preds = %bb.ii
  call void @llvm.experimental.noalias.scope.decl(metadata !974)
  %i.nk = load i32, ptr %100, align 4, !tbaa !78, !noalias !974
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %99, ptr noundef nonnull align 8 dereferenceable(16) %101, i64 16, i1 false), !tbaa.struct !99
  store i8 0, ptr %101, align 8, !tbaa !101, !noalias !974
  store ptr null, ptr %i.lh, align 8, !tbaa !89, !noalias !974
  store i32 %i.nk, ptr %i.li, align 8, !tbaa !103, !alias.scope !974
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRKSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISM_EEtlNS0_6ResultEEESN_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %98, ptr noundef nonnull align 8 dereferenceable(20) %99, ptr noundef nonnull align 8 dereferenceable(16) %76)
          to label %bb.ik unwind label %bb.jy

bb.ik:                                            ; preds = %bb.ij
  %i.nl = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 212, ptr noundef nonnull @.str.23, ptr noundef nonnull align 8 dereferenceable(32) %98)
          to label %bb.il unwind label %bb.jz     ; 0 uses

bb.il:                                            ; preds = %bb.ik
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.lj) #31
  %i.nm = load i8, ptr %99, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.lk, i8 noundef zeroext %i.nm)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6498 unwind label %bb.im, !inline_history !95

bb.im:                                            ; preds = %bb.il
  %i.nn = landingpad { ptr, i32 }
          catch ptr null
  %i.no = extractvalue { ptr, i32 } %i.nn, 0
  call void @__clang_call_terminate(ptr %i.no) #32, !inline_history !95
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6498: ; preds = %bb.il
  %i.np = load i8, ptr %101, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.lh, i8 noundef zeroext %i.np)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6499 unwind label %bb.in, !inline_history !95

bb.in:                                            ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6498
  %i.nq = landingpad { ptr, i32 }
          catch ptr null
  %i.nr = extractvalue { ptr, i32 } %i.nq, 0
  call void @__clang_call_terminate(ptr %i.nr) #32, !inline_history !95
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6499: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6498
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #31
  %i.ns = load ptr, ptr %81, align 8, !tbaa !94   ; 2 uses
  %.not.i.i.i6500 = icmp eq ptr %i.ns, null
  br i1 %.not.i.i.i6500, label %_ZNSt6vectorIhSaIhEED2Ev.exit6502, label %bb.io

bb.io:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6499
  call void @_ZdlPv(ptr noundef nonnull %i.ns) #33
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit6502

_ZNSt6vectorIhSaIhEED2Ev.exit6502:                ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6499, %bb.io
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #31
  %i.nt = load ptr, ptr %80, align 8, !tbaa !94   ; 2 uses
  %.not.i.i.i6503 = icmp eq ptr %i.nt, null
  br i1 %.not.i.i.i6503, label %_ZNSt6vectorIhSaIhEED2Ev.exit6505, label %bb.ip

bb.ip:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit6502
  call void @_ZdlPv(ptr noundef nonnull %i.nt) #33
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit6505

_ZNSt6vectorIhSaIhEED2Ev.exit6505:                ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit6502, %bb.ip
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #31
  %i.nu = load i8, ptr %76, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ku, i8 noundef zeroext %i.nu)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6506 unwind label %bb.iq, !inline_history !95

bb.iq:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit6505
  %i.nv = landingpad { ptr, i32 }
          catch ptr null
  %i.nw = extractvalue { ptr, i32 } %i.nv, 0
  call void @__clang_call_terminate(ptr %i.nw) #32, !inline_history !95
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6506: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit6505
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_2EE", i64 16), ptr %75, align 8, !tbaa !75
  %i.nx = load i8, ptr %i.ll, align 8, !tbaa !82, !range !83, !noundef !84
  %i.ny = trunc nuw i8 %i.nx to i1
  br i1 %i.ny, label %bb.ir, label %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_2ED2Ev.exit"

bb.ir:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6506
  invoke void @_ZN7doctest6detail16ContextScopeBase7destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %75)
          to label %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_2ED2Ev.exit" unwind label %bb.is, !inline_history !109

bb.is:                                            ; preds = %bb.ir
  %i.nz = landingpad { ptr, i32 }
          catch ptr null
  %i.oa = extractvalue { ptr, i32 } %i.nz, 0
  call void @__clang_call_terminate(ptr %i.oa) #32, !inline_history !109
  unreachable

"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_2ED2Ev.exit": ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6506, %bb.ir
  call void @_ZN7doctest13IContextScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(24) %75) #31, !inline_history !109
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  %.sroa.012066.0.add = add nuw nsw i64 %.sroa.012066.0.idx12630, 8 ; 2 uses
  %.not12140 = icmp eq i64 %.sroa.012066.0.add, 88
  br i1 %.not12140, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.hj

bb.it:                                            ; preds = %bb.hj
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit6514

bb.iu:                                            ; preds = %bb.hk
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ix

end_hunk_0
begin_hunk_1_@_ZL19DOCTEST_ANON_FUNC_7v:bb.a
  %i.axh = getelementptr inbounds nuw i8, ptr %351, i64 8 ; 2 uses
  %i.axi = getelementptr inbounds nuw i8, ptr %352, i64 8
  %i.axj = getelementptr inbounds nuw i8, ptr %358, i64 8 ; 2 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %356, i64 16
  %i.axl = getelementptr inbounds nuw i8, ptr %355, i64 8 ; 2 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %356, i64 8
  %i.axn = getelementptr inbounds nuw i8, ptr %332, i64 8
  br label %bb.als

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_10ED2Ev.exit"
  call void @_ZdlPv(ptr noundef nonnull %i.awt) #33
  br label %bb.aos

bb.alm:                                           ; preds = %bb.alf, %bb.aie
  %.pn6134.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn6134.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.alf ], [ %i.ath, %bb.aie ]
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %301) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %301) #31
  br label %bb.ape

bb.aln:                                           ; preds = %bb.alg
  %i.axo = landingpad { ptr, i32 }
          cleanup
  br label %bb.alp

bb.alo:                                           ; preds = %bb.alh
  %i.axp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %331) #31
  br label %bb.alp

bb.alp:                                           ; preds = %bb.alo, %bb.aln
  %.pn3707 = phi { ptr, i32 } [ %i.axp, %bb.alo ], [ %i.axo, %bb.aln ]
  call void @llvm.lifetime.end.p0(ptr nonnull %331) #31
  br label %bb.ape

bb.alq:                                           ; preds = %bb.ali
  %i.axq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aot

bb.alr:                                           ; preds = %bb.alk
  %i.axr = landingpad { ptr, i32 }
          cleanup
  br label %bb.aot

bb.als:                                           ; preds = %bb.all, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_10ED2Ev.exit"
  %.sroa.011936.0.idx12634 = phi i64 [ 0, %bb.all ], [ %.sroa.011936.0.add, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_10ED2Ev.exit" ] ; 2 uses
  %.sroa.011936.0.ptr = getelementptr inbounds nuw i8, ptr %i.awt, i64 %.sroa.011936.0.idx12634
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am) #31
  %i.axs = load i64, ptr %.sroa.011936.0.ptr, align 8, !tbaa !105
  store i64 %i.axs, ptr %i.am, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %332) #31
  invoke void @_ZN7doctest6detail16ContextScopeBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %332)
          to label %bb.alt unwind label %bb.anc

bb.alt:                                           ; preds = %bb.als
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_10EE", i64 16), ptr %332, align 8, !tbaa !75, !alias.scope !998
  store i64 %i.awu, ptr %i.awv, align 8, !tbaa !107, !alias.scope !998
  call void @llvm.lifetime.start.p0(ptr nonnull %333) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %333, i8 0, i64 16, i1 false)
  store i8 5, ptr %333, align 8, !tbaa !101
  store i64 -1, ptr %i.aww, align 8, !tbaa !89
  %i.axt = load i64, ptr %i.am, align 8, !tbaa !105
  %i.axu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE12get_ref_implIRlSD_EET_RT0_(ptr noundef nonnull align 8 dereferenceable(16) %333)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRlTnNSt9enable_ifIXsr3std12is_referenceIT_EE5valueEiE4typeELi0EEESH_v.exit6874 unwind label %bb.and

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRlTnNSt9enable_ifIXsr3std12is_referenceIT_EE5valueEiE4typeELi0EEESH_v.exit6874: ; preds = %bb.alt
  store i64 %i.axt, ptr %i.axu, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %334) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %335) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %336) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %336, i32 noundef 10)
          to label %bb.alu unwind label %bb.ane

bb.alu:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRlTnNSt9enable_ifIXsr3std12is_referenceIT_EE5valueEiE4typeELi0EEESH_v.exit6874
  %i.axv = load i8, ptr %333, align 8, !tbaa !101
  %i.axw = add i8 %i.axv, -5
  %spec.select.i6875 = icmp ult i8 %i.axw, 2
  %i.axx = load i32, ptr %336, align 4, !tbaa !78
  %.sroa.22.0.insert.ext.i6876 = zext i32 %i.axx to i64
  %.sroa.22.0.insert.shift.i6877 = shl nuw i64 %.sroa.22.0.insert.ext.i6876, 32
  %.sroa.0.0.insert.ext.i6878 = zext i1 %spec.select.i6875 to i64
  %.sroa.0.0.insert.insert.i6879 = or disjoint i64 %.sroa.22.0.insert.shift.i6877, %.sroa.0.0.insert.ext.i6878
  store i64 %.sroa.0.0.insert.insert.i6879, ptr %335, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIbEcvNS0_6ResultEEv(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %334, ptr noundef nonnull align 4 dereferenceable(8) %335)
          to label %bb.alv unwind label %bb.anf

bb.alv:                                           ; preds = %bb.alu
  %i.axy = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 519, ptr noundef nonnull @.str.30, ptr noundef nonnull align 8 dereferenceable(32) %334)
          to label %bb.alw unwind label %bb.ang   ; 0 uses

bb.alw:                                           ; preds = %bb.alv
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.awx) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %336) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %335) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %334) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %337) #31
  %i.axz = load <8 x i8>, ptr %i.am, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %337, i8 0, i64 24, i1 false)
  %i.aya = invoke noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #34
          to label %bb.alx unwind label %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i6881 ; 4 uses

_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i6881:       ; preds = %bb.alw
  %i.ayb = landingpad { ptr, i32 }
          cleanup
  br label %.body6882

bb.alx:                                           ; preds = %bb.alw
  store ptr %i.aya, ptr %337, align 8, !tbaa !94
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.aya, i64 9 ; 2 uses
  store ptr %i.ayc, ptr %i.awy, align 8, !tbaa !96
  store i8 76, ptr %i.aya, align 1
  %.sroa.511924.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aya, i64 1
  %i.ayd = shufflevector <8 x i8> %i.axz, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.ayd, ptr %.sroa.511924.0..sroa_idx, align 1
  store ptr %i.ayc, ptr %i.awz, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %338) #31
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9to_ubjsonERKSD_bb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %338, ptr noundef nonnull align 8 dereferenceable(16) %333, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.aly unwind label %bb.ani

bb.aly:                                           ; preds = %bb.alx
  call void @llvm.lifetime.start.p0(ptr nonnull %339) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %340) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %341) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %341, i32 noundef 10)
          to label %bb.alz unwind label %bb.anj

bb.alz:                                           ; preds = %bb.aly
  %i.aye = load i32, ptr %341, align 4, !tbaa !78
  store ptr %338, ptr %340, align 8
  store i32 %i.aye, ptr %.sroa.21034.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKSt6vectorIhSaIhEEEeqIS6_EEDTcmcvveqclL_ZNS0_7declvalIS6_EEOT_vEEclsr7doctest6detailE7declvalISA_EEtlNS0_6ResultEEESB_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %339, ptr noundef nonnull align 8 dereferenceable(12) %340, ptr noundef nonnull align 8 dereferenceable(24) %337)
          to label %bb.ama unwind label %bb.anj

bb.ama:                                           ; preds = %bb.alz
  %i.ayf = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 537, ptr noundef nonnull @.str.21, ptr noundef nonnull align 8 dereferenceable(32) %339)
          to label %bb.amb unwind label %bb.ank   ; 0 uses

bb.amb:                                           ; preds = %bb.ama
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.axa) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %341) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %340) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %339) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %342) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %343) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %344) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %344, i32 noundef 10)
          to label %bb.amc unwind label %bb.anm

bb.amc:                                           ; preds = %bb.amb
  %i.ayg = load ptr, ptr %i.axb, align 8, !tbaa !97
  %i.ayh = load ptr, ptr %338, align 8, !tbaa !94
  %i.ayi = ptrtoint ptr %i.ayg to i64
  %i.ayj = ptrtoint ptr %i.ayh to i64
  %i.ayk = sub i64 %i.ayi, %i.ayj
  %i.ayl = load i32, ptr %344, align 4, !tbaa !78
  store i64 %i.ayk, ptr %343, align 8
  store i32 %i.ayl, ptr %.sroa.21030.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an) #31
  store i32 9, ptr %i.an, align 4, !tbaa !108
  invoke void @_ZN7doctest6detail14Expression_lhsImEeqIiEEDTcmcvveqclL_ZNS0_7declvalImEEOT_vEEclsr7doctest6detailE7declvalIS5_EEtlNS0_6ResultEEES6_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %342, ptr noundef nonnull align 8 dereferenceable(12) %343, ptr noundef nonnull align 4 dereferenceable(4) %i.an)
          to label %bb.amd unwind label %bb.ann

bb.amd:                                           ; preds = %bb.amc
  %i.aym = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 538, ptr noundef nonnull @.str.31, ptr noundef nonnull align 8 dereferenceable(32) %342)
          to label %bb.ame unwind label %bb.ano   ; 0 uses

bb.ame:                                           ; preds = %bb.amd
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.axc) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %344) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %343) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %342) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %345) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %346) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %347) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %347, i32 noundef 10)
          to label %bb.amf unwind label %bb.anr

bb.amf:                                           ; preds = %bb.ame
  %i.ayn = load ptr, ptr %338, align 8, !tbaa !94
  %i.ayo = load i32, ptr %347, align 4, !tbaa !78
  store ptr %i.ayn, ptr %346, align 8
  store i32 %i.ayo, ptr %.sroa.21026.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #31
  store i8 76, ptr %i.ao, align 1, !tbaa !89
  invoke void @_ZN7doctest6detail14Expression_lhsIRKhEeqIcEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %345, ptr noundef nonnull align 8 dereferenceable(12) %346, ptr noundef nonnull align 1 dereferenceable(1) %i.ao)
          to label %bb.amg unwind label %bb.ans

bb.amg:                                           ; preds = %bb.amf
  %i.ayp = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 541, ptr noundef nonnull @.str.32, ptr noundef nonnull align 8 dereferenceable(32) %345)
          to label %bb.amh unwind label %bb.ant   ; 0 uses

bb.amh:                                           ; preds = %bb.amg
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.axd) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %347) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %346) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %345) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #31
  %i.ayq = load ptr, ptr %338, align 8, !tbaa !94 ; 8 uses
  %2191 = getelementptr inbounds nuw i8, ptr %i.ayq, i64 1
  %2192 = load i8, ptr %2191, align 1, !tbaa !89
  %2193 = zext i8 %2192 to i64
  %2194 = shl nuw i64 %2193, 56
  %2195 = getelementptr inbounds nuw i8, ptr %i.ayq, i64 2
  %2196 = load i8, ptr %2195, align 1, !tbaa !89
  %2197 = zext i8 %2196 to i64
  %2198 = shl nuw nsw i64 %2197, 48
  %2199 = or disjoint i64 %2198, %2194
  %2200 = getelementptr inbounds nuw i8, ptr %i.ayq, i64 3
  %2201 = load i8, ptr %2200, align 1, !tbaa !89
  %2202 = zext i8 %2201 to i64
  %2203 = shl nuw nsw i64 %2202, 40
  %2204 = or disjoint i64 %2199, %2203
  %2205 = getelementptr inbounds nuw i8, ptr %i.ayq, i64 4
  %2206 = load i8, ptr %2205, align 1, !tbaa !89
  %2207 = zext i8 %2206 to i64
  %2208 = shl nuw nsw i64 %2207, 32
  %2209 = or disjoint i64 %2204, %2208
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayq, i64 5
  %2210 = load i8, ptr %i.ayr, align 1, !tbaa !89
  %2211 = zext i8 %2210 to i64
  %2212 = shl nuw nsw i64 %2211, 24
  %2213 = or disjoint i64 %2209, %2212
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayq, i64 6
  %2214 = load i8, ptr %i.ays, align 1, !tbaa !89
  %i.ayt = zext i8 %2214 to i64
  %2215 = shl nuw nsw i64 %i.ayt, 16
  %2216 = or disjoint i64 %2213, %2215
  %2217 = getelementptr inbounds nuw i8, ptr %i.ayq, i64 7
  %2218 = load i8, ptr %2217, align 1, !tbaa !89
  %i.ayu = zext i8 %2218 to i64
  %i.ayv = shl nuw nsw i64 %i.ayu, 8
  %i.ayw = or disjoint i64 %2216, %i.ayv
  %2219 = getelementptr inbounds nuw i8, ptr %i.ayq, i64 8
  %2220 = load i8, ptr %2219, align 1, !tbaa !89
  %2221 = zext i8 %2220 to i64
  %2222 = add nuw i64 %i.ayw, %2221
  store i64 %2222, ptr %i.ap, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %348) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %349) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %350) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %350, i32 noundef 10)
          to label %bb.ami unwind label %bb.anw

bb.ami:                                           ; preds = %bb.amh
  %i.ayx = load i32, ptr %350, align 4, !tbaa !78
  store ptr %i.ap, ptr %349, align 8
  store i32 %i.ayx, ptr %.sroa.21022.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKmEeqIRmEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS8_EEtlNS0_6ResultEEES9_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %348, ptr noundef nonnull align 8 dereferenceable(12) %349, ptr noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %bb.amj unwind label %bb.anw

bb.amj:                                           ; preds = %bb.ami
  %i.ayy = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 550, ptr noundef nonnull @.str.33, ptr noundef nonnull align 8 dereferenceable(32) %348)
          to label %bb.amk unwind label %bb.anx   ; 0 uses

bb.amk:                                           ; preds = %bb.amj
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.axe) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %350) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %349) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %348) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %351) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %352) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %353) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %353, i32 noundef 10)
          to label %bb.aml unwind label %bb.anz

bb.aml:                                           ; preds = %bb.amk
  call void @llvm.lifetime.start.p0(ptr nonnull %354) #31
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE11from_ubjsonIRKSC_EESD_OT_bb(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %354, ptr noundef nonnull align 8 dereferenceable(24) %338, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.amm unwind label %bb.aoa

bb.amm:                                           ; preds = %bb.aml
  call void @llvm.experimental.noalias.scope.decl(metadata !999)
  %i.ayz = load i32, ptr %353, align 4, !tbaa !78, !noalias !999
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %352, ptr noundef nonnull align 8 dereferenceable(16) %354, i64 16, i1 false), !tbaa.struct !99
  store i8 0, ptr %354, align 8, !tbaa !101, !noalias !999
  store ptr null, ptr %i.axf, align 8, !tbaa !89, !noalias !999
  store i32 %i.ayz, ptr %i.axg, align 8, !tbaa !103, !alias.scope !999
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISL_EEtlNS0_6ResultEEESM_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %351, ptr noundef nonnull align 8 dereferenceable(20) %352, ptr noundef nonnull align 8 dereferenceable(16) %333)
          to label %bb.amn unwind label %bb.aob

bb.amn:                                           ; preds = %bb.amm
  %i.aza = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 553, ptr noundef nonnull @.str.22, ptr noundef nonnull align 8 dereferenceable(32) %351)
          to label %bb.amo unwind label %bb.aoc   ; 0 uses

bb.amo:                                           ; preds = %bb.amn
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.axh) #31
  %i.azb = load i8, ptr %352, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.axi, i8 noundef zeroext %i.azb)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6893 unwind label %bb.amp, !inline_history !95

bb.amp:                                           ; preds = %bb.amo
  %i.azc = landingpad { ptr, i32 }
          catch ptr null
  %i.azd = extractvalue { ptr, i32 } %i.azc, 0
  call void @__clang_call_terminate(ptr %i.azd) #32, !inline_history !95
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6893: ; preds = %bb.amo
  %i.aze = load i8, ptr %354, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.axf, i8 noundef zeroext %i.aze)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6894 unwind label %bb.amq, !inline_history !95

bb.amq:                                           ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6893
  %i.azf = landingpad { ptr, i32 }
          catch ptr null
  %i.azg = extractvalue { ptr, i32 } %i.azf, 0
  call void @__clang_call_terminate(ptr %i.azg) #32, !inline_history !95
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6894: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6893
  call void @llvm.lifetime.end.p0(ptr nonnull %354) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %353) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %352) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %351) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %355) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %356) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %357) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %357, i32 noundef 10)
          to label %bb.amr unwind label %bb.aog

bb.amr:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6894
  call void @llvm.lifetime.start.p0(ptr nonnull %358) #31
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE11from_ubjsonIRKSC_EESD_OT_bb(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %358, ptr noundef nonnull align 8 dereferenceable(24) %338, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.ams unwind label %bb.aoh

bb.ams:                                           ; preds = %bb.amr
  call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  %i.azh = load i32, ptr %357, align 4, !tbaa !78, !noalias !1000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %356, ptr noundef nonnull align 8 dereferenceable(16) %358, i64 16, i1 false), !tbaa.struct !99
  store i8 0, ptr %358, align 8, !tbaa !101, !noalias !1000
  store ptr null, ptr %i.axj, align 8, !tbaa !89, !noalias !1000
  store i32 %i.azh, ptr %i.axk, align 8, !tbaa !103, !alias.scope !1000
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISL_EEtlNS0_6ResultEEESM_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %355, ptr noundef nonnull align 8 dereferenceable(20) %356, ptr noundef nonnull align 8 dereferenceable(16) %333)
          to label %bb.amt unwind label %bb.aoi

bb.amt:                                           ; preds = %bb.ams
  %i.azi = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 554, ptr noundef nonnull @.str.23, ptr noundef nonnull align 8 dereferenceable(32) %355)
          to label %bb.amu unwind label %bb.aoj   ; 0 uses

bb.amu:                                           ; preds = %bb.amt
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.axl) #31
  %i.azj = load i8, ptr %356, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.axm, i8 noundef zeroext %i.azj)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6895 unwind label %bb.amv, !inline_history !95

bb.amv:                                           ; preds = %bb.amu
  %i.azk = landingpad { ptr, i32 }
          catch ptr null
  %i.azl = extractvalue { ptr, i32 } %i.azk, 0
  call void @__clang_call_terminate(ptr %i.azl) #32, !inline_history !95
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6895: ; preds = %bb.amu
  %i.azm = load i8, ptr %358, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.axj, i8 noundef zeroext %i.azm)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6896 unwind label %bb.amw, !inline_history !95

bb.amw:                                           ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6895
  %i.azn = landingpad { ptr, i32 }
          catch ptr null
  %i.azo = extractvalue { ptr, i32 } %i.azn, 0
  call void @__clang_call_terminate(ptr %i.azo) #32, !inline_history !95
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6896: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6895
  call void @llvm.lifetime.end.p0(ptr nonnull %358) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %357) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %356) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %355) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #31
  %i.azp = load ptr, ptr %338, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i6897 = icmp eq ptr %i.azp, null
  br i1 %.not.i.i.i6897, label %_ZNSt6vectorIhSaIhEED2Ev.exit6899, label %bb.amx

bb.amx:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6896
  call void @_ZdlPv(ptr noundef nonnull %i.azp) #33
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit6899

_ZNSt6vectorIhSaIhEED2Ev.exit6899:                ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6896, %bb.amx
  call void @llvm.lifetime.end.p0(ptr nonnull %338) #31
  %i.azq = load ptr, ptr %337, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i6900 = icmp eq ptr %i.azq, null
  br i1 %.not.i.i.i6900, label %_ZNSt6vectorIhSaIhEED2Ev.exit6902, label %bb.amy

bb.amy:                                           ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit6899
  call void @_ZdlPv(ptr noundef nonnull %i.azq) #33
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit6902

_ZNSt6vectorIhSaIhEED2Ev.exit6902:                ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit6899, %bb.amy
  call void @llvm.lifetime.end.p0(ptr nonnull %337) #31
  %i.azr = load i8, ptr %333, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.aww, i8 noundef zeroext %i.azr)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6903 unwind label %bb.amz, !inline_history !95

bb.amz:                                           ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit6902
  %i.azs = landingpad { ptr, i32 }
          catch ptr null
  %i.azt = extractvalue { ptr, i32 } %i.azs, 0
  call void @__clang_call_terminate(ptr %i.azt) #32, !inline_history !95
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6903: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit6902
  call void @llvm.lifetime.end.p0(ptr nonnull %333) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_10EE", i64 16), ptr %332, align 8, !tbaa !75
  %i.azu = load i8, ptr %i.axn, align 8, !tbaa !82, !range !83, !noundef !84
  %i.azv = trunc nuw i8 %i.azu to i1
  br i1 %i.azv, label %bb.ana, label %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_10ED2Ev.exit"

bb.ana:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6903
  invoke void @_ZN7doctest6detail16ContextScopeBase7destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %332)
          to label %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_10ED2Ev.exit" unwind label %bb.anb, !inline_history !122

bb.anb:                                           ; preds = %bb.ana
  %i.azw = landingpad { ptr, i32 }
          catch ptr null
  %i.azx = extractvalue { ptr, i32 } %i.azw, 0
  call void @__clang_call_terminate(ptr %i.azx) #32, !inline_history !122
  unreachable

"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_10ED2Ev.exit": ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6903, %bb.ana
  call void @_ZN7doctest13IContextScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(24) %332) #31, !inline_history !122
  call void @llvm.lifetime.end.p0(ptr nonnull %332) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #31
  %.sroa.011936.0.add = add nuw nsw i64 %.sroa.011936.0.idx12634, 8 ; 2 uses
  %.not12144 = icmp eq i64 %.sroa.011936.0.add, 16
  br i1 %.not12144, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.als

bb.anc:                                           ; preds = %bb.als
  %i.azy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit6911

bb.and:                                           ; preds = %bb.alt
  %i.azz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aor

end_hunk_1
begin_hunk_2_@_ZL19DOCTEST_ANON_FUNC_7v:bb.a
  %.sroa.2920.0..sroa_idx = getelementptr inbounds nuw i8, ptr %493, i64 8
  %i.bsd = getelementptr inbounds nuw i8, ptr %492, i64 8 ; 2 uses
  %.sroa.2916.0..sroa_idx = getelementptr inbounds nuw i8, ptr %496, i64 8
  %i.bse = getelementptr inbounds nuw i8, ptr %495, i64 8 ; 2 uses
  %i.bsf = getelementptr inbounds nuw i8, ptr %501, i64 8 ; 2 uses
  %i.bsg = getelementptr inbounds nuw i8, ptr %499, i64 16
  %i.bsh = getelementptr inbounds nuw i8, ptr %498, i64 8 ; 2 uses
  %i.bsi = getelementptr inbounds nuw i8, ptr %499, i64 8
  %i.bsj = getelementptr inbounds nuw i8, ptr %505, i64 8 ; 2 uses
  %i.bsk = getelementptr inbounds nuw i8, ptr %503, i64 16
  %i.bsl = getelementptr inbounds nuw i8, ptr %502, i64 8 ; 2 uses
  %i.bsm = getelementptr inbounds nuw i8, ptr %503, i64 8
  %i.bsn = getelementptr inbounds nuw i8, ptr %479, i64 8
  br label %bb.bdg

_ZNSt6vectorImSaImEED2Ev.exit7055:                ; preds = %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_15ED2Ev.exit"
  call void @_ZdlPv(ptr noundef nonnull %i.brt) #33
  br label %bb.bgf

bb.bda:                                           ; preds = %bb.bct, %bb.azt
  %.pn5971.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn5971.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bct ], [ %i.boj, %bb.azt ]
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %448) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %448) #31
  br label %bb.bhq

bb.bdb:                                           ; preds = %bb.bcu
  %i.bso = landingpad { ptr, i32 }
          cleanup
  br label %bb.bdd

bb.bdc:                                           ; preds = %bb.bcv
  %i.bsp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %478) #31
  br label %bb.bdd

bb.bdd:                                           ; preds = %bb.bdc, %bb.bdb
  %.pn3723 = phi { ptr, i32 } [ %i.bsp, %bb.bdc ], [ %i.bso, %bb.bdb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %478) #31
  br label %bb.bhq

bb.bde:                                           ; preds = %bb.bcw
  %i.bsq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bgg

bb.bdf:                                           ; preds = %bb.bcy
  %i.bsr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bgg

bb.bdg:                                           ; preds = %bb.bcz, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_15ED2Ev.exit"
  %.sroa.011879.0.idx12636 = phi i64 [ 0, %bb.bcz ], [ %.sroa.011879.0.add, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_15ED2Ev.exit" ] ; 2 uses
  %.sroa.011879.0.ptr = getelementptr inbounds nuw i8, ptr %i.brt, i64 %.sroa.011879.0.idx12636
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh) #31
  %i.bss = load i64, ptr %.sroa.011879.0.ptr, align 8, !tbaa !105
  store i64 %i.bss, ptr %i.bh, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %479) #31
  invoke void @_ZN7doctest6detail16ContextScopeBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %479)
          to label %bb.bdh unwind label %bb.beq

bb.bdh:                                           ; preds = %bb.bdg
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_15EE", i64 16), ptr %479, align 8, !tbaa !75, !alias.scope !1013
  store i64 %i.bru, ptr %i.brv, align 8, !tbaa !107, !alias.scope !1013
  call void @llvm.lifetime.start.p0(ptr nonnull %480) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %480, i8 0, i64 16, i1 false)
  %i.bst = load i64, ptr %i.bh, align 8, !tbaa !105
  store i8 6, ptr %480, align 8, !tbaa !101
  store i64 %i.bst, ptr %i.brw, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %481) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %482) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %483) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %483, i32 noundef 10)
          to label %bb.bdi unwind label %bb.ber

bb.bdi:                                           ; preds = %bb.bdh
  %i.bsu = load i8, ptr %480, align 8, !tbaa !101
  %i.bsv = icmp eq i8 %i.bsu, 6
  %i.bsw = load i32, ptr %483, align 4, !tbaa !78
  %.sroa.22.0.insert.ext.i7057 = zext i32 %i.bsw to i64
  %.sroa.22.0.insert.shift.i7058 = shl nuw i64 %.sroa.22.0.insert.ext.i7057, 32
  %.sroa.0.0.insert.ext.i7059 = zext i1 %i.bsv to i64
  %.sroa.0.0.insert.insert.i7060 = or disjoint i64 %.sroa.22.0.insert.shift.i7058, %.sroa.0.0.insert.ext.i7059
  store i64 %.sroa.0.0.insert.insert.i7060, ptr %482, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIbEcvNS0_6ResultEEv(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %481, ptr noundef nonnull align 4 dereferenceable(8) %482)
          to label %bb.bdj unwind label %bb.bes

bb.bdj:                                           ; preds = %bb.bdi
  %i.bsx = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 722, ptr noundef nonnull @.str.54, ptr noundef nonnull align 8 dereferenceable(32) %481)
          to label %bb.bdk unwind label %bb.bet   ; 0 uses

bb.bdk:                                           ; preds = %bb.bdj
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.brx) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %483) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %482) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %481) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %484) #31
  %i.bsy = load <8 x i8>, ptr %i.bh, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %484, i8 0, i64 24, i1 false)
  %i.bsz = invoke noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #34
          to label %bb.bdl unwind label %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i7062 ; 4 uses

_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i7062:       ; preds = %bb.bdk
  %i.bta = landingpad { ptr, i32 }
          cleanup
  br label %.body7063

bb.bdl:                                           ; preds = %bb.bdk
  store ptr %i.bsz, ptr %484, align 8, !tbaa !94
  %i.btb = getelementptr inbounds nuw i8, ptr %i.bsz, i64 9 ; 2 uses
  store ptr %i.btb, ptr %i.bry, align 8, !tbaa !96
  store i8 76, ptr %i.bsz, align 1
  %.sroa.511868.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bsz, i64 1
  %i.btc = shufflevector <8 x i8> %i.bsy, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.btc, ptr %.sroa.511868.0..sroa_idx, align 1
  store ptr %i.btb, ptr %i.brz, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %485) #31
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9to_ubjsonERKSD_bb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %485, ptr noundef nonnull align 8 dereferenceable(16) %480, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.bdm unwind label %bb.bev

bb.bdm:                                           ; preds = %bb.bdl
  call void @llvm.lifetime.start.p0(ptr nonnull %486) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %487) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %488) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %488, i32 noundef 10)
          to label %bb.bdn unwind label %bb.bew

bb.bdn:                                           ; preds = %bb.bdm
  %i.btd = load i32, ptr %488, align 4, !tbaa !78
  store ptr %485, ptr %487, align 8
  store i32 %i.btd, ptr %.sroa.2928.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKSt6vectorIhSaIhEEEeqIS6_EEDTcmcvveqclL_ZNS0_7declvalIS6_EEOT_vEEclsr7doctest6detailE7declvalISA_EEtlNS0_6ResultEEESB_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %486, ptr noundef nonnull align 8 dereferenceable(12) %487, ptr noundef nonnull align 8 dereferenceable(24) %484)
          to label %bb.bdo unwind label %bb.bew

bb.bdo:                                           ; preds = %bb.bdn
  %i.bte = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 740, ptr noundef nonnull @.str.21, ptr noundef nonnull align 8 dereferenceable(32) %486)
          to label %bb.bdp unwind label %bb.bex   ; 0 uses

bb.bdp:                                           ; preds = %bb.bdo
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bsa) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %488) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %487) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %486) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %489) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %490) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %491) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %491, i32 noundef 10)
          to label %bb.bdq unwind label %bb.bez

bb.bdq:                                           ; preds = %bb.bdp
  %i.btf = load ptr, ptr %i.bsb, align 8, !tbaa !97
  %i.btg = load ptr, ptr %485, align 8, !tbaa !94
  %i.bth = ptrtoint ptr %i.btf to i64
  %i.bti = ptrtoint ptr %i.btg to i64
  %i.btj = sub i64 %i.bth, %i.bti
  %i.btk = load i32, ptr %491, align 4, !tbaa !78
  store i64 %i.btj, ptr %490, align 8
  store i32 %i.btk, ptr %.sroa.2924.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi) #31
  store i32 9, ptr %i.bi, align 4, !tbaa !108
  invoke void @_ZN7doctest6detail14Expression_lhsImEeqIiEEDTcmcvveqclL_ZNS0_7declvalImEEOT_vEEclsr7doctest6detailE7declvalIS5_EEtlNS0_6ResultEEES6_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %489, ptr noundef nonnull align 8 dereferenceable(12) %490, ptr noundef nonnull align 4 dereferenceable(4) %i.bi)
          to label %bb.bdr unwind label %bb.bfa

bb.bdr:                                           ; preds = %bb.bdq
  %i.btl = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 741, ptr noundef nonnull @.str.31, ptr noundef nonnull align 8 dereferenceable(32) %489)
          to label %bb.bds unwind label %bb.bfb   ; 0 uses

bb.bds:                                           ; preds = %bb.bdr
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bsc) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %491) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %490) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %489) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %492) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %493) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %494) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %494, i32 noundef 10)
          to label %bb.bdt unwind label %bb.bfe

bb.bdt:                                           ; preds = %bb.bds
  %i.btm = load ptr, ptr %485, align 8, !tbaa !94
  %i.btn = load i32, ptr %494, align 4, !tbaa !78
  store ptr %i.btm, ptr %493, align 8
  store i32 %i.btn, ptr %.sroa.2920.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj) #31
  store i8 76, ptr %i.bj, align 1, !tbaa !89
  invoke void @_ZN7doctest6detail14Expression_lhsIRKhEeqIcEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %492, ptr noundef nonnull align 8 dereferenceable(12) %493, ptr noundef nonnull align 1 dereferenceable(1) %i.bj)
          to label %bb.bdu unwind label %bb.bff

bb.bdu:                                           ; preds = %bb.bdt
  %i.bto = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 744, ptr noundef nonnull @.str.32, ptr noundef nonnull align 8 dereferenceable(32) %492)
          to label %bb.bdv unwind label %bb.bfg   ; 0 uses

bb.bdv:                                           ; preds = %bb.bdu
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bsd) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %494) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %493) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %492) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk) #31
  %i.btp = load ptr, ptr %485, align 8, !tbaa !94 ; 8 uses
  %2223 = getelementptr inbounds nuw i8, ptr %i.btp, i64 1
  %2224 = load i8, ptr %2223, align 1, !tbaa !89
  %2225 = zext i8 %2224 to i64
  %2226 = shl nuw i64 %2225, 56
  %2227 = getelementptr inbounds nuw i8, ptr %i.btp, i64 2
  %2228 = load i8, ptr %2227, align 1, !tbaa !89
  %2229 = zext i8 %2228 to i64
  %2230 = shl nuw nsw i64 %2229, 48
  %2231 = or disjoint i64 %2230, %2226
  %2232 = getelementptr inbounds nuw i8, ptr %i.btp, i64 3
  %2233 = load i8, ptr %2232, align 1, !tbaa !89
  %2234 = zext i8 %2233 to i64
  %2235 = shl nuw nsw i64 %2234, 40
  %2236 = or disjoint i64 %2231, %2235
  %2237 = getelementptr inbounds nuw i8, ptr %i.btp, i64 4
  %2238 = load i8, ptr %2237, align 1, !tbaa !89
  %2239 = zext i8 %2238 to i64
  %2240 = shl nuw nsw i64 %2239, 32
  %2241 = or disjoint i64 %2236, %2240
  %i.btq = getelementptr inbounds nuw i8, ptr %i.btp, i64 5
  %2242 = load i8, ptr %i.btq, align 1, !tbaa !89
  %2243 = zext i8 %2242 to i64
  %2244 = shl nuw nsw i64 %2243, 24
  %2245 = or disjoint i64 %2241, %2244
  %i.btr = getelementptr inbounds nuw i8, ptr %i.btp, i64 6
  %2246 = load i8, ptr %i.btr, align 1, !tbaa !89
  %i.bts = zext i8 %2246 to i64
  %2247 = shl nuw nsw i64 %i.bts, 16
  %2248 = or disjoint i64 %2245, %2247
  %2249 = getelementptr inbounds nuw i8, ptr %i.btp, i64 7
  %2250 = load i8, ptr %2249, align 1, !tbaa !89
  %i.btt = zext i8 %2250 to i64
  %i.btu = shl nuw nsw i64 %i.btt, 8
  %i.btv = or disjoint i64 %2248, %i.btu
  %2251 = getelementptr inbounds nuw i8, ptr %i.btp, i64 8
  %2252 = load i8, ptr %2251, align 1, !tbaa !89
  %2253 = zext i8 %2252 to i64
  %2254 = add nuw i64 %i.btv, %2253
  store i64 %2254, ptr %i.bk, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %495) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %496) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %497) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %497, i32 noundef 10)
          to label %bb.bdw unwind label %bb.bfj

bb.bdw:                                           ; preds = %bb.bdv
  %i.btw = load i32, ptr %497, align 4, !tbaa !78
  store ptr %i.bk, ptr %496, align 8
  store i32 %i.btw, ptr %.sroa.2916.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKmEeqIRmEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS8_EEtlNS0_6ResultEEES9_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %495, ptr noundef nonnull align 8 dereferenceable(12) %496, ptr noundef nonnull align 8 dereferenceable(8) %i.bh)
          to label %bb.bdx unwind label %bb.bfj

bb.bdx:                                           ; preds = %bb.bdw
  %i.btx = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 753, ptr noundef nonnull @.str.33, ptr noundef nonnull align 8 dereferenceable(32) %495)
          to label %bb.bdy unwind label %bb.bfk   ; 0 uses

bb.bdy:                                           ; preds = %bb.bdx
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bse) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %497) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %496) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %495) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %498) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %499) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %500) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %500, i32 noundef 10)
          to label %bb.bdz unwind label %bb.bfm

bb.bdz:                                           ; preds = %bb.bdy
  call void @llvm.lifetime.start.p0(ptr nonnull %501) #31
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE11from_ubjsonIRKSC_EESD_OT_bb(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %501, ptr noundef nonnull align 8 dereferenceable(24) %485, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.bea unwind label %bb.bfn

bb.bea:                                           ; preds = %bb.bdz
  call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  %i.bty = load i32, ptr %500, align 4, !tbaa !78, !noalias !1014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %499, ptr noundef nonnull align 8 dereferenceable(16) %501, i64 16, i1 false), !tbaa.struct !99
  store i8 0, ptr %501, align 8, !tbaa !101, !noalias !1014
  store ptr null, ptr %i.bsf, align 8, !tbaa !89, !noalias !1014
  store i32 %i.bty, ptr %i.bsg, align 8, !tbaa !103, !alias.scope !1014
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRKSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISM_EEtlNS0_6ResultEEESN_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %498, ptr noundef nonnull align 8 dereferenceable(20) %499, ptr noundef nonnull align 8 dereferenceable(16) %480)
          to label %bb.beb unwind label %bb.bfo

bb.beb:                                           ; preds = %bb.bea
  %i.btz = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 756, ptr noundef nonnull @.str.22, ptr noundef nonnull align 8 dereferenceable(32) %498)
          to label %bb.bec unwind label %bb.bfp   ; 0 uses

bb.bec:                                           ; preds = %bb.beb
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bsh) #31
  %i.bua = load i8, ptr %499, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bsi, i8 noundef zeroext %i.bua)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit7074 unwind label %bb.bed, !inline_history !95

bb.bed:                                           ; preds = %bb.bec
  %i.bub = landingpad { ptr, i32 }
          catch ptr null
  %i.buc = extractvalue { ptr, i32 } %i.bub, 0
  call void @__clang_call_terminate(ptr %i.buc) #32, !inline_history !95
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit7074: ; preds = %bb.bec
  %i.bud = load i8, ptr %501, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bsf, i8 noundef zeroext %i.bud)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit7075 unwind label %bb.bee, !inline_history !95

bb.bee:                                           ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit7074
  %i.bue = landingpad { ptr, i32 }
          catch ptr null
  %i.buf = extractvalue { ptr, i32 } %i.bue, 0
  call void @__clang_call_terminate(ptr %i.buf) #32, !inline_history !95
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit7075: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit7074
  call void @llvm.lifetime.end.p0(ptr nonnull %501) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %500) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %499) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %498) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %502) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %503) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %504) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %504, i32 noundef 10)
          to label %bb.bef unwind label %bb.bft

bb.bef:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit7075
  call void @llvm.lifetime.start.p0(ptr nonnull %505) #31
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE11from_ubjsonIRKSC_EESD_OT_bb(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %505, ptr noundef nonnull align 8 dereferenceable(24) %485, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.beg unwind label %bb.bfu

bb.beg:                                           ; preds = %bb.bef
  call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  %i.bug = load i32, ptr %504, align 4, !tbaa !78, !noalias !1015
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %503, ptr noundef nonnull align 8 dereferenceable(16) %505, i64 16, i1 false), !tbaa.struct !99
  store i8 0, ptr %505, align 8, !tbaa !101, !noalias !1015
  store ptr null, ptr %i.bsj, align 8, !tbaa !89, !noalias !1015
  store i32 %i.bug, ptr %i.bsk, align 8, !tbaa !103, !alias.scope !1015
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRKSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISM_EEtlNS0_6ResultEEESN_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %502, ptr noundef nonnull align 8 dereferenceable(20) %503, ptr noundef nonnull align 8 dereferenceable(16) %480)
          to label %bb.beh unwind label %bb.bfv

bb.beh:                                           ; preds = %bb.beg
  %i.buh = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 757, ptr noundef nonnull @.str.23, ptr noundef nonnull align 8 dereferenceable(32) %502)
          to label %bb.bei unwind label %bb.bfw   ; 0 uses

bb.bei:                                           ; preds = %bb.beh
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bsl) #31
  %i.bui = load i8, ptr %503, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bsm, i8 noundef zeroext %i.bui)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit7076 unwind label %bb.bej, !inline_history !95

bb.bej:                                           ; preds = %bb.bei
  %i.buj = landingpad { ptr, i32 }
          catch ptr null
  %i.buk = extractvalue { ptr, i32 } %i.buj, 0
  call void @__clang_call_terminate(ptr %i.buk) #32, !inline_history !95
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit7076: ; preds = %bb.bei
  %i.bul = load i8, ptr %505, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bsj, i8 noundef zeroext %i.bul)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit7077 unwind label %bb.bek, !inline_history !95

bb.bek:                                           ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit7076
  %i.bum = landingpad { ptr, i32 }
          catch ptr null
  %i.bun = extractvalue { ptr, i32 } %i.bum, 0
  call void @__clang_call_terminate(ptr %i.bun) #32, !inline_history !95
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit7077: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit7076
  call void @llvm.lifetime.end.p0(ptr nonnull %505) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %504) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %503) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %502) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk) #31
  %i.buo = load ptr, ptr %485, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i7078 = icmp eq ptr %i.buo, null
  br i1 %.not.i.i.i7078, label %_ZNSt6vectorIhSaIhEED2Ev.exit7080, label %bb.bel

bb.bel:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit7077
  call void @_ZdlPv(ptr noundef nonnull %i.buo) #33
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit7080

_ZNSt6vectorIhSaIhEED2Ev.exit7080:                ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit7077, %bb.bel
  call void @llvm.lifetime.end.p0(ptr nonnull %485) #31
  %i.bup = load ptr, ptr %484, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i7081 = icmp eq ptr %i.bup, null
  br i1 %.not.i.i.i7081, label %_ZNSt6vectorIhSaIhEED2Ev.exit7083, label %bb.bem

bb.bem:                                           ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit7080
  call void @_ZdlPv(ptr noundef nonnull %i.bup) #33
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit7083

_ZNSt6vectorIhSaIhEED2Ev.exit7083:                ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit7080, %bb.bem
  call void @llvm.lifetime.end.p0(ptr nonnull %484) #31
  %i.buq = load i8, ptr %480, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.brw, i8 noundef zeroext %i.buq)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit7084 unwind label %bb.ben, !inline_history !95

bb.ben:                                           ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit7083
  %i.bur = landingpad { ptr, i32 }
          catch ptr null
  %i.bus = extractvalue { ptr, i32 } %i.bur, 0
  call void @__clang_call_terminate(ptr %i.bus) #32, !inline_history !95
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit7084: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit7083
  call void @llvm.lifetime.end.p0(ptr nonnull %480) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_15EE", i64 16), ptr %479, align 8, !tbaa !75
  %i.but = load i8, ptr %i.bsn, align 8, !tbaa !82, !range !83, !noundef !84
  %i.buu = trunc nuw i8 %i.but to i1
  br i1 %i.buu, label %bb.beo, label %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_15ED2Ev.exit"

bb.beo:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit7084
  invoke void @_ZN7doctest6detail16ContextScopeBase7destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %479)
          to label %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_15ED2Ev.exit" unwind label %bb.bep, !inline_history !127

bb.bep:                                           ; preds = %bb.beo
  %i.buv = landingpad { ptr, i32 }
          catch ptr null
  %i.buw = extractvalue { ptr, i32 } %i.buv, 0
  call void @__clang_call_terminate(ptr %i.buw) #32, !inline_history !127
  unreachable

"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_15ED2Ev.exit": ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit7084, %bb.beo
  call void @_ZN7doctest13IContextScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(24) %479) #31, !inline_history !127
  call void @llvm.lifetime.end.p0(ptr nonnull %479) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh) #31
  %.sroa.011879.0.add = add nuw nsw i64 %.sroa.011879.0.idx12636, 8 ; 2 uses
  %.not12145 = icmp eq i64 %.sroa.011879.0.add, 16
  br i1 %.not12145, label %_ZNSt6vectorImSaImEED2Ev.exit7055, label %bb.bdg

bb.beq:                                           ; preds = %bb.bdg
  %i.bux = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit7092

bb.ber:                                           ; preds = %bb.bdh
  %i.buy = landingpad { ptr, i32 }
          cleanup
  br label %bb.beu

end_hunk_2
begin_hunk_3_@_GLOBAL__sub_I_unit_ubjson.cpp:bb.a
bb.j:                                             ; preds = %bb.h, %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6detail8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #31
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn.i1 = phi { ptr, i32 } [ %i.p, %bb.j ], [ %i.o, %bb.i ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %common.resume

__cxx_global_var_init.4.exit:                     ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 120
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.q) #31
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 88
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.r) #31
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(144) %6) #31
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  store i32 0, ptr @_ZL18DOCTEST_ANON_VAR_8, align 4, !tbaa !108
  %i.s = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZL18DOCTEST_ANON_VAR_8) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.t = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN28doctest_detail_test_suite_ns19getCurrentTestSuiteEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZN7doctest6StringC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #31
  invoke void @_ZN7doctest6detail8TestCaseC1EPFvvEPKcjRKNS0_9TestSuiteERKNS_6StringEi(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull @_ZL21DOCTEST_ANON_FUNC_208v, ptr noundef nonnull @.str.5, i32 noundef 2087, ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef -1)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %__cxx_global_var_init.4.exit
  %i.u = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN7doctest6detail8TestCasemlEPKc(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull @.str.8)
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
  call void @_ZN7doctest6detail8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #31
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn.i2 = phi { ptr, i32 } [ %i.x, %bb.o ], [ %i.w, %bb.n ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %common.resume

__cxx_global_var_init.7.exit:                     ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 120
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.y) #31
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.z) #31
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(144) %4) #31
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  store i32 0, ptr @_ZL20DOCTEST_ANON_VAR_209, align 4, !tbaa !108
  %i.aa = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZL20DOCTEST_ANON_VAR_209) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.ab = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN28doctest_detail_test_suite_ns19getCurrentTestSuiteEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN7doctest6StringC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #31
  invoke void @_ZN7doctest6detail8TestCaseC1EPFvvEPKcjRKNS0_9TestSuiteERKNS_6StringEi(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @_ZL21DOCTEST_ANON_FUNC_239v, ptr noundef nonnull @.str.5, i32 noundef 2397, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %__cxx_global_var_init.7.exit
  %i.ac = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN7doctest6detail8TestCasemlEPKc(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.10)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ad = invoke noundef i32 @_ZN7doctest6detail7regTestERKNS0_8TestCaseE(ptr noundef nonnull align 8 dereferenceable(144) %i.ac)
          to label %__cxx_global_var_init.9.exit unwind label %bb.t ; 0 uses

bb.s:                                             ; preds = %__cxx_global_var_init.7.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6detail8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %2) #31
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn.i3 = phi { ptr, i32 } [ %i.af, %bb.t ], [ %i.ae, %bb.s ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %common.resume

__cxx_global_var_init.9.exit:                     ; preds = %bb.r
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ag) #31
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 88
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ah) #31
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(144) %2) #31
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  store i32 0, ptr @_ZL20DOCTEST_ANON_VAR_240, align 4, !tbaa !108
  %i.ai = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZL20DOCTEST_ANON_VAR_240) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #31
  %i.aj = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN28doctest_detail_test_suite_ns19getCurrentTestSuiteEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @_ZN7doctest6StringC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #31
  invoke void @_ZN7doctest6detail8TestCaseC1EPFvvEPKcjRKNS0_9TestSuiteERKNS_6StringEi(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull @_ZL21DOCTEST_ANON_FUNC_248v, ptr noundef nonnull @.str.5, i32 noundef 2432, ptr noundef nonnull align 8 dereferenceable(40) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %__cxx_global_var_init.9.exit
  %i.ak = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN7doctest6detail8TestCasemlEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull @.str.12)
          to label %bb.w unwind label %bb.y       ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  store i8 1, ptr %i.al, align 8, !tbaa !2930
  %i.am = invoke noundef i32 @_ZN7doctest6detail7regTestERKNS0_8TestCaseE(ptr noundef nonnull align 8 dereferenceable(144) %i.ak)
          to label %__cxx_global_var_init.11.exit unwind label %bb.z ; 0 uses

bb.x:                                             ; preds = %__cxx_global_var_init.9.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.y:                                             ; preds = %bb.v
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn.i4 = phi { ptr, i32 } [ %i.ap, %bb.z ], [ %i.ao, %bb.y ]
  call void @_ZN7doctest6detail8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #31
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i4, %bb.aa ], [ %i.an, %bb.x ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #31
  br label %common.resume

__cxx_global_var_init.11.exit:                    ; preds = %bb.w
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aq) #31
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ar) #31
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(144) %0) #31
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #31
  store i32 0, ptr @_ZL20DOCTEST_ANON_VAR_249, align 4, !tbaa !108
  %i.as = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZL20DOCTEST_ANON_VAR_249) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #28

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
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #31 = { nounwind }
attributes #32 = { noreturn nounwind }
attributes #33 = { builtin nounwind }
attributes #34 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #35 = { noreturn }
attributes #36 = { nounwind willreturn memory(read) }
attributes #37 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!65, !66, !67}
!llvm.ident = !{!68}
!llvm.errno.tbaa = !{!73}

!0 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail14output_adapterIhNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEEEED2Ev, ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail14output_adapterIcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEED2Ev, ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!3 = distinct !{!3, !116}
!4 = distinct !{!4, !116}
!5 = distinct !{!5, !116}
!6 = distinct !{ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7 = distinct !{!7, !116}
!8 = distinct !{null, null}
!9 = distinct !{null}
!10 = distinct !{null}
!11 = distinct !{null}
!12 = distinct !{null}
!13 = distinct !{null}
!14 = distinct !{!14, !116}
!15 = distinct !{!15, !116}
!16 = distinct !{null}
!17 = distinct !{!17, !116}
!18 = distinct !{null}
!19 = distinct !{!19, !116}
!20 = distinct !{!20, !116}
!21 = distinct !{!21, !116}
!22 = distinct !{null, null, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev, null, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev}
!23 = distinct !{null, null}
!24 = distinct !{null}
!25 = distinct !{!25, !116}
!26 = distinct !{!26, !116}
!27 = distinct !{!27, !116}
!28 = distinct !{!28, !116}
!29 = distinct !{!29, !116}
!30 = distinct !{!30, !116}
!31 = distinct !{ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!32 = distinct !{!32, !116}
!33 = distinct !{null}
!34 = distinct !{null, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev}
!35 = distinct !{null}
!36 = distinct !{null, null}
!37 = distinct !{null}
!38 = distinct !{!38, !116}
!39 = distinct !{null}
!40 = distinct !{!40, !116}
!41 = distinct !{!41, !116}
!42 = distinct !{!42, !116}
!43 = distinct !{!43, !116}
!44 = distinct !{!44, !116}
!45 = distinct !{!45, !116}
!46 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterEE3getEv, null, null}
!47 = distinct !{null, null}
!48 = distinct !{null}
!49 = distinct !{null, null, ptr @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterENS1_19json_sax_dom_parserISF_SG_EEE3getEv, null, null}
!50 = distinct !{null}
!51 = distinct !{!51, !116}
!52 = distinct !{null, ptr @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterENS1_19json_sax_dom_parserISF_SG_EEE3getEv, null, null}
!53 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterENS1_19json_sax_dom_parserISF_SG_EEE3getEv, null, null}
!54 = distinct !{!54, !116}
!55 = distinct !{!55, !116}
!56 = distinct !{null}
!57 = distinct !{!57, !116}
!58 = distinct !{null}
!59 = distinct !{!59, !116}
!60 = distinct !{!60, !116}
!61 = distinct !{!61, !116}
!62 = distinct !{!62, !116}
!63 = distinct !{!63, !116}
!64 = distinct !{!64, !116}
!65 = !{i32 8, !"PIC Level", i32 2}
!66 = !{i32 7, !"PIE Level", i32 2}
!67 = !{i32 7, !"uwtable", i32 2}
!68 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!69 = !{!"Simple C++ TBAA"}
!70 = !{!"omnipotent char", !69, i64 0}
!71 = !{!"int", !70, i64 0}
!72 = !{!"__libc_errno", !71, i64 0}
!73 = !{!72, !71, i64 0}
!74 = !{!"vtable pointer", !69, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!"_ZTSN7doctest10assertType4EnumE", !70, i64 0}
!77 = !{!"_ZTSN7doctest6detail20ExpressionDecomposerE", !76, i64 0}
!78 = !{!77, !76, i64 0}
!79 = !{!"_ZTSN7doctest13IContextScopeE"}
!80 = !{!"bool", !70, i64 0}
!81 = !{!"_ZTSN7doctest6detail16ContextScopeBaseE", !79, i64 0, !80, i64 8}
!82 = !{!81, !80, i64 8}
!83 = !{i8 0, i8 2}
!84 = !{}
!85 = !{ptr @"_ZN7doctest6detail12ContextScopeIZN5utilsL19DOCTEST_ANON_FUNC_2EvE3$_0ED2Ev"}
!86 = !{!"_ZTSN8nlohmann16json_abi_v3_12_06detail7value_tE", !70, i64 0}
!87 = !{!"_ZTSN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataE", !86, i64 0, !70, i64 8}
!88 = !{!87, !86, i64 0}
!89 = !{!70, !70, i64 0}
!90 = !{!"any pointer", !70, i64 0}
!91 = !{!"p1 omnipotent char", !90, i64 0}
!92 = !{!91, !91, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!94 = !{!93, !91, i64 0}
!95 = !{ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev}
!96 = !{!93, !91, i64 16}
!97 = !{!93, !91, i64 8}
!98 = !{!86, !86, i64 0}
!99 = !{i64 0, i64 1, !98, i64 8, i64 8, !89}
!100 = !{!"_ZTSN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEE", !87, i64 0}
!101 = !{!100, !86, i64 0}
!102 = !{!"_ZTSN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEE", !100, i64 0, !76, i64 16}
!103 = !{!102, !76, i64 16}
!104 = !{!"long", !70, i64 0}
!105 = !{!104, !104, i64 0}
!106 = !{!"p1 long", !90, i64 0}
!107 = !{!106, !106, i64 0}
!108 = !{!71, !71, i64 0}
!109 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_2ED2Ev"}
!110 = !{!"p1 int", !90, i64 0}
!111 = !{!110, !110, i64 0}
!112 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_3ED2Ev"}
!113 = !{!"short", !70, i64 0}
!114 = !{!113, !113, i64 0}
!115 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_4ED2Ev"}
!116 = !{!"llvm.loop.mustprogress"}
!117 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_5ED2Ev"}
!118 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_6ED2Ev"}
!119 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_7ED2Ev"}
!120 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_8ED2Ev"}
!121 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_9ED2Ev"}
!122 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_10ED2Ev"}
!123 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_11ED2Ev"}
!124 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_12ED2Ev"}
!125 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_13ED2Ev"}
!126 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_14ED2Ev"}
!127 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_15ED2Ev"}
!128 = !{!"double", !70, i64 0}
!129 = !{!128, !128, i64 0}
!130 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !91, i64 0}
!131 = !{!130, !91, i64 0}
!132 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !130, i64 0, !104, i64 8, !70, i64 16}
!133 = !{!132, !91, i64 0}
!134 = !{!132, !104, i64 8}
!135 = !{!"_ZTSN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !132, i64 0, !76, i64 32}
!136 = !{!135, !76, i64 32}
!137 = !{!"p1 _ZTSSo", !90, i64 0}
!138 = !{!"_ZTSN7doctest6StringE", !70, i64 0}
!139 = !{!"p1 _ZTSN7doctest6detail8TestCaseE", !90, i64 0}
!140 = !{!"_ZTSN7doctest14ContextOptionsE", !137, i64 0, !138, i64 8, !139, i64 32, !138, i64 40, !138, i64 64, !71, i64 88, !71, i64 92, !71, i64 96, !71, i64 100, !71, i64 104, !80, i64 108, !80, i64 109, !80, i64 110, !80, i64 111, !80, i64 112, !80, i64 113, !80, i64 114, !80, i64 115, !80, i64 116, !80, i64 117, !80, i64 118, !80, i64 119, !80, i64 120, !80, i64 121, !80, i64 122, !80, i64 123, !80, i64 124, !80, i64 125, !80, i64 126, !80, i64 127, !80, i64 128, !80, i64 129, !80, i64 130, !80, i64 131, !80, i64 132, !80, i64 133, !80, i64 134}
!141 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_16ED2Ev"}
!142 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_17ED2Ev"}
!143 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!144 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_18ED2Ev"}
!145 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_19ED2Ev"}
!146 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_20ED2Ev"}
!147 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_21ED2Ev"}
!148 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_22ED2Ev"}
!149 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_23ED2Ev"}
!150 = !{!"_ZTSSt14_Function_base", !70, i64 0, !90, i64 16}
!151 = !{!150, !90, i64 16}
!152 = !{!"p1 _ZTSN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEE", !90, i64 0}
!153 = !{!"_ZTSNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE17_Vector_impl_dataE", !152, i64 0, !152, i64 8, !152, i64 16}
!154 = !{!153, !152, i64 8}
!155 = !{!153, !152, i64 0}
!156 = !{!"_ZTSSt14_Rb_tree_color", !70, i64 0}
end_hunk_3
