inline.NumInlined: 11292
inline.NumDeleted: 4278
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZZN5arrow8FieldRef7FlattenESt6vectorIS0_SaIS0_EEEN7VisitorclEOS3_PS3_:bb.a

bb.aa:                                            ; preds = %bb.z
  %i.cs = icmp ult i64 %i.cf, 16
  call void @llvm.assume(i1 %i.cs)
  %i.ct = add nuw nsw i64 %i.cf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cp, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.ct, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i15.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i14.i: ; preds = %bb.z
  store ptr %i.cq, ptr %i.ch, align 8, !tbaa !48
  %i.cu = load i64, ptr %i.n, align 8, !tbaa !43
  store i64 %i.cu, ptr %i.cp, align 8, !tbaa !43
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i15.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i15.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i14.i, %bb.aa
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 %i.cf, ptr %i.cv, align 8, !tbaa !41
  store ptr %i.n, ptr %2, align 8, !tbaa !48
  store i64 0, ptr %i.o, align 8, !tbaa !41
  store i8 0, ptr %i.n, align 8, !tbaa !43
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i16.i = load i8, ptr %i.p, align 8, !tbaa !1509
  br label %_ZSt12construct_atIN5arrow8FieldRefEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i.i.i.i.i.i.i12.i

bb.ab:                                            ; preds = %bb.x
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !1516
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.cj, ptr %i.cw, align 8, !tbaa !1518
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cy = load ptr, ptr %i.n, align 8, !tbaa !1519
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !1519
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 24, i1 false)
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !1518
  br label %_ZSt12construct_atIN5arrow8FieldRefEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i.i.i.i.i.i.i12.i

bb.ac:                                            ; preds = %bb.x
  unreachable

_ZSt12construct_atIN5arrow8FieldRefEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i.i.i.i.i.i.i12.i: ; preds = %bb.ab, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i15.i, %bb.y, %bb.x
  %i.cz = phi ptr [ %.pre, %bb.ab ], [ %i.ch, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i15.i ], [ %i.ch, %bb.y ], [ %i.ch, %bb.x ]
  %i.da = phi i8 [ 2, %bb.ab ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i16.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i15.i ], [ 0, %bb.y ], [ %i.cl, %bb.x ]
  store i8 %i.da, ptr %i.ck, align 8, !tbaa !1509
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  store ptr %i.db, ptr %i.q, align 8, !tbaa !1518
  br label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE9push_backEOS1_.exit.i.i.i.i.i.i.i.i13.i

bb.ad:                                            ; preds = %_ZN5arrow8FieldRefC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i.i.i.i.i.i.i
  invoke void @_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.ch, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE9push_backEOS1_.exit.i.i.i.i.i.i.i.i13.i unwind label %bb.ae, !inline_history !1526

_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE9push_backEOS1_.exit.i.i.i.i.i.i.i.i13.i: ; preds = %bb.ad, %_ZSt12construct_atIN5arrow8FieldRefEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i.i.i.i.i.i.i12.i
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #37, !inline_history !1527
  %i.dc = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.l
  br i1 %i.dd, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOSt5_BindIFZN5arrow8FieldRef7FlattenESt6vectorIS7_SaIS7_EEE7VisitorSt12_PlaceholderILi1EEPSA_EEOSt7variantIJNS6_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SR_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE9push_backEOS1_.exit.i.i.i.i.i.i.i.i13.i
  %i.de = load i64, ptr %i.l, align 8, !tbaa !43
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #38, !inline_history !1526
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOSt5_BindIFZN5arrow8FieldRef7FlattenESt6vectorIS7_SaIS7_EEE7VisitorSt12_PlaceholderILi1EEPSA_EEOSt7variantIJNS6_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SR_.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #37, !inline_history !1527
  %i.dh = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.l
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i.i.i.i: ; preds = %bb.ae
  %i.dj = load i64, ptr %i.l, align 8, !tbaa !43
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #38, !inline_history !1526
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i.i.i.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %.body

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOSt5_BindIFZN5arrow8FieldRef7FlattenESt6vectorIS7_SaIS7_EEE7VisitorSt12_PlaceholderILi1EEPSA_EEOSt7variantIJNS6_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SR_.exit.i: ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE9push_backEOS1_.exit.i.i.i.i.i.i.i.i13.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt5visitISt5_BindIFZN5arrow8FieldRef7FlattenESt6vectorIS2_SaIS2_EEE7VisitorSt12_PlaceholderILi1EEPS5_EEJSt7variantIJNS1_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit

bb.af:                                            ; preds = %bb.e
  invoke fastcc void @_ZZN5arrow8FieldRef7FlattenESt6vectorIS0_SaIS0_EEEN7VisitorclEOS3_PS3_(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.032.053, ptr noundef nonnull %6)
          to label %_ZSt5visitISt5_BindIFZN5arrow8FieldRef7FlattenESt6vectorIS2_SaIS2_EEE7VisitorSt12_PlaceholderILi1EEPS5_EEJSt7variantIJNS1_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit unwind label %.loopexit

bb.ag:                                            ; preds = %bb.e
  unreachable

_ZSt5visitISt5_BindIFZN5arrow8FieldRef7FlattenESt6vectorIS2_SaIS2_EEE7VisitorSt12_PlaceholderILi1EEPS5_EEJSt7variantIJNS1_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit: ; preds = %bb.af, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOSt5_BindIFZN5arrow8FieldRef7FlattenESt6vectorIS7_SaIS7_EEE7VisitorSt12_PlaceholderILi1EEPSA_EEOSt7variantIJNS6_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESH_SR_.exit.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOSt5_BindIFZN5arrow8FieldRef7FlattenESt6vectorIS7_SaIS7_EEE7VisitorSt12_PlaceholderILi1EEPSA_EEOSt7variantIJNS6_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SR_.exit.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.032.053, i64 40 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.j
  br i1 %i.dm, label %._crit_edge, label %bb.e

.loopexit:                                        ; preds = %bb.af
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph57:                                         ; preds = %._crit_edge, %bb.ah
  %.03655 = phi i64 [ %i.dx, %bb.ah ], [ 0, %._crit_edge ]
  %.sroa.027.054 = phi ptr [ %i.dy, %bb.ah ], [ %i.x, %._crit_edge ] ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.027.054, i64 32
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !1509
  %i.dp = icmp ne i8 %i.do, 0
  %.not.not45 = icmp eq ptr %.sroa.027.054, null
  %.not.not = or i1 %.not.not45, %i.dp
  br i1 %.not.not, label %.thread43, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph57
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.027.054, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1082
  %i.ds = load ptr, ptr %.sroa.027.054, align 8, !tbaa !1078
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 2
  %i.dx = add nsw i64 %i.dw, %.03655              ; 7 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.027.054, i64 40 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.z
  br i1 %i.dz, label %._crit_edge58, label %.lr.ph57

._crit_edge58:                                    ; preds = %bb.ah
  %i.ea = icmp eq i64 %i.dx, 0
  br i1 %i.ea, label %._crit_edge58.thread, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge58
  %i.eb = icmp sgt i64 %i.dx, 0
  br i1 %i.eb, label %bb.aj, label %.thread43

bb.aj:                                            ; preds = %bb.ai
  %i.ec = icmp samesign ugt i64 %i.dx, 2305843009213693951
  br i1 %i.ec, label %bb.ak, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.198) #39
          to label %.noexc49 unwind label %bb.al

.noexc49:                                         ; preds = %bb.ak
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.aj
  %i.ed = shl nuw nsw i64 %i.dx, 2
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #36
          to label %.noexc50 unwind label %bb.al  ; 5 uses

.noexc50:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.dx
  store i32 0, ptr %i.ee, align 4, !tbaa !3
  %i.eg = getelementptr i8, ptr %i.ee, i64 4      ; 3 uses
  %i.eh = add nsw i64 %i.dx, -1                   ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc50
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.eh, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.eg, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !3
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc50
  %.0.i.i.i.i.i = phi ptr [ %i.ej, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.eg, %.noexc50 ]
  br label %.lr.ph67

._crit_edge68:                                    ; preds = %._crit_edge63
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  store ptr %i.ee, ptr %8, align 8, !tbaa !1078
  %i.ek = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.ek, align 8, !tbaa !1082
  %i.el = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ef, ptr %i.el, align 8, !tbaa !1081
  invoke void @_ZN5arrow8FieldRefC1ENS_9FieldPathE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull %8)
          to label %bb.am unwind label %bb.av

bb.al:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %bb.ak
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph67:                                         ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, %._crit_edge63
  %.sroa.018.066 = phi ptr [ %.sroa.018.1.lcssa, %._crit_edge63 ], [ %i.ee, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 5 uses
  %.sroa.015.065 = phi ptr [ %i.fe, %._crit_edge63 ], [ %i.x, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 3 uses
  %i.en = load ptr, ptr %.sroa.015.065, align 8, !tbaa !1289 ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.015.065, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !1289 ; 3 uses
  %i.eq = icmp eq ptr %i.en, %i.ep
  br i1 %i.eq, label %._crit_edge63, label %.lr.ph62.preheader

.lr.ph62.preheader:                               ; preds = %.lr.ph67
  %i.er = ptrtoaddr ptr %i.en to i64
  %.sroa.018.066121 = ptrtoaddr ptr %.sroa.018.066 to i64
  %i.es = ptrtoint ptr %i.ep to i64
  %i.et = ptrtoint ptr %i.en to i64
  %9 = add i64 %i.es, -4
  %10 = sub i64 %9, %i.et                         ; 2 uses
  %i.eu = lshr i64 %10, 2
  %i.ev = add nuw nsw i64 %i.eu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %10, 28
  %i.ew = sub i64 %i.er, %.sroa.018.066121
  %diff.check = icmp ugt i64 %i.ew, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph62.preheader125, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph62.preheader
  %n.vec = and i64 %i.ev, 9223372036854775800     ; 3 uses
  %i.ex = shl i64 %n.vec, 2                       ; 2 uses
  %i.ey = getelementptr i8, ptr %.sroa.018.066, i64 %i.ex ; 2 uses
  %i.ez = getelementptr i8, ptr %i.en, i64 %i.ex
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fa = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.018.066, i64 %i.fa ; 2 uses
  %next.gep122 = getelementptr i8, ptr %i.en, i64 %i.fa ; 2 uses
  %i.fb = getelementptr i8, ptr %next.gep122, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep122, align 4, !tbaa !3
  %wide.load123 = load <4 x i32>, ptr %i.fb, align 4, !tbaa !3
  %i.fc = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %wide.load123, ptr %i.fc, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %middle.block, label %vector.body, !llvm.loop !1528

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ev, %n.vec
  br i1 %cmp.n, label %._crit_edge63, label %.lr.ph62.preheader125

.lr.ph62.preheader125:                            ; preds = %.lr.ph62.preheader, %middle.block
  %.sroa.018.160.ph = phi ptr [ %.sroa.018.066, %.lr.ph62.preheader ], [ %i.ey, %middle.block ]
  %.sroa.011.059.ph = phi ptr [ %i.en, %.lr.ph62.preheader ], [ %i.ez, %middle.block ]
  br label %.lr.ph62

._crit_edge63:                                    ; preds = %.lr.ph62, %middle.block, %.lr.ph67
  %.sroa.018.1.lcssa = phi ptr [ %.sroa.018.066, %.lr.ph67 ], [ %i.ey, %middle.block ], [ %i.fh, %.lr.ph62 ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.015.065, i64 40 ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.z
  br i1 %i.ff, label %._crit_edge68, label %.lr.ph67

.lr.ph62:                                         ; preds = %.lr.ph62.preheader125, %.lr.ph62
  %.sroa.018.160 = phi ptr [ %i.fh, %.lr.ph62 ], [ %.sroa.018.160.ph, %.lr.ph62.preheader125 ] ; 2 uses
  %.sroa.011.059 = phi ptr [ %i.fi, %.lr.ph62 ], [ %.sroa.011.059.ph, %.lr.ph62.preheader125 ] ; 2 uses
  %i.fg = load i32, ptr %.sroa.011.059, align 4, !tbaa !3
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.018.160, i64 4 ; 2 uses
  store i32 %i.fg, ptr %.sroa.018.160, align 4, !tbaa !3
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.011.059, i64 4 ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.ep
  br i1 %i.fj, label %._crit_edge63, label %.lr.ph62, !llvm.loop !1531

bb.am:                                            ; preds = %._crit_edge68
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !1518 ; 11 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !1519
  %.not.i.i = icmp eq ptr %i.fl, %i.fn
  br i1 %.not.i.i, label %bb.at, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 32 ; 2 uses
  store i8 -1, ptr %i.fo, align 8, !tbaa !1509
  %i.fp = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.fq = load i8, ptr %i.fp, align 16, !tbaa !1509 ; 2 uses
  switch i8 %i.fq, label %bb.as [
    i8 0, label %bb.ao
    i8 1, label %bb.ap
    i8 2, label %bb.ar
    i8 -1, label %_ZSt12construct_atIN5arrow8FieldRefEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i
  ]

bb.ao:                                            ; preds = %bb.an
  %i.fr = load <2 x ptr>, ptr %7, align 16, !tbaa !1289
  store <2 x ptr> %i.fr, ptr %i.fl, align 8, !tbaa !1289
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fu = load ptr, ptr %i.ft, align 16, !tbaa !1081
  store ptr %i.fu, ptr %i.fs, align 8, !tbaa !1081
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %7, i8 0, i64 24, i1 false)
  br label %_ZSt12construct_atIN5arrow8FieldRefEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i

bb.ap:                                            ; preds = %bb.an
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 3 uses
  store ptr %i.fv, ptr %i.fl, align 8, !tbaa !38
  %i.fw = load ptr, ptr %7, align 16, !tbaa !48   ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !41 ; 3 uses
  %i.gb = icmp ult i64 %i.ga, 16
  call void @llvm.assume(i1 %i.gb)
  %i.gc = add nuw nsw i64 %i.ga, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fv, ptr noundef nonnull align 16 dereferenceable(1) %i.fx, i64 %i.gc, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ap
  store ptr %i.fw, ptr %i.fl, align 8, !tbaa !48
  %i.gd = load i64, ptr %i.fx, align 16, !tbaa !43
  store i64 %i.gd, ptr %i.fv, align 8, !tbaa !43
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre73 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !41
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aq
  %i.ge = phi i64 [ %.pre73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ga, %bb.aq ]
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i64 %i.ge, ptr %i.gg, align 8, !tbaa !41
  store ptr %i.fx, ptr %7, align 16, !tbaa !48
  store i64 0, ptr %i.gf, align 8, !tbaa !41
  store i8 0, ptr %i.fx, align 16, !tbaa !43
  %.pre.i.i.i.i.i.i.i.i.i = load i8, ptr %i.fp, align 16, !tbaa !1509
  br label %_ZSt12construct_atIN5arrow8FieldRefEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i

bb.ar:                                            ; preds = %bb.an
  %i.gh = load <2 x ptr>, ptr %7, align 16, !tbaa !1511
  store <2 x ptr> %i.gh, ptr %i.fl, align 8, !tbaa !1511
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.gk = load ptr, ptr %i.gj, align 16, !tbaa !1519
  store ptr %i.gk, ptr %i.gi, align 8, !tbaa !1519
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %7, i8 0, i64 24, i1 false)
  br label %_ZSt12construct_atIN5arrow8FieldRefEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i

bb.as:                                            ; preds = %bb.an
  unreachable

_ZSt12construct_atIN5arrow8FieldRefEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i: ; preds = %bb.ar, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.ao, %bb.an
  %i.gl = phi i8 [ 2, %bb.ar ], [ %.pre.i.i.i.i.i.i.i.i.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.ao ], [ %i.fq, %bb.an ]
  store i8 %i.gl, ptr %i.fo, align 8, !tbaa !1509
  %i.gm = load ptr, ptr %i.fk, align 8, !tbaa !1518
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 40
  store ptr %i.gn, ptr %i.fk, align 8, !tbaa !1518
  br label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE9push_backEOS1_.exit

bb.at:                                            ; preds = %bb.am
  invoke void @_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.fl, ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE9push_backEOS1_.exit unwind label %bb.aw

_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZSt12construct_atIN5arrow8FieldRefEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i, %bb.at
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #37, !inline_history !1532
  %i.go = load ptr, ptr %8, align 8, !tbaa !1078  ; 3 uses
  %.not.i.i.i.i53 = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i53, label %_ZNSt6vectorIiSaIiEED2Ev.exit55, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE9push_backEOS1_.exit
  %i.gp = load ptr, ptr %i.el, align 8, !tbaa !1081
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = ptrtoint ptr %i.go to i64
  %i.gs = sub i64 %i.gq, %i.gr
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %i.gs) #38
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit55

_ZNSt6vectorIiSaIiEED2Ev.exit55:                  ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE9push_backEOS1_.exit, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %._crit_edge58.thread

bb.av:                                            ; preds = %._crit_edge68
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aw:                                            ; preds = %bb.at
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #37, !inline_history !1532
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pn = phi { ptr, i32 } [ %i.gu, %bb.aw ], [ %i.gt, %bb.av ]
  %i.gv = load ptr, ptr %8, align 8, !tbaa !1078  ; 3 uses
  %.not.i.i.i.i56 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i.i56, label %_ZNSt6vectorIiSaIiEED2Ev.exit59, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gw = load ptr, ptr %i.el, align 8, !tbaa !1081
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = ptrtoint ptr %i.gv to i64
  %i.gz = sub i64 %i.gx, %i.gy
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef %i.gz) #38
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit59

_ZNSt6vectorIiSaIiEED2Ev.exit59:                  ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %.body

.thread43:                                        ; preds = %.lr.ph57, %bb.ai
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !1511
  %i.hc = load ptr, ptr %1, align 8, !tbaa !1511  ; 2 uses
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = sub i64 %i.hd, %i.he
end_hunk_0
