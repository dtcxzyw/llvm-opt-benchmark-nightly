Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-ubjson?download=true
inline.NumInlined: 18224
inline.NumDeleted: 3041
loop-unroll.NumCompletelyUnrolled: 276
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 280
begin_hunk_0_@_ZL19DOCTEST_ANON_FUNC_7v:bb.a

bb.gi:                                            ; preds = %bb.gh
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %70) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #31
  %i.kn = invoke noundef zeroext i1 @_ZNK7doctest6detail7SubcasecvbEv(ptr noundef nonnull align 8 dereferenceable(41) %69)
          to label %bb.gj unwind label %bb.gy

bb.gj:                                            ; preds = %bb.gi
  br i1 %i.kn, label %bb.gk, label %bb.btp

bb.gk:                                            ; preds = %bb.gj
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #31
  invoke void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %72, ptr noundef nonnull @.str.28)
          to label %bb.gl unwind label %bb.gz

bb.gl:                                            ; preds = %bb.gk
  invoke void @_ZN7doctest6detail7SubcaseC1ERKNS_6StringEPKci(ptr noundef nonnull align 8 dereferenceable(41) %71, ptr noundef nonnull align 8 dereferenceable(24) %72, ptr noundef nonnull @.str.5, i32 noundef 151)
          to label %bb.gm unwind label %bb.ha

bb.gm:                                            ; preds = %bb.gl
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %72) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #31
  %i.ko = invoke noundef zeroext i1 @_ZNK7doctest6detail7SubcasecvbEv(ptr noundef nonnull align 8 dereferenceable(41) %71)
          to label %bb.gn unwind label %bb.hc

bb.gn:                                            ; preds = %bb.gm
  br i1 %i.ko, label %bb.go, label %bb.aog

bb.go:                                            ; preds = %bb.gn
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #31
  invoke void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %74, ptr noundef nonnull @.str.29)
          to label %bb.gp unwind label %bb.hd

bb.gp:                                            ; preds = %bb.go
  invoke void @_ZN7doctest6detail7SubcaseC1ERKNS_6StringEPKci(ptr noundef nonnull align 8 dereferenceable(41) %73, ptr noundef nonnull align 8 dereferenceable(24) %74, ptr noundef nonnull @.str.5, i32 noundef 153)
          to label %bb.gq unwind label %bb.he

bb.gq:                                            ; preds = %bb.gp
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %74) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #31
  %i.kp = invoke noundef zeroext i1 @_ZNK7doctest6detail7SubcasecvbEv(ptr noundef nonnull align 8 dereferenceable(41) %73)
          to label %bb.gr unwind label %bb.hg

bb.gr:                                            ; preds = %bb.gq
  br i1 %i.kp, label %bb.gs, label %bb.kf

bb.gs:                                            ; preds = %bb.gr
  %i.kq = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #34
          to label %bb.gt unwind label %bb.hg     ; 4 uses

bb.gt:                                            ; preds = %bb.gs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.kq, ptr noundef nonnull align 8 dereferenceable(88) @constinit, i64 88, i1 false)
  %i.kr = ptrtoint ptr %i.e to i64
  %i.ks = getelementptr inbounds nuw i8, ptr %75, i64 16
  %i.kt = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %77, i64 8 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %80, i64 16
  %i.kw = getelementptr inbounds nuw i8, ptr %80, i64 8
  %.sroa.21213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %83, i64 8
  %i.kx = getelementptr inbounds nuw i8, ptr %82, i64 8 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %81, i64 8
  %.sroa.21209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %86, i64 8
  %i.kz = getelementptr inbounds nuw i8, ptr %85, i64 8 ; 2 uses
  %.sroa.21205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %89, i64 8
  %i.la = getelementptr inbounds nuw i8, ptr %88, i64 8 ; 2 uses
  %.sroa.21201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %92, i64 8
  %i.lb = getelementptr inbounds nuw i8, ptr %91, i64 8 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %97, i64 8 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %95, i64 16
  %i.le = getelementptr inbounds nuw i8, ptr %94, i64 8 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %95, i64 8
  %i.lg = getelementptr inbounds nuw i8, ptr %101, i64 8 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %99, i64 16
  %i.li = getelementptr inbounds nuw i8, ptr %98, i64 8 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %99, i64 8
  %i.lk = getelementptr inbounds nuw i8, ptr %75, i64 8
  br label %bb.hh

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_2ED2Ev.exit"
  call void @_ZdlPv(ptr noundef nonnull %i.kq) #33
  br label %bb.kf

bb.gu:                                            ; preds = %bb.fh, %bb.gf, %bb.di, %bb.fe, %bb.df
  %.pn3641.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn3613, %bb.di ], [ %i.hn, %bb.df ], [ %.pn3622.pn.pn.pn.pn.pn.pn.pn, %bb.fe ], [ %.pn3641.pn.pn.pn.pn.pn.pn.pn, %bb.gf ], [ %.pn3632, %bb.fh ]
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %35) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #31
  br label %bb.frl

bb.gv:                                            ; preds = %bb.gg
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.gw:                                            ; preds = %bb.gh
  %i.lm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %70) #31
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %.pn3653 = phi { ptr, i32 } [ %i.lm, %bb.gw ], [ %i.ll, %bb.gv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #31
  br label %bb.frl

bb.gy:                                            ; preds = %bb.gi
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %bb.btz

bb.gz:                                            ; preds = %bb.gk
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %bb.hb

bb.ha:                                            ; preds = %bb.gl
  %i.lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %72) #31
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %.pn3655 = phi { ptr, i32 } [ %i.lp, %bb.ha ], [ %i.lo, %bb.gz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #31
  br label %bb.btz

bb.hc:                                            ; preds = %bb.gm
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aoq

bb.hd:                                            ; preds = %bb.go
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.hf

bb.he:                                            ; preds = %bb.gp
  %i.ls = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %74) #31
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %.pn3657 = phi { ptr, i32 } [ %i.ls, %bb.he ], [ %i.lr, %bb.hd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #31
  br label %bb.aoq

bb.hg:                                            ; preds = %bb.gq, %bb.gs
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %bb.kj

bb.hh:                                            ; preds = %bb.gt, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_2ED2Ev.exit"
  %.sroa.012101.0.idx12533 = phi i64 [ 0, %bb.gt ], [ %.sroa.012101.0.add, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_2ED2Ev.exit" ] ; 2 uses
  %.sroa.012101.0.ptr = getelementptr inbounds nuw i8, ptr %i.kq, i64 %.sroa.012101.0.idx12533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.lu = load i64, ptr %.sroa.012101.0.ptr, align 8, !tbaa !105
  store i64 %i.lu, ptr %i.e, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #31
  invoke void @_ZN7doctest6detail16ContextScopeBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %75)
          to label %bb.hi unwind label %bb.ir

bb.hi:                                            ; preds = %bb.hh
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_2EE", i64 16), ptr %75, align 8, !tbaa !75, !alias.scope !972
  store i64 %i.kr, ptr %i.ks, align 8, !tbaa !107, !alias.scope !972
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %76, i8 0, i64 16, i1 false)
  %i.lv = load i64, ptr %i.e, align 8, !tbaa !105
  store i8 5, ptr %76, align 8, !tbaa !101
  store i64 %i.lv, ptr %i.kt, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %79, i32 noundef 10)
          to label %bb.hj unwind label %bb.is

bb.hj:                                            ; preds = %bb.hi
  %i.lw = load i8, ptr %76, align 8, !tbaa !101
  %i.lx = add i8 %i.lw, -5
  %spec.select.i = icmp ult i8 %i.lx, 2
  %i.ly = load i32, ptr %79, align 4, !tbaa !78
  %.sroa.22.0.insert.ext.i6479 = zext i32 %i.ly to i64
  %.sroa.22.0.insert.shift.i6480 = shl nuw i64 %.sroa.22.0.insert.ext.i6479, 32
  %.sroa.0.0.insert.ext.i6481 = zext i1 %spec.select.i to i64
  %.sroa.0.0.insert.insert.i6482 = or disjoint i64 %.sroa.22.0.insert.shift.i6480, %.sroa.0.0.insert.ext.i6481
  store i64 %.sroa.0.0.insert.insert.i6482, ptr %78, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIbEcvNS0_6ResultEEv(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %77, ptr noundef nonnull align 4 dereferenceable(8) %78)
          to label %bb.hk unwind label %bb.is

bb.hk:                                            ; preds = %bb.hj
  %i.lz = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 177, ptr noundef nonnull @.str.30, ptr noundef nonnull align 8 dereferenceable(32) %77)
          to label %bb.hl unwind label %bb.it     ; 0 uses

bb.hl:                                            ; preds = %bb.hk
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ku) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #31
  %2159 = load <8 x i8>, ptr %i.e, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %80, i8 0, i64 24, i1 false)
  %i.ma = invoke noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #34
          to label %bb.hm unwind label %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i6484 ; 4 uses

_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i6484:       ; preds = %bb.hl
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %.body6485

bb.hm:                                            ; preds = %bb.hl
  store ptr %i.ma, ptr %80, align 8, !tbaa !94
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 9 ; 2 uses
  store ptr %i.mc, ptr %i.kv, align 8, !tbaa !96
  store i8 76, ptr %i.ma, align 1
  %.sroa.512090.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ma, i64 1
  %2160 = shufflevector <8 x i8> %2159, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %2160, ptr %.sroa.512090.0..sroa_idx, align 1
  store ptr %i.mc, ptr %i.kw, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #31
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9to_ubjsonERKSD_bb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %81, ptr noundef nonnull align 8 dereferenceable(16) %76, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.hn unwind label %bb.iv

bb.hn:                                            ; preds = %bb.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %84, i32 noundef 10)
          to label %bb.ho unwind label %bb.iw

bb.ho:                                            ; preds = %bb.hn
  %i.md = load i32, ptr %84, align 4, !tbaa !78
  store ptr %81, ptr %83, align 8
  store i32 %i.md, ptr %.sroa.21213.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKSt6vectorIhSaIhEEEeqIS6_EEDTcmcvveqclL_ZNS0_7declvalIS6_EEOT_vEEclsr7doctest6detailE7declvalISA_EEtlNS0_6ResultEEESB_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %82, ptr noundef nonnull align 8 dereferenceable(12) %83, ptr noundef nonnull align 8 dereferenceable(24) %80)
          to label %bb.hp unwind label %bb.iw

bb.hp:                                            ; preds = %bb.ho
  %i.me = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 195, ptr noundef nonnull @.str.21, ptr noundef nonnull align 8 dereferenceable(32) %82)
          to label %bb.hq unwind label %bb.ix     ; 0 uses

bb.hq:                                            ; preds = %bb.hp
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.kx) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %87, i32 noundef 10)
          to label %bb.hr unwind label %bb.iz

bb.hr:                                            ; preds = %bb.hq
  %i.mf = load ptr, ptr %i.ky, align 8, !tbaa !97
  %i.mg = load ptr, ptr %81, align 8, !tbaa !94
  %i.mh = ptrtoint ptr %i.mf to i64
  %i.mi = ptrtoint ptr %i.mg to i64
  %i.mj = sub i64 %i.mh, %i.mi
  %i.mk = load i32, ptr %87, align 4, !tbaa !78
  store i64 %i.mj, ptr %86, align 8
  store i32 %i.mk, ptr %.sroa.21209.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  store i32 9, ptr %i.f, align 4, !tbaa !108
  invoke void @_ZN7doctest6detail14Expression_lhsImEeqIiEEDTcmcvveqclL_ZNS0_7declvalImEEOT_vEEclsr7doctest6detailE7declvalIS5_EEtlNS0_6ResultEEES6_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %85, ptr noundef nonnull align 8 dereferenceable(12) %86, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %bb.hs unwind label %bb.ja

bb.hs:                                            ; preds = %bb.hr
  %i.ml = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 196, ptr noundef nonnull @.str.31, ptr noundef nonnull align 8 dereferenceable(32) %85)
          to label %bb.ht unwind label %bb.jb     ; 0 uses

bb.ht:                                            ; preds = %bb.hs
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.kz) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %90, i32 noundef 10)
          to label %bb.hu unwind label %bb.je

bb.hu:                                            ; preds = %bb.ht
  %i.mm = load ptr, ptr %81, align 8, !tbaa !94
  %i.mn = load i32, ptr %90, align 4, !tbaa !78
  store ptr %i.mm, ptr %89, align 8
  store i32 %i.mn, ptr %.sroa.21205.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  store i8 76, ptr %i.g, align 1, !tbaa !89
  invoke void @_ZN7doctest6detail14Expression_lhsIRKhEeqIcEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %88, ptr noundef nonnull align 8 dereferenceable(12) %89, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
          to label %bb.hv unwind label %bb.jf

bb.hv:                                            ; preds = %bb.hu
  %i.mo = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 199, ptr noundef nonnull @.str.32, ptr noundef nonnull align 8 dereferenceable(32) %88)
          to label %bb.hw unwind label %bb.jg     ; 0 uses

bb.hw:                                            ; preds = %bb.hv
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.la) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  %i.mp = load ptr, ptr %81, align 8, !tbaa !94   ; 8 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 1
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !89
  %i.ms = zext i8 %i.mr to i64
  %i.mt = shl nuw i64 %i.ms, 56
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mp, i64 2
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !89
  %i.mw = zext i8 %i.mv to i64
  %i.mx = shl nuw nsw i64 %i.mw, 48
  %i.my = or disjoint i64 %i.mx, %i.mt
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mp, i64 3
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !89
  %i.nb = zext i8 %i.na to i64
  %i.nc = shl nuw nsw i64 %i.nb, 40
  %i.nd = or disjoint i64 %i.my, %i.nc
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !89
  %i.ng = zext i8 %i.nf to i64
  %i.nh = shl nuw nsw i64 %i.ng, 32
  %i.ni = or disjoint i64 %i.nd, %i.nh
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mp, i64 5
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !89
  %i.nl = zext i8 %i.nk to i64
  %i.nm = shl nuw nsw i64 %i.nl, 24
  %i.nn = or disjoint i64 %i.ni, %i.nm
  %i.no = getelementptr inbounds nuw i8, ptr %i.mp, i64 6
  %i.np = load i8, ptr %i.no, align 1, !tbaa !89
  %i.nq = zext i8 %i.np to i64
  %i.nr = shl nuw nsw i64 %i.nq, 16
  %i.ns = or disjoint i64 %i.nn, %i.nr
  %i.nt = getelementptr inbounds nuw i8, ptr %i.mp, i64 7
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !89
  %i.nv = zext i8 %i.nu to i64
  %i.nw = shl nuw nsw i64 %i.nv, 8
  %i.nx = or disjoint i64 %i.ns, %i.nw
  %i.ny = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !89
  %i.oa = zext i8 %i.nz to i64
  %i.ob = add nuw nsw i64 %i.nx, %i.oa
  store i64 %i.ob, ptr %i.h, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %93, i32 noundef 10)
          to label %bb.hx unwind label %bb.jj

bb.hx:                                            ; preds = %bb.hw
  %i.oc = load i32, ptr %93, align 4, !tbaa !78
  store ptr %i.h, ptr %92, align 8
  store i32 %i.oc, ptr %.sroa.21201.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKlEeqIRlEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS8_EEtlNS0_6ResultEEES9_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %91, ptr noundef nonnull align 8 dereferenceable(12) %92, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.hy unwind label %bb.jj

bb.hy:                                            ; preds = %bb.hx
  %i.od = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 208, ptr noundef nonnull @.str.33, ptr noundef nonnull align 8 dereferenceable(32) %91)
          to label %bb.hz unwind label %bb.jk     ; 0 uses

bb.hz:                                            ; preds = %bb.hy
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.lb) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %96, i32 noundef 10)
          to label %bb.ia unwind label %bb.jm

bb.ia:                                            ; preds = %bb.hz
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #31
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE11from_ubjsonIRKSC_EESD_OT_bb(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %97, ptr noundef nonnull align 8 dereferenceable(24) %81, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.ib unwind label %bb.jn

bb.ib:                                            ; preds = %bb.ia
  call void @llvm.experimental.noalias.scope.decl(metadata !973)
  %i.oe = load i32, ptr %96, align 4, !tbaa !78, !noalias !973
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %95, ptr noundef nonnull align 8 dereferenceable(16) %97, i64 16, i1 false), !tbaa.struct !99
  store i8 0, ptr %97, align 8, !tbaa !101, !noalias !973
  store ptr null, ptr %i.lc, align 8, !tbaa !89, !noalias !973
  store i32 %i.oe, ptr %i.ld, align 8, !tbaa !103, !alias.scope !973
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRKSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISM_EEtlNS0_6ResultEEESN_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %94, ptr noundef nonnull align 8 dereferenceable(20) %95, ptr noundef nonnull align 8 dereferenceable(16) %76)
          to label %bb.ic unwind label %bb.jo

bb.ic:                                            ; preds = %bb.ib
  %i.of = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 211, ptr noundef nonnull @.str.22, ptr noundef nonnull align 8 dereferenceable(32) %94)
          to label %bb.id unwind label %bb.jp     ; 0 uses

bb.id:                                            ; preds = %bb.ic
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.le) #31
  %i.og = load i8, ptr %95, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.lf, i8 noundef zeroext %i.og)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6496 unwind label %bb.ie, !inline_history !95

bb.ie:                                            ; preds = %bb.id
  %i.oh = landingpad { ptr, i32 }
          catch ptr null
  %i.oi = extractvalue { ptr, i32 } %i.oh, 0
  call void @__clang_call_terminate(ptr %i.oi) #32, !inline_history !95
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6496: ; preds = %bb.id
  %i.oj = load i8, ptr %97, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.lc, i8 noundef zeroext %i.oj)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6497 unwind label %bb.if, !inline_history !95

bb.if:                                            ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6496
  %i.ok = landingpad { ptr, i32 }
          catch ptr null
  %i.ol = extractvalue { ptr, i32 } %i.ok, 0
  call void @__clang_call_terminate(ptr %i.ol) #32, !inline_history !95
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6497: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6496
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #31
end_hunk_0
begin_hunk_1_@_ZL19DOCTEST_ANON_FUNC_7v:bb.a
  call void @_ZdlPv(ptr noundef nonnull %i.qa) #33
  br label %.body6485

.body6485:                                        ; preds = %bb.kd, %_ZNSt6vectorIhSaIhEED2Ev.exit6509, %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i6484
  %.pn6357.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mb, %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i6484 ], [ %.pn6357.pn.pn.pn.pn.pn.pn, %bb.kd ], [ %.pn6357.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit6509 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #31
  br label %bb.ke

bb.ke:                                            ; preds = %.body6485, %bb.iu
  %.pn6357.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn6357.pn.pn.pn.pn.pn.pn.pn, %.body6485 ], [ %.pn6338.pn, %bb.iu ]
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %76) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #31
  call void @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_2ED2Ev"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %75) #31
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit6514

_ZNSt6vectorIlSaIlEED2Ev.exit6514:                ; preds = %bb.ke, %bb.ir
  %.pn6357.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn6357.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ke ], [ %i.pd, %bb.ir ]
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @_ZdlPv(ptr noundef nonnull %i.kq) #33
  br label %bb.kj

bb.kf:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.gr
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %73) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %102) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #31
  invoke void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %103, ptr noundef nonnull @.str.34)
          to label %bb.kg unwind label %bb.kk

bb.kg:                                            ; preds = %bb.kf
  invoke void @_ZN7doctest6detail7SubcaseC1ERKNS_6StringEPKci(ptr noundef nonnull align 8 dereferenceable(41) %102, ptr noundef nonnull align 8 dereferenceable(24) %103, ptr noundef nonnull @.str.5, i32 noundef 216)
          to label %bb.kh unwind label %bb.kl

bb.kh:                                            ; preds = %bb.kg
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %103) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #31
  %i.qb = invoke noundef zeroext i1 @_ZNK7doctest6detail7SubcasecvbEv(ptr noundef nonnull align 8 dereferenceable(41) %102)
          to label %bb.ki unwind label %.thread12132

bb.ki:                                            ; preds = %bb.kh
  br i1 %i.qb, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ki
  %i.qc = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #34
          to label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i6517 unwind label %.thread12132 ; 3 uses

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i6517: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  store i32 -32769, ptr %i.qc, align 4, !tbaa !108
  %i.qd = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #34
          to label %.noexc6524 unwind label %bb.kn ; 5 uses

.noexc6524:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i6517
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 4
  store i32 -100000, ptr %i.qe, align 4, !tbaa !108
  store i32 -32769, ptr %i.qd, align 4
  call void @_ZdlPv(ptr noundef nonnull %i.qc) #33
  %i.qf = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34
          to label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i6547 unwind label %bb.ko ; 6 uses

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i6547: ; preds = %.noexc6524
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  store i32 -1000000, ptr %i.qg, align 4, !tbaa !108
  %i.qh = load i64, ptr %i.qd, align 4
  store i64 %i.qh, ptr %i.qf, align 4
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qf, i64 12
  call void @_ZdlPv(ptr noundef nonnull %i.qd) #33
  store i32 -10000000, ptr %i.qi, align 4, !tbaa !108
  %i.qj = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #34
          to label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit6575 unwind label %bb.kp ; 7 uses

_ZNSt6vectorIiSaIiEE9push_backEOi.exit6575:       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i6547
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  store i32 -100000000, ptr %i.qk, align 4, !tbaa !108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qj, ptr noundef nonnull align 4 dereferenceable(16) %i.qf, i64 16, i1 false)
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qj, i64 20
  call void @_ZdlPv(ptr noundef nonnull %i.qf) #33
  store i32 -1000000000, ptr %i.ql, align 4, !tbaa !108
  %.sroa.21.5 = getelementptr inbounds nuw i8, ptr %i.qj, i64 24
  store i32 -2147483648, ptr %.sroa.21.5, align 4, !tbaa !108
  %i.qm = ptrtoint ptr %i.i to i64
  %i.qn = getelementptr inbounds nuw i8, ptr %104, i64 16
  %i.qo = getelementptr inbounds nuw i8, ptr %105, i64 8 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %106, i64 8 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %109, i64 16
  %i.qr = getelementptr inbounds nuw i8, ptr %109, i64 8
  %.sroa.21192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %112, i64 8
  %i.qs = getelementptr inbounds nuw i8, ptr %111, i64 8 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %110, i64 8
  %.sroa.21188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %115, i64 8
  %i.qu = getelementptr inbounds nuw i8, ptr %114, i64 8 ; 2 uses
  %.sroa.21184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %118, i64 8
  %i.qv = getelementptr inbounds nuw i8, ptr %117, i64 8 ; 2 uses
  %.sroa.21180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %121, i64 8
  %i.qw = getelementptr inbounds nuw i8, ptr %120, i64 8 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %126, i64 8 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %124, i64 16
  %i.qz = getelementptr inbounds nuw i8, ptr %123, i64 8 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %124, i64 8
  %i.rb = getelementptr inbounds nuw i8, ptr %130, i64 8 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %128, i64 16
  %i.rd = getelementptr inbounds nuw i8, ptr %127, i64 8 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %128, i64 8
  %i.rf = getelementptr inbounds nuw i8, ptr %104, i64 8
  br label %bb.kq

._crit_edge:                                      ; preds = %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_3ED2Ev.exit"
  call void @_ZdlPv(ptr noundef nonnull %i.qj) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.kj:                                            ; preds = %bb.hg, %_ZNSt6vectorIlSaIlEED2Ev.exit6514
  %.pn6357.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.lt, %bb.hg ], [ %.pn6357.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIlSaIlEED2Ev.exit6514 ]
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %73) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #31
  br label %bb.aoq

bb.kk:                                            ; preds = %bb.kf
  %i.rg = landingpad { ptr, i32 }
          cleanup
  br label %bb.km

bb.kl:                                            ; preds = %bb.kg
  %i.rh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %103) #31
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.kk
  %.pn3659 = phi { ptr, i32 } [ %i.rh, %bb.kl ], [ %i.rg, %bb.kk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #31
  br label %bb.aoq

.thread12132:                                     ; preds = %bb.kh, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ri = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit6614

bb.kn:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i6517
  %i.rj = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ko:                                            ; preds = %.noexc6524
  %i.rk = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.kp:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i6547
  %i.rl = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.kq:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit6575, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_3ED2Ev.exit"
  %.sroa.012047.012535.idx = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit6575 ], [ %.sroa.012047.012535.add, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_3ED2Ev.exit" ] ; 2 uses
  %.sroa.012047.012535.ptr = getelementptr inbounds nuw i8, ptr %i.qj, i64 %.sroa.012047.012535.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  %i.rm = load i32, ptr %.sroa.012047.012535.ptr, align 4, !tbaa !108
  store i32 %i.rm, ptr %i.i, align 4, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #31
  invoke void @_ZN7doctest6detail16ContextScopeBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %104)
          to label %bb.kr unwind label %bb.ma

bb.kr:                                            ; preds = %bb.kq
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_3EE", i64 16), ptr %104, align 8, !tbaa !75, !alias.scope !975
  store i64 %i.qm, ptr %i.qn, align 8, !tbaa !111, !alias.scope !975
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %105, i8 0, i64 16, i1 false)
  %i.rn = load i32, ptr %i.i, align 4, !tbaa !108
  %i.ro = sext i32 %i.rn to i64
  store i8 5, ptr %105, align 8, !tbaa !101
  store i64 %i.ro, ptr %i.qo, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %106) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %108) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %108, i32 noundef 10)
          to label %bb.ks unwind label %bb.mb

bb.ks:                                            ; preds = %bb.kr
  %i.rp = load i8, ptr %105, align 8, !tbaa !101
  %i.rq = add i8 %i.rp, -5
  %spec.select.i6578 = icmp ult i8 %i.rq, 2
  %i.rr = load i32, ptr %108, align 4, !tbaa !78
  %.sroa.22.0.insert.ext.i6579 = zext i32 %i.rr to i64
  %.sroa.22.0.insert.shift.i6580 = shl nuw i64 %.sroa.22.0.insert.ext.i6579, 32
  %.sroa.0.0.insert.ext.i6581 = zext i1 %spec.select.i6578 to i64
  %.sroa.0.0.insert.insert.i6582 = or disjoint i64 %.sroa.22.0.insert.shift.i6580, %.sroa.0.0.insert.ext.i6581
  store i64 %.sroa.0.0.insert.insert.i6582, ptr %107, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIbEcvNS0_6ResultEEv(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %106, ptr noundef nonnull align 4 dereferenceable(8) %107)
          to label %bb.kt unwind label %bb.mb

bb.kt:                                            ; preds = %bb.ks
  %i.rs = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 234, ptr noundef nonnull @.str.30, ptr noundef nonnull align 8 dereferenceable(32) %106)
          to label %bb.ku unwind label %bb.mc     ; 0 uses

bb.ku:                                            ; preds = %bb.kt
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.qp) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %109) #31
  %i.rt = load i32, ptr %i.i, align 4, !tbaa !108 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %109, i8 0, i64 24, i1 false)
  %i.ru = invoke noalias noundef nonnull dereferenceable(5) ptr @_Znwm(i64 noundef 5) #34
          to label %bb.kv unwind label %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i6584 ; 7 uses

_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i6584:       ; preds = %bb.ku
  %i.rv = landingpad { ptr, i32 }
          cleanup
  br label %.body6585

bb.kv:                                            ; preds = %bb.ku
  %2161 = trunc i32 %i.rt to i8
  %2162 = lshr i32 %i.rt, 8
  %2163 = trunc i32 %2162 to i8
  %2164 = lshr i32 %i.rt, 16
  %2165 = trunc i32 %2164 to i8
  %2166 = lshr i32 %i.rt, 24
  %2167 = trunc nuw i32 %2166 to i8
  store ptr %i.ru, ptr %109, align 8, !tbaa !94
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ru, i64 5 ; 2 uses
  store ptr %i.rw, ptr %i.qq, align 8, !tbaa !96
  store i8 108, ptr %i.ru, align 1
  %.sroa.512040.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ru, i64 1
  store i8 %2167, ptr %.sroa.512040.0..sroa_idx, align 1
  %.sroa.612041.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ru, i64 2
  store i8 %2165, ptr %.sroa.612041.0..sroa_idx, align 1
  %.sroa.712042.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ru, i64 3
  store i8 %2163, ptr %.sroa.712042.0..sroa_idx, align 1
  %.sroa.812043.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ru, i64 4
  store i8 %2161, ptr %.sroa.812043.0..sroa_idx, align 1
  store ptr %i.rw, ptr %i.qr, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %110) #31
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9to_ubjsonERKSD_bb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %110, ptr noundef nonnull align 8 dereferenceable(16) %105, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.kw unwind label %bb.me

bb.kw:                                            ; preds = %bb.kv
  call void @llvm.lifetime.start.p0(ptr nonnull %111) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %112) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %113) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %113, i32 noundef 10)
          to label %bb.kx unwind label %bb.mf

bb.kx:                                            ; preds = %bb.kw
  %i.rx = load i32, ptr %113, align 4, !tbaa !78
  store ptr %110, ptr %112, align 8
  store i32 %i.rx, ptr %.sroa.21192.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKSt6vectorIhSaIhEEEeqIS6_EEDTcmcvveqclL_ZNS0_7declvalIS6_EEOT_vEEclsr7doctest6detailE7declvalISA_EEtlNS0_6ResultEEESB_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %111, ptr noundef nonnull align 8 dereferenceable(12) %112, ptr noundef nonnull align 8 dereferenceable(24) %109)
          to label %bb.ky unwind label %bb.mf

bb.ky:                                            ; preds = %bb.kx
  %i.ry = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 248, ptr noundef nonnull @.str.21, ptr noundef nonnull align 8 dereferenceable(32) %111)
          to label %bb.kz unwind label %bb.mg     ; 0 uses

bb.kz:                                            ; preds = %bb.ky
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.qs) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %114) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %115) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %116, i32 noundef 10)
          to label %bb.la unwind label %bb.mi

bb.la:                                            ; preds = %bb.kz
  %i.rz = load ptr, ptr %i.qt, align 8, !tbaa !97
  %i.sa = load ptr, ptr %110, align 8, !tbaa !94
  %i.sb = ptrtoint ptr %i.rz to i64
  %i.sc = ptrtoint ptr %i.sa to i64
  %i.sd = sub i64 %i.sb, %i.sc
  %i.se = load i32, ptr %116, align 4, !tbaa !78
  store i64 %i.sd, ptr %115, align 8
  store i32 %i.se, ptr %.sroa.21188.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i32 5, ptr %i.j, align 4, !tbaa !108
  invoke void @_ZN7doctest6detail14Expression_lhsImEeqIiEEDTcmcvveqclL_ZNS0_7declvalImEEOT_vEEclsr7doctest6detailE7declvalIS5_EEtlNS0_6ResultEEES6_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %114, ptr noundef nonnull align 8 dereferenceable(12) %115, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
          to label %bb.lb unwind label %bb.mj

bb.lb:                                            ; preds = %bb.la
  %i.sf = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 249, ptr noundef nonnull @.str.35, ptr noundef nonnull align 8 dereferenceable(32) %114)
          to label %bb.lc unwind label %bb.mk     ; 0 uses

bb.lc:                                            ; preds = %bb.lb
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.qu) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %117) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %118) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %119) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %119, i32 noundef 10)
          to label %bb.ld unwind label %bb.mn

bb.ld:                                            ; preds = %bb.lc
  %i.sg = load ptr, ptr %110, align 8, !tbaa !94
  %i.sh = load i32, ptr %119, align 4, !tbaa !78
  store ptr %i.sg, ptr %118, align 8
  store i32 %i.sh, ptr %.sroa.21184.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #31
  store i8 108, ptr %i.k, align 1, !tbaa !89
  invoke void @_ZN7doctest6detail14Expression_lhsIRKhEeqIcEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %117, ptr noundef nonnull align 8 dereferenceable(12) %118, ptr noundef nonnull align 1 dereferenceable(1) %i.k)
          to label %bb.le unwind label %bb.mo

bb.le:                                            ; preds = %bb.ld
  %i.si = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 252, ptr noundef nonnull @.str.36, ptr noundef nonnull align 8 dereferenceable(32) %117)
          to label %bb.lf unwind label %bb.mp     ; 0 uses

bb.lf:                                            ; preds = %bb.le
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.qv) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %118) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %117) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #31
  %i.sj = load ptr, ptr %110, align 8, !tbaa !94
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 1
  %i.sl = load i32, ptr %i.sk, align 1
  %i.sm = call i32 @llvm.bswap.i32(i32 %i.sl)
  store i32 %i.sm, ptr %i.l, align 4, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %122) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %122, i32 noundef 10)
          to label %bb.lg unwind label %bb.ms

bb.lg:                                            ; preds = %bb.lf
  %i.sn = load i32, ptr %122, align 4, !tbaa !78
  store ptr %i.l, ptr %121, align 8
  store i32 %i.sn, ptr %.sroa.21180.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKiEeqIRiEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS8_EEtlNS0_6ResultEEES9_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %120, ptr noundef nonnull align 8 dereferenceable(12) %121, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
          to label %bb.lh unwind label %bb.ms

bb.lh:                                            ; preds = %bb.lg
  %i.so = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 257, ptr noundef nonnull @.str.33, ptr noundef nonnull align 8 dereferenceable(32) %120)
          to label %bb.li unwind label %bb.mt     ; 0 uses

bb.li:                                            ; preds = %bb.lh
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.qw) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %123) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %124) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %125) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %125, i32 noundef 10)
          to label %bb.lj unwind label %bb.mv

bb.lj:                                            ; preds = %bb.li
  call void @llvm.lifetime.start.p0(ptr nonnull %126) #31
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE11from_ubjsonIRKSC_EESD_OT_bb(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %126, ptr noundef nonnull align 8 dereferenceable(24) %110, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.lk unwind label %bb.mw

bb.lk:                                            ; preds = %bb.lj
  call void @llvm.experimental.noalias.scope.decl(metadata !976)
  %i.sp = load i32, ptr %125, align 4, !tbaa !78, !noalias !976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %124, ptr noundef nonnull align 8 dereferenceable(16) %126, i64 16, i1 false), !tbaa.struct !99
  store i8 0, ptr %126, align 8, !tbaa !101, !noalias !976
  store ptr null, ptr %i.qx, align 8, !tbaa !89, !noalias !976
  store i32 %i.sp, ptr %i.qy, align 8, !tbaa !103, !alias.scope !976
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRKSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISM_EEtlNS0_6ResultEEESN_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %123, ptr noundef nonnull align 8 dereferenceable(20) %124, ptr noundef nonnull align 8 dereferenceable(16) %105)
          to label %bb.ll unwind label %bb.mx

bb.ll:                                            ; preds = %bb.lk
  %i.sq = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 260, ptr noundef nonnull @.str.22, ptr noundef nonnull align 8 dereferenceable(32) %123)
          to label %bb.lm unwind label %bb.my     ; 0 uses

bb.lm:                                            ; preds = %bb.ll
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.qz) #31
  %i.sr = load i8, ptr %124, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ra, i8 noundef zeroext %i.sr)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6596 unwind label %bb.ln, !inline_history !95

bb.ln:                                            ; preds = %bb.lm
  %i.ss = landingpad { ptr, i32 }
          catch ptr null
  %i.st = extractvalue { ptr, i32 } %i.ss, 0
  call void @__clang_call_terminate(ptr %i.st) #32, !inline_history !95
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6596: ; preds = %bb.lm
  %i.su = load i8, ptr %126, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.qx, i8 noundef zeroext %i.su)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6597 unwind label %bb.lo, !inline_history !95

bb.lo:                                            ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6596
  %i.sv = landingpad { ptr, i32 }
          catch ptr null
  %i.sw = extractvalue { ptr, i32 } %i.sv, 0
  call void @__clang_call_terminate(ptr %i.sw) #32, !inline_history !95
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6597: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6596
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %127) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %128) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %129) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %129, i32 noundef 10)
          to label %bb.lp unwind label %bb.nc

bb.lp:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6597
  call void @llvm.lifetime.start.p0(ptr nonnull %130) #31
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE11from_ubjsonIRKSC_EESD_OT_bb(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %130, ptr noundef nonnull align 8 dereferenceable(24) %110, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.lq unwind label %bb.nd

bb.lq:                                            ; preds = %bb.lp
  call void @llvm.experimental.noalias.scope.decl(metadata !977)
  %i.sx = load i32, ptr %129, align 4, !tbaa !78, !noalias !977
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %128, ptr noundef nonnull align 8 dereferenceable(16) %130, i64 16, i1 false), !tbaa.struct !99
  store i8 0, ptr %130, align 8, !tbaa !101, !noalias !977
  store ptr null, ptr %i.rb, align 8, !tbaa !89, !noalias !977
  store i32 %i.sx, ptr %i.rc, align 8, !tbaa !103, !alias.scope !977
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRKSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISM_EEtlNS0_6ResultEEESN_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %127, ptr noundef nonnull align 8 dereferenceable(20) %128, ptr noundef nonnull align 8 dereferenceable(16) %105)
          to label %bb.lr unwind label %bb.ne

bb.lr:                                            ; preds = %bb.lq
  %i.sy = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 261, ptr noundef nonnull @.str.23, ptr noundef nonnull align 8 dereferenceable(32) %127)
          to label %bb.ls unwind label %bb.nf     ; 0 uses

bb.ls:                                            ; preds = %bb.lr
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.rd) #31
  %i.sz = load i8, ptr %128, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.re, i8 noundef zeroext %i.sz)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6598 unwind label %bb.lt, !inline_history !95

bb.lt:                                            ; preds = %bb.ls
  %i.ta = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZL19DOCTEST_ANON_FUNC_7v:bb.a
bb.aha:                                           ; preds = %bb.agz, %bb.agy
  %.pn6166 = phi { ptr, i32 } [ %i.asr, %bb.agz ], [ %i.asq, %bb.agy ]
  call void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %298) #31
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %300) #31
  br label %bb.ahb

bb.ahb:                                           ; preds = %bb.aha, %bb.agx
  %.pn6166.pn.pn = phi { ptr, i32 } [ %.pn6166, %bb.aha ], [ %i.asp, %bb.agx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %300) #31
  br label %bb.ahc

bb.ahc:                                           ; preds = %bb.ahb, %bb.agw
  %.pn6166.pn.pn.pn = phi { ptr, i32 } [ %.pn6166.pn.pn, %bb.ahb ], [ %i.aso, %bb.agw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %299) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %298) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %297) #31
  br label %bb.ahd

bb.ahd:                                           ; preds = %bb.ahc, %bb.agv, %bb.ago
  %.pn6166.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn6166.pn.pn.pn, %bb.ahc ], [ %.pn6161.pn.pn.pn, %bb.agv ], [ %.pn6159, %bb.ago ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #31
  br label %bb.ahe

bb.ahe:                                           ; preds = %bb.ahd, %bb.agl, %bb.agg, %bb.agb
  %.pn6166.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn6166.pn.pn.pn.pn, %bb.ahd ], [ %.pn6156.pn, %bb.agl ], [ %.pn6152.pn.pn, %bb.agg ], [ %.pn6150, %bb.agb ] ; 2 uses
  %i.ass = load ptr, ptr %280, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i6826 = icmp eq ptr %i.ass, null
  br i1 %.not.i.i.i6826, label %_ZNSt6vectorIhSaIhEED2Ev.exit6828, label %bb.ahf

bb.ahf:                                           ; preds = %bb.ahe
  call void @_ZdlPv(ptr noundef nonnull %i.ass) #33
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit6828

_ZNSt6vectorIhSaIhEED2Ev.exit6828:                ; preds = %bb.ahf, %bb.ahe, %bb.afy
  %.pn6166.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.arz, %bb.afy ], [ %.pn6166.pn.pn.pn.pn.pn, %bb.ahe ], [ %.pn6166.pn.pn.pn.pn.pn, %bb.ahf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %280) #31
  %i.ast = load ptr, ptr %279, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i6829 = icmp eq ptr %i.ast, null
  br i1 %.not.i.i.i6829, label %.body6804, label %bb.ahg

bb.ahg:                                           ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit6828
  call void @_ZdlPv(ptr noundef nonnull %i.ast) #33
  br label %.body6804

.body6804:                                        ; preds = %bb.ahg, %_ZNSt6vectorIhSaIhEED2Ev.exit6828, %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i6803
  %.pn6166.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.apr, %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i6803 ], [ %.pn6166.pn.pn.pn.pn.pn.pn, %bb.ahg ], [ %.pn6166.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit6828 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %279) #31
  br label %bb.ahh

bb.ahh:                                           ; preds = %.body6804, %bb.afx, %bb.afu
  %.pn6166.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn6166.pn.pn.pn.pn.pn.pn.pn, %.body6804 ], [ %.pn6147.pn, %bb.afx ], [ %i.arw, %bb.afu ]
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %275) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %275) #31
  call void @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_8ED2Ev"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %274) #31
  br label %bb.ahi

bb.ahi:                                           ; preds = %bb.ahh, %bb.aft
  %.pn6166.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn6166.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ahh ], [ %i.arv, %bb.aft ]
  call void @llvm.lifetime.end.p0(ptr nonnull %274) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #31
  br label %bb.ahp

bb.ahj:                                           ; preds = %bb.aed, %bb.aeb
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %272) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %272) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %301) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %302) #31
  invoke void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %302, ptr noundef nonnull @.str.51)
          to label %bb.ahk unwind label %bb.ahq

bb.ahk:                                           ; preds = %bb.ahj
  invoke void @_ZN7doctest6detail7SubcaseC1ERKNS_6StringEPKci(ptr noundef nonnull align 8 dereferenceable(41) %301, ptr noundef nonnull align 8 dereferenceable(24) %302, ptr noundef nonnull @.str.5, i32 noundef 462)
          to label %bb.ahl unwind label %bb.ahr

bb.ahl:                                           ; preds = %bb.ahk
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %302) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %302) #31
  %i.asu = invoke noundef zeroext i1 @_ZNK7doctest6detail7SubcasecvbEv(ptr noundef nonnull align 8 dereferenceable(41) %301)
          to label %bb.ahm unwind label %bb.aht

bb.ahm:                                           ; preds = %bb.ahl
  br i1 %i.asu, label %bb.ahn, label %bb.aku

bb.ahn:                                           ; preds = %bb.ahm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #31
  store i32 65536, ptr %i.ah, align 4, !tbaa !108
  %i.asv = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 77777, ptr %i.asv, align 4, !tbaa !108
  %i.asw = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 1048576, ptr %i.asw, align 4, !tbaa !108
  %i.asx = ptrtoint ptr %i.ai to i64
  %i.asy = getelementptr inbounds nuw i8, ptr %303, i64 16
  %i.asz = getelementptr inbounds nuw i8, ptr %304, i64 8 ; 2 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %305, i64 8 ; 2 uses
  %i.atb = getelementptr inbounds nuw i8, ptr %308, i64 16
  %i.atc = getelementptr inbounds nuw i8, ptr %308, i64 8
  %.sroa.21057.0..sroa_idx = getelementptr inbounds nuw i8, ptr %311, i64 8
  %i.atd = getelementptr inbounds nuw i8, ptr %310, i64 8 ; 2 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %309, i64 8
  %.sroa.21053.0..sroa_idx = getelementptr inbounds nuw i8, ptr %314, i64 8
  %i.atf = getelementptr inbounds nuw i8, ptr %313, i64 8 ; 2 uses
  %.sroa.21049.0..sroa_idx = getelementptr inbounds nuw i8, ptr %317, i64 8
  %i.atg = getelementptr inbounds nuw i8, ptr %316, i64 8 ; 2 uses
  %.sroa.21045.0..sroa_idx = getelementptr inbounds nuw i8, ptr %320, i64 8
  %i.ath = getelementptr inbounds nuw i8, ptr %319, i64 8 ; 2 uses
  %i.ati = getelementptr inbounds nuw i8, ptr %325, i64 8 ; 2 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %323, i64 16
  %i.atk = getelementptr inbounds nuw i8, ptr %322, i64 8 ; 2 uses
  %i.atl = getelementptr inbounds nuw i8, ptr %323, i64 8
  %i.atm = getelementptr inbounds nuw i8, ptr %329, i64 8 ; 2 uses
  %i.atn = getelementptr inbounds nuw i8, ptr %327, i64 16
  %i.ato = getelementptr inbounds nuw i8, ptr %326, i64 8 ; 2 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %327, i64 8
  %i.atq = getelementptr inbounds nuw i8, ptr %303, i64 8
  br label %bb.ahu

bb.aho:                                           ; preds = %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_9ED2Ev.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #31
  br label %bb.aku

bb.ahp:                                           ; preds = %bb.ahi, %bb.aei
  %.pn6166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn6166.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ahi ], [ %i.api, %bb.aei ]
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %272) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %272) #31
  br label %bb.aoq

bb.ahq:                                           ; preds = %bb.ahj
  %i.atr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ahs

bb.ahr:                                           ; preds = %bb.ahk
  %i.ats = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %302) #31
  br label %bb.ahs

bb.ahs:                                           ; preds = %bb.ahr, %bb.ahq
  %.pn3705 = phi { ptr, i32 } [ %i.ats, %bb.ahr ], [ %i.atr, %bb.ahq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %302) #31
  br label %bb.aoq

bb.aht:                                           ; preds = %bb.ahl
  %i.att = landingpad { ptr, i32 }
          cleanup
  br label %bb.ala

bb.ahu:                                           ; preds = %bb.ahn, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_9ED2Ev.exit"
  %.03524.idx12536 = phi i64 [ 0, %bb.ahn ], [ %.03524.add, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_9ED2Ev.exit" ] ; 2 uses
  %.03524.ptr = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.03524.idx12536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #31
  %i.atu = load i32, ptr %.03524.ptr, align 4, !tbaa !108
  store i32 %i.atu, ptr %i.ai, align 4, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %303) #31
  invoke void @_ZN7doctest6detail16ContextScopeBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %303)
          to label %bb.ahv unwind label %bb.aje

bb.ahv:                                           ; preds = %bb.ahu
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_9EE", i64 16), ptr %303, align 8, !tbaa !75, !alias.scope !995
  store i64 %i.asx, ptr %i.asy, align 8, !tbaa !111, !alias.scope !995
  call void @llvm.lifetime.start.p0(ptr nonnull %304) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %304, i8 0, i64 16, i1 false)
  store i8 5, ptr %304, align 8, !tbaa !101
  store i64 -1, ptr %i.asz, align 8, !tbaa !89
  %i.atv = load i32, ptr %i.ai, align 4, !tbaa !108
  %i.atw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE12get_ref_implIRlSD_EET_RT0_(ptr noundef nonnull align 8 dereferenceable(16) %304)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRlTnNSt9enable_ifIXsr3std12is_referenceIT_EE5valueEiE4typeELi0EEESH_v.exit6834 unwind label %bb.ajf

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRlTnNSt9enable_ifIXsr3std12is_referenceIT_EE5valueEiE4typeELi0EEESH_v.exit6834: ; preds = %bb.ahv
  %i.atx = zext i32 %i.atv to i64
  store i64 %i.atx, ptr %i.atw, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %305) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %306) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %307) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %307, i32 noundef 10)
          to label %bb.ahw unwind label %bb.ajg

bb.ahw:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRlTnNSt9enable_ifIXsr3std12is_referenceIT_EE5valueEiE4typeELi0EEESH_v.exit6834
  %i.aty = load i8, ptr %304, align 8, !tbaa !101
  %i.atz = add i8 %i.aty, -5
  %spec.select.i6835 = icmp ult i8 %i.atz, 2
  %i.aua = load i32, ptr %307, align 4, !tbaa !78
  %.sroa.22.0.insert.ext.i6836 = zext i32 %i.aua to i64
  %.sroa.22.0.insert.shift.i6837 = shl nuw i64 %.sroa.22.0.insert.ext.i6836, 32
  %.sroa.0.0.insert.ext.i6838 = zext i1 %spec.select.i6835 to i64
  %.sroa.0.0.insert.insert.i6839 = or disjoint i64 %.sroa.22.0.insert.shift.i6837, %.sroa.0.0.insert.ext.i6838
  store i64 %.sroa.0.0.insert.insert.i6839, ptr %306, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIbEcvNS0_6ResultEEv(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %305, ptr noundef nonnull align 4 dereferenceable(8) %306)
          to label %bb.ahx unwind label %bb.ajg

bb.ahx:                                           ; preds = %bb.ahw
  %i.aub = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 476, ptr noundef nonnull @.str.30, ptr noundef nonnull align 8 dereferenceable(32) %305)
          to label %bb.ahy unwind label %bb.ajh   ; 0 uses

bb.ahy:                                           ; preds = %bb.ahx
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ata) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %307) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %306) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %305) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %308) #31
  %i.auc = load i32, ptr %i.ai, align 4, !tbaa !108 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %308, i8 0, i64 24, i1 false)
  %i.aud = invoke noalias noundef nonnull dereferenceable(5) ptr @_Znwm(i64 noundef 5) #34
          to label %bb.ahz unwind label %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i6841 ; 7 uses

_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i6841:       ; preds = %bb.ahy
  %i.aue = landingpad { ptr, i32 }
          cleanup
  br label %.body6842

bb.ahz:                                           ; preds = %bb.ahy
  %2168 = trunc i32 %i.auc to i8
  %2169 = lshr i32 %i.auc, 8
  %2170 = trunc i32 %2169 to i8
  %2171 = lshr i32 %i.auc, 16
  %2172 = trunc i32 %2171 to i8
  %2173 = lshr i32 %i.auc, 24
  %2174 = trunc nuw i32 %2173 to i8
  store ptr %i.aud, ptr %308, align 8, !tbaa !94
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aud, i64 5 ; 2 uses
  store ptr %i.auf, ptr %i.atb, align 8, !tbaa !96
  store i8 108, ptr %i.aud, align 1
  %.sroa.511985.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aud, i64 1
  store i8 %2174, ptr %.sroa.511985.0..sroa_idx, align 1
  %.sroa.611986.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aud, i64 2
  store i8 %2172, ptr %.sroa.611986.0..sroa_idx, align 1
  %.sroa.711987.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aud, i64 3
  store i8 %2170, ptr %.sroa.711987.0..sroa_idx, align 1
  %.sroa.811988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aud, i64 4
  store i8 %2168, ptr %.sroa.811988.0..sroa_idx, align 1
  store ptr %i.auf, ptr %i.atc, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %309) #31
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9to_ubjsonERKSD_bb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %309, ptr noundef nonnull align 8 dereferenceable(16) %304, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.aia unwind label %bb.ajj

bb.aia:                                           ; preds = %bb.ahz
  call void @llvm.lifetime.start.p0(ptr nonnull %310) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %311) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %312) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %312, i32 noundef 10)
          to label %bb.aib unwind label %bb.ajk

bb.aib:                                           ; preds = %bb.aia
  %i.aug = load i32, ptr %312, align 4, !tbaa !78
  store ptr %309, ptr %311, align 8
  store i32 %i.aug, ptr %.sroa.21057.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKSt6vectorIhSaIhEEEeqIS6_EEDTcmcvveqclL_ZNS0_7declvalIS6_EEOT_vEEclsr7doctest6detailE7declvalISA_EEtlNS0_6ResultEEESB_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %310, ptr noundef nonnull align 8 dereferenceable(12) %311, ptr noundef nonnull align 8 dereferenceable(24) %308)
          to label %bb.aic unwind label %bb.ajk

bb.aic:                                           ; preds = %bb.aib
  %i.auh = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 490, ptr noundef nonnull @.str.21, ptr noundef nonnull align 8 dereferenceable(32) %310)
          to label %bb.aid unwind label %bb.ajl   ; 0 uses

bb.aid:                                           ; preds = %bb.aic
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.atd) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %312) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %311) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %310) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %313) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %314) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %315) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %315, i32 noundef 10)
          to label %bb.aie unwind label %bb.ajn

bb.aie:                                           ; preds = %bb.aid
  %i.aui = load ptr, ptr %i.ate, align 8, !tbaa !97
  %i.auj = load ptr, ptr %309, align 8, !tbaa !94
  %i.auk = ptrtoint ptr %i.aui to i64
  %i.aul = ptrtoint ptr %i.auj to i64
  %i.aum = sub i64 %i.auk, %i.aul
  %i.aun = load i32, ptr %315, align 4, !tbaa !78
  store i64 %i.aum, ptr %314, align 8
  store i32 %i.aun, ptr %.sroa.21053.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #31
  store i32 5, ptr %i.aj, align 4, !tbaa !108
  invoke void @_ZN7doctest6detail14Expression_lhsImEeqIiEEDTcmcvveqclL_ZNS0_7declvalImEEOT_vEEclsr7doctest6detailE7declvalIS5_EEtlNS0_6ResultEEES6_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %313, ptr noundef nonnull align 8 dereferenceable(12) %314, ptr noundef nonnull align 4 dereferenceable(4) %i.aj)
          to label %bb.aif unwind label %bb.ajo

bb.aif:                                           ; preds = %bb.aie
  %i.auo = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 491, ptr noundef nonnull @.str.35, ptr noundef nonnull align 8 dereferenceable(32) %313)
          to label %bb.aig unwind label %bb.ajp   ; 0 uses

bb.aig:                                           ; preds = %bb.aif
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.atf) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %315) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %314) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %313) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %316) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %317) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %318) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %318, i32 noundef 10)
          to label %bb.aih unwind label %bb.ajs

bb.aih:                                           ; preds = %bb.aig
  %i.aup = load ptr, ptr %309, align 8, !tbaa !94
  %i.auq = load i32, ptr %318, align 4, !tbaa !78
  store ptr %i.aup, ptr %317, align 8
  store i32 %i.auq, ptr %.sroa.21049.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #31
  store i8 108, ptr %i.ak, align 1, !tbaa !89
  invoke void @_ZN7doctest6detail14Expression_lhsIRKhEeqIcEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %316, ptr noundef nonnull align 8 dereferenceable(12) %317, ptr noundef nonnull align 1 dereferenceable(1) %i.ak)
          to label %bb.aii unwind label %bb.ajt

bb.aii:                                           ; preds = %bb.aih
  %i.aur = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 494, ptr noundef nonnull @.str.36, ptr noundef nonnull align 8 dereferenceable(32) %316)
          to label %bb.aij unwind label %bb.aju   ; 0 uses

bb.aij:                                           ; preds = %bb.aii
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.atg) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %318) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %317) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %316) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #31
  %i.aus = load ptr, ptr %309, align 8, !tbaa !94
  %i.aut = getelementptr inbounds nuw i8, ptr %i.aus, i64 1
  %i.auu = load i32, ptr %i.aut, align 1
  %i.auv = call i32 @llvm.bswap.i32(i32 %i.auu)
  store i32 %i.auv, ptr %i.al, align 4, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %319) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %320) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %321) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %321, i32 noundef 10)
          to label %bb.aik unwind label %bb.ajx

bb.aik:                                           ; preds = %bb.aij
  %i.auw = load i32, ptr %321, align 4, !tbaa !78
  store ptr %i.al, ptr %320, align 8
  store i32 %i.auw, ptr %.sroa.21045.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKjEeqIRjEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS8_EEtlNS0_6ResultEEES9_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %319, ptr noundef nonnull align 8 dereferenceable(12) %320, ptr noundef nonnull align 4 dereferenceable(4) %i.ai)
          to label %bb.ail unwind label %bb.ajx

bb.ail:                                           ; preds = %bb.aik
  %i.aux = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 499, ptr noundef nonnull @.str.33, ptr noundef nonnull align 8 dereferenceable(32) %319)
          to label %bb.aim unwind label %bb.ajy   ; 0 uses

bb.aim:                                           ; preds = %bb.ail
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ath) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %321) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %320) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %319) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %322) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %323) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %324) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %324, i32 noundef 10)
          to label %bb.ain unwind label %bb.aka

bb.ain:                                           ; preds = %bb.aim
  call void @llvm.lifetime.start.p0(ptr nonnull %325) #31
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE11from_ubjsonIRKSC_EESD_OT_bb(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %325, ptr noundef nonnull align 8 dereferenceable(24) %309, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.aio unwind label %bb.akb

bb.aio:                                           ; preds = %bb.ain
  call void @llvm.experimental.noalias.scope.decl(metadata !996)
  %i.auy = load i32, ptr %324, align 4, !tbaa !78, !noalias !996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %323, ptr noundef nonnull align 8 dereferenceable(16) %325, i64 16, i1 false), !tbaa.struct !99
  store i8 0, ptr %325, align 8, !tbaa !101, !noalias !996
  store ptr null, ptr %i.ati, align 8, !tbaa !89, !noalias !996
  store i32 %i.auy, ptr %i.atj, align 8, !tbaa !103, !alias.scope !996
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISL_EEtlNS0_6ResultEEESM_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %322, ptr noundef nonnull align 8 dereferenceable(20) %323, ptr noundef nonnull align 8 dereferenceable(16) %304)
          to label %bb.aip unwind label %bb.akc

bb.aip:                                           ; preds = %bb.aio
  %i.auz = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 502, ptr noundef nonnull @.str.22, ptr noundef nonnull align 8 dereferenceable(32) %322)
          to label %bb.aiq unwind label %bb.akd   ; 0 uses

bb.aiq:                                           ; preds = %bb.aip
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.atk) #31
  %i.ava = load i8, ptr %323, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.atl, i8 noundef zeroext %i.ava)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6853 unwind label %bb.air, !inline_history !95

bb.air:                                           ; preds = %bb.aiq
  %i.avb = landingpad { ptr, i32 }
          catch ptr null
  %i.avc = extractvalue { ptr, i32 } %i.avb, 0
  call void @__clang_call_terminate(ptr %i.avc) #32, !inline_history !95
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6853: ; preds = %bb.aiq
  %i.avd = load i8, ptr %325, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ati, i8 noundef zeroext %i.avd)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6854 unwind label %bb.ais, !inline_history !95

bb.ais:                                           ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6853
  %i.ave = landingpad { ptr, i32 }
          catch ptr null
  %i.avf = extractvalue { ptr, i32 } %i.ave, 0
  call void @__clang_call_terminate(ptr %i.avf) #32, !inline_history !95
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6854: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6853
  call void @llvm.lifetime.end.p0(ptr nonnull %325) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %324) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %323) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %322) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %326) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %327) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %328) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %328, i32 noundef 10)
          to label %bb.ait unwind label %bb.akh

bb.ait:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6854
  call void @llvm.lifetime.start.p0(ptr nonnull %329) #31
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE11from_ubjsonIRKSC_EESD_OT_bb(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %329, ptr noundef nonnull align 8 dereferenceable(24) %309, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.aiu unwind label %bb.aki

bb.aiu:                                           ; preds = %bb.ait
  call void @llvm.experimental.noalias.scope.decl(metadata !997)
  %i.avg = load i32, ptr %328, align 4, !tbaa !78, !noalias !997
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %327, ptr noundef nonnull align 8 dereferenceable(16) %329, i64 16, i1 false), !tbaa.struct !99
  store i8 0, ptr %329, align 8, !tbaa !101, !noalias !997
  store ptr null, ptr %i.atm, align 8, !tbaa !89, !noalias !997
  store i32 %i.avg, ptr %i.atn, align 8, !tbaa !103, !alias.scope !997
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISL_EEtlNS0_6ResultEEESM_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %326, ptr noundef nonnull align 8 dereferenceable(20) %327, ptr noundef nonnull align 8 dereferenceable(16) %304)
          to label %bb.aiv unwind label %bb.akj

bb.aiv:                                           ; preds = %bb.aiu
  %i.avh = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 503, ptr noundef nonnull @.str.23, ptr noundef nonnull align 8 dereferenceable(32) %326)
          to label %bb.aiw unwind label %bb.akk   ; 0 uses

bb.aiw:                                           ; preds = %bb.aiv
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ato) #31
  %i.avi = load i8, ptr %327, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.atp, i8 noundef zeroext %i.avi)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6855 unwind label %bb.aix, !inline_history !95

bb.aix:                                           ; preds = %bb.aiw
  %i.avj = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_ZL19DOCTEST_ANON_FUNC_7v:bb.a
  %.pn6134 = phi { ptr, i32 } [ %i.awt, %bb.akk ], [ %i.aws, %bb.akj ]
  call void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %327) #31
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %329) #31
  br label %bb.akm

bb.akm:                                           ; preds = %bb.akl, %bb.aki
  %.pn6134.pn.pn = phi { ptr, i32 } [ %.pn6134, %bb.akl ], [ %i.awr, %bb.aki ]
  call void @llvm.lifetime.end.p0(ptr nonnull %329) #31
  br label %bb.akn

bb.akn:                                           ; preds = %bb.akm, %bb.akh
  %.pn6134.pn.pn.pn = phi { ptr, i32 } [ %.pn6134.pn.pn, %bb.akm ], [ %i.awq, %bb.akh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %328) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %327) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %326) #31
  br label %bb.ako

bb.ako:                                           ; preds = %bb.akn, %bb.akg, %bb.ajz
  %.pn6134.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn6134.pn.pn.pn, %bb.akn ], [ %.pn6129.pn.pn.pn, %bb.akg ], [ %.pn6127, %bb.ajz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #31
  br label %bb.akp

bb.akp:                                           ; preds = %bb.ako, %bb.ajw, %bb.ajr, %bb.ajm
  %.pn6134.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn6134.pn.pn.pn.pn, %bb.ako ], [ %.pn6124.pn, %bb.ajw ], [ %.pn6120.pn.pn, %bb.ajr ], [ %.pn6118, %bb.ajm ] ; 2 uses
  %i.awu = load ptr, ptr %309, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i6864 = icmp eq ptr %i.awu, null
  br i1 %.not.i.i.i6864, label %_ZNSt6vectorIhSaIhEED2Ev.exit6866, label %bb.akq

bb.akq:                                           ; preds = %bb.akp
  call void @_ZdlPv(ptr noundef nonnull %i.awu) #33
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit6866

_ZNSt6vectorIhSaIhEED2Ev.exit6866:                ; preds = %bb.akq, %bb.akp, %bb.ajj
  %.pn6134.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.awb, %bb.ajj ], [ %.pn6134.pn.pn.pn.pn.pn, %bb.akp ], [ %.pn6134.pn.pn.pn.pn.pn, %bb.akq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %309) #31
  %i.awv = load ptr, ptr %308, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i6867 = icmp eq ptr %i.awv, null
  br i1 %.not.i.i.i6867, label %.body6842, label %bb.akr

bb.akr:                                           ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit6866
  call void @_ZdlPv(ptr noundef nonnull %i.awv) #33
  br label %.body6842

.body6842:                                        ; preds = %bb.akr, %_ZNSt6vectorIhSaIhEED2Ev.exit6866, %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i6841
  %.pn6134.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aue, %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i6841 ], [ %.pn6134.pn.pn.pn.pn.pn.pn, %bb.akr ], [ %.pn6134.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit6866 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %308) #31
  br label %bb.aks

bb.aks:                                           ; preds = %.body6842, %bb.aji, %bb.ajf
  %.pn6134.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn6134.pn.pn.pn.pn.pn.pn.pn, %.body6842 ], [ %.pn6115.pn, %bb.aji ], [ %i.avy, %bb.ajf ]
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %304) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %304) #31
  call void @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_9ED2Ev"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %303) #31
  br label %bb.akt

bb.akt:                                           ; preds = %bb.aks, %bb.aje
  %.pn6134.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn6134.pn.pn.pn.pn.pn.pn.pn.pn, %bb.aks ], [ %i.avx, %bb.aje ]
  call void @llvm.lifetime.end.p0(ptr nonnull %303) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #31
  br label %bb.ala

bb.aku:                                           ; preds = %bb.aho, %bb.ahm
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %301) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %301) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %330) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %331) #31
  invoke void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %331, ptr noundef nonnull @.str.52)
          to label %bb.akv unwind label %bb.alb

bb.akv:                                           ; preds = %bb.aku
  invoke void @_ZN7doctest6detail7SubcaseC1ERKNS_6StringEPKci(ptr noundef nonnull align 8 dereferenceable(41) %330, ptr noundef nonnull align 8 dereferenceable(24) %331, ptr noundef nonnull @.str.5, i32 noundef 507)
          to label %bb.akw unwind label %bb.alc

bb.akw:                                           ; preds = %bb.akv
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %331) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %331) #31
  %i.aww = invoke noundef zeroext i1 @_ZNK7doctest6detail7SubcasecvbEv(ptr noundef nonnull align 8 dereferenceable(41) %330)
          to label %bb.akx unwind label %bb.ale

bb.akx:                                           ; preds = %bb.akw
  br i1 %i.aww, label %bb.aky, label %bb.aoe

bb.aky:                                           ; preds = %bb.akx
  %i.awx = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34
          to label %bb.akz unwind label %bb.ale   ; 5 uses

bb.akz:                                           ; preds = %bb.aky
  store i64 2147483648, ptr %i.awx, align 8
  %.sroa.511976.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.awx, i64 8
  store i64 9223372036854775807, ptr %.sroa.511976.0..sroa_idx, align 8
  %i.awy = ptrtoint ptr %i.am to i64
  %i.awz = getelementptr inbounds nuw i8, ptr %332, i64 16
  %i.axa = getelementptr inbounds nuw i8, ptr %333, i64 8 ; 2 uses
  %i.axb = getelementptr inbounds nuw i8, ptr %334, i64 8 ; 2 uses
  %i.axc = getelementptr inbounds nuw i8, ptr %337, i64 16
  %i.axd = getelementptr inbounds nuw i8, ptr %337, i64 8
  %.sroa.21034.0..sroa_idx = getelementptr inbounds nuw i8, ptr %340, i64 8
  %i.axe = getelementptr inbounds nuw i8, ptr %339, i64 8 ; 2 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %338, i64 8
  %.sroa.21030.0..sroa_idx = getelementptr inbounds nuw i8, ptr %343, i64 8
  %i.axg = getelementptr inbounds nuw i8, ptr %342, i64 8 ; 2 uses
  %.sroa.21026.0..sroa_idx = getelementptr inbounds nuw i8, ptr %346, i64 8
  %i.axh = getelementptr inbounds nuw i8, ptr %345, i64 8 ; 2 uses
  %.sroa.21022.0..sroa_idx = getelementptr inbounds nuw i8, ptr %349, i64 8
  %i.axi = getelementptr inbounds nuw i8, ptr %348, i64 8 ; 2 uses
  %i.axj = getelementptr inbounds nuw i8, ptr %354, i64 8 ; 2 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %352, i64 16
  %i.axl = getelementptr inbounds nuw i8, ptr %351, i64 8 ; 2 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %352, i64 8
  %i.axn = getelementptr inbounds nuw i8, ptr %358, i64 8 ; 2 uses
  %i.axo = getelementptr inbounds nuw i8, ptr %356, i64 16
  %i.axp = getelementptr inbounds nuw i8, ptr %355, i64 8 ; 2 uses
  %i.axq = getelementptr inbounds nuw i8, ptr %356, i64 8
  %i.axr = getelementptr inbounds nuw i8, ptr %332, i64 8
  br label %bb.alf

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_10ED2Ev.exit"
  call void @_ZdlPv(ptr noundef nonnull %i.awx) #33
  br label %bb.aoe

bb.ala:                                           ; preds = %bb.akt, %bb.aht
  %.pn6134.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn6134.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.akt ], [ %i.att, %bb.aht ]
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %301) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %301) #31
  br label %bb.aoq

bb.alb:                                           ; preds = %bb.aku
  %i.axs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ald

bb.alc:                                           ; preds = %bb.akv
  %i.axt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %331) #31
  br label %bb.ald

bb.ald:                                           ; preds = %bb.alc, %bb.alb
  %.pn3707 = phi { ptr, i32 } [ %i.axt, %bb.alc ], [ %i.axs, %bb.alb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %331) #31
  br label %bb.aoq

bb.ale:                                           ; preds = %bb.akw, %bb.aky
  %i.axu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aof

bb.alf:                                           ; preds = %bb.akz, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_10ED2Ev.exit"
  %.sroa.011971.0.idx12537 = phi i64 [ 0, %bb.akz ], [ %.sroa.011971.0.add, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_10ED2Ev.exit" ] ; 2 uses
  %.sroa.011971.0.ptr = getelementptr inbounds nuw i8, ptr %i.awx, i64 %.sroa.011971.0.idx12537
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am) #31
  %i.axv = load i64, ptr %.sroa.011971.0.ptr, align 8, !tbaa !105
  store i64 %i.axv, ptr %i.am, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %332) #31
  invoke void @_ZN7doctest6detail16ContextScopeBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %332)
          to label %bb.alg unwind label %bb.amp

bb.alg:                                           ; preds = %bb.alf
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_10EE", i64 16), ptr %332, align 8, !tbaa !75, !alias.scope !998
  store i64 %i.awy, ptr %i.awz, align 8, !tbaa !107, !alias.scope !998
  call void @llvm.lifetime.start.p0(ptr nonnull %333) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %333, i8 0, i64 16, i1 false)
  store i8 5, ptr %333, align 8, !tbaa !101
  store i64 -1, ptr %i.axa, align 8, !tbaa !89
  %i.axw = load i64, ptr %i.am, align 8, !tbaa !105
  %i.axx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE12get_ref_implIRlSD_EET_RT0_(ptr noundef nonnull align 8 dereferenceable(16) %333)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRlTnNSt9enable_ifIXsr3std12is_referenceIT_EE5valueEiE4typeELi0EEESH_v.exit6874 unwind label %bb.amq

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRlTnNSt9enable_ifIXsr3std12is_referenceIT_EE5valueEiE4typeELi0EEESH_v.exit6874: ; preds = %bb.alg
  store i64 %i.axw, ptr %i.axx, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %334) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %335) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %336) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %336, i32 noundef 10)
          to label %bb.alh unwind label %bb.amr

bb.alh:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRlTnNSt9enable_ifIXsr3std12is_referenceIT_EE5valueEiE4typeELi0EEESH_v.exit6874
  %i.axy = load i8, ptr %333, align 8, !tbaa !101
  %i.axz = add i8 %i.axy, -5
  %spec.select.i6875 = icmp ult i8 %i.axz, 2
  %i.aya = load i32, ptr %336, align 4, !tbaa !78
  %.sroa.22.0.insert.ext.i6876 = zext i32 %i.aya to i64
  %.sroa.22.0.insert.shift.i6877 = shl nuw i64 %.sroa.22.0.insert.ext.i6876, 32
  %.sroa.0.0.insert.ext.i6878 = zext i1 %spec.select.i6875 to i64
  %.sroa.0.0.insert.insert.i6879 = or disjoint i64 %.sroa.22.0.insert.shift.i6877, %.sroa.0.0.insert.ext.i6878
  store i64 %.sroa.0.0.insert.insert.i6879, ptr %335, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIbEcvNS0_6ResultEEv(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %334, ptr noundef nonnull align 4 dereferenceable(8) %335)
          to label %bb.ali unwind label %bb.amr

bb.ali:                                           ; preds = %bb.alh
  %i.ayb = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 519, ptr noundef nonnull @.str.30, ptr noundef nonnull align 8 dereferenceable(32) %334)
          to label %bb.alj unwind label %bb.ams   ; 0 uses

bb.alj:                                           ; preds = %bb.ali
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.axb) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %336) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %335) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %334) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %337) #31
  %2175 = load <8 x i8>, ptr %i.am, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %337, i8 0, i64 24, i1 false)
  %i.ayc = invoke noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #34
          to label %bb.alk unwind label %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i6881 ; 4 uses

_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i6881:       ; preds = %bb.alj
  %i.ayd = landingpad { ptr, i32 }
          cleanup
  br label %.body6882

bb.alk:                                           ; preds = %bb.alj
  store ptr %i.ayc, ptr %337, align 8, !tbaa !94
  %i.aye = getelementptr inbounds nuw i8, ptr %i.ayc, i64 9 ; 2 uses
  store ptr %i.aye, ptr %i.axc, align 8, !tbaa !96
  store i8 76, ptr %i.ayc, align 1
  %.sroa.511959.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ayc, i64 1
  %2176 = shufflevector <8 x i8> %2175, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %2176, ptr %.sroa.511959.0..sroa_idx, align 1
  store ptr %i.aye, ptr %i.axd, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %338) #31
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9to_ubjsonERKSD_bb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %338, ptr noundef nonnull align 8 dereferenceable(16) %333, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.all unwind label %bb.amu

bb.all:                                           ; preds = %bb.alk
  call void @llvm.lifetime.start.p0(ptr nonnull %339) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %340) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %341) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %341, i32 noundef 10)
          to label %bb.alm unwind label %bb.amv

bb.alm:                                           ; preds = %bb.all
  %i.ayf = load i32, ptr %341, align 4, !tbaa !78
  store ptr %338, ptr %340, align 8
  store i32 %i.ayf, ptr %.sroa.21034.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKSt6vectorIhSaIhEEEeqIS6_EEDTcmcvveqclL_ZNS0_7declvalIS6_EEOT_vEEclsr7doctest6detailE7declvalISA_EEtlNS0_6ResultEEESB_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %339, ptr noundef nonnull align 8 dereferenceable(12) %340, ptr noundef nonnull align 8 dereferenceable(24) %337)
          to label %bb.aln unwind label %bb.amv

bb.aln:                                           ; preds = %bb.alm
  %i.ayg = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 537, ptr noundef nonnull @.str.21, ptr noundef nonnull align 8 dereferenceable(32) %339)
          to label %bb.alo unwind label %bb.amw   ; 0 uses

bb.alo:                                           ; preds = %bb.aln
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.axe) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %341) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %340) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %339) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %342) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %343) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %344) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %344, i32 noundef 10)
          to label %bb.alp unwind label %bb.amy

bb.alp:                                           ; preds = %bb.alo
  %i.ayh = load ptr, ptr %i.axf, align 8, !tbaa !97
  %i.ayi = load ptr, ptr %338, align 8, !tbaa !94
  %i.ayj = ptrtoint ptr %i.ayh to i64
  %i.ayk = ptrtoint ptr %i.ayi to i64
  %i.ayl = sub i64 %i.ayj, %i.ayk
  %i.aym = load i32, ptr %344, align 4, !tbaa !78
  store i64 %i.ayl, ptr %343, align 8
  store i32 %i.aym, ptr %.sroa.21030.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an) #31
  store i32 9, ptr %i.an, align 4, !tbaa !108
  invoke void @_ZN7doctest6detail14Expression_lhsImEeqIiEEDTcmcvveqclL_ZNS0_7declvalImEEOT_vEEclsr7doctest6detailE7declvalIS5_EEtlNS0_6ResultEEES6_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %342, ptr noundef nonnull align 8 dereferenceable(12) %343, ptr noundef nonnull align 4 dereferenceable(4) %i.an)
          to label %bb.alq unwind label %bb.amz

bb.alq:                                           ; preds = %bb.alp
  %i.ayn = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 538, ptr noundef nonnull @.str.31, ptr noundef nonnull align 8 dereferenceable(32) %342)
          to label %bb.alr unwind label %bb.ana   ; 0 uses

bb.alr:                                           ; preds = %bb.alq
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.axg) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %344) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %343) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %342) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %345) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %346) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %347) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %347, i32 noundef 10)
          to label %bb.als unwind label %bb.and

bb.als:                                           ; preds = %bb.alr
  %i.ayo = load ptr, ptr %338, align 8, !tbaa !94
  %i.ayp = load i32, ptr %347, align 4, !tbaa !78
  store ptr %i.ayo, ptr %346, align 8
  store i32 %i.ayp, ptr %.sroa.21026.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #31
  store i8 76, ptr %i.ao, align 1, !tbaa !89
  invoke void @_ZN7doctest6detail14Expression_lhsIRKhEeqIcEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %345, ptr noundef nonnull align 8 dereferenceable(12) %346, ptr noundef nonnull align 1 dereferenceable(1) %i.ao)
          to label %bb.alt unwind label %bb.ane

bb.alt:                                           ; preds = %bb.als
  %i.ayq = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 541, ptr noundef nonnull @.str.32, ptr noundef nonnull align 8 dereferenceable(32) %345)
          to label %bb.alu unwind label %bb.anf   ; 0 uses

bb.alu:                                           ; preds = %bb.alt
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.axh) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %347) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %346) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %345) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #31
  %i.ayr = load ptr, ptr %338, align 8, !tbaa !94 ; 8 uses
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayr, i64 1
  %i.ayt = load i8, ptr %i.ays, align 1, !tbaa !89
  %i.ayu = zext i8 %i.ayt to i64
  %i.ayv = shl nuw i64 %i.ayu, 56
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayr, i64 2
  %i.ayx = load i8, ptr %i.ayw, align 1, !tbaa !89
  %i.ayy = zext i8 %i.ayx to i64
  %i.ayz = shl nuw nsw i64 %i.ayy, 48
  %i.aza = or disjoint i64 %i.ayz, %i.ayv
  %i.azb = getelementptr inbounds nuw i8, ptr %i.ayr, i64 3
  %i.azc = load i8, ptr %i.azb, align 1, !tbaa !89
  %i.azd = zext i8 %i.azc to i64
  %i.aze = shl nuw nsw i64 %i.azd, 40
  %i.azf = or disjoint i64 %i.aza, %i.aze
  %i.azg = getelementptr inbounds nuw i8, ptr %i.ayr, i64 4
  %i.azh = load i8, ptr %i.azg, align 1, !tbaa !89
  %i.azi = zext i8 %i.azh to i64
  %i.azj = shl nuw nsw i64 %i.azi, 32
  %i.azk = or disjoint i64 %i.azf, %i.azj
  %i.azl = getelementptr inbounds nuw i8, ptr %i.ayr, i64 5
  %i.azm = load i8, ptr %i.azl, align 1, !tbaa !89
  %i.azn = zext i8 %i.azm to i64
  %i.azo = shl nuw nsw i64 %i.azn, 24
  %i.azp = or disjoint i64 %i.azk, %i.azo
  %i.azq = getelementptr inbounds nuw i8, ptr %i.ayr, i64 6
  %i.azr = load i8, ptr %i.azq, align 1, !tbaa !89
  %i.azs = zext i8 %i.azr to i64
  %i.azt = shl nuw nsw i64 %i.azs, 16
  %i.azu = or disjoint i64 %i.azp, %i.azt
  %i.azv = getelementptr inbounds nuw i8, ptr %i.ayr, i64 7
  %i.azw = load i8, ptr %i.azv, align 1, !tbaa !89
  %i.azx = zext i8 %i.azw to i64
  %i.azy = shl nuw nsw i64 %i.azx, 8
  %i.azz = or disjoint i64 %i.azu, %i.azy
  %i.baa = getelementptr inbounds nuw i8, ptr %i.ayr, i64 8
  %i.bab = load i8, ptr %i.baa, align 1, !tbaa !89
  %i.bac = zext i8 %i.bab to i64
  %i.bad = add nuw i64 %i.azz, %i.bac
  store i64 %i.bad, ptr %i.ap, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %348) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %349) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %350) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %350, i32 noundef 10)
          to label %bb.alv unwind label %bb.ani

bb.alv:                                           ; preds = %bb.alu
  %i.bae = load i32, ptr %350, align 4, !tbaa !78
  store ptr %i.ap, ptr %349, align 8
  store i32 %i.bae, ptr %.sroa.21022.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKmEeqIRmEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS8_EEtlNS0_6ResultEEES9_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %348, ptr noundef nonnull align 8 dereferenceable(12) %349, ptr noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %bb.alw unwind label %bb.ani

bb.alw:                                           ; preds = %bb.alv
  %i.baf = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 550, ptr noundef nonnull @.str.33, ptr noundef nonnull align 8 dereferenceable(32) %348)
          to label %bb.alx unwind label %bb.anj   ; 0 uses

bb.alx:                                           ; preds = %bb.alw
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.axi) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %350) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %349) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %348) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %351) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %352) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %353) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %353, i32 noundef 10)
          to label %bb.aly unwind label %bb.anl

bb.aly:                                           ; preds = %bb.alx
  call void @llvm.lifetime.start.p0(ptr nonnull %354) #31
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE11from_ubjsonIRKSC_EESD_OT_bb(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %354, ptr noundef nonnull align 8 dereferenceable(24) %338, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.alz unwind label %bb.anm

bb.alz:                                           ; preds = %bb.aly
  call void @llvm.experimental.noalias.scope.decl(metadata !999)
  %i.bag = load i32, ptr %353, align 4, !tbaa !78, !noalias !999
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %352, ptr noundef nonnull align 8 dereferenceable(16) %354, i64 16, i1 false), !tbaa.struct !99
  store i8 0, ptr %354, align 8, !tbaa !101, !noalias !999
  store ptr null, ptr %i.axj, align 8, !tbaa !89, !noalias !999
  store i32 %i.bag, ptr %i.axk, align 8, !tbaa !103, !alias.scope !999
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISL_EEtlNS0_6ResultEEESM_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %351, ptr noundef nonnull align 8 dereferenceable(20) %352, ptr noundef nonnull align 8 dereferenceable(16) %333)
          to label %bb.ama unwind label %bb.ann

bb.ama:                                           ; preds = %bb.alz
  %i.bah = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 553, ptr noundef nonnull @.str.22, ptr noundef nonnull align 8 dereferenceable(32) %351)
          to label %bb.amb unwind label %bb.ano   ; 0 uses

bb.amb:                                           ; preds = %bb.ama
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.axl) #31
  %i.bai = load i8, ptr %352, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.axm, i8 noundef zeroext %i.bai)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6893 unwind label %bb.amc, !inline_history !95

bb.amc:                                           ; preds = %bb.amb
  %i.baj = landingpad { ptr, i32 }
          catch ptr null
  %i.bak = extractvalue { ptr, i32 } %i.baj, 0
  call void @__clang_call_terminate(ptr %i.bak) #32, !inline_history !95
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6893: ; preds = %bb.amb
  %i.bal = load i8, ptr %354, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.axj, i8 noundef zeroext %i.bal)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6894 unwind label %bb.amd, !inline_history !95

bb.amd:                                           ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6893
  %i.bam = landingpad { ptr, i32 }
          catch ptr null
  %i.ban = extractvalue { ptr, i32 } %i.bam, 0
  call void @__clang_call_terminate(ptr %i.ban) #32, !inline_history !95
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit6894: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit6893
  call void @llvm.lifetime.end.p0(ptr nonnull %354) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %353) #31
end_hunk_3
begin_hunk_4_@_ZL19DOCTEST_ANON_FUNC_7v:bb.a
bb.ayi:                                           ; preds = %bb.awu
  %i.bok = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bky) #31
  br label %bb.ayj

bb.ayj:                                           ; preds = %bb.ayi, %bb.ayh
  %.pn6003 = phi { ptr, i32 } [ %i.bok, %bb.ayi ], [ %i.boj, %bb.ayh ]
  call void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %445) #31
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %447) #31
  br label %bb.ayk

bb.ayk:                                           ; preds = %bb.ayj, %bb.ayg
  %.pn6003.pn.pn = phi { ptr, i32 } [ %.pn6003, %bb.ayj ], [ %i.boi, %bb.ayg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %447) #31
  br label %bb.ayl

bb.ayl:                                           ; preds = %bb.ayk, %bb.ayf
  %.pn6003.pn.pn.pn = phi { ptr, i32 } [ %.pn6003.pn.pn, %bb.ayk ], [ %i.boh, %bb.ayf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %446) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %445) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %444) #31
  br label %bb.aym

bb.aym:                                           ; preds = %bb.ayl, %bb.aye, %bb.axx
  %.pn6003.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn6003.pn.pn.pn, %bb.ayl ], [ %.pn5998.pn.pn.pn, %bb.aye ], [ %.pn5996, %bb.axx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb) #31
  br label %bb.ayn

bb.ayn:                                           ; preds = %bb.aym, %bb.axu, %bb.axp, %bb.axk
  %.pn6003.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn6003.pn.pn.pn.pn, %bb.aym ], [ %.pn5993.pn, %bb.axu ], [ %.pn5989.pn.pn, %bb.axp ], [ %.pn5987, %bb.axk ] ; 2 uses
  %i.bol = load ptr, ptr %427, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i7011 = icmp eq ptr %i.bol, null
  br i1 %.not.i.i.i7011, label %_ZNSt6vectorIhSaIhEED2Ev.exit7013, label %bb.ayo

bb.ayo:                                           ; preds = %bb.ayn
  call void @_ZdlPv(ptr noundef nonnull %i.bol) #33
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit7013

_ZNSt6vectorIhSaIhEED2Ev.exit7013:                ; preds = %bb.ayo, %bb.ayn, %bb.axh
  %.pn6003.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bns, %bb.axh ], [ %.pn6003.pn.pn.pn.pn.pn, %bb.ayn ], [ %.pn6003.pn.pn.pn.pn.pn, %bb.ayo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %427) #31
  %i.bom = load ptr, ptr %426, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i7014 = icmp eq ptr %i.bom, null
  br i1 %.not.i.i.i7014, label %.body6989, label %bb.ayp

bb.ayp:                                           ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit7013
  call void @_ZdlPv(ptr noundef nonnull %i.bom) #33
  br label %.body6989

.body6989:                                        ; preds = %bb.ayp, %_ZNSt6vectorIhSaIhEED2Ev.exit7013, %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i6988
  %.pn6003.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bll, %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i6988 ], [ %.pn6003.pn.pn.pn.pn.pn.pn, %bb.ayp ], [ %.pn6003.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit7013 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %426) #31
  br label %bb.ayq

bb.ayq:                                           ; preds = %.body6989, %bb.axg
  %.pn6003.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn6003.pn.pn.pn.pn.pn.pn.pn, %.body6989 ], [ %.pn5984.pn, %bb.axg ]
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %422) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %422) #31
  call void @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_13ED2Ev"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %421) #31
  br label %bb.ayr

bb.ayr:                                           ; preds = %bb.ayq, %bb.axd
  %.pn6003.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn6003.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ayq ], [ %i.bnp, %bb.axd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %421) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #31
  br label %bb.ayy

bb.ays:                                           ; preds = %bb.avn, %bb.avl
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %419) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %419) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %448) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %449) #31
  invoke void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %449, ptr noundef nonnull @.str.51)
          to label %bb.ayt unwind label %bb.ayz

bb.ayt:                                           ; preds = %bb.ays
  invoke void @_ZN7doctest6detail7SubcaseC1ERKNS_6StringEPKci(ptr noundef nonnull align 8 dereferenceable(41) %448, ptr noundef nonnull align 8 dereferenceable(24) %449, ptr noundef nonnull @.str.5, i32 noundef 667)
          to label %bb.ayu unwind label %bb.aza

bb.ayu:                                           ; preds = %bb.ayt
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %449) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %449) #31
  %i.bon = invoke noundef zeroext i1 @_ZNK7doctest6detail7SubcasecvbEv(ptr noundef nonnull align 8 dereferenceable(41) %448)
          to label %bb.ayv unwind label %bb.azc

bb.ayv:                                           ; preds = %bb.ayu
  br i1 %i.bon, label %bb.ayw, label %bb.bcc

bb.ayw:                                           ; preds = %bb.ayv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc) #31
  store i32 65536, ptr %i.bc, align 4, !tbaa !108
  %i.boo = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 77777, ptr %i.boo, align 4, !tbaa !108
  %i.bop = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i32 1048576, ptr %i.bop, align 4, !tbaa !108
  %i.boq = ptrtoint ptr %i.bd to i64
  %i.bor = getelementptr inbounds nuw i8, ptr %450, i64 16
  %i.bos = getelementptr inbounds nuw i8, ptr %451, i64 8 ; 2 uses
  %i.bot = getelementptr inbounds nuw i8, ptr %452, i64 8 ; 2 uses
  %i.bou = getelementptr inbounds nuw i8, ptr %455, i64 16
  %i.bov = getelementptr inbounds nuw i8, ptr %455, i64 8
  %.sroa.2951.0..sroa_idx = getelementptr inbounds nuw i8, ptr %458, i64 8
  %i.bow = getelementptr inbounds nuw i8, ptr %457, i64 8 ; 2 uses
  %i.box = getelementptr inbounds nuw i8, ptr %456, i64 8
  %.sroa.2947.0..sroa_idx = getelementptr inbounds nuw i8, ptr %461, i64 8
  %i.boy = getelementptr inbounds nuw i8, ptr %460, i64 8 ; 2 uses
  %.sroa.2943.0..sroa_idx = getelementptr inbounds nuw i8, ptr %464, i64 8
  %i.boz = getelementptr inbounds nuw i8, ptr %463, i64 8 ; 2 uses
  %.sroa.2939.0..sroa_idx = getelementptr inbounds nuw i8, ptr %467, i64 8
  %i.bpa = getelementptr inbounds nuw i8, ptr %466, i64 8 ; 2 uses
  %i.bpb = getelementptr inbounds nuw i8, ptr %472, i64 8 ; 2 uses
  %i.bpc = getelementptr inbounds nuw i8, ptr %470, i64 16
  %i.bpd = getelementptr inbounds nuw i8, ptr %469, i64 8 ; 2 uses
  %i.bpe = getelementptr inbounds nuw i8, ptr %470, i64 8
  %i.bpf = getelementptr inbounds nuw i8, ptr %476, i64 8 ; 2 uses
  %i.bpg = getelementptr inbounds nuw i8, ptr %474, i64 16
  %i.bph = getelementptr inbounds nuw i8, ptr %473, i64 8 ; 2 uses
  %i.bpi = getelementptr inbounds nuw i8, ptr %474, i64 8
  %i.bpj = getelementptr inbounds nuw i8, ptr %450, i64 8
  br label %bb.azd

bb.ayx:                                           ; preds = %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_14ED2Ev.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc) #31
  br label %bb.bcc

bb.ayy:                                           ; preds = %bb.ayr, %bb.avs
  %.pn6003.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn6003.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ayr ], [ %i.bld, %bb.avs ]
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %419) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %419) #31
  br label %bb.bgw

bb.ayz:                                           ; preds = %bb.ays
  %i.bpk = landingpad { ptr, i32 }
          cleanup
  br label %bb.azb

bb.aza:                                           ; preds = %bb.ayt
  %i.bpl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %449) #31
  br label %bb.azb

bb.azb:                                           ; preds = %bb.aza, %bb.ayz
  %.pn3720 = phi { ptr, i32 } [ %i.bpl, %bb.aza ], [ %i.bpk, %bb.ayz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %449) #31
  br label %bb.bgw

bb.azc:                                           ; preds = %bb.ayu
  %i.bpm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bci

bb.azd:                                           ; preds = %bb.ayw, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_14ED2Ev.exit"
  %.03525.idx12538 = phi i64 [ 0, %bb.ayw ], [ %.03525.add, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_14ED2Ev.exit" ] ; 2 uses
  %.03525.ptr = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.03525.idx12538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd) #31
  %i.bpn = load i32, ptr %.03525.ptr, align 4, !tbaa !108
  store i32 %i.bpn, ptr %i.bd, align 4, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %450) #31
  invoke void @_ZN7doctest6detail16ContextScopeBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %450)
          to label %bb.aze unwind label %bb.ban

bb.aze:                                           ; preds = %bb.azd
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_14EE", i64 16), ptr %450, align 8, !tbaa !75, !alias.scope !1010
  store i64 %i.boq, ptr %i.bor, align 8, !tbaa !111, !alias.scope !1010
  call void @llvm.lifetime.start.p0(ptr nonnull %451) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %451, i8 0, i64 16, i1 false)
  %i.bpo = load i32, ptr %i.bd, align 4, !tbaa !108
  %i.bpp = zext i32 %i.bpo to i64
  store i8 6, ptr %451, align 8, !tbaa !101
  store i64 %i.bpp, ptr %i.bos, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %452) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %453) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %454) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %454, i32 noundef 10)
          to label %bb.azf unwind label %bb.bao

bb.azf:                                           ; preds = %bb.aze
  %i.bpq = load i8, ptr %451, align 8, !tbaa !101
  %i.bpr = icmp eq i8 %i.bpq, 6
  %i.bps = load i32, ptr %454, align 4, !tbaa !78
  %.sroa.22.0.insert.ext.i7018 = zext i32 %i.bps to i64
  %.sroa.22.0.insert.shift.i7019 = shl nuw i64 %.sroa.22.0.insert.ext.i7018, 32
  %.sroa.0.0.insert.ext.i7020 = zext i1 %i.bpr to i64
  %.sroa.0.0.insert.insert.i7021 = or disjoint i64 %.sroa.22.0.insert.shift.i7019, %.sroa.0.0.insert.ext.i7020
  store i64 %.sroa.0.0.insert.insert.i7021, ptr %453, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIbEcvNS0_6ResultEEv(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %452, ptr noundef nonnull align 4 dereferenceable(8) %453)
          to label %bb.azg unwind label %bb.bao

bb.azg:                                           ; preds = %bb.azf
  %i.bpt = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 680, ptr noundef nonnull @.str.54, ptr noundef nonnull align 8 dereferenceable(32) %452)
          to label %bb.azh unwind label %bb.bap   ; 0 uses

bb.azh:                                           ; preds = %bb.azg
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bot) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %454) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %453) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %452) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %455) #31
  %i.bpu = load i32, ptr %i.bd, align 4, !tbaa !108 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %455, i8 0, i64 24, i1 false)
  %i.bpv = invoke noalias noundef nonnull dereferenceable(5) ptr @_Znwm(i64 noundef 5) #34
          to label %bb.azi unwind label %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i7023 ; 7 uses

_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i7023:       ; preds = %bb.azh
  %i.bpw = landingpad { ptr, i32 }
          cleanup
  br label %.body7024

bb.azi:                                           ; preds = %bb.azh
  %2177 = trunc i32 %i.bpu to i8
  %2178 = lshr i32 %i.bpu, 8
  %2179 = trunc i32 %2178 to i8
  %2180 = lshr i32 %i.bpu, 16
  %2181 = trunc i32 %2180 to i8
  %2182 = lshr i32 %i.bpu, 24
  %2183 = trunc nuw i32 %2182 to i8
  store ptr %i.bpv, ptr %455, align 8, !tbaa !94
  %i.bpx = getelementptr inbounds nuw i8, ptr %i.bpv, i64 5 ; 2 uses
  store ptr %i.bpx, ptr %i.bou, align 8, !tbaa !96
  store i8 108, ptr %i.bpv, align 1
  %.sroa.511928.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bpv, i64 1
  store i8 %2183, ptr %.sroa.511928.0..sroa_idx, align 1
  %.sroa.611929.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bpv, i64 2
  store i8 %2181, ptr %.sroa.611929.0..sroa_idx, align 1
  %.sroa.711930.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bpv, i64 3
  store i8 %2179, ptr %.sroa.711930.0..sroa_idx, align 1
  %.sroa.811931.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bpv, i64 4
  store i8 %2177, ptr %.sroa.811931.0..sroa_idx, align 1
  store ptr %i.bpx, ptr %i.bov, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %456) #31
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9to_ubjsonERKSD_bb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %456, ptr noundef nonnull align 8 dereferenceable(16) %451, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.azj unwind label %bb.bar

bb.azj:                                           ; preds = %bb.azi
  call void @llvm.lifetime.start.p0(ptr nonnull %457) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %458) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %459) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %459, i32 noundef 10)
          to label %bb.azk unwind label %bb.bas

bb.azk:                                           ; preds = %bb.azj
  %i.bpy = load i32, ptr %459, align 4, !tbaa !78
  store ptr %456, ptr %458, align 8
  store i32 %i.bpy, ptr %.sroa.2951.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKSt6vectorIhSaIhEEEeqIS6_EEDTcmcvveqclL_ZNS0_7declvalIS6_EEOT_vEEclsr7doctest6detailE7declvalISA_EEtlNS0_6ResultEEESB_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %457, ptr noundef nonnull align 8 dereferenceable(12) %458, ptr noundef nonnull align 8 dereferenceable(24) %455)
          to label %bb.azl unwind label %bb.bas

bb.azl:                                           ; preds = %bb.azk
  %i.bpz = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 694, ptr noundef nonnull @.str.21, ptr noundef nonnull align 8 dereferenceable(32) %457)
          to label %bb.azm unwind label %bb.bat   ; 0 uses

bb.azm:                                           ; preds = %bb.azl
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bow) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %459) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %458) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %457) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %460) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %461) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %462) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %462, i32 noundef 10)
          to label %bb.azn unwind label %bb.bav

bb.azn:                                           ; preds = %bb.azm
  %i.bqa = load ptr, ptr %i.box, align 8, !tbaa !97
  %i.bqb = load ptr, ptr %456, align 8, !tbaa !94
  %i.bqc = ptrtoint ptr %i.bqa to i64
  %i.bqd = ptrtoint ptr %i.bqb to i64
  %i.bqe = sub i64 %i.bqc, %i.bqd
  %i.bqf = load i32, ptr %462, align 4, !tbaa !78
  store i64 %i.bqe, ptr %461, align 8
  store i32 %i.bqf, ptr %.sroa.2947.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be) #31
  store i32 5, ptr %i.be, align 4, !tbaa !108
  invoke void @_ZN7doctest6detail14Expression_lhsImEeqIiEEDTcmcvveqclL_ZNS0_7declvalImEEOT_vEEclsr7doctest6detailE7declvalIS5_EEtlNS0_6ResultEEES6_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %460, ptr noundef nonnull align 8 dereferenceable(12) %461, ptr noundef nonnull align 4 dereferenceable(4) %i.be)
          to label %bb.azo unwind label %bb.baw

bb.azo:                                           ; preds = %bb.azn
  %i.bqg = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 695, ptr noundef nonnull @.str.35, ptr noundef nonnull align 8 dereferenceable(32) %460)
          to label %bb.azp unwind label %bb.bax   ; 0 uses

bb.azp:                                           ; preds = %bb.azo
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.boy) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %462) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %461) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %460) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %463) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %464) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %465) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %465, i32 noundef 10)
          to label %bb.azq unwind label %bb.bba

bb.azq:                                           ; preds = %bb.azp
  %i.bqh = load ptr, ptr %456, align 8, !tbaa !94
  %i.bqi = load i32, ptr %465, align 4, !tbaa !78
  store ptr %i.bqh, ptr %464, align 8
  store i32 %i.bqi, ptr %.sroa.2943.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf) #31
  store i8 108, ptr %i.bf, align 1, !tbaa !89
  invoke void @_ZN7doctest6detail14Expression_lhsIRKhEeqIcEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %463, ptr noundef nonnull align 8 dereferenceable(12) %464, ptr noundef nonnull align 1 dereferenceable(1) %i.bf)
          to label %bb.azr unwind label %bb.bbb

bb.azr:                                           ; preds = %bb.azq
  %i.bqj = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 698, ptr noundef nonnull @.str.36, ptr noundef nonnull align 8 dereferenceable(32) %463)
          to label %bb.azs unwind label %bb.bbc   ; 0 uses

bb.azs:                                           ; preds = %bb.azr
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.boz) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %465) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %464) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %463) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg) #31
  %i.bqk = load ptr, ptr %456, align 8, !tbaa !94
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bqk, i64 1
  %i.bqm = load i32, ptr %i.bql, align 1
  %i.bqn = call i32 @llvm.bswap.i32(i32 %i.bqm)
  store i32 %i.bqn, ptr %i.bg, align 4, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %466) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %467) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %468) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %468, i32 noundef 10)
          to label %bb.azt unwind label %bb.bbf

bb.azt:                                           ; preds = %bb.azs
  %i.bqo = load i32, ptr %468, align 4, !tbaa !78
  store ptr %i.bg, ptr %467, align 8
  store i32 %i.bqo, ptr %.sroa.2939.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKjEeqIRjEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS8_EEtlNS0_6ResultEEES9_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %466, ptr noundef nonnull align 8 dereferenceable(12) %467, ptr noundef nonnull align 4 dereferenceable(4) %i.bd)
          to label %bb.azu unwind label %bb.bbf

bb.azu:                                           ; preds = %bb.azt
  %i.bqp = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 703, ptr noundef nonnull @.str.33, ptr noundef nonnull align 8 dereferenceable(32) %466)
          to label %bb.azv unwind label %bb.bbg   ; 0 uses

bb.azv:                                           ; preds = %bb.azu
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bpa) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %468) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %467) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %466) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %469) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %470) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %471) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %471, i32 noundef 10)
          to label %bb.azw unwind label %bb.bbi

bb.azw:                                           ; preds = %bb.azv
  call void @llvm.lifetime.start.p0(ptr nonnull %472) #31
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE11from_ubjsonIRKSC_EESD_OT_bb(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %472, ptr noundef nonnull align 8 dereferenceable(24) %456, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.azx unwind label %bb.bbj

bb.azx:                                           ; preds = %bb.azw
  call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  %i.bqq = load i32, ptr %471, align 4, !tbaa !78, !noalias !1011
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %470, ptr noundef nonnull align 8 dereferenceable(16) %472, i64 16, i1 false), !tbaa.struct !99
  store i8 0, ptr %472, align 8, !tbaa !101, !noalias !1011
  store ptr null, ptr %i.bpb, align 8, !tbaa !89, !noalias !1011
  store i32 %i.bqq, ptr %i.bpc, align 8, !tbaa !103, !alias.scope !1011
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRKSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISM_EEtlNS0_6ResultEEESN_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %469, ptr noundef nonnull align 8 dereferenceable(20) %470, ptr noundef nonnull align 8 dereferenceable(16) %451)
          to label %bb.azy unwind label %bb.bbk

bb.azy:                                           ; preds = %bb.azx
  %i.bqr = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 706, ptr noundef nonnull @.str.22, ptr noundef nonnull align 8 dereferenceable(32) %469)
          to label %bb.azz unwind label %bb.bbl   ; 0 uses

bb.azz:                                           ; preds = %bb.azy
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bpd) #31
  %i.bqs = load i8, ptr %470, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bpe, i8 noundef zeroext %i.bqs)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit7035 unwind label %bb.baa, !inline_history !95

bb.baa:                                           ; preds = %bb.azz
  %i.bqt = landingpad { ptr, i32 }
          catch ptr null
  %i.bqu = extractvalue { ptr, i32 } %i.bqt, 0
  call void @__clang_call_terminate(ptr %i.bqu) #32, !inline_history !95
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit7035: ; preds = %bb.azz
  %i.bqv = load i8, ptr %472, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bpb, i8 noundef zeroext %i.bqv)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit7036 unwind label %bb.bab, !inline_history !95

bb.bab:                                           ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit7035
  %i.bqw = landingpad { ptr, i32 }
          catch ptr null
  %i.bqx = extractvalue { ptr, i32 } %i.bqw, 0
  call void @__clang_call_terminate(ptr %i.bqx) #32, !inline_history !95
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit7036: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit7035
  call void @llvm.lifetime.end.p0(ptr nonnull %472) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %471) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %470) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %469) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %473) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %474) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %475) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %475, i32 noundef 10)
          to label %bb.bac unwind label %bb.bbp

bb.bac:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit7036
  call void @llvm.lifetime.start.p0(ptr nonnull %476) #31
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE11from_ubjsonIRKSC_EESD_OT_bb(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %476, ptr noundef nonnull align 8 dereferenceable(24) %456, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.bad unwind label %bb.bbq

bb.bad:                                           ; preds = %bb.bac
  call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  %i.bqy = load i32, ptr %475, align 4, !tbaa !78, !noalias !1012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %474, ptr noundef nonnull align 8 dereferenceable(16) %476, i64 16, i1 false), !tbaa.struct !99
  store i8 0, ptr %476, align 8, !tbaa !101, !noalias !1012
  store ptr null, ptr %i.bpf, align 8, !tbaa !89, !noalias !1012
  store i32 %i.bqy, ptr %i.bpg, align 8, !tbaa !103, !alias.scope !1012
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRKSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISM_EEtlNS0_6ResultEEESN_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %473, ptr noundef nonnull align 8 dereferenceable(20) %474, ptr noundef nonnull align 8 dereferenceable(16) %451)
          to label %bb.bae unwind label %bb.bbr

bb.bae:                                           ; preds = %bb.bad
  %i.bqz = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 707, ptr noundef nonnull @.str.23, ptr noundef nonnull align 8 dereferenceable(32) %473)
          to label %bb.baf unwind label %bb.bbs   ; 0 uses

bb.baf:                                           ; preds = %bb.bae
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bph) #31
  %i.bra = load i8, ptr %474, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bpi, i8 noundef zeroext %i.bra)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit7037 unwind label %bb.bag, !inline_history !95

bb.bag:                                           ; preds = %bb.baf
  %i.brb = landingpad { ptr, i32 }
end_hunk_4
begin_hunk_5_@_ZL19DOCTEST_ANON_FUNC_7v:bb.a
  %i.bsk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bph) #31
  br label %bb.bbt

bb.bbt:                                           ; preds = %bb.bbs, %bb.bbr
  %.pn5971 = phi { ptr, i32 } [ %i.bsk, %bb.bbs ], [ %i.bsj, %bb.bbr ]
  call void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %474) #31
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %476) #31
  br label %bb.bbu

bb.bbu:                                           ; preds = %bb.bbt, %bb.bbq
  %.pn5971.pn.pn = phi { ptr, i32 } [ %.pn5971, %bb.bbt ], [ %i.bsi, %bb.bbq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %476) #31
  br label %bb.bbv

bb.bbv:                                           ; preds = %bb.bbu, %bb.bbp
  %.pn5971.pn.pn.pn = phi { ptr, i32 } [ %.pn5971.pn.pn, %bb.bbu ], [ %i.bsh, %bb.bbp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %475) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %474) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %473) #31
  br label %bb.bbw

bb.bbw:                                           ; preds = %bb.bbv, %bb.bbo, %bb.bbh
  %.pn5971.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn5971.pn.pn.pn, %bb.bbv ], [ %.pn5966.pn.pn.pn, %bb.bbo ], [ %.pn5964, %bb.bbh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg) #31
  br label %bb.bbx

bb.bbx:                                           ; preds = %bb.bbw, %bb.bbe, %bb.baz, %bb.bau
  %.pn5971.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn5971.pn.pn.pn.pn, %bb.bbw ], [ %.pn5961.pn, %bb.bbe ], [ %.pn5957.pn.pn, %bb.baz ], [ %.pn5955, %bb.bau ] ; 2 uses
  %i.bsl = load ptr, ptr %456, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i7046 = icmp eq ptr %i.bsl, null
  br i1 %.not.i.i.i7046, label %_ZNSt6vectorIhSaIhEED2Ev.exit7048, label %bb.bby

bb.bby:                                           ; preds = %bb.bbx
  call void @_ZdlPv(ptr noundef nonnull %i.bsl) #33
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit7048

_ZNSt6vectorIhSaIhEED2Ev.exit7048:                ; preds = %bb.bby, %bb.bbx, %bb.bar
  %.pn5971.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.brs, %bb.bar ], [ %.pn5971.pn.pn.pn.pn.pn, %bb.bbx ], [ %.pn5971.pn.pn.pn.pn.pn, %bb.bby ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %456) #31
  %i.bsm = load ptr, ptr %455, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i7049 = icmp eq ptr %i.bsm, null
  br i1 %.not.i.i.i7049, label %.body7024, label %bb.bbz

bb.bbz:                                           ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit7048
  call void @_ZdlPv(ptr noundef nonnull %i.bsm) #33
  br label %.body7024

.body7024:                                        ; preds = %bb.bbz, %_ZNSt6vectorIhSaIhEED2Ev.exit7048, %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i7023
  %.pn5971.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bpw, %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i7023 ], [ %.pn5971.pn.pn.pn.pn.pn.pn, %bb.bbz ], [ %.pn5971.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit7048 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %455) #31
  br label %bb.bca

bb.bca:                                           ; preds = %.body7024, %bb.baq
  %.pn5971.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn5971.pn.pn.pn.pn.pn.pn.pn, %.body7024 ], [ %.pn5952.pn, %bb.baq ]
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %451) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %451) #31
  call void @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_14ED2Ev"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %450) #31
  br label %bb.bcb

bb.bcb:                                           ; preds = %bb.bca, %bb.ban
  %.pn5971.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn5971.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bca ], [ %i.brp, %bb.ban ]
  call void @llvm.lifetime.end.p0(ptr nonnull %450) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc) #31
  br label %bb.bci

bb.bcc:                                           ; preds = %bb.ayx, %bb.ayv
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %448) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %448) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %477) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %478) #31
  invoke void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %478, ptr noundef nonnull @.str.52)
          to label %bb.bcd unwind label %bb.bcj

bb.bcd:                                           ; preds = %bb.bcc
  invoke void @_ZN7doctest6detail7SubcaseC1ERKNS_6StringEPKci(ptr noundef nonnull align 8 dereferenceable(41) %477, ptr noundef nonnull align 8 dereferenceable(24) %478, ptr noundef nonnull @.str.5, i32 noundef 711)
          to label %bb.bce unwind label %bb.bck

bb.bce:                                           ; preds = %bb.bcd
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %478) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %478) #31
  %i.bsn = invoke noundef zeroext i1 @_ZNK7doctest6detail7SubcasecvbEv(ptr noundef nonnull align 8 dereferenceable(41) %477)
          to label %bb.bcf unwind label %bb.bcm

bb.bcf:                                           ; preds = %bb.bce
  br i1 %i.bsn, label %bb.bcg, label %bb.bfl

bb.bcg:                                           ; preds = %bb.bcf
  %i.bso = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34
          to label %bb.bch unwind label %bb.bcm   ; 5 uses

bb.bch:                                           ; preds = %bb.bcg
  store i64 2147483648, ptr %i.bso, align 8
  %.sroa.511919.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bso, i64 8
  store i64 9223372036854775807, ptr %.sroa.511919.0..sroa_idx, align 8
  %i.bsp = ptrtoint ptr %i.bh to i64
  %i.bsq = getelementptr inbounds nuw i8, ptr %479, i64 16
  %i.bsr = getelementptr inbounds nuw i8, ptr %480, i64 8 ; 2 uses
  %i.bss = getelementptr inbounds nuw i8, ptr %481, i64 8 ; 2 uses
  %i.bst = getelementptr inbounds nuw i8, ptr %484, i64 16
  %i.bsu = getelementptr inbounds nuw i8, ptr %484, i64 8
  %.sroa.2928.0..sroa_idx = getelementptr inbounds nuw i8, ptr %487, i64 8
  %i.bsv = getelementptr inbounds nuw i8, ptr %486, i64 8 ; 2 uses
  %i.bsw = getelementptr inbounds nuw i8, ptr %485, i64 8
  %.sroa.2924.0..sroa_idx = getelementptr inbounds nuw i8, ptr %490, i64 8
  %i.bsx = getelementptr inbounds nuw i8, ptr %489, i64 8 ; 2 uses
  %.sroa.2920.0..sroa_idx = getelementptr inbounds nuw i8, ptr %493, i64 8
  %i.bsy = getelementptr inbounds nuw i8, ptr %492, i64 8 ; 2 uses
  %.sroa.2916.0..sroa_idx = getelementptr inbounds nuw i8, ptr %496, i64 8
  %i.bsz = getelementptr inbounds nuw i8, ptr %495, i64 8 ; 2 uses
  %i.bta = getelementptr inbounds nuw i8, ptr %501, i64 8 ; 2 uses
  %i.btb = getelementptr inbounds nuw i8, ptr %499, i64 16
  %i.btc = getelementptr inbounds nuw i8, ptr %498, i64 8 ; 2 uses
  %i.btd = getelementptr inbounds nuw i8, ptr %499, i64 8
  %i.bte = getelementptr inbounds nuw i8, ptr %505, i64 8 ; 2 uses
  %i.btf = getelementptr inbounds nuw i8, ptr %503, i64 16
  %i.btg = getelementptr inbounds nuw i8, ptr %502, i64 8 ; 2 uses
  %i.bth = getelementptr inbounds nuw i8, ptr %503, i64 8
  %i.bti = getelementptr inbounds nuw i8, ptr %479, i64 8
  br label %bb.bcn

_ZNSt6vectorImSaImEED2Ev.exit7055:                ; preds = %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_15ED2Ev.exit"
  call void @_ZdlPv(ptr noundef nonnull %i.bso) #33
  br label %bb.bfl

bb.bci:                                           ; preds = %bb.bcb, %bb.azc
  %.pn5971.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn5971.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bcb ], [ %i.bpm, %bb.azc ]
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %448) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %448) #31
  br label %bb.bgw

bb.bcj:                                           ; preds = %bb.bcc
  %i.btj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bcl

bb.bck:                                           ; preds = %bb.bcd
  %i.btk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %478) #31
  br label %bb.bcl

bb.bcl:                                           ; preds = %bb.bck, %bb.bcj
  %.pn3723 = phi { ptr, i32 } [ %i.btk, %bb.bck ], [ %i.btj, %bb.bcj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %478) #31
  br label %bb.bgw

bb.bcm:                                           ; preds = %bb.bce, %bb.bcg
  %i.btl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bfm

bb.bcn:                                           ; preds = %bb.bch, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_15ED2Ev.exit"
  %.sroa.011914.0.idx12539 = phi i64 [ 0, %bb.bch ], [ %.sroa.011914.0.add, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_15ED2Ev.exit" ] ; 2 uses
  %.sroa.011914.0.ptr = getelementptr inbounds nuw i8, ptr %i.bso, i64 %.sroa.011914.0.idx12539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh) #31
  %i.btm = load i64, ptr %.sroa.011914.0.ptr, align 8, !tbaa !105
  store i64 %i.btm, ptr %i.bh, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %479) #31
  invoke void @_ZN7doctest6detail16ContextScopeBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %479)
          to label %bb.bco unwind label %bb.bdx

bb.bco:                                           ; preds = %bb.bcn
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_15EE", i64 16), ptr %479, align 8, !tbaa !75, !alias.scope !1013
  store i64 %i.bsp, ptr %i.bsq, align 8, !tbaa !107, !alias.scope !1013
  call void @llvm.lifetime.start.p0(ptr nonnull %480) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %480, i8 0, i64 16, i1 false)
  %i.btn = load i64, ptr %i.bh, align 8, !tbaa !105
  store i8 6, ptr %480, align 8, !tbaa !101
  store i64 %i.btn, ptr %i.bsr, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %481) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %482) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %483) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %483, i32 noundef 10)
          to label %bb.bcp unwind label %bb.bdy

bb.bcp:                                           ; preds = %bb.bco
  %i.bto = load i8, ptr %480, align 8, !tbaa !101
  %i.btp = icmp eq i8 %i.bto, 6
  %i.btq = load i32, ptr %483, align 4, !tbaa !78
  %.sroa.22.0.insert.ext.i7057 = zext i32 %i.btq to i64
  %.sroa.22.0.insert.shift.i7058 = shl nuw i64 %.sroa.22.0.insert.ext.i7057, 32
  %.sroa.0.0.insert.ext.i7059 = zext i1 %i.btp to i64
  %.sroa.0.0.insert.insert.i7060 = or disjoint i64 %.sroa.22.0.insert.shift.i7058, %.sroa.0.0.insert.ext.i7059
  store i64 %.sroa.0.0.insert.insert.i7060, ptr %482, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIbEcvNS0_6ResultEEv(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %481, ptr noundef nonnull align 4 dereferenceable(8) %482)
          to label %bb.bcq unwind label %bb.bdy

bb.bcq:                                           ; preds = %bb.bcp
  %i.btr = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 722, ptr noundef nonnull @.str.54, ptr noundef nonnull align 8 dereferenceable(32) %481)
          to label %bb.bcr unwind label %bb.bdz   ; 0 uses

bb.bcr:                                           ; preds = %bb.bcq
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bss) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %483) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %482) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %481) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %484) #31
  %2184 = load <8 x i8>, ptr %i.bh, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %484, i8 0, i64 24, i1 false)
  %i.bts = invoke noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #34
          to label %bb.bcs unwind label %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i7062 ; 4 uses

_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i7062:       ; preds = %bb.bcr
  %i.btt = landingpad { ptr, i32 }
          cleanup
  br label %.body7063

bb.bcs:                                           ; preds = %bb.bcr
  store ptr %i.bts, ptr %484, align 8, !tbaa !94
  %i.btu = getelementptr inbounds nuw i8, ptr %i.bts, i64 9 ; 2 uses
  store ptr %i.btu, ptr %i.bst, align 8, !tbaa !96
  store i8 76, ptr %i.bts, align 1
  %.sroa.511903.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bts, i64 1
  %2185 = shufflevector <8 x i8> %2184, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %2185, ptr %.sroa.511903.0..sroa_idx, align 1
  store ptr %i.btu, ptr %i.bsu, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %485) #31
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9to_ubjsonERKSD_bb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %485, ptr noundef nonnull align 8 dereferenceable(16) %480, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.bct unwind label %bb.beb

bb.bct:                                           ; preds = %bb.bcs
  call void @llvm.lifetime.start.p0(ptr nonnull %486) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %487) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %488) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %488, i32 noundef 10)
          to label %bb.bcu unwind label %bb.bec

bb.bcu:                                           ; preds = %bb.bct
  %i.btv = load i32, ptr %488, align 4, !tbaa !78
  store ptr %485, ptr %487, align 8
  store i32 %i.btv, ptr %.sroa.2928.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKSt6vectorIhSaIhEEEeqIS6_EEDTcmcvveqclL_ZNS0_7declvalIS6_EEOT_vEEclsr7doctest6detailE7declvalISA_EEtlNS0_6ResultEEESB_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %486, ptr noundef nonnull align 8 dereferenceable(12) %487, ptr noundef nonnull align 8 dereferenceable(24) %484)
          to label %bb.bcv unwind label %bb.bec

bb.bcv:                                           ; preds = %bb.bcu
  %i.btw = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 740, ptr noundef nonnull @.str.21, ptr noundef nonnull align 8 dereferenceable(32) %486)
          to label %bb.bcw unwind label %bb.bed   ; 0 uses

bb.bcw:                                           ; preds = %bb.bcv
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bsv) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %488) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %487) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %486) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %489) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %490) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %491) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %491, i32 noundef 10)
          to label %bb.bcx unwind label %bb.bef

bb.bcx:                                           ; preds = %bb.bcw
  %i.btx = load ptr, ptr %i.bsw, align 8, !tbaa !97
  %i.bty = load ptr, ptr %485, align 8, !tbaa !94
  %i.btz = ptrtoint ptr %i.btx to i64
  %i.bua = ptrtoint ptr %i.bty to i64
  %i.bub = sub i64 %i.btz, %i.bua
  %i.buc = load i32, ptr %491, align 4, !tbaa !78
  store i64 %i.bub, ptr %490, align 8
  store i32 %i.buc, ptr %.sroa.2924.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi) #31
  store i32 9, ptr %i.bi, align 4, !tbaa !108
  invoke void @_ZN7doctest6detail14Expression_lhsImEeqIiEEDTcmcvveqclL_ZNS0_7declvalImEEOT_vEEclsr7doctest6detailE7declvalIS5_EEtlNS0_6ResultEEES6_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %489, ptr noundef nonnull align 8 dereferenceable(12) %490, ptr noundef nonnull align 4 dereferenceable(4) %i.bi)
          to label %bb.bcy unwind label %bb.beg

bb.bcy:                                           ; preds = %bb.bcx
  %i.bud = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 741, ptr noundef nonnull @.str.31, ptr noundef nonnull align 8 dereferenceable(32) %489)
          to label %bb.bcz unwind label %bb.beh   ; 0 uses

bb.bcz:                                           ; preds = %bb.bcy
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bsx) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %491) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %490) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %489) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %492) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %493) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %494) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %494, i32 noundef 10)
          to label %bb.bda unwind label %bb.bek

bb.bda:                                           ; preds = %bb.bcz
  %i.bue = load ptr, ptr %485, align 8, !tbaa !94
  %i.buf = load i32, ptr %494, align 4, !tbaa !78
  store ptr %i.bue, ptr %493, align 8
  store i32 %i.buf, ptr %.sroa.2920.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj) #31
  store i8 76, ptr %i.bj, align 1, !tbaa !89
  invoke void @_ZN7doctest6detail14Expression_lhsIRKhEeqIcEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %492, ptr noundef nonnull align 8 dereferenceable(12) %493, ptr noundef nonnull align 1 dereferenceable(1) %i.bj)
          to label %bb.bdb unwind label %bb.bel

bb.bdb:                                           ; preds = %bb.bda
  %i.bug = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 744, ptr noundef nonnull @.str.32, ptr noundef nonnull align 8 dereferenceable(32) %492)
          to label %bb.bdc unwind label %bb.bem   ; 0 uses

bb.bdc:                                           ; preds = %bb.bdb
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bsy) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %494) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %493) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %492) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk) #31
  %i.buh = load ptr, ptr %485, align 8, !tbaa !94 ; 8 uses
  %i.bui = getelementptr inbounds nuw i8, ptr %i.buh, i64 1
  %i.buj = load i8, ptr %i.bui, align 1, !tbaa !89
  %i.buk = zext i8 %i.buj to i64
  %i.bul = shl nuw i64 %i.buk, 56
  %i.bum = getelementptr inbounds nuw i8, ptr %i.buh, i64 2
  %i.bun = load i8, ptr %i.bum, align 1, !tbaa !89
  %i.buo = zext i8 %i.bun to i64
  %i.bup = shl nuw nsw i64 %i.buo, 48
  %i.buq = or disjoint i64 %i.bup, %i.bul
  %i.bur = getelementptr inbounds nuw i8, ptr %i.buh, i64 3
  %i.bus = load i8, ptr %i.bur, align 1, !tbaa !89
  %i.but = zext i8 %i.bus to i64
  %i.buu = shl nuw nsw i64 %i.but, 40
  %i.buv = or disjoint i64 %i.buq, %i.buu
  %i.buw = getelementptr inbounds nuw i8, ptr %i.buh, i64 4
  %i.bux = load i8, ptr %i.buw, align 1, !tbaa !89
  %i.buy = zext i8 %i.bux to i64
  %i.buz = shl nuw nsw i64 %i.buy, 32
  %i.bva = or disjoint i64 %i.buv, %i.buz
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.buh, i64 5
  %i.bvc = load i8, ptr %i.bvb, align 1, !tbaa !89
  %i.bvd = zext i8 %i.bvc to i64
  %i.bve = shl nuw nsw i64 %i.bvd, 24
  %i.bvf = or disjoint i64 %i.bva, %i.bve
  %i.bvg = getelementptr inbounds nuw i8, ptr %i.buh, i64 6
  %i.bvh = load i8, ptr %i.bvg, align 1, !tbaa !89
  %i.bvi = zext i8 %i.bvh to i64
  %i.bvj = shl nuw nsw i64 %i.bvi, 16
  %i.bvk = or disjoint i64 %i.bvf, %i.bvj
  %i.bvl = getelementptr inbounds nuw i8, ptr %i.buh, i64 7
  %i.bvm = load i8, ptr %i.bvl, align 1, !tbaa !89
  %i.bvn = zext i8 %i.bvm to i64
  %i.bvo = shl nuw nsw i64 %i.bvn, 8
  %i.bvp = or disjoint i64 %i.bvk, %i.bvo
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.buh, i64 8
  %i.bvr = load i8, ptr %i.bvq, align 1, !tbaa !89
  %i.bvs = zext i8 %i.bvr to i64
  %i.bvt = add nuw i64 %i.bvp, %i.bvs
  store i64 %i.bvt, ptr %i.bk, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %495) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %496) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %497) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %497, i32 noundef 10)
          to label %bb.bdd unwind label %bb.bep

bb.bdd:                                           ; preds = %bb.bdc
  %i.bvu = load i32, ptr %497, align 4, !tbaa !78
  store ptr %i.bk, ptr %496, align 8
  store i32 %i.bvu, ptr %.sroa.2916.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKmEeqIRmEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS8_EEtlNS0_6ResultEEES9_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %495, ptr noundef nonnull align 8 dereferenceable(12) %496, ptr noundef nonnull align 8 dereferenceable(8) %i.bh)
          to label %bb.bde unwind label %bb.bep

bb.bde:                                           ; preds = %bb.bdd
  %i.bvv = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 753, ptr noundef nonnull @.str.33, ptr noundef nonnull align 8 dereferenceable(32) %495)
          to label %bb.bdf unwind label %bb.beq   ; 0 uses

bb.bdf:                                           ; preds = %bb.bde
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bsz) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %497) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %496) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %495) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %498) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %499) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %500) #31
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %500, i32 noundef 10)
          to label %bb.bdg unwind label %bb.bes

bb.bdg:                                           ; preds = %bb.bdf
  call void @llvm.lifetime.start.p0(ptr nonnull %501) #31
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE11from_ubjsonIRKSC_EESD_OT_bb(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %501, ptr noundef nonnull align 8 dereferenceable(24) %485, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.bdh unwind label %bb.bet

bb.bdh:                                           ; preds = %bb.bdg
  call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  %i.bvw = load i32, ptr %500, align 4, !tbaa !78, !noalias !1014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %499, ptr noundef nonnull align 8 dereferenceable(16) %501, i64 16, i1 false), !tbaa.struct !99
  store i8 0, ptr %501, align 8, !tbaa !101, !noalias !1014
  store ptr null, ptr %i.bta, align 8, !tbaa !89, !noalias !1014
  store i32 %i.bvw, ptr %i.btb, align 8, !tbaa !103, !alias.scope !1014
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRKSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISM_EEtlNS0_6ResultEEESN_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %498, ptr noundef nonnull align 8 dereferenceable(20) %499, ptr noundef nonnull align 8 dereferenceable(16) %480)
          to label %bb.bdi unwind label %bb.beu

bb.bdi:                                           ; preds = %bb.bdh
  %i.bvx = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 756, ptr noundef nonnull @.str.22, ptr noundef nonnull align 8 dereferenceable(32) %498)
          to label %bb.bdj unwind label %bb.bev   ; 0 uses

bb.bdj:                                           ; preds = %bb.bdi
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.btc) #31
  %i.bvy = load i8, ptr %499, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.btd, i8 noundef zeroext %i.bvy)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit7074 unwind label %bb.bdk, !inline_history !95

bb.bdk:                                           ; preds = %bb.bdj
  %i.bvz = landingpad { ptr, i32 }
          catch ptr null
  %i.bwa = extractvalue { ptr, i32 } %i.bvz, 0
  call void @__clang_call_terminate(ptr %i.bwa) #32, !inline_history !95
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit7074: ; preds = %bb.bdj
  %i.bwb = load i8, ptr %501, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bta, i8 noundef zeroext %i.bwb)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit7075 unwind label %bb.bdl, !inline_history !95

bb.bdl:                                           ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit7074
  %i.bwc = landingpad { ptr, i32 }
          catch ptr null
  %i.bwd = extractvalue { ptr, i32 } %i.bwc, 0
  call void @__clang_call_terminate(ptr %i.bwd) #32, !inline_history !95
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit7075: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit7074
  call void @llvm.lifetime.end.p0(ptr nonnull %501) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %500) #31
end_hunk_5
begin_hunk_6_@_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9to_ubjsonERKSD_NS0_6detail14output_adapterIhNS5_IhS6_IhESB_EEEEbb:bb.a
bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ae, align 8, !tbaa !190
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !191
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !75
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #31, !inline_history !6
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !75
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #31, !inline_history !6
  br label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !89
  %.not.i.i.i5 = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i5, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !108
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i = phi i32 [ %i.ah, %bb.o ], [ %i.ar, %bb.p ]
  %i.as = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.as, label %bb.q, label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !200

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #31
  br label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhED2Ev.exit, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

bb.r:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail14output_adapterIhNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEEEEcvSt10shared_ptrINS1_23output_adapter_protocolIhEEEEv.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #31
  call void @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %i.at
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail14output_adapterIhNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !199  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !190
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !191
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !6
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !75
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !6
  br label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !89
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !108
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !200

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_ubjsonERKSF_bbbbNS1_16bjdata_version_tE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 noundef %6) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 7 uses
  %8 = alloca %"struct.std::array.173", align 8   ; 5 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %9 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 6 uses
  %10 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::allocator.71", align 1 ; 4 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::allocator.71", align 1 ; 4 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %16 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 5 uses
  %17 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 12 uses
  %18 = alloca %"class.std::vector", align 8      ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %19 = alloca %"class.std::allocator", align 1   ; 4 uses
  %i.d = icmp eq i32 %6, 1
  %i.e = and i1 %5, %i.d                          ; 2 uses
  %i.f = load i8, ptr %1, align 8, !tbaa !101
  switch i8 %i.f, label %bb.ce [
    i8 0, label %bb.b
    i8 4, label %bb.d
    i8 5, label %bb.f
    i8 6, label %bb.g
    i8 7, label %bb.h
    i8 3, label %bb.k
    i8 2, label %bb.n
    i8 8, label %bb.al
    i8 1, label %bb.ax
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %4, label %bb.c, label %bb.ce

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !198  ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i8 noundef zeroext 90)
  br label %bb.ce

bb.d:                                             ; preds = %bb.a
  br i1 %4, label %bb.e, label %bb.ce

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !198  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i8, ptr %i.m, align 8, !tbaa !89, !range !83, !noundef !84
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = select i1 %i.o, i8 84, i8 70
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !75
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i8 noundef zeroext %i.p)
  br label %bb.ce

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !89
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE31write_number_with_ubjson_prefixIlTnNSt9enable_ifIXaasr3std9is_signedIT_EE5valuentsr3std17is_floating_pointISJ_EE5valueEiE4typeELi0EEEvSJ_bb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.t, i1 noundef zeroext %4, i1 noundef zeroext %5)
  br label %bb.ce

bb.g:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !89
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE31write_number_with_ubjson_prefixImTnNSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEiE4typeELi0EEEvSJ_bb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.v, i1 noundef zeroext %4, i1 noundef zeroext %5)
  br label %bb.ce

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !89 ; 2 uses
  br i1 %4, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !198  ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !75
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i8 noundef zeroext 68), !inline_history !1504
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  store double %i.x, ptr %8, align 8
  %i.ac = load i8, ptr %0, align 8, !tbaa !297, !range !83, !noundef !84
  %i.ad = zext i1 %5 to i8
  %.not.i.i = icmp eq i8 %i.ac, %i.ad
  br i1 %.not.i.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE31write_number_with_ubjson_prefixIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvSJ_bb.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j
  %20 = bitcast double %i.x to <8 x i8>
  %21 = shufflevector <8 x i8> %20, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %21, ptr %8, align 8, !tbaa !89
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE31write_number_with_ubjson_prefixIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvSJ_bb.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE31write_number_with_ubjson_prefixIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvSJ_bb.exit: ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !198 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !75
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %8, i64 noundef 8), !inline_history !1505
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.ce

bb.k:                                             ; preds = %bb.a
  br i1 %4, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !198 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !75
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i8 noundef zeroext 83)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !89
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !134
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE31write_number_with_ubjson_prefixImTnNSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEiE4typeELi0EEEvSJ_bb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.aq, i1 noundef zeroext true, i1 noundef zeroext %5)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !198 ; 2 uses
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !89 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !133
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !134
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !75
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef %i.au, i64 noundef %i.aw)
  br label %bb.ce

bb.n:                                             ; preds = %bb.a
  br i1 %4, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !198 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !75
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i8 noundef zeroext 91)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br i1 %3, label %bb.q, label %bb.ah

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !89 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !212 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !212
  %i.bj = icmp eq ptr %i.bg, %i.bi
  br i1 %i.bj, label %bb.ah, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1535)
  store ptr %1, ptr %7, align 8, !tbaa !303, !alias.scope !1535
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false), !alias.scope !1535
  store i64 -9223372036854775808, ptr %i.bl, align 8, !tbaa !304, !alias.scope !1535
  %i.bm = load i8, ptr %1, align 8, !tbaa !101, !noalias !1535
  switch i8 %i.bm, label %bb.v [
    i8 1, label %bb.s
    i8 2, label %bb.t
    i8 0, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !258, !noalias !1535
  store ptr %i.bo, ptr %i.bk, align 8, !tbaa !177, !alias.scope !1535
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5frontEv.exit

bb.t:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.bg, ptr %i.bp, align 8, !tbaa !212, !alias.scope !1535
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5frontEv.exit

bb.u:                                             ; preds = %bb.r
  store i64 1, ptr %i.bl, align 8, !tbaa !304, !alias.scope !1535
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5frontEv.exit

bb.v:                                             ; preds = %bb.r
  store i64 0, ptr %i.bl, align 8, !tbaa !304, !alias.scope !1535
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5frontEv.exit

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5frontEv.exit: ; preds = %bb.s, %bb.t, %bb.u, %bb.v
  %i.bq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.br = call noundef zeroext i8 @_ZNK8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE13ubjson_prefixERKSF_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i1 noundef zeroext %5) #31 ; 2 uses
  store i8 %i.br, ptr %i.a, align 1, !tbaa !89
  %i.bs = load i8, ptr %1, align 8, !tbaa !101, !noalias !1536
  switch i8 %i.bs, label %bb.y [
    i8 1, label %bb.w
    i8 2, label %bb.x
    i8 0, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit
  ]

bb.w:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5frontEv.exit
  %i.bt = load ptr, ptr %i.be, align 8, !tbaa !89, !noalias !1536
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !258, !noalias !1536
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit

bb.x:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5frontEv.exit
  %i.bw = load ptr, ptr %i.be, align 8, !tbaa !89, !noalias !1536
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !212, !noalias !1536
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit

bb.y:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5frontEv.exit
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit: ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5frontEv.exit, %bb.w, %bb.x, %bb.y
  %.sroa.8255.0 = phi i64 [ 0, %bb.y ], [ -9223372036854775808, %bb.w ], [ -9223372036854775808, %bb.x ], [ 1, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5frontEv.exit ]
  %.sroa.7254.0 = phi ptr [ null, %bb.y ], [ null, %bb.w ], [ %i.bx, %bb.x ], [ null, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5frontEv.exit ]
  %.sroa.4.0 = phi ptr [ null, %bb.y ], [ %i.bv, %bb.w ], [ null, %bb.x ], [ null, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5frontEv.exit ]
  store ptr %1, ptr %9, align 8, !tbaa !303, !alias.scope !1537
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.sroa.4.0, ptr %i.by, align 8, !tbaa !177
  %.sroa.7254.8..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %.sroa.7254.0, ptr %.sroa.7254.8..sroa_idx, align 8, !tbaa !212
  %.sroa.8255.8..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %.sroa.8255.0, ptr %.sroa.8255.8..sroa_idx, align 8, !tbaa !105
  %i.bz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEpLEl(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 1) ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  call void @llvm.experimental.noalias.scope.decl(metadata !1539)
  store ptr %1, ptr %10, align 8, !tbaa !303, !alias.scope !1540
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false), !alias.scope !1540
  store i64 -9223372036854775808, ptr %i.cb, align 8, !tbaa !304, !alias.scope !1540
  %i.cc = load i8, ptr %1, align 8, !tbaa !101, !noalias !1540
  switch i8 %i.cc, label %bb.ab [
    i8 1, label %bb.z
    i8 2, label %bb.aa
  ]

bb.z:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit
  %i.cd = load ptr, ptr %i.be, align 8, !tbaa !89, !noalias !1540
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.ce, ptr %i.ca, align 8, !tbaa !177, !alias.scope !1540
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit

bb.aa:                                            ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit
  %i.cf = load ptr, ptr %i.be, align 8, !tbaa !89, !noalias !1540
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !212, !noalias !1540
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !212, !alias.scope !1540
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit

bb.ab:                                            ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit
  store i64 1, ptr %i.cb, align 8, !tbaa !304, !alias.scope !1540
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  %.sroa.451.8.insert.shift = select i1 %5, i64 256, i64 0
  %.sroa.250.8.insert.ext = zext i8 %i.br to i64
  %.sroa.250.8.insert.insert = or disjoint i64 %.sroa.451.8.insert.shift, %.sroa.250.8.insert.ext
  %i.cj = call noundef zeroext i1 @_ZSt6all_ofIN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEZNS2_13binary_writerISG_hE12write_ubjsonERSH_bbbbNS2_16bjdata_version_tEEUlSL_E_EbT_SO_T0_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(32) %9, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(32) %10, ptr nonnull %0, i64 %.sroa.250.8.insert.insert)
  %i.ck = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #34
          to label %bb.ac unwind label %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i ; 5 uses

_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i:           ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  store <8 x i8> <i8 91, i8 123, i8 83, i8 72, i8 84, i8 70, i8 78, i8 90>, ptr %i.ck, align 1
  br i1 %i.cj, label %bb.ad, label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.ad:                                            ; preds = %bb.ac
  br i1 %5, label %bb.ae, label %.critedge184

bb.ae:                                            ; preds = %bb.ad
  %i.cn = invoke ptr @_ZSt4findIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEhET_S7_S7_RKT0_(ptr nonnull %i.ck, ptr nonnull %i.cm, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.af unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit202

bb.af:                                            ; preds = %bb.ae
  %.not276 = icmp eq ptr %i.cn, %i.cm
  br i1 %.not276, label %.critedge184, label %_ZNSt6vectorIhSaIhEED2Ev.exit

.critedge184:                                     ; preds = %bb.ad, %bb.af
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !198 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE31write_number_with_ubjson_prefixIlTnNSt9enable_ifIXaasr3std9is_signedIT_EE5valuentsr3std17is_floating_pointISJ_EE5valueEiE4typeELi0EEEvSJ_bb:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  store i16 %i.y, ptr %8, align 2
  %i.z = load i8, ptr %0, align 8, !tbaa !297, !range !83, !noundef !84
  %i.aa = zext i1 %3 to i8
  %.not.i = icmp eq i8 %i.z, %i.aa
  br i1 %.not.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIsEEvT_b.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m
  %i.ab = lshr i64 %1, 8
  %i.ac = trunc i64 %i.ab to i8
  %i.ad = trunc i64 %1 to i8
  %.012.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 1
  store i8 %i.ac, ptr %8, align 2, !tbaa !89
  store i8 %i.ad, ptr %.012.i.i.i, align 1, !tbaa !89
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIsEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIsEEvT_b.exit: ; preds = %bb.m, %.lr.ph.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !198 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !75
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %8, i64 noundef 2), !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.aa

.thread91:                                        ; preds = %bb.k
  br i1 %3, label %bb.n, label %.thread111

bb.n:                                             ; preds = %.thread91
  %.not41 = icmp samesign ugt i64 %1, 65535
  br i1 %.not41, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %2, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !198 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !75
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i8 noundef zeroext 117)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.an = trunc nuw i64 %1 to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  store i16 %i.an, ptr %7, align 2
  %i.ao = load i8, ptr %0, align 8, !tbaa !297, !range !83, !noundef !84
  %.not.i50.not = icmp eq i8 %i.ao, 0
  br i1 %.not.i50.not, label %.lr.ph.i.i.i51, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit

.lr.ph.i.i.i51:                                   ; preds = %bb.q
  %i.ap = lshr i64 %1, 8
  %i.aq = trunc nuw i64 %i.ap to i8
  %i.ar = trunc i64 %1 to i8
  %.012.i.i.i52 = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %i.aq, ptr %7, align 2, !tbaa !89
  store i8 %i.ar, ptr %.012.i.i.i52, align 1, !tbaa !89
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit: ; preds = %bb.q, %.lr.ph.i.i.i51
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !198 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !75
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull %7, i64 noundef 2), !inline_history !12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.aa

bb.r:                                             ; preds = %bb.j
  %.not42 = icmp samesign ult i64 %1, -2147483648
  br i1 %.not42, label %.thread106.thread, label %.thread103

bb.s:                                             ; preds = %bb.n
  %.not43 = icmp samesign ugt i64 %1, 2147483647
  br i1 %.not43, label %.thread106, label %.thread103

.thread111:                                       ; preds = %.thread91
  %.not43112 = icmp samesign ugt i64 %1, 2147483647
  br i1 %.not43112, label %.thread106.thread, label %.thread103

.thread103:                                       ; preds = %.thread111, %bb.r, %bb.s
  br i1 %2, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread103
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !198 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !75
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i8 noundef zeroext 108)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread103
  %i.bb = trunc nsw i64 %1 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i32 %i.bb, ptr %6, align 4
  %i.bc = load i8, ptr %0, align 8, !tbaa !297, !range !83, !noundef !84
  %i.bd = zext i1 %3 to i8
  %.not.i53 = icmp eq i8 %i.bc, %i.bd
  br i1 %.not.i53, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit, label %.lr.ph.i.i.i54

.lr.ph.i.i.i54:                                   ; preds = %bb.u
  %i.be = lshr i64 %1, 16
  %i.bf = trunc i64 %i.be to i8
  %i.bg = lshr i64 %1, 8
  %i.bh = trunc i64 %i.bg to i8
  %i.bi = lshr i64 %1, 24
  %i.bj = trunc i64 %i.bi to i8
  %i.bk = trunc i64 %1 to i8
  %.012.i.i.i55 = getelementptr inbounds nuw i8, ptr %6, i64 3
  store i8 %i.bj, ptr %6, align 4, !tbaa !89
  store i8 %i.bk, ptr %.012.i.i.i55, align 1, !tbaa !89
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 1
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 %i.bf, ptr %i.bl, align 1, !tbaa !89
  store i8 %i.bh, ptr %.0.i.i.i, align 2, !tbaa !89
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit: ; preds = %bb.u, %.lr.ph.i.i.i54
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !198 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !75
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull %6, i64 noundef 4), !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.aa

.thread106:                                       ; preds = %bb.s
  %.not45 = icmp samesign ugt i64 %1, 4294967295
  br i1 %.not45, label %.thread106.thread, label %bb.v

bb.v:                                             ; preds = %.thread106
  br i1 %2, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !198 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !75
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, i8 noundef zeroext 109)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bv = trunc nuw i64 %1 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store i32 %i.bv, ptr %5, align 4
  %i.bw = load i8, ptr %0, align 8, !tbaa !297, !range !83, !noundef !84
  %.not.i56.not = icmp eq i8 %i.bw, 0
  br i1 %.not.i56.not, label %.lr.ph.i.i.i57, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIjEEvT_b.exit

.lr.ph.i.i.i57:                                   ; preds = %bb.x
  %i.bx = lshr i64 %1, 16
  %i.by = trunc i64 %i.bx to i8
  %i.bz = lshr i64 %1, 8
  %i.ca = trunc i64 %i.bz to i8
  %i.cb = lshr i64 %1, 24
  %i.cc = trunc nuw i64 %i.cb to i8
  %i.cd = trunc i64 %1 to i8
  %.012.i.i.i58 = getelementptr inbounds nuw i8, ptr %5, i64 3
  store i8 %i.cc, ptr %5, align 4, !tbaa !89
  store i8 %i.cd, ptr %.012.i.i.i58, align 1, !tbaa !89
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 1
  %.0.i.i.i59 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %i.by, ptr %i.ce, align 1, !tbaa !89
  store i8 %i.ca, ptr %.0.i.i.i59, align 2, !tbaa !89
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIjEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIjEEvT_b.exit: ; preds = %bb.x, %.lr.ph.i.i.i57
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !198 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !75
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull %5, i64 noundef 4), !inline_history !305
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.aa

.thread106.thread:                                ; preds = %bb.r, %.thread111, %.thread106
  br i1 %2, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.thread106.thread
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !198 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !75
  %i.cn = load ptr, ptr %i.cm, align 8
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, i8 noundef zeroext 76)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread106.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store i64 %1, ptr %4, align 8
  %i.co = load i8, ptr %0, align 8, !tbaa !297, !range !83, !noundef !84
  %i.cp = zext i1 %3 to i8
  %.not.i60 = icmp eq i8 %i.co, %i.cp
  br i1 %.not.i60, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIlEEvT_b.exit, label %.lr.ph.i.i.i61

.lr.ph.i.i.i61:                                   ; preds = %bb.z
  %11 = bitcast i64 %1 to <8 x i8>
  %12 = shufflevector <8 x i8> %11, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %12, ptr %4, align 8, !tbaa !89
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIlEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIlEEvT_b.exit: ; preds = %bb.z, %.lr.ph.i.i.i61
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !198 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !75
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef nonnull %4, i64 noundef 8), !inline_history !306
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.aa

bb.aa:                                            ; preds = %bb.i, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIjEEvT_b.exit, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIlEEvT_b.exit, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIsEEvT_b.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE31write_number_with_ubjson_prefixImTnNSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEiE4typeELi0EEEvSJ_bb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::array.172", align 4   ; 8 uses
  %5 = alloca %"struct.std::array.171", align 2   ; 6 uses
  %6 = alloca %"struct.std::array.171", align 2   ; 6 uses
  %7 = alloca %"struct.std::array", align 1       ; 4 uses
  %8 = alloca %"struct.std::array", align 1       ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 9 uses
  %.not = icmp ugt i64 %1, 127
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !198  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !75
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef zeroext 105)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = trunc nuw nsw i64 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  store i8 %i.e, ptr %8, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !198  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %8, i64 noundef 1), !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.al

bb.e:                                             ; preds = %bb.a
  %.not31 = icmp ugt i64 %1, 255
  br i1 %.not31, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %2, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !198  ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !75
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i8 noundef zeroext 85)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = trunc nuw i64 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  store i8 %i.o, ptr %7, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !198  ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !75
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %7, i64 noundef 1), !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.al

bb.i:                                             ; preds = %bb.e
  %.not32 = icmp ugt i64 %1, 32767
  br i1 %.not32, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %2, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !198  ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !75
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i8 noundef zeroext 73)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.y = trunc nuw nsw i64 %1 to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i16 %i.y, ptr %6, align 2
  %i.z = load i8, ptr %0, align 8, !tbaa !297, !range !83, !noundef !84
  %i.aa = zext i1 %3 to i8
  %.not.i = icmp eq i8 %i.z, %i.aa
  br i1 %.not.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIsEEvT_b.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l
  %i.ab = lshr i64 %1, 8
  %i.ac = trunc nuw nsw i64 %i.ab to i8
  %i.ad = trunc i64 %1 to i8
  %.012.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %i.ac, ptr %6, align 2, !tbaa !89
  store i8 %i.ad, ptr %.012.i.i.i, align 1, !tbaa !89
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIsEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIsEEvT_b.exit: ; preds = %bb.l, %.lr.ph.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !198 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !75
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %6, i64 noundef 2), !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.al

bb.m:                                             ; preds = %bb.i
  br i1 %3, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %.not33 = icmp ugt i64 %1, 65535
  br i1 %.not33, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %2, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !198 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !75
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i8 noundef zeroext 117)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.an = trunc nuw i64 %1 to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store i16 %i.an, ptr %5, align 2
  %i.ao = load i8, ptr %0, align 8, !tbaa !297, !range !83, !noundef !84
  %.not.i40.not = icmp eq i8 %i.ao, 0
  br i1 %.not.i40.not, label %.lr.ph.i.i.i41, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit

.lr.ph.i.i.i41:                                   ; preds = %bb.q
  %i.ap = lshr i64 %1, 8
  %i.aq = trunc nuw i64 %i.ap to i8
  %i.ar = trunc i64 %1 to i8
  %.012.i.i.i42 = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 %i.aq, ptr %5, align 2, !tbaa !89
  store i8 %i.ar, ptr %.012.i.i.i42, align 1, !tbaa !89
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit: ; preds = %bb.q, %.lr.ph.i.i.i41
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !198 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !75
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull %5, i64 noundef 2), !inline_history !12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.al

bb.r:                                             ; preds = %bb.n
  %.not34 = icmp ugt i64 %1, 2147483647
  br i1 %.not34, label %bb.v, label %bb.s

.thread:                                          ; preds = %bb.m
  %.not3464 = icmp ugt i64 %1, 2147483647
  br i1 %.not3464, label %.thread65, label %bb.s

bb.s:                                             ; preds = %.thread, %bb.r
  br i1 %2, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !198 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !75
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i8 noundef zeroext 108)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bb = trunc nuw nsw i64 %1 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store i32 %i.bb, ptr %4, align 4
  %i.bc = load i8, ptr %0, align 8, !tbaa !297, !range !83, !noundef !84
  %i.bd = zext i1 %3 to i8
  %.not.i43 = icmp eq i8 %i.bc, %i.bd
  br i1 %.not.i43, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit, label %.lr.ph.i.i.i44

.lr.ph.i.i.i44:                                   ; preds = %bb.u
  %i.be = lshr i64 %1, 16
  %i.bf = trunc i64 %i.be to i8
end_hunk_7
begin_hunk_8_@_ZSt4findIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEhET_S7_S7_RKT0_:bb.a
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr i64 %i.c, 2                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.f = load i8, ptr %2, align 1, !tbaa !89      ; 4 uses
  %i.g = and i64 %i.c, -4
  %scevgep.i.i = getelementptr i8, ptr %0, i64 %i.g ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i
  %.052.i.i = phi i64 [ %i.d, %.lr.ph.i.i ], [ %i.t, %bb.f ] ; 2 uses
  %.sroa.032.051.i.i = phi ptr [ %0, %.lr.ph.i.i ], [ %i.s, %bb.f ] ; 9 uses
  %i.h = load i8, ptr %.sroa.032.051.i.i, align 1, !tbaa !89
  %i.i = icmp eq i8 %i.h, %i.f
  br i1 %i.i, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !89
  %i.l = icmp eq i8 %i.k, %i.f
  br i1 %i.l, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !89
  %i.o = icmp eq i8 %i.n, %i.f
  br i1 %i.o, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit.loopexit.split.loop.exit21, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 3
  %i.q = load i8, ptr %i.p, align 1, !tbaa !89
  %i.r = icmp eq i8 %i.q, %i.f
  br i1 %i.r, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit.loopexit.split.loop.exit23, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 4
  %i.t = add nsw i64 %.052.i.i, -1
  %i.u = icmp sgt i64 %.052.i.i, 1
  br i1 %i.u, label %bb.b, label %._crit_edge.loopexit.i.i, !llvm.loop !1563

._crit_edge.loopexit.i.i:                         ; preds = %bb.f
  %.pre59.i.i = ptrtoint ptr %scevgep.i.i to i64
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %.pre-phi.i.i = phi i64 [ %.pre59.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ]
  %.sroa.032.0.lcssa.i.i = phi ptr [ %scevgep.i.i, %._crit_edge.loopexit.i.i ], [ %0, %bb.a ] ; 5 uses
  %i.v = sub i64 %i.a, %.pre-phi.i.i
  switch i64 %i.v, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i
  ]

._crit_edge._crit_edge57.i.i:                     ; preds = %._crit_edge.i.i
  %.pre58.i.i = load i8, ptr %2, align 1, !tbaa !89
  br label %bb.k

._crit_edge._crit_edge.i.i:                       ; preds = %._crit_edge.i.i
  %.pre.i.i = load i8, ptr %2, align 1, !tbaa !89
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.w = load i8, ptr %.sroa.032.0.lcssa.i.i, align 1, !tbaa !89
  %i.x = load i8, ptr %2, align 1, !tbaa !89      ; 2 uses
  %i.y = icmp eq i8 %i.w, %i.x
  br i1 %i.y, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i, i64 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge._crit_edge.i.i
  %i.aa = phi i8 [ %i.x, %bb.h ], [ %.pre.i.i, %._crit_edge._crit_edge.i.i ] ; 2 uses
  %.sroa.032.1.i.i = phi ptr [ %i.z, %bb.h ], [ %.sroa.032.0.lcssa.i.i, %._crit_edge._crit_edge.i.i ] ; 3 uses
  %i.ab = load i8, ptr %.sroa.032.1.i.i, align 1, !tbaa !89
  %i.ac = icmp eq i8 %i.ab, %i.aa
  br i1 %i.ac, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i, i64 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge._crit_edge57.i.i
  %i.ae = phi i8 [ %i.aa, %bb.j ], [ %.pre58.i.i, %._crit_edge._crit_edge57.i.i ]
  %.sroa.032.2.i.i = phi ptr [ %i.ad, %bb.j ], [ %.sroa.032.0.lcssa.i.i, %._crit_edge._crit_edge57.i.i ] ; 2 uses
  %i.af = load i8, ptr %.sroa.032.2.i.i, align 1, !tbaa !89
  %i.ag = icmp eq i8 %i.af, %i.ae
  %spec.select.i.i = select i1 %i.ag, ptr %.sroa.032.2.i.i, ptr %1
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 1
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit.loopexit.split.loop.exit21: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 2
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit.loopexit.split.loop.exit23: ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 3
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit: ; preds = %bb.b, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit.loopexit.split.loop.exit21, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit.loopexit.split.loop.exit23, %._crit_edge.i.i, %bb.g, %bb.i, %bb.k
  %.sroa.08.0.in.sroa.speculated.i.i = phi ptr [ %.sroa.032.1.i.i, %bb.i ], [ %spec.select.i.i, %bb.k ], [ %1, %._crit_edge.i.i ], [ %.sroa.032.0.lcssa.i.i, %bb.g ], [ %i.aj, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit.loopexit.split.loop.exit23 ], [ %i.ah, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit.loopexit.split.loop.exit ], [ %i.ai, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit.loopexit.split.loop.exit21 ], [ %.sroa.032.051.i.i, %bb.b ]
  ret ptr %.sroa.08.0.in.sroa.speculated.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS5_blmdSaNS7_14adl_serializerES9_IhSaIhEEvEESt4lessIS5_ESaISt4pairIKS5_SD_EEE4findERSH_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !174  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE4findERS7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !134  ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %.1.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 4 uses
  %.0811.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %.19.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !134  ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !133
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i) #31 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i, 0            ; 2 uses
  %.19.i.i = select i1 %i.n, ptr %.0811.i.i, ptr %.012.i.i ; 5 uses
  %.1.in.v.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 %.1.in.v.i.i
  %.1.i.i = load ptr, ptr %.1.in.i.i, align 8, !tbaa !177 ; 2 uses
  %.not.i.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i, label %bb.b, !llvm.loop !7

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.o = icmp eq ptr %.19.i.i, %i.c
  br i1 %i.o, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE4findERS7_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !134  ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !133
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i.i) #31 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i.i, 0
  %spec.select.i = select i1 %i.w, ptr %i.c, ptr %.19.i.i
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE4findERS7_.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE4findERS7_.exit: ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.a ], [ %i.c, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i ], [ %spec.select.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE20write_bjdata_ndarrayERKS4_ISB_SF_St4lessISB_ESaISt4pairIKSB_SF_EEEbbNS1_16bjdata_version_tE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i.i:
  %5 = alloca %"struct.std::array.173", align 8   ; 5 uses
  %6 = alloca %"struct.std::array.172", align 4   ; 8 uses
  %7 = alloca %"struct.std::array.173", align 8   ; 5 uses
  %8 = alloca %"struct.std::array.173", align 8   ; 5 uses
  %9 = alloca %"struct.std::array.172", align 4   ; 8 uses
  %10 = alloca %"struct.std::array.172", align 4  ; 8 uses
  %11 = alloca %"struct.std::array.171", align 2  ; 6 uses
  %12 = alloca %"struct.std::array.171", align 2  ; 6 uses
  %13 = alloca %"struct.std::array", align 1      ; 4 uses
  %14 = alloca %"struct.std::array", align 1      ; 4 uses
  %15 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, unsigned char>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, unsigned char>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 15 uses
  %16 = alloca %"class.std::map.176", align 8     ; 24 uses
  %17 = alloca [12 x %"struct.std::pair.182"], align 8 ; 112 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 28 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 11 uses
  %21 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 8 uses
  %22 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 11 uses
  %23 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 18 uses
  %24 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 11 uses
  %25 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 18 uses
  %26 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 11 uses
  %27 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 18 uses
  %28 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 11 uses
  %29 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 18 uses
  %30 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 11 uses
  %31 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 18 uses
  %32 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 11 uses
  %33 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 18 uses
  %34 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 11 uses
  %35 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 18 uses
  %36 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 11 uses
  %37 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 18 uses
  %38 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 11 uses
  %39 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 18 uses
  %40 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 11 uses
  %41 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  %i.a = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.a, ptr %17, align 8, !tbaa !131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.293, i64 5, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 5, ptr %i.b, align 8, !tbaa !134
  %i.c = getelementptr inbounds nuw i8, ptr %17, i64 21
  store i8 0, ptr %i.c, align 1, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %17, i64 32
  store i8 85, ptr %i.d, align 8, !tbaa !312
  %i.e = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %17, i64 56 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !131
  store i32 947154537, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %17, i64 48
  store i64 4, ptr %i.g, align 8, !tbaa !134
  %i.h = getelementptr inbounds nuw i8, ptr %17, i64 60
  store i8 0, ptr %i.h, align 4, !tbaa !89
  %i.i = getelementptr inbounds nuw i8, ptr %17, i64 72
  store i8 105, ptr %i.i, align 8, !tbaa !312
  %i.j = getelementptr inbounds nuw i8, ptr %17, i64 80 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %17, i64 96 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.k, ptr noundef nonnull align 1 dereferenceable(6) @.str.295, i64 6, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %17, i64 88
  store i64 6, ptr %i.l, align 8, !tbaa !134
  %i.m = getelementptr inbounds nuw i8, ptr %17, i64 102
  store i8 0, ptr %i.m, align 2, !tbaa !89
  %i.n = getelementptr inbounds nuw i8, ptr %17, i64 112
  store i8 117, ptr %i.n, align 8, !tbaa !312
  %i.o = getelementptr inbounds nuw i8, ptr %17, i64 120 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %17, i64 136 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.p, ptr noundef nonnull align 1 dereferenceable(5) @.str.296, i64 5, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %17, i64 128
  store i64 5, ptr %i.q, align 8, !tbaa !134
  %i.r = getelementptr inbounds nuw i8, ptr %17, i64 141
  store i8 0, ptr %i.r, align 1, !tbaa !89
  %i.s = getelementptr inbounds nuw i8, ptr %17, i64 152
  store i8 73, ptr %i.s, align 8, !tbaa !312
  %i.t = getelementptr inbounds nuw i8, ptr %17, i64 160 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %17, i64 176 ; 2 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.u, ptr noundef nonnull align 1 dereferenceable(6) @.str.297, i64 6, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %17, i64 168
  store i64 6, ptr %i.v, align 8, !tbaa !134
  %i.w = getelementptr inbounds nuw i8, ptr %17, i64 182
  store i8 0, ptr %i.w, align 2, !tbaa !89
  %i.x = getelementptr inbounds nuw i8, ptr %17, i64 192
  store i8 109, ptr %i.x, align 8, !tbaa !312
  %i.y = getelementptr inbounds nuw i8, ptr %17, i64 200 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %17, i64 216 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.z, ptr noundef nonnull align 1 dereferenceable(5) @.str.298, i64 5, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %17, i64 208
  store i64 5, ptr %i.aa, align 8, !tbaa !134
  %i.ab = getelementptr inbounds nuw i8, ptr %17, i64 221
  store i8 0, ptr %i.ab, align 1, !tbaa !89
  %i.ac = getelementptr inbounds nuw i8, ptr %17, i64 232
  store i8 108, ptr %i.ac, align 8, !tbaa !312
  %i.ad = getelementptr inbounds nuw i8, ptr %17, i64 240 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %17, i64 256 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ae, ptr noundef nonnull align 1 dereferenceable(6) @.str.299, i64 6, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %17, i64 248
  store i64 6, ptr %i.af, align 8, !tbaa !134
  %i.ag = getelementptr inbounds nuw i8, ptr %17, i64 262
  store i8 0, ptr %i.ag, align 2, !tbaa !89
  %i.ah = getelementptr inbounds nuw i8, ptr %17, i64 272
  store i8 77, ptr %i.ah, align 8, !tbaa !312
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 280 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 296 ; 2 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.aj, ptr noundef nonnull align 1 dereferenceable(5) @.str.300, i64 5, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %17, i64 288
  store i64 5, ptr %i.ak, align 8, !tbaa !134
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 301
  store i8 0, ptr %i.al, align 1, !tbaa !89
  %i.am = getelementptr inbounds nuw i8, ptr %17, i64 312
  store i8 76, ptr %i.am, align 8, !tbaa !312
  %i.an = getelementptr inbounds nuw i8, ptr %17, i64 320 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %17, i64 336 ; 2 uses
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ao, ptr noundef nonnull align 1 dereferenceable(6) @.str.301, i64 6, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %17, i64 328
  store i64 6, ptr %i.ap, align 8, !tbaa !134
  %i.aq = getelementptr inbounds nuw i8, ptr %17, i64 342
  store i8 0, ptr %i.aq, align 2, !tbaa !89
  %i.ar = getelementptr inbounds nuw i8, ptr %17, i64 352
  store i8 100, ptr %i.ar, align 8, !tbaa !312
  %i.as = getelementptr inbounds nuw i8, ptr %17, i64 360 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %17, i64 376 ; 2 uses
  store ptr %i.at, ptr %i.as, align 8, !tbaa !131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.at, ptr noundef nonnull align 1 dereferenceable(6) @.str.302, i64 6, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %17, i64 368
  store i64 6, ptr %i.au, align 8, !tbaa !134
  %i.av = getelementptr inbounds nuw i8, ptr %17, i64 382
  store i8 0, ptr %i.av, align 2, !tbaa !89
  %i.aw = getelementptr inbounds nuw i8, ptr %17, i64 392
  store i8 68, ptr %i.aw, align 8, !tbaa !312
  %i.ax = getelementptr inbounds nuw i8, ptr %17, i64 400 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %17, i64 416 ; 2 uses
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !131
  store i32 1918986339, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 408
  store i64 4, ptr %i.az, align 8, !tbaa !134
  %i.ba = getelementptr inbounds nuw i8, ptr %17, i64 420
  store i8 0, ptr %i.ba, align 4, !tbaa !89
  %i.bb = getelementptr inbounds nuw i8, ptr %17, i64 432
  store i8 67, ptr %i.bb, align 8, !tbaa !312
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 440 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %17, i64 456 ; 2 uses
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !131
  store i32 1702132066, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %17, i64 448
  store i64 4, ptr %i.be, align 8, !tbaa !134
  %i.bf = getelementptr inbounds nuw i8, ptr %17, i64 460
  store i8 0, ptr %i.bf, align 4, !tbaa !89
  %i.bg = getelementptr inbounds nuw i8, ptr %17, i64 472
  store i8 66, ptr %i.bg, align 8, !tbaa !312
  %i.bh = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 21 uses
  store i32 0, ptr %i.bh, align 8, !tbaa !313
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr null, ptr %i.bi, align 8, !tbaa !174
  %i.bj = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !258
  %i.bk = getelementptr inbounds nuw i8, ptr %16, i64 32
  store ptr %i.bh, ptr %i.bk, align 8, !tbaa !259
  %i.bl = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i64 0, ptr %i.bl, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  store ptr %16, ptr %15, align 8, !tbaa !1741
  %i.bm = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_hESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr nonnull %i.bh, ptr noundef nonnull align 8 dereferenceable(33) %17, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc.i unwind label %.body  ; 0 uses

.noexc.i:                                         ; preds = %._crit_edge.i.i.i
  %i.bn = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_hESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr nonnull %i.bh, ptr noundef nonnull align 8 dereferenceable(33) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc.i.1 unwind label %.body ; 0 uses

.noexc.i.1:                                       ; preds = %.noexc.i
  %i.bo = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_hESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr nonnull %i.bh, ptr noundef nonnull align 8 dereferenceable(33) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc.i.2 unwind label %.body ; 0 uses

.noexc.i.2:                                       ; preds = %.noexc.i.1
  %i.bp = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_hESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr nonnull %i.bh, ptr noundef nonnull align 8 dereferenceable(33) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc.i.3 unwind label %.body ; 0 uses

.noexc.i.3:                                       ; preds = %.noexc.i.2
  %i.bq = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_hESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr nonnull %i.bh, ptr noundef nonnull align 8 dereferenceable(33) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc.i.4 unwind label %.body ; 0 uses

.noexc.i.4:                                       ; preds = %.noexc.i.3
  %i.br = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_hESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr nonnull %i.bh, ptr noundef nonnull align 8 dereferenceable(33) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc.i.5 unwind label %.body ; 0 uses

.noexc.i.5:                                       ; preds = %.noexc.i.4
  %i.bs = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_hESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr nonnull %i.bh, ptr noundef nonnull align 8 dereferenceable(33) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc.i.6 unwind label %.body ; 0 uses

.noexc.i.6:                                       ; preds = %.noexc.i.5
  %i.bt = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_hESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr nonnull %i.bh, ptr noundef nonnull align 8 dereferenceable(33) %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc.i.7 unwind label %.body ; 0 uses

.noexc.i.7:                                       ; preds = %.noexc.i.6
end_hunk_8
begin_hunk_9_@_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE20write_bjdata_ndarrayERKS4_ISB_SF_St4lessISB_ESaISt4pairIKSB_SF_EEEbbNS1_16bjdata_version_tE:._crit_edge.i.i.i
  %.012.i.i.i317 = getelementptr inbounds nuw i8, ptr %9, i64 3
  %i.un = getelementptr inbounds nuw i8, ptr %9, i64 1
  %.0.i.i.i318 = getelementptr inbounds nuw i8, ptr %9, i64 2
  %i.uo = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit323

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit323: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit323.backedge, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit312
  %i.up = invoke noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %33)
          to label %bb.cq unwind label %bb.cx

bb.cq:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit323
  br i1 %i.up, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31
  br label %bb.er

bb.cs:                                            ; preds = %bb.cq
  %i.uq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.ct unwind label %bb.cx

bb.ct:                                            ; preds = %bb.cs
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  %i.us = load i64, ptr %i.ur, align 8, !tbaa !89 ; 5 uses
  %i.ut = trunc i64 %i.us to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  store i32 %i.ut, ptr %9, align 4
  %i.uu = load i8, ptr %0, align 8, !tbaa !297, !range !83, !noundef !84
  %.not.i315.not = icmp eq i8 %i.uu, 0
  br i1 %.not.i315.not, label %.lr.ph.i.i.i316, label %_ZSt7reverseIPhEvT_S1_.exit.i319

.lr.ph.i.i.i316:                                  ; preds = %bb.ct
  %i.uv = lshr i64 %i.us, 16
  %i.uw = trunc i64 %i.uv to i8
  %i.ux = lshr i64 %i.us, 8
  %i.uy = trunc i64 %i.ux to i8
  %i.uz = lshr i64 %i.us, 24
  %i.va = trunc i64 %i.uz to i8
  %i.vb = trunc i64 %i.us to i8
  store i8 %i.va, ptr %9, align 4, !tbaa !89
  store i8 %i.vb, ptr %.012.i.i.i317, align 1, !tbaa !89
  store i8 %i.uw, ptr %i.un, align 1, !tbaa !89
  store i8 %i.uy, ptr %.0.i.i.i318, align 2, !tbaa !89
  br label %_ZSt7reverseIPhEvT_S1_.exit.i319

_ZSt7reverseIPhEvT_S1_.exit.i319:                 ; preds = %.lr.ph.i.i.i316, %bb.ct
  %i.vc = load ptr, ptr %i.jm, align 8, !tbaa !198 ; 2 uses
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !75
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  %i.vf = load ptr, ptr %i.ve, align 8
  invoke void %i.vf(ptr noundef nonnull align 8 dereferenceable(8) %i.vc, ptr noundef nonnull %9, i64 noundef 4)
          to label %bb.cu unwind label %bb.cx, !inline_history !13

bb.cu:                                            ; preds = %_ZSt7reverseIPhEvT_S1_.exit.i319
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.vg = load ptr, ptr %32, align 8, !tbaa !303
  %i.vh = load i8, ptr %i.vg, align 8, !tbaa !101
  switch i8 %i.vh, label %bb.cw [
    i8 1, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i321
    i8 2, label %bb.cv
  ]

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i321: ; preds = %bb.cu
  %.promoted11.i.i322 = load ptr, ptr %i.tn, align 8, !tbaa !308
  %i.vi = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.promoted11.i.i322) #36
  store ptr %i.vi, ptr %i.tn, align 8, !tbaa !308
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit323.backedge

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit323.backedge: ; preds = %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i321, %bb.cv, %bb.cw
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit323

bb.cv:                                            ; preds = %bb.cu
  %i.vj = load ptr, ptr %i.uo, align 8, !tbaa !309
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  store ptr %i.vk, ptr %i.uo, align 8, !tbaa !309
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit323.backedge

bb.cw:                                            ; preds = %bb.cu
  %i.vl = load i64, ptr %i.to, align 8, !tbaa !304
  %i.vm = add nsw i64 %i.vl, 1
  store i64 %i.vm, ptr %i.to, align 8, !tbaa !304
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit323.backedge

bb.cx:                                            ; preds = %_ZSt7reverseIPhEvT_S1_.exit.i319, %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit323, %bb.cs
  %i.vn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31
  br label %bb.et

bb.cy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit260
  %i.vo = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS5_blmdSaNS7_14adl_serializerES9_IhSaIhEEvEESt4lessIS5_ESaISt4pairIKS5_SD_EEE2atERSH_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.cz unwind label %bb.ek     ; 9 uses

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1797)
  call void @llvm.experimental.noalias.scope.decl(metadata !1798)
  store ptr %i.vo, ptr %34, align 8, !tbaa !303, !alias.scope !1799
  %i.vp = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 4 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %34, i64 24 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vp, i8 0, i64 16, i1 false), !alias.scope !1799
  store i64 -9223372036854775808, ptr %i.vq, align 8, !tbaa !304, !alias.scope !1799
  %i.vr = load i8, ptr %i.vo, align 8, !tbaa !101, !noalias !1799
  switch i8 %i.vr, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit324 [
    i8 1, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit324.thread459
    i8 2, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit324.thread460
    i8 0, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit324.thread
  ]

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit324.thread459: ; preds = %bb.cz
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !89, !noalias !1799
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 24
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !258, !noalias !1799
  store ptr %i.vv, ptr %i.vp, align 8, !tbaa !177, !alias.scope !1799
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #31
  store ptr %i.vo, ptr %35, align 8, !tbaa !303, !alias.scope !1800
  %i.vw = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.vx = getelementptr inbounds nuw i8, ptr %35, i64 24
  %i.vy = getelementptr inbounds nuw i8, ptr %35, i64 16
  store i64 0, ptr %i.vy, align 8
  store i64 -9223372036854775808, ptr %i.vx, align 8, !tbaa !304, !alias.scope !1800
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !89, !noalias !1801
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  store ptr %i.wb, ptr %i.vw, align 8, !tbaa !177, !alias.scope !1801
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit325

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit324.thread460: ; preds = %bb.cz
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !89, !noalias !1799
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !212, !noalias !1799
  %i.wf = getelementptr inbounds nuw i8, ptr %34, i64 16
  store ptr %i.we, ptr %i.wf, align 8, !tbaa !212, !alias.scope !1799
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #31
  store ptr %i.vo, ptr %35, align 8, !tbaa !303, !alias.scope !1802
  %i.wg = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.wh = getelementptr inbounds nuw i8, ptr %35, i64 24
  store i64 0, ptr %i.wg, align 8
  store i64 -9223372036854775808, ptr %i.wh, align 8, !tbaa !304, !alias.scope !1802
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !89, !noalias !1801
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 8
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !212, !noalias !1801
  %i.wm = getelementptr inbounds nuw i8, ptr %35, i64 16
  store ptr %i.wl, ptr %i.wm, align 8, !tbaa !212, !alias.scope !1801
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit325

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit324.thread: ; preds = %bb.cz
  store i64 1, ptr %i.vq, align 8, !tbaa !304, !alias.scope !1799
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #31
  br label %bb.da

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit324: ; preds = %bb.cz
  store i64 0, ptr %i.vq, align 8, !tbaa !304, !alias.scope !1799
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1803)
  call void @llvm.experimental.noalias.scope.decl(metadata !1804)
  br label %bb.da

bb.da:                                            ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit324, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit324.thread
  store ptr %i.vo, ptr %35, align 8, !tbaa !303
  %i.wn = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.wo = getelementptr inbounds nuw i8, ptr %35, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wn, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.wo, align 8, !tbaa !304, !alias.scope !1801
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit325

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit325: ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit324.thread459, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit324.thread460, %bb.da
  %i.wp = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit336

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit336: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit336.backedge, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit325
  %i.wq = invoke noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %35)
          to label %bb.db unwind label %bb.di

bb.db:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit336
  br i1 %i.wq, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #31
  br label %bb.er

bb.dd:                                            ; preds = %bb.db
  %i.wr = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %bb.de unwind label %bb.di

bb.de:                                            ; preds = %bb.dd
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  %i.wt = load i64, ptr %i.ws, align 8, !tbaa !89 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  store i64 %i.wt, ptr %8, align 8
  %i.wu = load i8, ptr %0, align 8, !tbaa !297, !range !83, !noundef !84
  %.not.i328.not = icmp eq i8 %i.wu, 0
  br i1 %.not.i328.not, label %.lr.ph.i.i.i329, label %_ZSt7reverseIPhEvT_S1_.exit.i332

.lr.ph.i.i.i329:                                  ; preds = %bb.de
  %42 = bitcast i64 %i.wt to <8 x i8>
  %43 = shufflevector <8 x i8> %42, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %43, ptr %8, align 8, !tbaa !89
  br label %_ZSt7reverseIPhEvT_S1_.exit.i332

_ZSt7reverseIPhEvT_S1_.exit.i332:                 ; preds = %.lr.ph.i.i.i329, %bb.de
  %i.wv = load ptr, ptr %i.jm, align 8, !tbaa !198 ; 2 uses
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !75
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 8
  %i.wy = load ptr, ptr %i.wx, align 8
  invoke void %i.wy(ptr noundef nonnull align 8 dereferenceable(8) %i.wv, ptr noundef nonnull %8, i64 noundef 8)
          to label %bb.df unwind label %bb.di, !inline_history !1805

bb.df:                                            ; preds = %_ZSt7reverseIPhEvT_S1_.exit.i332
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.wz = load ptr, ptr %34, align 8, !tbaa !303
  %i.xa = load i8, ptr %i.wz, align 8, !tbaa !101
  switch i8 %i.xa, label %bb.dh [
    i8 1, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i334
    i8 2, label %bb.dg
  ]

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i334: ; preds = %bb.df
  %.promoted11.i.i335 = load ptr, ptr %i.vp, align 8, !tbaa !308
  %i.xb = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.promoted11.i.i335) #36
  store ptr %i.xb, ptr %i.vp, align 8, !tbaa !308
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit336.backedge

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit336.backedge: ; preds = %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i334, %bb.dg, %bb.dh
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit336

bb.dg:                                            ; preds = %bb.df
  %i.xc = load ptr, ptr %i.wp, align 8, !tbaa !309
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 16
  store ptr %i.xd, ptr %i.wp, align 8, !tbaa !309
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit336.backedge

bb.dh:                                            ; preds = %bb.df
  %i.xe = load i64, ptr %i.vq, align 8, !tbaa !304
  %i.xf = add nsw i64 %i.xe, 1
  store i64 %i.xf, ptr %i.vq, align 8, !tbaa !304
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit336.backedge

bb.di:                                            ; preds = %_ZSt7reverseIPhEvT_S1_.exit.i332, %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit336, %bb.dd
  %i.xg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #31
  br label %bb.et

bb.dj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit260
  %i.xh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS5_blmdSaNS7_14adl_serializerES9_IhSaIhEEvEESt4lessIS5_ESaISt4pairIKS5_SD_EEE2atERSH_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.dk unwind label %bb.ek     ; 9 uses

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1806)
  call void @llvm.experimental.noalias.scope.decl(metadata !1807)
  store ptr %i.xh, ptr %36, align 8, !tbaa !303, !alias.scope !1808
  %i.xi = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 4 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %36, i64 24 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xi, i8 0, i64 16, i1 false), !alias.scope !1808
  store i64 -9223372036854775808, ptr %i.xj, align 8, !tbaa !304, !alias.scope !1808
  %i.xk = load i8, ptr %i.xh, align 8, !tbaa !101, !noalias !1808
  switch i8 %i.xk, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit337 [
    i8 1, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit337.thread461
    i8 2, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit337.thread462
    i8 0, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit337.thread
  ]

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit337.thread461: ; preds = %bb.dk
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xh, i64 8
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !89, !noalias !1808
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 24
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !258, !noalias !1808
  store ptr %i.xo, ptr %i.xi, align 8, !tbaa !177, !alias.scope !1808
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #31
  store ptr %i.xh, ptr %37, align 8, !tbaa !303, !alias.scope !1809
  %i.xp = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.xq = getelementptr inbounds nuw i8, ptr %37, i64 24
  %i.xr = getelementptr inbounds nuw i8, ptr %37, i64 16
  store i64 0, ptr %i.xr, align 8
  store i64 -9223372036854775808, ptr %i.xq, align 8, !tbaa !304, !alias.scope !1809
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xh, i64 8
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !89, !noalias !1810
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  store ptr %i.xu, ptr %i.xp, align 8, !tbaa !177, !alias.scope !1810
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit338

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit337.thread462: ; preds = %bb.dk
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xh, i64 8
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !89, !noalias !1808
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !212, !noalias !1808
  %i.xy = getelementptr inbounds nuw i8, ptr %36, i64 16
  store ptr %i.xx, ptr %i.xy, align 8, !tbaa !212, !alias.scope !1808
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #31
  store ptr %i.xh, ptr %37, align 8, !tbaa !303, !alias.scope !1811
  %i.xz = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.ya = getelementptr inbounds nuw i8, ptr %37, i64 24
  store i64 0, ptr %i.xz, align 8
  store i64 -9223372036854775808, ptr %i.ya, align 8, !tbaa !304, !alias.scope !1811
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xh, i64 8
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !89, !noalias !1810
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 8
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !212, !noalias !1810
  %i.yf = getelementptr inbounds nuw i8, ptr %37, i64 16
  store ptr %i.ye, ptr %i.yf, align 8, !tbaa !212, !alias.scope !1810
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit338

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit337.thread: ; preds = %bb.dk
  store i64 1, ptr %i.xj, align 8, !tbaa !304, !alias.scope !1808
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #31
  br label %bb.dl

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit337: ; preds = %bb.dk
  store i64 0, ptr %i.xj, align 8, !tbaa !304, !alias.scope !1808
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1812)
  call void @llvm.experimental.noalias.scope.decl(metadata !1813)
  br label %bb.dl

bb.dl:                                            ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit337, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit337.thread
  store ptr %i.xh, ptr %37, align 8, !tbaa !303
  %i.yg = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.yh = getelementptr inbounds nuw i8, ptr %37, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yg, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.yh, align 8, !tbaa !304, !alias.scope !1810
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit338

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit338: ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit337.thread461, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit337.thread462, %bb.dl
  %i.yi = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit351

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit351: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit351.backedge, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit338
  %i.yj = invoke noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(32) %37)
          to label %bb.dm unwind label %bb.dt

bb.dm:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit351
  br i1 %i.yj, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #31
  br label %bb.er

bb.do:                                            ; preds = %bb.dm
  %i.yk = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %bb.dp unwind label %bb.dt

bb.dp:                                            ; preds = %bb.do
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 8
  %i.ym = load i64, ptr %i.yl, align 8, !tbaa !89 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  store i64 %i.ym, ptr %7, align 8
  %i.yn = load i8, ptr %0, align 8, !tbaa !297, !range !83, !noundef !84
  %.not.i341.not = icmp eq i8 %i.yn, 0
  br i1 %.not.i341.not, label %.lr.ph.i.i.i342, label %_ZSt7reverseIPhEvT_S1_.exit.i347

.lr.ph.i.i.i342:                                  ; preds = %bb.dp
  %44 = bitcast i64 %i.ym to <8 x i8>
  %45 = shufflevector <8 x i8> %44, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %45, ptr %7, align 8, !tbaa !89
  br label %_ZSt7reverseIPhEvT_S1_.exit.i347

_ZSt7reverseIPhEvT_S1_.exit.i347:                 ; preds = %.lr.ph.i.i.i342, %bb.dp
  %i.yo = load ptr, ptr %i.jm, align 8, !tbaa !198 ; 2 uses
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !75
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %i.yr = load ptr, ptr %i.yq, align 8
  invoke void %i.yr(ptr noundef nonnull align 8 dereferenceable(8) %i.yo, ptr noundef nonnull %7, i64 noundef 8)
          to label %bb.dq unwind label %bb.dt, !inline_history !306

bb.dq:                                            ; preds = %_ZSt7reverseIPhEvT_S1_.exit.i347
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.ys = load ptr, ptr %36, align 8, !tbaa !303
  %i.yt = load i8, ptr %i.ys, align 8, !tbaa !101
  switch i8 %i.yt, label %bb.ds [
    i8 1, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i349
    i8 2, label %bb.dr
  ]

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i349: ; preds = %bb.dq
  %.promoted11.i.i350 = load ptr, ptr %i.xi, align 8, !tbaa !308
  %i.yu = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.promoted11.i.i350) #36
  store ptr %i.yu, ptr %i.xi, align 8, !tbaa !308
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit351.backedge

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit351.backedge: ; preds = %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i349, %bb.dr, %bb.ds
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit351

bb.dr:                                            ; preds = %bb.dq
  %i.yv = load ptr, ptr %i.yi, align 8, !tbaa !309
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 16
  store ptr %i.yw, ptr %i.yi, align 8, !tbaa !309
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit351.backedge

bb.ds:                                            ; preds = %bb.dq
  %i.yx = load i64, ptr %i.xj, align 8, !tbaa !304
  %i.yy = add nsw i64 %i.yx, 1
  store i64 %i.yy, ptr %i.xj, align 8, !tbaa !304
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit351.backedge

bb.dt:                                            ; preds = %_ZSt7reverseIPhEvT_S1_.exit.i347, %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit351, %bb.do
  %i.yz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #31
  br label %bb.et

bb.du:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit260
  %i.za = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS5_blmdSaNS7_14adl_serializerES9_IhSaIhEEvEESt4lessIS5_ESaISt4pairIKS5_SD_EEE2atERSH_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.dv unwind label %bb.ek     ; 9 uses

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1814)
  call void @llvm.experimental.noalias.scope.decl(metadata !1815)
  store ptr %i.za, ptr %38, align 8, !tbaa !303, !alias.scope !1816
  %i.zb = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 4 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %38, i64 24 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zb, i8 0, i64 16, i1 false), !alias.scope !1816
  store i64 -9223372036854775808, ptr %i.zc, align 8, !tbaa !304, !alias.scope !1816
  %i.zd = load i8, ptr %i.za, align 8, !tbaa !101, !noalias !1816
  switch i8 %i.zd, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit352 [
    i8 1, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit352.thread463
    i8 2, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit352.thread464
    i8 0, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit352.thread
  ]

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit352.thread463: ; preds = %bb.dv
  %i.ze = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !89, !noalias !1816
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 24
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !258, !noalias !1816
  store ptr %i.zh, ptr %i.zb, align 8, !tbaa !177, !alias.scope !1816
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #31
  store ptr %i.za, ptr %39, align 8, !tbaa !303, !alias.scope !1817
  %i.zi = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.zj = getelementptr inbounds nuw i8, ptr %39, i64 24
  %i.zk = getelementptr inbounds nuw i8, ptr %39, i64 16
  store i64 0, ptr %i.zk, align 8
  store i64 -9223372036854775808, ptr %i.zj, align 8, !tbaa !304, !alias.scope !1817
  %i.zl = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !89, !noalias !1818
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 8
  store ptr %i.zn, ptr %i.zi, align 8, !tbaa !177, !alias.scope !1818
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit353

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit352.thread464: ; preds = %bb.dv
  %i.zo = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !89, !noalias !1816
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !212, !noalias !1816
  %i.zr = getelementptr inbounds nuw i8, ptr %38, i64 16
  store ptr %i.zq, ptr %i.zr, align 8, !tbaa !212, !alias.scope !1816
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #31
  store ptr %i.za, ptr %39, align 8, !tbaa !303, !alias.scope !1819
  %i.zs = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.zt = getelementptr inbounds nuw i8, ptr %39, i64 24
  store i64 0, ptr %i.zs, align 8
  store i64 -9223372036854775808, ptr %i.zt, align 8, !tbaa !304, !alias.scope !1819
  %i.zu = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !89, !noalias !1818
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !212, !noalias !1818
  %i.zy = getelementptr inbounds nuw i8, ptr %39, i64 16
  store ptr %i.zx, ptr %i.zy, align 8, !tbaa !212, !alias.scope !1818
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit353

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit352.thread: ; preds = %bb.dv
  store i64 1, ptr %i.zc, align 8, !tbaa !304, !alias.scope !1816
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #31
  br label %bb.dw

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit352: ; preds = %bb.dv
  store i64 0, ptr %i.zc, align 8, !tbaa !304, !alias.scope !1816
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1820)
  call void @llvm.experimental.noalias.scope.decl(metadata !1821)
  br label %bb.dw

bb.dw:                                            ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit352, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit352.thread
  store ptr %i.za, ptr %39, align 8, !tbaa !303
  %i.zz = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.aaa = getelementptr inbounds nuw i8, ptr %39, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zz, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.aaa, align 8, !tbaa !304, !alias.scope !1818
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit353

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit353: ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit352.thread463, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit352.thread464, %bb.dw
  %.012.i.i.i358 = getelementptr inbounds nuw i8, ptr %6, i64 3
  %46 = getelementptr inbounds nuw i8, ptr %6, i64 1
  %.0.i.i.i359 = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.aab = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit364

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit364: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit364.backedge, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit353
  %i.aac = invoke noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull align 8 dereferenceable(32) %39)
          to label %bb.dx unwind label %bb.ee

bb.dx:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit364
  br i1 %i.aac, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #31
  br label %bb.er

bb.dz:                                            ; preds = %bb.dx
  %i.aad = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %38)
          to label %bb.ea unwind label %bb.ee

bb.ea:                                            ; preds = %bb.dz
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 8
  %i.aaf = load double, ptr %i.aae, align 8, !tbaa !89
  %i.aag = fptrunc double %i.aaf to float         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store float %i.aag, ptr %6, align 4
  %i.aah = load i8, ptr %0, align 8, !tbaa !297, !range !83, !noundef !84
  %.not.i356.not = icmp eq i8 %i.aah, 0
  br i1 %.not.i356.not, label %.lr.ph.i.i.i357, label %_ZSt7reverseIPhEvT_S1_.exit.i360

.lr.ph.i.i.i357:                                  ; preds = %bb.ea
  %i.aai = bitcast float %i.aag to i32            ; 4 uses
  %47 = lshr i32 %i.aai, 16
  %48 = trunc i32 %47 to i8
  %49 = lshr i32 %i.aai, 8
  %50 = trunc i32 %49 to i8
  %51 = lshr i32 %i.aai, 24
  %52 = trunc nuw i32 %51 to i8
  %53 = trunc i32 %i.aai to i8
  store i8 %52, ptr %6, align 4, !tbaa !89
  store i8 %53, ptr %.012.i.i.i358, align 1, !tbaa !89
  store i8 %48, ptr %46, align 1, !tbaa !89
  store i8 %50, ptr %.0.i.i.i359, align 2, !tbaa !89
  br label %_ZSt7reverseIPhEvT_S1_.exit.i360

_ZSt7reverseIPhEvT_S1_.exit.i360:                 ; preds = %.lr.ph.i.i.i357, %bb.ea
  %i.aaj = load ptr, ptr %i.jm, align 8, !tbaa !198 ; 2 uses
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !75
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 8
  %i.aam = load ptr, ptr %i.aal, align 8
  invoke void %i.aam(ptr noundef nonnull align 8 dereferenceable(8) %i.aaj, ptr noundef nonnull %6, i64 noundef 4)
          to label %bb.eb unwind label %bb.ee, !inline_history !1723

bb.eb:                                            ; preds = %_ZSt7reverseIPhEvT_S1_.exit.i360
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.aan = load ptr, ptr %38, align 8, !tbaa !303
  %i.aao = load i8, ptr %i.aan, align 8, !tbaa !101
  switch i8 %i.aao, label %bb.ed [
    i8 1, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i362
    i8 2, label %bb.ec
  ]

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i362: ; preds = %bb.eb
  %.promoted11.i.i363 = load ptr, ptr %i.zb, align 8, !tbaa !308
  %i.aap = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.promoted11.i.i363) #36
  store ptr %i.aap, ptr %i.zb, align 8, !tbaa !308
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit364.backedge

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit364.backedge: ; preds = %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i362, %bb.ec, %bb.ed
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit364

bb.ec:                                            ; preds = %bb.eb
  %i.aaq = load ptr, ptr %i.aab, align 8, !tbaa !309
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 16
  store ptr %i.aar, ptr %i.aab, align 8, !tbaa !309
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit364.backedge

bb.ed:                                            ; preds = %bb.eb
  %i.aas = load i64, ptr %i.zc, align 8, !tbaa !304
  %i.aat = add nsw i64 %i.aas, 1
  store i64 %i.aat, ptr %i.zc, align 8, !tbaa !304
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit364.backedge

bb.ee:                                            ; preds = %_ZSt7reverseIPhEvT_S1_.exit.i360, %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit364, %bb.dz
  %i.aau = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #31
  br label %bb.et

bb.ef:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit260
  %i.aav = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS5_blmdSaNS7_14adl_serializerES9_IhSaIhEEvEESt4lessIS5_ESaISt4pairIKS5_SD_EEE2atERSH_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.eg unwind label %bb.ek     ; 9 uses

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  call void @llvm.experimental.noalias.scope.decl(metadata !1823)
  store ptr %i.aav, ptr %40, align 8, !tbaa !303, !alias.scope !1824
  %i.aaw = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 4 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %40, i64 24 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aaw, i8 0, i64 16, i1 false), !alias.scope !1824
  store i64 -9223372036854775808, ptr %i.aax, align 8, !tbaa !304, !alias.scope !1824
  %i.aay = load i8, ptr %i.aav, align 8, !tbaa !101, !noalias !1824
  switch i8 %i.aay, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit365 [
    i8 1, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit365.thread465
    i8 2, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit365.thread466
    i8 0, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit365.thread
  ]

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit365.thread465: ; preds = %bb.eg
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !89, !noalias !1824
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 24
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !258, !noalias !1824
  store ptr %i.abc, ptr %i.aaw, align 8, !tbaa !177, !alias.scope !1824
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #31
  store ptr %i.aav, ptr %41, align 8, !tbaa !303, !alias.scope !1825
  %i.abd = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.abe = getelementptr inbounds nuw i8, ptr %41, i64 24
  %i.abf = getelementptr inbounds nuw i8, ptr %41, i64 16
  store i64 0, ptr %i.abf, align 8
  store i64 -9223372036854775808, ptr %i.abe, align 8, !tbaa !304, !alias.scope !1825
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !89, !noalias !1826
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 8
  store ptr %i.abi, ptr %i.abd, align 8, !tbaa !177, !alias.scope !1826
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit366

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit365.thread466: ; preds = %bb.eg
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !89, !noalias !1824
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !212, !noalias !1824
  %i.abm = getelementptr inbounds nuw i8, ptr %40, i64 16
  store ptr %i.abl, ptr %i.abm, align 8, !tbaa !212, !alias.scope !1824
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #31
  store ptr %i.aav, ptr %41, align 8, !tbaa !303, !alias.scope !1827
  %i.abn = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.abo = getelementptr inbounds nuw i8, ptr %41, i64 24
  store i64 0, ptr %i.abn, align 8
  store i64 -9223372036854775808, ptr %i.abo, align 8, !tbaa !304, !alias.scope !1827
  %i.abp = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !89, !noalias !1826
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 8
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !212, !noalias !1826
  %i.abt = getelementptr inbounds nuw i8, ptr %41, i64 16
  store ptr %i.abs, ptr %i.abt, align 8, !tbaa !212, !alias.scope !1826
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit366

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit365.thread: ; preds = %bb.eg
  store i64 1, ptr %i.aax, align 8, !tbaa !304, !alias.scope !1824
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #31
  br label %bb.eh

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit365: ; preds = %bb.eg
  store i64 0, ptr %i.aax, align 8, !tbaa !304, !alias.scope !1824
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1828)
  call void @llvm.experimental.noalias.scope.decl(metadata !1829)
  br label %bb.eh

bb.eh:                                            ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit365, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit365.thread
  store ptr %i.aav, ptr %41, align 8, !tbaa !303
  %i.abu = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.abv = getelementptr inbounds nuw i8, ptr %41, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abu, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.abv, align 8, !tbaa !304, !alias.scope !1826
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit366

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit366: ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit365.thread465, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit365.thread466, %bb.eh
  %i.abw = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit379

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit379: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit379.backedge, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit366
  %i.abx = invoke noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull align 8 dereferenceable(32) %41)
          to label %bb.ei unwind label %bb.eq

bb.ei:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit379
  br i1 %i.abx, label %bb.ej, label %bb.el

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #31
  br label %bb.er

bb.ek:                                            ; preds = %bb.aj, %bb.ah, %bb.t, %bb.f, %bb.du, %bb.dj, %bb.cy, %bb.cn, %bb.cc, %bb.br, %bb.bg, %bb.av, %bb.ak, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5emptyEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit255, %bb.ad, %bb.ae, %bb.af, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit258, %bb.ai, %bb.ef
  %i.aby = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.el:                                            ; preds = %bb.ei
  %i.abz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %40)
          to label %bb.em unwind label %bb.eq

bb.em:                                            ; preds = %bb.el
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 8
  %i.acb = load double, ptr %i.aca, align 8, !tbaa !89 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store double %i.acb, ptr %5, align 8
  %i.acc = load i8, ptr %0, align 8, !tbaa !297, !range !83, !noundef !84
  %.not.i369.not = icmp eq i8 %i.acc, 0
  br i1 %.not.i369.not, label %.lr.ph.i.i.i370, label %_ZSt7reverseIPhEvT_S1_.exit.i375

.lr.ph.i.i.i370:                                  ; preds = %bb.em
  %54 = bitcast double %i.acb to <8 x i8>
  %55 = shufflevector <8 x i8> %54, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %55, ptr %5, align 8, !tbaa !89
  br label %_ZSt7reverseIPhEvT_S1_.exit.i375

_ZSt7reverseIPhEvT_S1_.exit.i375:                 ; preds = %.lr.ph.i.i.i370, %bb.em
  %i.acd = load ptr, ptr %i.jm, align 8, !tbaa !198 ; 2 uses
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !75
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 8
  %i.acg = load ptr, ptr %i.acf, align 8
  invoke void %i.acg(ptr noundef nonnull align 8 dereferenceable(8) %i.acd, ptr noundef nonnull %5, i64 noundef 8)
          to label %bb.en unwind label %bb.eq, !inline_history !1740

bb.en:                                            ; preds = %_ZSt7reverseIPhEvT_S1_.exit.i375
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.ach = load ptr, ptr %40, align 8, !tbaa !303
  %i.aci = load i8, ptr %i.ach, align 8, !tbaa !101
  switch i8 %i.aci, label %bb.ep [
    i8 1, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i377
    i8 2, label %bb.eo
  ]

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i377: ; preds = %bb.en
  %.promoted11.i.i378 = load ptr, ptr %i.aaw, align 8, !tbaa !308
  %i.acj = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.promoted11.i.i378) #36
  store ptr %i.acj, ptr %i.aaw, align 8, !tbaa !308
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit379.backedge

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit379.backedge: ; preds = %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i377, %bb.eo, %bb.ep
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit379

bb.eo:                                            ; preds = %bb.en
  %i.ack = load ptr, ptr %i.abw, align 8, !tbaa !309
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 16
  store ptr %i.acl, ptr %i.abw, align 8, !tbaa !309
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit379.backedge

bb.ep:                                            ; preds = %bb.en
  %i.acm = load i64, ptr %i.aax, align 8, !tbaa !304
  %i.acn = add nsw i64 %i.acm, 1
  store i64 %i.acn, ptr %i.aax, align 8, !tbaa !304
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit379.backedge

bb.eq:                                            ; preds = %_ZSt7reverseIPhEvT_S1_.exit.i375, %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit379, %bb.el
  %i.aco = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #31
  br label %bb.et

bb.er:                                            ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit260, %bb.az, %bb.bv, %bb.cr, %bb.dn, %bb.ej, %bb.dy, %bb.dc, %bb.cg, %bb.bk, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.1143 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.ao ], [ false, %bb.bk ], [ false, %bb.cg ], [ false, %bb.dc ], [ false, %bb.dy ], [ false, %bb.ej ], [ false, %bb.dn ], [ false, %bb.cr ], [ false, %bb.bv ], [ false, %bb.az ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit260 ], [ true, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit ]
  %i.acp = load ptr, ptr %18, align 8, !tbaa !133 ; 2 uses
  %i.acq = icmp eq ptr %i.acp, %i.dy
  br i1 %i.acq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380: ; preds = %bb.er
  call void @_ZdlPv(ptr noundef %i.acp) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382: ; preds = %bb.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  %i.acr = load ptr, ptr %i.bi, align 8, !tbaa !174
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_hESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef %i.acr)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEhSt4lessIS5_ESaISt4pairIKS5_hEEED2Ev.exit unwind label %bb.es

bb.es:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382
  %i.acs = landingpad { ptr, i32 }
          catch ptr null
  %i.act = extractvalue { ptr, i32 } %i.acs, 0
  call void @__clang_call_terminate(ptr %i.act) #32
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEhSt4lessIS5_ESaISt4pairIKS5_hEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  ret i1 %.1143

bb.et:                                            ; preds = %bb.ek, %bb.eq, %bb.ee, %bb.dt, %bb.di, %bb.cx, %bb.cm, %bb.cb, %bb.bq, %bb.bf, %bb.au, %bb.y, %.body241
  %.pn189.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn157, %.body241 ], [ %i.aby, %bb.ek ], [ %i.aco, %bb.eq ], [ %i.aau, %bb.ee ], [ %i.yz, %bb.dt ], [ %i.xg, %bb.di ], [ %i.vn, %bb.cx ], [ %i.tl, %bb.cm ], [ %i.rj, %bb.cb ], [ %i.pm, %bb.bq ], [ %i.np, %bb.bf ], [ %i.lw, %bb.au ], [ %i.iw, %bb.y ]
  %i.acu = load ptr, ptr %18, align 8, !tbaa !133 ; 2 uses
  %i.acv = icmp eq ptr %i.acu, %i.dy
  br i1 %i.acv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383: ; preds = %bb.et
  call void @_ZdlPv(ptr noundef %i.acu) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385: ; preds = %bb.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEhSt4lessIS5_ESaISt4pairIKS5_hEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %16) #31
  br label %bb.eu

bb.eu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEhED2Ev.exit245.11
  %.pn189.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn189.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385 ], [ %i.cc, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEhED2Ev.exit245.11 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  resume { ptr, i32 } %.pn189.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSt6all_ofIN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEZNS2_13binary_writerISG_hE12write_ubjsonERSH_bbbbNS2_16bjdata_version_tEEUlSL_E0_EbT_SO_T0_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(32) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(32) %1, ptr %2, i64 %3) local_unnamed_addr #16 comdat {
bb.a:
  %4 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 5 uses
  %5 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 11 uses
  %6 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 6 uses
  %7 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.a = load ptr, ptr %0, align 8, !tbaa !303
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !1837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.d = load ptr, ptr %1, align 8, !tbaa !303
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !1837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store ptr %i.a, ptr %5, align 8, !tbaa !303, !noalias !1838
  store ptr %i.d, ptr %6, align 8, !tbaa !303, !noalias !1838
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !1838
  %.sroa.2.8.extract.trunc.i.i.i = trunc i64 %3 to i8
  %i.g = call noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6), !noalias !1839
  br i1 %i.g, label %_ZSt11find_if_notIN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEZNS2_13binary_writerISG_hE12write_ubjsonERSH_bbbbNS2_16bjdata_version_tEEUlSL_E0_ET_SO_SO_T0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = and i64 %3, 256
  %i.j = icmp ne i64 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit.i.i.i, %.lr.ph.i.i.i
  %i.m = load ptr, ptr %5, align 8, !tbaa !303, !noalias !1839
  store ptr %i.m, ptr %4, align 8, !tbaa !303, !noalias !1839
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !307, !noalias !1839
  %i.n = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %4), !noalias !1839
  %i.o = call noundef zeroext i8 @_ZNK8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE13ubjson_prefixERKSF_b(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i1 noundef zeroext %i.j) #31, !noalias !1839
  %.not.i.i.i = icmp eq i8 %i.o, %.sroa.2.8.extract.trunc.i.i.i
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt11find_if_notIN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEZNS2_13binary_writerISG_hE12write_ubjsonERSH_bbbbNS2_16bjdata_version_tEEUlSL_E0_ET_SO_SO_T0_.exit

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %5, align 8, !tbaa !303, !noalias !1839
  %i.q = load i8, ptr %i.p, align 8, !tbaa !101, !noalias !1839
  switch i8 %i.q, label %bb.e [
    i8 1, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i.i.i.i
    i8 2, label %bb.d
  ]

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i.i.i.i: ; preds = %bb.c
  %.promoted11.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !308, !noalias !1839
  %i.r = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.promoted11.i.i.i.i.i) #36, !noalias !1839
  store ptr %i.r, ptr %i.c, align 8, !tbaa !308, !noalias !1839
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !309, !noalias !1839
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.k, align 8, !tbaa !309, !noalias !1839
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.u = load i64, ptr %i.l, align 8, !tbaa !304, !noalias !1839
  %i.v = add nsw i64 %i.u, 1
  store i64 %i.v, ptr %i.l, align 8, !tbaa !304, !noalias !1839
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit.i.i.i

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit.i.i.i: ; preds = %bb.e, %bb.d, %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i.i.i.i
  %i.w = call noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6), !noalias !1839
  br i1 %i.w, label %_ZSt11find_if_notIN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEZNS2_13binary_writerISG_hE12write_ubjsonERSH_bbbbNS2_16bjdata_version_tEEUlSL_E0_ET_SO_SO_T0_.exit, label %bb.b, !llvm.loop !1836

_ZSt11find_if_notIN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEZNS2_13binary_writerISG_hE12write_ubjsonERSH_bbbbNS2_16bjdata_version_tEEUlSL_E0_ET_SO_SO_T0_.exit: ; preds = %bb.b, %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit.i.i.i, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !310
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !1838
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !1837
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !1837
  %i.x = call noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  ret i1 %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIjEEvT_b(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.172", align 4   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store i32 %1, ptr %3, align 4
  %i.a = load i8, ptr %0, align 8, !tbaa !297, !range !83, !noundef !84
  %i.b = zext i1 %2 to i8
  %.not = icmp eq i8 %i.a, %i.b
  br i1 %.not, label %_ZSt7reverseIPhEvT_S1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %4 = lshr i32 %1, 16
  %5 = trunc i32 %4 to i8
  %6 = lshr i32 %1, 8
  %7 = trunc i32 %6 to i8
  %8 = lshr i32 %1, 24
  %9 = trunc nuw i32 %8 to i8
  %10 = trunc i32 %1 to i8
  %.012.i.i = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 %9, ptr %3, align 4, !tbaa !89
  store i8 %10, ptr %.012.i.i, align 1, !tbaa !89
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %.0.i.i = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %5, ptr %11, align 1, !tbaa !89
  store i8 %7, ptr %.0.i.i, align 2, !tbaa !89
  br label %_ZSt7reverseIPhEvT_S1_.exit

_ZSt7reverseIPhEvT_S1_.exit:                      ; preds = %.lr.ph.i.i, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !198  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %3, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIlEEvT_b(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.173", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store i64 %1, ptr %3, align 8
  %i.a = load i8, ptr %0, align 8, !tbaa !297, !range !83, !noundef !84
  %i.b = zext i1 %2 to i8
  %.not = icmp eq i8 %i.a, %i.b
  br i1 %.not, label %_ZSt7reverseIPhEvT_S1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %4 = bitcast i64 %1 to <8 x i8>
  %5 = shufflevector <8 x i8> %4, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %5, ptr %3, align 8, !tbaa !89
  br label %_ZSt7reverseIPhEvT_S1_.exit

_ZSt7reverseIPhEvT_S1_.exit:                      ; preds = %.lr.ph.i.i, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !198  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %3, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.137", align 8   ; 22 uses
  %3 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 8 uses
  %i.a = icmp eq i8 %1, 1
  %i.b = load ptr, ptr %0, align 8                ; 6 uses
  %i.c = icmp eq ptr %i.b, null                   ; 2 uses
  %or.cond31 = select i1 %i.a, i1 %i.c, i1 false
  br i1 %or.cond31, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %1, 2
  %i.e = and i8 %1, -2
  %i.f = icmp eq i8 %i.e, 2
  %i.g = icmp eq i8 %1, 8
  %i.h = or i1 %i.g, %i.f
  %or.cond65 = select i1 %i.h, i1 %i.c, i1 false
  br i1 %or.cond65, label %bb.al, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i8 %1, -1
  %or.cond = icmp ult i8 %i.i, 2
  br i1 %or.cond, label %bb.d, label %bb.ae

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br i1 %i.d, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !154  ; 3 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !155  ; 4 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp ugt i64 %i.o, 9223372036854775792
  br i1 %i.p, label %.invoke, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not315 = icmp eq ptr %i.k, %i.l
  br i1 %.not315, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #34
          to label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i unwind label %.loopexit.split-lp70.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1840 ; 4 uses

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.r, ptr %2, align 8, !tbaa !155
  store ptr %i.r, ptr %i.s, align 8, !tbaa !154
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o ; 2 uses
  store ptr %i.t, ptr %i.q, align 8, !tbaa !315
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i, %bb.f
  %i.u = phi ptr [ %i.t, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i ], [ null, %bb.f ]
  %i.v = phi ptr [ %i.r, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i ], [ null, %bb.f ] ; 3 uses
  %.not316 = icmp eq ptr %i.k, %i.l
  br i1 %.not316, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit, label %.lr.ph.i136

.lr.ph.i136:                                      ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit
  %i.w = lshr exact i64 %i.o, 4
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i, %.lr.ph.i136
  %i.y = phi ptr [ %i.v, %.lr.ph.i136 ], [ %i.au, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ] ; 6 uses
  %i.z = phi ptr [ %i.u, %.lr.ph.i136 ], [ %i.av, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ] ; 5 uses
  %i.aa = phi ptr [ %i.v, %.lr.ph.i136 ], [ %i.aw, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ] ; 3 uses
  %.0.i12.i137 = phi i64 [ %i.w, %.lr.ph.i136 ], [ %i.ay, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ] ; 2 uses
  %.05.i11.i = phi ptr [ %i.l, %.lr.ph.i136 ], [ %i.ax, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ] ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, %i.z
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %.05.i11.i, i64 16, i1 false), !tbaa.struct !99
  store i8 0, ptr %.05.i11.i, align 8, !tbaa !101
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 8
  store ptr null, ptr %i.ab, align 8, !tbaa !89
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  store ptr %i.ac, ptr %i.x, align 8, !tbaa !154
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = ptrtoint ptr %i.y to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775792
  br i1 %i.ag, label %.invoke, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.ah = ashr exact i64 %i.af, 4                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 576460752303423487)
  %i.al = select i1 %i.aj, i64 576460752303423487, i64 %i.ak ; 3 uses
  %.not.i.i161 = icmp ne i64 %i.al, 0
  tail call void @llvm.assume(i1 %.not.i.i161)
  %i.am = shl nuw nsw i64 %i.al, 4
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #34
          to label %.noexc165 unwind label %.loopexit.split-lp70.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1841 ; 6 uses

.noexc165:                                        ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %.05.i11.i, i64 16, i1 false), !tbaa.struct !99
  store i8 0, ptr %.05.i11.i, align 8, !tbaa !101
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 8
  store ptr null, ptr %i.ap, align 8, !tbaa !89
  %.not.i1728.i = icmp eq ptr %i.y, %i.z
  br i1 %.not.i1728.i, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i162

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i162: ; preds = %.noexc165, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i162
  %.0.i30.i = phi ptr [ %i.as, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i162 ], [ %i.an, %.noexc165 ] ; 2 uses
  %.09.i29.i = phi ptr [ %i.ar, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i162 ], [ %i.y, %.noexc165 ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i30.i, ptr noundef nonnull align 8 dereferenceable(16) %.09.i29.i, i64 16, i1 false), !tbaa.struct !99
  store i8 0, ptr %.09.i29.i, align 8, !tbaa !101
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i29.i, i64 8
  store ptr null, ptr %i.aq, align 8, !tbaa !89
  %i.ar = getelementptr inbounds nuw i8, ptr %.09.i29.i, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i30.i, i64 16 ; 2 uses
  %.not.i17.i = icmp eq ptr %i.ar, %i.z
  br i1 %.not.i17.i, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i162, !llvm.loop !14

_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i162, %.noexc165
  %.0.i.lcssa.i = phi ptr [ %i.an, %.noexc165 ], [ %i.as, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i162 ]
  %.0.i1931.i = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i, i64 16 ; 2 uses
  %.not.i16.i = icmp eq ptr %i.y, null
  br i1 %.not.i16.i, label %.noexc138, label %bb.j

bb.j:                                             ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.y) #33, !inline_history !1841
  br label %.noexc138

.noexc138:                                        ; preds = %bb.j, %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i
  store ptr %i.an, ptr %2, align 8, !tbaa !155
  store ptr %.0.i1931.i, ptr %i.x, align 8, !tbaa !154
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.al ; 2 uses
  store ptr %i.at, ptr %i.q, align 8, !tbaa !315
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i: ; preds = %.noexc138, %bb.h
  %i.au = phi ptr [ %i.an, %.noexc138 ], [ %i.y, %bb.h ] ; 2 uses
  %i.av = phi ptr [ %i.at, %.noexc138 ], [ %i.z, %bb.h ]
  %i.aw = phi ptr [ %.0.i1931.i, %.noexc138 ], [ %i.ac, %bb.h ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 16
  %i.ay = add nsw i64 %.0.i12.i137, -1
  %i.az = icmp sgt i64 %.0.i12.i137, 1
  br i1 %i.az, label %bb.g, label %.loopexit68, !llvm.loop !1842

bb.k:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !160 ; 4 uses
  %i.bc = icmp ugt i64 %i.bb, 576460752303423487
  br i1 %i.bc, label %.invoke, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not314 = icmp eq i64 %i.bb, 0
  br i1 %.not314, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit154, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i140

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i140: ; preds = %bb.l
  %i.be = shl nuw nsw i64 %i.bb, 4
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #34
          to label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i151 unwind label %.loopexit.split-lp70.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1840 ; 4 uses

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i151: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i140
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bf, ptr %2, align 8, !tbaa !155
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !154
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bb ; 2 uses
  store ptr %i.bh, ptr %i.bd, align 8, !tbaa !315
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit154

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit154: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i151, %bb.l
  %i.bi = phi ptr [ %i.bh, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i151 ], [ null, %bb.l ]
  %i.bj = phi ptr [ %i.bf, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i151 ], [ null, %bb.l ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !258 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.not87 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not87, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit154
end_hunk_9
begin_hunk_10_@_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE:bb.a

bb.ah:                                            ; preds = %bb.ae
  %i.hc = load ptr, ptr %0, align 8, !tbaa !89    ; 3 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !155 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !154 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.hd, %i.hf
  br i1 %.not.i1.i, label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.i, label %.lr.ph.i155

.lr.ph.i155:                                      ; preds = %bb.ah, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i156
  %.0.i2.i = phi ptr [ %i.hk, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i156 ], [ %i.hd, %bb.ah ] ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 8
  %i.hh = load i8, ptr %.0.i2.i, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, i8 noundef zeroext %i.hh)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i156 unwind label %bb.ai, !inline_history !1850

bb.ai:                                            ; preds = %.lr.ph.i155
  %i.hi = landingpad { ptr, i32 }
          catch ptr null
  %i.hj = extractvalue { ptr, i32 } %i.hi, 0
  call void @__clang_call_terminate(ptr %i.hj) #32, !inline_history !1850
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i156: ; preds = %.lr.ph.i155
  %i.hk = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 16 ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.hk, %i.hf
  br i1 %.not.i.i157, label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.loopexit.i, label %.lr.ph.i155, !llvm.loop !15

_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.loopexit.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i156
  %.pre.i158 = load ptr, ptr %i.hc, align 8, !tbaa !155
  br label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.i

_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.loopexit.i, %bb.ah
  %i.hl = phi ptr [ %.pre.i158, %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.loopexit.i ], [ %i.hd, %bb.ah ] ; 2 uses
  %.not.i.i.i159 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i159, label %.sink.split.sink.split, label %.sink.split.sink.split.sink.split

bb.aj:                                            ; preds = %bb.ae
  %i.hm = load ptr, ptr %0, align 8, !tbaa !89    ; 3 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !133 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.hp = icmp eq ptr %i.hn, %i.ho
  br i1 %i.hp, label %.sink.split, label %.sink.split.sink.split.sink.split

bb.ak:                                            ; preds = %bb.ae
  %i.hq = load ptr, ptr %0, align 8, !tbaa !89    ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i, label %.sink.split, label %.sink.split.sink.split.sink.split

.sink.split.sink.split.sink.split:                ; preds = %bb.ak, %bb.aj, %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.i
  %.sink353 = phi ptr [ %i.hn, %bb.aj ], [ %i.hl, %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.i ], [ %i.hr, %bb.ak ]
  call void @_ZdlPv(ptr noundef %.sink353) #33
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %.sink.split.sink.split.sink.split, %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.i, %bb.af
  %.pre111 = load ptr, ptr %0, align 8, !tbaa !89
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.aj, %bb.ak
  %.sink = phi ptr [ %i.hq, %bb.ak ], [ %i.hm, %bb.aj ], [ %.pre111, %.sink.split.sink.split ]
  call void @_ZdlPv(ptr noundef %.sink) #33
  br label %bb.al

bb.al:                                            ; preds = %.sink.split, %bb.b, %bb.a, %bb.ae
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !155    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %.not.i1 = icmp eq ptr %i.a, %i.c
  br i1 %.not.i1, label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %.0.i2 = phi ptr [ %i.h, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i2, i64 8
  %i.e = load i8, ptr %.0.i2, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef zeroext %i.e)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.b, !inline_history !1853

bb.b:                                             ; preds = %.lr.ph
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #32, !inline_history !1853
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i2, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i, label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.loopexit, label %.lr.ph, !llvm.loop !15

_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.loopexit: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !155
  br label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit

_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.loopexit, %bb.a
  %i.i = phi ptr [ %.pre, %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #33
  br label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EED2Ev.exit

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_EvT_SG_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i2 = icmp eq ptr %0, %1
  br i1 %.not.i2, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEEvT_SI_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit
  %.0.i3 = phi ptr [ %i.e, %_ZSt8_DestroyIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.i3, i64 8
  %i.b = load i8, ptr %.0.i3, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef zeroext %i.b)
          to label %_ZSt8_DestroyIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit unwind label %bb.b, !inline_history !1854

bb.b:                                             ; preds = %.lr.ph
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #32, !inline_history !1854
  unreachable

_ZSt8_DestroyIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit: ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i3, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.e, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEEvT_SI_.exit, label %.lr.ph, !llvm.loop !15

_ZNSt12_Destroy_auxILb0EE9__destroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEEvT_SI_.exit: ; preds = %_ZSt8_DestroyIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.07 = phi ptr [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !316
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !317  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 72
  %i.g = load i8, ptr %i.e, align 8, !tbaa !88
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i8 noundef zeroext %i.g)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.b, !inline_history !1855

bb.b:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #32, !inline_history !1855
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !133  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.07, i64 48
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.k) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #33
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1856

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberImEEvT_b(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.173", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store i64 %1, ptr %3, align 8
  %i.a = load i8, ptr %0, align 8, !tbaa !297, !range !83, !noundef !84
  %i.b = zext i1 %2 to i8
  %.not = icmp eq i8 %i.a, %i.b
  br i1 %.not, label %_ZSt7reverseIPhEvT_S1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %4 = bitcast i64 %1 to <8 x i8>
  %5 = shufflevector <8 x i8> %4, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %5, ptr %3, align 8, !tbaa !89
  br label %_ZSt7reverseIPhEvT_S1_.exit

_ZSt7reverseIPhEvT_S1_.exit:                      ; preds = %.lr.ph.i.i, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !198  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %3, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.71", align 1 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator.71", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !303    ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !101
  switch i8 %i.b, label %bb.h [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !308
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !309
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 32) #31 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.289, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %0, align 8, !tbaa !303
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail16invalid_iterator6createIPKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEETnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_iRKSC_SK_(ptr dead_on_unwind writable sret(%"class.nlohmann::json_abi_v3_12_0::detail::invalid_iterator") align 8 %i.h, i32 noundef 214, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.i)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr %i.h, ptr nonnull @_ZTIN8nlohmann16json_abi_v3_12_06detail16invalid_iteratorE, ptr nonnull @_ZN8nlohmann16json_abi_v3_12_06detail9exceptionD2Ev) #35
          to label %bb.o unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %.sink.split

bb.g:                                             ; preds = %bb.f, %bb.e
  %.05 = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !133    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.l) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br i1 %.05, label %.sink.split, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br i1 %.05, label %.sink.split, label %bb.n

bb.h:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !304
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.m, label %bb.i, !prof !143

bb.i:                                             ; preds = %bb.h
  %i.r = tail call ptr @__cxa_allocate_exception(i64 32) #31 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.289, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.thread

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr %0, align 8, !tbaa !303
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail16invalid_iterator6createIPKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEETnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_iRKSC_SK_(ptr dead_on_unwind writable sret(%"class.nlohmann::json_abi_v3_12_0::detail::invalid_iterator") align 8 %i.r, i32 noundef 214, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.s)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr %i.r, ptr nonnull @_ZTIN8nlohmann16json_abi_v3_12_06detail16invalid_iteratorE, ptr nonnull @_ZN8nlohmann16json_abi_v3_12_06detail9exceptionD2Ev) #35
          to label %bb.o unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.thread: ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %.sink.split

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i1 [ false, %bb.k ], [ true, %bb.j ]  ; 2 uses
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !133    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.v) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %.0, label %.sink.split, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %.0, label %.sink.split, label %bb.n

bb.m:                                             ; preds = %bb.h, %bb.c, %bb.b
  %.012 = phi ptr [ %i.g, %bb.c ], [ %i.e, %bb.b ], [ %i.a, %bb.h ]
  ret ptr %.012

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sink = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.thread ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ]
  %.pn14.pn.ph = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.thread ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ]
  call void @__cxa_free_exception(ptr %.sink) #31
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn14.pn = phi { ptr, i32 } [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn14.pn.ph, %.sink.split ]
  resume { ptr, i32 } %.pn14.pn

bb.o:                                             ; preds = %bb.k, %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail16invalid_iterator6createIPKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEETnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_iRKSC_SK_(ptr dead_on_unwind noalias writable sret(%"class.nlohmann::json_abi_v3_12_0::detail::invalid_iterator") align 8 %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.b, ptr %6, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 16, ptr %i.a, align 8, !tbaa !105
  %i.c = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.c, ptr %6, align 8, !tbaa !133
  %i.d = load i64, ptr %i.a, align 8, !tbaa !105  ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.c, ptr noundef nonnull align 1 dereferenceable(16) @.str.290, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !134
  %i.f = load ptr, ptr %6, align 8, !tbaa !133
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail9exception4nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %1)
          to label %bb.a unwind label %bb.f

bb.a:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.h, ptr %7, align 8, !tbaa !131, !alias.scope !1863
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.i, align 8, !tbaa !134, !alias.scope !1863
  store i8 0, ptr %i.h, align 8, !tbaa !89, !alias.scope !1863
  call void @llvm.experimental.noalias.scope.decl(metadata !1864)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !131, !alias.scope !1864
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.k, align 8, !tbaa !134, !alias.scope !1864
  store i8 0, ptr %i.j, align 8, !tbaa !89, !alias.scope !1864
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !134, !noalias !1864
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !134, !noalias !1864
  %i.p = add i64 %i.o, %i.m
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.p)
end_hunk_10
begin_hunk_11_@_GLOBAL__sub_I_unit_ubjson.cpp:bb.a
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
  store i8 1, ptr %i.al, align 8, !tbaa !2941
  %i.am = invoke noundef i32 @_ZN7doctest6detail7regTestERKNS0_8TestCaseE(ptr noundef nonnull align 8 dereferenceable(144) %i.ak)
          to label %__cxx_global_var_init.11.exit unwind label %bb.y ; 0 uses

bb.x:                                             ; preds = %__cxx_global_var_init.9.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6detail8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #31
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn.pn.i = phi { ptr, i32 } [ %i.ao, %bb.y ], [ %i.an, %bb.x ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #31
  br label %common.resume

__cxx_global_var_init.11.exit:                    ; preds = %bb.w
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ap) #31
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aq) #31
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(144) %0) #31
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #31
  store i32 0, ptr @_ZL20DOCTEST_ANON_VAR_249, align 4, !tbaa !108
  %i.ar = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZL20DOCTEST_ANON_VAR_249) ; 0 uses
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
end_hunk_11
