Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/validation?download=true
inline.NumInlined: 5002
inline.NumDeleted: 571
loop-unroll.NumCompletelyUnrolled: 318
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 319
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@_Z22assertNewSuperOpAllocs7SuperOpbPKc:bb.a
  store i8 0, ptr %i.et, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.eu = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  store i32 0, ptr %i.eu, align 8, !tbaa !53
  %i.ev = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  store ptr null, ptr %i.ev, align 8, !tbaa !54
  %i.ew = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  store ptr %i.eu, ptr %i.ew, align 8, !tbaa !37
  %i.ex = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  store ptr %i.eu, ptr %i.ex, align 8, !tbaa !55
  %i.ey = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 2 uses
  store i64 0, ptr %i.ey, align 8, !tbaa !56
  %i.ez = load ptr, ptr %i.l, align 8, !tbaa !54  ; 2 uses
  %.not.i.i77 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i77, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit85, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %17, ptr %3, align 8, !tbaa !57
  %i.fa = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull %i.ez, ptr noundef nonnull %i.eu, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc.i.i78 unwind label %bb.ay ; 3 uses

.noexc.i.i78:                                     ; preds = %bb.aq, %.noexc.i.i78
  %.0.i.i.i.i.i.i79 = phi ptr [ %i.fc, %.noexc.i.i78 ], [ %i.fa, %bb.aq ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i79, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !59 ; 2 uses
  %.not.i.i.i.i.i.i80 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i.i.i.i80, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i81, label %.noexc.i.i78, !llvm.loop !60

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i81: ; preds = %.noexc.i.i78
  store ptr %.0.i.i.i.i.i.i79, ptr %i.ew, align 8, !tbaa !61
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i81
  %.0.i.i7.i.i.i.i82 = phi ptr [ %i.fa, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i81 ], [ %i.fe, %bb.ar ] ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i82, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !62 ; 2 uses
  %.not.i.i8.i.i.i.i83 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i8.i.i.i.i83, label %bb.as, label %bb.ar, !llvm.loop !63

bb.as:                                            ; preds = %bb.ar
  store ptr %.0.i.i7.i.i.i.i82, ptr %i.ex, align 8, !tbaa !61
  %i.ff = load i64, ptr %i.o, align 8, !tbaa !56
  store i64 %i.ff, ptr %i.ey, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr %i.fa, ptr %i.ev, align 8, !tbaa !61
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit85

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit85: ; preds = %bb.as, %bb.ap
  invoke void @_Z23assertAllNodesAgreeThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS4_xSt4lessIS4_ESaISt4pairIKS4_xEEEPKc(i1 noundef zeroext %i.eh, ptr nofree noundef nonnull align 8 dereferenceable(32) %16, ptr nofree noundef nonnull align 8 dereferenceable(48) %17, ptr noundef %2)
          to label %bb.at unwind label %bb.az

bb.at:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit85
  %i.fg = load ptr, ptr %i.ev, align 8, !tbaa !54
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef %i.fg)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit86 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit86: ; preds = %bb.at
  %i.fj = load ptr, ptr %16, align 8, !tbaa !16   ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.ei
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit86
  %i.fl = load i64, ptr %i.ei, align 8, !tbaa !17
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  %i.fn = load ptr, ptr %9, align 8, !tbaa !16    ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.ac
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %i.fp = load i64, ptr %i.ac, align 8, !tbaa !17
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %i.fr = load ptr, ptr %i.l, align 8, !tbaa !54
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.fr)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit93 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fs = landingpad { ptr, i32 }
          catch ptr null
  %i.ft = extractvalue { ptr, i32 } %i.fs, 0
  call void @__clang_call_terminate(ptr %i.ft) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit93: ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret void

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  %i.fu = landingpad { ptr, i32 }
          cleanup
  %i.fv = load ptr, ptr %15, align 8, !tbaa !16   ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.dx
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.ax
  %i.fx = load i64, ptr %i.dx, align 8, !tbaa !17
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

bb.ay:                                            ; preds = %bb.aq
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit85
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %17) #27
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pn26 = phi { ptr, i32 } [ %i.ga, %bb.az ], [ %i.fz, %bb.ay ] ; 2 uses
  %i.gb = load ptr, ptr %16, align 8, !tbaa !16   ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.ei
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.ba
  %i.gd = load i64, ptr %i.ei, align 8, !tbaa !17
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.ba, %bb.ak, %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %bb.ah, %bb.ad
  %.pn26.pn = phi { ptr, i32 } [ %.pn22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %i.dj, %bb.ad ], [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %.pn20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ], [ %i.dq, %bb.ah ], [ %.pn26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %.pn20, %bb.ag ], [ %.pn22, %bb.ak ], [ %.pn26, %bb.ba ] ; 2 uses
  %i.gf = load ptr, ptr %9, align 8, !tbaa !16    ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.ac
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.gh = load i64, ptr %i.ac, align 8, !tbaa !17
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %bb.ac
  %.pn26.pn.pn = phi { ptr, i32 } [ %i.di, %bb.ac ], [ %.pn26.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %.pn26.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #27
  br label %bb.bb

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %.loopexit
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %.pn, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %.pn26.pn.pn.pn
}

declare noundef i64 @_Z33mem_getLocalSuperOpMemoryRequiredi(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_Z25validate_newSuperOpAllocs7SuperOpPKc(ptr nofree noundef readonly byval(%struct.SuperOp) align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #14 {
bb.a:
  tail call void @_Z22assertNewSuperOpAllocs7SuperOpbPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, i1 noundef zeroext false, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z42validate_newInlineSuperOpDimMatchesVectorsiSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEPKc(i32 noundef %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::map", align 8          ; 16 uses
  %7 = alloca [3 x %"struct.std::pair"], align 8  ; 34 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::map", align 8          ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::map", align 8         ; 10 uses
  %.b = load i1, ptr @_ZL26global_isValidationEnabled, align 1
  br i1 %.b, label %bb.ad, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.e = shl nsw i32 %0, 1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw i64 1, %i.f                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.h, ptr %7, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store i64 22, ptr %i.d, align 8, !tbaa !36
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %.thread146 ; 2 uses

.thread146:                                       ; preds = %.noexc.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.i, ptr %7, align 8, !tbaa !16
  %i.k = load i64, ptr %i.d, align 8, !tbaa !36   ; 3 uses
  store i64 %i.k, ptr %i.h, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.i, ptr noundef nonnull align 1 dereferenceable(22) @.str.628, i64 22, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !9
  %i.m = load ptr, ptr %7, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.p = sext i32 %0 to i64
  store i64 %i.p, ptr %i.o, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i64 20, ptr %i.c, align 8, !tbaa !36
  %i.s = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc37 unwind label %.preheader.preheader ; 2 uses

.noexc37:                                         ; preds = %.noexc
  store ptr %i.s, ptr %i.q, align 8, !tbaa !16
  %i.t = load i64, ptr %i.c, align 8, !tbaa !36   ; 3 uses
  store i64 %i.t, ptr %i.r, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.s, ptr noundef nonnull align 1 dereferenceable(20) @.str.629, i64 20, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i64 %i.t, ptr %i.u, align 8, !tbaa !9
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i64 %i.g, ptr %i.x, align 8, !tbaa !42
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !132
  %i.ab = load ptr, ptr %1, align 8, !tbaa !135
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 24
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  store ptr %i.ag, ptr %i.y, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ag, ptr noundef nonnull align 1 dereferenceable(12) @.str.630, i64 12, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 88
  store i64 12, ptr %i.ah, align 8, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 108
  store i8 0, ptr %i.ai, align 4, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 112
  store i64 %i.af, ptr %i.aj, align 8, !tbaa !42
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i32 0, ptr %i.ak, align 8, !tbaa !53
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr null, ptr %i.al, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !55
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  store i64 0, ptr %i.ao, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %6, ptr %5, align 8, !tbaa !57
  %i.ap = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr nonnull %i.ak, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc.i unwind label %.body  ; 0 uses

.noexc.i:                                         ; preds = %.noexc37
  %i.aq = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr nonnull %i.ak, ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc.i.1 unwind label %.body ; 0 uses

.noexc.i.1:                                       ; preds = %.noexc.i
  %i.ar = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr nonnull %i.ak, ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc.i.2 unwind label %.body ; 0 uses

.noexc.i.2:                                       ; preds = %.noexc.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

.body:                                            ; preds = %.noexc.i.1, %.noexc.i, %.noexc37
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #27
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc.i.2
  %i.bb = load i64, ptr %i.au, align 8, !tbaa !17
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.bc) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit: ; preds = %.noexc.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !17
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.bj = load ptr, ptr %7, align 8, !tbaa !16    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !17
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.bo = load ptr, ptr %i.z, align 8, !tbaa !132
  %i.bp = load ptr, ptr %1, align 8, !tbaa !135
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = sdiv exact i64 %i.bs, 24
  %i.bu = icmp eq i64 %i.g, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.bv, ptr %8, align 8, !tbaa !15
  %i.bw = load ptr, ptr @_ZN6report41NEW_INLINE_SUPER_OP_MATRIX_WRONG_NUM_ROWSB5cxx11E, align 8, !tbaa !16 ; 2 uses
  %i.bx = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6report41NEW_INLINE_SUPER_OP_MATRIX_WRONG_NUM_ROWSB5cxx11E, i64 8), align 8, !tbaa !9 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %i.bx, ptr %i.b, align 8, !tbaa !36
  %i.by = icmp ugt i64 %i.bx, 15
  br i1 %i.by, label %.noexc.i41, label %._crit_edge.i.i

.noexc.i41:                                       ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2
  %i.bz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc42 unwind label %bb.l   ; 2 uses

.noexc42:                                         ; preds = %.noexc.i41
  store ptr %i.bz, ptr %8, align 8, !tbaa !16
  %i.ca = load i64, ptr %i.b, align 8, !tbaa !36
  store i64 %i.ca, ptr %i.bv, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc42, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2
  %i.cb = phi ptr [ %i.bz, %.noexc42 ], [ %i.bv, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2 ] ; 2 uses
  switch i64 %i.bx, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.cc = load i8, ptr %i.bw, align 1, !tbaa !17
  store i8 %i.cc, ptr %i.cb, align 1, !tbaa !17
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cb, ptr align 1 %i.bw, i64 %i.bx, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.cd = load i64, ptr %i.b, align 8, !tbaa !36  ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !9
  %i.cf = load ptr, ptr %8, align 8, !tbaa !16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store i8 0, ptr %i.cg, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i32 0, ptr %i.ch, align 8, !tbaa !53
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr null, ptr %i.ci, align 8, !tbaa !54
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !37
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store ptr %i.ch, ptr %i.ck, align 8, !tbaa !55
end_hunk_0
begin_hunk_1_@_Z42validate_newInlineSuperOpDimMatchesVectorsiSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEPKc:bb.a
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !17
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit49.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit49.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47.1
  %i.dz = load ptr, ptr %7, align 8, !tbaa !16    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit49.1
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !17
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #30
  br label %.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50: ; preds = %.preheader.preheader
  %i.ee = load i64, ptr %i.dp, align 8, !tbaa !17
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ef) #30
  br label %.thread

.thread:                                          ; preds = %.preheader.preheader, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit49.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47.2, %.thread146
  %.pn.pn97 = phi { ptr, i32 } [ %i.j, %.thread146 ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47.2 ], [ %i.aw, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit49.1 ], [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50 ], [ %i.dn, %.preheader.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.ae

bb.l:                                             ; preds = %.noexc.i41
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

bb.m:                                             ; preds = %bb.e
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #27
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn26 = phi { ptr, i32 } [ %i.ei, %bb.n ], [ %i.eh, %bb.m ] ; 2 uses
  %i.ej = load ptr, ptr %8, align 8, !tbaa !16    ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.bv
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.o
  %i.el = load i64, ptr %i.bv, align 8, !tbaa !17
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

._crit_edge.i.i56:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %.0115 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ] ; 2 uses
  %i.en = load ptr, ptr %1, align 8, !tbaa !135
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %i.en, i64 %.0115 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !137
  %i.er = load ptr, ptr %i.eo, align 8, !tbaa !139
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = ashr exact i64 %i.eu, 4                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  store ptr %i.da, ptr %10, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.da, ptr noundef nonnull align 1 dereferenceable(12) @.str.630, i64 12, i1 false)
  store i64 12, ptr %i.db, align 8, !tbaa !9
  store i8 0, ptr %i.dj, align 4, !tbaa !17
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.p unwind label %bb.y

bb.p:                                             ; preds = %._crit_edge.i.i56
  store i64 %i.ev, ptr %i.ew, align 8, !tbaa !45
  %i.ex = load ptr, ptr %10, align 8, !tbaa !16   ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.da
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.p
  %i.ez = load i64, ptr %i.da, align 8, !tbaa !17
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.fb = icmp eq i64 %i.g, %i.ev
  store ptr %i.dc, ptr %11, align 8, !tbaa !15
  %i.fc = load ptr, ptr @_ZN6report41NEW_INLINE_SUPER_OP_MATRIX_WRONG_NUM_COLSB5cxx11E, align 8, !tbaa !16 ; 2 uses
  %i.fd = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6report41NEW_INLINE_SUPER_OP_MATRIX_WRONG_NUM_COLSB5cxx11E, i64 8), align 8, !tbaa !9 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.fd, ptr %i.a, align 8, !tbaa !36
  %i.fe = icmp ugt i64 %i.fd, 15
  br i1 %i.fe, label %.noexc.i63, label %._crit_edge.i.i62

.noexc.i63:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.ff = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc64 unwind label %bb.z   ; 2 uses

.noexc64:                                         ; preds = %.noexc.i63
  store ptr %i.ff, ptr %11, align 8, !tbaa !16
  %i.fg = load i64, ptr %i.a, align 8, !tbaa !36
  store i64 %i.fg, ptr %i.dc, align 8, !tbaa !17
  br label %._crit_edge.i.i62

._crit_edge.i.i62:                                ; preds = %.noexc64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.fh = phi ptr [ %i.ff, %.noexc64 ], [ %i.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ] ; 2 uses
  switch i64 %i.fd, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i62
  %i.fi = load i8, ptr %i.fc, align 1, !tbaa !17
  store i8 %i.fi, ptr %i.fh, align 1, !tbaa !17
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i62
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fh, ptr align 1 %i.fc, i64 %i.fd, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i62
  %i.fj = load i64, ptr %i.a, align 8, !tbaa !36  ; 2 uses
  store i64 %i.fj, ptr %i.dd, align 8, !tbaa !9
  %i.fk = load ptr, ptr %11, align 8, !tbaa !16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fj
  store i8 0, ptr %i.fl, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.de, align 8, !tbaa !53
  store ptr null, ptr %i.df, align 8, !tbaa !54
  store ptr %i.de, ptr %i.dg, align 8, !tbaa !37
  store ptr %i.de, ptr %i.dh, align 8, !tbaa !55
  store i64 0, ptr %i.di, align 8, !tbaa !56
  %i.fm = load ptr, ptr %i.al, align 8, !tbaa !54 ; 2 uses
  %.not.i.i66 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i66, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit74, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %12, ptr %3, align 8, !tbaa !57
  %i.fn = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull %i.fm, ptr noundef nonnull %i.de, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc.i.i67 unwind label %bb.aa ; 3 uses

.noexc.i.i67:                                     ; preds = %bb.t, %.noexc.i.i67
  %.0.i.i.i.i.i.i68 = phi ptr [ %i.fp, %.noexc.i.i67 ], [ %i.fn, %bb.t ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i68, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !59 ; 2 uses
  %.not.i.i.i.i.i.i69 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i.i.i.i69, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i70, label %.noexc.i.i67, !llvm.loop !60

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i70: ; preds = %.noexc.i.i67
  store ptr %.0.i.i.i.i.i.i68, ptr %i.dg, align 8, !tbaa !61
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i70
  %.0.i.i7.i.i.i.i71 = phi ptr [ %i.fn, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i70 ], [ %i.fr, %bb.u ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i71, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !62 ; 2 uses
  %.not.i.i8.i.i.i.i72 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i8.i.i.i.i72, label %bb.v, label %bb.u, !llvm.loop !63

bb.v:                                             ; preds = %bb.u
  store ptr %.0.i.i7.i.i.i.i71, ptr %i.dh, align 8, !tbaa !61
  %i.fs = load i64, ptr %i.ao, align 8, !tbaa !56
  store i64 %i.fs, ptr %i.di, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr %i.fn, ptr %i.df, align 8, !tbaa !61
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit74

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit74: ; preds = %bb.v, %bb.s
  invoke void @_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS4_xSt4lessIS4_ESaISt4pairIKS4_xEEEPKc(i1 noundef zeroext %i.fb, ptr nofree noundef nonnull align 8 dereferenceable(32) %11, ptr nofree noundef nonnull align 8 dereferenceable(48) %12, ptr noundef %2)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit74
  %i.ft = load ptr, ptr %i.df, align 8, !tbaa !54
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef %i.ft)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit75 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fu = landingpad { ptr, i32 }
          catch ptr null
  %i.fv = extractvalue { ptr, i32 } %i.fu, 0
  call void @__clang_call_terminate(ptr %i.fv) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit75: ; preds = %bb.w
  %i.fw = load ptr, ptr %11, align 8, !tbaa !16   ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.dc
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit75
  %i.fy = load i64, ptr %i.dc, align 8, !tbaa !17
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  %i.ga = add nuw nsw i64 %.0115, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.ga, %i.g
  br i1 %exitcond.not, label %bb.j, label %._crit_edge.i.i56, !llvm.loop !158

bb.y:                                             ; preds = %._crit_edge.i.i56
  %i.gb = landingpad { ptr, i32 }
          cleanup
  %i.gc = load ptr, ptr %10, align 8, !tbaa !16   ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.da
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %bb.y
  %i.ge = load i64, ptr %i.da, align 8, !tbaa !17
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

bb.z:                                             ; preds = %.noexc.i63
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

bb.aa:                                            ; preds = %bb.t
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit74
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %12) #27
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn30 = phi { ptr, i32 } [ %i.gi, %bb.ab ], [ %i.gh, %bb.aa ] ; 2 uses
  %i.gj = load ptr, ptr %11, align 8, !tbaa !16   ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.dc
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.ac
  %i.gl = load i64, ptr %i.dc, align 8, !tbaa !17
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

bb.ad:                                            ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit46
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.ac, %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %bb.z, %bb.l
  %.pn30.pn.pn = phi { ptr, i32 } [ %i.eg, %bb.l ], [ %i.gb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ], [ %.pn26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %i.gg, %bb.z ], [ %.pn30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %.pn26, %bb.o ], [ %.pn30, %bb.ac ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #27
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %.thread
  %.pn30.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %.pn.pn97, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  resume { ptr, i32 } %.pn30.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_Z29validate_superOpNewMatrixDims7SuperOpSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEPKc(ptr nofree noundef readonly byval(%struct.SuperOp) align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 6 uses
  %6 = alloca %"class.std::map", align 8          ; 16 uses
  %7 = alloca [3 x %"struct.std::pair"], align 8  ; 31 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::map", align 8          ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::map", align 8         ; 10 uses
  %.b = load i1, ptr @_ZL26global_isValidationEnabled, align 1
  br i1 %.b, label %bb.ac, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.c, ptr %7, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.c, ptr noundef nonnull align 1 dereferenceable(13) @.str.585, i64 13, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 13, ptr %i.d, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 29
  store i8 0, ptr %i.e, align 1, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.g = load i32, ptr %0, align 8, !tbaa !73
  %i.h = sext i32 %i.g to i64
  store i64 %i.h, ptr %i.f, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.k, ptr noundef nonnull align 1 dereferenceable(15) @.str.602, i64 15, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i64 15, ptr %i.l, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 71
  store i8 0, ptr %i.m, align 1, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.o = load i64, ptr %i.j, align 8, !tbaa !45   ; 5 uses
  store i64 %i.o, ptr %i.n, align 8, !tbaa !42
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !132
  %i.s = load ptr, ptr %1, align 8, !tbaa !135
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 24
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  store ptr %i.x, ptr %i.p, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.x, ptr noundef nonnull align 1 dereferenceable(12) @.str.630, i64 12, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 88
  store i64 12, ptr %i.y, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 108
  store i8 0, ptr %i.z, align 4, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 112
  store i64 %i.w, ptr %i.aa, align 8, !tbaa !42
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !53
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr null, ptr %i.ac, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  store i64 0, ptr %i.af, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %6, ptr %5, align 8, !tbaa !57
  %i.ag = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr nonnull %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc.i unwind label %.body  ; 0 uses

.noexc.i:                                         ; preds = %._crit_edge.i.i.i
  %i.ah = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr nonnull %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc.i.1 unwind label %.body ; 0 uses

.noexc.i.1:                                       ; preds = %.noexc.i
  %i.ai = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr nonnull %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc.i.2 unwind label %.body ; 0 uses

.noexc.i.2:                                       ; preds = %.noexc.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

.body:                                            ; preds = %.noexc.i.1, %.noexc.i, %._crit_edge.i.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #27
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc.i.2
  %i.as = load i64, ptr %i.al, align 8, !tbaa !17
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.at) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit: ; preds = %.noexc.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !17
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.ba = load ptr, ptr %7, align 8, !tbaa !16    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !17
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.bf = load ptr, ptr %i.q, align 8, !tbaa !132
  %i.bg = load ptr, ptr %1, align 8, !tbaa !135
  %i.bh = ptrtoint ptr %i.bf to i64
end_hunk_1
