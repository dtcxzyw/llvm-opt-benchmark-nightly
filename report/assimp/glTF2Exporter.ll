begin_hunk_0
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::vector.267", align 8   ; 15 uses
  %9 = alloca %"class.std::vector.272", align 8   ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 0
end_hunk_0
begin_hunk_1
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.m
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bc, i64 1056
  %.sroa.0275.0.copyload = load float, ptr %i.dq, align 4 ; 2 uses
  %.sroa.7278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 1060
  %.sroa.7278.0.copyload = load <4 x float>, ptr %.sroa.7278.0..sroa_idx, align 4 ; 2 uses
  %.sroa.8281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 1076
  %.sroa.8281.0.copyload = load float, ptr %.sroa.8281.0..sroa_idx, align 4 ; 2 uses
  %.sroa.9286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 1080
  %.sroa.9288.0.copyload = load <4 x float>, ptr %.sroa.9286.0..sroa_idx, align 4 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 1096
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 1100
  %.sroa.11.0.copyload = load <4 x float>, ptr %.sroa.11.0..sroa_idx, align 4 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 1116
  %.sroa.12.0.copyload = load float, ptr %.sroa.12.0..sroa_idx, align 4 ; 2 uses
  %i.dr = load ptr, ptr %i.q, align 8             ; 11 uses
end_hunk_1
begin_hunk_2
bb.q:                                             ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE9push_backERKS4_.exit
  store float %.sroa.0275.0.copyload, ptr %i.dr, align 4
  %.sroa.7278.0..sroa_idx279 = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  store <4 x float> %.sroa.7278.0.copyload, ptr %.sroa.7278.0..sroa_idx279, align 4
  %.sroa.8281.0..sroa_idx282 = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  store float %.sroa.8281.0.copyload, ptr %.sroa.8281.0..sroa_idx282, align 4
  %.sroa.9286.0..sroa_idx287 = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  store <4 x float> %.sroa.9288.0.copyload, ptr %.sroa.9286.0..sroa_idx287, align 4
  %.sroa.10.0..sroa_idx289 = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  store float %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx289, align 4
  %.sroa.11.0..sroa_idx293 = getelementptr inbounds nuw i8, ptr %i.dr, i64 44
  store <4 x float> %.sroa.11.0.copyload, ptr %.sroa.11.0..sroa_idx293, align 4
  %.sroa.12.0..sroa_idx295 = getelementptr inbounds nuw i8, ptr %i.dr, i64 60
  store float %.sroa.12.0.copyload, ptr %.sroa.12.0..sroa_idx295, align 4
  %i.dt = load ptr, ptr %i.q, align 8
end_hunk_2
begin_hunk_3
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.dy ; 7 uses
  store float %.sroa.0275.0.copyload, ptr %i.eh, align 4
  %.sroa.7278.0..sroa_idx280 = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  store <4 x float> %.sroa.7278.0.copyload, ptr %.sroa.7278.0..sroa_idx280, align 4
  %.sroa.8281.0..sroa_idx284 = getelementptr inbounds nuw i8, ptr %i.eh, i64 20
  store float %.sroa.8281.0.copyload, ptr %.sroa.8281.0..sroa_idx284, align 4
  %.sroa.9286.0..sroa_idx288 = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  store <4 x float> %.sroa.9288.0.copyload, ptr %.sroa.9286.0..sroa_idx288, align 4
  %.sroa.10.0..sroa_idx291 = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  store float %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx291, align 4
  %.sroa.11.0..sroa_idx294 = getelementptr inbounds nuw i8, ptr %i.eh, i64 44
  store <4 x float> %.sroa.11.0.copyload, ptr %.sroa.11.0..sroa_idx294, align 4
  %.sroa.12.0..sroa_idx297 = getelementptr inbounds nuw i8, ptr %i.eh, i64 60
  store float %.sroa.12.0.copyload, ptr %.sroa.12.0..sroa_idx297, align 4
  %.not10.i.i.i.i.i193 = icmp eq ptr %i.dv, %i.dr
end_hunk_3
begin_hunk_4
  %i.er = lshr exact i64 %i.eq, 6
  %i.es = trunc i64 %i.er to i32
  %i.et = add i32 %i.es, -1
  br label %bb.u

.loopexit331.a:                                   ; preds = %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
end_hunk_4
begin_hunk_5
.loopexit336:                                     ; preds = %_ZNKSt6vectorI12aiMatrix4x4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit338 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp337:                            ; preds = %bb.s
  %lpad.loopexit.split-lp339 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE9push_backERKS1_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit._crit_edge
end_hunk_5
begin_hunk_6
bb.br:                                            ; preds = %bb.a, %_ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EED2Ev.exit
  ret void

.body:                                            ; preds = %.loopexit318, %.loopexit.split-lp319, %.loopexit, %.loopexit.split-lp, %.loopexit325, %.loopexit.split-lp326, %.loopexit336, %.loopexit.split-lp337, %.loopexit331.a, %.loopexit.split-lp332.a, %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.az, %bb.bd, %bb.j, %bb.ac, %bb.af, %bb.ad, %_ZNSt6vectorI19boneIndexWeightPairSaIS0_EED2Ev.exit182
  %.pn176 = phi { ptr, i32 } [ %lpad.loopexit343, %_ZNSt6vectorI19boneIndexWeightPairSaIS0_EED2Ev.exit182 ], [ %i.go, %bb.ad ], [ %i.gn, %bb.ac ], [ %i.hq, %bb.af ], [ %.pn12.i, %bb.az ], [ %i.cf, %bb.j ], [ %lpad.loopexit.split-lp339, %.loopexit.split-lp337 ], [ %lpad.loopexit.split-lp334.a, %.loopexit.split-lp332.a ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.mw, %bb.bc ], [ %i.mx, %bb.bd ], [ %i.lu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %lpad.loopexit.split-lp328, %.loopexit.split-lp326 ], [ %i.lu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %lpad.loopexit333.a, %.loopexit331.a ], [ %lpad.loopexit338, %.loopexit336 ], [ %lpad.loopexit327, %.loopexit325 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit320, %.loopexit318 ], [ %lpad.loopexit.split-lp321, %.loopexit.split-lp319 ]
  call void @_ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  resume { ptr, i32 } %.pn176
end_hunk_6
