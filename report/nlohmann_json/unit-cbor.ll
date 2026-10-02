Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-cbor?download=true
inline.NumInlined: 20962
inline.NumDeleted: 2764
loop-unroll.NumCompletelyUnrolled: 115
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 120
begin_hunk_0_@_ZL19DOCTEST_ANON_FUNC_7v:bb.a
  %i.pn = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

bb.ix:                                            ; preds = %bb.ii
  %i.po = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %82) #32
  br label %bb.iy

bb.iy:                                            ; preds = %bb.ix, %bb.iw
  %.pn2913 = phi { ptr, i32 } [ %i.po, %bb.ix ], [ %i.pn, %bb.iw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #32
  br label %bb.dby

bb.iz:                                            ; preds = %bb.ij
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %bb.awz

bb.ja:                                            ; preds = %bb.il
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %bb.jc

bb.jb:                                            ; preds = %bb.im
  %i.pr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %84) #32
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %bb.ja
  %.pn2915 = phi { ptr, i32 } [ %i.pr, %bb.jb ], [ %i.pq, %bb.ja ]
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #32
  br label %bb.awz

bb.jd:                                            ; preds = %bb.in
  %i.ps = landingpad { ptr, i32 }
          cleanup
  br label %bb.mr

bb.je:                                            ; preds = %bb.ip
  %i.pt = landingpad { ptr, i32 }
          cleanup
  br label %bb.mr

bb.jf:                                            ; preds = %bb.iq, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_1ED2Ev.exit"
  %.sroa.09365.0.idx9864 = phi i64 [ 0, %bb.iq ], [ %.sroa.09365.0.add, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_1ED2Ev.exit" ] ; 2 uses
  %.sroa.09365.0.ptr = getelementptr inbounds nuw i8, ptr %i.oo, i64 %.sroa.09365.0.idx9864
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #32
  %i.pu = load i64, ptr %.sroa.09365.0.ptr, align 8, !tbaa !121
  store i64 %i.pu, ptr %i.o, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #32
  invoke void @_ZN7doctest6detail16ContextScopeBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %85)
          to label %bb.jg unwind label %bb.ks

bb.jg:                                            ; preds = %bb.jf
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_1EE", i64 16), ptr %85, align 8, !tbaa !91, !alias.scope !900
  store i64 %i.op, ptr %i.oq, align 8, !tbaa !123, !alias.scope !900
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %86, i8 0, i64 16, i1 false)
  %i.pv = load i64, ptr %i.o, align 8, !tbaa !121
  store i8 5, ptr %86, align 8, !tbaa !113
  store i64 %i.pv, ptr %i.or, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %89, i32 noundef 10)
          to label %bb.jh unwind label %bb.kt

bb.jh:                                            ; preds = %bb.jg
  %i.pw = load i8, ptr %86, align 8, !tbaa !113
  %i.px = add i8 %i.pw, -5
  %spec.select.i = icmp ult i8 %i.px, 2
  %i.py = load i32, ptr %89, align 4, !tbaa !94
  %.sroa.22.0.insert.ext.i5214 = zext i32 %i.py to i64
  %.sroa.22.0.insert.shift.i5215 = shl nuw i64 %.sroa.22.0.insert.ext.i5214, 32
  %.sroa.0.0.insert.ext.i5216 = zext i1 %spec.select.i to i64
  %.sroa.0.0.insert.insert.i5217 = or disjoint i64 %.sroa.22.0.insert.shift.i5215, %.sroa.0.0.insert.ext.i5216
  store i64 %.sroa.0.0.insert.insert.i5217, ptr %88, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIbEcvNS0_6ResultEEv(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %87, ptr noundef nonnull align 4 dereferenceable(8) %88)
          to label %bb.ji unwind label %bb.ku

bb.ji:                                            ; preds = %bb.jh
  %i.pz = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 197, ptr noundef nonnull @.str.38, ptr noundef nonnull align 8 dereferenceable(32) %87)
          to label %bb.jj unwind label %bb.kv     ; 0 uses

bb.jj:                                            ; preds = %bb.ji
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.os) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #32
  %i.qa = load i64, ptr %i.o, align 8, !tbaa !121
  %i.qb = xor i64 %i.qa, -1                       ; 2 uses
  store i64 %i.qb, ptr %i.p, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %90, i8 0, i64 24, i1 false)
  %i.qc = invoke noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #35
          to label %bb.jk unwind label %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i5219 ; 4 uses

_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i5219:       ; preds = %bb.jj
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %.body5220

bb.jk:                                            ; preds = %bb.jj
  store ptr %i.qc, ptr %90, align 8, !tbaa !110
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qc, i64 9 ; 2 uses
  store ptr %i.qe, ptr %i.ot, align 8, !tbaa !114
  store i8 59, ptr %i.qc, align 1
  %.sroa.59354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qc, i64 1
  %i.qf = bitcast i64 %i.qb to <8 x i8>
  %i.qg = shufflevector <8 x i8> %i.qf, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.qg, ptr %.sroa.59354.0..sroa_idx, align 1
  store ptr %i.qe, ptr %i.ou, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #32
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7to_cborERKSD_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %91, ptr noundef nonnull align 8 dereferenceable(16) %86)
          to label %bb.jl unwind label %bb.kx

bb.jl:                                            ; preds = %bb.jk
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %94, i32 noundef 10)
          to label %bb.jm unwind label %bb.ky

bb.jm:                                            ; preds = %bb.jl
  %i.qh = load i32, ptr %94, align 4, !tbaa !94
  store ptr %91, ptr %93, align 8
  store i32 %i.qh, ptr %.sroa.2989.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKSt6vectorIhSaIhEEEeqIS6_EEDTcmcvveqclL_ZNS0_7declvalIS6_EEOT_vEEclsr7doctest6detailE7declvalISA_EEtlNS0_6ResultEEESB_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %92, ptr noundef nonnull align 8 dereferenceable(12) %93, ptr noundef nonnull align 8 dereferenceable(24) %90)
          to label %bb.jn unwind label %bb.ky

bb.jn:                                            ; preds = %bb.jm
  %i.qi = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 216, ptr noundef nonnull @.str.27, ptr noundef nonnull align 8 dereferenceable(32) %92)
          to label %bb.jo unwind label %bb.kz     ; 0 uses

bb.jo:                                            ; preds = %bb.jn
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ov) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %97, i32 noundef 10)
          to label %bb.jp unwind label %bb.lb

bb.jp:                                            ; preds = %bb.jo
  %i.qj = load ptr, ptr %i.ow, align 8, !tbaa !115
  %i.qk = load ptr, ptr %91, align 8, !tbaa !110
  %i.ql = ptrtoint ptr %i.qj to i64
  %i.qm = ptrtoint ptr %i.qk to i64
  %i.qn = sub i64 %i.ql, %i.qm
  %i.qo = load i32, ptr %97, align 4, !tbaa !94
  store i64 %i.qn, ptr %96, align 8
  store i32 %i.qo, ptr %.sroa.2985.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #32
  store i32 9, ptr %i.q, align 4, !tbaa !124
  invoke void @_ZN7doctest6detail14Expression_lhsImEeqIiEEDTcmcvveqclL_ZNS0_7declvalImEEOT_vEEclsr7doctest6detailE7declvalIS5_EEtlNS0_6ResultEEES6_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %95, ptr noundef nonnull align 8 dereferenceable(12) %96, ptr noundef nonnull align 4 dereferenceable(4) %i.q)
          to label %bb.jq unwind label %bb.lc

bb.jq:                                            ; preds = %bb.jp
  %i.qp = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 217, ptr noundef nonnull @.str.39, ptr noundef nonnull align 8 dereferenceable(32) %95)
          to label %bb.jr unwind label %bb.ld     ; 0 uses

bb.jr:                                            ; preds = %bb.jq
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ox) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %100, i32 noundef 10)
          to label %bb.js unwind label %bb.lg

bb.js:                                            ; preds = %bb.jr
  %i.qq = load ptr, ptr %91, align 8, !tbaa !110
  %i.qr = load i32, ptr %100, align 4, !tbaa !94
  store ptr %i.qq, ptr %99, align 8
  store i32 %i.qr, ptr %.sroa.2981.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #32
  store i32 59, ptr %i.r, align 4, !tbaa !124
  invoke void @_ZN7doctest6detail14Expression_lhsIRKhEeqIiEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %98, ptr noundef nonnull align 8 dereferenceable(12) %99, ptr noundef nonnull align 4 dereferenceable(4) %i.r)
          to label %bb.jt unwind label %bb.lh

bb.jt:                                            ; preds = %bb.js
  %i.qs = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 220, ptr noundef nonnull @.str.40, ptr noundef nonnull align 8 dereferenceable(32) %98)
          to label %bb.ju unwind label %bb.li     ; 0 uses

bb.ju:                                            ; preds = %bb.jt
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.oy) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #32
  %i.qt = load ptr, ptr %91, align 8, !tbaa !110  ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 1
  %1717 = load i32, ptr %i.qu, align 1
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qt, i64 5
  %1718 = load i32, ptr %i.qv, align 1
  %i.qw = zext i32 %1717 to i64
  %i.qx = zext i32 %1718 to i64
  %i.qy = shl nuw i64 %i.qx, 32
  %i.qz = or disjoint i64 %i.qy, %i.qw
  %op.rdx10909 = call i64 @llvm.bswap.i64(i64 %i.qz)
  store i64 %op.rdx10909, ptr %i.s, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %102) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %103, i32 noundef 10)
          to label %bb.jv unwind label %bb.ll

bb.jv:                                            ; preds = %bb.ju
  %i.ra = load i32, ptr %103, align 4, !tbaa !94
  store ptr %i.s, ptr %102, align 8
  store i32 %i.ra, ptr %.sroa.2977.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKmEeqIS3_EEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %101, ptr noundef nonnull align 8 dereferenceable(12) %102, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.jw unwind label %bb.ll

bb.jw:                                            ; preds = %bb.jv
  %i.rb = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 229, ptr noundef nonnull @.str.41, ptr noundef nonnull align 8 dereferenceable(32) %101)
          to label %bb.jx unwind label %bb.lm     ; 0 uses

bb.jx:                                            ; preds = %bb.jw
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.oz) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %106) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %106, i32 noundef 10)
          to label %bb.jy unwind label %bb.lo

bb.jy:                                            ; preds = %bb.jx
  %i.rc = load i64, ptr %i.s, align 8, !tbaa !121
  %i.rd = xor i64 %i.rc, -1
  %i.re = load i32, ptr %106, align 4, !tbaa !94
  store i64 %i.rd, ptr %105, align 8
  store i32 %i.re, ptr %.sroa.2973.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIlEeqIRKlEEDTcmcvveqclL_ZNS0_7declvalIlEEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %104, ptr noundef nonnull align 8 dereferenceable(12) %105, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.jz unwind label %bb.lp

bb.jz:                                            ; preds = %bb.jy
  %i.rf = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 230, ptr noundef nonnull @.str.42, ptr noundef nonnull align 8 dereferenceable(32) %104)
          to label %bb.ka unwind label %bb.lq     ; 0 uses

bb.ka:                                            ; preds = %bb.jz
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.pa) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %108) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %109) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %109, i32 noundef 10)
          to label %bb.kb unwind label %bb.ls

bb.kb:                                            ; preds = %bb.ka
  call void @llvm.lifetime.start.p0(ptr nonnull %110) #32
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9from_cborIRKSC_EESD_OT_bbNS0_6detail18cbor_tag_handler_tE(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %110, ptr noundef nonnull align 8 dereferenceable(24) %91, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef 0)
          to label %bb.kc unwind label %bb.lt

bb.kc:                                            ; preds = %bb.kb
  call void @llvm.experimental.noalias.scope.decl(metadata !901)
  %i.rg = load i32, ptr %109, align 4, !tbaa !94, !noalias !901
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %108, ptr noundef nonnull align 8 dereferenceable(16) %110, i64 16, i1 false), !tbaa.struct !117
  store i8 0, ptr %110, align 8, !tbaa !113, !noalias !901
  store ptr null, ptr %i.pb, align 8, !tbaa !105, !noalias !901
  store i32 %i.rg, ptr %i.pc, align 8, !tbaa !119, !alias.scope !901
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRKSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISM_EEtlNS0_6ResultEEESN_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %107, ptr noundef nonnull align 8 dereferenceable(20) %108, ptr noundef nonnull align 8 dereferenceable(16) %86)
          to label %bb.kd unwind label %bb.lu

bb.kd:                                            ; preds = %bb.kc
  %i.rh = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 233, ptr noundef nonnull @.str.30, ptr noundef nonnull align 8 dereferenceable(32) %107)
          to label %bb.ke unwind label %bb.lv     ; 0 uses

bb.ke:                                            ; preds = %bb.kd
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.pd) #32
  %i.ri = load i8, ptr %108, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.pe, i8 noundef zeroext %i.ri)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5233 unwind label %bb.kf, !inline_history !111

bb.kf:                                            ; preds = %bb.ke
  %i.rj = landingpad { ptr, i32 }
          catch ptr null
  %i.rk = extractvalue { ptr, i32 } %i.rj, 0
  call void @__clang_call_terminate(ptr %i.rk) #33, !inline_history !111
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5233: ; preds = %bb.ke
  %i.rl = load i8, ptr %110, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.pb, i8 noundef zeroext %i.rl)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5234 unwind label %bb.kg, !inline_history !111

bb.kg:                                            ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5233
  %i.rm = landingpad { ptr, i32 }
          catch ptr null
  %i.rn = extractvalue { ptr, i32 } %i.rm, 0
  call void @__clang_call_terminate(ptr %i.rn) #33, !inline_history !111
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5234: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5233
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %111) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %112) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %113) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %113, i32 noundef 10)
          to label %bb.kh unwind label %bb.lz

bb.kh:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5234
  call void @llvm.lifetime.start.p0(ptr nonnull %114) #32
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9from_cborIRKSC_EESD_OT_bbNS0_6detail18cbor_tag_handler_tE(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %114, ptr noundef nonnull align 8 dereferenceable(24) %91, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.ki unwind label %bb.ma

bb.ki:                                            ; preds = %bb.kh
  call void @llvm.experimental.noalias.scope.decl(metadata !902)
  %i.ro = load i32, ptr %113, align 4, !tbaa !94, !noalias !902
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %112, ptr noundef nonnull align 8 dereferenceable(16) %114, i64 16, i1 false), !tbaa.struct !117
  store i8 0, ptr %114, align 8, !tbaa !113, !noalias !902
  store ptr null, ptr %i.pf, align 8, !tbaa !105, !noalias !902
  store i32 %i.ro, ptr %i.pg, align 8, !tbaa !119, !alias.scope !902
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRKSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISM_EEtlNS0_6ResultEEESN_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %111, ptr noundef nonnull align 8 dereferenceable(20) %112, ptr noundef nonnull align 8 dereferenceable(16) %86)
          to label %bb.kj unwind label %bb.mb

bb.kj:                                            ; preds = %bb.ki
  %i.rp = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 234, ptr noundef nonnull @.str.31, ptr noundef nonnull align 8 dereferenceable(32) %111)
          to label %bb.kk unwind label %bb.mc     ; 0 uses

bb.kk:                                            ; preds = %bb.kj
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ph) #32
  %i.rq = load i8, ptr %112, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.pi, i8 noundef zeroext %i.rq)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5235 unwind label %bb.kl, !inline_history !111

bb.kl:                                            ; preds = %bb.kk
  %i.rr = landingpad { ptr, i32 }
          catch ptr null
  %i.rs = extractvalue { ptr, i32 } %i.rr, 0
  call void @__clang_call_terminate(ptr %i.rs) #33, !inline_history !111
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5235: ; preds = %bb.kk
  %i.rt = load i8, ptr %114, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.pf, i8 noundef zeroext %i.rt)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5236 unwind label %bb.km, !inline_history !111

bb.km:                                            ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5235
  %i.ru = landingpad { ptr, i32 }
          catch ptr null
  %i.rv = extractvalue { ptr, i32 } %i.ru, 0
  call void @__clang_call_terminate(ptr %i.rv) #33, !inline_history !111
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5236: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5235
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #32
  %i.rw = load ptr, ptr %91, align 8, !tbaa !110  ; 2 uses
  %.not.i.i.i5237 = icmp eq ptr %i.rw, null
  br i1 %.not.i.i.i5237, label %_ZNSt6vectorIhSaIhEED2Ev.exit5239, label %bb.kn

bb.kn:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5236
  call void @_ZdlPv(ptr noundef nonnull %i.rw) #34
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit5239

_ZNSt6vectorIhSaIhEED2Ev.exit5239:                ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5236, %bb.kn
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #32
  %i.rx = load ptr, ptr %90, align 8, !tbaa !110  ; 2 uses
  %.not.i.i.i5240 = icmp eq ptr %i.rx, null
  br i1 %.not.i.i.i5240, label %_ZNSt6vectorIhSaIhEED2Ev.exit5242, label %bb.ko

bb.ko:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit5239
  call void @_ZdlPv(ptr noundef nonnull %i.rx) #34
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit5242

_ZNSt6vectorIhSaIhEED2Ev.exit5242:                ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit5239, %bb.ko
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #32
  %i.ry = load i8, ptr %86, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.or, i8 noundef zeroext %i.ry)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5243 unwind label %bb.kp, !inline_history !111

bb.kp:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit5242
  %i.rz = landingpad { ptr, i32 }
          catch ptr null
  %i.sa = extractvalue { ptr, i32 } %i.rz, 0
  call void @__clang_call_terminate(ptr %i.sa) #33, !inline_history !111
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5243: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit5242
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_1EE", i64 16), ptr %85, align 8, !tbaa !91
  %i.sb = load i8, ptr %i.pj, align 8, !tbaa !98, !range !99, !noundef !100
  %i.sc = trunc nuw i8 %i.sb to i1
  br i1 %i.sc, label %bb.kq, label %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_1ED2Ev.exit"

bb.kq:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5243
  invoke void @_ZN7doctest6detail16ContextScopeBase7destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %85)
          to label %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_1ED2Ev.exit" unwind label %bb.kr, !inline_history !125

end_hunk_0
begin_hunk_1_@_ZL19DOCTEST_ANON_FUNC_7v:bb.a
  %i.beq = getelementptr inbounds nuw i8, ptr %381, i64 8 ; 2 uses
  %.sroa.2787.0..sroa_idx = getelementptr inbounds nuw i8, ptr %385, i64 8
  %i.ber = getelementptr inbounds nuw i8, ptr %384, i64 8 ; 2 uses
  %i.bes = getelementptr inbounds nuw i8, ptr %390, i64 8 ; 2 uses
  %i.bet = getelementptr inbounds nuw i8, ptr %388, i64 16
  %i.beu = getelementptr inbounds nuw i8, ptr %387, i64 8 ; 2 uses
  %i.bev = getelementptr inbounds nuw i8, ptr %388, i64 8
  %i.bew = getelementptr inbounds nuw i8, ptr %394, i64 8 ; 2 uses
  %i.bex = getelementptr inbounds nuw i8, ptr %392, i64 16
  %i.bey = getelementptr inbounds nuw i8, ptr %391, i64 8 ; 2 uses
  %i.bez = getelementptr inbounds nuw i8, ptr %392, i64 8
  %i.bfa = getelementptr inbounds nuw i8, ptr %368, i64 8
  br label %bb.aqo

bb.aqi:                                           ; preds = %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_10ED2Ev.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #32
  br label %bb.atp

bb.aqj:                                           ; preds = %bb.aqc, %bb.anb
  %.pn4796.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn4796.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.aqc ], [ %i.bau, %bb.anb ]
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %337) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %337) #32
  br label %bb.awz

bb.aqk:                                           ; preds = %bb.aqd
  %i.bfb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aqm

bb.aql:                                           ; preds = %bb.aqe
  %i.bfc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %367) #32
  br label %bb.aqm

bb.aqm:                                           ; preds = %bb.aql, %bb.aqk
  %.pn2961 = phi { ptr, i32 } [ %i.bfc, %bb.aql ], [ %i.bfb, %bb.aqk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %367) #32
  br label %bb.awz

bb.aqn:                                           ; preds = %bb.aqf
  %i.bfd = landingpad { ptr, i32 }
          cleanup
  br label %bb.atv

bb.aqo:                                           ; preds = %bb.aqh, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_10ED2Ev.exit"
  %.02807.idx9867 = phi i64 [ 0, %bb.aqh ], [ %.02807.add, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_10ED2Ev.exit" ] ; 2 uses
  %.02807.ptr = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.02807.idx9867
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az) #32
  %i.bfe = load i64, ptr %.02807.ptr, align 8, !tbaa !121
  store i64 %i.bfe, ptr %i.az, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %368) #32
  invoke void @_ZN7doctest6detail16ContextScopeBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %368)
          to label %bb.aqp unwind label %bb.ary

bb.aqp:                                           ; preds = %bb.aqo
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_10EE", i64 16), ptr %368, align 8, !tbaa !91, !alias.scope !929
  store i64 %i.beh, ptr %i.bei, align 8, !tbaa !123, !alias.scope !929
  call void @llvm.lifetime.start.p0(ptr nonnull %369) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %369, i8 0, i64 16, i1 false)
  store i8 5, ptr %369, align 8, !tbaa !113
  store i64 -1, ptr %i.bej, align 8, !tbaa !105
  %i.bff = load i64, ptr %i.az, align 8, !tbaa !121
  %i.bfg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE12get_ref_implIRlSD_EET_RT0_(ptr noundef nonnull align 8 dereferenceable(16) %369)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRlTnNSt9enable_ifIXsr3std12is_referenceIT_EE5valueEiE4typeELi0EEESH_v.exit5570 unwind label %bb.arz

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRlTnNSt9enable_ifIXsr3std12is_referenceIT_EE5valueEiE4typeELi0EEESH_v.exit5570: ; preds = %bb.aqp
  store i64 %i.bff, ptr %i.bfg, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %370) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %371) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %372) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %372, i32 noundef 10)
          to label %bb.aqq unwind label %bb.asa

bb.aqq:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRlTnNSt9enable_ifIXsr3std12is_referenceIT_EE5valueEiE4typeELi0EEESH_v.exit5570
  %i.bfh = load i8, ptr %369, align 8, !tbaa !113
  %i.bfi = add i8 %i.bfh, -5
  %spec.select.i5571 = icmp ult i8 %i.bfi, 2
  %i.bfj = load i32, ptr %372, align 4, !tbaa !94
  %.sroa.22.0.insert.ext.i5572 = zext i32 %i.bfj to i64
  %.sroa.22.0.insert.shift.i5573 = shl nuw i64 %.sroa.22.0.insert.ext.i5572, 32
  %.sroa.0.0.insert.ext.i5574 = zext i1 %spec.select.i5571 to i64
  %.sroa.0.0.insert.insert.i5575 = or disjoint i64 %.sroa.22.0.insert.shift.i5573, %.sroa.0.0.insert.ext.i5574
  store i64 %.sroa.0.0.insert.insert.i5575, ptr %371, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIbEcvNS0_6ResultEEv(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %370, ptr noundef nonnull align 4 dereferenceable(8) %371)
          to label %bb.aqr unwind label %bb.asb

bb.aqr:                                           ; preds = %bb.aqq
  %i.bfk = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 575, ptr noundef nonnull @.str.38, ptr noundef nonnull align 8 dereferenceable(32) %370)
          to label %bb.aqs unwind label %bb.asc   ; 0 uses

bb.aqs:                                           ; preds = %bb.aqr
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bek) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %372) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %371) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %370) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %373) #32
  %i.bfl = load <8 x i8>, ptr %i.az, align 8, !tbaa !121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %373, i8 0, i64 24, i1 false)
  %i.bfm = invoke noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #35
          to label %bb.aqt unwind label %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i5577 ; 4 uses

_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i5577:       ; preds = %bb.aqs
  %i.bfn = landingpad { ptr, i32 }
          cleanup
  br label %.body5578

bb.aqt:                                           ; preds = %bb.aqs
  store ptr %i.bfm, ptr %373, align 8, !tbaa !110
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bfm, i64 9 ; 2 uses
  store ptr %i.bfo, ptr %i.bel, align 8, !tbaa !114
  store i8 27, ptr %i.bfm, align 1
  %.sroa.59256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bfm, i64 1
  %i.bfp = shufflevector <8 x i8> %i.bfl, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.bfp, ptr %.sroa.59256.0..sroa_idx, align 1
  store ptr %i.bfo, ptr %i.bem, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %374) #32
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7to_cborERKSD_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %374, ptr noundef nonnull align 8 dereferenceable(16) %369)
          to label %bb.aqu unwind label %bb.ase

bb.aqu:                                           ; preds = %bb.aqt
  call void @llvm.lifetime.start.p0(ptr nonnull %375) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %376) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %377) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %377, i32 noundef 10)
          to label %bb.aqv unwind label %bb.asf

bb.aqv:                                           ; preds = %bb.aqu
  %i.bfq = load i32, ptr %377, align 4, !tbaa !94
  store ptr %374, ptr %376, align 8
  store i32 %i.bfq, ptr %.sroa.2799.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKSt6vectorIhSaIhEEEeqIS6_EEDTcmcvveqclL_ZNS0_7declvalIS6_EEOT_vEEclsr7doctest6detailE7declvalISA_EEtlNS0_6ResultEEESB_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %375, ptr noundef nonnull align 8 dereferenceable(12) %376, ptr noundef nonnull align 8 dereferenceable(24) %373)
          to label %bb.aqw unwind label %bb.asf

bb.aqw:                                           ; preds = %bb.aqv
  %i.bfr = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 593, ptr noundef nonnull @.str.27, ptr noundef nonnull align 8 dereferenceable(32) %375)
          to label %bb.aqx unwind label %bb.asg   ; 0 uses

bb.aqx:                                           ; preds = %bb.aqw
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ben) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %377) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %376) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %375) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %378) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %379) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %380) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %380, i32 noundef 10)
          to label %bb.aqy unwind label %bb.asi

bb.aqy:                                           ; preds = %bb.aqx
  %i.bfs = load ptr, ptr %i.beo, align 8, !tbaa !115
  %i.bft = load ptr, ptr %374, align 8, !tbaa !110
  %i.bfu = ptrtoint ptr %i.bfs to i64
  %i.bfv = ptrtoint ptr %i.bft to i64
  %i.bfw = sub i64 %i.bfu, %i.bfv
  %i.bfx = load i32, ptr %380, align 4, !tbaa !94
  store i64 %i.bfw, ptr %379, align 8
  store i32 %i.bfx, ptr %.sroa.2795.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba) #32
  store i32 9, ptr %i.ba, align 4, !tbaa !124
  invoke void @_ZN7doctest6detail14Expression_lhsImEeqIiEEDTcmcvveqclL_ZNS0_7declvalImEEOT_vEEclsr7doctest6detailE7declvalIS5_EEtlNS0_6ResultEEES6_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %378, ptr noundef nonnull align 8 dereferenceable(12) %379, ptr noundef nonnull align 4 dereferenceable(4) %i.ba)
          to label %bb.aqz unwind label %bb.asj

bb.aqz:                                           ; preds = %bb.aqy
  %i.bfy = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 594, ptr noundef nonnull @.str.39, ptr noundef nonnull align 8 dereferenceable(32) %378)
          to label %bb.ara unwind label %bb.ask   ; 0 uses

bb.ara:                                           ; preds = %bb.aqz
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bep) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %380) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %379) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %378) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %381) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %382) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %383) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %383, i32 noundef 10)
          to label %bb.arb unwind label %bb.asn

bb.arb:                                           ; preds = %bb.ara
  %i.bfz = load ptr, ptr %374, align 8, !tbaa !110
  %i.bga = load i32, ptr %383, align 4, !tbaa !94
  store ptr %i.bfz, ptr %382, align 8
  store i32 %i.bga, ptr %.sroa.2791.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb) #32
  store i32 27, ptr %i.bb, align 4, !tbaa !124
  invoke void @_ZN7doctest6detail14Expression_lhsIRKhEeqIiEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %381, ptr noundef nonnull align 8 dereferenceable(12) %382, ptr noundef nonnull align 4 dereferenceable(4) %i.bb)
          to label %bb.arc unwind label %bb.aso

bb.arc:                                           ; preds = %bb.arb
  %i.bgb = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 597, ptr noundef nonnull @.str.72, ptr noundef nonnull align 8 dereferenceable(32) %381)
          to label %bb.ard unwind label %bb.asp   ; 0 uses

bb.ard:                                           ; preds = %bb.arc
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.beq) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %383) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %382) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %381) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc) #32
  %i.bgc = load ptr, ptr %374, align 8, !tbaa !110 ; 2 uses
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bgc, i64 1
  %1719 = load i32, ptr %i.bgd, align 1
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bgc, i64 5
  %1720 = load i32, ptr %i.bge, align 1
  %i.bgf = zext i32 %1719 to i64
  %i.bgg = zext i32 %1720 to i64
  %i.bgh = shl nuw i64 %i.bgg, 32
  %i.bgi = or disjoint i64 %i.bgh, %i.bgf
  %op.rdx10908 = call i64 @llvm.bswap.i64(i64 %i.bgi)
  store i64 %op.rdx10908, ptr %i.bc, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %384) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %385) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %386) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %386, i32 noundef 10)
          to label %bb.are unwind label %bb.ass

bb.are:                                           ; preds = %bb.ard
  %i.bgj = load i32, ptr %386, align 4, !tbaa !94
  store ptr %i.bc, ptr %385, align 8
  store i32 %i.bgj, ptr %.sroa.2787.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKmEeqIS3_EEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %384, ptr noundef nonnull align 8 dereferenceable(12) %385, ptr noundef nonnull align 8 dereferenceable(8) %i.az)
          to label %bb.arf unwind label %bb.ass

bb.arf:                                           ; preds = %bb.are
  %i.bgk = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 606, ptr noundef nonnull @.str.68, ptr noundef nonnull align 8 dereferenceable(32) %384)
          to label %bb.arg unwind label %bb.ast   ; 0 uses

bb.arg:                                           ; preds = %bb.arf
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ber) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %386) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %385) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %384) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %387) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %388) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %389) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %389, i32 noundef 10)
          to label %bb.arh unwind label %bb.asv

bb.arh:                                           ; preds = %bb.arg
  call void @llvm.lifetime.start.p0(ptr nonnull %390) #32
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9from_cborIRKSC_EESD_OT_bbNS0_6detail18cbor_tag_handler_tE(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %390, ptr noundef nonnull align 8 dereferenceable(24) %374, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef 0)
          to label %bb.ari unwind label %bb.asw

bb.ari:                                           ; preds = %bb.arh
  call void @llvm.experimental.noalias.scope.decl(metadata !930)
  %i.bgl = load i32, ptr %389, align 4, !tbaa !94, !noalias !930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %388, ptr noundef nonnull align 8 dereferenceable(16) %390, i64 16, i1 false), !tbaa.struct !117
  store i8 0, ptr %390, align 8, !tbaa !113, !noalias !930
  store ptr null, ptr %i.bes, align 8, !tbaa !105, !noalias !930
  store i32 %i.bgl, ptr %i.bet, align 8, !tbaa !119, !alias.scope !930
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISL_EEtlNS0_6ResultEEESM_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %387, ptr noundef nonnull align 8 dereferenceable(20) %388, ptr noundef nonnull align 8 dereferenceable(16) %369)
          to label %bb.arj unwind label %bb.asx

bb.arj:                                           ; preds = %bb.ari
  %i.bgm = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 609, ptr noundef nonnull @.str.30, ptr noundef nonnull align 8 dereferenceable(32) %387)
          to label %bb.ark unwind label %bb.asy   ; 0 uses

bb.ark:                                           ; preds = %bb.arj
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.beu) #32
  %i.bgn = load i8, ptr %388, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bev, i8 noundef zeroext %i.bgn)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5589 unwind label %bb.arl, !inline_history !111

bb.arl:                                           ; preds = %bb.ark
  %i.bgo = landingpad { ptr, i32 }
          catch ptr null
  %i.bgp = extractvalue { ptr, i32 } %i.bgo, 0
  call void @__clang_call_terminate(ptr %i.bgp) #33, !inline_history !111
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5589: ; preds = %bb.ark
  %i.bgq = load i8, ptr %390, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bes, i8 noundef zeroext %i.bgq)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5590 unwind label %bb.arm, !inline_history !111

bb.arm:                                           ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5589
  %i.bgr = landingpad { ptr, i32 }
          catch ptr null
  %i.bgs = extractvalue { ptr, i32 } %i.bgr, 0
  call void @__clang_call_terminate(ptr %i.bgs) #33, !inline_history !111
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5590: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5589
  call void @llvm.lifetime.end.p0(ptr nonnull %390) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %389) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %388) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %387) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %391) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %392) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %393) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %393, i32 noundef 10)
          to label %bb.arn unwind label %bb.atc

bb.arn:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5590
  call void @llvm.lifetime.start.p0(ptr nonnull %394) #32
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9from_cborIRKSC_EESD_OT_bbNS0_6detail18cbor_tag_handler_tE(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %394, ptr noundef nonnull align 8 dereferenceable(24) %374, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.aro unwind label %bb.atd

bb.aro:                                           ; preds = %bb.arn
  call void @llvm.experimental.noalias.scope.decl(metadata !931)
  %i.bgt = load i32, ptr %393, align 4, !tbaa !94, !noalias !931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %392, ptr noundef nonnull align 8 dereferenceable(16) %394, i64 16, i1 false), !tbaa.struct !117
  store i8 0, ptr %394, align 8, !tbaa !113, !noalias !931
  store ptr null, ptr %i.bew, align 8, !tbaa !105, !noalias !931
  store i32 %i.bgt, ptr %i.bex, align 8, !tbaa !119, !alias.scope !931
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISL_EEtlNS0_6ResultEEESM_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %391, ptr noundef nonnull align 8 dereferenceable(20) %392, ptr noundef nonnull align 8 dereferenceable(16) %369)
          to label %bb.arp unwind label %bb.ate

bb.arp:                                           ; preds = %bb.aro
  %i.bgu = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 610, ptr noundef nonnull @.str.31, ptr noundef nonnull align 8 dereferenceable(32) %391)
          to label %bb.arq unwind label %bb.atf   ; 0 uses

bb.arq:                                           ; preds = %bb.arp
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bey) #32
  %i.bgv = load i8, ptr %392, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bez, i8 noundef zeroext %i.bgv)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5591 unwind label %bb.arr, !inline_history !111

bb.arr:                                           ; preds = %bb.arq
  %i.bgw = landingpad { ptr, i32 }
          catch ptr null
  %i.bgx = extractvalue { ptr, i32 } %i.bgw, 0
  call void @__clang_call_terminate(ptr %i.bgx) #33, !inline_history !111
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5591: ; preds = %bb.arq
  %i.bgy = load i8, ptr %394, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bew, i8 noundef zeroext %i.bgy)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5592 unwind label %bb.ars, !inline_history !111

bb.ars:                                           ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5591
  %i.bgz = landingpad { ptr, i32 }
          catch ptr null
  %i.bha = extractvalue { ptr, i32 } %i.bgz, 0
  call void @__clang_call_terminate(ptr %i.bha) #33, !inline_history !111
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5592: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5591
  call void @llvm.lifetime.end.p0(ptr nonnull %394) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %393) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %392) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %391) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc) #32
  %i.bhb = load ptr, ptr %374, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i5593 = icmp eq ptr %i.bhb, null
  br i1 %.not.i.i.i5593, label %_ZNSt6vectorIhSaIhEED2Ev.exit5595, label %bb.art

bb.art:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5592
  call void @_ZdlPv(ptr noundef nonnull %i.bhb) #34
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit5595

_ZNSt6vectorIhSaIhEED2Ev.exit5595:                ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5592, %bb.art
  call void @llvm.lifetime.end.p0(ptr nonnull %374) #32
  %i.bhc = load ptr, ptr %373, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i5596 = icmp eq ptr %i.bhc, null
  br i1 %.not.i.i.i5596, label %_ZNSt6vectorIhSaIhEED2Ev.exit5598, label %bb.aru

bb.aru:                                           ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit5595
  call void @_ZdlPv(ptr noundef nonnull %i.bhc) #34
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit5598

_ZNSt6vectorIhSaIhEED2Ev.exit5598:                ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit5595, %bb.aru
  call void @llvm.lifetime.end.p0(ptr nonnull %373) #32
  %i.bhd = load i8, ptr %369, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bej, i8 noundef zeroext %i.bhd)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5599 unwind label %bb.arv, !inline_history !111

bb.arv:                                           ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit5598
  %i.bhe = landingpad { ptr, i32 }
          catch ptr null
  %i.bhf = extractvalue { ptr, i32 } %i.bhe, 0
  call void @__clang_call_terminate(ptr %i.bhf) #33, !inline_history !111
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5599: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit5598
  call void @llvm.lifetime.end.p0(ptr nonnull %369) #32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_10EE", i64 16), ptr %368, align 8, !tbaa !91
  %i.bhg = load i8, ptr %i.bfa, align 8, !tbaa !98, !range !99, !noundef !100
  %i.bhh = trunc nuw i8 %i.bhg to i1
  br i1 %i.bhh, label %bb.arw, label %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_10ED2Ev.exit"

bb.arw:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5599
  invoke void @_ZN7doctest6detail16ContextScopeBase7destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %368)
          to label %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_10ED2Ev.exit" unwind label %bb.arx, !inline_history !139

bb.arx:                                           ; preds = %bb.arw
  %i.bhi = landingpad { ptr, i32 }
          catch ptr null
  %i.bhj = extractvalue { ptr, i32 } %i.bhi, 0
  call void @__clang_call_terminate(ptr %i.bhj) #33, !inline_history !139
  unreachable

"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_10ED2Ev.exit": ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5599, %bb.arw
  call void @_ZN7doctest13IContextScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(24) %368) #32, !inline_history !139
  call void @llvm.lifetime.end.p0(ptr nonnull %368) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #32
  %.02807.add = add nuw nsw i64 %.02807.idx9867, 8 ; 2 uses
  %.not2963 = icmp eq i64 %.02807.add, 16
  br i1 %.not2963, label %bb.aqi, label %bb.aqo

bb.ary:                                           ; preds = %bb.aqo
  %i.bhk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ato

bb.arz:                                           ; preds = %bb.aqp
  %i.bhl = landingpad { ptr, i32 }
          cleanup
  br label %bb.atn

end_hunk_1
begin_hunk_2_@_ZL19DOCTEST_ANON_FUNC_7v:bb.a
  %.sroa.2676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %545, i64 8
  %i.ccw = getelementptr inbounds nuw i8, ptr %544, i64 8 ; 2 uses
  %i.ccx = getelementptr inbounds nuw i8, ptr %543, i64 8
  %.sroa.2672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %548, i64 8
  %i.ccy = getelementptr inbounds nuw i8, ptr %547, i64 8 ; 2 uses
  %.sroa.2668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %551, i64 8
  %i.ccz = getelementptr inbounds nuw i8, ptr %550, i64 8 ; 2 uses
  %.sroa.2664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %554, i64 8
  %i.cda = getelementptr inbounds nuw i8, ptr %553, i64 8 ; 2 uses
  %i.cdb = getelementptr inbounds nuw i8, ptr %559, i64 8 ; 2 uses
  %i.cdc = getelementptr inbounds nuw i8, ptr %557, i64 16
  %i.cdd = getelementptr inbounds nuw i8, ptr %556, i64 8 ; 2 uses
  %i.cde = getelementptr inbounds nuw i8, ptr %557, i64 8
  %i.cdf = getelementptr inbounds nuw i8, ptr %563, i64 8 ; 2 uses
  %i.cdg = getelementptr inbounds nuw i8, ptr %561, i64 16
  %i.cdh = getelementptr inbounds nuw i8, ptr %560, i64 8 ; 2 uses
  %i.cdi = getelementptr inbounds nuw i8, ptr %561, i64 8
  %i.cdj = getelementptr inbounds nuw i8, ptr %537, i64 8
  br label %bb.bkr

bb.bkl:                                           ; preds = %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_16ED2Ev.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw) #32
  br label %bb.bnr

bb.bkm:                                           ; preds = %bb.bkf, %bb.bhf
  %.pn4611.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn4611.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bkf ], [ %i.bzf, %bb.bhf ]
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %506) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %506) #32
  br label %bb.bpc

bb.bkn:                                           ; preds = %bb.bkg
  %i.cdk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bkp

bb.bko:                                           ; preds = %bb.bkh
  %i.cdl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %536) #32
  br label %bb.bkp

bb.bkp:                                           ; preds = %bb.bko, %bb.bkn
  %.pn2981 = phi { ptr, i32 } [ %i.cdl, %bb.bko ], [ %i.cdk, %bb.bkn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %536) #32
  br label %bb.bpc

bb.bkq:                                           ; preds = %bb.bki
  %i.cdm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bns

bb.bkr:                                           ; preds = %bb.bkk, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_16ED2Ev.exit"
  %.02809.idx9869 = phi i64 [ 0, %bb.bkk ], [ %.02809.add, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_16ED2Ev.exit" ] ; 2 uses
  %.02809.ptr = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.02809.idx9869
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx) #32
  %i.cdn = load i64, ptr %.02809.ptr, align 8, !tbaa !121
  store i64 %i.cdn, ptr %i.bx, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %537) #32
  invoke void @_ZN7doctest6detail16ContextScopeBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %537)
          to label %bb.bks unwind label %bb.bmb

bb.bks:                                           ; preds = %bb.bkr
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_16EE", i64 16), ptr %537, align 8, !tbaa !91, !alias.scope !947
  store i64 %i.ccq, ptr %i.ccr, align 8, !tbaa !123, !alias.scope !947
  call void @llvm.lifetime.start.p0(ptr nonnull %538) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %538, i8 0, i64 16, i1 false)
  %i.cdo = load i64, ptr %i.bx, align 8, !tbaa !121
  store i8 6, ptr %538, align 8, !tbaa !113
  store i64 %i.cdo, ptr %i.ccs, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %539) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %540) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %541) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %541, i32 noundef 10)
          to label %bb.bkt unwind label %bb.bmc

bb.bkt:                                           ; preds = %bb.bks
  %i.cdp = load i8, ptr %538, align 8, !tbaa !113
  %i.cdq = icmp eq i8 %i.cdp, 6
  %i.cdr = load i32, ptr %541, align 4, !tbaa !94
  %.sroa.22.0.insert.ext.i5773 = zext i32 %i.cdr to i64
  %.sroa.22.0.insert.shift.i5774 = shl nuw i64 %.sroa.22.0.insert.ext.i5773, 32
  %.sroa.0.0.insert.ext.i5775 = zext i1 %i.cdq to i64
  %.sroa.0.0.insert.insert.i5776 = or disjoint i64 %.sroa.22.0.insert.shift.i5774, %.sroa.0.0.insert.ext.i5775
  store i64 %.sroa.0.0.insert.insert.i5776, ptr %540, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIbEcvNS0_6ResultEEv(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %539, ptr noundef nonnull align 4 dereferenceable(8) %540)
          to label %bb.bku unwind label %bb.bmd

bb.bku:                                           ; preds = %bb.bkt
  %i.cds = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 812, ptr noundef nonnull @.str.78, ptr noundef nonnull align 8 dereferenceable(32) %539)
          to label %bb.bkv unwind label %bb.bme   ; 0 uses

bb.bkv:                                           ; preds = %bb.bku
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cct) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %541) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %540) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %539) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %542) #32
  %i.cdt = load <8 x i8>, ptr %i.bx, align 8, !tbaa !121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %542, i8 0, i64 24, i1 false)
  %i.cdu = invoke noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #35
          to label %bb.bkw unwind label %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i5778 ; 4 uses

_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i5778:       ; preds = %bb.bkv
  %i.cdv = landingpad { ptr, i32 }
          cleanup
  br label %.body5779

bb.bkw:                                           ; preds = %bb.bkv
  store ptr %i.cdu, ptr %542, align 8, !tbaa !110
  %i.cdw = getelementptr inbounds nuw i8, ptr %i.cdu, i64 9 ; 2 uses
  store ptr %i.cdw, ptr %i.ccu, align 8, !tbaa !114
  store i8 27, ptr %i.cdu, align 1
  %.sroa.59203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cdu, i64 1
  %i.cdx = shufflevector <8 x i8> %i.cdt, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.cdx, ptr %.sroa.59203.0..sroa_idx, align 1
  store ptr %i.cdw, ptr %i.ccv, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %543) #32
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7to_cborERKSD_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %543, ptr noundef nonnull align 8 dereferenceable(16) %538)
          to label %bb.bkx unwind label %bb.bmg

bb.bkx:                                           ; preds = %bb.bkw
  call void @llvm.lifetime.start.p0(ptr nonnull %544) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %545) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %546) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %546, i32 noundef 10)
          to label %bb.bky unwind label %bb.bmh

bb.bky:                                           ; preds = %bb.bkx
  %i.cdy = load i32, ptr %546, align 4, !tbaa !94
  store ptr %543, ptr %545, align 8
  store i32 %i.cdy, ptr %.sroa.2676.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKSt6vectorIhSaIhEEEeqIS6_EEDTcmcvveqclL_ZNS0_7declvalIS6_EEOT_vEEclsr7doctest6detailE7declvalISA_EEtlNS0_6ResultEEESB_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %544, ptr noundef nonnull align 8 dereferenceable(12) %545, ptr noundef nonnull align 8 dereferenceable(24) %542)
          to label %bb.bkz unwind label %bb.bmh

bb.bkz:                                           ; preds = %bb.bky
  %i.cdz = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 830, ptr noundef nonnull @.str.27, ptr noundef nonnull align 8 dereferenceable(32) %544)
          to label %bb.bla unwind label %bb.bmi   ; 0 uses

bb.bla:                                           ; preds = %bb.bkz
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ccw) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %546) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %545) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %544) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %547) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %548) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %549) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %549, i32 noundef 10)
          to label %bb.blb unwind label %bb.bmk

bb.blb:                                           ; preds = %bb.bla
  %i.cea = load ptr, ptr %i.ccx, align 8, !tbaa !115
  %i.ceb = load ptr, ptr %543, align 8, !tbaa !110
  %i.cec = ptrtoint ptr %i.cea to i64
  %i.ced = ptrtoint ptr %i.ceb to i64
  %i.cee = sub i64 %i.cec, %i.ced
  %i.cef = load i32, ptr %549, align 4, !tbaa !94
  store i64 %i.cee, ptr %548, align 8
  store i32 %i.cef, ptr %.sroa.2672.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by) #32
  store i32 9, ptr %i.by, align 4, !tbaa !124
  invoke void @_ZN7doctest6detail14Expression_lhsImEeqIiEEDTcmcvveqclL_ZNS0_7declvalImEEOT_vEEclsr7doctest6detailE7declvalIS5_EEtlNS0_6ResultEEES6_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %547, ptr noundef nonnull align 8 dereferenceable(12) %548, ptr noundef nonnull align 4 dereferenceable(4) %i.by)
          to label %bb.blc unwind label %bb.bml

bb.blc:                                           ; preds = %bb.blb
  %i.ceg = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 831, ptr noundef nonnull @.str.39, ptr noundef nonnull align 8 dereferenceable(32) %547)
          to label %bb.bld unwind label %bb.bmm   ; 0 uses

bb.bld:                                           ; preds = %bb.blc
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ccy) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %549) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %548) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %547) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %550) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %551) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %552) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %552, i32 noundef 10)
          to label %bb.ble unwind label %bb.bmp

bb.ble:                                           ; preds = %bb.bld
  %i.ceh = load ptr, ptr %543, align 8, !tbaa !110
  %i.cei = load i32, ptr %552, align 4, !tbaa !94
  store ptr %i.ceh, ptr %551, align 8
  store i32 %i.cei, ptr %.sroa.2668.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz) #32
  store i32 27, ptr %i.bz, align 4, !tbaa !124
  invoke void @_ZN7doctest6detail14Expression_lhsIRKhEeqIiEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %550, ptr noundef nonnull align 8 dereferenceable(12) %551, ptr noundef nonnull align 4 dereferenceable(4) %i.bz)
          to label %bb.blf unwind label %bb.bmq

bb.blf:                                           ; preds = %bb.ble
  %i.cej = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 834, ptr noundef nonnull @.str.72, ptr noundef nonnull align 8 dereferenceable(32) %550)
          to label %bb.blg unwind label %bb.bmr   ; 0 uses

bb.blg:                                           ; preds = %bb.blf
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ccz) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %552) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %551) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %550) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca) #32
  %i.cek = load ptr, ptr %543, align 8, !tbaa !110 ; 2 uses
  %i.cel = getelementptr inbounds nuw i8, ptr %i.cek, i64 1
  %1721 = load i32, ptr %i.cel, align 1
  %i.cem = getelementptr inbounds nuw i8, ptr %i.cek, i64 5
  %1722 = load i32, ptr %i.cem, align 1
  %i.cen = zext i32 %1721 to i64
  %i.ceo = zext i32 %1722 to i64
  %i.cep = shl nuw i64 %i.ceo, 32
  %i.ceq = or disjoint i64 %i.cep, %i.cen
  %op.rdx = call i64 @llvm.bswap.i64(i64 %i.ceq)
  store i64 %op.rdx, ptr %i.ca, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %553) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %554) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %555) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %555, i32 noundef 10)
          to label %bb.blh unwind label %bb.bmu

bb.blh:                                           ; preds = %bb.blg
  %i.cer = load i32, ptr %555, align 4, !tbaa !94
  store ptr %i.ca, ptr %554, align 8
  store i32 %i.cer, ptr %.sroa.2664.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKmEeqIS3_EEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %553, ptr noundef nonnull align 8 dereferenceable(12) %554, ptr noundef nonnull align 8 dereferenceable(8) %i.bx)
          to label %bb.bli unwind label %bb.bmu

bb.bli:                                           ; preds = %bb.blh
  %i.ces = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 843, ptr noundef nonnull @.str.68, ptr noundef nonnull align 8 dereferenceable(32) %553)
          to label %bb.blj unwind label %bb.bmv   ; 0 uses

bb.blj:                                           ; preds = %bb.bli
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cda) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %555) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %554) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %553) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %556) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %557) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %558) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %558, i32 noundef 10)
          to label %bb.blk unwind label %bb.bmx

bb.blk:                                           ; preds = %bb.blj
  call void @llvm.lifetime.start.p0(ptr nonnull %559) #32
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9from_cborIRKSC_EESD_OT_bbNS0_6detail18cbor_tag_handler_tE(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %559, ptr noundef nonnull align 8 dereferenceable(24) %543, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef 0)
          to label %bb.bll unwind label %bb.bmy

bb.bll:                                           ; preds = %bb.blk
  call void @llvm.experimental.noalias.scope.decl(metadata !948)
  %i.cet = load i32, ptr %558, align 4, !tbaa !94, !noalias !948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %557, ptr noundef nonnull align 8 dereferenceable(16) %559, i64 16, i1 false), !tbaa.struct !117
  store i8 0, ptr %559, align 8, !tbaa !113, !noalias !948
  store ptr null, ptr %i.cdb, align 8, !tbaa !105, !noalias !948
  store i32 %i.cet, ptr %i.cdc, align 8, !tbaa !119, !alias.scope !948
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRKSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISM_EEtlNS0_6ResultEEESN_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %556, ptr noundef nonnull align 8 dereferenceable(20) %557, ptr noundef nonnull align 8 dereferenceable(16) %538)
          to label %bb.blm unwind label %bb.bmz

bb.blm:                                           ; preds = %bb.bll
  %i.ceu = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 846, ptr noundef nonnull @.str.30, ptr noundef nonnull align 8 dereferenceable(32) %556)
          to label %bb.bln unwind label %bb.bna   ; 0 uses

bb.bln:                                           ; preds = %bb.blm
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cdd) #32
  %i.cev = load i8, ptr %557, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.cde, i8 noundef zeroext %i.cev)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5790 unwind label %bb.blo, !inline_history !111

bb.blo:                                           ; preds = %bb.bln
  %i.cew = landingpad { ptr, i32 }
          catch ptr null
  %i.cex = extractvalue { ptr, i32 } %i.cew, 0
  call void @__clang_call_terminate(ptr %i.cex) #33, !inline_history !111
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5790: ; preds = %bb.bln
  %i.cey = load i8, ptr %559, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.cdb, i8 noundef zeroext %i.cey)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5791 unwind label %bb.blp, !inline_history !111

bb.blp:                                           ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5790
  %i.cez = landingpad { ptr, i32 }
          catch ptr null
  %i.cfa = extractvalue { ptr, i32 } %i.cez, 0
  call void @__clang_call_terminate(ptr %i.cfa) #33, !inline_history !111
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5791: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5790
  call void @llvm.lifetime.end.p0(ptr nonnull %559) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %558) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %557) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %556) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %560) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %561) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %562) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %562, i32 noundef 10)
          to label %bb.blq unwind label %bb.bne

bb.blq:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5791
  call void @llvm.lifetime.start.p0(ptr nonnull %563) #32
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9from_cborIRKSC_EESD_OT_bbNS0_6detail18cbor_tag_handler_tE(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %563, ptr noundef nonnull align 8 dereferenceable(24) %543, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.blr unwind label %bb.bnf

bb.blr:                                           ; preds = %bb.blq
  call void @llvm.experimental.noalias.scope.decl(metadata !949)
  %i.cfb = load i32, ptr %562, align 4, !tbaa !94, !noalias !949
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %561, ptr noundef nonnull align 8 dereferenceable(16) %563, i64 16, i1 false), !tbaa.struct !117
  store i8 0, ptr %563, align 8, !tbaa !113, !noalias !949
  store ptr null, ptr %i.cdf, align 8, !tbaa !105, !noalias !949
  store i32 %i.cfb, ptr %i.cdg, align 8, !tbaa !119, !alias.scope !949
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRKSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISM_EEtlNS0_6ResultEEESN_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %560, ptr noundef nonnull align 8 dereferenceable(20) %561, ptr noundef nonnull align 8 dereferenceable(16) %538)
          to label %bb.bls unwind label %bb.bng

bb.bls:                                           ; preds = %bb.blr
  %i.cfc = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 847, ptr noundef nonnull @.str.31, ptr noundef nonnull align 8 dereferenceable(32) %560)
          to label %bb.blt unwind label %bb.bnh   ; 0 uses

bb.blt:                                           ; preds = %bb.bls
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cdh) #32
  %i.cfd = load i8, ptr %561, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.cdi, i8 noundef zeroext %i.cfd)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5792 unwind label %bb.blu, !inline_history !111

bb.blu:                                           ; preds = %bb.blt
  %i.cfe = landingpad { ptr, i32 }
          catch ptr null
  %i.cff = extractvalue { ptr, i32 } %i.cfe, 0
  call void @__clang_call_terminate(ptr %i.cff) #33, !inline_history !111
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5792: ; preds = %bb.blt
  %i.cfg = load i8, ptr %563, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.cdf, i8 noundef zeroext %i.cfg)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5793 unwind label %bb.blv, !inline_history !111

bb.blv:                                           ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5792
  %i.cfh = landingpad { ptr, i32 }
          catch ptr null
  %i.cfi = extractvalue { ptr, i32 } %i.cfh, 0
  call void @__clang_call_terminate(ptr %i.cfi) #33, !inline_history !111
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5793: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5792
  call void @llvm.lifetime.end.p0(ptr nonnull %563) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %562) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %561) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %560) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca) #32
  %i.cfj = load ptr, ptr %543, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i5794 = icmp eq ptr %i.cfj, null
  br i1 %.not.i.i.i5794, label %_ZNSt6vectorIhSaIhEED2Ev.exit5796, label %bb.blw

bb.blw:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5793
  call void @_ZdlPv(ptr noundef nonnull %i.cfj) #34
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit5796

_ZNSt6vectorIhSaIhEED2Ev.exit5796:                ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5793, %bb.blw
  call void @llvm.lifetime.end.p0(ptr nonnull %543) #32
  %i.cfk = load ptr, ptr %542, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i5797 = icmp eq ptr %i.cfk, null
  br i1 %.not.i.i.i5797, label %_ZNSt6vectorIhSaIhEED2Ev.exit5799, label %bb.blx

bb.blx:                                           ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit5796
  call void @_ZdlPv(ptr noundef nonnull %i.cfk) #34
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit5799

_ZNSt6vectorIhSaIhEED2Ev.exit5799:                ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit5796, %bb.blx
  call void @llvm.lifetime.end.p0(ptr nonnull %542) #32
  %i.cfl = load i8, ptr %538, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ccs, i8 noundef zeroext %i.cfl)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5800 unwind label %bb.bly, !inline_history !111

bb.bly:                                           ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit5799
  %i.cfm = landingpad { ptr, i32 }
          catch ptr null
  %i.cfn = extractvalue { ptr, i32 } %i.cfm, 0
  call void @__clang_call_terminate(ptr %i.cfn) #33, !inline_history !111
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5800: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit5799
  call void @llvm.lifetime.end.p0(ptr nonnull %538) #32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_16EE", i64 16), ptr %537, align 8, !tbaa !91
  %i.cfo = load i8, ptr %i.cdj, align 8, !tbaa !98, !range !99, !noundef !100
  %i.cfp = trunc nuw i8 %i.cfo to i1
  br i1 %i.cfp, label %bb.blz, label %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_16ED2Ev.exit"

bb.blz:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5800
  invoke void @_ZN7doctest6detail16ContextScopeBase7destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %537)
          to label %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_16ED2Ev.exit" unwind label %bb.bma, !inline_history !146

bb.bma:                                           ; preds = %bb.blz
  %i.cfq = landingpad { ptr, i32 }
          catch ptr null
  %i.cfr = extractvalue { ptr, i32 } %i.cfq, 0
  call void @__clang_call_terminate(ptr %i.cfr) #33, !inline_history !146
  unreachable

"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_16ED2Ev.exit": ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5800, %bb.blz
  call void @_ZN7doctest13IContextScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(24) %537) #32, !inline_history !146
  call void @llvm.lifetime.end.p0(ptr nonnull %537) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx) #32
  %.02809.add = add nuw nsw i64 %.02809.idx9869, 8 ; 2 uses
  %.not2983 = icmp eq i64 %.02809.add, 16
  br i1 %.not2983, label %bb.bkl, label %bb.bkr

bb.bmb:                                           ; preds = %bb.bkr
  %i.cfs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bnq

bb.bmc:                                           ; preds = %bb.bks
  %i.cft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bmf

end_hunk_2
begin_hunk_3_@_GLOBAL__sub_I_unit_cbor.cpp:bb.a

bb.z:                                             ; preds = %bb.w
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn.i4 = phi { ptr, i32 } [ %i.ap, %bb.z ], [ %i.ao, %bb.y ]
  call void @_ZN7doctest6detail8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i4, %bb.aa ], [ %i.an, %bb.x ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %common.resume

__cxx_global_var_init.11.exit:                    ; preds = %bb.w
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 120
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aq) #32
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 88
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ar) #32
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(144) %6) #32
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  store i32 0, ptr @_ZL20DOCTEST_ANON_VAR_201, align 4, !tbaa !124
  %i.as = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZL20DOCTEST_ANON_VAR_201) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.at = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN28doctest_detail_test_suite_ns19getCurrentTestSuiteEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @_ZN7doctest6StringC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #32
  invoke void @_ZN7doctest6detail8TestCaseC1EPFvvEPKcjRKNS0_9TestSuiteERKNS_6StringEi(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull @_ZL21DOCTEST_ANON_FUNC_226v, ptr noundef nonnull @.str.5, i32 noundef 2211, ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef -1)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %__cxx_global_var_init.11.exit
  %i.au = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN7doctest6detail8TestCasemlEPKc(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull @.str.14)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.av = invoke noundef i32 @_ZN7doctest6detail7regTestERKNS0_8TestCaseE(ptr noundef nonnull align 8 dereferenceable(144) %i.au)
          to label %__cxx_global_var_init.13.exit unwind label %bb.af ; 0 uses

bb.ae:                                            ; preds = %__cxx_global_var_init.11.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6detail8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn.i5 = phi { ptr, i32 } [ %i.ax, %bb.af ], [ %i.aw, %bb.ae ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %common.resume

__cxx_global_var_init.13.exit:                    ; preds = %bb.ad
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 120
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ay) #32
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.az) #32
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(144) %4) #32
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  store i32 0, ptr @_ZL20DOCTEST_ANON_VAR_227, align 4, !tbaa !124
  %i.ba = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZL20DOCTEST_ANON_VAR_227) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.bb = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN28doctest_detail_test_suite_ns19getCurrentTestSuiteEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @_ZN7doctest6StringC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #32
  invoke void @_ZN7doctest6detail8TestCaseC1EPFvvEPKcjRKNS0_9TestSuiteERKNS_6StringEi(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @_ZL21DOCTEST_ANON_FUNC_232v, ptr noundef nonnull @.str.5, i32 noundef 2283, ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %__cxx_global_var_init.13.exit
  %i.bc = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN7doctest6detail8TestCasemlEPKc(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.16)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.bd = invoke noundef i32 @_ZN7doctest6detail7regTestERKNS0_8TestCaseE(ptr noundef nonnull align 8 dereferenceable(144) %i.bc)
          to label %__cxx_global_var_init.15.exit unwind label %bb.ak ; 0 uses

bb.aj:                                            ; preds = %__cxx_global_var_init.13.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai, %bb.ah
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6detail8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %2) #32
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn.i6 = phi { ptr, i32 } [ %i.bf, %bb.ak ], [ %i.be, %bb.aj ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %common.resume

__cxx_global_var_init.15.exit:                    ; preds = %bb.ai
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bg) #32
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 88
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bh) #32
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(144) %2) #32
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  store i32 0, ptr @_ZL20DOCTEST_ANON_VAR_233, align 4, !tbaa !124
  %i.bi = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZL20DOCTEST_ANON_VAR_233) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #32
  %i.bj = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN28doctest_detail_test_suite_ns19getCurrentTestSuiteEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @_ZN7doctest6StringC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #32
  invoke void @_ZN7doctest6detail8TestCaseC1EPFvvEPKcjRKNS0_9TestSuiteERKNS_6StringEi(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull @_ZL21DOCTEST_ANON_FUNC_240v, ptr noundef nonnull @.str.5, i32 noundef 2498, ptr noundef nonnull align 8 dereferenceable(40) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %__cxx_global_var_init.15.exit
  %i.bk = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN7doctest6detail8TestCasemlEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull @.str.18)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.bl = invoke noundef i32 @_ZN7doctest6detail7regTestERKNS0_8TestCaseE(ptr noundef nonnull align 8 dereferenceable(144) %i.bk)
          to label %__cxx_global_var_init.17.exit unwind label %bb.ap ; 0 uses

bb.ao:                                            ; preds = %__cxx_global_var_init.15.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an, %bb.am
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6detail8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #32
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn.i7 = phi { ptr, i32 } [ %i.bn, %bb.ap ], [ %i.bm, %bb.ao ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  br label %common.resume

__cxx_global_var_init.17.exit:                    ; preds = %bb.an
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bo) #32
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bp) #32
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(144) %0) #32
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  store i32 0, ptr @_ZL20DOCTEST_ANON_VAR_241, align 4, !tbaa !124
  %i.bq = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZL20DOCTEST_ANON_VAR_241) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #28

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
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nounwind }
attributes #33 = { noreturn nounwind }
attributes #34 = { builtin nounwind }
attributes #35 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #36 = { noreturn }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!81, !82, !83}
!llvm.ident = !{!84}
!llvm.errno.tbaa = !{!89}

!0 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail14output_adapterIcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail14output_adapterIhNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEEEED2Ev, ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEED2Ev, ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!3 = distinct !{!3, !132}
!4 = distinct !{!4, !132}
!5 = distinct !{!5, !132}
!6 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhED2Ev, ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7 = distinct !{ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8 = distinct !{null}
!9 = distinct !{null}
!10 = distinct !{null, null}
!11 = distinct !{!11, !132}
!12 = distinct !{!12, !132}
!13 = distinct !{null}
!14 = distinct !{!14, !132}
!15 = distinct !{null}
!16 = distinct !{!16, !132}
!17 = distinct !{!17, !132}
!18 = distinct !{!18, !132}
!19 = distinct !{null, null, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev, null, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev}
!20 = distinct !{null, null}
!21 = distinct !{null}
!22 = distinct !{!22, !132}
!23 = distinct !{!23, !132}
!24 = distinct !{!24, !132}
!25 = distinct !{!25, !132}
!26 = distinct !{!26, !132}
!27 = distinct !{!27, !132}
!28 = distinct !{ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!29 = distinct !{!29, !132}
!30 = distinct !{null}
!31 = distinct !{null, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev}
!32 = distinct !{null}
!33 = distinct !{null, null}
!34 = distinct !{null}
!35 = distinct !{!35, !132}
!36 = distinct !{null}
!37 = distinct !{!37, !132}
!38 = distinct !{!38, !132}
!39 = distinct !{!39, !132}
!40 = distinct !{!40, !132}
!41 = distinct !{!41, !132}
!42 = distinct !{!42, !132}
!43 = distinct !{!43, !132}
!44 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterEE3getEv, null, null}
!45 = distinct !{null, null}
!46 = distinct !{null}
!47 = distinct !{!47, !132}
!48 = distinct !{null}
!49 = distinct !{!49, !132}
!50 = distinct !{!50, !132}
!51 = distinct !{!51, !132}
!52 = distinct !{!52, !132}
!53 = distinct !{!53, !132}
!54 = distinct !{!54, !132}
!55 = distinct !{!55, !132}
!56 = distinct !{null}
!57 = distinct !{!57, !132}
!58 = distinct !{null}
!59 = distinct !{!59, !132}
!60 = distinct !{!60, !132}
!61 = distinct !{!61, !132}
!62 = distinct !{!62, !132}
!63 = distinct !{!63, !132}
!64 = distinct !{!64, !132}
!65 = distinct !{null}
!66 = distinct !{null, null, ptr @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterENS1_19json_sax_dom_parserISF_SG_EEE3getEv, null, null}
!67 = distinct !{null}
!68 = distinct !{!68, !132}
!69 = distinct !{null, ptr @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterENS1_19json_sax_dom_parserISF_SG_EEE3getEv, null, null}
!70 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterENS1_19json_sax_dom_parserISF_SG_EEE3getEv, null, null}
!71 = distinct !{!71, !132}
!72 = distinct !{null}
!73 = distinct !{!73, !132}
!74 = distinct !{null}
!75 = distinct !{!75, !132}
!76 = distinct !{!76, !132}
!77 = distinct !{!77, !132}
!78 = distinct !{!78, !132}
!79 = distinct !{!79, !132}
!80 = distinct !{!80, !132}
!81 = !{i32 8, !"PIC Level", i32 2}
!82 = !{i32 7, !"PIE Level", i32 2}
!83 = !{i32 7, !"uwtable", i32 2}
!84 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!85 = !{!"Simple C++ TBAA"}
!86 = !{!"omnipotent char", !85, i64 0}
!87 = !{!"int", !86, i64 0}
!88 = !{!"__libc_errno", !87, i64 0}
!89 = !{!88, !87, i64 0}
!90 = !{!"vtable pointer", !85, i64 0}
!91 = !{!90, !90, i64 0}
!92 = !{!"_ZTSN7doctest10assertType4EnumE", !86, i64 0}
!93 = !{!"_ZTSN7doctest6detail20ExpressionDecomposerE", !92, i64 0}
!94 = !{!93, !92, i64 0}
!95 = !{!"_ZTSN7doctest13IContextScopeE"}
!96 = !{!"bool", !86, i64 0}
!97 = !{!"_ZTSN7doctest6detail16ContextScopeBaseE", !95, i64 0, !96, i64 8}
!98 = !{!97, !96, i64 8}
!99 = !{i8 0, i8 2}
!100 = !{}
!101 = !{ptr @"_ZN7doctest6detail12ContextScopeIZN5utilsL19DOCTEST_ANON_FUNC_2EvE3$_0ED2Ev"}
!102 = !{!"_ZTSN8nlohmann16json_abi_v3_12_06detail7value_tE", !86, i64 0}
!103 = !{!"_ZTSN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataE", !102, i64 0, !86, i64 8}
!104 = !{!103, !102, i64 0}
!105 = !{!86, !86, i64 0}
!106 = !{!"any pointer", !86, i64 0}
!107 = !{!"p1 omnipotent char", !106, i64 0}
!108 = !{!107, !107, i64 0}
!109 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !107, i64 0, !107, i64 8, !107, i64 16}
!110 = !{!109, !107, i64 0}
!111 = !{ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev}
!112 = !{!"_ZTSN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEE", !103, i64 0}
!113 = !{!112, !102, i64 0}
!114 = !{!109, !107, i64 16}
!115 = !{!109, !107, i64 8}
!116 = !{!102, !102, i64 0}
!117 = !{i64 0, i64 1, !116, i64 8, i64 8, !105}
!118 = !{!"_ZTSN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEE", !112, i64 0, !92, i64 16}
!119 = !{!118, !92, i64 16}
!120 = !{!"long", !86, i64 0}
!121 = !{!120, !120, i64 0}
!122 = !{!"p1 long", !106, i64 0}
!123 = !{!122, !122, i64 0}
!124 = !{!87, !87, i64 0}
!125 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_1ED2Ev"}
!126 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_2ED2Ev"}
!127 = !{!"p1 int", !106, i64 0}
!128 = !{!127, !127, i64 0}
!129 = !{!"short", !86, i64 0}
!130 = !{!129, !129, i64 0}
!131 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_3ED2Ev"}
!132 = !{!"llvm.loop.mustprogress"}
!133 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_4ED2Ev"}
!134 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_5ED2Ev"}
!135 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_6ED2Ev"}
!136 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_7ED2Ev"}
!137 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_8ED2Ev"}
!138 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_9ED2Ev"}
!139 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_10ED2Ev"}
!140 = !{!"p1 short", !106, i64 0}
!141 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_11ED2Ev"}
!142 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_12ED2Ev"}
!143 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_13ED2Ev"}
!144 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_14ED2Ev"}
!145 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_15ED2Ev"}
!146 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_16ED2Ev"}
!147 = !{!"double", !86, i64 0}
!148 = !{!147, !147, i64 0}
!149 = !{!"float", !86, i64 0}
!150 = !{!149, !149, i64 0}
!151 = !{!"p1 _ZTSSo", !106, i64 0}
!152 = !{!"_ZTSN7doctest6StringE", !86, i64 0}
!153 = !{!"p1 _ZTSN7doctest6detail8TestCaseE", !106, i64 0}
!154 = !{!"_ZTSN7doctest14ContextOptionsE", !151, i64 0, !152, i64 8, !153, i64 32, !152, i64 40, !152, i64 64, !87, i64 88, !87, i64 92, !87, i64 96, !87, i64 100, !87, i64 104, !96, i64 108, !96, i64 109, !96, i64 110, !96, i64 111, !96, i64 112, !96, i64 113, !96, i64 114, !96, i64 115, !96, i64 116, !96, i64 117, !96, i64 118, !96, i64 119, !96, i64 120, !96, i64 121, !96, i64 122, !96, i64 123, !96, i64 124, !96, i64 125, !96, i64 126, !96, i64 127, !96, i64 128, !96, i64 129, !96, i64 130, !96, i64 131, !96, i64 132, !96, i64 133, !96, i64 134}
!155 = !{!154, !96, i64 114}
end_hunk_3
