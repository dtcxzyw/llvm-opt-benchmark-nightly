Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/statusor_test?download=true
inline.NumInlined: 18650
inline.NumDeleted: 6198
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN12_GLOBAL__N_132StatusOr_StatusCtorForwards_Test8TestBodyEv:bb.a

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.u, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  br i1 %i.b, label %.thread173, label %bb.w

.thread173:                                       ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.bo = and i64 %i.a, 2
  %.not.i55 = icmp eq i64 %i.bo, 0                ; 2 uses
  %spec.select.i56 = select i1 %.not.i55, i64 0, i64 27
  %spec.select1.i57 = select i1 %.not.i55, ptr null, ptr @_ZN4absl12lts_202605266Status16kMovedFromStringE
  store i64 %spec.select.i56, ptr %9, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %spec.select1.i57, ptr %i.bp, align 8
  br label %bb.x

bb.w:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.bq = inttoptr i64 %i.a to ptr                ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !130 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !138 ; 2 uses
  store i64 %i.bu, ptr %9, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.bs, ptr %i.bv, align 8
  %i.bw = icmp eq i64 %i.bu, 10
  br i1 %i.bw, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62, label %bb.x

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62: ; preds = %bb.w
  %i.bx = load i64, ptr %i.bs, align 1
  %i.by = xor i64 %i.bx, 8246765057483829075
  %i.bz = getelementptr i8, ptr %i.bs, i64 8
  %i.ca = load i16, ptr %i.bz, align 1
  %i.cb = zext i16 %i.ca to i64
  %i.cc = xor i64 %i.cb, 29295
  %i.cd = or i64 %i.by, %i.cc
  %i.ce = icmp ne i64 %i.cd, 0
  %i.cf = zext i1 %i.ce to i32
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.i.i64, label %bb.x

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.i.i64: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEEA11_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit67 unwind label %bb.z

bb.x:                                             ; preds = %.thread173, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62, %bb.w
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt17basic_string_viewIcSt11char_traitsIcEEA11_cEENS_15AssertionResultEPKcS9_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.284, ptr noundef nonnull @.str.283, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 1 dereferenceable(11) @.str.281)
          to label %_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEEA11_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit67 unwind label %bb.z

_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEEA11_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit67: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.i.i64, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.ch = load i8, ptr %8, align 8, !tbaa !124, !range !125, !noundef !139
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.aj, label %bb.aa

bb.y:                                             ; preds = %_ZN7testing7MessageD2Ev.exit49, %.body
  %.pn25.pn.pn = phi { ptr, i32 } [ %.pn25.pn, %_ZN7testing7MessageD2Ev.exit49 ], [ %.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.bv

bb.z:                                             ; preds = %bb.x, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.i.i64
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.at

bb.aa:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEEA11_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit67
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !126 ; 2 uses
  %.not.i.i68 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i68, label %_ZNK7testing15AssertionResult15failure_messageEv.exit69, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !130
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit69

_ZNK7testing15AssertionResult15failure_messageEv.exit69: ; preds = %bb.ac, %bb.ab
  %i.cn = phi ptr [ %i.cm, %bb.ac ], [ @.str.258, %bb.ab ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 195, ptr noundef %i.cn)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit69
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ae unwind label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.co = load ptr, ptr %10, align 8, !tbaa !132  ; 3 uses
  %.not.i.i70 = icmp eq ptr %i.co, null
  br i1 %.not.i.i70, label %_ZN7testing7MessageD2Ev.exit72, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71: ; preds = %bb.ae
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !98
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(128) %i.co) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit72

_ZN7testing7MessageD2Ev.exit72:                   ; preds = %bb.ae, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.aj

bb.af:                                            ; preds = %bb.aa
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit75

bb.ag:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit69
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ad
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #28
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn29 = phi { ptr, i32 } [ %i.cu, %bb.ah ], [ %i.ct, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.cv = load ptr, ptr %10, align 8, !tbaa !132  ; 3 uses
  %.not.i.i73 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i73, label %_ZN7testing7MessageD2Ev.exit75, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74: ; preds = %bb.ai
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !98
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(128) %i.cv) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit75

_ZN7testing7MessageD2Ev.exit75:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74, %bb.ai, %bb.af
  %.pn29.pn = phi { ptr, i32 } [ %i.cs, %bb.af ], [ %.pn29, %bb.ai ], [ %.pn29, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #28
  br label %bb.at

bb.aj:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEEA11_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit67, %_ZN7testing7MessageD2Ev.exit72
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !126 ; 4 uses
  %.not.i.i76 = icmp eq ptr %i.da, null
  br i1 %.not.i.i76, label %_ZN7testing15AssertionResultD2Ev.exit80, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !130 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i77: ; preds = %bb.ak
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !133
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i77
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit80

_ZN7testing15AssertionResultD2Ev.exit80:          ; preds = %bb.aj, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  store i64 %i.a, ptr %15, align 8, !tbaa !114
  store i64 55, ptr %1, align 8, !tbaa !114
  %i.dg = icmp eq i64 %i.a, 1
  br i1 %i.dg, label %bb.al, label %_ZN4absl12lts_202605268StatusOrIiEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EiT_EE5valueEiE4typeELi0EEEOS6_.exit.thread, !prof !152

bb.al:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit80
  invoke void @_ZN4absl12lts_2026052617internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %15)
          to label %_ZN4absl12lts_202605268StatusOrIiEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EiT_EE5valueEiE4typeELi0EEEOS6_.exit unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(12) %15) #28
  br label %.body81

_ZN4absl12lts_202605268StatusOrIiEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EiT_EE5valueEiE4typeELi0EEEOS6_.exit: ; preds = %bb.al
  %.pr = load i64, ptr %15, align 8, !tbaa !114, !noalias !883 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !883)
  %i.di = icmp eq i64 %.pr, 1
  br i1 %i.di, label %.thread142, label %_ZN4absl12lts_202605268StatusOrIiEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EiT_EE5valueEiE4typeELi0EEEOS6_.exit.thread

.thread142:                                       ; preds = %_ZN4absl12lts_202605268StatusOrIiEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EiT_EE5valueEiE4typeELi0EEEOS6_.exit
  store i64 1, ptr %14, align 8, !tbaa !114, !alias.scope !883
  br label %.thread176

_ZN4absl12lts_202605268StatusOrIiEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EiT_EE5valueEiE4typeELi0EEEOS6_.exit.thread: ; preds = %_ZN7testing15AssertionResultD2Ev.exit80, %_ZN4absl12lts_202605268StatusOrIiEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EiT_EE5valueEiE4typeELi0EEEOS6_.exit
  %i.dj = phi i64 [ %.pr, %_ZN4absl12lts_202605268StatusOrIiEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EiT_EE5valueEiE4typeELi0EEEOS6_.exit ], [ %i.a, %_ZN7testing15AssertionResultD2Ev.exit80 ] ; 7 uses
  store i64 55, ptr %15, align 8, !tbaa !114, !noalias !883
  store i64 %i.dj, ptr %14, align 8, !tbaa !114, !alias.scope !883
  %i.dk = trunc i64 %i.dj to i1
  br i1 %i.dk, label %.thread176, label %bb.an

.thread176:                                       ; preds = %_ZN4absl12lts_202605268StatusOrIiEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EiT_EE5valueEiE4typeELi0EEEOS6_.exit.thread, %.thread142
  %i.dl = phi i64 [ 1, %.thread142 ], [ %i.dj, %_ZN4absl12lts_202605268StatusOrIiEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EiT_EE5valueEiE4typeELi0EEEOS6_.exit.thread ] ; 2 uses
  %i.dm = and i64 %i.dl, 2
  %.not.i88 = icmp eq i64 %i.dm, 0                ; 2 uses
  %spec.select.i89 = select i1 %.not.i88, i64 0, i64 27
  %spec.select1.i90 = select i1 %.not.i88, ptr null, ptr @_ZN4absl12lts_202605266Status16kMovedFromStringE
  store i64 %spec.select.i89, ptr %13, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %spec.select1.i90, ptr %i.dn, align 8
  br label %bb.ao

bb.an:                                            ; preds = %_ZN4absl12lts_202605268StatusOrIiEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EiT_EE5valueEiE4typeELi0EEEOS6_.exit.thread
  %i.do = inttoptr i64 %i.dj to ptr               ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !130 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !138 ; 2 uses
  store i64 %i.ds, ptr %13, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.dq, ptr %i.dt, align 8
  %i.du = icmp eq i64 %i.ds, 10
  br i1 %i.du, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i95, label %bb.ao

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i95: ; preds = %bb.an
  %i.dv = load i64, ptr %i.dq, align 1
  %i.dw = xor i64 %i.dv, 8246765057483829075
  %i.dx = getelementptr i8, ptr %i.dq, i64 8
  %i.dy = load i16, ptr %i.dx, align 1
  %i.dz = zext i16 %i.dy to i64
  %i.ea = xor i64 %i.dz, 29295
  %i.eb = or i64 %i.dw, %i.ea
  %i.ec = icmp ne i64 %i.eb, 0
  %i.ed = zext i1 %i.ec to i32
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.i.i97, label %bb.ao

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.i.i97: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i95
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12)
          to label %_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEEA11_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit100 unwind label %bb.au

bb.ao:                                            ; preds = %.thread176, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i95, %bb.an
  %i.ef = phi i64 [ %i.dl, %.thread176 ], [ %i.dj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i95 ], [ %i.dj, %bb.an ]
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt17basic_string_viewIcSt11char_traitsIcEEA11_cEENS_15AssertionResultEPKcS9_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12, ptr noundef nonnull @.str.285, ptr noundef nonnull @.str.283, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 1 dereferenceable(11) @.str.281)
          to label %_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEEA11_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit100 unwind label %bb.au

_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEEA11_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit100: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.i.i97, %bb.ao
  %i.eg = phi i64 [ %i.dj, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.i.i97 ], [ %i.ef, %bb.ao ] ; 2 uses
  %i.eh = trunc i64 %i.eg to i1
  br i1 %i.eh, label %_ZN4absl12lts_202605266StatusD2Ev.exit101, label %bb.ap

bb.ap:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEEA11_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit100
  %i.ei = inttoptr i64 %i.eg to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ei)
          to label %_ZN4absl12lts_202605266StatusD2Ev.exit101 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #29
  unreachable

_ZN4absl12lts_202605266StatusD2Ev.exit101:        ; preds = %_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEEA11_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit100, %bb.ap
  %i.el = load i64, ptr %15, align 8, !tbaa !114  ; 2 uses
  %i.em = trunc i64 %i.el to i1
  br i1 %i.em, label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataIiED2Ev.exit102, label %bb.ar

bb.ar:                                            ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit101
  %i.en = inttoptr i64 %i.el to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.en)
          to label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataIiED2Ev.exit102 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eo = landingpad { ptr, i32 }
          catch ptr null
  %i.ep = extractvalue { ptr, i32 } %i.eo, 0
  call void @__clang_call_terminate(ptr %i.ep) #29
  unreachable

_ZN4absl12lts_2026052617internal_statusor12StatusOrDataIiED2Ev.exit102: ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit101, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.eq = load i8, ptr %12, align 8, !tbaa !124, !range !125, !noundef !139
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.be, label %bb.av

bb.at:                                            ; preds = %_ZN7testing7MessageD2Ev.exit75, %bb.z
  %.pn29.pn.pn = phi { ptr, i32 } [ %.pn29.pn, %_ZN7testing7MessageD2Ev.exit75 ], [ %i.cj, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.bv

bb.au:                                            ; preds = %bb.ao, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.i.i97
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #28
  call void @_ZN4absl12lts_2026052617internal_statusor12StatusOrDataIiED2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %15) #28
  br label %.body81

.body81:                                          ; preds = %bb.am, %bb.au
  %.pn33.pn = phi { ptr, i32 } [ %i.es, %bb.au ], [ %i.dh, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.bh

bb.av:                                            ; preds = %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataIiED2Ev.exit102
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.aw unwind label %bb.ba

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.et = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !126 ; 2 uses
  %.not.i.i103 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i103, label %_ZNK7testing15AssertionResult15failure_messageEv.exit104, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !130
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit104

_ZNK7testing15AssertionResult15failure_messageEv.exit104: ; preds = %bb.ax, %bb.aw
  %i.ew = phi ptr [ %i.ev, %bb.ax ], [ @.str.258, %bb.aw ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 198, ptr noundef %i.ew)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit104
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %bb.ay
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.ex = load ptr, ptr %16, align 8, !tbaa !132  ; 3 uses
  %.not.i.i105 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i105, label %_ZN7testing7MessageD2Ev.exit107, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i106

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i106: ; preds = %bb.az
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !98
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(128) %i.ex) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit107

_ZN7testing7MessageD2Ev.exit107:                  ; preds = %bb.az, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.be

bb.ba:                                            ; preds = %bb.av
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit110

bb.bb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit104
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ay
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #28
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn36 = phi { ptr, i32 } [ %i.fd, %bb.bc ], [ %i.fc, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.fe = load ptr, ptr %16, align 8, !tbaa !132  ; 3 uses
  %.not.i.i108 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i108, label %_ZN7testing7MessageD2Ev.exit110, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109: ; preds = %bb.bd
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !98
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(128) %i.fe) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit110

_ZN7testing7MessageD2Ev.exit110:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109, %bb.bd, %bb.ba
  %.pn36.pn = phi { ptr, i32 } [ %i.fb, %bb.ba ], [ %.pn36, %bb.bd ], [ %.pn36, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #28
  br label %bb.bh

bb.be:                                            ; preds = %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataIiED2Ev.exit102, %_ZN7testing7MessageD2Ev.exit107
  %i.fi = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !126 ; 4 uses
  %.not.i.i111 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i111, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !130 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i112: ; preds = %bb.bf
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !133
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113

end_hunk_0
